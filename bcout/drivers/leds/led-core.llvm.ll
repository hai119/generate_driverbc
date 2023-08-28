; ModuleID = '../bcout/drivers/leds/led-core.llvm.bc'
source_filename = "drivers/leds/led-core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.workqueue_struct = type opaque
%struct.kmem_cache = type opaque
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
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
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.led_classdev = type { i8*, i32, i32, i32, i64, void (%struct.led_classdev*, i32)*, i32 (%struct.led_classdev*, i32)*, i32 (%struct.led_classdev*)*, i32 (%struct.led_classdev*, i64*, i64*)*, i32 (%struct.led_classdev*, %struct.led_pattern*, i32, i32)*, i32 (%struct.led_classdev*)*, %struct.device*, %struct.attribute_group**, %struct.list_head, i8*, i64, i64, %struct.timer_list, i32, i32, {}*, %struct.work_struct, i32, %struct.mutex }
%struct.led_pattern = type { i32, i32 }
%struct.led_init_data = type { %struct.fwnode_handle*, i8*, i8*, i8 }
%struct.led_properties = type { i32, i8, i8*, i32, i8, i8* }

@leds_list_lock = dso_local global %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.raw_spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @leds_list_lock to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @leds_list_lock to i8*), i64 16) to %struct.list_head*) } }, align 8, !dbg !0
@leds_list = dso_local global %struct.list_head { %struct.list_head* @leds_list, %struct.list_head* @leds_list }, align 8, !dbg !2140
@.str = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"amber\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"violet\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"yellow\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ir\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"multicolor\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@led_colors = dso_local constant [10 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0)], align 16, !dbg !2142
@.str.10 = private unnamed_addr constant [12 x i8] c"led-pattern\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"drivers/leds/led-core.c\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"%s:%s-%d\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"Legacy LED naming requires devicename segment\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"Setting an LED's brightness failed (%d)\0A\00", align 1
@jiffies = external dso_local global i64, align 8
@system_wq = external dso_local global %struct.workqueue_struct*, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.17 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"Error parsing 'label' property (%d)\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"Error parsing 'color' property (%d)\0A\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"LED color identifier out of range\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"Error parsing 'function' property (%d)\0A\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"function-enumerator\00", align 1
@.str.26 = private unnamed_addr constant [51 x i8] c"Error parsing 'function-enumerator' property (%d)\0A\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @led_init_core(%struct.led_classdev* %led_cdev) #0 !dbg !2153 {
entry:
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !2154, metadata !DIExpression()), !dbg !2155
  br label %do.body, !dbg !2156

do.body:                                          ; preds = %entry
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2157
  %set_brightness_work = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %0, i32 0, i32 21, !dbg !2157
  call void @__init_work(%struct.work_struct* %set_brightness_work, i32 0) #8, !dbg !2157
  %1 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2157
  %set_brightness_work1 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %1, i32 0, i32 21, !dbg !2157
  %data = getelementptr inbounds %struct.work_struct, %struct.work_struct* %set_brightness_work1, i32 0, i32 0, !dbg !2157
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %.compoundliteral, i32 0, i32 0, !dbg !2157
  store i64 68719476704, i64* %counter, align 8, !dbg !2157
  %2 = bitcast %struct.atomic64_t* %data to i8*, !dbg !2157
  %3 = bitcast %struct.atomic64_t* %.compoundliteral to i8*, !dbg !2157
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 8, i1 false), !dbg !2157
  %4 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2157
  %set_brightness_work2 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %4, i32 0, i32 21, !dbg !2157
  %entry3 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %set_brightness_work2, i32 0, i32 1, !dbg !2157
  call void @INIT_LIST_HEAD(%struct.list_head* %entry3) #8, !dbg !2157
  %5 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2157
  %set_brightness_work4 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %5, i32 0, i32 21, !dbg !2157
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %set_brightness_work4, i32 0, i32 2, !dbg !2157
  store void (%struct.work_struct*)* @set_brightness_delayed, void (%struct.work_struct*)** %func, align 8, !dbg !2157
  br label %do.end, !dbg !2157

do.end:                                           ; preds = %do.body
  %6 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2159
  %blink_timer = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %6, i32 0, i32 17, !dbg !2159
  call void @init_timer_key(%struct.timer_list* %blink_timer, void (%struct.timer_list*)* @led_timer_function, i32 0, i8* null, %struct.lock_class_key* null) #8, !dbg !2159
  ret void, !dbg !2160
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_work(%struct.work_struct* %work, i32 %onstack) #0 !dbg !2161 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %onstack.addr = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !2164, metadata !DIExpression()), !dbg !2165
  store i32 %onstack, i32* %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %onstack.addr, metadata !2166, metadata !DIExpression()), !dbg !2167
  ret void, !dbg !2168
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !2169 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !2173, metadata !DIExpression()), !dbg !2174
  br label %do.body, !dbg !2175

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2176

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2178

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2176

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2180
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2180
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !2180
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !2180
  br label %do.end3, !dbg !2180

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !2176

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2182
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2183
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !2184
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !2185
  ret void, !dbg !2186
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_brightness_delayed(%struct.work_struct* %ws) #0 !dbg !2187 {
entry:
  %ws.addr = alloca %struct.work_struct*, align 8
  %led_cdev = alloca %struct.led_classdev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.led_classdev*, align 8
  %ret = alloca i32, align 4
  store %struct.work_struct* %ws, %struct.work_struct** %ws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %ws.addr, metadata !2188, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev, metadata !2190, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2192, metadata !DIExpression()), !dbg !2194
  %0 = load %struct.work_struct*, %struct.work_struct** %ws.addr, align 8, !dbg !2194
  %1 = bitcast %struct.work_struct* %0 to i8*, !dbg !2194
  store i8* %1, i8** %__mptr, align 8, !dbg !2194
  br label %do.body, !dbg !2194

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2195

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2194
  %add.ptr = getelementptr i8, i8* %2, i64 -192, !dbg !2194
  %3 = bitcast i8* %add.ptr to %struct.led_classdev*, !dbg !2194
  store %struct.led_classdev* %3, %struct.led_classdev** %tmp, align 8, !dbg !2195
  %4 = load %struct.led_classdev*, %struct.led_classdev** %tmp, align 8, !dbg !2194
  store %struct.led_classdev* %4, %struct.led_classdev** %led_cdev, align 8, !dbg !2191
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2197, metadata !DIExpression()), !dbg !2198
  store i32 0, i32* %ret, align 4, !dbg !2198
  %5 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2199
  %work_flags = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %5, i32 0, i32 4, !dbg !2201
  %call = call zeroext i1 @test_and_clear_bit(i64 5, i64* %work_flags) #8, !dbg !2202
  br i1 %call, label %if.then, label %if.end, !dbg !2203

if.then:                                          ; preds = %do.end
  %6 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2204
  %delayed_set_value = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %6, i32 0, i32 22, !dbg !2206
  store i32 0, i32* %delayed_set_value, align 8, !dbg !2207
  %7 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2208
  call void @led_stop_software_blink(%struct.led_classdev* %7) #8, !dbg !2209
  br label %if.end, !dbg !2210

if.end:                                           ; preds = %if.then, %do.end
  %8 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2211
  %9 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2212
  %delayed_set_value1 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %9, i32 0, i32 22, !dbg !2213
  %10 = load i32, i32* %delayed_set_value1, align 8, !dbg !2213
  %call2 = call i32 @__led_set_brightness(%struct.led_classdev* %8, i32 %10) #8, !dbg !2214
  store i32 %call2, i32* %ret, align 4, !dbg !2215
  %11 = load i32, i32* %ret, align 4, !dbg !2216
  %cmp = icmp eq i32 %11, -524, !dbg !2218
  br i1 %cmp, label %if.then3, label %if.end6, !dbg !2219

if.then3:                                         ; preds = %if.end
  %12 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2220
  %13 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2221
  %delayed_set_value4 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %13, i32 0, i32 22, !dbg !2222
  %14 = load i32, i32* %delayed_set_value4, align 8, !dbg !2222
  %call5 = call i32 @__led_set_brightness_blocking(%struct.led_classdev* %12, i32 %14) #8, !dbg !2223
  store i32 %call5, i32* %ret, align 4, !dbg !2224
  br label %if.end6, !dbg !2225

if.end6:                                          ; preds = %if.then3, %if.end
  %15 = load i32, i32* %ret, align 4, !dbg !2226
  %cmp7 = icmp slt i32 %15, 0, !dbg !2228
  br i1 %cmp7, label %land.lhs.true, label %if.end16, !dbg !2229

land.lhs.true:                                    ; preds = %if.end6
  %16 = load i32, i32* %ret, align 4, !dbg !2230
  %cmp8 = icmp eq i32 %16, -19, !dbg !2231
  br i1 %cmp8, label %land.lhs.true9, label %if.then15, !dbg !2232

land.lhs.true9:                                   ; preds = %land.lhs.true
  %17 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2233
  %flags = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %17, i32 0, i32 3, !dbg !2234
  %18 = load i32, i32* %flags, align 8, !dbg !2234
  %conv = sext i32 %18 to i64, !dbg !2233
  %and = and i64 %conv, 2, !dbg !2235
  %tobool = icmp ne i64 %and, 0, !dbg !2235
  br i1 %tobool, label %land.lhs.true10, label %if.then15, !dbg !2236

land.lhs.true10:                                  ; preds = %land.lhs.true9
  %19 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2237
  %flags11 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %19, i32 0, i32 3, !dbg !2238
  %20 = load i32, i32* %flags11, align 8, !dbg !2238
  %conv12 = sext i32 %20 to i64, !dbg !2237
  %and13 = and i64 %conv12, 524288, !dbg !2239
  %tobool14 = icmp ne i64 %and13, 0, !dbg !2239
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !2240

if.then15:                                        ; preds = %land.lhs.true10, %land.lhs.true9, %land.lhs.true
  %21 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2241
  %dev = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %21, i32 0, i32 11, !dbg !2241
  %22 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2241
  %23 = load i32, i32* %ret, align 4, !dbg !2241
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i32 %23) #9, !dbg !2241
  br label %if.end16, !dbg !2241

if.end16:                                         ; preds = %if.then15, %land.lhs.true10, %if.end6
  ret void, !dbg !2242
}

; Function Attrs: noredzone
declare dso_local void @init_timer_key(%struct.timer_list*, void (%struct.timer_list*)*, i32, i8*, %struct.lock_class_key*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @led_timer_function(%struct.timer_list* %t) #0 !dbg !2243 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !2244, metadata !DIExpression()), !dbg !2250
  %t.addr = alloca %struct.timer_list*, align 8
  %led_cdev = alloca %struct.led_classdev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.led_classdev*, align 8
  %brightness = alloca i64, align 8
  %delay = alloca i64, align 8
  store %struct.timer_list* %t, %struct.timer_list** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timer_list** %t.addr, metadata !2252, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev, metadata !2254, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2256, metadata !DIExpression()), !dbg !2258
  %0 = load %struct.timer_list*, %struct.timer_list** %t.addr, align 8, !dbg !2258
  %1 = bitcast %struct.timer_list* %0 to i8*, !dbg !2258
  store i8* %1, i8** %__mptr, align 8, !dbg !2258
  br label %do.body, !dbg !2258

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2259

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2258
  %add.ptr = getelementptr i8, i8* %2, i64 -136, !dbg !2258
  %3 = bitcast i8* %add.ptr to %struct.led_classdev*, !dbg !2258
  store %struct.led_classdev* %3, %struct.led_classdev** %tmp, align 8, !dbg !2259
  %4 = load %struct.led_classdev*, %struct.led_classdev** %tmp, align 8, !dbg !2258
  store %struct.led_classdev* %4, %struct.led_classdev** %led_cdev, align 8, !dbg !2255
  call void @llvm.dbg.declare(metadata i64* %brightness, metadata !2261, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.declare(metadata i64* %delay, metadata !2263, metadata !DIExpression()), !dbg !2264
  %5 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2265
  %blink_delay_on = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %5, i32 0, i32 15, !dbg !2267
  %6 = load i64, i64* %blink_delay_on, align 8, !dbg !2267
  %tobool = icmp ne i64 %6, 0, !dbg !2265
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2268

lor.lhs.false:                                    ; preds = %do.end
  %7 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2269
  %blink_delay_off = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %7, i32 0, i32 16, !dbg !2270
  %8 = load i64, i64* %blink_delay_off, align 8, !dbg !2270
  %tobool1 = icmp ne i64 %8, 0, !dbg !2269
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2271

if.then:                                          ; preds = %lor.lhs.false, %do.end
  %9 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2272
  call void @led_set_brightness_nosleep(%struct.led_classdev* %9, i32 0) #8, !dbg !2274
  %10 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2275
  %work_flags = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %10, i32 0, i32 4, !dbg !2276
  call void @clear_bit(i64 0, i64* %work_flags) #8, !dbg !2277
  br label %return, !dbg !2278

if.end:                                           ; preds = %lor.lhs.false
  %11 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2279
  %work_flags2 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %11, i32 0, i32 4, !dbg !2281
  %call = call zeroext i1 @test_and_clear_bit(i64 2, i64* %work_flags2) #8, !dbg !2282
  br i1 %call, label %if.then3, label %if.end5, !dbg !2283

if.then3:                                         ; preds = %if.end
  %12 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2284
  %work_flags4 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %12, i32 0, i32 4, !dbg !2286
  call void @clear_bit(i64 0, i64* %work_flags4) #8, !dbg !2287
  br label %return, !dbg !2288

if.end5:                                          ; preds = %if.end
  %13 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2289
  %call6 = call i32 @led_get_brightness(%struct.led_classdev* %13) #8, !dbg !2290
  %conv = sext i32 %call6 to i64, !dbg !2290
  store i64 %conv, i64* %brightness, align 8, !dbg !2291
  %14 = load i64, i64* %brightness, align 8, !dbg !2292
  %tobool7 = icmp ne i64 %14, 0, !dbg !2292
  br i1 %tobool7, label %if.else16, label %if.then8, !dbg !2294

if.then8:                                         ; preds = %if.end5
  %15 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2295
  %work_flags9 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %15, i32 0, i32 4, !dbg !2298
  %call10 = call zeroext i1 @test_and_clear_bit(i64 4, i64* %work_flags9) #8, !dbg !2299
  br i1 %call10, label %if.then11, label %if.else, !dbg !2300

if.then11:                                        ; preds = %if.then8
  %16 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2301
  %new_blink_brightness = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %16, i32 0, i32 19, !dbg !2302
  %17 = load i32, i32* %new_blink_brightness, align 4, !dbg !2302
  %conv12 = sext i32 %17 to i64, !dbg !2301
  store i64 %conv12, i64* %brightness, align 8, !dbg !2303
  br label %if.end14, !dbg !2304

if.else:                                          ; preds = %if.then8
  %18 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2305
  %blink_brightness = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %18, i32 0, i32 18, !dbg !2306
  %19 = load i32, i32* %blink_brightness, align 8, !dbg !2306
  %conv13 = sext i32 %19 to i64, !dbg !2305
  store i64 %conv13, i64* %brightness, align 8, !dbg !2307
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then11
  %20 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2308
  %blink_delay_on15 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %20, i32 0, i32 15, !dbg !2309
  %21 = load i64, i64* %blink_delay_on15, align 8, !dbg !2309
  store i64 %21, i64* %delay, align 8, !dbg !2310
  br label %if.end20, !dbg !2311

if.else16:                                        ; preds = %if.end5
  %22 = load i64, i64* %brightness, align 8, !dbg !2312
  %conv17 = trunc i64 %22 to i32, !dbg !2312
  %23 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2314
  %blink_brightness18 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %23, i32 0, i32 18, !dbg !2315
  store i32 %conv17, i32* %blink_brightness18, align 8, !dbg !2316
  store i64 0, i64* %brightness, align 8, !dbg !2317
  %24 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2318
  %blink_delay_off19 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %24, i32 0, i32 16, !dbg !2319
  %25 = load i64, i64* %blink_delay_off19, align 8, !dbg !2319
  store i64 %25, i64* %delay, align 8, !dbg !2320
  br label %if.end20

if.end20:                                         ; preds = %if.else16, %if.end14
  %26 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2321
  %27 = load i64, i64* %brightness, align 8, !dbg !2322
  %conv21 = trunc i64 %27 to i32, !dbg !2322
  call void @led_set_brightness_nosleep(%struct.led_classdev* %26, i32 %conv21) #8, !dbg !2323
  %28 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2324
  %work_flags22 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %28, i32 0, i32 4, !dbg !2326
  %call23 = call zeroext i1 @test_bit(i64 1, i64* %work_flags22) #8, !dbg !2327
  br i1 %call23, label %if.then24, label %if.end38, !dbg !2328

if.then24:                                        ; preds = %if.end20
  %29 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2329
  %work_flags25 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %29, i32 0, i32 4, !dbg !2332
  %call26 = call zeroext i1 @test_bit(i64 3, i64* %work_flags25) #8, !dbg !2333
  br i1 %call26, label %if.then27, label %if.else32, !dbg !2334

if.then27:                                        ; preds = %if.then24
  %30 = load i64, i64* %brightness, align 8, !dbg !2335
  %tobool28 = icmp ne i64 %30, 0, !dbg !2335
  br i1 %tobool28, label %if.then29, label %if.end31, !dbg !2338

if.then29:                                        ; preds = %if.then27
  %31 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2339
  %work_flags30 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %31, i32 0, i32 4, !dbg !2340
  call void @set_bit(i64 2, i64* %work_flags30) #8, !dbg !2341
  br label %if.end31, !dbg !2341

if.end31:                                         ; preds = %if.then29, %if.then27
  br label %if.end37, !dbg !2342

if.else32:                                        ; preds = %if.then24
  %32 = load i64, i64* %brightness, align 8, !dbg !2343
  %tobool33 = icmp ne i64 %32, 0, !dbg !2343
  br i1 %tobool33, label %if.end36, label %if.then34, !dbg !2346

if.then34:                                        ; preds = %if.else32
  %33 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2347
  %work_flags35 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %33, i32 0, i32 4, !dbg !2348
  call void @set_bit(i64 2, i64* %work_flags35) #8, !dbg !2349
  br label %if.end36, !dbg !2349

if.end36:                                         ; preds = %if.then34, %if.else32
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end31
  br label %if.end38, !dbg !2350

if.end38:                                         ; preds = %if.end37, %if.end20
  %34 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2351
  %blink_timer = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %34, i32 0, i32 17, !dbg !2352
  %35 = load volatile i64, i64* @jiffies, align 8, !dbg !2353
  %36 = load i64, i64* %delay, align 8, !dbg !2354
  %conv39 = trunc i64 %36 to i32, !dbg !2354
  store i32 %conv39, i32* %m.addr.i, align 4
  %37 = load i32, i32* %m.addr.i, align 4, !dbg !2355
  %38 = call i1 @llvm.is.constant.i32(i32 %37) #10, !dbg !2357
  br i1 %38, label %if.then.i, label %if.else.i, !dbg !2358

if.then.i:                                        ; preds = %if.end38
  %39 = load i32, i32* %m.addr.i, align 4, !dbg !2359
  %cmp.i = icmp slt i32 %39, 0, !dbg !2362
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2363

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !2364
  br label %msecs_to_jiffies.exit, !dbg !2364

if.end.i:                                         ; preds = %if.then.i
  %40 = load i32, i32* %m.addr.i, align 4, !dbg !2365
  %call.i = call i64 @_msecs_to_jiffies(i32 %40) #11, !dbg !2366
  store i64 %call.i, i64* %retval.i, align 8, !dbg !2367
  br label %msecs_to_jiffies.exit, !dbg !2367

if.else.i:                                        ; preds = %if.end38
  %41 = load i32, i32* %m.addr.i, align 4, !dbg !2368
  %call2.i = call i64 @__msecs_to_jiffies(i32 %41) #11, !dbg !2370
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !2371
  br label %msecs_to_jiffies.exit, !dbg !2371

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %42 = load i64, i64* %retval.i, align 8, !dbg !2372
  %add = add i64 %35, %42, !dbg !2373
  %call41 = call i32 @mod_timer(%struct.timer_list* %blink_timer, i64 %add) #8, !dbg !2374
  br label %return, !dbg !2375

return:                                           ; preds = %msecs_to_jiffies.exit, %if.then3, %if.then
  ret void, !dbg !2375
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @led_blink_set(%struct.led_classdev* %led_cdev, i64* %delay_on, i64* %delay_off) #0 !dbg !2376 {
entry:
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  %delay_on.addr = alloca i64*, align 8
  %delay_off.addr = alloca i64*, align 8
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !2379, metadata !DIExpression()), !dbg !2380
  store i64* %delay_on, i64** %delay_on.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %delay_on.addr, metadata !2381, metadata !DIExpression()), !dbg !2382
  store i64* %delay_off, i64** %delay_off.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %delay_off.addr, metadata !2383, metadata !DIExpression()), !dbg !2384
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2385
  %blink_timer = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %0, i32 0, i32 17, !dbg !2385
  %call = call i32 @del_timer(%struct.timer_list* %blink_timer) #8, !dbg !2385
  %1 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2386
  %work_flags = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %1, i32 0, i32 4, !dbg !2387
  call void @clear_bit(i64 0, i64* %work_flags) #8, !dbg !2388
  %2 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2389
  %work_flags1 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %2, i32 0, i32 4, !dbg !2390
  call void @clear_bit(i64 1, i64* %work_flags1) #8, !dbg !2391
  %3 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2392
  %work_flags2 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %3, i32 0, i32 4, !dbg !2393
  call void @clear_bit(i64 2, i64* %work_flags2) #8, !dbg !2394
  %4 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2395
  %5 = load i64*, i64** %delay_on.addr, align 8, !dbg !2396
  %6 = load i64*, i64** %delay_off.addr, align 8, !dbg !2397
  call void @led_blink_setup(%struct.led_classdev* %4, i64* %5, i64* %6) #8, !dbg !2398
  ret void, !dbg !2399
}

; Function Attrs: noredzone
declare dso_local i32 @del_timer(%struct.timer_list*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #0 !dbg !2400 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !2406, metadata !DIExpression()), !dbg !2409
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !2411, metadata !DIExpression()), !dbg !2412
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !2413, metadata !DIExpression()), !dbg !2421
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2423, metadata !DIExpression()), !dbg !2424
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !2425, metadata !DIExpression()), !dbg !2426
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !2427, metadata !DIExpression()), !dbg !2428
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !2429
  %1 = load i64, i64* %nr.addr, align 8, !dbg !2430
  %div = sdiv i64 %1, 64, !dbg !2430
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !2431
  %2 = bitcast i64* %add.ptr to i8*, !dbg !2429
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !2432
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2433
  %conv.i = trunc i64 %4 to i32, !dbg !2433
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !2434
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !2435
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !2435
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #11, !dbg !2435
  %7 = load i64, i64* %nr.addr, align 8, !dbg !2436
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !2437
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !2438
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #10, !dbg !2440
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !2441

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !2442
  %12 = bitcast i64* %11 to i8*, !dbg !2442
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !2442
  %shr.i = ashr i64 %13, 3, !dbg !2442
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !2442
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !2444
  %and.i = and i64 %14, 7, !dbg !2444
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !2444
  %shl.i = shl i32 1, %sh_prom.i, !dbg !2444
  %neg.i = xor i32 %shl.i, -1, !dbg !2445
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #10, !dbg !2446, !srcloc !2447
  br label %arch_clear_bit.exit, !dbg !2448

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !2449
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !2451
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #10, !dbg !2452, !srcloc !2453
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !2454
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @led_blink_setup(%struct.led_classdev* %led_cdev, i64* %delay_on, i64* %delay_off) #0 !dbg !2455 {
entry:
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  %delay_on.addr = alloca i64*, align 8
  %delay_off.addr = alloca i64*, align 8
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !2456, metadata !DIExpression()), !dbg !2457
  store i64* %delay_on, i64** %delay_on.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %delay_on.addr, metadata !2458, metadata !DIExpression()), !dbg !2459
  store i64* %delay_off, i64** %delay_off.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %delay_off.addr, metadata !2460, metadata !DIExpression()), !dbg !2461
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2462
  %work_flags = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %0, i32 0, i32 4, !dbg !2464
  %call = call zeroext i1 @test_bit(i64 1, i64* %work_flags) #8, !dbg !2465
  br i1 %call, label %if.end, label %land.lhs.true, !dbg !2466

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2467
  %blink_set = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %1, i32 0, i32 8, !dbg !2468
  %2 = load i32 (%struct.led_classdev*, i64*, i64*)*, i32 (%struct.led_classdev*, i64*, i64*)** %blink_set, align 8, !dbg !2468
  %tobool = icmp ne i32 (%struct.led_classdev*, i64*, i64*)* %2, null, !dbg !2467
  br i1 %tobool, label %land.lhs.true1, label %if.end, !dbg !2469

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2470
  %blink_set2 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %3, i32 0, i32 8, !dbg !2471
  %4 = load i32 (%struct.led_classdev*, i64*, i64*)*, i32 (%struct.led_classdev*, i64*, i64*)** %blink_set2, align 8, !dbg !2471
  %5 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2472
  %6 = load i64*, i64** %delay_on.addr, align 8, !dbg !2473
  %7 = load i64*, i64** %delay_off.addr, align 8, !dbg !2474
  %call3 = call i32 %4(%struct.led_classdev* %5, i64* %6, i64* %7) #8, !dbg !2470
  %tobool4 = icmp ne i32 %call3, 0, !dbg !2470
  br i1 %tobool4, label %if.end, label %if.then, !dbg !2475

if.then:                                          ; preds = %land.lhs.true1
  br label %return, !dbg !2476

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %8 = load i64*, i64** %delay_on.addr, align 8, !dbg !2477
  %9 = load i64, i64* %8, align 8, !dbg !2479
  %tobool5 = icmp ne i64 %9, 0, !dbg !2479
  br i1 %tobool5, label %if.end9, label %land.lhs.true6, !dbg !2480

land.lhs.true6:                                   ; preds = %if.end
  %10 = load i64*, i64** %delay_off.addr, align 8, !dbg !2481
  %11 = load i64, i64* %10, align 8, !dbg !2482
  %tobool7 = icmp ne i64 %11, 0, !dbg !2482
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !2483

if.then8:                                         ; preds = %land.lhs.true6
  %12 = load i64*, i64** %delay_off.addr, align 8, !dbg !2484
  store i64 500, i64* %12, align 8, !dbg !2485
  %13 = load i64*, i64** %delay_on.addr, align 8, !dbg !2486
  store i64 500, i64* %13, align 8, !dbg !2487
  br label %if.end9, !dbg !2488

if.end9:                                          ; preds = %if.then8, %land.lhs.true6, %if.end
  %14 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2489
  %15 = load i64*, i64** %delay_on.addr, align 8, !dbg !2490
  %16 = load i64, i64* %15, align 8, !dbg !2491
  %17 = load i64*, i64** %delay_off.addr, align 8, !dbg !2492
  %18 = load i64, i64* %17, align 8, !dbg !2493
  call void @led_set_software_blink(%struct.led_classdev* %14, i64 %16, i64 %18) #8, !dbg !2494
  br label %return, !dbg !2495

return:                                           ; preds = %if.end9, %if.then
  ret void, !dbg !2495
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @led_blink_set_oneshot(%struct.led_classdev* %led_cdev, i64* %delay_on, i64* %delay_off, i32 %invert) #0 !dbg !2496 {
entry:
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  %delay_on.addr = alloca i64*, align 8
  %delay_off.addr = alloca i64*, align 8
  %invert.addr = alloca i32, align 4
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !2499, metadata !DIExpression()), !dbg !2500
  store i64* %delay_on, i64** %delay_on.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %delay_on.addr, metadata !2501, metadata !DIExpression()), !dbg !2502
  store i64* %delay_off, i64** %delay_off.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %delay_off.addr, metadata !2503, metadata !DIExpression()), !dbg !2504
  store i32 %invert, i32* %invert.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %invert.addr, metadata !2505, metadata !DIExpression()), !dbg !2506
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2507
  %work_flags = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %0, i32 0, i32 4, !dbg !2509
  %call = call zeroext i1 @test_bit(i64 1, i64* %work_flags) #8, !dbg !2510
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !2511

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2512
  %blink_timer = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %1, i32 0, i32 17, !dbg !2513
  %call1 = call i32 @timer_pending(%struct.timer_list* %blink_timer) #8, !dbg !2514
  %tobool = icmp ne i32 %call1, 0, !dbg !2514
  br i1 %tobool, label %if.then, label %if.end, !dbg !2515

if.then:                                          ; preds = %land.lhs.true
  br label %return, !dbg !2516

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2517
  %work_flags2 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %2, i32 0, i32 4, !dbg !2518
  call void @set_bit(i64 1, i64* %work_flags2) #8, !dbg !2519
  %3 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2520
  %work_flags3 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %3, i32 0, i32 4, !dbg !2521
  call void @clear_bit(i64 2, i64* %work_flags3) #8, !dbg !2522
  %4 = load i32, i32* %invert.addr, align 4, !dbg !2523
  %tobool4 = icmp ne i32 %4, 0, !dbg !2523
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !2525

if.then5:                                         ; preds = %if.end
  %5 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2526
  %work_flags6 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %5, i32 0, i32 4, !dbg !2527
  call void @set_bit(i64 3, i64* %work_flags6) #8, !dbg !2528
  br label %if.end8, !dbg !2528

if.else:                                          ; preds = %if.end
  %6 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2529
  %work_flags7 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %6, i32 0, i32 4, !dbg !2530
  call void @clear_bit(i64 3, i64* %work_flags7) #8, !dbg !2531
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %7 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2532
  %8 = load i64*, i64** %delay_on.addr, align 8, !dbg !2533
  %9 = load i64*, i64** %delay_off.addr, align 8, !dbg !2534
  call void @led_blink_setup(%struct.led_classdev* %7, i64* %8, i64* %9) #8, !dbg !2535
  br label %return, !dbg !2536

return:                                           ; preds = %if.end8, %if.then
  ret void, !dbg !2536
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !2537 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !2543, metadata !DIExpression()), !dbg !2545
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !2547, metadata !DIExpression()), !dbg !2548
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !2549, metadata !DIExpression()), !dbg !2550
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !2551, metadata !DIExpression()), !dbg !2553
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !2555, metadata !DIExpression()), !dbg !2556
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !2557, metadata !DIExpression()), !dbg !2559
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2561, metadata !DIExpression()), !dbg !2562
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !2563, metadata !DIExpression()), !dbg !2564
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !2565, metadata !DIExpression()), !dbg !2566
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !2567
  %1 = load i64, i64* %nr.addr, align 8, !dbg !2568
  %div = sdiv i64 %1, 64, !dbg !2568
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !2569
  %2 = bitcast i64* %add.ptr to i8*, !dbg !2567
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !2570
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2571
  %conv.i = trunc i64 %4 to i32, !dbg !2571
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #11, !dbg !2572
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !2573
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !2573
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #11, !dbg !2573
  %7 = load i64, i64* %nr.addr, align 8, !dbg !2574
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !2574
  br i1 %8, label %cond.true, label %cond.false, !dbg !2574

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !2574
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !2574
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !2575
  %and.i = and i64 %11, 63, !dbg !2576
  %shl.i = shl i64 1, %and.i, !dbg !2577
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !2578
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !2579
  %shr.i = ashr i64 %13, 6, !dbg !2580
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !2578
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !2578
  %and1.i = and i64 %shl.i, %14, !dbg !2581
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !2582
  %conv = zext i1 %cmp.i to i32, !dbg !2574
  br label %cond.end, !dbg !2574

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !2574
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !2574
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !2583
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !2584
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #10, !dbg !2585, !srcloc !2586
  store i8 %19, i8* %oldbit.i, align 1, !dbg !2585
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !2587
  %tobool.i = trunc i8 %20 to i1, !dbg !2587
  %conv2 = zext i1 %tobool.i to i32, !dbg !2574
  br label %cond.end, !dbg !2574

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !2574
  %tobool = icmp ne i32 %cond, 0, !dbg !2574
  ret i1 %tobool, !dbg !2588
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @timer_pending(%struct.timer_list* %timer) #0 !dbg !2589 {
entry:
  %timer.addr = alloca %struct.timer_list*, align 8
  store %struct.timer_list* %timer, %struct.timer_list** %timer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timer_list** %timer.addr, metadata !2594, metadata !DIExpression()), !dbg !2595
  %0 = load %struct.timer_list*, %struct.timer_list** %timer.addr, align 8, !dbg !2596
  %entry1 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %0, i32 0, i32 0, !dbg !2597
  %call = call i32 @hlist_unhashed_lockless(%struct.hlist_node* %entry1) #8, !dbg !2598
  %tobool = icmp ne i32 %call, 0, !dbg !2599
  %lnot = xor i1 %tobool, true, !dbg !2599
  %lnot.ext = zext i1 %lnot to i32, !dbg !2599
  ret i32 %lnot.ext, !dbg !2600
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !2601 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !2602, metadata !DIExpression()), !dbg !2604
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !2606, metadata !DIExpression()), !dbg !2607
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !2413, metadata !DIExpression()), !dbg !2608
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2423, metadata !DIExpression()), !dbg !2610
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !2611, metadata !DIExpression()), !dbg !2612
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !2613, metadata !DIExpression()), !dbg !2614
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !2615
  %1 = load i64, i64* %nr.addr, align 8, !dbg !2616
  %div = sdiv i64 %1, 64, !dbg !2616
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !2617
  %2 = bitcast i64* %add.ptr to i8*, !dbg !2615
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !2618
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2619
  %conv.i = trunc i64 %4 to i32, !dbg !2619
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !2620
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !2621
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !2621
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #11, !dbg !2621
  %7 = load i64, i64* %nr.addr, align 8, !dbg !2622
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !2623
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !2624
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #10, !dbg !2626
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !2627

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !2628
  %12 = bitcast i64* %11 to i8*, !dbg !2628
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !2628
  %shr.i = ashr i64 %13, 3, !dbg !2628
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !2628
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !2630
  %and.i = and i64 %14, 7, !dbg !2630
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !2630
  %shl.i = shl i32 1, %sh_prom.i, !dbg !2630
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #10, !dbg !2631, !srcloc !2632
  br label %arch_set_bit.exit, !dbg !2633

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !2634
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !2636
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #10, !dbg !2637, !srcloc !2638
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !2639
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @led_stop_software_blink(%struct.led_classdev* %led_cdev) #0 !dbg !2640 {
entry:
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !2641, metadata !DIExpression()), !dbg !2642
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2643
  %blink_timer = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %0, i32 0, i32 17, !dbg !2643
  %call = call i32 @del_timer(%struct.timer_list* %blink_timer) #8, !dbg !2643
  %1 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2644
  %blink_delay_on = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %1, i32 0, i32 15, !dbg !2645
  store i64 0, i64* %blink_delay_on, align 8, !dbg !2646
  %2 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2647
  %blink_delay_off = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %2, i32 0, i32 16, !dbg !2648
  store i64 0, i64* %blink_delay_off, align 8, !dbg !2649
  %3 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2650
  %work_flags = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %3, i32 0, i32 4, !dbg !2651
  call void @clear_bit(i64 0, i64* %work_flags) #8, !dbg !2652
  ret void, !dbg !2653
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @led_set_brightness(%struct.led_classdev* %led_cdev, i32 %brightness) #0 !dbg !2654 {
entry:
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  %brightness.addr = alloca i32, align 4
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !2655, metadata !DIExpression()), !dbg !2656
  store i32 %brightness, i32* %brightness.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %brightness.addr, metadata !2657, metadata !DIExpression()), !dbg !2658
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2659
  %work_flags = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %0, i32 0, i32 4, !dbg !2661
  %call = call zeroext i1 @test_bit(i64 0, i64* %work_flags) #8, !dbg !2662
  br i1 %call, label %if.then, label %if.end5, !dbg !2663

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %brightness.addr, align 4, !dbg !2664
  %cmp = icmp eq i32 %1, 0, !dbg !2667
  br i1 %cmp, label %if.then1, label %if.else, !dbg !2668

if.then1:                                         ; preds = %if.then
  %2 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2669
  %work_flags2 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %2, i32 0, i32 4, !dbg !2671
  call void @set_bit(i64 5, i64* %work_flags2) #8, !dbg !2672
  %3 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2673
  %set_brightness_work = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %3, i32 0, i32 21, !dbg !2674
  %call3 = call zeroext i1 @schedule_work(%struct.work_struct* %set_brightness_work) #8, !dbg !2675
  br label %if.end, !dbg !2676

if.else:                                          ; preds = %if.then
  %4 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2677
  %work_flags4 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %4, i32 0, i32 4, !dbg !2679
  call void @set_bit(i64 4, i64* %work_flags4) #8, !dbg !2680
  %5 = load i32, i32* %brightness.addr, align 4, !dbg !2681
  %6 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2682
  %new_blink_brightness = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %6, i32 0, i32 19, !dbg !2683
  store i32 %5, i32* %new_blink_brightness, align 4, !dbg !2684
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  br label %return, !dbg !2685

if.end5:                                          ; preds = %entry
  %7 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2686
  %8 = load i32, i32* %brightness.addr, align 4, !dbg !2687
  call void @led_set_brightness_nosleep(%struct.led_classdev* %7, i32 %8) #8, !dbg !2688
  br label %return, !dbg !2689

return:                                           ; preds = %if.end5, %if.end
  ret void, !dbg !2689
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @schedule_work(%struct.work_struct* %work) #0 !dbg !2690 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !2693, metadata !DIExpression()), !dbg !2694
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8, !dbg !2695
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !2696
  %call = call zeroext i1 @queue_work(%struct.workqueue_struct* %0, %struct.work_struct* %1) #8, !dbg !2697
  ret i1 %call, !dbg !2698
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @led_set_brightness_nosleep(%struct.led_classdev* %led_cdev, i32 %value) #0 !dbg !2699 {
entry:
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  %value.addr = alloca i32, align 4
  %__UNIQUE_ID___x163 = alloca i32, align 4
  %__UNIQUE_ID___y164 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !2700, metadata !DIExpression()), !dbg !2701
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !2702, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x163, metadata !2704, metadata !DIExpression()), !dbg !2706
  %0 = load i32, i32* %value.addr, align 4, !dbg !2706
  store i32 %0, i32* %__UNIQUE_ID___x163, align 4, !dbg !2706
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y164, metadata !2707, metadata !DIExpression()), !dbg !2706
  %1 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2706
  %max_brightness = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %1, i32 0, i32 2, !dbg !2706
  %2 = load i32, i32* %max_brightness, align 4, !dbg !2706
  store i32 %2, i32* %__UNIQUE_ID___y164, align 4, !dbg !2706
  %3 = load i32, i32* %__UNIQUE_ID___x163, align 4, !dbg !2706
  %4 = load i32, i32* %__UNIQUE_ID___y164, align 4, !dbg !2706
  %cmp = icmp ult i32 %3, %4, !dbg !2706
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2706

cond.true:                                        ; preds = %entry
  %5 = load i32, i32* %__UNIQUE_ID___x163, align 4, !dbg !2706
  br label %cond.end, !dbg !2706

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %__UNIQUE_ID___y164, align 4, !dbg !2706
  br label %cond.end, !dbg !2706

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %6, %cond.false ], !dbg !2706
  store i32 %cond, i32* %tmp, align 4, !dbg !2706
  %7 = load i32, i32* %tmp, align 4, !dbg !2706
  %8 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2708
  %brightness = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %8, i32 0, i32 1, !dbg !2709
  store i32 %7, i32* %brightness, align 8, !dbg !2710
  %9 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2711
  %flags = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %9, i32 0, i32 3, !dbg !2713
  %10 = load i32, i32* %flags, align 8, !dbg !2713
  %conv = sext i32 %10 to i64, !dbg !2711
  %and = and i64 %conv, 1, !dbg !2714
  %tobool = icmp ne i64 %and, 0, !dbg !2714
  br i1 %tobool, label %if.then, label %if.end, !dbg !2715

if.then:                                          ; preds = %cond.end
  br label %return, !dbg !2716

if.end:                                           ; preds = %cond.end
  %11 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2717
  %12 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2718
  %brightness1 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %12, i32 0, i32 1, !dbg !2719
  %13 = load i32, i32* %brightness1, align 8, !dbg !2719
  call void @led_set_brightness_nopm(%struct.led_classdev* %11, i32 %13) #8, !dbg !2720
  br label %return, !dbg !2721

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2721
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @led_set_brightness_nopm(%struct.led_classdev* %led_cdev, i32 %value) #0 !dbg !2722 {
entry:
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  %value.addr = alloca i32, align 4
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !2723, metadata !DIExpression()), !dbg !2724
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !2725, metadata !DIExpression()), !dbg !2726
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2727
  %1 = load i32, i32* %value.addr, align 4, !dbg !2729
  %call = call i32 @__led_set_brightness(%struct.led_classdev* %0, i32 %1) #8, !dbg !2730
  %tobool = icmp ne i32 %call, 0, !dbg !2730
  br i1 %tobool, label %if.end, label %if.then, !dbg !2731

if.then:                                          ; preds = %entry
  br label %return, !dbg !2732

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %value.addr, align 4, !dbg !2733
  %3 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2734
  %delayed_set_value = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %3, i32 0, i32 22, !dbg !2735
  store i32 %2, i32* %delayed_set_value, align 8, !dbg !2736
  %4 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2737
  %set_brightness_work = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %4, i32 0, i32 21, !dbg !2738
  %call1 = call zeroext i1 @schedule_work(%struct.work_struct* %set_brightness_work) #8, !dbg !2739
  br label %return, !dbg !2740

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2740
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__led_set_brightness(%struct.led_classdev* %led_cdev, i32 %value) #0 !dbg !2741 {
entry:
  %retval = alloca i32, align 4
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  %value.addr = alloca i32, align 4
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !2742, metadata !DIExpression()), !dbg !2743
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !2744, metadata !DIExpression()), !dbg !2745
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2746
  %brightness_set = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %0, i32 0, i32 5, !dbg !2748
  %1 = load void (%struct.led_classdev*, i32)*, void (%struct.led_classdev*, i32)** %brightness_set, align 8, !dbg !2748
  %tobool = icmp ne void (%struct.led_classdev*, i32)* %1, null, !dbg !2746
  br i1 %tobool, label %if.end, label %if.then, !dbg !2749

if.then:                                          ; preds = %entry
  store i32 -524, i32* %retval, align 4, !dbg !2750
  br label %return, !dbg !2750

if.end:                                           ; preds = %entry
  %2 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2751
  %brightness_set1 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %2, i32 0, i32 5, !dbg !2752
  %3 = load void (%struct.led_classdev*, i32)*, void (%struct.led_classdev*, i32)** %brightness_set1, align 8, !dbg !2752
  %4 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2753
  %5 = load i32, i32* %value.addr, align 4, !dbg !2754
  call void %3(%struct.led_classdev* %4, i32 %5) #8, !dbg !2751
  store i32 0, i32* %retval, align 4, !dbg !2755
  br label %return, !dbg !2755

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !2756
  ret i32 %6, !dbg !2756
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @led_set_brightness_sync(%struct.led_classdev* %led_cdev, i32 %value) #0 !dbg !2757 {
entry:
  %retval = alloca i32, align 4
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  %value.addr = alloca i32, align 4
  %__UNIQUE_ID___x165 = alloca i32, align 4
  %__UNIQUE_ID___y166 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !2758, metadata !DIExpression()), !dbg !2759
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !2760, metadata !DIExpression()), !dbg !2761
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2762
  %blink_delay_on = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %0, i32 0, i32 15, !dbg !2764
  %1 = load i64, i64* %blink_delay_on, align 8, !dbg !2764
  %tobool = icmp ne i64 %1, 0, !dbg !2762
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2765

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2766
  %blink_delay_off = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %2, i32 0, i32 16, !dbg !2767
  %3 = load i64, i64* %blink_delay_off, align 8, !dbg !2767
  %tobool1 = icmp ne i64 %3, 0, !dbg !2766
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2768

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -16, i32* %retval, align 4, !dbg !2769
  br label %return, !dbg !2769

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x165, metadata !2770, metadata !DIExpression()), !dbg !2772
  %4 = load i32, i32* %value.addr, align 4, !dbg !2772
  store i32 %4, i32* %__UNIQUE_ID___x165, align 4, !dbg !2772
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y166, metadata !2773, metadata !DIExpression()), !dbg !2772
  %5 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2772
  %max_brightness = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %5, i32 0, i32 2, !dbg !2772
  %6 = load i32, i32* %max_brightness, align 4, !dbg !2772
  store i32 %6, i32* %__UNIQUE_ID___y166, align 4, !dbg !2772
  %7 = load i32, i32* %__UNIQUE_ID___x165, align 4, !dbg !2772
  %8 = load i32, i32* %__UNIQUE_ID___y166, align 4, !dbg !2772
  %cmp = icmp ult i32 %7, %8, !dbg !2772
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2772

cond.true:                                        ; preds = %if.end
  %9 = load i32, i32* %__UNIQUE_ID___x165, align 4, !dbg !2772
  br label %cond.end, !dbg !2772

cond.false:                                       ; preds = %if.end
  %10 = load i32, i32* %__UNIQUE_ID___y166, align 4, !dbg !2772
  br label %cond.end, !dbg !2772

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %10, %cond.false ], !dbg !2772
  store i32 %cond, i32* %tmp, align 4, !dbg !2772
  %11 = load i32, i32* %tmp, align 4, !dbg !2772
  %12 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2774
  %brightness = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %12, i32 0, i32 1, !dbg !2775
  store i32 %11, i32* %brightness, align 8, !dbg !2776
  %13 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2777
  %flags = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %13, i32 0, i32 3, !dbg !2779
  %14 = load i32, i32* %flags, align 8, !dbg !2779
  %conv = sext i32 %14 to i64, !dbg !2777
  %and = and i64 %conv, 1, !dbg !2780
  %tobool2 = icmp ne i64 %and, 0, !dbg !2780
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2781

if.then3:                                         ; preds = %cond.end
  store i32 0, i32* %retval, align 4, !dbg !2782
  br label %return, !dbg !2782

if.end4:                                          ; preds = %cond.end
  %15 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2783
  %16 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2784
  %brightness5 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %16, i32 0, i32 1, !dbg !2785
  %17 = load i32, i32* %brightness5, align 8, !dbg !2785
  %call = call i32 @__led_set_brightness_blocking(%struct.led_classdev* %15, i32 %17) #8, !dbg !2786
  store i32 %call, i32* %retval, align 4, !dbg !2787
  br label %return, !dbg !2787

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !2788
  ret i32 %18, !dbg !2788
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__led_set_brightness_blocking(%struct.led_classdev* %led_cdev, i32 %value) #0 !dbg !2789 {
entry:
  %retval = alloca i32, align 4
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  %value.addr = alloca i32, align 4
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !2790, metadata !DIExpression()), !dbg !2791
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !2792, metadata !DIExpression()), !dbg !2793
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2794
  %brightness_set_blocking = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %0, i32 0, i32 6, !dbg !2796
  %1 = load i32 (%struct.led_classdev*, i32)*, i32 (%struct.led_classdev*, i32)** %brightness_set_blocking, align 8, !dbg !2796
  %tobool = icmp ne i32 (%struct.led_classdev*, i32)* %1, null, !dbg !2794
  br i1 %tobool, label %if.end, label %if.then, !dbg !2797

if.then:                                          ; preds = %entry
  store i32 -524, i32* %retval, align 4, !dbg !2798
  br label %return, !dbg !2798

if.end:                                           ; preds = %entry
  %2 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2799
  %brightness_set_blocking1 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %2, i32 0, i32 6, !dbg !2800
  %3 = load i32 (%struct.led_classdev*, i32)*, i32 (%struct.led_classdev*, i32)** %brightness_set_blocking1, align 8, !dbg !2800
  %4 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2801
  %5 = load i32, i32* %value.addr, align 4, !dbg !2802
  %call = call i32 %3(%struct.led_classdev* %4, i32 %5) #8, !dbg !2799
  store i32 %call, i32* %retval, align 4, !dbg !2803
  br label %return, !dbg !2803

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !2804
  ret i32 %6, !dbg !2804
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @led_update_brightness(%struct.led_classdev* %led_cdev) #0 !dbg !2805 {
entry:
  %retval = alloca i32, align 4
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  %ret = alloca i32, align 4
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !2806, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2808, metadata !DIExpression()), !dbg !2809
  store i32 0, i32* %ret, align 4, !dbg !2809
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2810
  %brightness_get = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %0, i32 0, i32 7, !dbg !2812
  %1 = load i32 (%struct.led_classdev*)*, i32 (%struct.led_classdev*)** %brightness_get, align 8, !dbg !2812
  %tobool = icmp ne i32 (%struct.led_classdev*)* %1, null, !dbg !2810
  br i1 %tobool, label %if.then, label %if.end3, !dbg !2813

if.then:                                          ; preds = %entry
  %2 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2814
  %brightness_get1 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %2, i32 0, i32 7, !dbg !2816
  %3 = load i32 (%struct.led_classdev*)*, i32 (%struct.led_classdev*)** %brightness_get1, align 8, !dbg !2816
  %4 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2817
  %call = call i32 %3(%struct.led_classdev* %4) #8, !dbg !2814
  store i32 %call, i32* %ret, align 4, !dbg !2818
  %5 = load i32, i32* %ret, align 4, !dbg !2819
  %cmp = icmp sge i32 %5, 0, !dbg !2821
  br i1 %cmp, label %if.then2, label %if.end, !dbg !2822

if.then2:                                         ; preds = %if.then
  %6 = load i32, i32* %ret, align 4, !dbg !2823
  %7 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2825
  %brightness = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %7, i32 0, i32 1, !dbg !2826
  store i32 %6, i32* %brightness, align 8, !dbg !2827
  store i32 0, i32* %retval, align 4, !dbg !2828
  br label %return, !dbg !2828

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !2829

if.end3:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* %ret, align 4, !dbg !2830
  store i32 %8, i32* %retval, align 4, !dbg !2831
  br label %return, !dbg !2831

return:                                           ; preds = %if.end3, %if.then2
  %9 = load i32, i32* %retval, align 4, !dbg !2832
  ret i32 %9, !dbg !2832
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32* @led_get_default_pattern(%struct.led_classdev* %led_cdev, i32* %size) #0 !dbg !2833 {
entry:
  %retval = alloca i32*, align 8
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  %size.addr = alloca i32*, align 8
  %fwnode = alloca %struct.fwnode_handle*, align 8
  %pattern = alloca i32*, align 8
  %count = alloca i32, align 4
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !2837, metadata !DIExpression()), !dbg !2838
  store i32* %size, i32** %size.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %size.addr, metadata !2839, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode, metadata !2841, metadata !DIExpression()), !dbg !2842
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2843
  %dev = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %0, i32 0, i32 11, !dbg !2844
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2844
  %fwnode1 = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 24, !dbg !2845
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode1, align 8, !dbg !2845
  store %struct.fwnode_handle* %2, %struct.fwnode_handle** %fwnode, align 8, !dbg !2842
  call void @llvm.dbg.declare(metadata i32** %pattern, metadata !2846, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.declare(metadata i32* %count, metadata !2848, metadata !DIExpression()), !dbg !2849
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !2850
  %call = call i32 @fwnode_property_count_u32(%struct.fwnode_handle* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !2851
  store i32 %call, i32* %count, align 4, !dbg !2852
  %4 = load i32, i32* %count, align 4, !dbg !2853
  %cmp = icmp slt i32 %4, 0, !dbg !2855
  br i1 %cmp, label %if.then, label %if.end, !dbg !2856

if.then:                                          ; preds = %entry
  store i32* null, i32** %retval, align 8, !dbg !2857
  br label %return, !dbg !2857

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %count, align 4, !dbg !2858
  %conv = sext i32 %5 to i64, !dbg !2858
  %call2 = call i8* @kcalloc(i64 %conv, i64 4, i32 3264) #8, !dbg !2859
  %6 = bitcast i8* %call2 to i32*, !dbg !2859
  store i32* %6, i32** %pattern, align 8, !dbg !2860
  %7 = load i32*, i32** %pattern, align 8, !dbg !2861
  %tobool = icmp ne i32* %7, null, !dbg !2861
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !2863

if.then3:                                         ; preds = %if.end
  store i32* null, i32** %retval, align 8, !dbg !2864
  br label %return, !dbg !2864

if.end4:                                          ; preds = %if.end
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !2865
  %9 = load i32*, i32** %pattern, align 8, !dbg !2867
  %10 = load i32, i32* %count, align 4, !dbg !2868
  %conv5 = sext i32 %10 to i64, !dbg !2868
  %call6 = call i32 @fwnode_property_read_u32_array(%struct.fwnode_handle* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32* %9, i64 %conv5) #8, !dbg !2869
  %tobool7 = icmp ne i32 %call6, 0, !dbg !2869
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !2870

if.then8:                                         ; preds = %if.end4
  %11 = load i32*, i32** %pattern, align 8, !dbg !2871
  %12 = bitcast i32* %11 to i8*, !dbg !2871
  call void @kfree(i8* %12) #8, !dbg !2873
  store i32* null, i32** %retval, align 8, !dbg !2874
  br label %return, !dbg !2874

if.end9:                                          ; preds = %if.end4
  %13 = load i32, i32* %count, align 4, !dbg !2875
  %14 = load i32*, i32** %size.addr, align 8, !dbg !2876
  store i32 %13, i32* %14, align 4, !dbg !2877
  %15 = load i32*, i32** %pattern, align 8, !dbg !2878
  store i32* %15, i32** %retval, align 8, !dbg !2879
  br label %return, !dbg !2879

return:                                           ; preds = %if.end9, %if.then8, %if.then3, %if.then
  %16 = load i32*, i32** %retval, align 8, !dbg !2880
  ret i32* %16, !dbg !2880
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fwnode_property_count_u32(%struct.fwnode_handle* %fwnode, i8* %propname) #0 !dbg !2881 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %propname.addr = alloca i8*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !2885, metadata !DIExpression()), !dbg !2886
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2887, metadata !DIExpression()), !dbg !2888
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !2889
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2890
  %call = call i32 @fwnode_property_read_u32_array(%struct.fwnode_handle* %0, i8* %1, i32* null, i64 0) #8, !dbg !2891
  ret i32 %call, !dbg !2892
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !2893 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2896, metadata !DIExpression()), !dbg !2897
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2898, metadata !DIExpression()), !dbg !2899
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2900, metadata !DIExpression()), !dbg !2901
  %0 = load i64, i64* %n.addr, align 8, !dbg !2902
  %1 = load i64, i64* %size.addr, align 8, !dbg !2903
  %2 = load i32, i32* %flags.addr, align 4, !dbg !2904
  %or = or i32 %2, 256, !dbg !2905
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #8, !dbg !2906
  ret i8* %call, !dbg !2907
}

; Function Attrs: noredzone
declare dso_local i32 @fwnode_property_read_u32_array(%struct.fwnode_handle*, i8*, i32*, i64) #3

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @led_sysfs_disable(%struct.led_classdev* %led_cdev) #0 !dbg !2908 {
entry:
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !2909, metadata !DIExpression()), !dbg !2910
  br label %do.body, !dbg !2911

do.body:                                          ; preds = %entry
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2912
  %led_access = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %0, i32 0, i32 23, !dbg !2912
  br label %do.end, !dbg !2912

do.end:                                           ; preds = %do.body
  %1 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2914
  %flags = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %1, i32 0, i32 3, !dbg !2915
  %2 = load i32, i32* %flags, align 8, !dbg !2916
  %conv = sext i32 %2 to i64, !dbg !2916
  %or = or i64 %conv, 131072, !dbg !2916
  %conv1 = trunc i64 %or to i32, !dbg !2916
  store i32 %conv1, i32* %flags, align 8, !dbg !2916
  ret void, !dbg !2917
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @led_sysfs_enable(%struct.led_classdev* %led_cdev) #0 !dbg !2918 {
entry:
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !2919, metadata !DIExpression()), !dbg !2920
  br label %do.body, !dbg !2921

do.body:                                          ; preds = %entry
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2922
  %led_access = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %0, i32 0, i32 23, !dbg !2922
  br label %do.end, !dbg !2922

do.end:                                           ; preds = %do.body
  %1 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2924
  %flags = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %1, i32 0, i32 3, !dbg !2925
  %2 = load i32, i32* %flags, align 8, !dbg !2926
  %conv = sext i32 %2 to i64, !dbg !2926
  %and = and i64 %conv, -131073, !dbg !2926
  %conv1 = trunc i64 %and to i32, !dbg !2926
  store i32 %conv1, i32* %flags, align 8, !dbg !2926
  ret void, !dbg !2927
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @led_compose_name(%struct.device* %dev, %struct.led_init_data* %init_data, i8* %led_classdev_name) #0 !dbg !2928 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %init_data.addr = alloca %struct.led_init_data*, align 8
  %led_classdev_name.addr = alloca i8*, align 8
  %props = alloca %struct.led_properties, align 8
  %fwnode = alloca %struct.fwnode_handle*, align 8
  %devicename = alloca i8*, align 8
  %tmp_buf = alloca [64 x i8], align 16
  %__to_of_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.device_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp85 = alloca %struct.device_node*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2938, metadata !DIExpression()), !dbg !2939
  store %struct.led_init_data* %init_data, %struct.led_init_data** %init_data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_init_data** %init_data.addr, metadata !2940, metadata !DIExpression()), !dbg !2941
  store i8* %led_classdev_name, i8** %led_classdev_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %led_classdev_name.addr, metadata !2942, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.declare(metadata %struct.led_properties* %props, metadata !2944, metadata !DIExpression()), !dbg !2953
  %0 = bitcast %struct.led_properties* %props to i8*, !dbg !2953
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 32, i1 false), !dbg !2953
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode, metadata !2954, metadata !DIExpression()), !dbg !2955
  %1 = load %struct.led_init_data*, %struct.led_init_data** %init_data.addr, align 8, !dbg !2956
  %fwnode1 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %1, i32 0, i32 0, !dbg !2957
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode1, align 8, !dbg !2957
  store %struct.fwnode_handle* %2, %struct.fwnode_handle** %fwnode, align 8, !dbg !2955
  call void @llvm.dbg.declare(metadata i8** %devicename, metadata !2958, metadata !DIExpression()), !dbg !2959
  %3 = load %struct.led_init_data*, %struct.led_init_data** %init_data.addr, align 8, !dbg !2960
  %devicename2 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %3, i32 0, i32 2, !dbg !2961
  %4 = load i8*, i8** %devicename2, align 8, !dbg !2961
  store i8* %4, i8** %devicename, align 8, !dbg !2959
  br label %do.body, !dbg !2962

do.body:                                          ; preds = %entry
  %color = getelementptr inbounds %struct.led_properties, %struct.led_properties* %props, i32 0, i32 0, !dbg !2963
  %5 = load i32, i32* %color, align 8, !dbg !2963
  %cmp = icmp eq i32 %5, 8, !dbg !2963
  %lnot = xor i1 %cmp, true, !dbg !2963
  %lnot3 = xor i1 %lnot, true, !dbg !2963
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2963
  %conv = sext i32 %lnot.ext to i64, !dbg !2963
  %tobool = icmp ne i64 %conv, 0, !dbg !2963
  br i1 %tobool, label %if.then, label %if.end, !dbg !2966

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !2963

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !2967

do.body5:                                         ; preds = %do.body4
  br label %do.end, !dbg !2969

do.end:                                           ; preds = %do.body5
  br label %do.body6, !dbg !2967

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 430, i32 0, i64 12) #10, !dbg !2971, !srcloc !2973
  br label %do.end7, !dbg !2971

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !2967

do.body8:                                         ; preds = %do.end7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 167) #10, !dbg !2974, !srcloc !2977
  unreachable, !dbg !2978

do.end9:                                          ; No predecessors!
  br label %do.end10, !dbg !2967

do.end10:                                         ; preds = %do.end9
  br label %if.end, !dbg !2967

if.end:                                           ; preds = %do.end10, %do.body
  br label %do.end11, !dbg !2966

do.end11:                                         ; preds = %if.end
  %6 = load i8*, i8** %led_classdev_name.addr, align 8, !dbg !2979
  %tobool12 = icmp ne i8* %6, null, !dbg !2979
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !2981

if.then13:                                        ; preds = %do.end11
  store i32 -22, i32* %retval, align 4, !dbg !2982
  br label %return, !dbg !2982

if.end14:                                         ; preds = %do.end11
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2983
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !2984
  call void @led_parse_fwnode_props(%struct.device* %7, %struct.fwnode_handle* %8, %struct.led_properties* %props) #8, !dbg !2985
  %label = getelementptr inbounds %struct.led_properties, %struct.led_properties* %props, i32 0, i32 5, !dbg !2986
  %9 = load i8*, i8** %label, align 8, !dbg !2986
  %tobool15 = icmp ne i8* %9, null, !dbg !2988
  br i1 %tobool15, label %if.then16, label %if.else23, !dbg !2989

if.then16:                                        ; preds = %if.end14
  %10 = load i8*, i8** %devicename, align 8, !dbg !2990
  %tobool17 = icmp ne i8* %10, null, !dbg !2990
  br i1 %tobool17, label %if.else, label %if.then18, !dbg !2993

if.then18:                                        ; preds = %if.then16
  %11 = load i8*, i8** %led_classdev_name.addr, align 8, !dbg !2994
  %label19 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %props, i32 0, i32 5, !dbg !2996
  %12 = load i8*, i8** %label19, align 8, !dbg !2996
  %call = call i64 @strscpy(i8* %11, i8* %12, i64 64) #8, !dbg !2997
  br label %if.end22, !dbg !2998

if.else:                                          ; preds = %if.then16
  %13 = load i8*, i8** %led_classdev_name.addr, align 8, !dbg !2999
  %14 = load i8*, i8** %devicename, align 8, !dbg !3001
  %label20 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %props, i32 0, i32 5, !dbg !3002
  %15 = load i8*, i8** %label20, align 8, !dbg !3002
  %call21 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %13, i64 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %14, i8* %15) #8, !dbg !3003
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then18
  br label %if.end94, !dbg !3004

if.else23:                                        ; preds = %if.end14
  %function = getelementptr inbounds %struct.led_properties, %struct.led_properties* %props, i32 0, i32 2, !dbg !3005
  %16 = load i8*, i8** %function, align 8, !dbg !3005
  %tobool24 = icmp ne i8* %16, null, !dbg !3007
  br i1 %tobool24, label %if.then27, label %lor.lhs.false, !dbg !3008

lor.lhs.false:                                    ; preds = %if.else23
  %color_present = getelementptr inbounds %struct.led_properties, %struct.led_properties* %props, i32 0, i32 1, !dbg !3009
  %17 = load i8, i8* %color_present, align 4, !dbg !3009
  %tobool25 = trunc i8 %17 to i1, !dbg !3009
  br i1 %tobool25, label %if.then27, label %if.else69, !dbg !3010

if.then27:                                        ; preds = %lor.lhs.false, %if.else23
  call void @llvm.dbg.declare(metadata [64 x i8]* %tmp_buf, metadata !3011, metadata !DIExpression()), !dbg !3014
  %func_enum_present = getelementptr inbounds %struct.led_properties, %struct.led_properties* %props, i32 0, i32 4, !dbg !3015
  %18 = load i8, i8* %func_enum_present, align 4, !dbg !3015
  %tobool28 = trunc i8 %18 to i1, !dbg !3015
  br i1 %tobool28, label %if.then29, label %if.else41, !dbg !3017

if.then29:                                        ; preds = %if.then27
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %tmp_buf, i64 0, i64 0, !dbg !3018
  %color_present30 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %props, i32 0, i32 1, !dbg !3020
  %19 = load i8, i8* %color_present30, align 4, !dbg !3020
  %tobool31 = trunc i8 %19 to i1, !dbg !3020
  br i1 %tobool31, label %cond.true, label %cond.false, !dbg !3021

cond.true:                                        ; preds = %if.then29
  %color33 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %props, i32 0, i32 0, !dbg !3022
  %20 = load i32, i32* %color33, align 8, !dbg !3022
  %idxprom = zext i32 %20 to i64, !dbg !3023
  %arrayidx = getelementptr [10 x i8*], [10 x i8*]* @led_colors, i64 0, i64 %idxprom, !dbg !3023
  %21 = load i8*, i8** %arrayidx, align 8, !dbg !3023
  br label %cond.end, !dbg !3021

cond.false:                                       ; preds = %if.then29
  br label %cond.end, !dbg !3021

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %21, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), %cond.false ], !dbg !3021
  %function34 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %props, i32 0, i32 2, !dbg !3024
  %22 = load i8*, i8** %function34, align 8, !dbg !3024
  %tobool35 = icmp ne i8* %22, null, !dbg !3025
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3025

cond.true36:                                      ; preds = %cond.end
  br label %cond.end38, !dbg !3025

cond.false37:                                     ; preds = %cond.end
  br label %cond.end38, !dbg !3025

cond.end38:                                       ; preds = %cond.false37, %cond.true36
  %cond39 = phi i8* [ %22, %cond.true36 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), %cond.false37 ], !dbg !3025
  %func_enum = getelementptr inbounds %struct.led_properties, %struct.led_properties* %props, i32 0, i32 3, !dbg !3026
  %23 = load i32, i32* %func_enum, align 8, !dbg !3026
  %call40 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* %cond, i8* %cond39, i32 %23) #8, !dbg !3027
  br label %if.end60, !dbg !3028

if.else41:                                        ; preds = %if.then27
  %arraydecay42 = getelementptr inbounds [64 x i8], [64 x i8]* %tmp_buf, i64 0, i64 0, !dbg !3029
  %color_present43 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %props, i32 0, i32 1, !dbg !3031
  %24 = load i8, i8* %color_present43, align 4, !dbg !3031
  %tobool44 = trunc i8 %24 to i1, !dbg !3031
  br i1 %tobool44, label %cond.true46, label %cond.false50, !dbg !3032

cond.true46:                                      ; preds = %if.else41
  %color47 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %props, i32 0, i32 0, !dbg !3033
  %25 = load i32, i32* %color47, align 8, !dbg !3033
  %idxprom48 = zext i32 %25 to i64, !dbg !3034
  %arrayidx49 = getelementptr [10 x i8*], [10 x i8*]* @led_colors, i64 0, i64 %idxprom48, !dbg !3034
  %26 = load i8*, i8** %arrayidx49, align 8, !dbg !3034
  br label %cond.end51, !dbg !3032

cond.false50:                                     ; preds = %if.else41
  br label %cond.end51, !dbg !3032

cond.end51:                                       ; preds = %cond.false50, %cond.true46
  %cond52 = phi i8* [ %26, %cond.true46 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), %cond.false50 ], !dbg !3032
  %function53 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %props, i32 0, i32 2, !dbg !3035
  %27 = load i8*, i8** %function53, align 8, !dbg !3035
  %tobool54 = icmp ne i8* %27, null, !dbg !3036
  br i1 %tobool54, label %cond.true55, label %cond.false56, !dbg !3036

cond.true55:                                      ; preds = %cond.end51
  br label %cond.end57, !dbg !3036

cond.false56:                                     ; preds = %cond.end51
  br label %cond.end57, !dbg !3036

cond.end57:                                       ; preds = %cond.false56, %cond.true55
  %cond58 = phi i8* [ %27, %cond.true55 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), %cond.false56 ], !dbg !3036
  %call59 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay42, i64 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %cond52, i8* %cond58) #8, !dbg !3037
  br label %if.end60

if.end60:                                         ; preds = %cond.end57, %cond.end38
  %28 = load %struct.led_init_data*, %struct.led_init_data** %init_data.addr, align 8, !dbg !3038
  %devname_mandatory = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %28, i32 0, i32 3, !dbg !3040
  %29 = load i8, i8* %devname_mandatory, align 8, !dbg !3040
  %tobool61 = trunc i8 %29 to i1, !dbg !3040
  br i1 %tobool61, label %if.then62, label %if.else65, !dbg !3041

if.then62:                                        ; preds = %if.end60
  %30 = load i8*, i8** %led_classdev_name.addr, align 8, !dbg !3042
  %31 = load i8*, i8** %devicename, align 8, !dbg !3044
  %arraydecay63 = getelementptr inbounds [64 x i8], [64 x i8]* %tmp_buf, i64 0, i64 0, !dbg !3045
  %call64 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %30, i64 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %31, i8* %arraydecay63) #8, !dbg !3046
  br label %if.end68, !dbg !3047

if.else65:                                        ; preds = %if.end60
  %32 = load i8*, i8** %led_classdev_name.addr, align 8, !dbg !3048
  %arraydecay66 = getelementptr inbounds [64 x i8], [64 x i8]* %tmp_buf, i64 0, i64 0, !dbg !3050
  %call67 = call i64 @strscpy(i8* %32, i8* %arraydecay66, i64 64) #8, !dbg !3051
  br label %if.end68

if.end68:                                         ; preds = %if.else65, %if.then62
  br label %if.end93, !dbg !3052

if.else69:                                        ; preds = %lor.lhs.false
  %33 = load %struct.led_init_data*, %struct.led_init_data** %init_data.addr, align 8, !dbg !3053
  %default_label = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %33, i32 0, i32 1, !dbg !3055
  %34 = load i8*, i8** %default_label, align 8, !dbg !3055
  %tobool70 = icmp ne i8* %34, null, !dbg !3053
  br i1 %tobool70, label %if.then71, label %if.else77, !dbg !3056

if.then71:                                        ; preds = %if.else69
  %35 = load i8*, i8** %devicename, align 8, !dbg !3057
  %tobool72 = icmp ne i8* %35, null, !dbg !3057
  br i1 %tobool72, label %if.end74, label %if.then73, !dbg !3060

if.then73:                                        ; preds = %if.then71
  %36 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3061
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0)) #9, !dbg !3061
  store i32 -22, i32* %retval, align 4, !dbg !3063
  br label %return, !dbg !3063

if.end74:                                         ; preds = %if.then71
  %37 = load i8*, i8** %led_classdev_name.addr, align 8, !dbg !3064
  %38 = load i8*, i8** %devicename, align 8, !dbg !3065
  %39 = load %struct.led_init_data*, %struct.led_init_data** %init_data.addr, align 8, !dbg !3066
  %default_label75 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %39, i32 0, i32 1, !dbg !3067
  %40 = load i8*, i8** %default_label75, align 8, !dbg !3067
  %call76 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %37, i64 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %38, i8* %40) #8, !dbg !3068
  br label %if.end92, !dbg !3069

if.else77:                                        ; preds = %if.else69
  %41 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !3070
  %call78 = call zeroext i1 @is_of_node(%struct.fwnode_handle* %41) #8, !dbg !3072
  br i1 %call78, label %if.then79, label %if.else90, !dbg !3073

if.then79:                                        ; preds = %if.else77
  %42 = load i8*, i8** %led_classdev_name.addr, align 8, !dbg !3074
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_of_node_fwnode, metadata !3076, metadata !DIExpression()), !dbg !3078
  %43 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !3078
  store %struct.fwnode_handle* %43, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3078
  %44 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3078
  %call80 = call zeroext i1 @is_of_node(%struct.fwnode_handle* %44) #8, !dbg !3078
  br i1 %call80, label %cond.true82, label %cond.false86, !dbg !3078

cond.true82:                                      ; preds = %if.then79
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3079, metadata !DIExpression()), !dbg !3081
  %45 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3081
  %46 = bitcast %struct.fwnode_handle* %45 to i8*, !dbg !3081
  store i8* %46, i8** %__mptr, align 8, !dbg !3081
  br label %do.body83, !dbg !3081

do.body83:                                        ; preds = %cond.true82
  br label %do.end84, !dbg !3082

do.end84:                                         ; preds = %do.body83
  %47 = load i8*, i8** %__mptr, align 8, !dbg !3081
  %add.ptr = getelementptr i8, i8* %47, i64 -24, !dbg !3081
  %48 = bitcast i8* %add.ptr to %struct.device_node*, !dbg !3081
  store %struct.device_node* %48, %struct.device_node** %tmp85, align 8, !dbg !3082
  %49 = load %struct.device_node*, %struct.device_node** %tmp85, align 8, !dbg !3081
  br label %cond.end87, !dbg !3078

cond.false86:                                     ; preds = %if.then79
  br label %cond.end87, !dbg !3078

cond.end87:                                       ; preds = %cond.false86, %do.end84
  %cond88 = phi %struct.device_node* [ %49, %do.end84 ], [ null, %cond.false86 ], !dbg !3078
  store %struct.device_node* %cond88, %struct.device_node** %tmp, align 8, !dbg !3078
  %50 = load %struct.device_node*, %struct.device_node** %tmp, align 8, !dbg !3078
  %name = getelementptr inbounds %struct.device_node, %struct.device_node* %50, i32 0, i32 0, !dbg !3084
  %51 = load i8*, i8** %name, align 8, !dbg !3084
  %call89 = call i64 @strscpy(i8* %42, i8* %51, i64 64) #8, !dbg !3085
  br label %if.end91, !dbg !3086

if.else90:                                        ; preds = %if.else77
  store i32 -22, i32* %retval, align 4, !dbg !3087
  br label %return, !dbg !3087

if.end91:                                         ; preds = %cond.end87
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.end74
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.end68
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.end22
  store i32 0, i32* %retval, align 4, !dbg !3088
  br label %return, !dbg !3088

return:                                           ; preds = %if.end94, %if.else90, %if.then73, %if.then13
  %52 = load i32, i32* %retval, align 4, !dbg !3089
  ret i32 %52, !dbg !3089
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @led_parse_fwnode_props(%struct.device* %dev, %struct.fwnode_handle* %fwnode, %struct.led_properties* %props) #0 !dbg !3090 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %props.addr = alloca %struct.led_properties*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3094, metadata !DIExpression()), !dbg !3095
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3096, metadata !DIExpression()), !dbg !3097
  store %struct.led_properties* %props, %struct.led_properties** %props.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_properties** %props.addr, metadata !3098, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3100, metadata !DIExpression()), !dbg !3101
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3102
  %tobool = icmp ne %struct.fwnode_handle* %0, null, !dbg !3102
  br i1 %tobool, label %if.end, label %if.then, !dbg !3104

if.then:                                          ; preds = %entry
  br label %if.end32, !dbg !3105

if.end:                                           ; preds = %entry
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3106
  %call = call zeroext i1 @fwnode_property_present(%struct.fwnode_handle* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !3108
  br i1 %call, label %if.then1, label %if.end6, !dbg !3109

if.then1:                                         ; preds = %if.end
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3110
  %3 = load %struct.led_properties*, %struct.led_properties** %props.addr, align 8, !dbg !3112
  %label = getelementptr inbounds %struct.led_properties, %struct.led_properties* %3, i32 0, i32 5, !dbg !3113
  %call2 = call i32 @fwnode_property_read_string(%struct.fwnode_handle* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8** %label) #8, !dbg !3114
  store i32 %call2, i32* %ret, align 4, !dbg !3115
  %4 = load i32, i32* %ret, align 4, !dbg !3116
  %tobool3 = icmp ne i32 %4, 0, !dbg !3116
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3118

if.then4:                                         ; preds = %if.then1
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3119
  %6 = load i32, i32* %ret, align 4, !dbg !3119
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i32 %6) #9, !dbg !3119
  br label %if.end5, !dbg !3119

if.end5:                                          ; preds = %if.then4, %if.then1
  br label %if.end32, !dbg !3120

if.end6:                                          ; preds = %if.end
  %7 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3121
  %call7 = call zeroext i1 @fwnode_property_present(%struct.fwnode_handle* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !3123
  br i1 %call7, label %if.then8, label %if.end17, !dbg !3124

if.then8:                                         ; preds = %if.end6
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3125
  %9 = load %struct.led_properties*, %struct.led_properties** %props.addr, align 8, !dbg !3127
  %color = getelementptr inbounds %struct.led_properties, %struct.led_properties* %9, i32 0, i32 0, !dbg !3128
  %call9 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i32* %color) #8, !dbg !3129
  store i32 %call9, i32* %ret, align 4, !dbg !3130
  %10 = load i32, i32* %ret, align 4, !dbg !3131
  %tobool10 = icmp ne i32 %10, 0, !dbg !3131
  br i1 %tobool10, label %if.then11, label %if.else, !dbg !3133

if.then11:                                        ; preds = %if.then8
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3134
  %12 = load i32, i32* %ret, align 4, !dbg !3134
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0), i32 %12) #9, !dbg !3134
  br label %if.end16, !dbg !3134

if.else:                                          ; preds = %if.then8
  %13 = load %struct.led_properties*, %struct.led_properties** %props.addr, align 8, !dbg !3135
  %color12 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %13, i32 0, i32 0, !dbg !3137
  %14 = load i32, i32* %color12, align 8, !dbg !3137
  %cmp = icmp uge i32 %14, 10, !dbg !3138
  br i1 %cmp, label %if.then13, label %if.else14, !dbg !3139

if.then13:                                        ; preds = %if.else
  %15 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3140
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0)) #9, !dbg !3140
  br label %if.end15, !dbg !3140

if.else14:                                        ; preds = %if.else
  %16 = load %struct.led_properties*, %struct.led_properties** %props.addr, align 8, !dbg !3141
  %color_present = getelementptr inbounds %struct.led_properties, %struct.led_properties* %16, i32 0, i32 1, !dbg !3142
  store i8 1, i8* %color_present, align 4, !dbg !3143
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %if.then13
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then11
  br label %if.end17, !dbg !3144

if.end17:                                         ; preds = %if.end16, %if.end6
  %17 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3145
  %call18 = call zeroext i1 @fwnode_property_present(%struct.fwnode_handle* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0)) #8, !dbg !3147
  br i1 %call18, label %if.end20, label %if.then19, !dbg !3148

if.then19:                                        ; preds = %if.end17
  br label %if.end32, !dbg !3149

if.end20:                                         ; preds = %if.end17
  %18 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3150
  %19 = load %struct.led_properties*, %struct.led_properties** %props.addr, align 8, !dbg !3151
  %function = getelementptr inbounds %struct.led_properties, %struct.led_properties* %19, i32 0, i32 2, !dbg !3152
  %call21 = call i32 @fwnode_property_read_string(%struct.fwnode_handle* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i8** %function) #8, !dbg !3153
  store i32 %call21, i32* %ret, align 4, !dbg !3154
  %20 = load i32, i32* %ret, align 4, !dbg !3155
  %tobool22 = icmp ne i32 %20, 0, !dbg !3155
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !3157

if.then23:                                        ; preds = %if.end20
  %21 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3158
  %22 = load i32, i32* %ret, align 4, !dbg !3158
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i32 %22) #9, !dbg !3158
  br label %if.end24, !dbg !3160

if.end24:                                         ; preds = %if.then23, %if.end20
  %23 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3161
  %call25 = call zeroext i1 @fwnode_property_present(%struct.fwnode_handle* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !3163
  br i1 %call25, label %if.end27, label %if.then26, !dbg !3164

if.then26:                                        ; preds = %if.end24
  br label %if.end32, !dbg !3165

if.end27:                                         ; preds = %if.end24
  %24 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3166
  %25 = load %struct.led_properties*, %struct.led_properties** %props.addr, align 8, !dbg !3167
  %func_enum = getelementptr inbounds %struct.led_properties, %struct.led_properties* %25, i32 0, i32 3, !dbg !3168
  %call28 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i32* %func_enum) #8, !dbg !3169
  store i32 %call28, i32* %ret, align 4, !dbg !3170
  %26 = load i32, i32* %ret, align 4, !dbg !3171
  %tobool29 = icmp ne i32 %26, 0, !dbg !3171
  br i1 %tobool29, label %if.then30, label %if.else31, !dbg !3173

if.then30:                                        ; preds = %if.end27
  %27 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3174
  %28 = load i32, i32* %ret, align 4, !dbg !3174
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %27, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.26, i64 0, i64 0), i32 %28) #9, !dbg !3174
  br label %if.end32, !dbg !3176

if.else31:                                        ; preds = %if.end27
  %29 = load %struct.led_properties*, %struct.led_properties** %props.addr, align 8, !dbg !3177
  %func_enum_present = getelementptr inbounds %struct.led_properties, %struct.led_properties* %29, i32 0, i32 4, !dbg !3179
  store i8 1, i8* %func_enum_present, align 4, !dbg !3180
  br label %if.end32

if.end32:                                         ; preds = %if.then, %if.end5, %if.then19, %if.then26, %if.else31, %if.then30
  ret void, !dbg !3181
}

; Function Attrs: noredzone
declare dso_local i64 @strscpy(i8*, i8*, i64) #3

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #3

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @is_of_node(%struct.fwnode_handle* %fwnode) #0 !dbg !3182 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3183, metadata !DIExpression()), !dbg !3184
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3185
  %1 = bitcast %struct.fwnode_handle* %0 to i8*, !dbg !3185
  %call = call zeroext i1 @IS_ERR_OR_NULL(i8* %1) #8, !dbg !3186
  br i1 %call, label %land.end, label %land.rhs, !dbg !3187

land.rhs:                                         ; preds = %entry
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3188
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %2, i32 0, i32 1, !dbg !3189
  %3 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8, !dbg !3189
  %cmp = icmp eq %struct.fwnode_operations* %3, @of_fwnode_ops, !dbg !3190
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !3191
  ret i1 %4, !dbg !3192
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_and_clear_bit(i64 %nr, i64* %addr) #0 !dbg !3193 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !3196, metadata !DIExpression()), !dbg !3198
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !3200, metadata !DIExpression()), !dbg !3201
  %c.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i, metadata !3202, metadata !DIExpression()), !dbg !3204
  %tmp.i = alloca i8, align 1
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !3205, metadata !DIExpression()), !dbg !3207
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3209, metadata !DIExpression()), !dbg !3210
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !3211, metadata !DIExpression()), !dbg !3212
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !3213, metadata !DIExpression()), !dbg !3214
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !3215
  %1 = load i64, i64* %nr.addr, align 8, !dbg !3216
  %div = sdiv i64 %1, 64, !dbg !3216
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !3217
  %2 = bitcast i64* %add.ptr to i8*, !dbg !3215
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !3218
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3219
  %conv.i = trunc i64 %4 to i32, !dbg !3219
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !3220
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !3221
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !3221
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #11, !dbg !3221
  %7 = load i64, i64* %nr.addr, align 8, !dbg !3222
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !3223
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !3204
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !3204
  %11 = call i8 asm sideeffect " btrq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64* %9) #10, !dbg !3204, !srcloc !3224
  store i8 %11, i8* %c.i, align 1, !dbg !3204
  %12 = load i8, i8* %c.i, align 1, !dbg !3204
  %tobool.i = trunc i8 %12 to i1, !dbg !3204
  %frombool.i = zext i1 %tobool.i to i8, !dbg !3204
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !3204
  %13 = load i8, i8* %tmp.i, align 1, !dbg !3204
  %tobool1.i = trunc i8 %13 to i1, !dbg !3204
  ret i1 %tobool1.i, !dbg !3225
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !3226 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3230, metadata !DIExpression()), !dbg !3231
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3232, metadata !DIExpression()), !dbg !3233
  ret i1 true, !dbg !3234
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !3235 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3239, metadata !DIExpression()), !dbg !3240
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3241, metadata !DIExpression()), !dbg !3242
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3243, metadata !DIExpression()), !dbg !3244
  ret void, !dbg !3245
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @led_get_brightness(%struct.led_classdev* %led_cdev) #0 !dbg !3246 {
entry:
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !3248, metadata !DIExpression()), !dbg !3249
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !3250
  %brightness = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %0, i32 0, i32 1, !dbg !3251
  %1 = load i32, i32* %brightness, align 8, !dbg !3251
  ret i32 %1, !dbg !3252
}

; Function Attrs: noredzone
declare dso_local i32 @mod_timer(%struct.timer_list*, i64) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #0 !dbg !3253 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !3254, metadata !DIExpression()), !dbg !3255
  %0 = load i32, i32* %m.addr, align 4, !dbg !3256
  %conv = zext i32 %0 to i64, !dbg !3256
  %add = add i64 %conv, 4, !dbg !3257
  %sub = sub i64 %add, 1, !dbg !3258
  %div = sdiv i64 %sub, 4, !dbg !3259
  ret i64 %div, !dbg !3260
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @led_set_software_blink(%struct.led_classdev* %led_cdev, i64 %delay_on, i64 %delay_off) #0 !dbg !3261 {
entry:
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  %delay_on.addr = alloca i64, align 8
  %delay_off.addr = alloca i64, align 8
  %current_brightness = alloca i32, align 4
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !3264, metadata !DIExpression()), !dbg !3265
  store i64 %delay_on, i64* %delay_on.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delay_on.addr, metadata !3266, metadata !DIExpression()), !dbg !3267
  store i64 %delay_off, i64* %delay_off.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delay_off.addr, metadata !3268, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.declare(metadata i32* %current_brightness, metadata !3270, metadata !DIExpression()), !dbg !3271
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !3272
  %call = call i32 @led_get_brightness(%struct.led_classdev* %0) #8, !dbg !3273
  store i32 %call, i32* %current_brightness, align 4, !dbg !3274
  %1 = load i32, i32* %current_brightness, align 4, !dbg !3275
  %tobool = icmp ne i32 %1, 0, !dbg !3275
  br i1 %tobool, label %if.then, label %if.end, !dbg !3277

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %current_brightness, align 4, !dbg !3278
  %3 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !3279
  %blink_brightness = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %3, i32 0, i32 18, !dbg !3280
  store i32 %2, i32* %blink_brightness, align 8, !dbg !3281
  br label %if.end, !dbg !3279

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !3282
  %blink_brightness1 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %4, i32 0, i32 18, !dbg !3284
  %5 = load i32, i32* %blink_brightness1, align 8, !dbg !3284
  %tobool2 = icmp ne i32 %5, 0, !dbg !3282
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !3285

if.then3:                                         ; preds = %if.end
  %6 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !3286
  %max_brightness = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %6, i32 0, i32 2, !dbg !3287
  %7 = load i32, i32* %max_brightness, align 4, !dbg !3287
  %8 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !3288
  %blink_brightness4 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %8, i32 0, i32 18, !dbg !3289
  store i32 %7, i32* %blink_brightness4, align 8, !dbg !3290
  br label %if.end5, !dbg !3288

if.end5:                                          ; preds = %if.then3, %if.end
  %9 = load i64, i64* %delay_on.addr, align 8, !dbg !3291
  %10 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !3292
  %blink_delay_on = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %10, i32 0, i32 15, !dbg !3293
  store i64 %9, i64* %blink_delay_on, align 8, !dbg !3294
  %11 = load i64, i64* %delay_off.addr, align 8, !dbg !3295
  %12 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !3296
  %blink_delay_off = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %12, i32 0, i32 16, !dbg !3297
  store i64 %11, i64* %blink_delay_off, align 8, !dbg !3298
  %13 = load i64, i64* %delay_on.addr, align 8, !dbg !3299
  %tobool6 = icmp ne i64 %13, 0, !dbg !3299
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !3301

if.then7:                                         ; preds = %if.end5
  %14 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !3302
  call void @led_set_brightness_nosleep(%struct.led_classdev* %14, i32 0) #8, !dbg !3304
  br label %return, !dbg !3305

if.end8:                                          ; preds = %if.end5
  %15 = load i64, i64* %delay_off.addr, align 8, !dbg !3306
  %tobool9 = icmp ne i64 %15, 0, !dbg !3306
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !3308

if.then10:                                        ; preds = %if.end8
  %16 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !3309
  %17 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !3311
  %blink_brightness11 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %17, i32 0, i32 18, !dbg !3312
  %18 = load i32, i32* %blink_brightness11, align 8, !dbg !3312
  call void @led_set_brightness_nosleep(%struct.led_classdev* %16, i32 %18) #8, !dbg !3313
  br label %return, !dbg !3314

if.end12:                                         ; preds = %if.end8
  %19 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !3315
  %work_flags = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %19, i32 0, i32 4, !dbg !3316
  call void @set_bit(i64 0, i64* %work_flags) #8, !dbg !3317
  %20 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !3318
  %blink_timer = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %20, i32 0, i32 17, !dbg !3319
  %21 = load volatile i64, i64* @jiffies, align 8, !dbg !3320
  %add = add i64 %21, 1, !dbg !3321
  %call13 = call i32 @mod_timer(%struct.timer_list* %blink_timer, i64 %add) #8, !dbg !3322
  br label %return, !dbg !3323

return:                                           ; preds = %if.end12, %if.then10, %if.then7
  ret void, !dbg !3323
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !3324 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3325, metadata !DIExpression()), !dbg !3326
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3327, metadata !DIExpression()), !dbg !3328
  ret i1 true, !dbg !3329
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hlist_unhashed_lockless(%struct.hlist_node* %h) #0 !dbg !3330 {
entry:
  %h.addr = alloca %struct.hlist_node*, align 8
  %tmp = alloca %struct.hlist_node**, align 8
  store %struct.hlist_node* %h, %struct.hlist_node** %h.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %h.addr, metadata !3335, metadata !DIExpression()), !dbg !3336
  br label %do.body, !dbg !3337

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3339

do.end:                                           ; preds = %do.body
  %0 = load %struct.hlist_node*, %struct.hlist_node** %h.addr, align 8, !dbg !3337
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i32 0, i32 1, !dbg !3337
  %1 = load volatile %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8, !dbg !3337
  store %struct.hlist_node** %1, %struct.hlist_node*** %tmp, align 8, !dbg !3339
  %2 = load %struct.hlist_node**, %struct.hlist_node*** %tmp, align 8, !dbg !3337
  %tobool = icmp ne %struct.hlist_node** %2, null, !dbg !3341
  %lnot = xor i1 %tobool, true, !dbg !3341
  %lnot.ext = zext i1 %lnot to i32, !dbg !3341
  ret i32 %lnot.ext, !dbg !3342
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_work(%struct.workqueue_struct* %wq, %struct.work_struct* %work) #0 !dbg !3343 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !3348, metadata !DIExpression()), !dbg !3349
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !3350, metadata !DIExpression()), !dbg !3351
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !3352
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !3353
  %call = call zeroext i1 @queue_work_on(i32 1, %struct.workqueue_struct* %0, %struct.work_struct* %1) #8, !dbg !3354
  ret i1 %call, !dbg !3355
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_work_on(i32, %struct.workqueue_struct*, %struct.work_struct*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !3356 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3357, metadata !DIExpression()), !dbg !3361
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3370, metadata !DIExpression()), !dbg !3371
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3372, metadata !DIExpression()), !dbg !3373
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3374, metadata !DIExpression()), !dbg !3375
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3376, metadata !DIExpression()), !dbg !3380
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3382, metadata !DIExpression()), !dbg !3386
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3388, metadata !DIExpression()), !dbg !3392
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3397, metadata !DIExpression()), !dbg !3398
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3399, metadata !DIExpression()), !dbg !3400
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3401, metadata !DIExpression()), !dbg !3402
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3403, metadata !DIExpression()), !dbg !3404
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3405, metadata !DIExpression()), !dbg !3406
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3407, metadata !DIExpression()), !dbg !3408
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3409, metadata !DIExpression()), !dbg !3410
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3411, metadata !DIExpression()), !dbg !3412
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3413, metadata !DIExpression()), !dbg !3414
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3415, metadata !DIExpression()), !dbg !3416
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3417, metadata !DIExpression()), !dbg !3418
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !3419, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !3421, metadata !DIExpression()), !dbg !3424
  %0 = load i64, i64* %n.addr, align 8, !dbg !3424
  store i64 %0, i64* %__a, align 8, !dbg !3424
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !3425, metadata !DIExpression()), !dbg !3424
  %1 = load i64, i64* %size.addr, align 8, !dbg !3424
  store i64 %1, i64* %__b, align 8, !dbg !3424
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !3426, metadata !DIExpression()), !dbg !3424
  store i64* %bytes, i64** %__d, align 8, !dbg !3424
  %cmp = icmp eq i64* %__a, %__b, !dbg !3424
  %conv = zext i1 %cmp to i32, !dbg !3424
  %2 = load i64*, i64** %__d, align 8, !dbg !3424
  %cmp1 = icmp eq i64* %__a, %2, !dbg !3424
  %conv2 = zext i1 %cmp1 to i32, !dbg !3424
  %3 = load i64, i64* %__a, align 8, !dbg !3424
  %4 = load i64, i64* %__b, align 8, !dbg !3424
  %5 = load i64*, i64** %__d, align 8, !dbg !3424
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !3424
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3424
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !3424
  store i64 %8, i64* %5, align 8, !dbg !3424
  %frombool = zext i1 %7 to i8, !dbg !3424
  store i8 %frombool, i8* %tmp, align 1, !dbg !3424
  %9 = load i8, i8* %tmp, align 1, !dbg !3424
  %tobool = trunc i8 %9 to i1, !dbg !3424
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #8, !dbg !3428
  %lnot = xor i1 %call, true, !dbg !3428
  %lnot3 = xor i1 %lnot, true, !dbg !3428
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3428
  %conv4 = sext i32 %lnot.ext to i64, !dbg !3428
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !3428
  br i1 %tobool5, label %if.then, label %if.end, !dbg !3429

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !3430
  br label %return, !dbg !3430

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !3431
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !3432
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !3433

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !3434
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !3435
  br i1 %13, label %if.then6, label %if.end8, !dbg !3436

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !3437
  %15 = load i32, i32* %flags.addr, align 4, !dbg !3438
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !3439
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #10, !dbg !3440
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !3441

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !3442
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !3443
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3444

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !3445
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !3446
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !3447
  %call.i.i = call i32 @get_order(i64 %21) #12, !dbg !3448
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3406
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !3449
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3450
  %24 = load i32, i32* %order.i.i, align 4, !dbg !3451
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3452
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3453
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3454
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #11, !dbg !3455
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3455
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3455
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3455
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !3455
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3456
  br label %kmalloc.exit, !dbg !3456

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !3457
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3458
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !3458
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3460

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3461
  br label %kmalloc_index.exit.i, !dbg !3461

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3462
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !3464
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3465

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3466
  br label %kmalloc_index.exit.i, !dbg !3466

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3467
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !3469
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3470

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3471
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !3472
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3473

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3474
  br label %kmalloc_index.exit.i, !dbg !3474

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3475
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !3477
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3478

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3479
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !3480
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3481

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3482
  br label %kmalloc_index.exit.i, !dbg !3482

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3483
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !3485
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3486

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3487
  br label %kmalloc_index.exit.i, !dbg !3487

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3488
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !3490
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3491

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3492
  br label %kmalloc_index.exit.i, !dbg !3492

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3493
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !3495
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3496

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3497
  br label %kmalloc_index.exit.i, !dbg !3497

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3498
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !3500
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3501

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3502
  br label %kmalloc_index.exit.i, !dbg !3502

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3503
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !3505
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3506

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3507
  br label %kmalloc_index.exit.i, !dbg !3507

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3508
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !3510
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3511

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3512
  br label %kmalloc_index.exit.i, !dbg !3512

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3513
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !3515
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3516

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3517
  br label %kmalloc_index.exit.i, !dbg !3517

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3518
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !3520
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3521

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3522
  br label %kmalloc_index.exit.i, !dbg !3522

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3523
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !3525
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3526

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3527
  br label %kmalloc_index.exit.i, !dbg !3527

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3528
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !3530
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3531

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3532
  br label %kmalloc_index.exit.i, !dbg !3532

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3533
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !3535
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3536

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3537
  br label %kmalloc_index.exit.i, !dbg !3537

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3538
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !3540
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3541

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3542
  br label %kmalloc_index.exit.i, !dbg !3542

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3543
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !3545
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3546

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3547
  br label %kmalloc_index.exit.i, !dbg !3547

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3548
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !3550
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3551

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3552
  br label %kmalloc_index.exit.i, !dbg !3552

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3553
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !3555
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3556

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3557
  br label %kmalloc_index.exit.i, !dbg !3557

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3558
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !3560
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3561

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3562
  br label %kmalloc_index.exit.i, !dbg !3562

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3563
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !3565
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3566

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3567
  br label %kmalloc_index.exit.i, !dbg !3567

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3568
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !3570
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3571

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3572
  br label %kmalloc_index.exit.i, !dbg !3572

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3573
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !3575
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3576

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3577
  br label %kmalloc_index.exit.i, !dbg !3577

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3578
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !3580
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3581

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3582
  br label %kmalloc_index.exit.i, !dbg !3582

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3583
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !3585
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3586

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3587
  br label %kmalloc_index.exit.i, !dbg !3587

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3588
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !3590
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3591

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3592
  br label %kmalloc_index.exit.i, !dbg !3592

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3593
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !3595
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3596

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3597
  br label %kmalloc_index.exit.i, !dbg !3597

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3598
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !3600
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3601

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3602
  br label %kmalloc_index.exit.i, !dbg !3602

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !3603, !srcloc !3606
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #10, !dbg !3607, !srcloc !3610
  unreachable, !dbg !3611

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !3612
  store i32 %59, i32* %index.i, align 4, !dbg !3613
  %60 = load i32, i32* %index.i, align 4, !dbg !3614
  %tobool.i = icmp ne i32 %60, 0, !dbg !3614
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3616

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3617
  br label %kmalloc.exit, !dbg !3617

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !3618
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3619
  %and.i.i = and i32 %62, 17, !dbg !3619
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3619
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3619
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3619
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3619
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3621

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3622
  br label %kmalloc_type.exit.i, !dbg !3622

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3623
  %and2.i.i = and i32 %63, 1, !dbg !3624
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3623
  %64 = zext i1 %tobool3.i.i to i64, !dbg !3623
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3623
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3625
  br label %kmalloc_type.exit.i, !dbg !3625

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !3626
  %idxprom.i = zext i32 %65 to i64, !dbg !3627
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3627
  %66 = load i32, i32* %index.i, align 4, !dbg !3628
  %idxprom6.i = zext i32 %66 to i64, !dbg !3627
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3627
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3627
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !3629
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !3630
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3631
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3632
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #11, !dbg !3633
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3633
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3633
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3633
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !3633
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3375
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3634
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !3635
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3636
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3637
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #11, !dbg !3638
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3639
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !3640
  store i8* %76, i8** %retval.i, align 8, !dbg !3641
  br label %kmalloc.exit, !dbg !3641

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !3642
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !3643
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #11, !dbg !3644
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3644
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3644
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3644
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !3644
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3645
  br label %kmalloc.exit, !dbg !3645

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !3646
  store i8* %79, i8** %retval, align 8, !dbg !3647
  br label %return, !dbg !3647

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !3648
  %81 = load i32, i32* %flags.addr, align 4, !dbg !3649
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #8, !dbg !3650
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !3650
  %maskedptr = and i64 %ptrint, 7, !dbg !3650
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !3650
  call void @llvm.assume(i1 %maskcond), !dbg !3650
  store i8* %call9, i8** %retval, align 8, !dbg !3651
  br label %return, !dbg !3651

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !3652
  ret i8* %82, !dbg !3652
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !3653 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !3657, metadata !DIExpression()), !dbg !3658
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !3659
  %tobool = trunc i8 %0 to i1, !dbg !3659
  %lnot = xor i1 %tobool, true, !dbg !3659
  %lnot1 = xor i1 %lnot, true, !dbg !3659
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3659
  %conv = sext i32 %lnot.ext to i64, !dbg !3659
  %tobool2 = icmp ne i64 %conv, 0, !dbg !3659
  ret i1 %tobool2, !dbg !3660
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !3661 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3665, metadata !DIExpression()), !dbg !3669
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3671, metadata !DIExpression()), !dbg !3672
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3673, metadata !DIExpression()), !dbg !3674
  %0 = load i64, i64* %size.addr, align 8, !dbg !3675
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3677
  br i1 %1, label %if.then, label %if.end447, !dbg !3678

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3679
  %tobool = icmp ne i64 %2, 0, !dbg !3679
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3682

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3683
  br label %return, !dbg !3683

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3684
  %cmp = icmp ult i64 %3, 4096, !dbg !3686
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3687

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3688
  br label %return, !dbg !3688

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub = sub i64 %4, 1, !dbg !3689
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3689
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3689

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub4 = sub i64 %6, 1, !dbg !3689
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3689
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3689

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub6 = sub i64 %8, 1, !dbg !3689
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3689
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3689

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3689

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub9 = sub i64 %9, 1, !dbg !3689
  %and = and i64 %sub9, -9223372036854775808, !dbg !3689
  %tobool10 = icmp ne i64 %and, 0, !dbg !3689
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3689

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3689

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub13 = sub i64 %10, 1, !dbg !3689
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3689
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3689
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3689

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3689

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub18 = sub i64 %11, 1, !dbg !3689
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3689
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3689
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3689

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3689

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub23 = sub i64 %12, 1, !dbg !3689
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3689
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3689
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3689

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3689

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub28 = sub i64 %13, 1, !dbg !3689
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3689
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3689
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3689

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3689

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub33 = sub i64 %14, 1, !dbg !3689
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3689
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3689
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3689

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3689

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub38 = sub i64 %15, 1, !dbg !3689
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3689
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3689
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3689

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3689

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub43 = sub i64 %16, 1, !dbg !3689
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3689
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3689
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3689

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3689

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub48 = sub i64 %17, 1, !dbg !3689
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3689
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3689
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3689

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3689

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub53 = sub i64 %18, 1, !dbg !3689
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3689
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3689
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3689

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3689

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub58 = sub i64 %19, 1, !dbg !3689
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3689
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3689
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3689

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3689

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub63 = sub i64 %20, 1, !dbg !3689
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3689
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3689
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3689

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3689

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub68 = sub i64 %21, 1, !dbg !3689
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3689
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3689
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3689

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3689

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub73 = sub i64 %22, 1, !dbg !3689
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3689
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3689
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3689

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3689

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub78 = sub i64 %23, 1, !dbg !3689
  %and79 = and i64 %sub78, 562949953421312, !dbg !3689
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3689
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3689

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3689

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub83 = sub i64 %24, 1, !dbg !3689
  %and84 = and i64 %sub83, 281474976710656, !dbg !3689
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3689
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3689

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3689

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub88 = sub i64 %25, 1, !dbg !3689
  %and89 = and i64 %sub88, 140737488355328, !dbg !3689
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3689
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3689

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3689

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub93 = sub i64 %26, 1, !dbg !3689
  %and94 = and i64 %sub93, 70368744177664, !dbg !3689
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3689
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3689

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3689

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub98 = sub i64 %27, 1, !dbg !3689
  %and99 = and i64 %sub98, 35184372088832, !dbg !3689
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3689
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3689

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3689

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub103 = sub i64 %28, 1, !dbg !3689
  %and104 = and i64 %sub103, 17592186044416, !dbg !3689
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3689
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3689

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3689

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub108 = sub i64 %29, 1, !dbg !3689
  %and109 = and i64 %sub108, 8796093022208, !dbg !3689
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3689
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3689

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3689

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub113 = sub i64 %30, 1, !dbg !3689
  %and114 = and i64 %sub113, 4398046511104, !dbg !3689
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3689
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3689

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3689

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub118 = sub i64 %31, 1, !dbg !3689
  %and119 = and i64 %sub118, 2199023255552, !dbg !3689
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3689
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3689

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3689

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub123 = sub i64 %32, 1, !dbg !3689
  %and124 = and i64 %sub123, 1099511627776, !dbg !3689
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3689
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3689

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3689

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub128 = sub i64 %33, 1, !dbg !3689
  %and129 = and i64 %sub128, 549755813888, !dbg !3689
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3689
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3689

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3689

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub133 = sub i64 %34, 1, !dbg !3689
  %and134 = and i64 %sub133, 274877906944, !dbg !3689
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3689
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3689

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3689

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub138 = sub i64 %35, 1, !dbg !3689
  %and139 = and i64 %sub138, 137438953472, !dbg !3689
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3689
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3689

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3689

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub143 = sub i64 %36, 1, !dbg !3689
  %and144 = and i64 %sub143, 68719476736, !dbg !3689
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3689
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3689

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3689

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub148 = sub i64 %37, 1, !dbg !3689
  %and149 = and i64 %sub148, 34359738368, !dbg !3689
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3689
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3689

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3689

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub153 = sub i64 %38, 1, !dbg !3689
  %and154 = and i64 %sub153, 17179869184, !dbg !3689
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3689
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3689

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3689

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub158 = sub i64 %39, 1, !dbg !3689
  %and159 = and i64 %sub158, 8589934592, !dbg !3689
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3689
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3689

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3689

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub163 = sub i64 %40, 1, !dbg !3689
  %and164 = and i64 %sub163, 4294967296, !dbg !3689
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3689
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3689

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3689

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub168 = sub i64 %41, 1, !dbg !3689
  %and169 = and i64 %sub168, 2147483648, !dbg !3689
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3689
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3689

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3689

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub173 = sub i64 %42, 1, !dbg !3689
  %and174 = and i64 %sub173, 1073741824, !dbg !3689
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3689
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3689

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3689

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub178 = sub i64 %43, 1, !dbg !3689
  %and179 = and i64 %sub178, 536870912, !dbg !3689
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3689
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3689

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3689

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub183 = sub i64 %44, 1, !dbg !3689
  %and184 = and i64 %sub183, 268435456, !dbg !3689
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3689
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3689

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3689

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub188 = sub i64 %45, 1, !dbg !3689
  %and189 = and i64 %sub188, 134217728, !dbg !3689
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3689
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3689

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3689

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub193 = sub i64 %46, 1, !dbg !3689
  %and194 = and i64 %sub193, 67108864, !dbg !3689
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3689
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3689

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3689

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub198 = sub i64 %47, 1, !dbg !3689
  %and199 = and i64 %sub198, 33554432, !dbg !3689
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3689
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3689

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3689

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub203 = sub i64 %48, 1, !dbg !3689
  %and204 = and i64 %sub203, 16777216, !dbg !3689
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3689
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3689

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3689

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub208 = sub i64 %49, 1, !dbg !3689
  %and209 = and i64 %sub208, 8388608, !dbg !3689
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3689
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3689

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3689

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub213 = sub i64 %50, 1, !dbg !3689
  %and214 = and i64 %sub213, 4194304, !dbg !3689
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3689
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3689

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3689

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub218 = sub i64 %51, 1, !dbg !3689
  %and219 = and i64 %sub218, 2097152, !dbg !3689
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3689
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3689

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3689

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub223 = sub i64 %52, 1, !dbg !3689
  %and224 = and i64 %sub223, 1048576, !dbg !3689
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3689
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3689

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3689

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub228 = sub i64 %53, 1, !dbg !3689
  %and229 = and i64 %sub228, 524288, !dbg !3689
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3689
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3689

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3689

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub233 = sub i64 %54, 1, !dbg !3689
  %and234 = and i64 %sub233, 262144, !dbg !3689
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3689
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3689

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3689

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub238 = sub i64 %55, 1, !dbg !3689
  %and239 = and i64 %sub238, 131072, !dbg !3689
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3689
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3689

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3689

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub243 = sub i64 %56, 1, !dbg !3689
  %and244 = and i64 %sub243, 65536, !dbg !3689
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3689
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3689

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3689

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub248 = sub i64 %57, 1, !dbg !3689
  %and249 = and i64 %sub248, 32768, !dbg !3689
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3689
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3689

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3689

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub253 = sub i64 %58, 1, !dbg !3689
  %and254 = and i64 %sub253, 16384, !dbg !3689
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3689
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3689

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3689

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub258 = sub i64 %59, 1, !dbg !3689
  %and259 = and i64 %sub258, 8192, !dbg !3689
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3689
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3689

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3689

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub263 = sub i64 %60, 1, !dbg !3689
  %and264 = and i64 %sub263, 4096, !dbg !3689
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3689
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3689

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3689

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub268 = sub i64 %61, 1, !dbg !3689
  %and269 = and i64 %sub268, 2048, !dbg !3689
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3689
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3689

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3689

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub273 = sub i64 %62, 1, !dbg !3689
  %and274 = and i64 %sub273, 1024, !dbg !3689
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3689
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3689

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3689

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub278 = sub i64 %63, 1, !dbg !3689
  %and279 = and i64 %sub278, 512, !dbg !3689
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3689
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3689

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3689

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub283 = sub i64 %64, 1, !dbg !3689
  %and284 = and i64 %sub283, 256, !dbg !3689
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3689
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3689

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3689

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub288 = sub i64 %65, 1, !dbg !3689
  %and289 = and i64 %sub288, 128, !dbg !3689
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3689
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3689

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3689

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub293 = sub i64 %66, 1, !dbg !3689
  %and294 = and i64 %sub293, 64, !dbg !3689
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3689
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3689

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3689

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub298 = sub i64 %67, 1, !dbg !3689
  %and299 = and i64 %sub298, 32, !dbg !3689
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3689
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3689

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3689

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub303 = sub i64 %68, 1, !dbg !3689
  %and304 = and i64 %sub303, 16, !dbg !3689
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3689
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3689

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3689

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub308 = sub i64 %69, 1, !dbg !3689
  %and309 = and i64 %sub308, 8, !dbg !3689
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3689
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3689

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3689

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub313 = sub i64 %70, 1, !dbg !3689
  %and314 = and i64 %sub313, 4, !dbg !3689
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3689
  %71 = zext i1 %tobool315 to i64, !dbg !3689
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3689
  br label %cond.end, !dbg !3689

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3689
  br label %cond.end317, !dbg !3689

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3689
  br label %cond.end319, !dbg !3689

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3689
  br label %cond.end321, !dbg !3689

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3689
  br label %cond.end323, !dbg !3689

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3689
  br label %cond.end325, !dbg !3689

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3689
  br label %cond.end327, !dbg !3689

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3689
  br label %cond.end329, !dbg !3689

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3689
  br label %cond.end331, !dbg !3689

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3689
  br label %cond.end333, !dbg !3689

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3689
  br label %cond.end335, !dbg !3689

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3689
  br label %cond.end337, !dbg !3689

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3689
  br label %cond.end339, !dbg !3689

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3689
  br label %cond.end341, !dbg !3689

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3689
  br label %cond.end343, !dbg !3689

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3689
  br label %cond.end345, !dbg !3689

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3689
  br label %cond.end347, !dbg !3689

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3689
  br label %cond.end349, !dbg !3689

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3689
  br label %cond.end351, !dbg !3689

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3689
  br label %cond.end353, !dbg !3689

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3689
  br label %cond.end355, !dbg !3689

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3689
  br label %cond.end357, !dbg !3689

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3689
  br label %cond.end359, !dbg !3689

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3689
  br label %cond.end361, !dbg !3689

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3689
  br label %cond.end363, !dbg !3689

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3689
  br label %cond.end365, !dbg !3689

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3689
  br label %cond.end367, !dbg !3689

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3689
  br label %cond.end369, !dbg !3689

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3689
  br label %cond.end371, !dbg !3689

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3689
  br label %cond.end373, !dbg !3689

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3689
  br label %cond.end375, !dbg !3689

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3689
  br label %cond.end377, !dbg !3689

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3689
  br label %cond.end379, !dbg !3689

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3689
  br label %cond.end381, !dbg !3689

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3689
  br label %cond.end383, !dbg !3689

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3689
  br label %cond.end385, !dbg !3689

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3689
  br label %cond.end387, !dbg !3689

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3689
  br label %cond.end389, !dbg !3689

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3689
  br label %cond.end391, !dbg !3689

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3689
  br label %cond.end393, !dbg !3689

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3689
  br label %cond.end395, !dbg !3689

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3689
  br label %cond.end397, !dbg !3689

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3689
  br label %cond.end399, !dbg !3689

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3689
  br label %cond.end401, !dbg !3689

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3689
  br label %cond.end403, !dbg !3689

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3689
  br label %cond.end405, !dbg !3689

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3689
  br label %cond.end407, !dbg !3689

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3689
  br label %cond.end409, !dbg !3689

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3689
  br label %cond.end411, !dbg !3689

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3689
  br label %cond.end413, !dbg !3689

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3689
  br label %cond.end415, !dbg !3689

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3689
  br label %cond.end417, !dbg !3689

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3689
  br label %cond.end419, !dbg !3689

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3689
  br label %cond.end421, !dbg !3689

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3689
  br label %cond.end423, !dbg !3689

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3689
  br label %cond.end425, !dbg !3689

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3689
  br label %cond.end427, !dbg !3689

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3689
  br label %cond.end429, !dbg !3689

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3689
  br label %cond.end431, !dbg !3689

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3689
  br label %cond.end433, !dbg !3689

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3689
  br label %cond.end435, !dbg !3689

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3689
  br label %cond.end437, !dbg !3689

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3689
  br label %cond.end440, !dbg !3689

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3689

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3689
  br label %cond.end444, !dbg !3689

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3689
  %sub443 = sub i64 %72, 1, !dbg !3689
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !3689
  br label %cond.end444, !dbg !3689

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3689
  %sub446 = sub i32 %cond445, 12, !dbg !3690
  %add = add i32 %sub446, 1, !dbg !3691
  store i32 %add, i32* %retval, align 4, !dbg !3692
  br label %return, !dbg !3692

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3693
  %dec = add i64 %73, -1, !dbg !3693
  store i64 %dec, i64* %size.addr, align 8, !dbg !3693
  %74 = load i64, i64* %size.addr, align 8, !dbg !3694
  %shr = lshr i64 %74, 12, !dbg !3694
  store i64 %shr, i64* %size.addr, align 8, !dbg !3694
  %75 = load i64, i64* %size.addr, align 8, !dbg !3695
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3672
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3696
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3697
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !3696, !srcloc !3698
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3696
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3699
  %add.i = add i32 %79, 1, !dbg !3700
  store i32 %add.i, i32* %retval, align 4, !dbg !3701
  br label %return, !dbg !3701

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3702
  ret i32 %80, !dbg !3702
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !3703 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3665, metadata !DIExpression()), !dbg !3707
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3671, metadata !DIExpression()), !dbg !3709
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3710, metadata !DIExpression()), !dbg !3711
  %0 = load i64, i64* %n.addr, align 8, !dbg !3712
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3709
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3713
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3714
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !3713, !srcloc !3698
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3713
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3715
  %add.i = add i32 %4, 1, !dbg !3716
  %sub = sub i32 %add.i, 1, !dbg !3717
  ret i32 %sub, !dbg !3718
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3719 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3723, metadata !DIExpression()), !dbg !3724
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3725, metadata !DIExpression()), !dbg !3726
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3727, metadata !DIExpression()), !dbg !3728
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3729, metadata !DIExpression()), !dbg !3730
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3731
  ret i8* %0, !dbg !3732
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @fwnode_property_present(%struct.fwnode_handle*, i8*) #3

; Function Attrs: noredzone
declare dso_local i32 @fwnode_property_read_string(%struct.fwnode_handle*, i8*, i8**) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fwnode_property_read_u32(%struct.fwnode_handle* %fwnode, i8* %propname, i32* %val) #0 !dbg !3733 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %propname.addr = alloca i8*, align 8
  %val.addr = alloca i32*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3736, metadata !DIExpression()), !dbg !3737
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3738, metadata !DIExpression()), !dbg !3739
  store i32* %val, i32** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %val.addr, metadata !3740, metadata !DIExpression()), !dbg !3741
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3742
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3743
  %2 = load i32*, i32** %val.addr, align 8, !dbg !3744
  %call = call i32 @fwnode_property_read_u32_array(%struct.fwnode_handle* %0, i8* %1, i32* %2, i64 1) #8, !dbg !3745
  ret i32 %call, !dbg !3746
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(i8* %ptr) #0 !dbg !3747 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3751, metadata !DIExpression()), !dbg !3752
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3753
  %tobool = icmp ne i8* %0, null, !dbg !3753
  %lnot = xor i1 %tobool, true, !dbg !3753
  %lnot1 = xor i1 %lnot, true, !dbg !3753
  %lnot2 = xor i1 %lnot1, true, !dbg !3753
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3753
  %conv = sext i32 %lnot.ext to i64, !dbg !3753
  %tobool3 = icmp ne i64 %conv, 0, !dbg !3753
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !3754

lor.rhs:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !3755
  %2 = ptrtoint i8* %1 to i64, !dbg !3755
  %3 = inttoptr i64 %2 to i8*, !dbg !3755
  %4 = ptrtoint i8* %3 to i64, !dbg !3755
  %cmp = icmp uge i64 %4, -4095, !dbg !3755
  %lnot5 = xor i1 %cmp, true, !dbg !3755
  %lnot7 = xor i1 %lnot5, true, !dbg !3755
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !3755
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !3755
  %tobool10 = icmp ne i64 %conv9, 0, !dbg !3754
  br label %lor.end, !dbg !3754

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool10, %lor.rhs ]
  ret i1 %5, !dbg !3756
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
attributes #11 = { noredzone nounwind }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2148, !2149, !2150, !2151}
!llvm.ident = !{!2152}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "leds_list_lock", scope: !2, file: !3, line: 22, type: !376, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !102, globals: !2139, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/leds/led-core.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18, !24, !30, !36, !43, !51, !57, !90, !95}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "led_brightness", file: !6, line: 29, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/leds.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "LED_OFF", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "LED_ON", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "LED_HALF", value: 127, isUnsigned: true)
!12 = !DIEnumerator(name: "LED_FULL", value: 255, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !14, line: 65, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !19, line: 16, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !25, line: 26, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !31, line: 44, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35}
!33 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!34 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!35 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !37, line: 343, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!38 = !{!39, !40, !41, !42}
!39 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!40 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!42 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !44, line: 524, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!45 = !{!46, !47, !48, !49, !50}
!46 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!47 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!48 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!49 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!50 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !44, line: 502, baseType: !7, size: 32, elements: !52)
!52 = !{!53, !54, !55, !56}
!53 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !58, line: 30, baseType: !59, size: 64, elements: !60)
!58 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!59 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89}
!61 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!62 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!63 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!64 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!65 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!66 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!67 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!68 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!69 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!70 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!71 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!72 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!73 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!74 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!75 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!76 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!77 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!78 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!79 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!80 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!81 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!82 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!83 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!84 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!85 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!86 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!87 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!88 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!89 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !91, line: 10, baseType: !7, size: 32, elements: !92)
!91 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!92 = !{!93, !94}
!93 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!94 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !96, line: 305, baseType: !7, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!97 = !{!98, !99, !100, !101}
!98 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!99 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!100 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!101 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!102 = !{!103, !104, !106, !107, !2077, !2079, !204, !59, !2133, !2135, !2103, !2136}
!103 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !105, line: 148, baseType: !7)
!105 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !109, line: 51, size: 1344, elements: !110)
!109 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!110 = !{!111, !115, !121, !122, !2061, !2070, !2071, !2072, !2073, !2074, !2075, !2076}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !108, file: !109, line: 52, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!114 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !108, file: !109, line: 53, baseType: !116, size: 32, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !109, line: 28, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !118, line: 21, baseType: !119)
!118 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !120, line: 27, baseType: !7)
!120 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!121 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !108, file: !109, line: 54, baseType: !112, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !108, file: !109, line: 55, baseType: !123, size: 192, offset: 192)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !124, line: 17, size: 192, elements: !125)
!124 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!125 = !{!126, !128, !2060}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !123, file: !124, line: 18, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !123, file: !124, line: 19, baseType: !129, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !124, line: 110, size: 1152, elements: !132)
!132 = !{!133, !137, !141, !149, !2002, !2006, !2010, !2015, !2019, !2020, !2024, !2028, !2032, !2043, !2044, !2045, !2046, !2056}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !131, file: !124, line: 111, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!127, !127}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !131, file: !124, line: 112, baseType: !138, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !127}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !131, file: !124, line: 113, baseType: !142, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!145, !147}
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !105, line: 30, baseType: !146)
!146 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !131, file: !124, line: 114, baseType: !150, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!153, !147, !155}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !37, line: 461, size: 5568, elements: !158)
!158 = !{!159, !1639, !1641, !1644, !1645, !1696, !1793, !1794, !1795, !1796, !1797, !1806, !1911, !1924, !1927, !1928, !1932, !1934, !1935, !1936, !1940, !1946, !1947, !1950, !1951, !1952, !1955, !1956, !1957, !1958, !1990, !1991, !1992, !1995, !1998, !1999, !2000, !2001}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !157, file: !37, line: 462, baseType: !160, size: 512)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !161, line: 64, size: 512, elements: !162)
!161 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!162 = !{!163, !164, !170, !172, !233, !1476, !1629, !1634, !1635, !1636, !1637, !1638}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !160, file: !161, line: 65, baseType: !112, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !160, file: !161, line: 66, baseType: !165, size: 128, offset: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !105, line: 178, size: 128, elements: !166)
!166 = !{!167, !169}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !165, file: !105, line: 179, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !165, file: !105, line: 179, baseType: !168, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !160, file: !161, line: 67, baseType: !171, size: 64, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !160, file: !161, line: 68, baseType: !173, size: 64, offset: 256)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !161, line: 192, size: 704, elements: !175)
!175 = !{!176, !177, !193, !194}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !174, file: !161, line: 193, baseType: !165, size: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !174, file: !161, line: 194, baseType: !178, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !179, line: 83, baseType: !180)
!179 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !179, line: 71, elements: !181)
!181 = !{!182}
!182 = !DIDerivedType(tag: DW_TAG_member, scope: !180, file: !179, line: 72, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !180, file: !179, line: 72, elements: !184)
!184 = !{!185}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !183, file: !179, line: 73, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !179, line: 20, elements: !187)
!187 = !{!188}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !186, file: !179, line: 21, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !190, line: 25, baseType: !191)
!190 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !190, line: 25, elements: !192)
!192 = !{}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !174, file: !161, line: 195, baseType: !160, size: 512, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !174, file: !161, line: 196, baseType: !195, size: 64, offset: 640)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !161, line: 156, size: 192, elements: !198)
!198 = !{!199, !205, !210}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !197, file: !161, line: 157, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!204, !173, !171}
!204 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !197, file: !161, line: 158, baseType: !206, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!112, !173, !171}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !197, file: !161, line: 159, baseType: !211, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!204, !173, !171, !215}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !161, line: 148, size: 20736, elements: !217)
!217 = !{!218, !223, !227, !228, !232}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !216, file: !161, line: 149, baseType: !219, size: 192)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 192, elements: !221)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!221 = !{!222}
!222 = !DISubrange(count: 3)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !216, file: !161, line: 150, baseType: !224, size: 4096, offset: 192)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 4096, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !216, file: !161, line: 151, baseType: !204, size: 32, offset: 4288)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !216, file: !161, line: 152, baseType: !229, size: 16384, offset: 4320)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 16384, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 2048)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !216, file: !161, line: 153, baseType: !204, size: 32, offset: 20704)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !160, file: !161, line: 69, baseType: !234, size: 64, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !161, line: 138, size: 448, elements: !236)
!236 = !{!237, !241, !269, !271, !1424, !1455, !1459}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !235, file: !161, line: 139, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !171}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !235, file: !161, line: 140, baseType: !242, size: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !245, line: 230, size: 128, elements: !246)
!245 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!246 = !{!247, !262}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !244, file: !245, line: 231, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!251, !171, !255, !220}
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !105, line: 60, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !253, line: 73, baseType: !254)
!253 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !253, line: 15, baseType: !59)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !245, line: 30, size: 128, elements: !257)
!257 = !{!258, !259}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !256, file: !245, line: 31, baseType: !112, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !256, file: !245, line: 32, baseType: !260, size: 16, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !105, line: 19, baseType: !261)
!261 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !244, file: !245, line: 232, baseType: !263, size: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!251, !171, !255, !112, !266}
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 55, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !253, line: 72, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !253, line: 16, baseType: !103)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !235, file: !161, line: 141, baseType: !270, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !235, file: !161, line: 142, baseType: !272, size: 64, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !245, line: 84, size: 320, elements: !276)
!276 = !{!277, !278, !282, !1421, !1422}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !275, file: !245, line: 85, baseType: !112, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !275, file: !245, line: 86, baseType: !279, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!260, !171, !255, !204}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !275, file: !245, line: 88, baseType: !283, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!260, !171, !286, !204}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !245, line: 168, size: 448, elements: !288)
!288 = !{!289, !290, !291, !292, !302, !303}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !287, file: !245, line: 169, baseType: !256, size: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !287, file: !245, line: 170, baseType: !266, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !287, file: !245, line: 171, baseType: !106, size: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !287, file: !245, line: 172, baseType: !293, size: 64, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!251, !296, !171, !286, !220, !299, !266}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !298, line: 526, flags: DIFlagFwdDecl)
!298 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !105, line: 46, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !253, line: 88, baseType: !301)
!301 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !287, file: !245, line: 174, baseType: !293, size: 64, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !287, file: !245, line: 176, baseType: !304, size: 64, offset: 384)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!204, !296, !171, !286, !307}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !309, line: 305, size: 1472, elements: !310)
!309 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!310 = !{!311, !312, !313, !314, !315, !323, !324, !1395, !1401, !1402, !1407, !1408, !1411, !1415, !1416, !1417, !1418, !1419}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !308, file: !309, line: 308, baseType: !103, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !308, file: !309, line: 309, baseType: !103, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !308, file: !309, line: 313, baseType: !307, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !308, file: !309, line: 313, baseType: !307, size: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !308, file: !309, line: 315, baseType: !316, size: 192, align: 64, offset: 256)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !317, line: 24, size: 192, align: 64, elements: !318)
!317 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!318 = !{!319, !320, !322}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !316, file: !317, line: 25, baseType: !103, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !316, file: !317, line: 26, baseType: !321, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !316, file: !317, line: 27, baseType: !321, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !308, file: !309, line: 323, baseType: !103, size: 64, offset: 448)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !308, file: !309, line: 327, baseType: !325, size: 64, offset: 512)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !309, line: 388, size: 7296, elements: !327)
!327 = !{!328, !1391}
!328 = !DIDerivedType(tag: DW_TAG_member, scope: !326, file: !309, line: 389, baseType: !329, size: 7296)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !326, file: !309, line: 389, size: 7296, elements: !330)
!330 = !{!331, !332, !336, !340, !344, !345, !346, !347, !348, !356, !361, !362, !363, !364, !373, !374, !375, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !410, !418, !421, !469, !470, !1362, !1363, !1366, !1370, !1371, !1374, !1375, !1376, !1379, !1390}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !329, file: !309, line: 390, baseType: !307, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !329, file: !309, line: 391, baseType: !333, size: 64, offset: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !317, line: 31, size: 64, elements: !334)
!334 = !{!335}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !333, file: !317, line: 32, baseType: !321, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !329, file: !309, line: 392, baseType: !337, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !118, line: 23, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !120, line: 31, baseType: !339)
!339 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !329, file: !309, line: 394, baseType: !341, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!103, !296, !103, !103, !103, !103}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !329, file: !309, line: 398, baseType: !103, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !329, file: !309, line: 399, baseType: !103, size: 64, offset: 320)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !329, file: !309, line: 405, baseType: !103, size: 64, offset: 384)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !329, file: !309, line: 406, baseType: !103, size: 64, offset: 448)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !329, file: !309, line: 407, baseType: !349, size: 64, offset: 512)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !298, line: 286, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !298, line: 286, size: 64, elements: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !351, file: !298, line: 286, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !355, line: 18, baseType: !103)
!355 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!356 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !329, file: !309, line: 416, baseType: !357, size: 32, offset: 576)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !105, line: 168, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !105, line: 166, size: 32, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !358, file: !105, line: 167, baseType: !204, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !329, file: !309, line: 428, baseType: !357, size: 32, offset: 608)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !329, file: !309, line: 437, baseType: !357, size: 32, offset: 640)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !329, file: !309, line: 447, baseType: !357, size: 32, offset: 672)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !329, file: !309, line: 450, baseType: !365, size: 64, offset: 704)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !366, line: 13, baseType: !367)
!366 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !105, line: 175, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !105, line: 173, size: 64, elements: !369)
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !368, file: !105, line: 174, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !118, line: 22, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !120, line: 30, baseType: !301)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !329, file: !309, line: 452, baseType: !204, size: 32, offset: 768)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !329, file: !309, line: 454, baseType: !178, offset: 800)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !329, file: !309, line: 457, baseType: !376, size: 256, offset: 832)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !377, line: 35, size: 256, elements: !378)
!377 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!378 = !{!379, !380, !381, !383}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !376, file: !377, line: 36, baseType: !365, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !376, file: !377, line: 42, baseType: !365, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !376, file: !377, line: 46, baseType: !382, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !179, line: 29, baseType: !186)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !376, file: !377, line: 47, baseType: !165, size: 128, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !329, file: !309, line: 459, baseType: !165, size: 128, offset: 1088)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !329, file: !309, line: 466, baseType: !103, size: 64, offset: 1216)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !329, file: !309, line: 467, baseType: !103, size: 64, offset: 1280)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !329, file: !309, line: 469, baseType: !103, size: 64, offset: 1344)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !329, file: !309, line: 470, baseType: !103, size: 64, offset: 1408)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !329, file: !309, line: 471, baseType: !367, size: 64, offset: 1472)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !329, file: !309, line: 472, baseType: !103, size: 64, offset: 1536)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !329, file: !309, line: 473, baseType: !103, size: 64, offset: 1600)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !329, file: !309, line: 474, baseType: !103, size: 64, offset: 1664)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !329, file: !309, line: 475, baseType: !103, size: 64, offset: 1728)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !329, file: !309, line: 477, baseType: !178, offset: 1792)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !329, file: !309, line: 478, baseType: !103, size: 64, offset: 1792)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !329, file: !309, line: 478, baseType: !103, size: 64, offset: 1856)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !329, file: !309, line: 478, baseType: !103, size: 64, offset: 1920)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !329, file: !309, line: 478, baseType: !103, size: 64, offset: 1984)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !329, file: !309, line: 479, baseType: !103, size: 64, offset: 2048)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !329, file: !309, line: 479, baseType: !103, size: 64, offset: 2112)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !329, file: !309, line: 479, baseType: !103, size: 64, offset: 2176)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !329, file: !309, line: 480, baseType: !103, size: 64, offset: 2240)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !329, file: !309, line: 480, baseType: !103, size: 64, offset: 2304)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !329, file: !309, line: 480, baseType: !103, size: 64, offset: 2368)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !329, file: !309, line: 480, baseType: !103, size: 64, offset: 2432)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !329, file: !309, line: 482, baseType: !407, size: 2816, offset: 2496)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 2816, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 44)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !329, file: !309, line: 488, baseType: !411, size: 256, offset: 5312)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !412, line: 60, size: 256, elements: !413)
!412 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!413 = !{!414}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !411, file: !412, line: 61, baseType: !415, size: 256)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 256, elements: !416)
!416 = !{!417}
!417 = !DISubrange(count: 4)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !329, file: !309, line: 490, baseType: !419, size: 64, offset: 5568)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !309, line: 490, flags: DIFlagFwdDecl)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !329, file: !309, line: 493, baseType: !422, size: 896, offset: 5632)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !423, line: 53, baseType: !424)
!423 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !423, line: 13, size: 896, elements: !425)
!425 = !{!426, !427, !428, !429, !432, !433, !440, !441, !461, !462, !465}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !424, file: !423, line: 18, baseType: !337, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !424, file: !423, line: 28, baseType: !367, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !424, file: !423, line: 31, baseType: !376, size: 256, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !424, file: !423, line: 32, baseType: !430, size: 64, offset: 384)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !423, line: 32, flags: DIFlagFwdDecl)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !424, file: !423, line: 37, baseType: !261, size: 16, offset: 448)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !424, file: !423, line: 40, baseType: !434, size: 192, offset: 512)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !435, line: 53, size: 192, elements: !436)
!435 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!436 = !{!437, !438, !439}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !434, file: !435, line: 54, baseType: !365, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !434, file: !435, line: 55, baseType: !178, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !434, file: !435, line: 59, baseType: !165, size: 128, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !424, file: !423, line: 41, baseType: !106, size: 64, offset: 704)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !424, file: !423, line: 42, baseType: !442, size: 64, offset: 768)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !445, line: 13, size: 896, elements: !446)
!445 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!446 = !{!447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !444, file: !445, line: 14, baseType: !106, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !444, file: !445, line: 15, baseType: !103, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !444, file: !445, line: 17, baseType: !103, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !444, file: !445, line: 17, baseType: !103, size: 64, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !444, file: !445, line: 19, baseType: !59, size: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !444, file: !445, line: 21, baseType: !59, size: 64, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !444, file: !445, line: 22, baseType: !59, size: 64, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !444, file: !445, line: 23, baseType: !59, size: 64, offset: 448)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !444, file: !445, line: 24, baseType: !59, size: 64, offset: 512)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !444, file: !445, line: 25, baseType: !59, size: 64, offset: 576)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !444, file: !445, line: 26, baseType: !59, size: 64, offset: 640)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !444, file: !445, line: 27, baseType: !59, size: 64, offset: 704)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !444, file: !445, line: 28, baseType: !59, size: 64, offset: 768)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !444, file: !445, line: 29, baseType: !59, size: 64, offset: 832)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !424, file: !423, line: 44, baseType: !357, size: 32, offset: 832)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !424, file: !423, line: 50, baseType: !463, size: 16, offset: 864)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !118, line: 19, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !120, line: 24, baseType: !261)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !424, file: !423, line: 51, baseType: !466, size: 16, offset: 880)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !118, line: 18, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !120, line: 23, baseType: !468)
!468 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !329, file: !309, line: 495, baseType: !103, size: 64, offset: 6528)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !329, file: !309, line: 497, baseType: !471, size: 64, offset: 6592)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !309, line: 381, size: 384, elements: !473)
!473 = !{!474, !475, !1361}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !472, file: !309, line: 382, baseType: !357, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !472, file: !309, line: 383, baseType: !476, size: 128, offset: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !309, line: 376, size: 128, elements: !477)
!477 = !{!478, !1359}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !476, file: !309, line: 377, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !481, line: 640, size: 48640, elements: !482)
!481 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!482 = !{!483, !489, !491, !492, !498, !499, !500, !501, !502, !503, !504, !505, !509, !527, !538, !633, !634, !635, !646, !647, !649, !650, !651, !652, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !731, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !787, !789, !790, !791, !803, !805, !806, !807, !808, !809, !815, !816, !817, !818, !819, !820, !821, !833, !838, !842, !843, !844, !847, !851, !854, !857, !860, !863, !866, !869, !872, !878, !879, !880, !886, !887, !888, !889, !890, !899, !900, !901, !902, !903, !908, !909, !910, !913, !914, !917, !920, !923, !926, !929, !932, !933, !1013, !1016, !1019, !1020, !1023, !1024, !1025, !1031, !1032, !1033, !1046, !1047, !1048, !1058, !1063, !1066, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !480, file: !481, line: 646, baseType: !484, size: 128)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !485, line: 56, size: 128, elements: !486)
!485 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !484, file: !485, line: 57, baseType: !103, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !484, file: !485, line: 58, baseType: !117, size: 32, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !480, file: !481, line: 649, baseType: !490, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !59)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !480, file: !481, line: 657, baseType: !106, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !480, file: !481, line: 658, baseType: !493, size: 32, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !494, line: 113, baseType: !495)
!494 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !494, line: 111, size: 32, elements: !496)
!496 = !{!497}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !495, file: !494, line: 112, baseType: !357, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !480, file: !481, line: 660, baseType: !7, size: 32, offset: 288)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !480, file: !481, line: 661, baseType: !7, size: 32, offset: 320)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !480, file: !481, line: 684, baseType: !204, size: 32, offset: 352)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !480, file: !481, line: 686, baseType: !204, size: 32, offset: 384)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !480, file: !481, line: 687, baseType: !204, size: 32, offset: 416)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !480, file: !481, line: 688, baseType: !204, size: 32, offset: 448)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !480, file: !481, line: 689, baseType: !7, size: 32, offset: 480)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !480, file: !481, line: 691, baseType: !506, size: 64, offset: 512)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !508)
!508 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !481, line: 691, flags: DIFlagFwdDecl)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !480, file: !481, line: 692, baseType: !510, size: 832, offset: 576)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !481, line: 451, size: 832, elements: !511)
!511 = !{!512, !517, !518, !519, !520, !521, !522, !523, !524, !525}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !510, file: !481, line: 453, baseType: !513, size: 128)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !481, line: 325, size: 128, elements: !514)
!514 = !{!515, !516}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !513, file: !481, line: 326, baseType: !103, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !513, file: !481, line: 327, baseType: !117, size: 32, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !510, file: !481, line: 454, baseType: !316, size: 192, align: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !510, file: !481, line: 455, baseType: !165, size: 128, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !510, file: !481, line: 456, baseType: !7, size: 32, offset: 448)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !510, file: !481, line: 458, baseType: !337, size: 64, offset: 512)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !510, file: !481, line: 459, baseType: !337, size: 64, offset: 576)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !510, file: !481, line: 460, baseType: !337, size: 64, offset: 640)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !510, file: !481, line: 461, baseType: !337, size: 64, offset: 704)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !510, file: !481, line: 463, baseType: !337, size: 64, offset: 768)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !510, file: !481, line: 465, baseType: !526, offset: 832)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !481, line: 415, elements: !192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !480, file: !481, line: 693, baseType: !528, size: 384, offset: 1408)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !481, line: 489, size: 384, elements: !529)
!529 = !{!530, !531, !532, !533, !534, !535, !536}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !528, file: !481, line: 490, baseType: !165, size: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !528, file: !481, line: 491, baseType: !103, size: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !528, file: !481, line: 492, baseType: !103, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !528, file: !481, line: 493, baseType: !7, size: 32, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !528, file: !481, line: 494, baseType: !261, size: 16, offset: 288)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !528, file: !481, line: 495, baseType: !261, size: 16, offset: 304)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !528, file: !481, line: 497, baseType: !537, size: 64, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !480, file: !481, line: 697, baseType: !539, size: 1792, offset: 1792)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !481, line: 507, size: 1792, elements: !540)
!540 = !{!541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !630, !631}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !539, file: !481, line: 508, baseType: !316, size: 192, align: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !539, file: !481, line: 515, baseType: !337, size: 64, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !539, file: !481, line: 516, baseType: !337, size: 64, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !539, file: !481, line: 517, baseType: !337, size: 64, offset: 320)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !539, file: !481, line: 518, baseType: !337, size: 64, offset: 384)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !539, file: !481, line: 519, baseType: !337, size: 64, offset: 448)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !539, file: !481, line: 526, baseType: !371, size: 64, offset: 512)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !539, file: !481, line: 527, baseType: !337, size: 64, offset: 576)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !539, file: !481, line: 528, baseType: !7, size: 32, offset: 640)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !539, file: !481, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !539, file: !481, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !539, file: !481, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !539, file: !481, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !539, file: !481, line: 563, baseType: !555, size: 512, offset: 704)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !14, line: 118, size: 512, elements: !556)
!556 = !{!557, !565, !566, !571, !623, !627, !628, !629}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !555, file: !14, line: 119, baseType: !558, size: 256)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !559, line: 9, size: 256, elements: !560)
!559 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!560 = !{!561, !562}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !558, file: !559, line: 10, baseType: !316, size: 192, align: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !558, file: !559, line: 11, baseType: !563, size: 64, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !564, line: 29, baseType: !371)
!564 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !555, file: !14, line: 120, baseType: !563, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !555, file: !14, line: 121, baseType: !567, size: 64, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!13, !570}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !555, file: !14, line: 122, baseType: !572, size: 64, offset: 384)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !14, line: 159, size: 512, align: 512, elements: !574)
!574 = !{!575, !595, !596, !599, !609, !610, !618, !622}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !573, file: !14, line: 160, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !14, line: 214, size: 4608, align: 512, elements: !578)
!578 = !{!579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !577, file: !14, line: 215, baseType: !382)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !577, file: !14, line: 216, baseType: !7, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !577, file: !14, line: 217, baseType: !7, size: 32, offset: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !577, file: !14, line: 218, baseType: !7, size: 32, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !577, file: !14, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !577, file: !14, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !577, file: !14, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !577, file: !14, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !577, file: !14, line: 233, baseType: !563, size: 64, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !577, file: !14, line: 234, baseType: !570, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !577, file: !14, line: 235, baseType: !563, size: 64, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !577, file: !14, line: 236, baseType: !570, size: 64, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !577, file: !14, line: 237, baseType: !592, size: 4096, offset: 512)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, size: 4096, elements: !593)
!593 = !{!594}
!594 = !DISubrange(count: 8)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !573, file: !14, line: 161, baseType: !7, size: 32, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !573, file: !14, line: 162, baseType: !597, size: 32, offset: 96)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !105, line: 27, baseType: !598)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !253, line: 96, baseType: !204)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !573, file: !14, line: 163, baseType: !600, size: 32, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !601, line: 276, baseType: !602)
!601 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !601, line: 276, size: 32, elements: !603)
!603 = !{!604}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !602, file: !601, line: 276, baseType: !605, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !601, line: 70, baseType: !606)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !601, line: 65, size: 32, elements: !607)
!607 = !{!608}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !606, file: !601, line: 66, baseType: !7, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !573, file: !14, line: 164, baseType: !570, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !573, file: !14, line: 165, baseType: !611, size: 128, offset: 256)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !559, line: 14, size: 128, elements: !612)
!612 = !{!613}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !611, file: !559, line: 15, baseType: !614, size: 128)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !317, line: 125, size: 128, elements: !615)
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !614, file: !317, line: 126, baseType: !333, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !614, file: !317, line: 127, baseType: !321, size: 64, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !573, file: !14, line: 166, baseType: !619, size: 64, offset: 384)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!563}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !573, file: !14, line: 167, baseType: !563, size: 64, offset: 448)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !555, file: !14, line: 123, baseType: !624, size: 8, offset: 448)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !118, line: 17, baseType: !625)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !120, line: 21, baseType: !626)
!626 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !555, file: !14, line: 124, baseType: !624, size: 8, offset: 456)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !555, file: !14, line: 125, baseType: !624, size: 8, offset: 464)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !555, file: !14, line: 126, baseType: !624, size: 8, offset: 472)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !539, file: !481, line: 572, baseType: !555, size: 512, offset: 1216)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !539, file: !481, line: 580, baseType: !632, size: 64, offset: 1728)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !480, file: !481, line: 721, baseType: !7, size: 32, offset: 3584)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !480, file: !481, line: 722, baseType: !204, size: 32, offset: 3616)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !480, file: !481, line: 723, baseType: !636, size: 64, offset: 3648)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !638)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !639, line: 17, baseType: !640)
!639 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !639, line: 17, size: 64, elements: !641)
!641 = !{!642}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !640, file: !639, line: 17, baseType: !643, size: 64)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 64, elements: !644)
!644 = !{!645}
!645 = !DISubrange(count: 1)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !480, file: !481, line: 724, baseType: !638, size: 64, offset: 3712)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !480, file: !481, line: 749, baseType: !648, offset: 3776)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !481, line: 290, elements: !192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !480, file: !481, line: 751, baseType: !165, size: 128, offset: 3776)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !480, file: !481, line: 757, baseType: !325, size: 64, offset: 3904)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !480, file: !481, line: 758, baseType: !325, size: 64, offset: 3968)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !480, file: !481, line: 761, baseType: !653, size: 320, offset: 4032)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !412, line: 34, size: 320, elements: !654)
!654 = !{!655, !656}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !653, file: !412, line: 35, baseType: !337, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !653, file: !412, line: 36, baseType: !657, size: 256, offset: 64)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 256, elements: !416)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !480, file: !481, line: 766, baseType: !204, size: 32, offset: 4352)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !480, file: !481, line: 767, baseType: !204, size: 32, offset: 4384)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !480, file: !481, line: 768, baseType: !204, size: 32, offset: 4416)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !480, file: !481, line: 770, baseType: !204, size: 32, offset: 4448)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !480, file: !481, line: 772, baseType: !103, size: 64, offset: 4480)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !480, file: !481, line: 775, baseType: !7, size: 32, offset: 4544)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !480, file: !481, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !480, file: !481, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !480, file: !481, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !480, file: !481, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !480, file: !481, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !480, file: !481, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !480, file: !481, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !480, file: !481, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !480, file: !481, line: 831, baseType: !103, size: 64, offset: 4672)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !480, file: !481, line: 833, baseType: !674, size: 384, offset: 4736)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !19, line: 25, size: 384, elements: !675)
!675 = !{!676, !681}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !674, file: !19, line: 26, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!59, !680}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, scope: !674, file: !19, line: 27, baseType: !682, size: 320, offset: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !674, file: !19, line: 27, size: 320, elements: !683)
!683 = !{!684, !694, !721}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !682, file: !19, line: 36, baseType: !685, size: 320)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !682, file: !19, line: 29, size: 320, elements: !686)
!686 = !{!687, !689, !690, !691, !692, !693}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !685, file: !19, line: 30, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !685, file: !19, line: 31, baseType: !117, size: 32, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !685, file: !19, line: 32, baseType: !117, size: 32, offset: 96)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !685, file: !19, line: 33, baseType: !117, size: 32, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !685, file: !19, line: 34, baseType: !337, size: 64, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !685, file: !19, line: 35, baseType: !688, size: 64, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !682, file: !19, line: 46, baseType: !695, size: 192)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !682, file: !19, line: 38, size: 192, elements: !696)
!696 = !{!697, !698, !699, !720}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !695, file: !19, line: 39, baseType: !597, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !695, file: !19, line: 40, baseType: !18, size: 32, offset: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !19, line: 41, baseType: !700, size: 64, offset: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !695, file: !19, line: 41, size: 64, elements: !701)
!701 = !{!702, !710}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !700, file: !19, line: 42, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !705, line: 7, size: 128, elements: !706)
!705 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!706 = !{!707, !709}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !704, file: !705, line: 8, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !253, line: 93, baseType: !301)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !704, file: !705, line: 9, baseType: !301, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !700, file: !19, line: 43, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !713, line: 7, size: 64, elements: !714)
!713 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!714 = !{!715, !719}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !712, file: !713, line: 8, baseType: !716, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !713, line: 5, baseType: !717)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !118, line: 20, baseType: !718)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !120, line: 26, baseType: !204)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !712, file: !713, line: 9, baseType: !717, size: 32, offset: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !695, file: !19, line: 45, baseType: !337, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !682, file: !19, line: 54, baseType: !722, size: 256)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !682, file: !19, line: 48, size: 256, elements: !723)
!723 = !{!724, !727, !728, !729, !730}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !722, file: !19, line: 49, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !19, line: 14, flags: DIFlagFwdDecl)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !722, file: !19, line: 50, baseType: !204, size: 32, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !722, file: !19, line: 51, baseType: !204, size: 32, offset: 96)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !722, file: !19, line: 52, baseType: !103, size: 64, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !722, file: !19, line: 53, baseType: !103, size: 64, offset: 192)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !480, file: !481, line: 835, baseType: !732, size: 32, offset: 5120)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !105, line: 22, baseType: !733)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !253, line: 28, baseType: !204)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !480, file: !481, line: 836, baseType: !732, size: 32, offset: 5152)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !480, file: !481, line: 840, baseType: !103, size: 64, offset: 5184)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !480, file: !481, line: 849, baseType: !479, size: 64, offset: 5248)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !480, file: !481, line: 852, baseType: !479, size: 64, offset: 5312)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !480, file: !481, line: 857, baseType: !165, size: 128, offset: 5376)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !480, file: !481, line: 858, baseType: !165, size: 128, offset: 5504)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !480, file: !481, line: 859, baseType: !479, size: 64, offset: 5632)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !480, file: !481, line: 867, baseType: !165, size: 128, offset: 5696)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !480, file: !481, line: 868, baseType: !165, size: 128, offset: 5824)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !480, file: !481, line: 871, baseType: !744, size: 64, offset: 5952)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !746, line: 59, size: 768, elements: !747)
!746 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!747 = !{!748, !749, !750, !751, !762, !763, !770, !779}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !745, file: !746, line: 61, baseType: !493, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !745, file: !746, line: 62, baseType: !7, size: 32, offset: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !745, file: !746, line: 63, baseType: !178, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !745, file: !746, line: 65, baseType: !752, size: 256, offset: 64)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !753, size: 256, elements: !416)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !105, line: 182, size: 64, elements: !754)
!754 = !{!755}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !753, file: !105, line: 183, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !105, line: 186, size: 128, elements: !758)
!758 = !{!759, !760}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !757, file: !105, line: 187, baseType: !756, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !757, file: !105, line: 187, baseType: !761, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !745, file: !746, line: 66, baseType: !753, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !745, file: !746, line: 68, baseType: !764, size: 128, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !765, line: 40, baseType: !766)
!765 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !765, line: 36, size: 128, elements: !767)
!767 = !{!768, !769}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !766, file: !765, line: 37, baseType: !178)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !766, file: !765, line: 38, baseType: !165, size: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !745, file: !746, line: 69, baseType: !771, size: 128, align: 64, offset: 512)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !105, line: 216, size: 128, align: 64, elements: !772)
!772 = !{!773, !775}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !771, file: !105, line: 217, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !771, file: !105, line: 218, baseType: !776, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{null, !774}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !745, file: !746, line: 70, baseType: !780, size: 128, offset: 640)
!780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !781, size: 128, elements: !644)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !746, line: 54, size: 128, elements: !782)
!782 = !{!783, !784}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !781, file: !746, line: 55, baseType: !204, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !781, file: !746, line: 56, baseType: !785, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !746, line: 56, flags: DIFlagFwdDecl)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !480, file: !481, line: 872, baseType: !788, size: 512, offset: 6016)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !757, size: 512, elements: !416)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !480, file: !481, line: 873, baseType: !165, size: 128, offset: 6528)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !480, file: !481, line: 874, baseType: !165, size: 128, offset: 6656)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !480, file: !481, line: 876, baseType: !792, size: 64, offset: 6784)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !794, line: 26, size: 192, elements: !795)
!794 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !793, file: !794, line: 27, baseType: !7, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !793, file: !794, line: 28, baseType: !798, size: 128, offset: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !799, line: 43, size: 128, elements: !800)
!799 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!800 = !{!801, !802}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !798, file: !799, line: 44, baseType: !382)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !798, file: !799, line: 45, baseType: !165, size: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !480, file: !481, line: 879, baseType: !804, size: 64, offset: 6848)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !480, file: !481, line: 882, baseType: !804, size: 64, offset: 6912)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !480, file: !481, line: 884, baseType: !337, size: 64, offset: 6976)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !480, file: !481, line: 885, baseType: !337, size: 64, offset: 7040)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !480, file: !481, line: 890, baseType: !337, size: 64, offset: 7104)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !480, file: !481, line: 891, baseType: !810, size: 128, offset: 7168)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !481, line: 242, size: 128, elements: !811)
!811 = !{!812, !813, !814}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !810, file: !481, line: 244, baseType: !337, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !810, file: !481, line: 245, baseType: !337, size: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !810, file: !481, line: 246, baseType: !382, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !480, file: !481, line: 900, baseType: !103, size: 64, offset: 7296)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !480, file: !481, line: 901, baseType: !103, size: 64, offset: 7360)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !480, file: !481, line: 904, baseType: !337, size: 64, offset: 7424)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !480, file: !481, line: 907, baseType: !337, size: 64, offset: 7488)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !480, file: !481, line: 910, baseType: !103, size: 64, offset: 7552)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !480, file: !481, line: 911, baseType: !103, size: 64, offset: 7616)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !480, file: !481, line: 914, baseType: !822, size: 640, offset: 7680)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !823, line: 123, size: 640, elements: !824)
!823 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!824 = !{!825, !831, !832}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !822, file: !823, line: 124, baseType: !826, size: 576)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !827, size: 576, elements: !221)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !823, line: 108, size: 192, elements: !828)
!828 = !{!829, !830}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !827, file: !823, line: 109, baseType: !337, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !827, file: !823, line: 110, baseType: !611, size: 128, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !822, file: !823, line: 125, baseType: !7, size: 32, offset: 576)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !822, file: !823, line: 126, baseType: !7, size: 32, offset: 608)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !480, file: !481, line: 917, baseType: !834, size: 192, offset: 8320)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !823, line: 134, size: 192, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !834, file: !823, line: 135, baseType: !771, size: 128, align: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !834, file: !823, line: 136, baseType: !7, size: 32, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !480, file: !481, line: 923, baseType: !839, size: 64, offset: 8512)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !841)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !481, line: 923, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !480, file: !481, line: 926, baseType: !839, size: 64, offset: 8576)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !480, file: !481, line: 929, baseType: !839, size: 64, offset: 8640)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !480, file: !481, line: 933, baseType: !845, size: 64, offset: 8704)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !481, line: 933, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !480, file: !481, line: 943, baseType: !848, size: 128, offset: 8768)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 128, elements: !849)
!849 = !{!850}
!850 = !DISubrange(count: 16)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !480, file: !481, line: 945, baseType: !852, size: 64, offset: 8896)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !481, line: 49, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !480, file: !481, line: 956, baseType: !855, size: 64, offset: 8960)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !481, line: 45, flags: DIFlagFwdDecl)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !480, file: !481, line: 959, baseType: !858, size: 64, offset: 9024)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !481, line: 959, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !480, file: !481, line: 962, baseType: !861, size: 64, offset: 9088)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !481, line: 66, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !480, file: !481, line: 966, baseType: !864, size: 64, offset: 9152)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !481, line: 50, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !480, file: !481, line: 969, baseType: !867, size: 64, offset: 9216)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !823, line: 223, flags: DIFlagFwdDecl)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !480, file: !481, line: 970, baseType: !870, size: 64, offset: 9280)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !481, line: 62, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !480, file: !481, line: 971, baseType: !873, size: 64, offset: 9344)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !874, line: 25, baseType: !875)
!874 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !874, line: 23, size: 64, elements: !876)
!876 = !{!877}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !875, file: !874, line: 24, baseType: !643, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !480, file: !481, line: 972, baseType: !873, size: 64, offset: 9408)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !480, file: !481, line: 974, baseType: !873, size: 64, offset: 9472)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !480, file: !481, line: 975, baseType: !881, size: 192, offset: 9536)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !882, line: 30, size: 192, elements: !883)
!882 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!883 = !{!884, !885}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !881, file: !882, line: 31, baseType: !165, size: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !881, file: !882, line: 32, baseType: !873, size: 64, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !480, file: !481, line: 976, baseType: !103, size: 64, offset: 9728)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !480, file: !481, line: 977, baseType: !266, size: 64, offset: 9792)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !480, file: !481, line: 978, baseType: !7, size: 32, offset: 9856)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !480, file: !481, line: 980, baseType: !774, size: 64, offset: 9920)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !480, file: !481, line: 989, baseType: !891, size: 128, offset: 9984)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !892, line: 35, size: 128, elements: !893)
!892 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!893 = !{!894, !895, !896}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !891, file: !892, line: 36, baseType: !204, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !891, file: !892, line: 37, baseType: !357, size: 32, offset: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !891, file: !892, line: 38, baseType: !897, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !892, line: 23, flags: DIFlagFwdDecl)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !480, file: !481, line: 992, baseType: !337, size: 64, offset: 10112)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !480, file: !481, line: 993, baseType: !337, size: 64, offset: 10176)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !480, file: !481, line: 996, baseType: !178, offset: 10240)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !480, file: !481, line: 999, baseType: !382, offset: 10240)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !480, file: !481, line: 1001, baseType: !904, size: 64, offset: 10240)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !481, line: 636, size: 64, elements: !905)
!905 = !{!906}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !904, file: !481, line: 637, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !480, file: !481, line: 1005, baseType: !614, size: 128, offset: 10304)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !480, file: !481, line: 1007, baseType: !479, size: 64, offset: 10432)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !480, file: !481, line: 1009, baseType: !911, size: 64, offset: 10496)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !481, line: 1009, flags: DIFlagFwdDecl)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !480, file: !481, line: 1043, baseType: !106, size: 64, offset: 10560)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !480, file: !481, line: 1046, baseType: !915, size: 64, offset: 10624)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !481, line: 41, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !480, file: !481, line: 1050, baseType: !918, size: 64, offset: 10688)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !481, line: 42, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !480, file: !481, line: 1054, baseType: !921, size: 64, offset: 10752)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !481, line: 55, flags: DIFlagFwdDecl)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !480, file: !481, line: 1056, baseType: !924, size: 64, offset: 10816)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !481, line: 40, flags: DIFlagFwdDecl)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !480, file: !481, line: 1058, baseType: !927, size: 64, offset: 10880)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !481, line: 47, flags: DIFlagFwdDecl)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !480, file: !481, line: 1061, baseType: !930, size: 64, offset: 10944)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !481, line: 43, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !480, file: !481, line: 1064, baseType: !103, size: 64, offset: 11008)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !480, file: !481, line: 1065, baseType: !934, size: 64, offset: 11072)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !882, line: 14, baseType: !936)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !882, line: 12, size: 384, elements: !937)
!937 = !{!938}
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !936, file: !882, line: 13, baseType: !939, size: 384)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !882, line: 13, size: 384, elements: !940)
!940 = !{!941, !942, !943, !944}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !939, file: !882, line: 13, baseType: !204, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !939, file: !882, line: 13, baseType: !204, size: 32, offset: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !939, file: !882, line: 13, baseType: !204, size: 32, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !939, file: !882, line: 13, baseType: !945, size: 256, offset: 128)
!945 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !946, line: 32, size: 256, elements: !947)
!946 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!947 = !{!948, !954, !967, !973, !982, !1002, !1007}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !945, file: !946, line: 37, baseType: !949, size: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !945, file: !946, line: 34, size: 64, elements: !950)
!950 = !{!951, !952}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !949, file: !946, line: 35, baseType: !733, size: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !949, file: !946, line: 36, baseType: !953, size: 32, offset: 32)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !253, line: 49, baseType: !7)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !945, file: !946, line: 45, baseType: !955, size: 192)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !945, file: !946, line: 40, size: 192, elements: !956)
!956 = !{!957, !959, !960, !966}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !955, file: !946, line: 41, baseType: !958, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !253, line: 95, baseType: !204)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !955, file: !946, line: 42, baseType: !204, size: 32, offset: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !955, file: !946, line: 43, baseType: !961, size: 64, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !946, line: 11, baseType: !962)
!962 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !946, line: 8, size: 64, elements: !963)
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !962, file: !946, line: 9, baseType: !204, size: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !962, file: !946, line: 10, baseType: !106, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !955, file: !946, line: 44, baseType: !204, size: 32, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !945, file: !946, line: 52, baseType: !968, size: 128)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !945, file: !946, line: 48, size: 128, elements: !969)
!969 = !{!970, !971, !972}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !968, file: !946, line: 49, baseType: !733, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !968, file: !946, line: 50, baseType: !953, size: 32, offset: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !968, file: !946, line: 51, baseType: !961, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !945, file: !946, line: 61, baseType: !974, size: 256)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !945, file: !946, line: 55, size: 256, elements: !975)
!975 = !{!976, !977, !978, !979, !981}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !974, file: !946, line: 56, baseType: !733, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !974, file: !946, line: 57, baseType: !953, size: 32, offset: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !974, file: !946, line: 58, baseType: !204, size: 32, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !974, file: !946, line: 59, baseType: !980, size: 64, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !253, line: 94, baseType: !254)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !974, file: !946, line: 60, baseType: !980, size: 64, offset: 192)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !945, file: !946, line: 95, baseType: !983, size: 256)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !945, file: !946, line: 64, size: 256, elements: !984)
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !983, file: !946, line: 65, baseType: !106, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, scope: !983, file: !946, line: 77, baseType: !987, size: 192, offset: 64)
!987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !983, file: !946, line: 77, size: 192, elements: !988)
!988 = !{!989, !990, !997}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !987, file: !946, line: 82, baseType: !468, size: 16)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !987, file: !946, line: 88, baseType: !991, size: 192)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !987, file: !946, line: 84, size: 192, elements: !992)
!992 = !{!993, !995, !996}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !991, file: !946, line: 85, baseType: !994, size: 64)
!994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 64, elements: !593)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !991, file: !946, line: 86, baseType: !106, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !991, file: !946, line: 87, baseType: !106, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !987, file: !946, line: 93, baseType: !998, size: 96)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !987, file: !946, line: 90, size: 96, elements: !999)
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !998, file: !946, line: 91, baseType: !994, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !998, file: !946, line: 92, baseType: !119, size: 32, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !945, file: !946, line: 101, baseType: !1003, size: 128)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !945, file: !946, line: 98, size: 128, elements: !1004)
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1003, file: !946, line: 99, baseType: !59, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1003, file: !946, line: 100, baseType: !204, size: 32, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !945, file: !946, line: 108, baseType: !1008, size: 128)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !945, file: !946, line: 104, size: 128, elements: !1009)
!1009 = !{!1010, !1011, !1012}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1008, file: !946, line: 105, baseType: !106, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1008, file: !946, line: 106, baseType: !204, size: 32, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1008, file: !946, line: 107, baseType: !7, size: 32, offset: 96)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !480, file: !481, line: 1067, baseType: !1014, offset: 11136)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1015, line: 12, elements: !192)
!1015 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !480, file: !481, line: 1099, baseType: !1017, size: 64, offset: 11136)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !481, line: 56, flags: DIFlagFwdDecl)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !480, file: !481, line: 1103, baseType: !165, size: 128, offset: 11200)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !480, file: !481, line: 1104, baseType: !1021, size: 64, offset: 11328)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !481, line: 46, flags: DIFlagFwdDecl)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !480, file: !481, line: 1105, baseType: !434, size: 192, offset: 11392)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !480, file: !481, line: 1106, baseType: !7, size: 32, offset: 11584)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !480, file: !481, line: 1109, baseType: !1026, size: 128, offset: 11648)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1027, size: 128, elements: !1029)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !481, line: 51, flags: DIFlagFwdDecl)
!1029 = !{!1030}
!1030 = !DISubrange(count: 2)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !480, file: !481, line: 1110, baseType: !434, size: 192, offset: 11776)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !480, file: !481, line: 1111, baseType: !165, size: 128, offset: 11968)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !480, file: !481, line: 1173, baseType: !1034, size: 64, offset: 12096)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1036, line: 62, size: 256, align: 256, elements: !1037)
!1036 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1037 = !{!1038, !1039, !1040, !1045}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1035, file: !1036, line: 75, baseType: !119, size: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1035, file: !1036, line: 90, baseType: !119, size: 32, offset: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1035, file: !1036, line: 124, baseType: !1041, size: 64, offset: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1035, file: !1036, line: 109, size: 64, elements: !1042)
!1042 = !{!1043, !1044}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1041, file: !1036, line: 110, baseType: !338, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1041, file: !1036, line: 112, baseType: !338, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1035, file: !1036, line: 144, baseType: !119, size: 32, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !480, file: !481, line: 1174, baseType: !117, size: 32, offset: 12160)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !480, file: !481, line: 1179, baseType: !103, size: 64, offset: 12224)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !480, file: !481, line: 1182, baseType: !1049, size: 128, offset: 12288)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !412, line: 76, size: 128, elements: !1050)
!1050 = !{!1051, !1056, !1057}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1049, file: !412, line: 85, baseType: !1052, size: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1053, line: 7, size: 64, elements: !1054)
!1053 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1054 = !{!1055}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1052, file: !1053, line: 12, baseType: !640, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1049, file: !412, line: 88, baseType: !145, size: 8, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1049, file: !412, line: 95, baseType: !145, size: 8, offset: 72)
!1058 = !DIDerivedType(tag: DW_TAG_member, scope: !480, file: !481, line: 1184, baseType: !1059, size: 128, offset: 12416)
!1059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !480, file: !481, line: 1184, size: 128, elements: !1060)
!1060 = !{!1061, !1062}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1059, file: !481, line: 1185, baseType: !493, size: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1059, file: !481, line: 1186, baseType: !771, size: 128, align: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !480, file: !481, line: 1190, baseType: !1064, size: 64, offset: 12544)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !481, line: 53, flags: DIFlagFwdDecl)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !480, file: !481, line: 1192, baseType: !1067, size: 128, offset: 12608)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !412, line: 64, size: 128, elements: !1068)
!1068 = !{!1069, !1162, !1163}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1067, file: !412, line: 65, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !309, line: 68, size: 512, align: 128, elements: !1072)
!1072 = !{!1073, !1074, !1154, !1161}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1071, file: !309, line: 69, baseType: !103, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, scope: !1071, file: !309, line: 77, baseType: !1075, size: 320, offset: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1071, file: !309, line: 77, size: 320, elements: !1076)
!1076 = !{!1077, !1086, !1091, !1119, !1127, !1133, !1146, !1153}
!1077 = !DIDerivedType(tag: DW_TAG_member, scope: !1075, file: !309, line: 78, baseType: !1078, size: 320)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1075, file: !309, line: 78, size: 320, elements: !1079)
!1079 = !{!1080, !1081, !1084, !1085}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1078, file: !309, line: 84, baseType: !165, size: 128)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1078, file: !309, line: 86, baseType: !1082, size: 64, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !309, line: 26, flags: DIFlagFwdDecl)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1078, file: !309, line: 87, baseType: !103, size: 64, offset: 192)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1078, file: !309, line: 94, baseType: !103, size: 64, offset: 256)
!1086 = !DIDerivedType(tag: DW_TAG_member, scope: !1075, file: !309, line: 96, baseType: !1087, size: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1075, file: !309, line: 96, size: 64, elements: !1088)
!1088 = !{!1089}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1087, file: !309, line: 101, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !105, line: 143, baseType: !337)
!1091 = !DIDerivedType(tag: DW_TAG_member, scope: !1075, file: !309, line: 103, baseType: !1092, size: 320)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1075, file: !309, line: 103, size: 320, elements: !1093)
!1093 = !{!1094, !1104, !1107, !1108}
!1094 = !DIDerivedType(tag: DW_TAG_member, scope: !1092, file: !309, line: 104, baseType: !1095, size: 128)
!1095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1092, file: !309, line: 104, size: 128, elements: !1096)
!1096 = !{!1097, !1098}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1095, file: !309, line: 105, baseType: !165, size: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, scope: !1095, file: !309, line: 106, baseType: !1099, size: 128)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1095, file: !309, line: 106, size: 128, elements: !1100)
!1100 = !{!1101, !1102, !1103}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1099, file: !309, line: 107, baseType: !1070, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1099, file: !309, line: 109, baseType: !204, size: 32, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1099, file: !309, line: 110, baseType: !204, size: 32, offset: 96)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1092, file: !309, line: 117, baseType: !1105, size: 64, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !309, line: 117, flags: DIFlagFwdDecl)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1092, file: !309, line: 119, baseType: !106, size: 64, offset: 192)
!1108 = !DIDerivedType(tag: DW_TAG_member, scope: !1092, file: !309, line: 120, baseType: !1109, size: 64, offset: 256)
!1109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1092, file: !309, line: 120, size: 64, elements: !1110)
!1110 = !{!1111, !1112, !1113}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1109, file: !309, line: 121, baseType: !106, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1109, file: !309, line: 122, baseType: !103, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, scope: !1109, file: !309, line: 123, baseType: !1114, size: 32)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1109, file: !309, line: 123, size: 32, elements: !1115)
!1115 = !{!1116, !1117, !1118}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1114, file: !309, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1114, file: !309, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1114, file: !309, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1119 = !DIDerivedType(tag: DW_TAG_member, scope: !1075, file: !309, line: 130, baseType: !1120, size: 192)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1075, file: !309, line: 130, size: 192, elements: !1121)
!1121 = !{!1122, !1123, !1124, !1125, !1126}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1120, file: !309, line: 131, baseType: !103, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1120, file: !309, line: 134, baseType: !626, size: 8, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1120, file: !309, line: 135, baseType: !626, size: 8, offset: 72)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1120, file: !309, line: 136, baseType: !357, size: 32, offset: 96)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1120, file: !309, line: 137, baseType: !7, size: 32, offset: 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, scope: !1075, file: !309, line: 139, baseType: !1128, size: 256)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1075, file: !309, line: 139, size: 256, elements: !1129)
!1129 = !{!1130, !1131, !1132}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1128, file: !309, line: 140, baseType: !103, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1128, file: !309, line: 141, baseType: !357, size: 32, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1128, file: !309, line: 143, baseType: !165, size: 128, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, scope: !1075, file: !309, line: 145, baseType: !1134, size: 256)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1075, file: !309, line: 145, size: 256, elements: !1135)
!1135 = !{!1136, !1137, !1139, !1140, !1145}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1134, file: !309, line: 146, baseType: !103, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1134, file: !309, line: 147, baseType: !1138, size: 64, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !298, line: 509, baseType: !1070)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1134, file: !309, line: 148, baseType: !103, size: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, scope: !1134, file: !309, line: 149, baseType: !1141, size: 64, offset: 192)
!1141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1134, file: !309, line: 149, size: 64, elements: !1142)
!1142 = !{!1143, !1144}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1141, file: !309, line: 150, baseType: !325, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1141, file: !309, line: 151, baseType: !357, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1134, file: !309, line: 156, baseType: !178, offset: 256)
!1146 = !DIDerivedType(tag: DW_TAG_member, scope: !1075, file: !309, line: 159, baseType: !1147, size: 128)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1075, file: !309, line: 159, size: 128, elements: !1148)
!1148 = !{!1149, !1152}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1147, file: !309, line: 161, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !309, line: 161, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1147, file: !309, line: 162, baseType: !106, size: 64, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1075, file: !309, line: 176, baseType: !771, size: 128, align: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, scope: !1071, file: !309, line: 179, baseType: !1155, size: 32, offset: 384)
!1155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1071, file: !309, line: 179, size: 32, elements: !1156)
!1156 = !{!1157, !1158, !1159, !1160}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1155, file: !309, line: 184, baseType: !357, size: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1155, file: !309, line: 192, baseType: !7, size: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1155, file: !309, line: 194, baseType: !7, size: 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1155, file: !309, line: 195, baseType: !204, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1071, file: !309, line: 199, baseType: !357, size: 32, offset: 416)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1067, file: !412, line: 67, baseType: !119, size: 32, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1067, file: !412, line: 68, baseType: !119, size: 32, offset: 96)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !480, file: !481, line: 1206, baseType: !204, size: 32, offset: 12736)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !480, file: !481, line: 1207, baseType: !204, size: 32, offset: 12768)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !480, file: !481, line: 1209, baseType: !103, size: 64, offset: 12800)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !480, file: !481, line: 1219, baseType: !337, size: 64, offset: 12864)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !480, file: !481, line: 1220, baseType: !337, size: 64, offset: 12928)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !480, file: !481, line: 1317, baseType: !204, size: 32, offset: 12992)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !480, file: !481, line: 1319, baseType: !479, size: 64, offset: 13056)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !480, file: !481, line: 1322, baseType: !1172, size: 64, offset: 13120)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !481, line: 1322, flags: DIFlagFwdDecl)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !480, file: !481, line: 1326, baseType: !493, size: 32, offset: 13184)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !480, file: !481, line: 1342, baseType: !106, size: 64, offset: 13248)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !480, file: !481, line: 1343, baseType: !338, size: 64, offset: 13312)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !480, file: !481, line: 1344, baseType: !337, size: 64, offset: 13376)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !480, file: !481, line: 1345, baseType: !338, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !480, file: !481, line: 1346, baseType: !338, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !480, file: !481, line: 1347, baseType: !338, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !480, file: !481, line: 1348, baseType: !771, size: 128, align: 64, offset: 13504)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !480, file: !481, line: 1358, baseType: !1183, size: 34816, offset: 13824)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1184, line: 485, size: 34816, elements: !1185)
!1184 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1185 = !{!1186, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1215, !1216, !1217, !1218, !1219, !1220, !1223, !1224, !1225}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1183, file: !1184, line: 487, baseType: !1187, size: 192)
!1187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1188, size: 192, elements: !221)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1189, line: 16, size: 64, elements: !1190)
!1189 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1190 = !{!1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1188, file: !1189, line: 17, baseType: !463, size: 16)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1188, file: !1189, line: 18, baseType: !463, size: 16, offset: 16)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1188, file: !1189, line: 19, baseType: !463, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1188, file: !1189, line: 19, baseType: !463, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1188, file: !1189, line: 19, baseType: !463, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1188, file: !1189, line: 19, baseType: !463, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1188, file: !1189, line: 19, baseType: !463, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1188, file: !1189, line: 20, baseType: !463, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1188, file: !1189, line: 20, baseType: !463, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1188, file: !1189, line: 20, baseType: !463, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1188, file: !1189, line: 20, baseType: !463, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1188, file: !1189, line: 20, baseType: !463, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1188, file: !1189, line: 20, baseType: !463, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1183, file: !1184, line: 491, baseType: !103, size: 64, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1183, file: !1184, line: 495, baseType: !261, size: 16, offset: 256)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1183, file: !1184, line: 496, baseType: !261, size: 16, offset: 272)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1183, file: !1184, line: 497, baseType: !261, size: 16, offset: 288)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1183, file: !1184, line: 498, baseType: !261, size: 16, offset: 304)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1183, file: !1184, line: 502, baseType: !103, size: 64, offset: 320)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1183, file: !1184, line: 503, baseType: !103, size: 64, offset: 384)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1183, file: !1184, line: 514, baseType: !1212, size: 256, offset: 448)
!1212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1213, size: 256, elements: !416)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1184, line: 483, flags: DIFlagFwdDecl)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1183, file: !1184, line: 516, baseType: !103, size: 64, offset: 704)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1183, file: !1184, line: 518, baseType: !103, size: 64, offset: 768)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1183, file: !1184, line: 520, baseType: !103, size: 64, offset: 832)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1183, file: !1184, line: 521, baseType: !103, size: 64, offset: 896)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1183, file: !1184, line: 522, baseType: !103, size: 64, offset: 960)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1183, file: !1184, line: 528, baseType: !1221, size: 64, offset: 1024)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1184, line: 10, flags: DIFlagFwdDecl)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1183, file: !1184, line: 535, baseType: !103, size: 64, offset: 1088)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1183, file: !1184, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1183, file: !1184, line: 540, baseType: !1226, size: 33280, offset: 1536)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1227, line: 317, size: 33280, elements: !1228)
!1227 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1228 = !{!1229, !1230, !1231}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1226, file: !1227, line: 330, baseType: !7, size: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1226, file: !1227, line: 337, baseType: !103, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1226, file: !1227, line: 348, baseType: !1232, size: 32768, offset: 512)
!1232 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1227, line: 304, size: 32768, elements: !1233)
!1233 = !{!1234, !1249, !1288, !1338, !1355}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1232, file: !1227, line: 305, baseType: !1235, size: 896)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1227, line: 12, size: 896, elements: !1236)
!1236 = !{!1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1248}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1235, file: !1227, line: 13, baseType: !117, size: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1235, file: !1227, line: 14, baseType: !117, size: 32, offset: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1235, file: !1227, line: 15, baseType: !117, size: 32, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1235, file: !1227, line: 16, baseType: !117, size: 32, offset: 96)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1235, file: !1227, line: 17, baseType: !117, size: 32, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1235, file: !1227, line: 18, baseType: !117, size: 32, offset: 160)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1235, file: !1227, line: 19, baseType: !117, size: 32, offset: 192)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1235, file: !1227, line: 22, baseType: !1245, size: 640, offset: 224)
!1245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 640, elements: !1246)
!1246 = !{!1247}
!1247 = !DISubrange(count: 20)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1235, file: !1227, line: 25, baseType: !117, size: 32, offset: 864)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1232, file: !1227, line: 306, baseType: !1250, size: 4096, align: 128)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1227, line: 34, size: 4096, align: 128, elements: !1251)
!1251 = !{!1252, !1253, !1254, !1255, !1256, !1271, !1272, !1273, !1277, !1279, !1283}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1250, file: !1227, line: 35, baseType: !463, size: 16)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1250, file: !1227, line: 36, baseType: !463, size: 16, offset: 16)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1250, file: !1227, line: 37, baseType: !463, size: 16, offset: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1250, file: !1227, line: 38, baseType: !463, size: 16, offset: 48)
!1256 = !DIDerivedType(tag: DW_TAG_member, scope: !1250, file: !1227, line: 39, baseType: !1257, size: 128, offset: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1250, file: !1227, line: 39, size: 128, elements: !1258)
!1258 = !{!1259, !1264}
!1259 = !DIDerivedType(tag: DW_TAG_member, scope: !1257, file: !1227, line: 40, baseType: !1260, size: 128)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1257, file: !1227, line: 40, size: 128, elements: !1261)
!1261 = !{!1262, !1263}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1260, file: !1227, line: 41, baseType: !337, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1260, file: !1227, line: 42, baseType: !337, size: 64, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, scope: !1257, file: !1227, line: 44, baseType: !1265, size: 128)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1257, file: !1227, line: 44, size: 128, elements: !1266)
!1266 = !{!1267, !1268, !1269, !1270}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1265, file: !1227, line: 45, baseType: !117, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1265, file: !1227, line: 46, baseType: !117, size: 32, offset: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1265, file: !1227, line: 47, baseType: !117, size: 32, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1265, file: !1227, line: 48, baseType: !117, size: 32, offset: 96)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1250, file: !1227, line: 51, baseType: !117, size: 32, offset: 192)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1250, file: !1227, line: 52, baseType: !117, size: 32, offset: 224)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1250, file: !1227, line: 55, baseType: !1274, size: 1024, offset: 256)
!1274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 1024, elements: !1275)
!1275 = !{!1276}
!1276 = !DISubrange(count: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1250, file: !1227, line: 58, baseType: !1278, size: 2048, offset: 1280)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 2048, elements: !225)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1250, file: !1227, line: 60, baseType: !1280, size: 384, offset: 3328)
!1280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 384, elements: !1281)
!1281 = !{!1282}
!1282 = !DISubrange(count: 12)
!1283 = !DIDerivedType(tag: DW_TAG_member, scope: !1250, file: !1227, line: 62, baseType: !1284, size: 384, offset: 3712)
!1284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1250, file: !1227, line: 62, size: 384, elements: !1285)
!1285 = !{!1286, !1287}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1284, file: !1227, line: 63, baseType: !1280, size: 384)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1284, file: !1227, line: 64, baseType: !1280, size: 384)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1232, file: !1227, line: 307, baseType: !1289, size: 1088)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1227, line: 79, size: 1088, elements: !1290)
!1290 = !{!1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1337}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1289, file: !1227, line: 80, baseType: !117, size: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1289, file: !1227, line: 81, baseType: !117, size: 32, offset: 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1289, file: !1227, line: 82, baseType: !117, size: 32, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1289, file: !1227, line: 83, baseType: !117, size: 32, offset: 96)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1289, file: !1227, line: 84, baseType: !117, size: 32, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1289, file: !1227, line: 85, baseType: !117, size: 32, offset: 160)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1289, file: !1227, line: 86, baseType: !117, size: 32, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1289, file: !1227, line: 88, baseType: !1245, size: 640, offset: 224)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1289, file: !1227, line: 89, baseType: !624, size: 8, offset: 864)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1289, file: !1227, line: 90, baseType: !624, size: 8, offset: 872)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1289, file: !1227, line: 91, baseType: !624, size: 8, offset: 880)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1289, file: !1227, line: 92, baseType: !624, size: 8, offset: 888)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1289, file: !1227, line: 93, baseType: !624, size: 8, offset: 896)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1289, file: !1227, line: 94, baseType: !624, size: 8, offset: 904)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1289, file: !1227, line: 95, baseType: !1306, size: 64, offset: 960)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1308, line: 11, size: 128, elements: !1309)
!1308 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1309 = !{!1310, !1311}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1307, file: !1308, line: 12, baseType: !59, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1307, file: !1308, line: 13, baseType: !1312, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1314, line: 56, size: 1344, elements: !1315)
!1314 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1315 = !{!1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1313, file: !1314, line: 61, baseType: !103, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1313, file: !1314, line: 62, baseType: !103, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1313, file: !1314, line: 63, baseType: !103, size: 64, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1313, file: !1314, line: 64, baseType: !103, size: 64, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1313, file: !1314, line: 65, baseType: !103, size: 64, offset: 256)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1313, file: !1314, line: 66, baseType: !103, size: 64, offset: 320)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1313, file: !1314, line: 68, baseType: !103, size: 64, offset: 384)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1313, file: !1314, line: 69, baseType: !103, size: 64, offset: 448)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1313, file: !1314, line: 70, baseType: !103, size: 64, offset: 512)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1313, file: !1314, line: 71, baseType: !103, size: 64, offset: 576)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1313, file: !1314, line: 72, baseType: !103, size: 64, offset: 640)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1313, file: !1314, line: 73, baseType: !103, size: 64, offset: 704)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1313, file: !1314, line: 74, baseType: !103, size: 64, offset: 768)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1313, file: !1314, line: 75, baseType: !103, size: 64, offset: 832)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1313, file: !1314, line: 76, baseType: !103, size: 64, offset: 896)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1313, file: !1314, line: 81, baseType: !103, size: 64, offset: 960)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1313, file: !1314, line: 83, baseType: !103, size: 64, offset: 1024)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1313, file: !1314, line: 84, baseType: !103, size: 64, offset: 1088)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1313, file: !1314, line: 85, baseType: !103, size: 64, offset: 1152)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1313, file: !1314, line: 86, baseType: !103, size: 64, offset: 1216)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1313, file: !1314, line: 87, baseType: !103, size: 64, offset: 1280)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1289, file: !1227, line: 96, baseType: !117, size: 32, offset: 1024)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1232, file: !1227, line: 308, baseType: !1339, size: 4608, align: 512)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1227, line: 289, size: 4608, align: 512, elements: !1340)
!1340 = !{!1341, !1342, !1351}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1339, file: !1227, line: 290, baseType: !1250, size: 4096, align: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1339, file: !1227, line: 291, baseType: !1343, size: 512, offset: 4096)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1227, line: 268, size: 512, elements: !1344)
!1344 = !{!1345, !1346, !1347}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1343, file: !1227, line: 269, baseType: !337, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1343, file: !1227, line: 270, baseType: !337, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1343, file: !1227, line: 271, baseType: !1348, size: 384, offset: 128)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 384, elements: !1349)
!1349 = !{!1350}
!1350 = !DISubrange(count: 6)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1339, file: !1227, line: 292, baseType: !1352, offset: 4608)
!1352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !624, elements: !1353)
!1353 = !{!1354}
!1354 = !DISubrange(count: 0)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1232, file: !1227, line: 309, baseType: !1356, size: 32768)
!1356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !624, size: 32768, elements: !1357)
!1357 = !{!1358}
!1358 = !DISubrange(count: 4096)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !476, file: !309, line: 378, baseType: !1360, size: 64, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !472, file: !309, line: 384, baseType: !793, size: 192, offset: 192)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !329, file: !309, line: 500, baseType: !178, offset: 6656)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !329, file: !309, line: 501, baseType: !1364, size: 64, offset: 6656)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !309, line: 387, flags: DIFlagFwdDecl)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !329, file: !309, line: 516, baseType: !1367, size: 64, offset: 6720)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1369, line: 18, flags: DIFlagFwdDecl)
!1369 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !329, file: !309, line: 519, baseType: !296, size: 64, offset: 6784)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !329, file: !309, line: 521, baseType: !1372, size: 64, offset: 6848)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !309, line: 521, flags: DIFlagFwdDecl)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !329, file: !309, line: 545, baseType: !357, size: 32, offset: 6912)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !329, file: !309, line: 548, baseType: !145, size: 8, offset: 6944)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !329, file: !309, line: 550, baseType: !1377, offset: 6952)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1378, line: 142, elements: !192)
!1378 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !329, file: !309, line: 554, baseType: !1380, size: 256, offset: 6976)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !58, line: 102, size: 256, elements: !1381)
!1381 = !{!1382, !1383, !1384}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1380, file: !58, line: 103, baseType: !365, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1380, file: !58, line: 104, baseType: !165, size: 128, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1380, file: !58, line: 105, baseType: !1385, size: 64, offset: 192)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !58, line: 21, baseType: !1386)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{null, !1389}
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !329, file: !309, line: 557, baseType: !117, size: 32, offset: 7232)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !326, file: !309, line: 565, baseType: !1392, offset: 7296)
!1392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, elements: !1393)
!1393 = !{!1394}
!1394 = !DISubrange(count: -1)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !308, file: !309, line: 333, baseType: !1396, size: 64, offset: 576)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !298, line: 284, baseType: !1397)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !298, line: 284, size: 64, elements: !1398)
!1398 = !{!1399}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1397, file: !298, line: 284, baseType: !1400, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !355, line: 19, baseType: !103)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !308, file: !309, line: 334, baseType: !103, size: 64, offset: 640)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !308, file: !309, line: 343, baseType: !1403, size: 256, offset: 704)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !308, file: !309, line: 340, size: 256, elements: !1404)
!1404 = !{!1405, !1406}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1403, file: !309, line: 341, baseType: !316, size: 192, align: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1403, file: !309, line: 342, baseType: !103, size: 64, offset: 192)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !308, file: !309, line: 351, baseType: !165, size: 128, offset: 960)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !308, file: !309, line: 353, baseType: !1409, size: 64, offset: 1088)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !309, line: 353, flags: DIFlagFwdDecl)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !308, file: !309, line: 356, baseType: !1412, size: 64, offset: 1152)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1414)
!1414 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !309, line: 356, flags: DIFlagFwdDecl)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !308, file: !309, line: 359, baseType: !103, size: 64, offset: 1216)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !308, file: !309, line: 361, baseType: !296, size: 64, offset: 1280)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !308, file: !309, line: 362, baseType: !106, size: 64, offset: 1344)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !308, file: !309, line: 365, baseType: !365, size: 64, offset: 1408)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !308, file: !309, line: 373, baseType: !1420, offset: 1472)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !309, line: 296, elements: !192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !275, file: !245, line: 90, baseType: !270, size: 64, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !275, file: !245, line: 91, baseType: !1423, size: 64, offset: 256)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !235, file: !161, line: 143, baseType: !1425, size: 64, offset: 256)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!1428, !171}
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1430)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !25, line: 39, size: 384, elements: !1431)
!1431 = !{!1432, !1433, !1437, !1441, !1447, !1451}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1430, file: !25, line: 40, baseType: !24, size: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1430, file: !25, line: 41, baseType: !1434, size: 64, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!145}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1430, file: !25, line: 42, baseType: !1438, size: 64, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!106}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1430, file: !25, line: 43, baseType: !1442, size: 64, offset: 192)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!153, !1445}
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !25, line: 19, flags: DIFlagFwdDecl)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1430, file: !25, line: 44, baseType: !1448, size: 64, offset: 256)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!153}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1430, file: !25, line: 45, baseType: !1452, size: 64, offset: 320)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{null, !106}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !235, file: !161, line: 144, baseType: !1456, size: 64, offset: 320)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!153, !171}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !235, file: !161, line: 145, baseType: !1460, size: 64, offset: 384)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{null, !171, !1463, !1469}
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1369, line: 23, baseType: !1465)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1369, line: 21, size: 32, elements: !1466)
!1466 = !{!1467}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1465, file: !1369, line: 22, baseType: !1468, size: 32)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !105, line: 32, baseType: !953)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1369, line: 28, baseType: !1471)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1369, line: 26, size: 32, elements: !1472)
!1472 = !{!1473}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1471, file: !1369, line: 27, baseType: !1474, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !105, line: 33, baseType: !1475)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !253, line: 50, baseType: !7)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !160, file: !161, line: 70, baseType: !1477, size: 64, offset: 384)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1479, line: 123, size: 1024, elements: !1480)
!1479 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1480 = !{!1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1622, !1623, !1624, !1625, !1626}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1478, file: !1479, line: 124, baseType: !357, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1478, file: !1479, line: 125, baseType: !357, size: 32, offset: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1478, file: !1479, line: 135, baseType: !1477, size: 64, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1478, file: !1479, line: 136, baseType: !112, size: 64, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1478, file: !1479, line: 138, baseType: !316, size: 192, align: 64, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1478, file: !1479, line: 140, baseType: !153, size: 64, offset: 384)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1478, file: !1479, line: 141, baseType: !7, size: 32, offset: 448)
!1488 = !DIDerivedType(tag: DW_TAG_member, scope: !1478, file: !1479, line: 142, baseType: !1489, size: 256, offset: 512)
!1489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1478, file: !1479, line: 142, size: 256, elements: !1490)
!1490 = !{!1491, !1545, !1549}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1489, file: !1479, line: 143, baseType: !1492, size: 192)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1479, line: 91, size: 192, elements: !1493)
!1493 = !{!1494, !1495, !1496}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1492, file: !1479, line: 92, baseType: !103, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1492, file: !1479, line: 94, baseType: !333, size: 64, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1492, file: !1479, line: 100, baseType: !1497, size: 64, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1479, line: 180, size: 704, elements: !1499)
!1499 = !{!1500, !1501, !1502, !1515, !1516, !1517, !1543, !1544}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1498, file: !1479, line: 182, baseType: !1477, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1498, file: !1479, line: 183, baseType: !7, size: 32, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1498, file: !1479, line: 186, baseType: !1503, size: 192, offset: 128)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1504, line: 19, size: 192, elements: !1505)
!1504 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1505 = !{!1506, !1513, !1514}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1503, file: !1504, line: 20, baseType: !1507, size: 128)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1508, line: 292, size: 128, elements: !1509)
!1508 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1509 = !{!1510, !1511, !1512}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1507, file: !1508, line: 293, baseType: !178)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1507, file: !1508, line: 295, baseType: !104, size: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1507, file: !1508, line: 296, baseType: !106, size: 64, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1503, file: !1504, line: 21, baseType: !7, size: 32, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1503, file: !1504, line: 22, baseType: !7, size: 32, offset: 160)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1498, file: !1479, line: 187, baseType: !117, size: 32, offset: 320)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1498, file: !1479, line: 188, baseType: !117, size: 32, offset: 352)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1498, file: !1479, line: 189, baseType: !1518, size: 64, offset: 384)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1479, line: 168, size: 320, elements: !1520)
!1520 = !{!1521, !1527, !1531, !1535, !1539}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1519, file: !1479, line: 169, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!204, !1525, !1497}
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !298, line: 539, flags: DIFlagFwdDecl)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1519, file: !1479, line: 171, baseType: !1528, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!204, !1477, !112, !260}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1519, file: !1479, line: 173, baseType: !1532, size: 64, offset: 128)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!204, !1477}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1519, file: !1479, line: 174, baseType: !1536, size: 64, offset: 192)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!204, !1477, !1477, !112}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1519, file: !1479, line: 176, baseType: !1540, size: 64, offset: 256)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!204, !1525, !1477, !1497}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1498, file: !1479, line: 192, baseType: !165, size: 128, offset: 448)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1498, file: !1479, line: 194, baseType: !764, size: 128, offset: 576)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1489, file: !1479, line: 144, baseType: !1546, size: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1479, line: 103, size: 64, elements: !1547)
!1547 = !{!1548}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1546, file: !1479, line: 104, baseType: !1477, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1489, file: !1479, line: 145, baseType: !1550, size: 256)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1479, line: 107, size: 256, elements: !1551)
!1551 = !{!1552, !1617, !1620, !1621}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1550, file: !1479, line: 108, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1555)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1479, line: 217, size: 768, elements: !1556)
!1556 = !{!1557, !1577, !1581, !1585, !1590, !1594, !1598, !1602, !1603, !1604, !1605, !1613}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1555, file: !1479, line: 222, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!204, !1561}
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1479, line: 197, size: 1088, elements: !1563)
!1563 = !{!1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1562, file: !1479, line: 199, baseType: !1477, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1562, file: !1479, line: 200, baseType: !296, size: 64, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1562, file: !1479, line: 201, baseType: !1525, size: 64, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1562, file: !1479, line: 202, baseType: !106, size: 64, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1562, file: !1479, line: 205, baseType: !434, size: 192, offset: 256)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1562, file: !1479, line: 206, baseType: !434, size: 192, offset: 448)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1562, file: !1479, line: 207, baseType: !204, size: 32, offset: 640)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1562, file: !1479, line: 208, baseType: !165, size: 128, offset: 704)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1562, file: !1479, line: 209, baseType: !220, size: 64, offset: 832)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1562, file: !1479, line: 211, baseType: !266, size: 64, offset: 896)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1562, file: !1479, line: 212, baseType: !145, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1562, file: !1479, line: 213, baseType: !145, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1562, file: !1479, line: 214, baseType: !1412, size: 64, offset: 1024)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1555, file: !1479, line: 223, baseType: !1578, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{null, !1561}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1555, file: !1479, line: 236, baseType: !1582, size: 64, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!204, !1525, !106}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1555, file: !1479, line: 238, baseType: !1586, size: 64, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!106, !1525, !1589}
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1555, file: !1479, line: 239, baseType: !1591, size: 64, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!106, !1525, !106, !1589}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1555, file: !1479, line: 240, baseType: !1595, size: 64, offset: 320)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{null, !1525, !106}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1555, file: !1479, line: 242, baseType: !1599, size: 64, offset: 384)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!251, !1561, !220, !266, !299}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1555, file: !1479, line: 252, baseType: !266, size: 64, offset: 448)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1555, file: !1479, line: 259, baseType: !145, size: 8, offset: 512)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1555, file: !1479, line: 260, baseType: !1599, size: 64, offset: 576)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1555, file: !1479, line: 263, baseType: !1606, size: 64, offset: 640)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!1609, !1561, !1611}
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1610, line: 52, baseType: !7)
!1610 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1479, line: 27, flags: DIFlagFwdDecl)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1555, file: !1479, line: 266, baseType: !1614, size: 64, offset: 704)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!204, !1561, !307}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1550, file: !1479, line: 109, baseType: !1618, size: 64, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1479, line: 31, flags: DIFlagFwdDecl)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1550, file: !1479, line: 110, baseType: !299, size: 64, offset: 128)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1550, file: !1479, line: 111, baseType: !1477, size: 64, offset: 192)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1478, file: !1479, line: 148, baseType: !106, size: 64, offset: 768)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1478, file: !1479, line: 154, baseType: !337, size: 64, offset: 832)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1478, file: !1479, line: 156, baseType: !261, size: 16, offset: 896)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1478, file: !1479, line: 157, baseType: !260, size: 16, offset: 912)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1478, file: !1479, line: 158, baseType: !1627, size: 64, offset: 960)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1479, line: 32, flags: DIFlagFwdDecl)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !160, file: !161, line: 71, baseType: !1630, size: 32, offset: 448)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1631, line: 19, size: 32, elements: !1632)
!1631 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1632 = !{!1633}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1630, file: !1631, line: 20, baseType: !493, size: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !160, file: !161, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !160, file: !161, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !160, file: !161, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !160, file: !161, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !160, file: !161, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !157, file: !37, line: 463, baseType: !1640, size: 64, offset: 512)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !157, file: !37, line: 465, baseType: !1642, size: 64, offset: 576)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !37, line: 36, flags: DIFlagFwdDecl)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !157, file: !37, line: 467, baseType: !112, size: 64, offset: 640)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !157, file: !37, line: 468, baseType: !1646, size: 64, offset: 704)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1648)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !37, line: 87, size: 384, elements: !1649)
!1649 = !{!1650, !1651, !1652, !1656, !1661, !1665}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1648, file: !37, line: 88, baseType: !112, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1648, file: !37, line: 89, baseType: !272, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1648, file: !37, line: 90, baseType: !1653, size: 64, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!204, !1640, !215}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1648, file: !37, line: 91, baseType: !1657, size: 64, offset: 192)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!220, !1640, !1660, !1463, !1469}
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1648, file: !37, line: 93, baseType: !1662, size: 64, offset: 256)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{null, !1640}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1648, file: !37, line: 95, baseType: !1666, size: 64, offset: 320)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1668)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !44, line: 278, size: 1472, elements: !1669)
!1669 = !{!1670, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1668, file: !44, line: 279, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!204, !1640}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1668, file: !44, line: 280, baseType: !1662, size: 64, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1668, file: !44, line: 281, baseType: !1671, size: 64, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1668, file: !44, line: 282, baseType: !1671, size: 64, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1668, file: !44, line: 283, baseType: !1671, size: 64, offset: 256)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1668, file: !44, line: 284, baseType: !1671, size: 64, offset: 320)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1668, file: !44, line: 285, baseType: !1671, size: 64, offset: 384)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1668, file: !44, line: 286, baseType: !1671, size: 64, offset: 448)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1668, file: !44, line: 287, baseType: !1671, size: 64, offset: 512)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1668, file: !44, line: 288, baseType: !1671, size: 64, offset: 576)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1668, file: !44, line: 289, baseType: !1671, size: 64, offset: 640)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1668, file: !44, line: 290, baseType: !1671, size: 64, offset: 704)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1668, file: !44, line: 291, baseType: !1671, size: 64, offset: 768)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1668, file: !44, line: 292, baseType: !1671, size: 64, offset: 832)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1668, file: !44, line: 293, baseType: !1671, size: 64, offset: 896)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1668, file: !44, line: 294, baseType: !1671, size: 64, offset: 960)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1668, file: !44, line: 295, baseType: !1671, size: 64, offset: 1024)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1668, file: !44, line: 296, baseType: !1671, size: 64, offset: 1088)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1668, file: !44, line: 297, baseType: !1671, size: 64, offset: 1152)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1668, file: !44, line: 298, baseType: !1671, size: 64, offset: 1216)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1668, file: !44, line: 299, baseType: !1671, size: 64, offset: 1280)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1668, file: !44, line: 300, baseType: !1671, size: 64, offset: 1344)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1668, file: !44, line: 301, baseType: !1671, size: 64, offset: 1408)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !157, file: !37, line: 470, baseType: !1697, size: 64, offset: 768)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1699, line: 82, size: 1408, elements: !1700)
!1699 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1700 = !{!1701, !1702, !1703, !1704, !1705, !1706, !1707, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1786, !1789, !1792}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1698, file: !1699, line: 83, baseType: !112, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1698, file: !1699, line: 84, baseType: !112, size: 64, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1698, file: !1699, line: 85, baseType: !1640, size: 64, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1698, file: !1699, line: 86, baseType: !272, size: 64, offset: 192)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1698, file: !1699, line: 87, baseType: !272, size: 64, offset: 256)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1698, file: !1699, line: 88, baseType: !272, size: 64, offset: 320)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1698, file: !1699, line: 90, baseType: !1708, size: 64, offset: 384)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!204, !1640, !1711}
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !31, line: 95, size: 1152, elements: !1713)
!1713 = !{!1714, !1715, !1716, !1720, !1721, !1722, !1723, !1737, !1750, !1751, !1752, !1753, !1754, !1762, !1763, !1764, !1765, !1766, !1767}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1712, file: !31, line: 96, baseType: !112, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1712, file: !31, line: 97, baseType: !1697, size: 64, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1712, file: !31, line: 99, baseType: !1717, size: 64, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1719, line: 76, flags: DIFlagFwdDecl)
!1719 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1712, file: !31, line: 100, baseType: !112, size: 64, offset: 192)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1712, file: !31, line: 102, baseType: !145, size: 8, offset: 256)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1712, file: !31, line: 103, baseType: !30, size: 32, offset: 288)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1712, file: !31, line: 105, baseType: !1724, size: 64, offset: 320)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1726)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1727, line: 262, size: 1600, elements: !1728)
!1727 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1728 = !{!1729, !1731, !1732, !1736}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1726, file: !1727, line: 263, baseType: !1730, size: 256)
!1730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 256, elements: !1275)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1726, file: !1727, line: 264, baseType: !1730, size: 256, offset: 256)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1726, file: !1727, line: 265, baseType: !1733, size: 1024, offset: 512)
!1733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 1024, elements: !1734)
!1734 = !{!1735}
!1735 = !DISubrange(count: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1726, file: !1727, line: 266, baseType: !153, size: 64, offset: 1536)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1712, file: !31, line: 106, baseType: !1738, size: 64, offset: 384)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1740)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1727, line: 210, size: 256, elements: !1741)
!1741 = !{!1742, !1746, !1748, !1749}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1740, file: !1727, line: 211, baseType: !1743, size: 72)
!1743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !625, size: 72, elements: !1744)
!1744 = !{!1745}
!1745 = !DISubrange(count: 9)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1740, file: !1727, line: 212, baseType: !1747, size: 64, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1727, line: 14, baseType: !103)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1740, file: !1727, line: 213, baseType: !119, size: 32, offset: 192)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1740, file: !1727, line: 214, baseType: !119, size: 32, offset: 224)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1712, file: !31, line: 108, baseType: !1671, size: 64, offset: 448)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1712, file: !31, line: 109, baseType: !1662, size: 64, offset: 512)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1712, file: !31, line: 110, baseType: !1671, size: 64, offset: 576)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1712, file: !31, line: 111, baseType: !1662, size: 64, offset: 640)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1712, file: !31, line: 112, baseType: !1755, size: 64, offset: 704)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!204, !1640, !1758}
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !44, line: 52, baseType: !1759)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !44, line: 50, size: 32, elements: !1760)
!1760 = !{!1761}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1759, file: !44, line: 51, baseType: !204, size: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1712, file: !31, line: 113, baseType: !1671, size: 64, offset: 768)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1712, file: !31, line: 114, baseType: !272, size: 64, offset: 832)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1712, file: !31, line: 115, baseType: !272, size: 64, offset: 896)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1712, file: !31, line: 117, baseType: !1666, size: 64, offset: 960)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1712, file: !31, line: 118, baseType: !1662, size: 64, offset: 1024)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1712, file: !31, line: 120, baseType: !1768, size: 64, offset: 1088)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !31, line: 120, flags: DIFlagFwdDecl)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1698, file: !1699, line: 91, baseType: !1653, size: 64, offset: 448)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1698, file: !1699, line: 92, baseType: !1671, size: 64, offset: 512)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1698, file: !1699, line: 93, baseType: !1662, size: 64, offset: 576)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1698, file: !1699, line: 94, baseType: !1671, size: 64, offset: 640)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1698, file: !1699, line: 95, baseType: !1662, size: 64, offset: 704)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1698, file: !1699, line: 97, baseType: !1671, size: 64, offset: 768)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1698, file: !1699, line: 98, baseType: !1671, size: 64, offset: 832)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1698, file: !1699, line: 100, baseType: !1755, size: 64, offset: 896)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1698, file: !1699, line: 101, baseType: !1671, size: 64, offset: 960)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1698, file: !1699, line: 103, baseType: !1671, size: 64, offset: 1024)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1698, file: !1699, line: 105, baseType: !1671, size: 64, offset: 1088)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1698, file: !1699, line: 107, baseType: !1666, size: 64, offset: 1152)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1698, file: !1699, line: 109, baseType: !1783, size: 64, offset: 1216)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1785)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1699, line: 109, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1698, file: !1699, line: 111, baseType: !1787, size: 64, offset: 1280)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1699, line: 111, flags: DIFlagFwdDecl)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1698, file: !1699, line: 112, baseType: !1790, offset: 1344)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1791, line: 187, elements: !192)
!1791 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1698, file: !1699, line: 114, baseType: !145, size: 8, offset: 1344)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !157, file: !37, line: 471, baseType: !1711, size: 64, offset: 832)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !157, file: !37, line: 473, baseType: !106, size: 64, offset: 896)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !157, file: !37, line: 475, baseType: !106, size: 64, offset: 960)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !157, file: !37, line: 480, baseType: !434, size: 192, offset: 1024)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !157, file: !37, line: 484, baseType: !1798, size: 576, offset: 1216)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !37, line: 361, size: 576, elements: !1799)
!1799 = !{!1800, !1801, !1802, !1803, !1804, !1805}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1798, file: !37, line: 362, baseType: !165, size: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1798, file: !37, line: 363, baseType: !165, size: 128, offset: 128)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1798, file: !37, line: 364, baseType: !165, size: 128, offset: 256)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1798, file: !37, line: 365, baseType: !165, size: 128, offset: 384)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1798, file: !37, line: 366, baseType: !145, size: 8, offset: 512)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1798, file: !37, line: 367, baseType: !36, size: 32, offset: 544)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !157, file: !37, line: 485, baseType: !1807, size: 2304, offset: 1792)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !44, line: 565, size: 2304, elements: !1808)
!1808 = !{!1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1904, !1908}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1807, file: !44, line: 566, baseType: !1758, size: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1807, file: !44, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1807, file: !44, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1807, file: !44, line: 569, baseType: !145, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1807, file: !44, line: 570, baseType: !145, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1807, file: !44, line: 571, baseType: !145, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1807, file: !44, line: 572, baseType: !145, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1807, file: !44, line: 573, baseType: !145, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1807, file: !44, line: 574, baseType: !145, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1807, file: !44, line: 575, baseType: !145, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1807, file: !44, line: 576, baseType: !145, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1807, file: !44, line: 577, baseType: !117, size: 32, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1807, file: !44, line: 578, baseType: !178, offset: 96)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1807, file: !44, line: 580, baseType: !165, size: 128, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1807, file: !44, line: 581, baseType: !793, size: 192, offset: 256)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1807, file: !44, line: 582, baseType: !1825, size: 64, offset: 448)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1827, line: 43, size: 1472, elements: !1828)
!1827 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1828 = !{!1829, !1830, !1831, !1832, !1833, !1836, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1826, file: !1827, line: 44, baseType: !112, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1826, file: !1827, line: 45, baseType: !204, size: 32, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1826, file: !1827, line: 46, baseType: !165, size: 128, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1826, file: !1827, line: 47, baseType: !178, offset: 256)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1826, file: !1827, line: 48, baseType: !1834, size: 64, offset: 256)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !44, line: 533, flags: DIFlagFwdDecl)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1826, file: !1827, line: 49, baseType: !1837, size: 320, offset: 320)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1838, line: 11, size: 320, elements: !1839)
!1838 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1839 = !{!1840, !1841, !1842, !1847}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1837, file: !1838, line: 16, baseType: !757, size: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1837, file: !1838, line: 17, baseType: !103, size: 64, offset: 128)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1837, file: !1838, line: 18, baseType: !1843, size: 64, offset: 192)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{null, !1846}
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1837, file: !1838, line: 19, baseType: !117, size: 32, offset: 256)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1826, file: !1827, line: 50, baseType: !103, size: 64, offset: 640)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1826, file: !1827, line: 51, baseType: !563, size: 64, offset: 704)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1826, file: !1827, line: 52, baseType: !563, size: 64, offset: 768)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1826, file: !1827, line: 53, baseType: !563, size: 64, offset: 832)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1826, file: !1827, line: 54, baseType: !563, size: 64, offset: 896)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1826, file: !1827, line: 55, baseType: !563, size: 64, offset: 960)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1826, file: !1827, line: 56, baseType: !103, size: 64, offset: 1024)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1826, file: !1827, line: 57, baseType: !103, size: 64, offset: 1088)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1826, file: !1827, line: 58, baseType: !103, size: 64, offset: 1152)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1826, file: !1827, line: 59, baseType: !103, size: 64, offset: 1216)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1826, file: !1827, line: 60, baseType: !103, size: 64, offset: 1280)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1826, file: !1827, line: 61, baseType: !1640, size: 64, offset: 1344)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1826, file: !1827, line: 62, baseType: !145, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1826, file: !1827, line: 63, baseType: !145, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1807, file: !44, line: 583, baseType: !145, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1807, file: !44, line: 584, baseType: !145, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1807, file: !44, line: 585, baseType: !145, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1807, file: !44, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1807, file: !44, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1807, file: !44, line: 592, baseType: !555, size: 512, offset: 576)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1807, file: !44, line: 593, baseType: !337, size: 64, offset: 1088)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1807, file: !44, line: 594, baseType: !1380, size: 256, offset: 1152)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1807, file: !44, line: 595, baseType: !764, size: 128, offset: 1408)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1807, file: !44, line: 596, baseType: !1834, size: 64, offset: 1536)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1807, file: !44, line: 597, baseType: !357, size: 32, offset: 1600)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1807, file: !44, line: 598, baseType: !357, size: 32, offset: 1632)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1807, file: !44, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1807, file: !44, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1807, file: !44, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1807, file: !44, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1807, file: !44, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1807, file: !44, line: 604, baseType: !145, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1807, file: !44, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1807, file: !44, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1807, file: !44, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1807, file: !44, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1807, file: !44, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1807, file: !44, line: 610, baseType: !7, size: 32, offset: 1696)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1807, file: !44, line: 611, baseType: !43, size: 32, offset: 1728)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1807, file: !44, line: 612, baseType: !51, size: 32, offset: 1760)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1807, file: !44, line: 613, baseType: !204, size: 32, offset: 1792)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1807, file: !44, line: 614, baseType: !204, size: 32, offset: 1824)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1807, file: !44, line: 615, baseType: !337, size: 64, offset: 1856)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1807, file: !44, line: 616, baseType: !337, size: 64, offset: 1920)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1807, file: !44, line: 617, baseType: !337, size: 64, offset: 1984)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1807, file: !44, line: 618, baseType: !337, size: 64, offset: 2048)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1807, file: !44, line: 620, baseType: !1895, size: 64, offset: 2112)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !44, line: 536, size: 256, elements: !1897)
!1897 = !{!1898, !1899, !1900, !1901}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1896, file: !44, line: 537, baseType: !178)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1896, file: !44, line: 538, baseType: !7, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1896, file: !44, line: 540, baseType: !165, size: 128, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1896, file: !44, line: 543, baseType: !1902, size: 64, offset: 192)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !44, line: 534, flags: DIFlagFwdDecl)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1807, file: !44, line: 621, baseType: !1905, size: 64, offset: 2176)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{null, !1640, !717}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1807, file: !44, line: 622, baseType: !1909, size: 64, offset: 2240)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !44, line: 622, flags: DIFlagFwdDecl)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !157, file: !37, line: 486, baseType: !1912, size: 64, offset: 4096)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !44, line: 642, size: 1792, elements: !1914)
!1914 = !{!1915, !1916, !1917, !1921, !1922, !1923}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1913, file: !44, line: 643, baseType: !1668, size: 1472)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1913, file: !44, line: 644, baseType: !1671, size: 64, offset: 1472)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1913, file: !44, line: 645, baseType: !1918, size: 64, offset: 1536)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{null, !1640, !145}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1913, file: !44, line: 646, baseType: !1671, size: 64, offset: 1600)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1913, file: !44, line: 647, baseType: !1662, size: 64, offset: 1664)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1913, file: !44, line: 648, baseType: !1662, size: 64, offset: 1728)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !157, file: !37, line: 493, baseType: !1925, size: 64, offset: 4160)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !37, line: 493, flags: DIFlagFwdDecl)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !157, file: !37, line: 499, baseType: !165, size: 128, offset: 4224)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !157, file: !37, line: 502, baseType: !1929, size: 64, offset: 4352)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1931)
!1931 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !37, line: 502, flags: DIFlagFwdDecl)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !157, file: !37, line: 504, baseType: !1933, size: 64, offset: 4416)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !157, file: !37, line: 505, baseType: !337, size: 64, offset: 4480)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !157, file: !37, line: 510, baseType: !337, size: 64, offset: 4544)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !157, file: !37, line: 511, baseType: !1937, size: 64, offset: 4608)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1939)
!1939 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !37, line: 511, flags: DIFlagFwdDecl)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !157, file: !37, line: 513, baseType: !1941, size: 64, offset: 4672)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !37, line: 288, size: 128, elements: !1943)
!1943 = !{!1944, !1945}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1942, file: !37, line: 293, baseType: !7, size: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1942, file: !37, line: 294, baseType: !103, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !157, file: !37, line: 515, baseType: !165, size: 128, offset: 4736)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !157, file: !37, line: 526, baseType: !1948, offset: 4864)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1949, line: 5, elements: !192)
!1949 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !157, file: !37, line: 528, baseType: !107, size: 64, offset: 4864)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !157, file: !37, line: 529, baseType: !127, size: 64, offset: 4928)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !157, file: !37, line: 534, baseType: !1953, size: 32, offset: 4992)
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !105, line: 16, baseType: !1954)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !105, line: 13, baseType: !117)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !157, file: !37, line: 535, baseType: !117, size: 32, offset: 5024)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !157, file: !37, line: 537, baseType: !178, offset: 5056)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !157, file: !37, line: 538, baseType: !165, size: 128, offset: 5056)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !157, file: !37, line: 540, baseType: !1959, size: 64, offset: 5184)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1961, line: 54, size: 960, elements: !1962)
!1961 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1962 = !{!1963, !1964, !1965, !1966, !1967, !1968, !1969, !1973, !1977, !1978, !1979, !1980, !1984, !1988, !1989}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1960, file: !1961, line: 55, baseType: !112, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1960, file: !1961, line: 56, baseType: !1717, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1960, file: !1961, line: 58, baseType: !272, size: 64, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1960, file: !1961, line: 59, baseType: !272, size: 64, offset: 192)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1960, file: !1961, line: 60, baseType: !171, size: 64, offset: 256)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1960, file: !1961, line: 62, baseType: !1653, size: 64, offset: 320)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1960, file: !1961, line: 63, baseType: !1970, size: 64, offset: 384)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!220, !1640, !1660}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1960, file: !1961, line: 65, baseType: !1974, size: 64, offset: 448)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{null, !1959}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1960, file: !1961, line: 66, baseType: !1662, size: 64, offset: 512)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1960, file: !1961, line: 68, baseType: !1671, size: 64, offset: 576)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1960, file: !1961, line: 70, baseType: !1428, size: 64, offset: 640)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1960, file: !1961, line: 71, baseType: !1981, size: 64, offset: 704)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!153, !1640}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1960, file: !1961, line: 73, baseType: !1985, size: 64, offset: 768)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{null, !1640, !1463, !1469}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1960, file: !1961, line: 75, baseType: !1666, size: 64, offset: 832)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1960, file: !1961, line: 77, baseType: !1787, size: 64, offset: 896)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !157, file: !37, line: 541, baseType: !272, size: 64, offset: 5248)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !157, file: !37, line: 543, baseType: !1662, size: 64, offset: 5312)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !157, file: !37, line: 544, baseType: !1993, size: 64, offset: 5376)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !37, line: 45, flags: DIFlagFwdDecl)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !157, file: !37, line: 545, baseType: !1996, size: 64, offset: 5440)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !37, line: 47, flags: DIFlagFwdDecl)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !157, file: !37, line: 547, baseType: !145, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !157, file: !37, line: 548, baseType: !145, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !157, file: !37, line: 549, baseType: !145, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !157, file: !37, line: 550, baseType: !145, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !131, file: !124, line: 116, baseType: !2003, size: 64, offset: 256)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!145, !147, !112}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !131, file: !124, line: 118, baseType: !2007, size: 64, offset: 320)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!204, !147, !112, !7, !106, !266}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !131, file: !124, line: 123, baseType: !2011, size: 64, offset: 384)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!204, !147, !112, !2014, !266}
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !131, file: !124, line: 126, baseType: !2016, size: 64, offset: 448)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!112, !147}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !131, file: !124, line: 127, baseType: !2016, size: 64, offset: 512)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !131, file: !124, line: 128, baseType: !2021, size: 64, offset: 576)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!127, !147}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !131, file: !124, line: 130, baseType: !2025, size: 64, offset: 640)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!127, !147, !127}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !131, file: !124, line: 133, baseType: !2029, size: 64, offset: 704)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!127, !147, !112}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !131, file: !124, line: 135, baseType: !2033, size: 64, offset: 768)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!204, !147, !112, !112, !7, !7, !2036}
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !124, line: 43, size: 640, elements: !2038)
!2038 = !{!2039, !2040, !2041}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2037, file: !124, line: 44, baseType: !127, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2037, file: !124, line: 45, baseType: !7, size: 32, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2037, file: !124, line: 46, baseType: !2042, size: 512, offset: 128)
!2042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 512, elements: !593)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !131, file: !124, line: 140, baseType: !2025, size: 64, offset: 832)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !131, file: !124, line: 143, baseType: !2021, size: 64, offset: 896)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !131, file: !124, line: 145, baseType: !134, size: 64, offset: 960)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !131, file: !124, line: 146, baseType: !2047, size: 64, offset: 1024)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!204, !147, !2050}
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !124, line: 29, size: 128, elements: !2052)
!2052 = !{!2053, !2054, !2055}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2051, file: !124, line: 30, baseType: !7, size: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2051, file: !124, line: 31, baseType: !7, size: 32, offset: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2051, file: !124, line: 32, baseType: !147, size: 64, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !131, file: !124, line: 148, baseType: !2057, size: 64, offset: 1088)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!204, !147, !1640}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !123, file: !124, line: 20, baseType: !1640, size: 64, offset: 128)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !108, file: !109, line: 57, baseType: !2062, size: 64, offset: 384)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !109, line: 31, size: 704, elements: !2064)
!2064 = !{!2065, !2066, !2067, !2068, !2069}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2063, file: !109, line: 32, baseType: !220, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2063, file: !109, line: 33, baseType: !204, size: 32, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2063, file: !109, line: 34, baseType: !106, size: 64, offset: 128)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2063, file: !109, line: 35, baseType: !2062, size: 64, offset: 192)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2063, file: !109, line: 43, baseType: !287, size: 448, offset: 256)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !108, file: !109, line: 58, baseType: !2062, size: 64, offset: 448)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !108, file: !109, line: 59, baseType: !107, size: 64, offset: 512)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !108, file: !109, line: 60, baseType: !107, size: 64, offset: 576)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !108, file: !109, line: 61, baseType: !107, size: 64, offset: 640)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !108, file: !109, line: 63, baseType: !160, size: 512, offset: 704)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !108, file: !109, line: 65, baseType: !103, size: 64, offset: 1216)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !108, file: !109, line: 66, baseType: !106, size: 64, offset: 1280)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !168)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_classdev", file: !6, line: 64, size: 2048, elements: !2081)
!2081 = !{!2082, !2083, !2084, !2085, !2086, !2087, !2091, !2095, !2099, !2104, !2113, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2130, !2131, !2132}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2080, file: !6, line: 65, baseType: !112, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !2080, file: !6, line: 66, baseType: !5, size: 32, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "max_brightness", scope: !2080, file: !6, line: 67, baseType: !5, size: 32, offset: 96)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2080, file: !6, line: 68, baseType: !204, size: 32, offset: 128)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "work_flags", scope: !2080, file: !6, line: 84, baseType: !103, size: 64, offset: 192)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set", scope: !2080, file: !6, line: 97, baseType: !2088, size: 64, offset: 256)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{null, !2079, !5}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set_blocking", scope: !2080, file: !6, line: 103, baseType: !2092, size: 64, offset: 320)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!204, !2079, !5}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_get", scope: !2080, file: !6, line: 106, baseType: !2096, size: 64, offset: 384)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!5, !2079}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "blink_set", scope: !2080, file: !6, line: 116, baseType: !2100, size: 64, offset: 448)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!204, !2079, !2103, !2103}
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_set", scope: !2080, file: !6, line: 120, baseType: !2105, size: 64, offset: 512)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!204, !2079, !2108, !117, !204}
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_pattern", file: !6, line: 579, size: 64, elements: !2110)
!2110 = !{!2111, !2112}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "delta_t", scope: !2109, file: !6, line: 580, baseType: !117, size: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !2109, file: !6, line: 581, baseType: !204, size: 32, offset: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_clear", scope: !2080, file: !6, line: 122, baseType: !2114, size: 64, offset: 576)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!204, !2079}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2080, file: !6, line: 124, baseType: !1640, size: 64, offset: 640)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2080, file: !6, line: 125, baseType: !272, size: 64, offset: 704)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2080, file: !6, line: 127, baseType: !165, size: 128, offset: 768)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "default_trigger", scope: !2080, file: !6, line: 128, baseType: !112, size: 64, offset: 896)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_on", scope: !2080, file: !6, line: 130, baseType: !103, size: 64, offset: 960)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_off", scope: !2080, file: !6, line: 130, baseType: !103, size: 64, offset: 1024)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "blink_timer", scope: !2080, file: !6, line: 131, baseType: !1837, size: 320, offset: 1088)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "blink_brightness", scope: !2080, file: !6, line: 132, baseType: !204, size: 32, offset: 1408)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "new_blink_brightness", scope: !2080, file: !6, line: 133, baseType: !204, size: 32, offset: 1440)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "flash_resume", scope: !2080, file: !6, line: 134, baseType: !2127, size: 64, offset: 1472)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{null, !2079}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "set_brightness_work", scope: !2080, file: !6, line: 136, baseType: !1380, size: 256, offset: 1536)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_set_value", scope: !2080, file: !6, line: 137, baseType: !204, size: 32, offset: 1792)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "led_access", scope: !2080, file: !6, line: 159, baseType: !434, size: 192, offset: 1856)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !114)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2138)
!2138 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !761)
!2139 = !{!0, !2140, !2142}
!2140 = !DIGlobalVariableExpression(var: !2141, expr: !DIExpression())
!2141 = distinct !DIGlobalVariable(name: "leds_list", scope: !2, file: !3, line: 25, type: !165, isLocal: false, isDefinition: true)
!2142 = !DIGlobalVariableExpression(var: !2143, expr: !DIExpression())
!2143 = distinct !DIGlobalVariable(name: "led_colors", scope: !2, file: !3, line: 28, type: !2144, isLocal: false, isDefinition: true)
!2144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2145, size: 640, elements: !2146)
!2145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!2146 = !{!2147}
!2147 = !DISubrange(count: 10)
!2148 = !{i32 7, !"Dwarf Version", i32 4}
!2149 = !{i32 2, !"Debug Info Version", i32 3}
!2150 = !{i32 1, !"wchar_size", i32 2}
!2151 = !{i32 1, !"Code Model", i32 2}
!2152 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2153 = distinct !DISubprogram(name: "led_init_core", scope: !3, file: !3, line: 191, type: !2128, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2154 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2153, file: !3, line: 191, type: !2079)
!2155 = !DILocation(line: 191, column: 41, scope: !2153)
!2156 = !DILocation(line: 193, column: 2, scope: !2153)
!2157 = !DILocation(line: 193, column: 2, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 193, column: 2)
!2159 = !DILocation(line: 195, column: 2, scope: !2153)
!2160 = !DILocation(line: 196, column: 1, scope: !2153)
!2161 = distinct !DISubprogram(name: "__init_work", scope: !58, file: !58, line: 215, type: !2162, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{null, !1389, !204}
!2164 = !DILocalVariable(name: "work", arg: 1, scope: !2161, file: !58, line: 215, type: !1389)
!2165 = !DILocation(line: 215, column: 52, scope: !2161)
!2166 = !DILocalVariable(name: "onstack", arg: 2, scope: !2161, file: !58, line: 215, type: !204)
!2167 = !DILocation(line: 215, column: 62, scope: !2161)
!2168 = !DILocation(line: 215, column: 73, scope: !2161)
!2169 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !2170, file: !2170, line: 33, type: !2171, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2170 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!2171 = !DISubroutineType(types: !2172)
!2172 = !{null, !168}
!2173 = !DILocalVariable(name: "list", arg: 1, scope: !2169, file: !2170, line: 33, type: !168)
!2174 = !DILocation(line: 33, column: 53, scope: !2169)
!2175 = !DILocation(line: 35, column: 2, scope: !2169)
!2176 = !DILocation(line: 35, column: 2, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2169, file: !2170, line: 35, column: 2)
!2178 = !DILocation(line: 35, column: 2, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2177, file: !2170, line: 35, column: 2)
!2180 = !DILocation(line: 35, column: 2, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2177, file: !2170, line: 35, column: 2)
!2182 = !DILocation(line: 36, column: 15, scope: !2169)
!2183 = !DILocation(line: 36, column: 2, scope: !2169)
!2184 = !DILocation(line: 36, column: 8, scope: !2169)
!2185 = !DILocation(line: 36, column: 13, scope: !2169)
!2186 = !DILocation(line: 37, column: 1, scope: !2169)
!2187 = distinct !DISubprogram(name: "set_brightness_delayed", scope: !3, file: !3, line: 119, type: !1387, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2188 = !DILocalVariable(name: "ws", arg: 1, scope: !2187, file: !3, line: 119, type: !1389)
!2189 = !DILocation(line: 119, column: 56, scope: !2187)
!2190 = !DILocalVariable(name: "led_cdev", scope: !2187, file: !3, line: 121, type: !2079)
!2191 = !DILocation(line: 121, column: 23, scope: !2187)
!2192 = !DILocalVariable(name: "__mptr", scope: !2193, file: !3, line: 122, type: !106)
!2193 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 122, column: 3)
!2194 = !DILocation(line: 122, column: 3, scope: !2193)
!2195 = !DILocation(line: 122, column: 3, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2193, file: !3, line: 122, column: 3)
!2197 = !DILocalVariable(name: "ret", scope: !2187, file: !3, line: 123, type: !204)
!2198 = !DILocation(line: 123, column: 6, scope: !2187)
!2199 = !DILocation(line: 125, column: 45, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 125, column: 6)
!2201 = !DILocation(line: 125, column: 55, scope: !2200)
!2202 = !DILocation(line: 125, column: 6, scope: !2200)
!2203 = !DILocation(line: 125, column: 6, scope: !2187)
!2204 = !DILocation(line: 126, column: 3, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2200, file: !3, line: 125, column: 68)
!2206 = !DILocation(line: 126, column: 13, scope: !2205)
!2207 = !DILocation(line: 126, column: 31, scope: !2205)
!2208 = !DILocation(line: 127, column: 27, scope: !2205)
!2209 = !DILocation(line: 127, column: 3, scope: !2205)
!2210 = !DILocation(line: 128, column: 2, scope: !2205)
!2211 = !DILocation(line: 130, column: 29, scope: !2187)
!2212 = !DILocation(line: 130, column: 39, scope: !2187)
!2213 = !DILocation(line: 130, column: 49, scope: !2187)
!2214 = !DILocation(line: 130, column: 8, scope: !2187)
!2215 = !DILocation(line: 130, column: 6, scope: !2187)
!2216 = !DILocation(line: 131, column: 6, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 131, column: 6)
!2218 = !DILocation(line: 131, column: 10, scope: !2217)
!2219 = !DILocation(line: 131, column: 6, scope: !2187)
!2220 = !DILocation(line: 132, column: 39, scope: !2217)
!2221 = !DILocation(line: 133, column: 6, scope: !2217)
!2222 = !DILocation(line: 133, column: 16, scope: !2217)
!2223 = !DILocation(line: 132, column: 9, scope: !2217)
!2224 = !DILocation(line: 132, column: 7, scope: !2217)
!2225 = !DILocation(line: 132, column: 3, scope: !2217)
!2226 = !DILocation(line: 134, column: 6, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 134, column: 6)
!2228 = !DILocation(line: 134, column: 10, scope: !2227)
!2229 = !DILocation(line: 134, column: 14, scope: !2227)
!2230 = !DILocation(line: 136, column: 8, scope: !2227)
!2231 = !DILocation(line: 136, column: 12, scope: !2227)
!2232 = !DILocation(line: 136, column: 23, scope: !2227)
!2233 = !DILocation(line: 136, column: 27, scope: !2227)
!2234 = !DILocation(line: 136, column: 37, scope: !2227)
!2235 = !DILocation(line: 136, column: 43, scope: !2227)
!2236 = !DILocation(line: 136, column: 64, scope: !2227)
!2237 = !DILocation(line: 137, column: 7, scope: !2227)
!2238 = !DILocation(line: 137, column: 17, scope: !2227)
!2239 = !DILocation(line: 137, column: 23, scope: !2227)
!2240 = !DILocation(line: 134, column: 6, scope: !2187)
!2241 = !DILocation(line: 138, column: 3, scope: !2227)
!2242 = !DILocation(line: 140, column: 1, scope: !2187)
!2243 = distinct !DISubprogram(name: "led_timer_function", scope: !3, file: !3, line: 62, type: !1844, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2244 = !DILocalVariable(name: "m", arg: 1, scope: !2245, file: !2246, line: 363, type: !2249)
!2245 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !2246, file: !2246, line: 363, type: !2247, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2246 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!103, !2249}
!2249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2250 = !DILocation(line: 363, column: 74, scope: !2245, inlinedAt: !2251)
!2251 = distinct !DILocation(line: 116, column: 46, scope: !2243)
!2252 = !DILocalVariable(name: "t", arg: 1, scope: !2243, file: !3, line: 62, type: !1846)
!2253 = !DILocation(line: 62, column: 51, scope: !2243)
!2254 = !DILocalVariable(name: "led_cdev", scope: !2243, file: !3, line: 64, type: !2079)
!2255 = !DILocation(line: 64, column: 23, scope: !2243)
!2256 = !DILocalVariable(name: "__mptr", scope: !2257, file: !3, line: 64, type: !106)
!2257 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 64, column: 34)
!2258 = !DILocation(line: 64, column: 34, scope: !2257)
!2259 = !DILocation(line: 64, column: 34, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2257, file: !3, line: 64, column: 34)
!2261 = !DILocalVariable(name: "brightness", scope: !2243, file: !3, line: 65, type: !103)
!2262 = !DILocation(line: 65, column: 16, scope: !2243)
!2263 = !DILocalVariable(name: "delay", scope: !2243, file: !3, line: 66, type: !103)
!2264 = !DILocation(line: 66, column: 16, scope: !2243)
!2265 = !DILocation(line: 68, column: 7, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 68, column: 6)
!2267 = !DILocation(line: 68, column: 17, scope: !2266)
!2268 = !DILocation(line: 68, column: 32, scope: !2266)
!2269 = !DILocation(line: 68, column: 36, scope: !2266)
!2270 = !DILocation(line: 68, column: 46, scope: !2266)
!2271 = !DILocation(line: 68, column: 6, scope: !2243)
!2272 = !DILocation(line: 69, column: 30, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 68, column: 63)
!2274 = !DILocation(line: 69, column: 3, scope: !2273)
!2275 = !DILocation(line: 70, column: 28, scope: !2273)
!2276 = !DILocation(line: 70, column: 38, scope: !2273)
!2277 = !DILocation(line: 70, column: 3, scope: !2273)
!2278 = !DILocation(line: 71, column: 3, scope: !2273)
!2279 = !DILocation(line: 75, column: 12, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 74, column: 6)
!2281 = !DILocation(line: 75, column: 22, scope: !2280)
!2282 = !DILocation(line: 74, column: 6, scope: !2280)
!2283 = !DILocation(line: 74, column: 6, scope: !2243)
!2284 = !DILocation(line: 76, column: 28, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 75, column: 35)
!2286 = !DILocation(line: 76, column: 38, scope: !2285)
!2287 = !DILocation(line: 76, column: 3, scope: !2285)
!2288 = !DILocation(line: 77, column: 3, scope: !2285)
!2289 = !DILocation(line: 80, column: 34, scope: !2243)
!2290 = !DILocation(line: 80, column: 15, scope: !2243)
!2291 = !DILocation(line: 80, column: 13, scope: !2243)
!2292 = !DILocation(line: 81, column: 7, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 81, column: 6)
!2294 = !DILocation(line: 81, column: 6, scope: !2243)
!2295 = !DILocation(line: 84, column: 7, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !3, line: 83, column: 7)
!2297 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 81, column: 19)
!2298 = !DILocation(line: 84, column: 17, scope: !2296)
!2299 = !DILocation(line: 83, column: 7, scope: !2296)
!2300 = !DILocation(line: 83, column: 7, scope: !2297)
!2301 = !DILocation(line: 85, column: 17, scope: !2296)
!2302 = !DILocation(line: 85, column: 27, scope: !2296)
!2303 = !DILocation(line: 85, column: 15, scope: !2296)
!2304 = !DILocation(line: 85, column: 4, scope: !2296)
!2305 = !DILocation(line: 87, column: 17, scope: !2296)
!2306 = !DILocation(line: 87, column: 27, scope: !2296)
!2307 = !DILocation(line: 87, column: 15, scope: !2296)
!2308 = !DILocation(line: 88, column: 11, scope: !2297)
!2309 = !DILocation(line: 88, column: 21, scope: !2297)
!2310 = !DILocation(line: 88, column: 9, scope: !2297)
!2311 = !DILocation(line: 89, column: 2, scope: !2297)
!2312 = !DILocation(line: 93, column: 32, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 89, column: 9)
!2314 = !DILocation(line: 93, column: 3, scope: !2313)
!2315 = !DILocation(line: 93, column: 13, scope: !2313)
!2316 = !DILocation(line: 93, column: 30, scope: !2313)
!2317 = !DILocation(line: 94, column: 14, scope: !2313)
!2318 = !DILocation(line: 95, column: 11, scope: !2313)
!2319 = !DILocation(line: 95, column: 21, scope: !2313)
!2320 = !DILocation(line: 95, column: 9, scope: !2313)
!2321 = !DILocation(line: 98, column: 29, scope: !2243)
!2322 = !DILocation(line: 98, column: 39, scope: !2243)
!2323 = !DILocation(line: 98, column: 2, scope: !2243)
!2324 = !DILocation(line: 104, column: 35, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 104, column: 6)
!2326 = !DILocation(line: 104, column: 45, scope: !2325)
!2327 = !DILocation(line: 104, column: 6, scope: !2325)
!2328 = !DILocation(line: 104, column: 6, scope: !2243)
!2329 = !DILocation(line: 105, column: 35, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !3, line: 105, column: 7)
!2331 = distinct !DILexicalBlock(scope: !2325, file: !3, line: 104, column: 58)
!2332 = !DILocation(line: 105, column: 45, scope: !2330)
!2333 = !DILocation(line: 105, column: 7, scope: !2330)
!2334 = !DILocation(line: 105, column: 7, scope: !2331)
!2335 = !DILocation(line: 106, column: 8, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2337, file: !3, line: 106, column: 8)
!2337 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 105, column: 58)
!2338 = !DILocation(line: 106, column: 8, scope: !2337)
!2339 = !DILocation(line: 108, column: 7, scope: !2336)
!2340 = !DILocation(line: 108, column: 17, scope: !2336)
!2341 = !DILocation(line: 107, column: 5, scope: !2336)
!2342 = !DILocation(line: 109, column: 3, scope: !2337)
!2343 = !DILocation(line: 110, column: 9, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !3, line: 110, column: 8)
!2345 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 109, column: 10)
!2346 = !DILocation(line: 110, column: 8, scope: !2345)
!2347 = !DILocation(line: 112, column: 7, scope: !2344)
!2348 = !DILocation(line: 112, column: 17, scope: !2344)
!2349 = !DILocation(line: 111, column: 5, scope: !2344)
!2350 = !DILocation(line: 114, column: 2, scope: !2331)
!2351 = !DILocation(line: 116, column: 13, scope: !2243)
!2352 = !DILocation(line: 116, column: 23, scope: !2243)
!2353 = !DILocation(line: 116, column: 36, scope: !2243)
!2354 = !DILocation(line: 116, column: 63, scope: !2243)
!2355 = !DILocation(line: 365, column: 27, scope: !2356, inlinedAt: !2251)
!2356 = distinct !DILexicalBlock(scope: !2245, file: !2246, line: 365, column: 6)
!2357 = !DILocation(line: 365, column: 6, scope: !2356, inlinedAt: !2251)
!2358 = !DILocation(line: 365, column: 6, scope: !2245, inlinedAt: !2251)
!2359 = !DILocation(line: 366, column: 12, scope: !2360, inlinedAt: !2251)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !2246, line: 366, column: 7)
!2361 = distinct !DILexicalBlock(scope: !2356, file: !2246, line: 365, column: 31)
!2362 = !DILocation(line: 366, column: 14, scope: !2360, inlinedAt: !2251)
!2363 = !DILocation(line: 366, column: 7, scope: !2361, inlinedAt: !2251)
!2364 = !DILocation(line: 367, column: 4, scope: !2360, inlinedAt: !2251)
!2365 = !DILocation(line: 368, column: 28, scope: !2361, inlinedAt: !2251)
!2366 = !DILocation(line: 368, column: 10, scope: !2361, inlinedAt: !2251)
!2367 = !DILocation(line: 368, column: 3, scope: !2361, inlinedAt: !2251)
!2368 = !DILocation(line: 370, column: 29, scope: !2369, inlinedAt: !2251)
!2369 = distinct !DILexicalBlock(scope: !2356, file: !2246, line: 369, column: 9)
!2370 = !DILocation(line: 370, column: 10, scope: !2369, inlinedAt: !2251)
!2371 = !DILocation(line: 370, column: 3, scope: !2369, inlinedAt: !2251)
!2372 = !DILocation(line: 372, column: 1, scope: !2245, inlinedAt: !2251)
!2373 = !DILocation(line: 116, column: 44, scope: !2243)
!2374 = !DILocation(line: 116, column: 2, scope: !2243)
!2375 = !DILocation(line: 117, column: 1, scope: !2243)
!2376 = distinct !DISubprogram(name: "led_blink_set", scope: !3, file: !3, line: 199, type: !2377, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{null, !2079, !2103, !2103}
!2379 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2376, file: !3, line: 199, type: !2079)
!2380 = !DILocation(line: 199, column: 41, scope: !2376)
!2381 = !DILocalVariable(name: "delay_on", arg: 2, scope: !2376, file: !3, line: 200, type: !2103)
!2382 = !DILocation(line: 200, column: 21, scope: !2376)
!2383 = !DILocalVariable(name: "delay_off", arg: 3, scope: !2376, file: !3, line: 201, type: !2103)
!2384 = !DILocation(line: 201, column: 21, scope: !2376)
!2385 = !DILocation(line: 203, column: 2, scope: !2376)
!2386 = !DILocation(line: 205, column: 27, scope: !2376)
!2387 = !DILocation(line: 205, column: 37, scope: !2376)
!2388 = !DILocation(line: 205, column: 2, scope: !2376)
!2389 = !DILocation(line: 206, column: 32, scope: !2376)
!2390 = !DILocation(line: 206, column: 42, scope: !2376)
!2391 = !DILocation(line: 206, column: 2, scope: !2376)
!2392 = !DILocation(line: 207, column: 37, scope: !2376)
!2393 = !DILocation(line: 207, column: 47, scope: !2376)
!2394 = !DILocation(line: 207, column: 2, scope: !2376)
!2395 = !DILocation(line: 209, column: 18, scope: !2376)
!2396 = !DILocation(line: 209, column: 28, scope: !2376)
!2397 = !DILocation(line: 209, column: 38, scope: !2376)
!2398 = !DILocation(line: 209, column: 2, scope: !2376)
!2399 = !DILocation(line: 210, column: 1, scope: !2376)
!2400 = distinct !DISubprogram(name: "clear_bit", scope: !2401, file: !2401, line: 39, type: !2402, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2401 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!2402 = !DISubroutineType(types: !2403)
!2403 = !{null, !59, !2404}
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !103)
!2406 = !DILocalVariable(name: "nr", arg: 1, scope: !2407, file: !2408, line: 72, type: !59)
!2407 = distinct !DISubprogram(name: "arch_clear_bit", scope: !2408, file: !2408, line: 72, type: !2402, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2408 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2409 = !DILocation(line: 72, column: 21, scope: !2407, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 42, column: 2, scope: !2400)
!2411 = !DILocalVariable(name: "addr", arg: 2, scope: !2407, file: !2408, line: 72, type: !2404)
!2412 = !DILocation(line: 72, column: 49, scope: !2407, inlinedAt: !2410)
!2413 = !DILocalVariable(name: "v", arg: 1, scope: !2414, file: !2415, line: 84, type: !2418)
!2414 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !2415, file: !2415, line: 84, type: !2416, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2415 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!2416 = !DISubroutineType(types: !2417)
!2417 = !{null, !2418, !266}
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2420)
!2420 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2421 = !DILocation(line: 84, column: 74, scope: !2414, inlinedAt: !2422)
!2422 = distinct !DILocation(line: 41, column: 2, scope: !2400)
!2423 = !DILocalVariable(name: "size", arg: 2, scope: !2414, file: !2415, line: 84, type: !266)
!2424 = !DILocation(line: 84, column: 84, scope: !2414, inlinedAt: !2422)
!2425 = !DILocalVariable(name: "nr", arg: 1, scope: !2400, file: !2401, line: 39, type: !59)
!2426 = !DILocation(line: 39, column: 35, scope: !2400)
!2427 = !DILocalVariable(name: "addr", arg: 2, scope: !2400, file: !2401, line: 39, type: !2404)
!2428 = !DILocation(line: 39, column: 63, scope: !2400)
!2429 = !DILocation(line: 41, column: 26, scope: !2400)
!2430 = !DILocation(line: 41, column: 33, scope: !2400)
!2431 = !DILocation(line: 41, column: 31, scope: !2400)
!2432 = !DILocation(line: 86, column: 20, scope: !2414, inlinedAt: !2422)
!2433 = !DILocation(line: 86, column: 23, scope: !2414, inlinedAt: !2422)
!2434 = !DILocation(line: 86, column: 2, scope: !2414, inlinedAt: !2422)
!2435 = !DILocation(line: 87, column: 2, scope: !2414, inlinedAt: !2422)
!2436 = !DILocation(line: 42, column: 17, scope: !2400)
!2437 = !DILocation(line: 42, column: 21, scope: !2400)
!2438 = !DILocation(line: 74, column: 27, scope: !2439, inlinedAt: !2410)
!2439 = distinct !DILexicalBlock(scope: !2407, file: !2408, line: 74, column: 6)
!2440 = !DILocation(line: 74, column: 6, scope: !2439, inlinedAt: !2410)
!2441 = !DILocation(line: 74, column: 6, scope: !2407, inlinedAt: !2410)
!2442 = !DILocation(line: 76, column: 6, scope: !2443, inlinedAt: !2410)
!2443 = distinct !DILexicalBlock(scope: !2439, file: !2408, line: 74, column: 32)
!2444 = !DILocation(line: 77, column: 13, scope: !2443, inlinedAt: !2410)
!2445 = !DILocation(line: 77, column: 12, scope: !2443, inlinedAt: !2410)
!2446 = !DILocation(line: 75, column: 3, scope: !2443, inlinedAt: !2410)
!2447 = !{i32 -2147199219}
!2448 = !DILocation(line: 78, column: 2, scope: !2443, inlinedAt: !2410)
!2449 = !DILocation(line: 80, column: 8, scope: !2450, inlinedAt: !2410)
!2450 = distinct !DILexicalBlock(scope: !2439, file: !2408, line: 78, column: 9)
!2451 = !DILocation(line: 80, column: 32, scope: !2450, inlinedAt: !2410)
!2452 = !DILocation(line: 79, column: 3, scope: !2450, inlinedAt: !2410)
!2453 = !{i32 -2147199087}
!2454 = !DILocation(line: 43, column: 1, scope: !2400)
!2455 = distinct !DISubprogram(name: "led_blink_setup", scope: !3, file: !3, line: 175, type: !2377, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2456 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2455, file: !3, line: 175, type: !2079)
!2457 = !DILocation(line: 175, column: 50, scope: !2455)
!2458 = !DILocalVariable(name: "delay_on", arg: 2, scope: !2455, file: !3, line: 176, type: !2103)
!2459 = !DILocation(line: 176, column: 23, scope: !2455)
!2460 = !DILocalVariable(name: "delay_off", arg: 3, scope: !2455, file: !3, line: 177, type: !2103)
!2461 = !DILocation(line: 177, column: 23, scope: !2455)
!2462 = !DILocation(line: 179, column: 36, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 179, column: 6)
!2464 = !DILocation(line: 179, column: 46, scope: !2463)
!2465 = !DILocation(line: 179, column: 7, scope: !2463)
!2466 = !DILocation(line: 179, column: 58, scope: !2463)
!2467 = !DILocation(line: 180, column: 6, scope: !2463)
!2468 = !DILocation(line: 180, column: 16, scope: !2463)
!2469 = !DILocation(line: 180, column: 26, scope: !2463)
!2470 = !DILocation(line: 181, column: 7, scope: !2463)
!2471 = !DILocation(line: 181, column: 17, scope: !2463)
!2472 = !DILocation(line: 181, column: 27, scope: !2463)
!2473 = !DILocation(line: 181, column: 37, scope: !2463)
!2474 = !DILocation(line: 181, column: 47, scope: !2463)
!2475 = !DILocation(line: 179, column: 6, scope: !2455)
!2476 = !DILocation(line: 182, column: 3, scope: !2463)
!2477 = !DILocation(line: 185, column: 8, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 185, column: 6)
!2479 = !DILocation(line: 185, column: 7, scope: !2478)
!2480 = !DILocation(line: 185, column: 17, scope: !2478)
!2481 = !DILocation(line: 185, column: 22, scope: !2478)
!2482 = !DILocation(line: 185, column: 21, scope: !2478)
!2483 = !DILocation(line: 185, column: 6, scope: !2455)
!2484 = !DILocation(line: 186, column: 16, scope: !2478)
!2485 = !DILocation(line: 186, column: 26, scope: !2478)
!2486 = !DILocation(line: 186, column: 4, scope: !2478)
!2487 = !DILocation(line: 186, column: 13, scope: !2478)
!2488 = !DILocation(line: 186, column: 3, scope: !2478)
!2489 = !DILocation(line: 188, column: 25, scope: !2455)
!2490 = !DILocation(line: 188, column: 36, scope: !2455)
!2491 = !DILocation(line: 188, column: 35, scope: !2455)
!2492 = !DILocation(line: 188, column: 47, scope: !2455)
!2493 = !DILocation(line: 188, column: 46, scope: !2455)
!2494 = !DILocation(line: 188, column: 2, scope: !2455)
!2495 = !DILocation(line: 189, column: 1, scope: !2455)
!2496 = distinct !DISubprogram(name: "led_blink_set_oneshot", scope: !3, file: !3, line: 213, type: !2497, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{null, !2079, !2103, !2103, !204}
!2499 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2496, file: !3, line: 213, type: !2079)
!2500 = !DILocation(line: 213, column: 49, scope: !2496)
!2501 = !DILocalVariable(name: "delay_on", arg: 2, scope: !2496, file: !3, line: 214, type: !2103)
!2502 = !DILocation(line: 214, column: 22, scope: !2496)
!2503 = !DILocalVariable(name: "delay_off", arg: 3, scope: !2496, file: !3, line: 215, type: !2103)
!2504 = !DILocation(line: 215, column: 22, scope: !2496)
!2505 = !DILocalVariable(name: "invert", arg: 4, scope: !2496, file: !3, line: 216, type: !204)
!2506 = !DILocation(line: 216, column: 11, scope: !2496)
!2507 = !DILocation(line: 218, column: 35, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 218, column: 6)
!2509 = !DILocation(line: 218, column: 45, scope: !2508)
!2510 = !DILocation(line: 218, column: 6, scope: !2508)
!2511 = !DILocation(line: 218, column: 57, scope: !2508)
!2512 = !DILocation(line: 219, column: 22, scope: !2508)
!2513 = !DILocation(line: 219, column: 32, scope: !2508)
!2514 = !DILocation(line: 219, column: 7, scope: !2508)
!2515 = !DILocation(line: 218, column: 6, scope: !2496)
!2516 = !DILocation(line: 220, column: 3, scope: !2508)
!2517 = !DILocation(line: 222, column: 30, scope: !2496)
!2518 = !DILocation(line: 222, column: 40, scope: !2496)
!2519 = !DILocation(line: 222, column: 2, scope: !2496)
!2520 = !DILocation(line: 223, column: 37, scope: !2496)
!2521 = !DILocation(line: 223, column: 47, scope: !2496)
!2522 = !DILocation(line: 223, column: 2, scope: !2496)
!2523 = !DILocation(line: 225, column: 6, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 225, column: 6)
!2525 = !DILocation(line: 225, column: 6, scope: !2496)
!2526 = !DILocation(line: 226, column: 30, scope: !2524)
!2527 = !DILocation(line: 226, column: 40, scope: !2524)
!2528 = !DILocation(line: 226, column: 3, scope: !2524)
!2529 = !DILocation(line: 228, column: 32, scope: !2524)
!2530 = !DILocation(line: 228, column: 42, scope: !2524)
!2531 = !DILocation(line: 228, column: 3, scope: !2524)
!2532 = !DILocation(line: 230, column: 18, scope: !2496)
!2533 = !DILocation(line: 230, column: 28, scope: !2496)
!2534 = !DILocation(line: 230, column: 38, scope: !2496)
!2535 = !DILocation(line: 230, column: 2, scope: !2496)
!2536 = !DILocation(line: 231, column: 1, scope: !2496)
!2537 = distinct !DISubprogram(name: "test_bit", scope: !2538, file: !2538, line: 132, type: !2539, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2538 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!145, !59, !2541}
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2405)
!2543 = !DILocalVariable(name: "nr", arg: 1, scope: !2544, file: !2408, line: 210, type: !59)
!2544 = distinct !DISubprogram(name: "variable_test_bit", scope: !2408, file: !2408, line: 210, type: !2539, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2545 = !DILocation(line: 210, column: 52, scope: !2544, inlinedAt: !2546)
!2546 = distinct !DILocation(line: 135, column: 9, scope: !2537)
!2547 = !DILocalVariable(name: "addr", arg: 2, scope: !2544, file: !2408, line: 210, type: !2541)
!2548 = !DILocation(line: 210, column: 86, scope: !2544, inlinedAt: !2546)
!2549 = !DILocalVariable(name: "oldbit", scope: !2544, file: !2408, line: 212, type: !145)
!2550 = !DILocation(line: 212, column: 7, scope: !2544, inlinedAt: !2546)
!2551 = !DILocalVariable(name: "nr", arg: 1, scope: !2552, file: !2408, line: 204, type: !59)
!2552 = distinct !DISubprogram(name: "constant_test_bit", scope: !2408, file: !2408, line: 204, type: !2539, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2553 = !DILocation(line: 204, column: 52, scope: !2552, inlinedAt: !2554)
!2554 = distinct !DILocation(line: 135, column: 9, scope: !2537)
!2555 = !DILocalVariable(name: "addr", arg: 2, scope: !2552, file: !2408, line: 204, type: !2541)
!2556 = !DILocation(line: 204, column: 86, scope: !2552, inlinedAt: !2554)
!2557 = !DILocalVariable(name: "v", arg: 1, scope: !2558, file: !2415, line: 69, type: !2418)
!2558 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2415, file: !2415, line: 69, type: !2416, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2559 = !DILocation(line: 69, column: 73, scope: !2558, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 134, column: 2, scope: !2537)
!2561 = !DILocalVariable(name: "size", arg: 2, scope: !2558, file: !2415, line: 69, type: !266)
!2562 = !DILocation(line: 69, column: 83, scope: !2558, inlinedAt: !2560)
!2563 = !DILocalVariable(name: "nr", arg: 1, scope: !2537, file: !2538, line: 132, type: !59)
!2564 = !DILocation(line: 132, column: 34, scope: !2537)
!2565 = !DILocalVariable(name: "addr", arg: 2, scope: !2537, file: !2538, line: 132, type: !2541)
!2566 = !DILocation(line: 132, column: 68, scope: !2537)
!2567 = !DILocation(line: 134, column: 25, scope: !2537)
!2568 = !DILocation(line: 134, column: 32, scope: !2537)
!2569 = !DILocation(line: 134, column: 30, scope: !2537)
!2570 = !DILocation(line: 71, column: 19, scope: !2558, inlinedAt: !2560)
!2571 = !DILocation(line: 71, column: 22, scope: !2558, inlinedAt: !2560)
!2572 = !DILocation(line: 71, column: 2, scope: !2558, inlinedAt: !2560)
!2573 = !DILocation(line: 72, column: 2, scope: !2558, inlinedAt: !2560)
!2574 = !DILocation(line: 135, column: 9, scope: !2537)
!2575 = !DILocation(line: 206, column: 19, scope: !2552, inlinedAt: !2554)
!2576 = !DILocation(line: 206, column: 22, scope: !2552, inlinedAt: !2554)
!2577 = !DILocation(line: 206, column: 15, scope: !2552, inlinedAt: !2554)
!2578 = !DILocation(line: 207, column: 4, scope: !2552, inlinedAt: !2554)
!2579 = !DILocation(line: 207, column: 9, scope: !2552, inlinedAt: !2554)
!2580 = !DILocation(line: 207, column: 12, scope: !2552, inlinedAt: !2554)
!2581 = !DILocation(line: 206, column: 44, scope: !2552, inlinedAt: !2554)
!2582 = !DILocation(line: 207, column: 37, scope: !2552, inlinedAt: !2554)
!2583 = !DILocation(line: 217, column: 33, scope: !2544, inlinedAt: !2546)
!2584 = !DILocation(line: 217, column: 46, scope: !2544, inlinedAt: !2546)
!2585 = !DILocation(line: 214, column: 2, scope: !2544, inlinedAt: !2546)
!2586 = !{i32 -2147190925, i32 -2147190865}
!2587 = !DILocation(line: 219, column: 9, scope: !2544, inlinedAt: !2546)
!2588 = !DILocation(line: 135, column: 2, scope: !2537)
!2589 = distinct !DISubprogram(name: "timer_pending", scope: !1838, file: !1838, line: 166, type: !2590, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!204, !2592}
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1837)
!2594 = !DILocalVariable(name: "timer", arg: 1, scope: !2589, file: !1838, line: 166, type: !2592)
!2595 = !DILocation(line: 166, column: 59, scope: !2589)
!2596 = !DILocation(line: 168, column: 35, scope: !2589)
!2597 = !DILocation(line: 168, column: 42, scope: !2589)
!2598 = !DILocation(line: 168, column: 10, scope: !2589)
!2599 = !DILocation(line: 168, column: 9, scope: !2589)
!2600 = !DILocation(line: 168, column: 2, scope: !2589)
!2601 = distinct !DISubprogram(name: "set_bit", scope: !2401, file: !2401, line: 26, type: !2402, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2602 = !DILocalVariable(name: "nr", arg: 1, scope: !2603, file: !2408, line: 52, type: !59)
!2603 = distinct !DISubprogram(name: "arch_set_bit", scope: !2408, file: !2408, line: 52, type: !2402, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2604 = !DILocation(line: 52, column: 19, scope: !2603, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 29, column: 2, scope: !2601)
!2606 = !DILocalVariable(name: "addr", arg: 2, scope: !2603, file: !2408, line: 52, type: !2404)
!2607 = !DILocation(line: 52, column: 47, scope: !2603, inlinedAt: !2605)
!2608 = !DILocation(line: 84, column: 74, scope: !2414, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 28, column: 2, scope: !2601)
!2610 = !DILocation(line: 84, column: 84, scope: !2414, inlinedAt: !2609)
!2611 = !DILocalVariable(name: "nr", arg: 1, scope: !2601, file: !2401, line: 26, type: !59)
!2612 = !DILocation(line: 26, column: 33, scope: !2601)
!2613 = !DILocalVariable(name: "addr", arg: 2, scope: !2601, file: !2401, line: 26, type: !2404)
!2614 = !DILocation(line: 26, column: 61, scope: !2601)
!2615 = !DILocation(line: 28, column: 26, scope: !2601)
!2616 = !DILocation(line: 28, column: 33, scope: !2601)
!2617 = !DILocation(line: 28, column: 31, scope: !2601)
!2618 = !DILocation(line: 86, column: 20, scope: !2414, inlinedAt: !2609)
!2619 = !DILocation(line: 86, column: 23, scope: !2414, inlinedAt: !2609)
!2620 = !DILocation(line: 86, column: 2, scope: !2414, inlinedAt: !2609)
!2621 = !DILocation(line: 87, column: 2, scope: !2414, inlinedAt: !2609)
!2622 = !DILocation(line: 29, column: 15, scope: !2601)
!2623 = !DILocation(line: 29, column: 19, scope: !2601)
!2624 = !DILocation(line: 54, column: 27, scope: !2625, inlinedAt: !2605)
!2625 = distinct !DILexicalBlock(scope: !2603, file: !2408, line: 54, column: 6)
!2626 = !DILocation(line: 54, column: 6, scope: !2625, inlinedAt: !2605)
!2627 = !DILocation(line: 54, column: 6, scope: !2603, inlinedAt: !2605)
!2628 = !DILocation(line: 56, column: 6, scope: !2629, inlinedAt: !2605)
!2629 = distinct !DILexicalBlock(scope: !2625, file: !2408, line: 54, column: 32)
!2630 = !DILocation(line: 57, column: 12, scope: !2629, inlinedAt: !2605)
!2631 = !DILocation(line: 55, column: 3, scope: !2629, inlinedAt: !2605)
!2632 = !{i32 -2147200173}
!2633 = !DILocation(line: 59, column: 2, scope: !2629, inlinedAt: !2605)
!2634 = !DILocation(line: 61, column: 8, scope: !2635, inlinedAt: !2605)
!2635 = distinct !DILexicalBlock(scope: !2625, file: !2408, line: 59, column: 9)
!2636 = !DILocation(line: 61, column: 32, scope: !2635, inlinedAt: !2605)
!2637 = !DILocation(line: 60, column: 3, scope: !2635, inlinedAt: !2605)
!2638 = !{i32 -2147200041}
!2639 = !DILocation(line: 30, column: 1, scope: !2601)
!2640 = distinct !DISubprogram(name: "led_stop_software_blink", scope: !3, file: !3, line: 234, type: !2128, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2641 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2640, file: !3, line: 234, type: !2079)
!2642 = !DILocation(line: 234, column: 51, scope: !2640)
!2643 = !DILocation(line: 236, column: 2, scope: !2640)
!2644 = !DILocation(line: 237, column: 2, scope: !2640)
!2645 = !DILocation(line: 237, column: 12, scope: !2640)
!2646 = !DILocation(line: 237, column: 27, scope: !2640)
!2647 = !DILocation(line: 238, column: 2, scope: !2640)
!2648 = !DILocation(line: 238, column: 12, scope: !2640)
!2649 = !DILocation(line: 238, column: 28, scope: !2640)
!2650 = !DILocation(line: 239, column: 27, scope: !2640)
!2651 = !DILocation(line: 239, column: 37, scope: !2640)
!2652 = !DILocation(line: 239, column: 2, scope: !2640)
!2653 = !DILocation(line: 240, column: 1, scope: !2640)
!2654 = distinct !DISubprogram(name: "led_set_brightness", scope: !3, file: !3, line: 243, type: !2089, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2655 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2654, file: !3, line: 243, type: !2079)
!2656 = !DILocation(line: 243, column: 46, scope: !2654)
!2657 = !DILocalVariable(name: "brightness", arg: 2, scope: !2654, file: !3, line: 244, type: !5)
!2658 = !DILocation(line: 244, column: 24, scope: !2654)
!2659 = !DILocation(line: 250, column: 30, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 250, column: 6)
!2661 = !DILocation(line: 250, column: 40, scope: !2660)
!2662 = !DILocation(line: 250, column: 6, scope: !2660)
!2663 = !DILocation(line: 250, column: 6, scope: !2654)
!2664 = !DILocation(line: 256, column: 7, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 256, column: 7)
!2666 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 250, column: 53)
!2667 = !DILocation(line: 256, column: 18, scope: !2665)
!2668 = !DILocation(line: 256, column: 7, scope: !2666)
!2669 = !DILocation(line: 257, column: 32, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 256, column: 30)
!2671 = !DILocation(line: 257, column: 42, scope: !2670)
!2672 = !DILocation(line: 257, column: 4, scope: !2670)
!2673 = !DILocation(line: 258, column: 19, scope: !2670)
!2674 = !DILocation(line: 258, column: 29, scope: !2670)
!2675 = !DILocation(line: 258, column: 4, scope: !2670)
!2676 = !DILocation(line: 259, column: 3, scope: !2670)
!2677 = !DILocation(line: 261, column: 6, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 259, column: 10)
!2679 = !DILocation(line: 261, column: 16, scope: !2678)
!2680 = !DILocation(line: 260, column: 4, scope: !2678)
!2681 = !DILocation(line: 262, column: 37, scope: !2678)
!2682 = !DILocation(line: 262, column: 4, scope: !2678)
!2683 = !DILocation(line: 262, column: 14, scope: !2678)
!2684 = !DILocation(line: 262, column: 35, scope: !2678)
!2685 = !DILocation(line: 264, column: 3, scope: !2666)
!2686 = !DILocation(line: 267, column: 29, scope: !2654)
!2687 = !DILocation(line: 267, column: 39, scope: !2654)
!2688 = !DILocation(line: 267, column: 2, scope: !2654)
!2689 = !DILocation(line: 268, column: 1, scope: !2654)
!2690 = distinct !DISubprogram(name: "schedule_work", scope: !58, file: !58, line: 566, type: !2691, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!145, !1389}
!2693 = !DILocalVariable(name: "work", arg: 1, scope: !2690, file: !58, line: 566, type: !1389)
!2694 = !DILocation(line: 566, column: 54, scope: !2690)
!2695 = !DILocation(line: 568, column: 20, scope: !2690)
!2696 = !DILocation(line: 568, column: 31, scope: !2690)
!2697 = !DILocation(line: 568, column: 9, scope: !2690)
!2698 = !DILocation(line: 568, column: 2, scope: !2690)
!2699 = distinct !DISubprogram(name: "led_set_brightness_nosleep", scope: !3, file: !3, line: 284, type: !2089, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2700 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2699, file: !3, line: 284, type: !2079)
!2701 = !DILocation(line: 284, column: 54, scope: !2699)
!2702 = !DILocalVariable(name: "value", arg: 2, scope: !2699, file: !3, line: 285, type: !5)
!2703 = !DILocation(line: 285, column: 25, scope: !2699)
!2704 = !DILocalVariable(name: "__UNIQUE_ID___x163", scope: !2705, file: !3, line: 287, type: !5)
!2705 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 287, column: 25)
!2706 = !DILocation(line: 287, column: 25, scope: !2705)
!2707 = !DILocalVariable(name: "__UNIQUE_ID___y164", scope: !2705, file: !3, line: 287, type: !5)
!2708 = !DILocation(line: 287, column: 2, scope: !2699)
!2709 = !DILocation(line: 287, column: 12, scope: !2699)
!2710 = !DILocation(line: 287, column: 23, scope: !2699)
!2711 = !DILocation(line: 289, column: 6, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 289, column: 6)
!2713 = !DILocation(line: 289, column: 16, scope: !2712)
!2714 = !DILocation(line: 289, column: 22, scope: !2712)
!2715 = !DILocation(line: 289, column: 6, scope: !2699)
!2716 = !DILocation(line: 290, column: 3, scope: !2712)
!2717 = !DILocation(line: 292, column: 26, scope: !2699)
!2718 = !DILocation(line: 292, column: 36, scope: !2699)
!2719 = !DILocation(line: 292, column: 46, scope: !2699)
!2720 = !DILocation(line: 292, column: 2, scope: !2699)
!2721 = !DILocation(line: 293, column: 1, scope: !2699)
!2722 = distinct !DISubprogram(name: "led_set_brightness_nopm", scope: !3, file: !3, line: 271, type: !2089, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2723 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2722, file: !3, line: 271, type: !2079)
!2724 = !DILocation(line: 271, column: 51, scope: !2722)
!2725 = !DILocalVariable(name: "value", arg: 2, scope: !2722, file: !3, line: 272, type: !5)
!2726 = !DILocation(line: 272, column: 30, scope: !2722)
!2727 = !DILocation(line: 275, column: 28, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 275, column: 6)
!2729 = !DILocation(line: 275, column: 38, scope: !2728)
!2730 = !DILocation(line: 275, column: 7, scope: !2728)
!2731 = !DILocation(line: 275, column: 6, scope: !2722)
!2732 = !DILocation(line: 276, column: 3, scope: !2728)
!2733 = !DILocation(line: 279, column: 32, scope: !2722)
!2734 = !DILocation(line: 279, column: 2, scope: !2722)
!2735 = !DILocation(line: 279, column: 12, scope: !2722)
!2736 = !DILocation(line: 279, column: 30, scope: !2722)
!2737 = !DILocation(line: 280, column: 17, scope: !2722)
!2738 = !DILocation(line: 280, column: 27, scope: !2722)
!2739 = !DILocation(line: 280, column: 2, scope: !2722)
!2740 = !DILocation(line: 281, column: 1, scope: !2722)
!2741 = distinct !DISubprogram(name: "__led_set_brightness", scope: !3, file: !3, line: 42, type: !2093, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2742 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2741, file: !3, line: 42, type: !2079)
!2743 = !DILocation(line: 42, column: 54, scope: !2741)
!2744 = !DILocalVariable(name: "value", arg: 2, scope: !2741, file: !3, line: 43, type: !5)
!2745 = !DILocation(line: 43, column: 25, scope: !2741)
!2746 = !DILocation(line: 45, column: 7, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 45, column: 6)
!2748 = !DILocation(line: 45, column: 17, scope: !2747)
!2749 = !DILocation(line: 45, column: 6, scope: !2741)
!2750 = !DILocation(line: 46, column: 3, scope: !2747)
!2751 = !DILocation(line: 48, column: 2, scope: !2741)
!2752 = !DILocation(line: 48, column: 12, scope: !2741)
!2753 = !DILocation(line: 48, column: 27, scope: !2741)
!2754 = !DILocation(line: 48, column: 37, scope: !2741)
!2755 = !DILocation(line: 50, column: 2, scope: !2741)
!2756 = !DILocation(line: 51, column: 1, scope: !2741)
!2757 = distinct !DISubprogram(name: "led_set_brightness_sync", scope: !3, file: !3, line: 296, type: !2093, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2758 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2757, file: !3, line: 296, type: !2079)
!2759 = !DILocation(line: 296, column: 50, scope: !2757)
!2760 = !DILocalVariable(name: "value", arg: 2, scope: !2757, file: !3, line: 297, type: !5)
!2761 = !DILocation(line: 297, column: 28, scope: !2757)
!2762 = !DILocation(line: 299, column: 6, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 299, column: 6)
!2764 = !DILocation(line: 299, column: 16, scope: !2763)
!2765 = !DILocation(line: 299, column: 31, scope: !2763)
!2766 = !DILocation(line: 299, column: 34, scope: !2763)
!2767 = !DILocation(line: 299, column: 44, scope: !2763)
!2768 = !DILocation(line: 299, column: 6, scope: !2757)
!2769 = !DILocation(line: 300, column: 3, scope: !2763)
!2770 = !DILocalVariable(name: "__UNIQUE_ID___x165", scope: !2771, file: !3, line: 302, type: !5)
!2771 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 302, column: 25)
!2772 = !DILocation(line: 302, column: 25, scope: !2771)
!2773 = !DILocalVariable(name: "__UNIQUE_ID___y166", scope: !2771, file: !3, line: 302, type: !5)
!2774 = !DILocation(line: 302, column: 2, scope: !2757)
!2775 = !DILocation(line: 302, column: 12, scope: !2757)
!2776 = !DILocation(line: 302, column: 23, scope: !2757)
!2777 = !DILocation(line: 304, column: 6, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 304, column: 6)
!2779 = !DILocation(line: 304, column: 16, scope: !2778)
!2780 = !DILocation(line: 304, column: 22, scope: !2778)
!2781 = !DILocation(line: 304, column: 6, scope: !2757)
!2782 = !DILocation(line: 305, column: 3, scope: !2778)
!2783 = !DILocation(line: 307, column: 39, scope: !2757)
!2784 = !DILocation(line: 307, column: 49, scope: !2757)
!2785 = !DILocation(line: 307, column: 59, scope: !2757)
!2786 = !DILocation(line: 307, column: 9, scope: !2757)
!2787 = !DILocation(line: 307, column: 2, scope: !2757)
!2788 = !DILocation(line: 308, column: 1, scope: !2757)
!2789 = distinct !DISubprogram(name: "__led_set_brightness_blocking", scope: !3, file: !3, line: 53, type: !2093, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2790 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2789, file: !3, line: 53, type: !2079)
!2791 = !DILocation(line: 53, column: 63, scope: !2789)
!2792 = !DILocalVariable(name: "value", arg: 2, scope: !2789, file: !3, line: 54, type: !5)
!2793 = !DILocation(line: 54, column: 27, scope: !2789)
!2794 = !DILocation(line: 56, column: 7, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 56, column: 6)
!2796 = !DILocation(line: 56, column: 17, scope: !2795)
!2797 = !DILocation(line: 56, column: 6, scope: !2789)
!2798 = !DILocation(line: 57, column: 3, scope: !2795)
!2799 = !DILocation(line: 59, column: 9, scope: !2789)
!2800 = !DILocation(line: 59, column: 19, scope: !2789)
!2801 = !DILocation(line: 59, column: 43, scope: !2789)
!2802 = !DILocation(line: 59, column: 53, scope: !2789)
!2803 = !DILocation(line: 59, column: 2, scope: !2789)
!2804 = !DILocation(line: 60, column: 1, scope: !2789)
!2805 = distinct !DISubprogram(name: "led_update_brightness", scope: !3, file: !3, line: 311, type: !2115, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2806 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2805, file: !3, line: 311, type: !2079)
!2807 = !DILocation(line: 311, column: 48, scope: !2805)
!2808 = !DILocalVariable(name: "ret", scope: !2805, file: !3, line: 313, type: !204)
!2809 = !DILocation(line: 313, column: 6, scope: !2805)
!2810 = !DILocation(line: 315, column: 6, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2805, file: !3, line: 315, column: 6)
!2812 = !DILocation(line: 315, column: 16, scope: !2811)
!2813 = !DILocation(line: 315, column: 6, scope: !2805)
!2814 = !DILocation(line: 316, column: 9, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 315, column: 32)
!2816 = !DILocation(line: 316, column: 19, scope: !2815)
!2817 = !DILocation(line: 316, column: 34, scope: !2815)
!2818 = !DILocation(line: 316, column: 7, scope: !2815)
!2819 = !DILocation(line: 317, column: 7, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2815, file: !3, line: 317, column: 7)
!2821 = !DILocation(line: 317, column: 11, scope: !2820)
!2822 = !DILocation(line: 317, column: 7, scope: !2815)
!2823 = !DILocation(line: 318, column: 27, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 317, column: 17)
!2825 = !DILocation(line: 318, column: 4, scope: !2824)
!2826 = !DILocation(line: 318, column: 14, scope: !2824)
!2827 = !DILocation(line: 318, column: 25, scope: !2824)
!2828 = !DILocation(line: 319, column: 4, scope: !2824)
!2829 = !DILocation(line: 321, column: 2, scope: !2815)
!2830 = !DILocation(line: 323, column: 9, scope: !2805)
!2831 = !DILocation(line: 323, column: 2, scope: !2805)
!2832 = !DILocation(line: 324, column: 1, scope: !2805)
!2833 = distinct !DISubprogram(name: "led_get_default_pattern", scope: !3, file: !3, line: 327, type: !2834, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!688, !2079, !2836}
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2837 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2833, file: !3, line: 327, type: !2079)
!2838 = !DILocation(line: 327, column: 51, scope: !2833)
!2839 = !DILocalVariable(name: "size", arg: 2, scope: !2833, file: !3, line: 327, type: !2836)
!2840 = !DILocation(line: 327, column: 75, scope: !2833)
!2841 = !DILocalVariable(name: "fwnode", scope: !2833, file: !3, line: 329, type: !127)
!2842 = !DILocation(line: 329, column: 24, scope: !2833)
!2843 = !DILocation(line: 329, column: 33, scope: !2833)
!2844 = !DILocation(line: 329, column: 43, scope: !2833)
!2845 = !DILocation(line: 329, column: 48, scope: !2833)
!2846 = !DILocalVariable(name: "pattern", scope: !2833, file: !3, line: 330, type: !688)
!2847 = !DILocation(line: 330, column: 7, scope: !2833)
!2848 = !DILocalVariable(name: "count", scope: !2833, file: !3, line: 331, type: !204)
!2849 = !DILocation(line: 331, column: 6, scope: !2833)
!2850 = !DILocation(line: 333, column: 36, scope: !2833)
!2851 = !DILocation(line: 333, column: 10, scope: !2833)
!2852 = !DILocation(line: 333, column: 8, scope: !2833)
!2853 = !DILocation(line: 334, column: 6, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 334, column: 6)
!2855 = !DILocation(line: 334, column: 12, scope: !2854)
!2856 = !DILocation(line: 334, column: 6, scope: !2833)
!2857 = !DILocation(line: 335, column: 3, scope: !2854)
!2858 = !DILocation(line: 337, column: 20, scope: !2833)
!2859 = !DILocation(line: 337, column: 12, scope: !2833)
!2860 = !DILocation(line: 337, column: 10, scope: !2833)
!2861 = !DILocation(line: 338, column: 7, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 338, column: 6)
!2863 = !DILocation(line: 338, column: 6, scope: !2833)
!2864 = !DILocation(line: 339, column: 3, scope: !2862)
!2865 = !DILocation(line: 341, column: 37, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 341, column: 6)
!2867 = !DILocation(line: 341, column: 60, scope: !2866)
!2868 = !DILocation(line: 341, column: 69, scope: !2866)
!2869 = !DILocation(line: 341, column: 6, scope: !2866)
!2870 = !DILocation(line: 341, column: 6, scope: !2833)
!2871 = !DILocation(line: 342, column: 9, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2866, file: !3, line: 341, column: 77)
!2873 = !DILocation(line: 342, column: 3, scope: !2872)
!2874 = !DILocation(line: 343, column: 3, scope: !2872)
!2875 = !DILocation(line: 346, column: 10, scope: !2833)
!2876 = !DILocation(line: 346, column: 3, scope: !2833)
!2877 = !DILocation(line: 346, column: 8, scope: !2833)
!2878 = !DILocation(line: 348, column: 9, scope: !2833)
!2879 = !DILocation(line: 348, column: 2, scope: !2833)
!2880 = !DILocation(line: 349, column: 1, scope: !2833)
!2881 = distinct !DISubprogram(name: "fwnode_property_count_u32", scope: !2882, file: !2882, line: 221, type: !2883, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2882 = !DIFile(filename: "./include/linux/property.h", directory: "/home/lizy2001/genbc/linux")
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!204, !147, !112}
!2885 = !DILocalVariable(name: "fwnode", arg: 1, scope: !2881, file: !2882, line: 221, type: !147)
!2886 = !DILocation(line: 221, column: 73, scope: !2881)
!2887 = !DILocalVariable(name: "propname", arg: 2, scope: !2881, file: !2882, line: 222, type: !112)
!2888 = !DILocation(line: 222, column: 22, scope: !2881)
!2889 = !DILocation(line: 224, column: 40, scope: !2881)
!2890 = !DILocation(line: 224, column: 48, scope: !2881)
!2891 = !DILocation(line: 224, column: 9, scope: !2881)
!2892 = !DILocation(line: 224, column: 2, scope: !2881)
!2893 = distinct !DISubprogram(name: "kcalloc", scope: !96, file: !96, line: 601, type: !2894, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!106, !266, !266, !104}
!2896 = !DILocalVariable(name: "n", arg: 1, scope: !2893, file: !96, line: 601, type: !266)
!2897 = !DILocation(line: 601, column: 36, scope: !2893)
!2898 = !DILocalVariable(name: "size", arg: 2, scope: !2893, file: !96, line: 601, type: !266)
!2899 = !DILocation(line: 601, column: 46, scope: !2893)
!2900 = !DILocalVariable(name: "flags", arg: 3, scope: !2893, file: !96, line: 601, type: !104)
!2901 = !DILocation(line: 601, column: 58, scope: !2893)
!2902 = !DILocation(line: 603, column: 23, scope: !2893)
!2903 = !DILocation(line: 603, column: 26, scope: !2893)
!2904 = !DILocation(line: 603, column: 32, scope: !2893)
!2905 = !DILocation(line: 603, column: 38, scope: !2893)
!2906 = !DILocation(line: 603, column: 9, scope: !2893)
!2907 = !DILocation(line: 603, column: 2, scope: !2893)
!2908 = distinct !DISubprogram(name: "led_sysfs_disable", scope: !3, file: !3, line: 353, type: !2128, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2909 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2908, file: !3, line: 353, type: !2079)
!2910 = !DILocation(line: 353, column: 45, scope: !2908)
!2911 = !DILocation(line: 355, column: 2, scope: !2908)
!2912 = !DILocation(line: 355, column: 2, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 355, column: 2)
!2914 = !DILocation(line: 357, column: 2, scope: !2908)
!2915 = !DILocation(line: 357, column: 12, scope: !2908)
!2916 = !DILocation(line: 357, column: 18, scope: !2908)
!2917 = !DILocation(line: 358, column: 1, scope: !2908)
!2918 = distinct !DISubprogram(name: "led_sysfs_enable", scope: !3, file: !3, line: 362, type: !2128, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2919 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2918, file: !3, line: 362, type: !2079)
!2920 = !DILocation(line: 362, column: 44, scope: !2918)
!2921 = !DILocation(line: 364, column: 2, scope: !2918)
!2922 = !DILocation(line: 364, column: 2, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 364, column: 2)
!2924 = !DILocation(line: 366, column: 2, scope: !2918)
!2925 = !DILocation(line: 366, column: 12, scope: !2918)
!2926 = !DILocation(line: 366, column: 18, scope: !2918)
!2927 = !DILocation(line: 367, column: 1, scope: !2918)
!2928 = distinct !DISubprogram(name: "led_compose_name", scope: !3, file: !3, line: 421, type: !2929, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!204, !1640, !2931, !220}
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_init_data", file: !6, line: 36, size: 256, elements: !2933)
!2933 = !{!2934, !2935, !2936, !2937}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2932, file: !6, line: 38, baseType: !127, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "default_label", scope: !2932, file: !6, line: 45, baseType: !112, size: 64, offset: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "devicename", scope: !2932, file: !6, line: 51, baseType: !112, size: 64, offset: 128)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "devname_mandatory", scope: !2932, file: !6, line: 57, baseType: !145, size: 8, offset: 192)
!2938 = !DILocalVariable(name: "dev", arg: 1, scope: !2928, file: !3, line: 421, type: !1640)
!2939 = !DILocation(line: 421, column: 37, scope: !2928)
!2940 = !DILocalVariable(name: "init_data", arg: 2, scope: !2928, file: !3, line: 421, type: !2931)
!2941 = !DILocation(line: 421, column: 64, scope: !2928)
!2942 = !DILocalVariable(name: "led_classdev_name", arg: 3, scope: !2928, file: !3, line: 422, type: !220)
!2943 = !DILocation(line: 422, column: 14, scope: !2928)
!2944 = !DILocalVariable(name: "props", scope: !2928, file: !3, line: 424, type: !2945)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_properties", file: !6, line: 498, size: 256, elements: !2946)
!2946 = !{!2947, !2948, !2949, !2950, !2951, !2952}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !2945, file: !6, line: 499, baseType: !117, size: 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "color_present", scope: !2945, file: !6, line: 500, baseType: !145, size: 8, offset: 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2945, file: !6, line: 501, baseType: !112, size: 64, offset: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "func_enum", scope: !2945, file: !6, line: 502, baseType: !117, size: 32, offset: 128)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "func_enum_present", scope: !2945, file: !6, line: 503, baseType: !145, size: 8, offset: 160)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !2945, file: !6, line: 504, baseType: !112, size: 64, offset: 192)
!2953 = !DILocation(line: 424, column: 24, scope: !2928)
!2954 = !DILocalVariable(name: "fwnode", scope: !2928, file: !3, line: 425, type: !127)
!2955 = !DILocation(line: 425, column: 24, scope: !2928)
!2956 = !DILocation(line: 425, column: 33, scope: !2928)
!2957 = !DILocation(line: 425, column: 44, scope: !2928)
!2958 = !DILocalVariable(name: "devicename", scope: !2928, file: !3, line: 426, type: !112)
!2959 = !DILocation(line: 426, column: 14, scope: !2928)
!2960 = !DILocation(line: 426, column: 27, scope: !2928)
!2961 = !DILocation(line: 426, column: 38, scope: !2928)
!2962 = !DILocation(line: 430, column: 2, scope: !2928)
!2963 = !DILocation(line: 430, column: 2, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !3, line: 430, column: 2)
!2965 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 430, column: 2)
!2966 = !DILocation(line: 430, column: 2, scope: !2965)
!2967 = !DILocation(line: 430, column: 2, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 430, column: 2)
!2969 = !DILocation(line: 430, column: 2, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2968, file: !3, line: 430, column: 2)
!2971 = !DILocation(line: 430, column: 2, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2968, file: !3, line: 430, column: 2)
!2973 = !{i32 -2143403361, i32 -2143403332, i32 -2143403286, i32 -2143403228, i32 -2143403174, i32 -2143403120, i32 -2143403065, i32 -2143403034}
!2974 = !DILocation(line: 430, column: 2, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 430, column: 2)
!2976 = distinct !DILexicalBlock(scope: !2968, file: !3, line: 430, column: 2)
!2977 = !{i32 -2143402588, i32 -2143402581, i32 -2143402527, i32 -2143402496, i32 -2143402466}
!2978 = !DILocation(line: 430, column: 2, scope: !2976)
!2979 = !DILocation(line: 432, column: 7, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 432, column: 6)
!2981 = !DILocation(line: 432, column: 6, scope: !2928)
!2982 = !DILocation(line: 433, column: 3, scope: !2980)
!2983 = !DILocation(line: 435, column: 25, scope: !2928)
!2984 = !DILocation(line: 435, column: 30, scope: !2928)
!2985 = !DILocation(line: 435, column: 2, scope: !2928)
!2986 = !DILocation(line: 437, column: 12, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 437, column: 6)
!2988 = !DILocation(line: 437, column: 6, scope: !2987)
!2989 = !DILocation(line: 437, column: 6, scope: !2928)
!2990 = !DILocation(line: 444, column: 8, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !3, line: 444, column: 7)
!2992 = distinct !DILexicalBlock(scope: !2987, file: !3, line: 437, column: 19)
!2993 = !DILocation(line: 444, column: 7, scope: !2992)
!2994 = !DILocation(line: 445, column: 12, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2991, file: !3, line: 444, column: 20)
!2996 = !DILocation(line: 445, column: 37, scope: !2995)
!2997 = !DILocation(line: 445, column: 4, scope: !2995)
!2998 = !DILocation(line: 447, column: 3, scope: !2995)
!2999 = !DILocation(line: 448, column: 13, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2991, file: !3, line: 447, column: 10)
!3001 = !DILocation(line: 449, column: 6, scope: !3000)
!3002 = !DILocation(line: 449, column: 24, scope: !3000)
!3003 = !DILocation(line: 448, column: 4, scope: !3000)
!3004 = !DILocation(line: 451, column: 2, scope: !2992)
!3005 = !DILocation(line: 451, column: 19, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2987, file: !3, line: 451, column: 13)
!3007 = !DILocation(line: 451, column: 13, scope: !3006)
!3008 = !DILocation(line: 451, column: 28, scope: !3006)
!3009 = !DILocation(line: 451, column: 37, scope: !3006)
!3010 = !DILocation(line: 451, column: 13, scope: !2987)
!3011 = !DILocalVariable(name: "tmp_buf", scope: !3012, file: !3, line: 452, type: !3013)
!3012 = distinct !DILexicalBlock(scope: !3006, file: !3, line: 451, column: 52)
!3013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 512, elements: !225)
!3014 = !DILocation(line: 452, column: 8, scope: !3012)
!3015 = !DILocation(line: 454, column: 13, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3012, file: !3, line: 454, column: 7)
!3017 = !DILocation(line: 454, column: 7, scope: !3012)
!3018 = !DILocation(line: 455, column: 13, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3016, file: !3, line: 454, column: 32)
!3020 = !DILocation(line: 456, column: 12, scope: !3019)
!3021 = !DILocation(line: 456, column: 6, scope: !3019)
!3022 = !DILocation(line: 456, column: 45, scope: !3019)
!3023 = !DILocation(line: 456, column: 28, scope: !3019)
!3024 = !DILocation(line: 457, column: 12, scope: !3019)
!3025 = !DILocation(line: 457, column: 6, scope: !3019)
!3026 = !DILocation(line: 457, column: 34, scope: !3019)
!3027 = !DILocation(line: 455, column: 4, scope: !3019)
!3028 = !DILocation(line: 458, column: 3, scope: !3019)
!3029 = !DILocation(line: 459, column: 13, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3016, file: !3, line: 458, column: 10)
!3031 = !DILocation(line: 460, column: 12, scope: !3030)
!3032 = !DILocation(line: 460, column: 6, scope: !3030)
!3033 = !DILocation(line: 460, column: 45, scope: !3030)
!3034 = !DILocation(line: 460, column: 28, scope: !3030)
!3035 = !DILocation(line: 461, column: 12, scope: !3030)
!3036 = !DILocation(line: 461, column: 6, scope: !3030)
!3037 = !DILocation(line: 459, column: 4, scope: !3030)
!3038 = !DILocation(line: 463, column: 7, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3012, file: !3, line: 463, column: 7)
!3040 = !DILocation(line: 463, column: 18, scope: !3039)
!3041 = !DILocation(line: 463, column: 7, scope: !3012)
!3042 = !DILocation(line: 464, column: 13, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 463, column: 37)
!3044 = !DILocation(line: 465, column: 6, scope: !3043)
!3045 = !DILocation(line: 465, column: 18, scope: !3043)
!3046 = !DILocation(line: 464, column: 4, scope: !3043)
!3047 = !DILocation(line: 466, column: 3, scope: !3043)
!3048 = !DILocation(line: 467, column: 12, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 466, column: 10)
!3050 = !DILocation(line: 467, column: 31, scope: !3049)
!3051 = !DILocation(line: 467, column: 4, scope: !3049)
!3052 = !DILocation(line: 470, column: 2, scope: !3012)
!3053 = !DILocation(line: 470, column: 13, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3006, file: !3, line: 470, column: 13)
!3055 = !DILocation(line: 470, column: 24, scope: !3054)
!3056 = !DILocation(line: 470, column: 13, scope: !3006)
!3057 = !DILocation(line: 471, column: 8, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !3, line: 471, column: 7)
!3059 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 470, column: 39)
!3060 = !DILocation(line: 471, column: 7, scope: !3059)
!3061 = !DILocation(line: 472, column: 4, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 471, column: 20)
!3063 = !DILocation(line: 473, column: 4, scope: !3062)
!3064 = !DILocation(line: 475, column: 12, scope: !3059)
!3065 = !DILocation(line: 476, column: 5, scope: !3059)
!3066 = !DILocation(line: 476, column: 17, scope: !3059)
!3067 = !DILocation(line: 476, column: 28, scope: !3059)
!3068 = !DILocation(line: 475, column: 3, scope: !3059)
!3069 = !DILocation(line: 477, column: 2, scope: !3059)
!3070 = !DILocation(line: 477, column: 24, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 477, column: 13)
!3072 = !DILocation(line: 477, column: 13, scope: !3071)
!3073 = !DILocation(line: 477, column: 13, scope: !3054)
!3074 = !DILocation(line: 478, column: 11, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3071, file: !3, line: 477, column: 33)
!3076 = !DILocalVariable(name: "__to_of_node_fwnode", scope: !3077, file: !3, line: 478, type: !127)
!3077 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 478, column: 30)
!3078 = !DILocation(line: 478, column: 30, scope: !3077)
!3079 = !DILocalVariable(name: "__mptr", scope: !3080, file: !3, line: 478, type: !106)
!3080 = distinct !DILexicalBlock(scope: !3077, file: !3, line: 478, column: 30)
!3081 = !DILocation(line: 478, column: 30, scope: !3080)
!3082 = !DILocation(line: 478, column: 30, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 478, column: 30)
!3084 = !DILocation(line: 478, column: 50, scope: !3075)
!3085 = !DILocation(line: 478, column: 3, scope: !3075)
!3086 = !DILocation(line: 480, column: 2, scope: !3075)
!3087 = !DILocation(line: 481, column: 3, scope: !3071)
!3088 = !DILocation(line: 483, column: 2, scope: !2928)
!3089 = !DILocation(line: 484, column: 1, scope: !2928)
!3090 = distinct !DISubprogram(name: "led_parse_fwnode_props", scope: !3, file: !3, line: 370, type: !3091, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{null, !1640, !127, !3093}
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!3094 = !DILocalVariable(name: "dev", arg: 1, scope: !3090, file: !3, line: 370, type: !1640)
!3095 = !DILocation(line: 370, column: 51, scope: !3090)
!3096 = !DILocalVariable(name: "fwnode", arg: 2, scope: !3090, file: !3, line: 371, type: !127)
!3097 = !DILocation(line: 371, column: 30, scope: !3090)
!3098 = !DILocalVariable(name: "props", arg: 3, scope: !3090, file: !3, line: 372, type: !3093)
!3099 = !DILocation(line: 372, column: 31, scope: !3090)
!3100 = !DILocalVariable(name: "ret", scope: !3090, file: !3, line: 374, type: !204)
!3101 = !DILocation(line: 374, column: 6, scope: !3090)
!3102 = !DILocation(line: 376, column: 7, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 376, column: 6)
!3104 = !DILocation(line: 376, column: 6, scope: !3090)
!3105 = !DILocation(line: 377, column: 3, scope: !3103)
!3106 = !DILocation(line: 379, column: 30, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 379, column: 6)
!3108 = !DILocation(line: 379, column: 6, scope: !3107)
!3109 = !DILocation(line: 379, column: 6, scope: !3090)
!3110 = !DILocation(line: 380, column: 37, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 379, column: 48)
!3112 = !DILocation(line: 380, column: 55, scope: !3111)
!3113 = !DILocation(line: 380, column: 62, scope: !3111)
!3114 = !DILocation(line: 380, column: 9, scope: !3111)
!3115 = !DILocation(line: 380, column: 7, scope: !3111)
!3116 = !DILocation(line: 381, column: 7, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3111, file: !3, line: 381, column: 7)
!3118 = !DILocation(line: 381, column: 7, scope: !3111)
!3119 = !DILocation(line: 382, column: 4, scope: !3117)
!3120 = !DILocation(line: 383, column: 3, scope: !3111)
!3121 = !DILocation(line: 386, column: 30, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 386, column: 6)
!3123 = !DILocation(line: 386, column: 6, scope: !3122)
!3124 = !DILocation(line: 386, column: 6, scope: !3090)
!3125 = !DILocation(line: 387, column: 34, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 386, column: 48)
!3127 = !DILocation(line: 387, column: 52, scope: !3126)
!3128 = !DILocation(line: 387, column: 59, scope: !3126)
!3129 = !DILocation(line: 387, column: 9, scope: !3126)
!3130 = !DILocation(line: 387, column: 7, scope: !3126)
!3131 = !DILocation(line: 388, column: 7, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 388, column: 7)
!3133 = !DILocation(line: 388, column: 7, scope: !3126)
!3134 = !DILocation(line: 389, column: 4, scope: !3132)
!3135 = !DILocation(line: 390, column: 12, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3132, file: !3, line: 390, column: 12)
!3137 = !DILocation(line: 390, column: 19, scope: !3136)
!3138 = !DILocation(line: 390, column: 25, scope: !3136)
!3139 = !DILocation(line: 390, column: 12, scope: !3132)
!3140 = !DILocation(line: 391, column: 4, scope: !3136)
!3141 = !DILocation(line: 393, column: 4, scope: !3136)
!3142 = !DILocation(line: 393, column: 11, scope: !3136)
!3143 = !DILocation(line: 393, column: 25, scope: !3136)
!3144 = !DILocation(line: 394, column: 2, scope: !3126)
!3145 = !DILocation(line: 397, column: 31, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 397, column: 6)
!3147 = !DILocation(line: 397, column: 7, scope: !3146)
!3148 = !DILocation(line: 397, column: 6, scope: !3090)
!3149 = !DILocation(line: 398, column: 3, scope: !3146)
!3150 = !DILocation(line: 400, column: 36, scope: !3090)
!3151 = !DILocation(line: 400, column: 57, scope: !3090)
!3152 = !DILocation(line: 400, column: 64, scope: !3090)
!3153 = !DILocation(line: 400, column: 8, scope: !3090)
!3154 = !DILocation(line: 400, column: 6, scope: !3090)
!3155 = !DILocation(line: 401, column: 6, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 401, column: 6)
!3157 = !DILocation(line: 401, column: 6, scope: !3090)
!3158 = !DILocation(line: 402, column: 3, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 401, column: 11)
!3160 = !DILocation(line: 405, column: 2, scope: !3159)
!3161 = !DILocation(line: 407, column: 31, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 407, column: 6)
!3163 = !DILocation(line: 407, column: 7, scope: !3162)
!3164 = !DILocation(line: 407, column: 6, scope: !3090)
!3165 = !DILocation(line: 408, column: 3, scope: !3162)
!3166 = !DILocation(line: 410, column: 33, scope: !3090)
!3167 = !DILocation(line: 411, column: 13, scope: !3090)
!3168 = !DILocation(line: 411, column: 20, scope: !3090)
!3169 = !DILocation(line: 410, column: 8, scope: !3090)
!3170 = !DILocation(line: 410, column: 6, scope: !3090)
!3171 = !DILocation(line: 412, column: 6, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 412, column: 6)
!3173 = !DILocation(line: 412, column: 6, scope: !3090)
!3174 = !DILocation(line: 413, column: 3, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3172, file: !3, line: 412, column: 11)
!3176 = !DILocation(line: 416, column: 2, scope: !3175)
!3177 = !DILocation(line: 417, column: 3, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3172, file: !3, line: 416, column: 9)
!3179 = !DILocation(line: 417, column: 10, scope: !3178)
!3180 = !DILocation(line: 417, column: 28, scope: !3178)
!3181 = !DILocation(line: 419, column: 1, scope: !3090)
!3182 = distinct !DISubprogram(name: "is_of_node", scope: !109, file: !109, line: 155, type: !143, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!3183 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3182, file: !109, line: 155, type: !147)
!3184 = !DILocation(line: 155, column: 59, scope: !3182)
!3185 = !DILocation(line: 157, column: 25, scope: !3182)
!3186 = !DILocation(line: 157, column: 10, scope: !3182)
!3187 = !DILocation(line: 157, column: 33, scope: !3182)
!3188 = !DILocation(line: 157, column: 36, scope: !3182)
!3189 = !DILocation(line: 157, column: 44, scope: !3182)
!3190 = !DILocation(line: 157, column: 48, scope: !3182)
!3191 = !DILocation(line: 0, scope: !3182)
!3192 = !DILocation(line: 157, column: 2, scope: !3182)
!3193 = distinct !DISubprogram(name: "test_and_clear_bit", scope: !2401, file: !2401, line: 81, type: !3194, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!145, !59, !2404}
!3196 = !DILocalVariable(name: "nr", arg: 1, scope: !3197, file: !2408, line: 160, type: !59)
!3197 = distinct !DISubprogram(name: "arch_test_and_clear_bit", scope: !2408, file: !2408, line: 160, type: !3194, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!3198 = !DILocation(line: 160, column: 30, scope: !3197, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 84, column: 9, scope: !3193)
!3200 = !DILocalVariable(name: "addr", arg: 2, scope: !3197, file: !2408, line: 160, type: !2404)
!3201 = !DILocation(line: 160, column: 58, scope: !3197, inlinedAt: !3199)
!3202 = !DILocalVariable(name: "c", scope: !3203, file: !2408, line: 162, type: !145)
!3203 = distinct !DILexicalBlock(scope: !3197, file: !2408, line: 162, column: 9)
!3204 = !DILocation(line: 162, column: 9, scope: !3203, inlinedAt: !3199)
!3205 = !DILocalVariable(name: "v", arg: 1, scope: !3206, file: !2415, line: 99, type: !2418)
!3206 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !2415, file: !2415, line: 99, type: !2416, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!3207 = !DILocation(line: 99, column: 79, scope: !3206, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 83, column: 2, scope: !3193)
!3209 = !DILocalVariable(name: "size", arg: 2, scope: !3206, file: !2415, line: 99, type: !266)
!3210 = !DILocation(line: 99, column: 89, scope: !3206, inlinedAt: !3208)
!3211 = !DILocalVariable(name: "nr", arg: 1, scope: !3193, file: !2401, line: 81, type: !59)
!3212 = !DILocation(line: 81, column: 44, scope: !3193)
!3213 = !DILocalVariable(name: "addr", arg: 2, scope: !3193, file: !2401, line: 81, type: !2404)
!3214 = !DILocation(line: 81, column: 72, scope: !3193)
!3215 = !DILocation(line: 83, column: 31, scope: !3193)
!3216 = !DILocation(line: 83, column: 38, scope: !3193)
!3217 = !DILocation(line: 83, column: 36, scope: !3193)
!3218 = !DILocation(line: 101, column: 20, scope: !3206, inlinedAt: !3208)
!3219 = !DILocation(line: 101, column: 23, scope: !3206, inlinedAt: !3208)
!3220 = !DILocation(line: 101, column: 2, scope: !3206, inlinedAt: !3208)
!3221 = !DILocation(line: 102, column: 2, scope: !3206, inlinedAt: !3208)
!3222 = !DILocation(line: 84, column: 33, scope: !3193)
!3223 = !DILocation(line: 84, column: 37, scope: !3193)
!3224 = !{i32 -2147193775, i32 -2147193679}
!3225 = !DILocation(line: 84, column: 2, scope: !3193)
!3226 = distinct !DISubprogram(name: "kasan_check_write", scope: !3227, file: !3227, line: 38, type: !3228, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!3227 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!145, !2418, !7}
!3230 = !DILocalVariable(name: "p", arg: 1, scope: !3226, file: !3227, line: 38, type: !2418)
!3231 = !DILocation(line: 38, column: 59, scope: !3226)
!3232 = !DILocalVariable(name: "size", arg: 2, scope: !3226, file: !3227, line: 38, type: !7)
!3233 = !DILocation(line: 38, column: 75, scope: !3226)
!3234 = !DILocation(line: 40, column: 2, scope: !3226)
!3235 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3236, file: !3236, line: 178, type: !3237, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!3236 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3237 = !DISubroutineType(types: !3238)
!3238 = !{null, !2418, !266, !204}
!3239 = !DILocalVariable(name: "ptr", arg: 1, scope: !3235, file: !3236, line: 178, type: !2418)
!3240 = !DILocation(line: 178, column: 60, scope: !3235)
!3241 = !DILocalVariable(name: "size", arg: 2, scope: !3235, file: !3236, line: 178, type: !266)
!3242 = !DILocation(line: 178, column: 72, scope: !3235)
!3243 = !DILocalVariable(name: "type", arg: 3, scope: !3235, file: !3236, line: 179, type: !204)
!3244 = !DILocation(line: 179, column: 15, scope: !3235)
!3245 = !DILocation(line: 179, column: 23, scope: !3235)
!3246 = distinct !DISubprogram(name: "led_get_brightness", scope: !3247, file: !3247, line: 15, type: !2115, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!3247 = !DIFile(filename: "drivers/leds/leds.h", directory: "/home/lizy2001/genbc/linux")
!3248 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !3246, file: !3247, line: 15, type: !2079)
!3249 = !DILocation(line: 15, column: 59, scope: !3246)
!3250 = !DILocation(line: 17, column: 9, scope: !3246)
!3251 = !DILocation(line: 17, column: 19, scope: !3246)
!3252 = !DILocation(line: 17, column: 2, scope: !3246)
!3253 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !2246, file: !2246, line: 308, type: !2247, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!3254 = !DILocalVariable(name: "m", arg: 1, scope: !3253, file: !2246, line: 308, type: !2249)
!3255 = !DILocation(line: 308, column: 66, scope: !3253)
!3256 = !DILocation(line: 310, column: 10, scope: !3253)
!3257 = !DILocation(line: 310, column: 12, scope: !3253)
!3258 = !DILocation(line: 310, column: 34, scope: !3253)
!3259 = !DILocation(line: 310, column: 39, scope: !3253)
!3260 = !DILocation(line: 310, column: 2, scope: !3253)
!3261 = distinct !DISubprogram(name: "led_set_software_blink", scope: !3, file: !3, line: 142, type: !3262, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{null, !2079, !103, !103}
!3264 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !3261, file: !3, line: 142, type: !2079)
!3265 = !DILocation(line: 142, column: 57, scope: !3261)
!3266 = !DILocalVariable(name: "delay_on", arg: 2, scope: !3261, file: !3, line: 143, type: !103)
!3267 = !DILocation(line: 143, column: 22, scope: !3261)
!3268 = !DILocalVariable(name: "delay_off", arg: 3, scope: !3261, file: !3, line: 144, type: !103)
!3269 = !DILocation(line: 144, column: 22, scope: !3261)
!3270 = !DILocalVariable(name: "current_brightness", scope: !3261, file: !3, line: 146, type: !204)
!3271 = !DILocation(line: 146, column: 6, scope: !3261)
!3272 = !DILocation(line: 148, column: 42, scope: !3261)
!3273 = !DILocation(line: 148, column: 23, scope: !3261)
!3274 = !DILocation(line: 148, column: 21, scope: !3261)
!3275 = !DILocation(line: 149, column: 6, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3261, file: !3, line: 149, column: 6)
!3277 = !DILocation(line: 149, column: 6, scope: !3261)
!3278 = !DILocation(line: 150, column: 32, scope: !3276)
!3279 = !DILocation(line: 150, column: 3, scope: !3276)
!3280 = !DILocation(line: 150, column: 13, scope: !3276)
!3281 = !DILocation(line: 150, column: 30, scope: !3276)
!3282 = !DILocation(line: 151, column: 7, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3261, file: !3, line: 151, column: 6)
!3284 = !DILocation(line: 151, column: 17, scope: !3283)
!3285 = !DILocation(line: 151, column: 6, scope: !3261)
!3286 = !DILocation(line: 152, column: 32, scope: !3283)
!3287 = !DILocation(line: 152, column: 42, scope: !3283)
!3288 = !DILocation(line: 152, column: 3, scope: !3283)
!3289 = !DILocation(line: 152, column: 13, scope: !3283)
!3290 = !DILocation(line: 152, column: 30, scope: !3283)
!3291 = !DILocation(line: 154, column: 29, scope: !3261)
!3292 = !DILocation(line: 154, column: 2, scope: !3261)
!3293 = !DILocation(line: 154, column: 12, scope: !3261)
!3294 = !DILocation(line: 154, column: 27, scope: !3261)
!3295 = !DILocation(line: 155, column: 30, scope: !3261)
!3296 = !DILocation(line: 155, column: 2, scope: !3261)
!3297 = !DILocation(line: 155, column: 12, scope: !3261)
!3298 = !DILocation(line: 155, column: 28, scope: !3261)
!3299 = !DILocation(line: 158, column: 7, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3261, file: !3, line: 158, column: 6)
!3301 = !DILocation(line: 158, column: 6, scope: !3261)
!3302 = !DILocation(line: 159, column: 30, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 158, column: 17)
!3304 = !DILocation(line: 159, column: 3, scope: !3303)
!3305 = !DILocation(line: 160, column: 3, scope: !3303)
!3306 = !DILocation(line: 164, column: 7, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3261, file: !3, line: 164, column: 6)
!3308 = !DILocation(line: 164, column: 6, scope: !3261)
!3309 = !DILocation(line: 165, column: 30, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3307, file: !3, line: 164, column: 18)
!3311 = !DILocation(line: 166, column: 9, scope: !3310)
!3312 = !DILocation(line: 166, column: 19, scope: !3310)
!3313 = !DILocation(line: 165, column: 3, scope: !3310)
!3314 = !DILocation(line: 167, column: 3, scope: !3310)
!3315 = !DILocation(line: 170, column: 25, scope: !3261)
!3316 = !DILocation(line: 170, column: 35, scope: !3261)
!3317 = !DILocation(line: 170, column: 2, scope: !3261)
!3318 = !DILocation(line: 171, column: 13, scope: !3261)
!3319 = !DILocation(line: 171, column: 23, scope: !3261)
!3320 = !DILocation(line: 171, column: 36, scope: !3261)
!3321 = !DILocation(line: 171, column: 44, scope: !3261)
!3322 = !DILocation(line: 171, column: 2, scope: !3261)
!3323 = !DILocation(line: 172, column: 1, scope: !3261)
!3324 = distinct !DISubprogram(name: "kasan_check_read", scope: !3227, file: !3227, line: 34, type: !3228, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!3325 = !DILocalVariable(name: "p", arg: 1, scope: !3324, file: !3227, line: 34, type: !2418)
!3326 = !DILocation(line: 34, column: 58, scope: !3324)
!3327 = !DILocalVariable(name: "size", arg: 2, scope: !3324, file: !3227, line: 34, type: !7)
!3328 = !DILocation(line: 34, column: 74, scope: !3324)
!3329 = !DILocation(line: 36, column: 2, scope: !3324)
!3330 = distinct !DISubprogram(name: "hlist_unhashed_lockless", scope: !2170, file: !2170, line: 819, type: !3331, scopeLine: 820, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!204, !3333}
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !757)
!3335 = !DILocalVariable(name: "h", arg: 1, scope: !3330, file: !2170, line: 819, type: !3333)
!3336 = !DILocation(line: 819, column: 68, scope: !3330)
!3337 = !DILocation(line: 821, column: 10, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3330, file: !2170, line: 821, column: 10)
!3339 = !DILocation(line: 821, column: 10, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3338, file: !2170, line: 821, column: 10)
!3341 = !DILocation(line: 821, column: 9, scope: !3330)
!3342 = !DILocation(line: 821, column: 2, scope: !3330)
!3343 = distinct !DISubprogram(name: "queue_work", scope: !58, file: !58, line: 504, type: !3344, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!145, !3346, !1389}
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !58, line: 18, flags: DIFlagFwdDecl)
!3348 = !DILocalVariable(name: "wq", arg: 1, scope: !3343, file: !58, line: 504, type: !3346)
!3349 = !DILocation(line: 504, column: 56, scope: !3343)
!3350 = !DILocalVariable(name: "work", arg: 2, scope: !3343, file: !58, line: 505, type: !1389)
!3351 = !DILocation(line: 505, column: 30, scope: !3343)
!3352 = !DILocation(line: 507, column: 41, scope: !3343)
!3353 = !DILocation(line: 507, column: 45, scope: !3343)
!3354 = !DILocation(line: 507, column: 9, scope: !3343)
!3355 = !DILocation(line: 507, column: 2, scope: !3343)
!3356 = distinct !DISubprogram(name: "kmalloc_array", scope: !96, file: !96, line: 584, type: !2894, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!3357 = !DILocalVariable(name: "s", arg: 1, scope: !3358, file: !96, line: 445, type: !1105)
!3358 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !96, file: !96, line: 445, type: !3359, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!106, !1105, !104, !266}
!3361 = !DILocation(line: 445, column: 72, scope: !3358, inlinedAt: !3362)
!3362 = distinct !DILocation(line: 552, column: 10, scope: !3363, inlinedAt: !3368)
!3363 = distinct !DILexicalBlock(scope: !3364, file: !96, line: 540, column: 34)
!3364 = distinct !DILexicalBlock(scope: !3365, file: !96, line: 540, column: 6)
!3365 = distinct !DISubprogram(name: "kmalloc", scope: !96, file: !96, line: 538, type: !3366, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!106, !266, !104}
!3368 = distinct !DILocation(line: 591, column: 10, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3356, file: !96, line: 590, column: 6)
!3370 = !DILocalVariable(name: "flags", arg: 2, scope: !3358, file: !96, line: 446, type: !104)
!3371 = !DILocation(line: 446, column: 9, scope: !3358, inlinedAt: !3362)
!3372 = !DILocalVariable(name: "size", arg: 3, scope: !3358, file: !96, line: 446, type: !266)
!3373 = !DILocation(line: 446, column: 23, scope: !3358, inlinedAt: !3362)
!3374 = !DILocalVariable(name: "ret", scope: !3358, file: !96, line: 448, type: !106)
!3375 = !DILocation(line: 448, column: 8, scope: !3358, inlinedAt: !3362)
!3376 = !DILocalVariable(name: "flags", arg: 1, scope: !3377, file: !96, line: 318, type: !104)
!3377 = distinct !DISubprogram(name: "kmalloc_type", scope: !96, file: !96, line: 318, type: !3378, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!95, !104}
!3380 = !DILocation(line: 318, column: 67, scope: !3377, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 553, column: 20, scope: !3363, inlinedAt: !3368)
!3382 = !DILocalVariable(name: "size", arg: 1, scope: !3383, file: !96, line: 346, type: !266)
!3383 = distinct !DISubprogram(name: "kmalloc_index", scope: !96, file: !96, line: 346, type: !3384, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!7, !266}
!3386 = !DILocation(line: 346, column: 58, scope: !3383, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 547, column: 11, scope: !3363, inlinedAt: !3368)
!3388 = !DILocalVariable(name: "size", arg: 1, scope: !3389, file: !96, line: 472, type: !266)
!3389 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !96, file: !96, line: 472, type: !3390, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!106, !266, !104, !7}
!3392 = !DILocation(line: 472, column: 28, scope: !3389, inlinedAt: !3393)
!3393 = distinct !DILocation(line: 481, column: 9, scope: !3394, inlinedAt: !3395)
!3394 = distinct !DISubprogram(name: "kmalloc_large", scope: !96, file: !96, line: 478, type: !3366, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!3395 = distinct !DILocation(line: 545, column: 11, scope: !3396, inlinedAt: !3368)
!3396 = distinct !DILexicalBlock(scope: !3363, file: !96, line: 544, column: 7)
!3397 = !DILocalVariable(name: "flags", arg: 2, scope: !3389, file: !96, line: 472, type: !104)
!3398 = !DILocation(line: 472, column: 40, scope: !3389, inlinedAt: !3393)
!3399 = !DILocalVariable(name: "order", arg: 3, scope: !3389, file: !96, line: 472, type: !7)
!3400 = !DILocation(line: 472, column: 60, scope: !3389, inlinedAt: !3393)
!3401 = !DILocalVariable(name: "size", arg: 1, scope: !3394, file: !96, line: 478, type: !266)
!3402 = !DILocation(line: 478, column: 51, scope: !3394, inlinedAt: !3395)
!3403 = !DILocalVariable(name: "flags", arg: 2, scope: !3394, file: !96, line: 478, type: !104)
!3404 = !DILocation(line: 478, column: 63, scope: !3394, inlinedAt: !3395)
!3405 = !DILocalVariable(name: "order", scope: !3394, file: !96, line: 480, type: !7)
!3406 = !DILocation(line: 480, column: 15, scope: !3394, inlinedAt: !3395)
!3407 = !DILocalVariable(name: "size", arg: 1, scope: !3365, file: !96, line: 538, type: !266)
!3408 = !DILocation(line: 538, column: 45, scope: !3365, inlinedAt: !3368)
!3409 = !DILocalVariable(name: "flags", arg: 2, scope: !3365, file: !96, line: 538, type: !104)
!3410 = !DILocation(line: 538, column: 57, scope: !3365, inlinedAt: !3368)
!3411 = !DILocalVariable(name: "index", scope: !3363, file: !96, line: 542, type: !7)
!3412 = !DILocation(line: 542, column: 16, scope: !3363, inlinedAt: !3368)
!3413 = !DILocalVariable(name: "n", arg: 1, scope: !3356, file: !96, line: 584, type: !266)
!3414 = !DILocation(line: 584, column: 42, scope: !3356)
!3415 = !DILocalVariable(name: "size", arg: 2, scope: !3356, file: !96, line: 584, type: !266)
!3416 = !DILocation(line: 584, column: 52, scope: !3356)
!3417 = !DILocalVariable(name: "flags", arg: 3, scope: !3356, file: !96, line: 584, type: !104)
!3418 = !DILocation(line: 584, column: 64, scope: !3356)
!3419 = !DILocalVariable(name: "bytes", scope: !3356, file: !96, line: 586, type: !266)
!3420 = !DILocation(line: 586, column: 9, scope: !3356)
!3421 = !DILocalVariable(name: "__a", scope: !3422, file: !96, line: 588, type: !266)
!3422 = distinct !DILexicalBlock(scope: !3423, file: !96, line: 588, column: 6)
!3423 = distinct !DILexicalBlock(scope: !3356, file: !96, line: 588, column: 6)
!3424 = !DILocation(line: 588, column: 6, scope: !3422)
!3425 = !DILocalVariable(name: "__b", scope: !3422, file: !96, line: 588, type: !266)
!3426 = !DILocalVariable(name: "__d", scope: !3422, file: !96, line: 588, type: !3427)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!3428 = !DILocation(line: 588, column: 6, scope: !3423)
!3429 = !DILocation(line: 588, column: 6, scope: !3356)
!3430 = !DILocation(line: 589, column: 3, scope: !3423)
!3431 = !DILocation(line: 590, column: 27, scope: !3369)
!3432 = !DILocation(line: 590, column: 6, scope: !3369)
!3433 = !DILocation(line: 590, column: 30, scope: !3369)
!3434 = !DILocation(line: 590, column: 54, scope: !3369)
!3435 = !DILocation(line: 590, column: 33, scope: !3369)
!3436 = !DILocation(line: 590, column: 6, scope: !3356)
!3437 = !DILocation(line: 591, column: 18, scope: !3369)
!3438 = !DILocation(line: 591, column: 25, scope: !3369)
!3439 = !DILocation(line: 540, column: 27, scope: !3364, inlinedAt: !3368)
!3440 = !DILocation(line: 540, column: 6, scope: !3364, inlinedAt: !3368)
!3441 = !DILocation(line: 540, column: 6, scope: !3365, inlinedAt: !3368)
!3442 = !DILocation(line: 544, column: 7, scope: !3396, inlinedAt: !3368)
!3443 = !DILocation(line: 544, column: 12, scope: !3396, inlinedAt: !3368)
!3444 = !DILocation(line: 544, column: 7, scope: !3363, inlinedAt: !3368)
!3445 = !DILocation(line: 545, column: 25, scope: !3396, inlinedAt: !3368)
!3446 = !DILocation(line: 545, column: 31, scope: !3396, inlinedAt: !3368)
!3447 = !DILocation(line: 480, column: 33, scope: !3394, inlinedAt: !3395)
!3448 = !DILocation(line: 480, column: 23, scope: !3394, inlinedAt: !3395)
!3449 = !DILocation(line: 481, column: 29, scope: !3394, inlinedAt: !3395)
!3450 = !DILocation(line: 481, column: 35, scope: !3394, inlinedAt: !3395)
!3451 = !DILocation(line: 481, column: 42, scope: !3394, inlinedAt: !3395)
!3452 = !DILocation(line: 474, column: 23, scope: !3389, inlinedAt: !3393)
!3453 = !DILocation(line: 474, column: 29, scope: !3389, inlinedAt: !3393)
!3454 = !DILocation(line: 474, column: 36, scope: !3389, inlinedAt: !3393)
!3455 = !DILocation(line: 474, column: 9, scope: !3389, inlinedAt: !3393)
!3456 = !DILocation(line: 545, column: 4, scope: !3396, inlinedAt: !3368)
!3457 = !DILocation(line: 547, column: 25, scope: !3363, inlinedAt: !3368)
!3458 = !DILocation(line: 348, column: 7, scope: !3459, inlinedAt: !3387)
!3459 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 348, column: 6)
!3460 = !DILocation(line: 348, column: 6, scope: !3383, inlinedAt: !3387)
!3461 = !DILocation(line: 349, column: 3, scope: !3459, inlinedAt: !3387)
!3462 = !DILocation(line: 351, column: 6, scope: !3463, inlinedAt: !3387)
!3463 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 351, column: 6)
!3464 = !DILocation(line: 351, column: 11, scope: !3463, inlinedAt: !3387)
!3465 = !DILocation(line: 351, column: 6, scope: !3383, inlinedAt: !3387)
!3466 = !DILocation(line: 352, column: 3, scope: !3463, inlinedAt: !3387)
!3467 = !DILocation(line: 354, column: 32, scope: !3468, inlinedAt: !3387)
!3468 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 354, column: 6)
!3469 = !DILocation(line: 354, column: 37, scope: !3468, inlinedAt: !3387)
!3470 = !DILocation(line: 354, column: 42, scope: !3468, inlinedAt: !3387)
!3471 = !DILocation(line: 354, column: 45, scope: !3468, inlinedAt: !3387)
!3472 = !DILocation(line: 354, column: 50, scope: !3468, inlinedAt: !3387)
!3473 = !DILocation(line: 354, column: 6, scope: !3383, inlinedAt: !3387)
!3474 = !DILocation(line: 355, column: 3, scope: !3468, inlinedAt: !3387)
!3475 = !DILocation(line: 356, column: 32, scope: !3476, inlinedAt: !3387)
!3476 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 356, column: 6)
!3477 = !DILocation(line: 356, column: 37, scope: !3476, inlinedAt: !3387)
!3478 = !DILocation(line: 356, column: 43, scope: !3476, inlinedAt: !3387)
!3479 = !DILocation(line: 356, column: 46, scope: !3476, inlinedAt: !3387)
!3480 = !DILocation(line: 356, column: 51, scope: !3476, inlinedAt: !3387)
!3481 = !DILocation(line: 356, column: 6, scope: !3383, inlinedAt: !3387)
!3482 = !DILocation(line: 357, column: 3, scope: !3476, inlinedAt: !3387)
!3483 = !DILocation(line: 358, column: 6, scope: !3484, inlinedAt: !3387)
!3484 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 358, column: 6)
!3485 = !DILocation(line: 358, column: 11, scope: !3484, inlinedAt: !3387)
!3486 = !DILocation(line: 358, column: 6, scope: !3383, inlinedAt: !3387)
!3487 = !DILocation(line: 358, column: 26, scope: !3484, inlinedAt: !3387)
!3488 = !DILocation(line: 359, column: 6, scope: !3489, inlinedAt: !3387)
!3489 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 359, column: 6)
!3490 = !DILocation(line: 359, column: 11, scope: !3489, inlinedAt: !3387)
!3491 = !DILocation(line: 359, column: 6, scope: !3383, inlinedAt: !3387)
!3492 = !DILocation(line: 359, column: 26, scope: !3489, inlinedAt: !3387)
!3493 = !DILocation(line: 360, column: 6, scope: !3494, inlinedAt: !3387)
!3494 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 360, column: 6)
!3495 = !DILocation(line: 360, column: 11, scope: !3494, inlinedAt: !3387)
!3496 = !DILocation(line: 360, column: 6, scope: !3383, inlinedAt: !3387)
!3497 = !DILocation(line: 360, column: 26, scope: !3494, inlinedAt: !3387)
!3498 = !DILocation(line: 361, column: 6, scope: !3499, inlinedAt: !3387)
!3499 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 361, column: 6)
!3500 = !DILocation(line: 361, column: 11, scope: !3499, inlinedAt: !3387)
!3501 = !DILocation(line: 361, column: 6, scope: !3383, inlinedAt: !3387)
!3502 = !DILocation(line: 361, column: 26, scope: !3499, inlinedAt: !3387)
!3503 = !DILocation(line: 362, column: 6, scope: !3504, inlinedAt: !3387)
!3504 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 362, column: 6)
!3505 = !DILocation(line: 362, column: 11, scope: !3504, inlinedAt: !3387)
!3506 = !DILocation(line: 362, column: 6, scope: !3383, inlinedAt: !3387)
!3507 = !DILocation(line: 362, column: 26, scope: !3504, inlinedAt: !3387)
!3508 = !DILocation(line: 363, column: 6, scope: !3509, inlinedAt: !3387)
!3509 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 363, column: 6)
!3510 = !DILocation(line: 363, column: 11, scope: !3509, inlinedAt: !3387)
!3511 = !DILocation(line: 363, column: 6, scope: !3383, inlinedAt: !3387)
!3512 = !DILocation(line: 363, column: 26, scope: !3509, inlinedAt: !3387)
!3513 = !DILocation(line: 364, column: 6, scope: !3514, inlinedAt: !3387)
!3514 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 364, column: 6)
!3515 = !DILocation(line: 364, column: 11, scope: !3514, inlinedAt: !3387)
!3516 = !DILocation(line: 364, column: 6, scope: !3383, inlinedAt: !3387)
!3517 = !DILocation(line: 364, column: 26, scope: !3514, inlinedAt: !3387)
!3518 = !DILocation(line: 365, column: 6, scope: !3519, inlinedAt: !3387)
!3519 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 365, column: 6)
!3520 = !DILocation(line: 365, column: 11, scope: !3519, inlinedAt: !3387)
!3521 = !DILocation(line: 365, column: 6, scope: !3383, inlinedAt: !3387)
!3522 = !DILocation(line: 365, column: 26, scope: !3519, inlinedAt: !3387)
!3523 = !DILocation(line: 366, column: 6, scope: !3524, inlinedAt: !3387)
!3524 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 366, column: 6)
!3525 = !DILocation(line: 366, column: 11, scope: !3524, inlinedAt: !3387)
!3526 = !DILocation(line: 366, column: 6, scope: !3383, inlinedAt: !3387)
!3527 = !DILocation(line: 366, column: 26, scope: !3524, inlinedAt: !3387)
!3528 = !DILocation(line: 367, column: 6, scope: !3529, inlinedAt: !3387)
!3529 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 367, column: 6)
!3530 = !DILocation(line: 367, column: 11, scope: !3529, inlinedAt: !3387)
!3531 = !DILocation(line: 367, column: 6, scope: !3383, inlinedAt: !3387)
!3532 = !DILocation(line: 367, column: 26, scope: !3529, inlinedAt: !3387)
!3533 = !DILocation(line: 368, column: 6, scope: !3534, inlinedAt: !3387)
!3534 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 368, column: 6)
!3535 = !DILocation(line: 368, column: 11, scope: !3534, inlinedAt: !3387)
!3536 = !DILocation(line: 368, column: 6, scope: !3383, inlinedAt: !3387)
!3537 = !DILocation(line: 368, column: 26, scope: !3534, inlinedAt: !3387)
!3538 = !DILocation(line: 369, column: 6, scope: !3539, inlinedAt: !3387)
!3539 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 369, column: 6)
!3540 = !DILocation(line: 369, column: 11, scope: !3539, inlinedAt: !3387)
!3541 = !DILocation(line: 369, column: 6, scope: !3383, inlinedAt: !3387)
!3542 = !DILocation(line: 369, column: 26, scope: !3539, inlinedAt: !3387)
!3543 = !DILocation(line: 370, column: 6, scope: !3544, inlinedAt: !3387)
!3544 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 370, column: 6)
!3545 = !DILocation(line: 370, column: 11, scope: !3544, inlinedAt: !3387)
!3546 = !DILocation(line: 370, column: 6, scope: !3383, inlinedAt: !3387)
!3547 = !DILocation(line: 370, column: 26, scope: !3544, inlinedAt: !3387)
!3548 = !DILocation(line: 371, column: 6, scope: !3549, inlinedAt: !3387)
!3549 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 371, column: 6)
!3550 = !DILocation(line: 371, column: 11, scope: !3549, inlinedAt: !3387)
!3551 = !DILocation(line: 371, column: 6, scope: !3383, inlinedAt: !3387)
!3552 = !DILocation(line: 371, column: 26, scope: !3549, inlinedAt: !3387)
!3553 = !DILocation(line: 372, column: 6, scope: !3554, inlinedAt: !3387)
!3554 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 372, column: 6)
!3555 = !DILocation(line: 372, column: 11, scope: !3554, inlinedAt: !3387)
!3556 = !DILocation(line: 372, column: 6, scope: !3383, inlinedAt: !3387)
!3557 = !DILocation(line: 372, column: 26, scope: !3554, inlinedAt: !3387)
!3558 = !DILocation(line: 373, column: 6, scope: !3559, inlinedAt: !3387)
!3559 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 373, column: 6)
!3560 = !DILocation(line: 373, column: 11, scope: !3559, inlinedAt: !3387)
!3561 = !DILocation(line: 373, column: 6, scope: !3383, inlinedAt: !3387)
!3562 = !DILocation(line: 373, column: 26, scope: !3559, inlinedAt: !3387)
!3563 = !DILocation(line: 374, column: 6, scope: !3564, inlinedAt: !3387)
!3564 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 374, column: 6)
!3565 = !DILocation(line: 374, column: 11, scope: !3564, inlinedAt: !3387)
!3566 = !DILocation(line: 374, column: 6, scope: !3383, inlinedAt: !3387)
!3567 = !DILocation(line: 374, column: 26, scope: !3564, inlinedAt: !3387)
!3568 = !DILocation(line: 375, column: 6, scope: !3569, inlinedAt: !3387)
!3569 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 375, column: 6)
!3570 = !DILocation(line: 375, column: 11, scope: !3569, inlinedAt: !3387)
!3571 = !DILocation(line: 375, column: 6, scope: !3383, inlinedAt: !3387)
!3572 = !DILocation(line: 375, column: 27, scope: !3569, inlinedAt: !3387)
!3573 = !DILocation(line: 376, column: 6, scope: !3574, inlinedAt: !3387)
!3574 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 376, column: 6)
!3575 = !DILocation(line: 376, column: 11, scope: !3574, inlinedAt: !3387)
!3576 = !DILocation(line: 376, column: 6, scope: !3383, inlinedAt: !3387)
!3577 = !DILocation(line: 376, column: 32, scope: !3574, inlinedAt: !3387)
!3578 = !DILocation(line: 377, column: 6, scope: !3579, inlinedAt: !3387)
!3579 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 377, column: 6)
!3580 = !DILocation(line: 377, column: 11, scope: !3579, inlinedAt: !3387)
!3581 = !DILocation(line: 377, column: 6, scope: !3383, inlinedAt: !3387)
!3582 = !DILocation(line: 377, column: 32, scope: !3579, inlinedAt: !3387)
!3583 = !DILocation(line: 378, column: 6, scope: !3584, inlinedAt: !3387)
!3584 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 378, column: 6)
!3585 = !DILocation(line: 378, column: 11, scope: !3584, inlinedAt: !3387)
!3586 = !DILocation(line: 378, column: 6, scope: !3383, inlinedAt: !3387)
!3587 = !DILocation(line: 378, column: 32, scope: !3584, inlinedAt: !3387)
!3588 = !DILocation(line: 379, column: 6, scope: !3589, inlinedAt: !3387)
!3589 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 379, column: 6)
!3590 = !DILocation(line: 379, column: 11, scope: !3589, inlinedAt: !3387)
!3591 = !DILocation(line: 379, column: 6, scope: !3383, inlinedAt: !3387)
!3592 = !DILocation(line: 379, column: 33, scope: !3589, inlinedAt: !3387)
!3593 = !DILocation(line: 380, column: 6, scope: !3594, inlinedAt: !3387)
!3594 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 380, column: 6)
!3595 = !DILocation(line: 380, column: 11, scope: !3594, inlinedAt: !3387)
!3596 = !DILocation(line: 380, column: 6, scope: !3383, inlinedAt: !3387)
!3597 = !DILocation(line: 380, column: 33, scope: !3594, inlinedAt: !3387)
!3598 = !DILocation(line: 381, column: 6, scope: !3599, inlinedAt: !3387)
!3599 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 381, column: 6)
!3600 = !DILocation(line: 381, column: 11, scope: !3599, inlinedAt: !3387)
!3601 = !DILocation(line: 381, column: 6, scope: !3383, inlinedAt: !3387)
!3602 = !DILocation(line: 381, column: 33, scope: !3599, inlinedAt: !3387)
!3603 = !DILocation(line: 382, column: 2, scope: !3604, inlinedAt: !3387)
!3604 = distinct !DILexicalBlock(scope: !3605, file: !96, line: 382, column: 2)
!3605 = distinct !DILexicalBlock(scope: !3383, file: !96, line: 382, column: 2)
!3606 = !{i32 -2143423186, i32 -2143423157, i32 -2143423111, i32 -2143423053, i32 -2143422999, i32 -2143422945, i32 -2143422890, i32 -2143422859}
!3607 = !DILocation(line: 382, column: 2, scope: !3608, inlinedAt: !3387)
!3608 = distinct !DILexicalBlock(scope: !3609, file: !96, line: 382, column: 2)
!3609 = distinct !DILexicalBlock(scope: !3605, file: !96, line: 382, column: 2)
!3610 = !{i32 -2143422416, i32 -2143422409, i32 -2143422355, i32 -2143422324, i32 -2143422294}
!3611 = !DILocation(line: 382, column: 2, scope: !3609, inlinedAt: !3387)
!3612 = !DILocation(line: 386, column: 1, scope: !3383, inlinedAt: !3387)
!3613 = !DILocation(line: 547, column: 9, scope: !3363, inlinedAt: !3368)
!3614 = !DILocation(line: 549, column: 8, scope: !3615, inlinedAt: !3368)
!3615 = distinct !DILexicalBlock(scope: !3363, file: !96, line: 549, column: 7)
!3616 = !DILocation(line: 549, column: 7, scope: !3363, inlinedAt: !3368)
!3617 = !DILocation(line: 550, column: 4, scope: !3615, inlinedAt: !3368)
!3618 = !DILocation(line: 553, column: 33, scope: !3363, inlinedAt: !3368)
!3619 = !DILocation(line: 325, column: 6, scope: !3620, inlinedAt: !3381)
!3620 = distinct !DILexicalBlock(scope: !3377, file: !96, line: 325, column: 6)
!3621 = !DILocation(line: 325, column: 6, scope: !3377, inlinedAt: !3381)
!3622 = !DILocation(line: 326, column: 3, scope: !3620, inlinedAt: !3381)
!3623 = !DILocation(line: 332, column: 9, scope: !3377, inlinedAt: !3381)
!3624 = !DILocation(line: 332, column: 15, scope: !3377, inlinedAt: !3381)
!3625 = !DILocation(line: 332, column: 2, scope: !3377, inlinedAt: !3381)
!3626 = !DILocation(line: 336, column: 1, scope: !3377, inlinedAt: !3381)
!3627 = !DILocation(line: 553, column: 5, scope: !3363, inlinedAt: !3368)
!3628 = !DILocation(line: 553, column: 41, scope: !3363, inlinedAt: !3368)
!3629 = !DILocation(line: 554, column: 5, scope: !3363, inlinedAt: !3368)
!3630 = !DILocation(line: 554, column: 12, scope: !3363, inlinedAt: !3368)
!3631 = !DILocation(line: 448, column: 31, scope: !3358, inlinedAt: !3362)
!3632 = !DILocation(line: 448, column: 34, scope: !3358, inlinedAt: !3362)
!3633 = !DILocation(line: 448, column: 14, scope: !3358, inlinedAt: !3362)
!3634 = !DILocation(line: 450, column: 22, scope: !3358, inlinedAt: !3362)
!3635 = !DILocation(line: 450, column: 25, scope: !3358, inlinedAt: !3362)
!3636 = !DILocation(line: 450, column: 30, scope: !3358, inlinedAt: !3362)
!3637 = !DILocation(line: 450, column: 36, scope: !3358, inlinedAt: !3362)
!3638 = !DILocation(line: 450, column: 8, scope: !3358, inlinedAt: !3362)
!3639 = !DILocation(line: 450, column: 6, scope: !3358, inlinedAt: !3362)
!3640 = !DILocation(line: 451, column: 9, scope: !3358, inlinedAt: !3362)
!3641 = !DILocation(line: 552, column: 3, scope: !3363, inlinedAt: !3368)
!3642 = !DILocation(line: 557, column: 19, scope: !3365, inlinedAt: !3368)
!3643 = !DILocation(line: 557, column: 25, scope: !3365, inlinedAt: !3368)
!3644 = !DILocation(line: 557, column: 9, scope: !3365, inlinedAt: !3368)
!3645 = !DILocation(line: 557, column: 2, scope: !3365, inlinedAt: !3368)
!3646 = !DILocation(line: 558, column: 1, scope: !3365, inlinedAt: !3368)
!3647 = !DILocation(line: 591, column: 3, scope: !3369)
!3648 = !DILocation(line: 592, column: 19, scope: !3356)
!3649 = !DILocation(line: 592, column: 26, scope: !3356)
!3650 = !DILocation(line: 592, column: 9, scope: !3356)
!3651 = !DILocation(line: 592, column: 2, scope: !3356)
!3652 = !DILocation(line: 593, column: 1, scope: !3356)
!3653 = distinct !DISubprogram(name: "__must_check_overflow", scope: !3654, file: !3654, line: 52, type: !3655, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!3654 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!145, !145}
!3657 = !DILocalVariable(name: "overflow", arg: 1, scope: !3653, file: !3654, line: 52, type: !145)
!3658 = !DILocation(line: 52, column: 60, scope: !3653)
!3659 = !DILocation(line: 54, column: 9, scope: !3653)
!3660 = !DILocation(line: 54, column: 2, scope: !3653)
!3661 = distinct !DISubprogram(name: "get_order", scope: !3662, file: !3662, line: 29, type: !3663, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!3662 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!204, !103}
!3665 = !DILocalVariable(name: "x", arg: 1, scope: !3666, file: !2408, line: 366, type: !338)
!3666 = distinct !DISubprogram(name: "fls64", scope: !2408, file: !2408, line: 366, type: !3667, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!204, !338}
!3669 = !DILocation(line: 366, column: 40, scope: !3666, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 46, column: 9, scope: !3661)
!3671 = !DILocalVariable(name: "bitpos", scope: !3666, file: !2408, line: 368, type: !204)
!3672 = !DILocation(line: 368, column: 6, scope: !3666, inlinedAt: !3670)
!3673 = !DILocalVariable(name: "size", arg: 1, scope: !3661, file: !3662, line: 29, type: !103)
!3674 = !DILocation(line: 29, column: 63, scope: !3661)
!3675 = !DILocation(line: 31, column: 27, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3661, file: !3662, line: 31, column: 6)
!3677 = !DILocation(line: 31, column: 6, scope: !3676)
!3678 = !DILocation(line: 31, column: 6, scope: !3661)
!3679 = !DILocation(line: 32, column: 8, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3681, file: !3662, line: 32, column: 7)
!3681 = distinct !DILexicalBlock(scope: !3676, file: !3662, line: 31, column: 34)
!3682 = !DILocation(line: 32, column: 7, scope: !3681)
!3683 = !DILocation(line: 33, column: 4, scope: !3680)
!3684 = !DILocation(line: 35, column: 7, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3681, file: !3662, line: 35, column: 7)
!3686 = !DILocation(line: 35, column: 12, scope: !3685)
!3687 = !DILocation(line: 35, column: 7, scope: !3681)
!3688 = !DILocation(line: 36, column: 4, scope: !3685)
!3689 = !DILocation(line: 38, column: 10, scope: !3681)
!3690 = !DILocation(line: 38, column: 28, scope: !3681)
!3691 = !DILocation(line: 38, column: 41, scope: !3681)
!3692 = !DILocation(line: 38, column: 3, scope: !3681)
!3693 = !DILocation(line: 41, column: 6, scope: !3661)
!3694 = !DILocation(line: 42, column: 7, scope: !3661)
!3695 = !DILocation(line: 46, column: 15, scope: !3661)
!3696 = !DILocation(line: 374, column: 2, scope: !3666, inlinedAt: !3670)
!3697 = !DILocation(line: 376, column: 14, scope: !3666, inlinedAt: !3670)
!3698 = !{i32 252048}
!3699 = !DILocation(line: 377, column: 9, scope: !3666, inlinedAt: !3670)
!3700 = !DILocation(line: 377, column: 16, scope: !3666, inlinedAt: !3670)
!3701 = !DILocation(line: 46, column: 2, scope: !3661)
!3702 = !DILocation(line: 48, column: 1, scope: !3661)
!3703 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3704, file: !3704, line: 30, type: !3705, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!3704 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!204, !337}
!3707 = !DILocation(line: 366, column: 40, scope: !3666, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 32, column: 9, scope: !3703)
!3709 = !DILocation(line: 368, column: 6, scope: !3666, inlinedAt: !3708)
!3710 = !DILocalVariable(name: "n", arg: 1, scope: !3703, file: !3704, line: 30, type: !337)
!3711 = !DILocation(line: 30, column: 21, scope: !3703)
!3712 = !DILocation(line: 32, column: 15, scope: !3703)
!3713 = !DILocation(line: 374, column: 2, scope: !3666, inlinedAt: !3708)
!3714 = !DILocation(line: 376, column: 14, scope: !3666, inlinedAt: !3708)
!3715 = !DILocation(line: 377, column: 9, scope: !3666, inlinedAt: !3708)
!3716 = !DILocation(line: 377, column: 16, scope: !3666, inlinedAt: !3708)
!3717 = !DILocation(line: 32, column: 18, scope: !3703)
!3718 = !DILocation(line: 32, column: 2, scope: !3703)
!3719 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3720, file: !3720, line: 137, type: !3721, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!3720 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!106, !1105, !153, !266, !104}
!3723 = !DILocalVariable(name: "s", arg: 1, scope: !3719, file: !3720, line: 137, type: !1105)
!3724 = !DILocation(line: 137, column: 54, scope: !3719)
!3725 = !DILocalVariable(name: "object", arg: 2, scope: !3719, file: !3720, line: 137, type: !153)
!3726 = !DILocation(line: 137, column: 69, scope: !3719)
!3727 = !DILocalVariable(name: "size", arg: 3, scope: !3719, file: !3720, line: 138, type: !266)
!3728 = !DILocation(line: 138, column: 12, scope: !3719)
!3729 = !DILocalVariable(name: "flags", arg: 4, scope: !3719, file: !3720, line: 138, type: !104)
!3730 = !DILocation(line: 138, column: 24, scope: !3719)
!3731 = !DILocation(line: 140, column: 17, scope: !3719)
!3732 = !DILocation(line: 140, column: 2, scope: !3719)
!3733 = distinct !DISubprogram(name: "fwnode_property_read_u32", scope: !2882, file: !2882, line: 197, type: !3734, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!204, !147, !112, !688}
!3736 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3733, file: !2882, line: 197, type: !147)
!3737 = !DILocation(line: 197, column: 72, scope: !3733)
!3738 = !DILocalVariable(name: "propname", arg: 2, scope: !3733, file: !2882, line: 198, type: !112)
!3739 = !DILocation(line: 198, column: 21, scope: !3733)
!3740 = !DILocalVariable(name: "val", arg: 3, scope: !3733, file: !2882, line: 198, type: !688)
!3741 = !DILocation(line: 198, column: 36, scope: !3733)
!3742 = !DILocation(line: 200, column: 40, scope: !3733)
!3743 = !DILocation(line: 200, column: 48, scope: !3733)
!3744 = !DILocation(line: 200, column: 58, scope: !3733)
!3745 = !DILocation(line: 200, column: 9, scope: !3733)
!3746 = !DILocation(line: 200, column: 2, scope: !3733)
!3747 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !3748, file: !3748, line: 39, type: !3749, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!3748 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!145, !153}
!3751 = !DILocalVariable(name: "ptr", arg: 1, scope: !3747, file: !3748, line: 39, type: !153)
!3752 = !DILocation(line: 39, column: 68, scope: !3747)
!3753 = !DILocation(line: 41, column: 9, scope: !3747)
!3754 = !DILocation(line: 41, column: 24, scope: !3747)
!3755 = !DILocation(line: 41, column: 27, scope: !3747)
!3756 = !DILocation(line: 41, column: 2, scope: !3747)
