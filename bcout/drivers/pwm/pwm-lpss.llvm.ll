; ModuleID = '../bcout/drivers/pwm/pwm-lpss.llvm.bc'
source_filename = "drivers/pwm/pwm-lpss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.pwm_ops = type { i32 (%struct.pwm_chip*, %struct.pwm_device*)*, void (%struct.pwm_chip*, %struct.pwm_device*)*, i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_capture*, i64)*, i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)*, void (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)*, %struct.module*, i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)*, i32 (%struct.pwm_chip*, %struct.pwm_device*, i32)*, i32 (%struct.pwm_chip*, %struct.pwm_device*)*, void (%struct.pwm_chip*, %struct.pwm_device*)* }
%struct.pwm_chip = type { %struct.device*, %struct.pwm_ops*, i32, i32, %struct.pwm_device* (%struct.pwm_chip*, %struct.of_phandle_args*)*, i32, %struct.list_head, %struct.pwm_device* }
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
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
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
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.of_phandle_args = type { %struct.device_node*, i32, [16 x i32] }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.pwm_device = type { i8*, i64, i32, i32, %struct.pwm_chip*, i8*, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8 }
%struct.pwm_capture = type { i32, i32 }
%struct.module = type opaque
%struct.pwm_lpss_chip = type { %struct.pwm_chip, i8*, %struct.pwm_lpss_boardinfo* }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.pwm_lpss_boardinfo = type { i64, i32, i64, i8, i8 }

@.str = private unnamed_addr constant [23 x i8] c"drivers/pwm/pwm-lpss.c\00", align 1
@pwm_lpss_ops = internal constant %struct.pwm_ops { i32 (%struct.pwm_chip*, %struct.pwm_device*)* null, void (%struct.pwm_chip*, %struct.pwm_device*)* null, i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_capture*, i64)* null, i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @pwm_lpss_apply, void (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @pwm_lpss_get_state, %struct.module* null, i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* null, i32 (%struct.pwm_chip*, %struct.pwm_device*, i32)* null, i32 (%struct.pwm_chip*, %struct.pwm_device*)* null, void (%struct.pwm_chip*, %struct.pwm_device*)* null }, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to add PWM chip: %d\0A\00", align 1
@__UNIQUE_ID_description166 = internal constant [47 x i8] c"pwm_lpss.description=PWM driver for Intel LPSS\00", section ".modinfo", align 1, !dbg !2159
@__UNIQUE_ID_author167 = internal constant [66 x i8] c"pwm_lpss.author=Mika Westerberg <mika.westerberg@linux.intel.com>\00", section ".modinfo", align 1, !dbg !2164
@__UNIQUE_ID_file168 = internal constant [35 x i8] c"pwm_lpss.file=drivers/pwm/pwm-lpss\00", section ".modinfo", align 1, !dbg !2169
@__UNIQUE_ID_license169 = internal constant [24 x i8] c"pwm_lpss.license=GPL v2\00", section ".modinfo", align 1, !dbg !2174
@.str.2 = private unnamed_addr constant [31 x i8] c"PWM_SW_UPDATE was not cleared\0A\00", align 1
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__UNIQUE_ID_description166, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__UNIQUE_ID_author167, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__UNIQUE_ID_file168, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__UNIQUE_ID_license169, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.pwm_lpss_chip* @pwm_lpss_probe(%struct.device* %dev, %struct.resource* %r, %struct.pwm_lpss_boardinfo* %info) #0 !dbg !2184 {
entry:
  %retval = alloca %struct.pwm_lpss_chip*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %r.addr = alloca %struct.resource*, align 8
  %info.addr = alloca %struct.pwm_lpss_boardinfo*, align 8
  %lpwm = alloca %struct.pwm_lpss_chip*, align 8
  %c = alloca i64, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %ctrl = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2200, metadata !DIExpression()), !dbg !2201
  store %struct.resource* %r, %struct.resource** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %r.addr, metadata !2202, metadata !DIExpression()), !dbg !2203
  store %struct.pwm_lpss_boardinfo* %info, %struct.pwm_lpss_boardinfo** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_lpss_boardinfo** %info.addr, metadata !2204, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.declare(metadata %struct.pwm_lpss_chip** %lpwm, metadata !2206, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.declare(metadata i64* %c, metadata !2208, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2210, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2212, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.declare(metadata i32* %ctrl, metadata !2214, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2216, metadata !DIExpression()), !dbg !2219
  %0 = load %struct.pwm_lpss_boardinfo*, %struct.pwm_lpss_boardinfo** %info.addr, align 8, !dbg !2219
  %npwm = getelementptr inbounds %struct.pwm_lpss_boardinfo, %struct.pwm_lpss_boardinfo* %0, i32 0, i32 1, !dbg !2219
  %1 = load i32, i32* %npwm, align 8, !dbg !2219
  %cmp = icmp ugt i32 %1, 4, !dbg !2219
  %lnot = xor i1 %cmp, true, !dbg !2219
  %lnot1 = xor i1 %lnot, true, !dbg !2219
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2219
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2219
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !2220
  %tobool = icmp ne i32 %2, 0, !dbg !2220
  %lnot2 = xor i1 %tobool, true, !dbg !2220
  %lnot4 = xor i1 %lnot2, true, !dbg !2220
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !2220
  %conv = sext i32 %lnot.ext5 to i64, !dbg !2220
  %tobool6 = icmp ne i64 %conv, 0, !dbg !2220
  br i1 %tobool6, label %if.then, label %if.end, !dbg !2219

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2220

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !2222

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !2224

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !2222

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 213, i32 2305, i64 12) #5, !dbg !2226, !srcloc !2228
  br label %do.end9, !dbg !2226

do.end9:                                          ; preds = %do.body8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 165) #5, !dbg !2229, !srcloc !2231
  br label %do.body10, !dbg !2222

do.body10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !2232

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !2222

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !2222

if.end:                                           ; preds = %do.end12, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !2219
  %tobool13 = icmp ne i32 %3, 0, !dbg !2219
  %lnot14 = xor i1 %tobool13, true, !dbg !2219
  %lnot16 = xor i1 %lnot14, true, !dbg !2219
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !2219
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !2219
  store i64 %conv18, i64* %tmp, align 8, !dbg !2220
  %4 = load i64, i64* %tmp, align 8, !dbg !2219
  %tobool19 = icmp ne i64 %4, 0, !dbg !2234
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !2235

if.then20:                                        ; preds = %if.end
  %call = call i8* @ERR_PTR(i64 -19) #6, !dbg !2236
  %5 = bitcast i8* %call to %struct.pwm_lpss_chip*, !dbg !2236
  store %struct.pwm_lpss_chip* %5, %struct.pwm_lpss_chip** %retval, align 8, !dbg !2237
  br label %return, !dbg !2237

if.end21:                                         ; preds = %if.end
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2238
  %call22 = call i8* @devm_kzalloc(%struct.device* %6, i64 80, i32 3264) #6, !dbg !2239
  %7 = bitcast i8* %call22 to %struct.pwm_lpss_chip*, !dbg !2239
  store %struct.pwm_lpss_chip* %7, %struct.pwm_lpss_chip** %lpwm, align 8, !dbg !2240
  %8 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm, align 8, !dbg !2241
  %tobool23 = icmp ne %struct.pwm_lpss_chip* %8, null, !dbg !2241
  br i1 %tobool23, label %if.end26, label %if.then24, !dbg !2243

if.then24:                                        ; preds = %if.end21
  %call25 = call i8* @ERR_PTR(i64 -12) #6, !dbg !2244
  %9 = bitcast i8* %call25 to %struct.pwm_lpss_chip*, !dbg !2244
  store %struct.pwm_lpss_chip* %9, %struct.pwm_lpss_chip** %retval, align 8, !dbg !2245
  br label %return, !dbg !2245

if.end26:                                         ; preds = %if.end21
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2246
  %11 = load %struct.resource*, %struct.resource** %r.addr, align 8, !dbg !2247
  %call27 = call i8* @devm_ioremap_resource(%struct.device* %10, %struct.resource* %11) #6, !dbg !2248
  %12 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm, align 8, !dbg !2249
  %regs = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %12, i32 0, i32 1, !dbg !2250
  store i8* %call27, i8** %regs, align 8, !dbg !2251
  %13 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm, align 8, !dbg !2252
  %regs28 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %13, i32 0, i32 1, !dbg !2254
  %14 = load i8*, i8** %regs28, align 8, !dbg !2254
  %call29 = call zeroext i1 @IS_ERR(i8* %14) #6, !dbg !2255
  br i1 %call29, label %if.then30, label %if.end33, !dbg !2256

if.then30:                                        ; preds = %if.end26
  %15 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm, align 8, !dbg !2257
  %regs31 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %15, i32 0, i32 1, !dbg !2258
  %16 = load i8*, i8** %regs31, align 8, !dbg !2258
  %call32 = call i8* @ERR_CAST(i8* %16) #6, !dbg !2259
  %17 = bitcast i8* %call32 to %struct.pwm_lpss_chip*, !dbg !2259
  store %struct.pwm_lpss_chip* %17, %struct.pwm_lpss_chip** %retval, align 8, !dbg !2260
  br label %return, !dbg !2260

if.end33:                                         ; preds = %if.end26
  %18 = load %struct.pwm_lpss_boardinfo*, %struct.pwm_lpss_boardinfo** %info.addr, align 8, !dbg !2261
  %19 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm, align 8, !dbg !2262
  %info34 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %19, i32 0, i32 2, !dbg !2263
  store %struct.pwm_lpss_boardinfo* %18, %struct.pwm_lpss_boardinfo** %info34, align 8, !dbg !2264
  %20 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm, align 8, !dbg !2265
  %info35 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %20, i32 0, i32 2, !dbg !2266
  %21 = load %struct.pwm_lpss_boardinfo*, %struct.pwm_lpss_boardinfo** %info35, align 8, !dbg !2266
  %clk_rate = getelementptr inbounds %struct.pwm_lpss_boardinfo, %struct.pwm_lpss_boardinfo* %21, i32 0, i32 0, !dbg !2267
  %22 = load i64, i64* %clk_rate, align 8, !dbg !2267
  store i64 %22, i64* %c, align 8, !dbg !2268
  %23 = load i64, i64* %c, align 8, !dbg !2269
  %tobool36 = icmp ne i64 %23, 0, !dbg !2269
  br i1 %tobool36, label %if.end39, label %if.then37, !dbg !2271

if.then37:                                        ; preds = %if.end33
  %call38 = call i8* @ERR_PTR(i64 -22) #6, !dbg !2272
  %24 = bitcast i8* %call38 to %struct.pwm_lpss_chip*, !dbg !2272
  store %struct.pwm_lpss_chip* %24, %struct.pwm_lpss_chip** %retval, align 8, !dbg !2273
  br label %return, !dbg !2273

if.end39:                                         ; preds = %if.end33
  %25 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2274
  %26 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm, align 8, !dbg !2275
  %chip = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %26, i32 0, i32 0, !dbg !2276
  %dev40 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %chip, i32 0, i32 0, !dbg !2277
  store %struct.device* %25, %struct.device** %dev40, align 8, !dbg !2278
  %27 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm, align 8, !dbg !2279
  %chip41 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %27, i32 0, i32 0, !dbg !2280
  %ops = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %chip41, i32 0, i32 1, !dbg !2281
  store %struct.pwm_ops* @pwm_lpss_ops, %struct.pwm_ops** %ops, align 8, !dbg !2282
  %28 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm, align 8, !dbg !2283
  %chip42 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %28, i32 0, i32 0, !dbg !2284
  %base = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %chip42, i32 0, i32 2, !dbg !2285
  store i32 -1, i32* %base, align 8, !dbg !2286
  %29 = load %struct.pwm_lpss_boardinfo*, %struct.pwm_lpss_boardinfo** %info.addr, align 8, !dbg !2287
  %npwm43 = getelementptr inbounds %struct.pwm_lpss_boardinfo, %struct.pwm_lpss_boardinfo* %29, i32 0, i32 1, !dbg !2288
  %30 = load i32, i32* %npwm43, align 8, !dbg !2288
  %31 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm, align 8, !dbg !2289
  %chip44 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %31, i32 0, i32 0, !dbg !2290
  %npwm45 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %chip44, i32 0, i32 3, !dbg !2291
  store i32 %30, i32* %npwm45, align 4, !dbg !2292
  %32 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm, align 8, !dbg !2293
  %chip46 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %32, i32 0, i32 0, !dbg !2294
  %call47 = call i32 @pwmchip_add(%struct.pwm_chip* %chip46) #6, !dbg !2295
  store i32 %call47, i32* %ret, align 4, !dbg !2296
  %33 = load i32, i32* %ret, align 4, !dbg !2297
  %tobool48 = icmp ne i32 %33, 0, !dbg !2297
  br i1 %tobool48, label %if.then49, label %if.end52, !dbg !2299

if.then49:                                        ; preds = %if.end39
  %34 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2300
  %35 = load i32, i32* %ret, align 4, !dbg !2300
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %35) #7, !dbg !2300
  %36 = load i32, i32* %ret, align 4, !dbg !2302
  %conv50 = sext i32 %36 to i64, !dbg !2302
  %call51 = call i8* @ERR_PTR(i64 %conv50) #6, !dbg !2303
  %37 = bitcast i8* %call51 to %struct.pwm_lpss_chip*, !dbg !2303
  store %struct.pwm_lpss_chip* %37, %struct.pwm_lpss_chip** %retval, align 8, !dbg !2304
  br label %return, !dbg !2304

if.end52:                                         ; preds = %if.end39
  store i32 0, i32* %i, align 4, !dbg !2305
  br label %for.cond, !dbg !2307

for.cond:                                         ; preds = %for.inc, %if.end52
  %38 = load i32, i32* %i, align 4, !dbg !2308
  %39 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm, align 8, !dbg !2310
  %info53 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %39, i32 0, i32 2, !dbg !2311
  %40 = load %struct.pwm_lpss_boardinfo*, %struct.pwm_lpss_boardinfo** %info53, align 8, !dbg !2311
  %npwm54 = getelementptr inbounds %struct.pwm_lpss_boardinfo, %struct.pwm_lpss_boardinfo* %40, i32 0, i32 1, !dbg !2312
  %41 = load i32, i32* %npwm54, align 8, !dbg !2312
  %cmp55 = icmp ult i32 %38, %41, !dbg !2313
  br i1 %cmp55, label %for.body, label %for.end, !dbg !2314

for.body:                                         ; preds = %for.cond
  %42 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm, align 8, !dbg !2315
  %chip57 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %42, i32 0, i32 0, !dbg !2317
  %pwms = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %chip57, i32 0, i32 7, !dbg !2318
  %43 = load %struct.pwm_device*, %struct.pwm_device** %pwms, align 8, !dbg !2318
  %44 = load i32, i32* %i, align 4, !dbg !2319
  %idxprom = sext i32 %44 to i64, !dbg !2315
  %arrayidx = getelementptr %struct.pwm_device, %struct.pwm_device* %43, i64 %idxprom, !dbg !2315
  %call58 = call i32 @pwm_lpss_read(%struct.pwm_device* %arrayidx) #6, !dbg !2320
  store i32 %call58, i32* %ctrl, align 4, !dbg !2321
  %45 = load i32, i32* %ctrl, align 4, !dbg !2322
  %conv59 = zext i32 %45 to i64, !dbg !2322
  %and = and i64 %conv59, 2147483648, !dbg !2324
  %tobool60 = icmp ne i64 %and, 0, !dbg !2324
  br i1 %tobool60, label %if.then61, label %if.end63, !dbg !2325

if.then61:                                        ; preds = %for.body
  %46 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2326
  %call62 = call i32 @pm_runtime_get(%struct.device* %46) #6, !dbg !2327
  br label %if.end63, !dbg !2327

if.end63:                                         ; preds = %if.then61, %for.body
  br label %for.inc, !dbg !2328

for.inc:                                          ; preds = %if.end63
  %47 = load i32, i32* %i, align 4, !dbg !2329
  %inc = add i32 %47, 1, !dbg !2329
  store i32 %inc, i32* %i, align 4, !dbg !2329
  br label %for.cond, !dbg !2330, !llvm.loop !2331

for.end:                                          ; preds = %for.cond
  %48 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm, align 8, !dbg !2333
  store %struct.pwm_lpss_chip* %48, %struct.pwm_lpss_chip** %retval, align 8, !dbg !2334
  br label %return, !dbg !2334

return:                                           ; preds = %for.end, %if.then49, %if.then37, %if.then30, %if.then24, %if.then20
  %49 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %retval, align 8, !dbg !2335
  ret %struct.pwm_lpss_chip* %49, !dbg !2335
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !2336 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !2340, metadata !DIExpression()), !dbg !2341
  %0 = load i64, i64* %error.addr, align 8, !dbg !2342
  %1 = inttoptr i64 %0 to i8*, !dbg !2343
  ret i8* %1, !dbg !2344
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #0 !dbg !2345 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2348, metadata !DIExpression()), !dbg !2349
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2350, metadata !DIExpression()), !dbg !2351
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2352, metadata !DIExpression()), !dbg !2353
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2354
  %1 = load i64, i64* %size.addr, align 8, !dbg !2355
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2356
  %or = or i32 %2, 256, !dbg !2357
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #6, !dbg !2358
  ret i8* %call, !dbg !2359
}

; Function Attrs: noredzone
declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !2360 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2363, metadata !DIExpression()), !dbg !2364
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2365
  %1 = ptrtoint i8* %0 to i64, !dbg !2365
  %2 = inttoptr i64 %1 to i8*, !dbg !2365
  %3 = ptrtoint i8* %2 to i64, !dbg !2365
  %cmp = icmp uge i64 %3, -4095, !dbg !2365
  %lnot = xor i1 %cmp, true, !dbg !2365
  %lnot1 = xor i1 %lnot, true, !dbg !2365
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2365
  %conv = sext i32 %lnot.ext to i64, !dbg !2365
  %tobool = icmp ne i64 %conv, 0, !dbg !2365
  ret i1 %tobool, !dbg !2366
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_CAST(i8* %ptr) #0 !dbg !2367 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2370, metadata !DIExpression()), !dbg !2371
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2372
  ret i8* %0, !dbg !2373
}

; Function Attrs: noredzone
declare dso_local i32 @pwmchip_add(%struct.pwm_chip*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pwm_lpss_read(%struct.pwm_device* %pwm) #0 !dbg !2374 {
entry:
  %pwm.addr = alloca %struct.pwm_device*, align 8
  %lpwm = alloca %struct.pwm_lpss_chip*, align 8
  store %struct.pwm_device* %pwm, %struct.pwm_device** %pwm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm.addr, metadata !2379, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.declare(metadata %struct.pwm_lpss_chip** %lpwm, metadata !2381, metadata !DIExpression()), !dbg !2382
  %0 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2383
  %chip = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %0, i32 0, i32 4, !dbg !2384
  %1 = load %struct.pwm_chip*, %struct.pwm_chip** %chip, align 8, !dbg !2384
  %call = call %struct.pwm_lpss_chip* @to_lpwm(%struct.pwm_chip* %1) #6, !dbg !2385
  store %struct.pwm_lpss_chip* %call, %struct.pwm_lpss_chip** %lpwm, align 8, !dbg !2382
  %2 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm, align 8, !dbg !2386
  %regs = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %2, i32 0, i32 1, !dbg !2387
  %3 = load i8*, i8** %regs, align 8, !dbg !2387
  %4 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2388
  %hwpwm = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %4, i32 0, i32 2, !dbg !2389
  %5 = load i32, i32* %hwpwm, align 8, !dbg !2389
  %mul = mul i32 %5, 1024, !dbg !2390
  %idx.ext = zext i32 %mul to i64, !dbg !2391
  %add.ptr = getelementptr i8, i8* %3, i64 %idx.ext, !dbg !2391
  %add.ptr1 = getelementptr i8, i8* %add.ptr, i64 0, !dbg !2392
  %call2 = call i32 @readl(i8* %add.ptr1) #6, !dbg !2393
  ret i32 %call2, !dbg !2394
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_get(%struct.device* %dev) #0 !dbg !2395 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2397, metadata !DIExpression()), !dbg !2398
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2399
  %call = call i32 @__pm_runtime_resume(%struct.device* %0, i32 5) #6, !dbg !2400
  ret i32 %call, !dbg !2401
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pwm_lpss_remove(%struct.pwm_lpss_chip* %lpwm) #0 !dbg !2402 {
entry:
  %lpwm.addr = alloca %struct.pwm_lpss_chip*, align 8
  %i = alloca i32, align 4
  store %struct.pwm_lpss_chip* %lpwm, %struct.pwm_lpss_chip** %lpwm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_lpss_chip** %lpwm.addr, metadata !2405, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2407, metadata !DIExpression()), !dbg !2408
  store i32 0, i32* %i, align 4, !dbg !2409
  br label %for.cond, !dbg !2411

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !2412
  %1 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm.addr, align 8, !dbg !2414
  %info = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %1, i32 0, i32 2, !dbg !2415
  %2 = load %struct.pwm_lpss_boardinfo*, %struct.pwm_lpss_boardinfo** %info, align 8, !dbg !2415
  %npwm = getelementptr inbounds %struct.pwm_lpss_boardinfo, %struct.pwm_lpss_boardinfo* %2, i32 0, i32 1, !dbg !2416
  %3 = load i32, i32* %npwm, align 8, !dbg !2416
  %cmp = icmp ult i32 %0, %3, !dbg !2417
  br i1 %cmp, label %for.body, label %for.end, !dbg !2418

for.body:                                         ; preds = %for.cond
  %4 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm.addr, align 8, !dbg !2419
  %chip = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %4, i32 0, i32 0, !dbg !2422
  %pwms = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %chip, i32 0, i32 7, !dbg !2423
  %5 = load %struct.pwm_device*, %struct.pwm_device** %pwms, align 8, !dbg !2423
  %6 = load i32, i32* %i, align 4, !dbg !2424
  %idxprom = sext i32 %6 to i64, !dbg !2419
  %arrayidx = getelementptr %struct.pwm_device, %struct.pwm_device* %5, i64 %idxprom, !dbg !2419
  %call = call zeroext i1 @pwm_is_enabled(%struct.pwm_device* %arrayidx) #6, !dbg !2425
  br i1 %call, label %if.then, label %if.end, !dbg !2426

if.then:                                          ; preds = %for.body
  %7 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm.addr, align 8, !dbg !2427
  %chip1 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %7, i32 0, i32 0, !dbg !2428
  %dev = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %chip1, i32 0, i32 0, !dbg !2429
  %8 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2429
  %call2 = call i32 @pm_runtime_put(%struct.device* %8) #6, !dbg !2430
  br label %if.end, !dbg !2430

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !2431

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4, !dbg !2432
  %inc = add i32 %9, 1, !dbg !2432
  store i32 %inc, i32* %i, align 4, !dbg !2432
  br label %for.cond, !dbg !2433, !llvm.loop !2434

for.end:                                          ; preds = %for.cond
  %10 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm.addr, align 8, !dbg !2436
  %chip3 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %10, i32 0, i32 0, !dbg !2437
  %call4 = call i32 @pwmchip_remove(%struct.pwm_chip* %chip3) #6, !dbg !2438
  ret i32 %call4, !dbg !2439
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @pwm_is_enabled(%struct.pwm_device* %pwm) #0 !dbg !2440 {
entry:
  %pwm.addr = alloca %struct.pwm_device*, align 8
  %state = alloca %struct.pwm_state, align 8
  store %struct.pwm_device* %pwm, %struct.pwm_device** %pwm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm.addr, metadata !2443, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.declare(metadata %struct.pwm_state* %state, metadata !2445, metadata !DIExpression()), !dbg !2446
  %0 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2447
  call void @pwm_get_state(%struct.pwm_device* %0, %struct.pwm_state* %state) #6, !dbg !2448
  %enabled = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %state, i32 0, i32 3, !dbg !2449
  %1 = load i8, i8* %enabled, align 4, !dbg !2449
  %tobool = trunc i8 %1 to i1, !dbg !2449
  ret i1 %tobool, !dbg !2450
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_put(%struct.device* %dev) #0 !dbg !2451 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2452, metadata !DIExpression()), !dbg !2453
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2454
  %call = call i32 @__pm_runtime_idle(%struct.device* %0, i32 5) #6, !dbg !2455
  ret i32 %call, !dbg !2456
}

; Function Attrs: noredzone
declare dso_local i32 @pwmchip_remove(%struct.pwm_chip*) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pwm_lpss_apply(%struct.pwm_chip* %chip, %struct.pwm_device* %pwm, %struct.pwm_state* %state) #0 !dbg !2457 {
entry:
  %chip.addr = alloca %struct.pwm_chip*, align 8
  %pwm.addr = alloca %struct.pwm_device*, align 8
  %state.addr = alloca %struct.pwm_state*, align 8
  %lpwm = alloca %struct.pwm_lpss_chip*, align 8
  %ret = alloca i32, align 4
  store %struct.pwm_chip* %chip, %struct.pwm_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_chip** %chip.addr, metadata !2458, metadata !DIExpression()), !dbg !2459
  store %struct.pwm_device* %pwm, %struct.pwm_device** %pwm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm.addr, metadata !2460, metadata !DIExpression()), !dbg !2461
  store %struct.pwm_state* %state, %struct.pwm_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_state** %state.addr, metadata !2462, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.declare(metadata %struct.pwm_lpss_chip** %lpwm, metadata !2464, metadata !DIExpression()), !dbg !2465
  %0 = load %struct.pwm_chip*, %struct.pwm_chip** %chip.addr, align 8, !dbg !2466
  %call = call %struct.pwm_lpss_chip* @to_lpwm(%struct.pwm_chip* %0) #6, !dbg !2467
  store %struct.pwm_lpss_chip* %call, %struct.pwm_lpss_chip** %lpwm, align 8, !dbg !2465
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2468, metadata !DIExpression()), !dbg !2469
  store i32 0, i32* %ret, align 4, !dbg !2469
  %1 = load %struct.pwm_state*, %struct.pwm_state** %state.addr, align 8, !dbg !2470
  %enabled = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %1, i32 0, i32 3, !dbg !2472
  %2 = load i8, i8* %enabled, align 4, !dbg !2472
  %tobool = trunc i8 %2 to i1, !dbg !2472
  br i1 %tobool, label %if.then, label %if.else11, !dbg !2473

if.then:                                          ; preds = %entry
  %3 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2474
  %call1 = call zeroext i1 @pwm_is_enabled(%struct.pwm_device* %3) #6, !dbg !2477
  br i1 %call1, label %if.else, label %if.then2, !dbg !2478

if.then2:                                         ; preds = %if.then
  %4 = load %struct.pwm_chip*, %struct.pwm_chip** %chip.addr, align 8, !dbg !2479
  %dev = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %4, i32 0, i32 0, !dbg !2481
  %5 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2481
  %call3 = call i32 @pm_runtime_get_sync(%struct.device* %5) #6, !dbg !2482
  %6 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm, align 8, !dbg !2483
  %7 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2484
  %8 = load %struct.pwm_state*, %struct.pwm_state** %state.addr, align 8, !dbg !2485
  %call4 = call i32 @pwm_lpss_prepare_enable(%struct.pwm_lpss_chip* %6, %struct.pwm_device* %7, %struct.pwm_state* %8) #6, !dbg !2486
  store i32 %call4, i32* %ret, align 4, !dbg !2487
  %9 = load i32, i32* %ret, align 4, !dbg !2488
  %tobool5 = icmp ne i32 %9, 0, !dbg !2488
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !2490

if.then6:                                         ; preds = %if.then2
  %10 = load %struct.pwm_chip*, %struct.pwm_chip** %chip.addr, align 8, !dbg !2491
  %dev7 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %10, i32 0, i32 0, !dbg !2492
  %11 = load %struct.device*, %struct.device** %dev7, align 8, !dbg !2492
  %call8 = call i32 @pm_runtime_put(%struct.device* %11) #6, !dbg !2493
  br label %if.end, !dbg !2493

if.end:                                           ; preds = %if.then6, %if.then2
  br label %if.end10, !dbg !2494

if.else:                                          ; preds = %if.then
  %12 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm, align 8, !dbg !2495
  %13 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2497
  %14 = load %struct.pwm_state*, %struct.pwm_state** %state.addr, align 8, !dbg !2498
  %call9 = call i32 @pwm_lpss_prepare_enable(%struct.pwm_lpss_chip* %12, %struct.pwm_device* %13, %struct.pwm_state* %14) #6, !dbg !2499
  store i32 %call9, i32* %ret, align 4, !dbg !2500
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !2501

if.else11:                                        ; preds = %entry
  %15 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2502
  %call12 = call zeroext i1 @pwm_is_enabled(%struct.pwm_device* %15) #6, !dbg !2504
  br i1 %call12, label %if.then13, label %if.end18, !dbg !2505

if.then13:                                        ; preds = %if.else11
  %16 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2506
  %17 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2508
  %call14 = call i32 @pwm_lpss_read(%struct.pwm_device* %17) #6, !dbg !2509
  %conv = zext i32 %call14 to i64, !dbg !2509
  %and = and i64 %conv, -2147483649, !dbg !2510
  %conv15 = trunc i64 %and to i32, !dbg !2509
  call void @pwm_lpss_write(%struct.pwm_device* %16, i32 %conv15) #6, !dbg !2511
  %18 = load %struct.pwm_chip*, %struct.pwm_chip** %chip.addr, align 8, !dbg !2512
  %dev16 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %18, i32 0, i32 0, !dbg !2513
  %19 = load %struct.device*, %struct.device** %dev16, align 8, !dbg !2513
  %call17 = call i32 @pm_runtime_put(%struct.device* %19) #6, !dbg !2514
  br label %if.end18, !dbg !2515

if.end18:                                         ; preds = %if.then13, %if.else11
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end10
  %20 = load i32, i32* %ret, align 4, !dbg !2516
  ret i32 %20, !dbg !2517
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pwm_lpss_get_state(%struct.pwm_chip* %chip, %struct.pwm_device* %pwm, %struct.pwm_state* %state) #0 !dbg !2518 {
entry:
  %chip.addr = alloca %struct.pwm_chip*, align 8
  %pwm.addr = alloca %struct.pwm_device*, align 8
  %state.addr = alloca %struct.pwm_state*, align 8
  %lpwm = alloca %struct.pwm_lpss_chip*, align 8
  %base_unit_range = alloca i64, align 8
  %base_unit = alloca i64, align 8
  %freq = alloca i64, align 8
  %on_time_div = alloca i64, align 8
  %ctrl = alloca i32, align 4
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__base16 = alloca i32, align 4
  %__rem17 = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  store %struct.pwm_chip* %chip, %struct.pwm_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_chip** %chip.addr, metadata !2519, metadata !DIExpression()), !dbg !2520
  store %struct.pwm_device* %pwm, %struct.pwm_device** %pwm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm.addr, metadata !2521, metadata !DIExpression()), !dbg !2522
  store %struct.pwm_state* %state, %struct.pwm_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_state** %state.addr, metadata !2523, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.declare(metadata %struct.pwm_lpss_chip** %lpwm, metadata !2525, metadata !DIExpression()), !dbg !2526
  %0 = load %struct.pwm_chip*, %struct.pwm_chip** %chip.addr, align 8, !dbg !2527
  %call = call %struct.pwm_lpss_chip* @to_lpwm(%struct.pwm_chip* %0) #6, !dbg !2528
  store %struct.pwm_lpss_chip* %call, %struct.pwm_lpss_chip** %lpwm, align 8, !dbg !2526
  call void @llvm.dbg.declare(metadata i64* %base_unit_range, metadata !2529, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.declare(metadata i64* %base_unit, metadata !2531, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.declare(metadata i64* %freq, metadata !2533, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.declare(metadata i64* %on_time_div, metadata !2535, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.declare(metadata i32* %ctrl, metadata !2537, metadata !DIExpression()), !dbg !2538
  %1 = load %struct.pwm_chip*, %struct.pwm_chip** %chip.addr, align 8, !dbg !2539
  %dev = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %1, i32 0, i32 0, !dbg !2540
  %2 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2540
  %call1 = call i32 @pm_runtime_get_sync(%struct.device* %2) #6, !dbg !2541
  %3 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm, align 8, !dbg !2542
  %info = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %3, i32 0, i32 2, !dbg !2542
  %4 = load %struct.pwm_lpss_boardinfo*, %struct.pwm_lpss_boardinfo** %info, align 8, !dbg !2542
  %base_unit_bits = getelementptr inbounds %struct.pwm_lpss_boardinfo, %struct.pwm_lpss_boardinfo* %4, i32 0, i32 2, !dbg !2542
  %5 = load i64, i64* %base_unit_bits, align 8, !dbg !2542
  %shl = shl i64 1, %5, !dbg !2542
  store i64 %shl, i64* %base_unit_range, align 8, !dbg !2543
  %6 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2544
  %call2 = call i32 @pwm_lpss_read(%struct.pwm_device* %6) #6, !dbg !2545
  store i32 %call2, i32* %ctrl, align 4, !dbg !2546
  %7 = load i32, i32* %ctrl, align 4, !dbg !2547
  %and = and i32 %7, 255, !dbg !2548
  %sub = sub i32 255, %and, !dbg !2549
  %conv = zext i32 %sub to i64, !dbg !2550
  store i64 %conv, i64* %on_time_div, align 8, !dbg !2551
  %8 = load i32, i32* %ctrl, align 4, !dbg !2552
  %shr = lshr i32 %8, 8, !dbg !2553
  %conv3 = zext i32 %shr to i64, !dbg !2554
  %9 = load i64, i64* %base_unit_range, align 8, !dbg !2555
  %sub4 = sub i64 %9, 1, !dbg !2556
  %and5 = and i64 %conv3, %sub4, !dbg !2557
  store i64 %and5, i64* %base_unit, align 8, !dbg !2558
  %10 = load i64, i64* %base_unit, align 8, !dbg !2559
  %11 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm, align 8, !dbg !2560
  %info6 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %11, i32 0, i32 2, !dbg !2561
  %12 = load %struct.pwm_lpss_boardinfo*, %struct.pwm_lpss_boardinfo** %info6, align 8, !dbg !2561
  %clk_rate = getelementptr inbounds %struct.pwm_lpss_boardinfo, %struct.pwm_lpss_boardinfo* %12, i32 0, i32 0, !dbg !2562
  %13 = load i64, i64* %clk_rate, align 8, !dbg !2562
  %mul = mul i64 %10, %13, !dbg !2563
  store i64 %mul, i64* %freq, align 8, !dbg !2564
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !2565, metadata !DIExpression()), !dbg !2567
  %14 = load i64, i64* %base_unit_range, align 8, !dbg !2567
  %conv7 = trunc i64 %14 to i32, !dbg !2567
  store i32 %conv7, i32* %__base, align 4, !dbg !2567
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !2568, metadata !DIExpression()), !dbg !2567
  %15 = load i64, i64* %freq, align 8, !dbg !2567
  %16 = load i32, i32* %__base, align 4, !dbg !2567
  %conv8 = zext i32 %16 to i64, !dbg !2567
  %rem = urem i64 %15, %conv8, !dbg !2567
  %conv9 = trunc i64 %rem to i32, !dbg !2567
  store i32 %conv9, i32* %__rem, align 4, !dbg !2567
  %17 = load i64, i64* %freq, align 8, !dbg !2567
  %18 = load i32, i32* %__base, align 4, !dbg !2567
  %conv10 = zext i32 %18 to i64, !dbg !2567
  %div = udiv i64 %17, %conv10, !dbg !2567
  store i64 %div, i64* %freq, align 8, !dbg !2567
  %19 = load i32, i32* %__rem, align 4, !dbg !2567
  store i32 %19, i32* %tmp, align 4, !dbg !2567
  %20 = load i32, i32* %tmp, align 4, !dbg !2567
  %21 = load i64, i64* %freq, align 8, !dbg !2569
  %cmp = icmp eq i64 %21, 0, !dbg !2571
  br i1 %cmp, label %if.then, label %if.else, !dbg !2572

if.then:                                          ; preds = %entry
  %22 = load %struct.pwm_state*, %struct.pwm_state** %state.addr, align 8, !dbg !2573
  %period = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %22, i32 0, i32 0, !dbg !2574
  store i64 1000000000, i64* %period, align 8, !dbg !2575
  br label %if.end, !dbg !2573

if.else:                                          ; preds = %entry
  %23 = load i64, i64* %freq, align 8, !dbg !2576
  %div12 = udiv i64 1000000000, %23, !dbg !2577
  %24 = load %struct.pwm_state*, %struct.pwm_state** %state.addr, align 8, !dbg !2578
  %period13 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %24, i32 0, i32 0, !dbg !2579
  store i64 %div12, i64* %period13, align 8, !dbg !2580
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %25 = load %struct.pwm_state*, %struct.pwm_state** %state.addr, align 8, !dbg !2581
  %period14 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %25, i32 0, i32 0, !dbg !2582
  %26 = load i64, i64* %period14, align 8, !dbg !2582
  %27 = load i64, i64* %on_time_div, align 8, !dbg !2583
  %mul15 = mul i64 %27, %26, !dbg !2583
  store i64 %mul15, i64* %on_time_div, align 8, !dbg !2583
  call void @llvm.dbg.declare(metadata i32* %__base16, metadata !2584, metadata !DIExpression()), !dbg !2586
  store i32 255, i32* %__base16, align 4, !dbg !2586
  call void @llvm.dbg.declare(metadata i32* %__rem17, metadata !2587, metadata !DIExpression()), !dbg !2586
  %28 = load i64, i64* %on_time_div, align 8, !dbg !2586
  %29 = load i32, i32* %__base16, align 4, !dbg !2586
  %conv18 = zext i32 %29 to i64, !dbg !2586
  %rem19 = urem i64 %28, %conv18, !dbg !2586
  %conv20 = trunc i64 %rem19 to i32, !dbg !2586
  store i32 %conv20, i32* %__rem17, align 4, !dbg !2586
  %30 = load i64, i64* %on_time_div, align 8, !dbg !2586
  %31 = load i32, i32* %__base16, align 4, !dbg !2586
  %conv21 = zext i32 %31 to i64, !dbg !2586
  %div22 = udiv i64 %30, %conv21, !dbg !2586
  store i64 %div22, i64* %on_time_div, align 8, !dbg !2586
  %32 = load i32, i32* %__rem17, align 4, !dbg !2586
  store i32 %32, i32* %tmp23, align 4, !dbg !2586
  %33 = load i32, i32* %tmp23, align 4, !dbg !2586
  %34 = load i64, i64* %on_time_div, align 8, !dbg !2588
  %35 = load %struct.pwm_state*, %struct.pwm_state** %state.addr, align 8, !dbg !2589
  %duty_cycle = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %35, i32 0, i32 1, !dbg !2590
  store i64 %34, i64* %duty_cycle, align 8, !dbg !2591
  %36 = load %struct.pwm_state*, %struct.pwm_state** %state.addr, align 8, !dbg !2592
  %polarity = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %36, i32 0, i32 2, !dbg !2593
  store i32 0, i32* %polarity, align 8, !dbg !2594
  %37 = load i32, i32* %ctrl, align 4, !dbg !2595
  %conv24 = zext i32 %37 to i64, !dbg !2595
  %and25 = and i64 %conv24, 2147483648, !dbg !2596
  %tobool = icmp ne i64 %and25, 0, !dbg !2597
  %lnot = xor i1 %tobool, true, !dbg !2597
  %lnot26 = xor i1 %lnot, true, !dbg !2598
  %38 = load %struct.pwm_state*, %struct.pwm_state** %state.addr, align 8, !dbg !2599
  %enabled = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %38, i32 0, i32 3, !dbg !2600
  %frombool = zext i1 %lnot26 to i8, !dbg !2601
  store i8 %frombool, i8* %enabled, align 4, !dbg !2601
  %39 = load %struct.pwm_chip*, %struct.pwm_chip** %chip.addr, align 8, !dbg !2602
  %dev27 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %39, i32 0, i32 0, !dbg !2603
  %40 = load %struct.device*, %struct.device** %dev27, align 8, !dbg !2603
  %call28 = call i32 @pm_runtime_put(%struct.device* %40) #6, !dbg !2604
  ret void, !dbg !2605
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pwm_lpss_chip* @to_lpwm(%struct.pwm_chip* %chip) #0 !dbg !2606 {
entry:
  %chip.addr = alloca %struct.pwm_chip*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pwm_lpss_chip*, align 8
  store %struct.pwm_chip* %chip, %struct.pwm_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_chip** %chip.addr, metadata !2609, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2611, metadata !DIExpression()), !dbg !2613
  %0 = load %struct.pwm_chip*, %struct.pwm_chip** %chip.addr, align 8, !dbg !2613
  %1 = bitcast %struct.pwm_chip* %0 to i8*, !dbg !2613
  store i8* %1, i8** %__mptr, align 8, !dbg !2613
  br label %do.body, !dbg !2613

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2614

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2613
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2613
  %3 = bitcast i8* %add.ptr to %struct.pwm_lpss_chip*, !dbg !2613
  store %struct.pwm_lpss_chip* %3, %struct.pwm_lpss_chip** %tmp, align 8, !dbg !2614
  %4 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %tmp, align 8, !dbg !2613
  ret %struct.pwm_lpss_chip* %4, !dbg !2616
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_get_sync(%struct.device* %dev) #0 !dbg !2617 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2618, metadata !DIExpression()), !dbg !2619
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2620
  %call = call i32 @__pm_runtime_resume(%struct.device* %0, i32 4) #6, !dbg !2621
  ret i32 %call, !dbg !2622
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pwm_lpss_prepare_enable(%struct.pwm_lpss_chip* %lpwm, %struct.pwm_device* %pwm, %struct.pwm_state* %state) #0 !dbg !2623 {
entry:
  %retval = alloca i32, align 4
  %lpwm.addr = alloca %struct.pwm_lpss_chip*, align 8
  %pwm.addr = alloca %struct.pwm_device*, align 8
  %state.addr = alloca %struct.pwm_state*, align 8
  %ret = alloca i32, align 4
  store %struct.pwm_lpss_chip* %lpwm, %struct.pwm_lpss_chip** %lpwm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_lpss_chip** %lpwm.addr, metadata !2626, metadata !DIExpression()), !dbg !2627
  store %struct.pwm_device* %pwm, %struct.pwm_device** %pwm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm.addr, metadata !2628, metadata !DIExpression()), !dbg !2629
  store %struct.pwm_state* %state, %struct.pwm_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_state** %state.addr, metadata !2630, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2632, metadata !DIExpression()), !dbg !2633
  %0 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2634
  %call = call i32 @pwm_lpss_is_updating(%struct.pwm_device* %0) #6, !dbg !2635
  store i32 %call, i32* %ret, align 4, !dbg !2636
  %1 = load i32, i32* %ret, align 4, !dbg !2637
  %tobool = icmp ne i32 %1, 0, !dbg !2637
  br i1 %tobool, label %if.then, label %if.end, !dbg !2639

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !2640
  store i32 %2, i32* %retval, align 4, !dbg !2641
  br label %return, !dbg !2641

if.end:                                           ; preds = %entry
  %3 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm.addr, align 8, !dbg !2642
  %4 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2643
  %5 = load %struct.pwm_state*, %struct.pwm_state** %state.addr, align 8, !dbg !2644
  %duty_cycle = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %5, i32 0, i32 1, !dbg !2645
  %6 = load i64, i64* %duty_cycle, align 8, !dbg !2645
  %conv = trunc i64 %6 to i32, !dbg !2644
  %7 = load %struct.pwm_state*, %struct.pwm_state** %state.addr, align 8, !dbg !2646
  %period = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %7, i32 0, i32 0, !dbg !2647
  %8 = load i64, i64* %period, align 8, !dbg !2647
  %conv1 = trunc i64 %8 to i32, !dbg !2646
  call void @pwm_lpss_prepare(%struct.pwm_lpss_chip* %3, %struct.pwm_device* %4, i32 %conv, i32 %conv1) #6, !dbg !2648
  %9 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2649
  %10 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm.addr, align 8, !dbg !2650
  %info = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %10, i32 0, i32 2, !dbg !2651
  %11 = load %struct.pwm_lpss_boardinfo*, %struct.pwm_lpss_boardinfo** %info, align 8, !dbg !2651
  %bypass = getelementptr inbounds %struct.pwm_lpss_boardinfo, %struct.pwm_lpss_boardinfo* %11, i32 0, i32 3, !dbg !2652
  %12 = load i8, i8* %bypass, align 8, !dbg !2652
  %tobool2 = trunc i8 %12 to i1, !dbg !2652
  %conv3 = zext i1 %tobool2 to i32, !dbg !2650
  %cmp = icmp eq i32 %conv3, 0, !dbg !2653
  call void @pwm_lpss_cond_enable(%struct.pwm_device* %9, i1 zeroext %cmp) #6, !dbg !2654
  %13 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2655
  %call5 = call i32 @pwm_lpss_wait_for_update(%struct.pwm_device* %13) #6, !dbg !2656
  store i32 %call5, i32* %ret, align 4, !dbg !2657
  %14 = load i32, i32* %ret, align 4, !dbg !2658
  %tobool6 = icmp ne i32 %14, 0, !dbg !2658
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !2660

if.then7:                                         ; preds = %if.end
  %15 = load i32, i32* %ret, align 4, !dbg !2661
  store i32 %15, i32* %retval, align 4, !dbg !2662
  br label %return, !dbg !2662

if.end8:                                          ; preds = %if.end
  %16 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2663
  %17 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm.addr, align 8, !dbg !2664
  %info9 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %17, i32 0, i32 2, !dbg !2665
  %18 = load %struct.pwm_lpss_boardinfo*, %struct.pwm_lpss_boardinfo** %info9, align 8, !dbg !2665
  %bypass10 = getelementptr inbounds %struct.pwm_lpss_boardinfo, %struct.pwm_lpss_boardinfo* %18, i32 0, i32 3, !dbg !2666
  %19 = load i8, i8* %bypass10, align 8, !dbg !2666
  %tobool11 = trunc i8 %19 to i1, !dbg !2666
  %conv12 = zext i1 %tobool11 to i32, !dbg !2664
  %cmp13 = icmp eq i32 %conv12, 1, !dbg !2667
  call void @pwm_lpss_cond_enable(%struct.pwm_device* %16, i1 zeroext %cmp13) #6, !dbg !2668
  store i32 0, i32* %retval, align 4, !dbg !2669
  br label %return, !dbg !2669

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !2670
  ret i32 %20, !dbg !2670
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pwm_lpss_write(%struct.pwm_device* %pwm, i32 %value) #0 !dbg !2671 {
entry:
  %pwm.addr = alloca %struct.pwm_device*, align 8
  %value.addr = alloca i32, align 4
  %lpwm = alloca %struct.pwm_lpss_chip*, align 8
  store %struct.pwm_device* %pwm, %struct.pwm_device** %pwm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm.addr, metadata !2674, metadata !DIExpression()), !dbg !2675
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !2676, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.declare(metadata %struct.pwm_lpss_chip** %lpwm, metadata !2678, metadata !DIExpression()), !dbg !2679
  %0 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2680
  %chip = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %0, i32 0, i32 4, !dbg !2681
  %1 = load %struct.pwm_chip*, %struct.pwm_chip** %chip, align 8, !dbg !2681
  %call = call %struct.pwm_lpss_chip* @to_lpwm(%struct.pwm_chip* %1) #6, !dbg !2682
  store %struct.pwm_lpss_chip* %call, %struct.pwm_lpss_chip** %lpwm, align 8, !dbg !2679
  %2 = load i32, i32* %value.addr, align 4, !dbg !2683
  %3 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm, align 8, !dbg !2684
  %regs = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %3, i32 0, i32 1, !dbg !2685
  %4 = load i8*, i8** %regs, align 8, !dbg !2685
  %5 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2686
  %hwpwm = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %5, i32 0, i32 2, !dbg !2687
  %6 = load i32, i32* %hwpwm, align 8, !dbg !2687
  %mul = mul i32 %6, 1024, !dbg !2688
  %idx.ext = zext i32 %mul to i64, !dbg !2689
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext, !dbg !2689
  %add.ptr1 = getelementptr i8, i8* %add.ptr, i64 0, !dbg !2690
  call void @writel(i32 %2, i8* %add.ptr1) #6, !dbg !2691
  ret void, !dbg !2692
}

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_resume(%struct.device*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pwm_lpss_is_updating(%struct.pwm_device* %pwm) #0 !dbg !2693 {
entry:
  %pwm.addr = alloca %struct.pwm_device*, align 8
  store %struct.pwm_device* %pwm, %struct.pwm_device** %pwm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm.addr, metadata !2696, metadata !DIExpression()), !dbg !2697
  %0 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2698
  %call = call i32 @pwm_lpss_read(%struct.pwm_device* %0) #6, !dbg !2699
  %conv = zext i32 %call to i64, !dbg !2699
  %and = and i64 %conv, 1073741824, !dbg !2700
  %tobool = icmp ne i64 %and, 0, !dbg !2701
  %1 = zext i1 %tobool to i64, !dbg !2701
  %cond = select i1 %tobool, i32 -16, i32 0, !dbg !2701
  ret i32 %cond, !dbg !2702
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pwm_lpss_prepare(%struct.pwm_lpss_chip* %lpwm, %struct.pwm_device* %pwm, i32 %duty_ns, i32 %period_ns) #0 !dbg !2703 {
entry:
  %lpwm.addr = alloca %struct.pwm_lpss_chip*, align 8
  %pwm.addr = alloca %struct.pwm_device*, align 8
  %duty_ns.addr = alloca i32, align 4
  %period_ns.addr = alloca i32, align 4
  %on_time_div = alloca i64, align 8
  %c = alloca i64, align 8
  %base_unit_range = alloca i64, align 8
  %base_unit = alloca i64, align 8
  %freq = alloca i64, align 8
  %ctrl = alloca i32, align 4
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__d = alloca i64, align 8
  %_tmp = alloca i64, align 8
  %__base5 = alloca i32, align 4
  %__rem7 = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  %tmp14 = alloca i64, align 8
  %__UNIQUE_ID___x163 = alloca i64, align 8
  %__UNIQUE_ID___x161 = alloca i64, align 8
  %__UNIQUE_ID___y162 = alloca i64, align 8
  %tmp15 = alloca i64, align 8
  %__UNIQUE_ID___y164 = alloca i64, align 8
  %tmp17 = alloca i64, align 8
  %__base26 = alloca i32, align 4
  %__rem27 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct.pwm_lpss_chip* %lpwm, %struct.pwm_lpss_chip** %lpwm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_lpss_chip** %lpwm.addr, metadata !2706, metadata !DIExpression()), !dbg !2707
  store %struct.pwm_device* %pwm, %struct.pwm_device** %pwm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm.addr, metadata !2708, metadata !DIExpression()), !dbg !2709
  store i32 %duty_ns, i32* %duty_ns.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %duty_ns.addr, metadata !2710, metadata !DIExpression()), !dbg !2711
  store i32 %period_ns, i32* %period_ns.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %period_ns.addr, metadata !2712, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.declare(metadata i64* %on_time_div, metadata !2714, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.declare(metadata i64* %c, metadata !2716, metadata !DIExpression()), !dbg !2717
  %0 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm.addr, align 8, !dbg !2718
  %info = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %0, i32 0, i32 2, !dbg !2719
  %1 = load %struct.pwm_lpss_boardinfo*, %struct.pwm_lpss_boardinfo** %info, align 8, !dbg !2719
  %clk_rate = getelementptr inbounds %struct.pwm_lpss_boardinfo, %struct.pwm_lpss_boardinfo* %1, i32 0, i32 0, !dbg !2720
  %2 = load i64, i64* %clk_rate, align 8, !dbg !2720
  store i64 %2, i64* %c, align 8, !dbg !2717
  call void @llvm.dbg.declare(metadata i64* %base_unit_range, metadata !2721, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.declare(metadata i64* %base_unit, metadata !2723, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.declare(metadata i64* %freq, metadata !2725, metadata !DIExpression()), !dbg !2726
  store i64 1000000000, i64* %freq, align 8, !dbg !2726
  call void @llvm.dbg.declare(metadata i32* %ctrl, metadata !2727, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !2729, metadata !DIExpression()), !dbg !2731
  %3 = load i32, i32* %period_ns.addr, align 4, !dbg !2731
  store i32 %3, i32* %__base, align 4, !dbg !2731
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !2732, metadata !DIExpression()), !dbg !2731
  %4 = load i64, i64* %freq, align 8, !dbg !2731
  %5 = load i32, i32* %__base, align 4, !dbg !2731
  %conv = zext i32 %5 to i64, !dbg !2731
  %rem = urem i64 %4, %conv, !dbg !2731
  %conv1 = trunc i64 %rem to i32, !dbg !2731
  store i32 %conv1, i32* %__rem, align 4, !dbg !2731
  %6 = load i64, i64* %freq, align 8, !dbg !2731
  %7 = load i32, i32* %__base, align 4, !dbg !2731
  %conv2 = zext i32 %7 to i64, !dbg !2731
  %div = udiv i64 %6, %conv2, !dbg !2731
  store i64 %div, i64* %freq, align 8, !dbg !2731
  %8 = load i32, i32* %__rem, align 4, !dbg !2731
  store i32 %8, i32* %tmp, align 4, !dbg !2731
  %9 = load i32, i32* %tmp, align 4, !dbg !2731
  %10 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm.addr, align 8, !dbg !2733
  %info3 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %10, i32 0, i32 2, !dbg !2733
  %11 = load %struct.pwm_lpss_boardinfo*, %struct.pwm_lpss_boardinfo** %info3, align 8, !dbg !2733
  %base_unit_bits = getelementptr inbounds %struct.pwm_lpss_boardinfo, %struct.pwm_lpss_boardinfo* %11, i32 0, i32 2, !dbg !2733
  %12 = load i64, i64* %base_unit_bits, align 8, !dbg !2733
  %shl = shl i64 1, %12, !dbg !2733
  store i64 %shl, i64* %base_unit_range, align 8, !dbg !2734
  %13 = load i64, i64* %base_unit_range, align 8, !dbg !2735
  %14 = load i64, i64* %freq, align 8, !dbg !2736
  %mul = mul i64 %14, %13, !dbg !2736
  store i64 %mul, i64* %freq, align 8, !dbg !2736
  call void @llvm.dbg.declare(metadata i64* %__d, metadata !2737, metadata !DIExpression()), !dbg !2739
  %15 = load i64, i64* %c, align 8, !dbg !2739
  store i64 %15, i64* %__d, align 8, !dbg !2739
  call void @llvm.dbg.declare(metadata i64* %_tmp, metadata !2740, metadata !DIExpression()), !dbg !2739
  %16 = load i64, i64* %freq, align 8, !dbg !2739
  %17 = load i64, i64* %__d, align 8, !dbg !2739
  %div4 = udiv i64 %17, 2, !dbg !2739
  %add = add i64 %16, %div4, !dbg !2739
  store i64 %add, i64* %_tmp, align 8, !dbg !2739
  call void @llvm.dbg.declare(metadata i32* %__base5, metadata !2741, metadata !DIExpression()), !dbg !2743
  %18 = load i64, i64* %__d, align 8, !dbg !2743
  %conv6 = trunc i64 %18 to i32, !dbg !2743
  store i32 %conv6, i32* %__base5, align 4, !dbg !2743
  call void @llvm.dbg.declare(metadata i32* %__rem7, metadata !2744, metadata !DIExpression()), !dbg !2743
  %19 = load i64, i64* %_tmp, align 8, !dbg !2743
  %20 = load i32, i32* %__base5, align 4, !dbg !2743
  %conv8 = zext i32 %20 to i64, !dbg !2743
  %rem9 = urem i64 %19, %conv8, !dbg !2743
  %conv10 = trunc i64 %rem9 to i32, !dbg !2743
  store i32 %conv10, i32* %__rem7, align 4, !dbg !2743
  %21 = load i64, i64* %_tmp, align 8, !dbg !2743
  %22 = load i32, i32* %__base5, align 4, !dbg !2743
  %conv11 = zext i32 %22 to i64, !dbg !2743
  %div12 = udiv i64 %21, %conv11, !dbg !2743
  store i64 %div12, i64* %_tmp, align 8, !dbg !2743
  %23 = load i32, i32* %__rem7, align 4, !dbg !2743
  store i32 %23, i32* %tmp13, align 4, !dbg !2743
  %24 = load i32, i32* %tmp13, align 4, !dbg !2743
  %25 = load i64, i64* %_tmp, align 8, !dbg !2739
  store i64 %25, i64* %tmp14, align 8, !dbg !2739
  %26 = load i64, i64* %tmp14, align 8, !dbg !2739
  store i64 %26, i64* %base_unit, align 8, !dbg !2745
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x163, metadata !2746, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x161, metadata !2749, metadata !DIExpression()), !dbg !2751
  %27 = load i64, i64* %base_unit, align 8, !dbg !2751
  store i64 %27, i64* %__UNIQUE_ID___x161, align 8, !dbg !2751
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y162, metadata !2752, metadata !DIExpression()), !dbg !2751
  store i64 1, i64* %__UNIQUE_ID___y162, align 8, !dbg !2751
  %28 = load i64, i64* %__UNIQUE_ID___x161, align 8, !dbg !2751
  %29 = load i64, i64* %__UNIQUE_ID___y162, align 8, !dbg !2751
  %cmp = icmp ugt i64 %28, %29, !dbg !2751
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2751

cond.true:                                        ; preds = %entry
  %30 = load i64, i64* %__UNIQUE_ID___x161, align 8, !dbg !2751
  br label %cond.end, !dbg !2751

cond.false:                                       ; preds = %entry
  %31 = load i64, i64* %__UNIQUE_ID___y162, align 8, !dbg !2751
  br label %cond.end, !dbg !2751

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %30, %cond.true ], [ %31, %cond.false ], !dbg !2751
  store i64 %cond, i64* %tmp15, align 8, !dbg !2751
  %32 = load i64, i64* %tmp15, align 8, !dbg !2751
  store i64 %32, i64* %__UNIQUE_ID___x163, align 8, !dbg !2748
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y164, metadata !2753, metadata !DIExpression()), !dbg !2748
  %33 = load i64, i64* %base_unit_range, align 8, !dbg !2748
  %sub = sub i64 %33, 1, !dbg !2748
  store i64 %sub, i64* %__UNIQUE_ID___y164, align 8, !dbg !2748
  %34 = load i64, i64* %__UNIQUE_ID___x163, align 8, !dbg !2748
  %35 = load i64, i64* %__UNIQUE_ID___y164, align 8, !dbg !2748
  %cmp18 = icmp ult i64 %34, %35, !dbg !2748
  br i1 %cmp18, label %cond.true20, label %cond.false21, !dbg !2748

cond.true20:                                      ; preds = %cond.end
  %36 = load i64, i64* %__UNIQUE_ID___x163, align 8, !dbg !2748
  br label %cond.end22, !dbg !2748

cond.false21:                                     ; preds = %cond.end
  %37 = load i64, i64* %__UNIQUE_ID___y164, align 8, !dbg !2748
  br label %cond.end22, !dbg !2748

cond.end22:                                       ; preds = %cond.false21, %cond.true20
  %cond23 = phi i64 [ %36, %cond.true20 ], [ %37, %cond.false21 ], !dbg !2748
  store i64 %cond23, i64* %tmp17, align 8, !dbg !2748
  %38 = load i64, i64* %tmp17, align 8, !dbg !2748
  store i64 %38, i64* %base_unit, align 8, !dbg !2754
  %39 = load i32, i32* %duty_ns.addr, align 4, !dbg !2755
  %conv24 = sext i32 %39 to i64, !dbg !2755
  %mul25 = mul i64 255, %conv24, !dbg !2756
  store i64 %mul25, i64* %on_time_div, align 8, !dbg !2757
  call void @llvm.dbg.declare(metadata i32* %__base26, metadata !2758, metadata !DIExpression()), !dbg !2760
  %40 = load i32, i32* %period_ns.addr, align 4, !dbg !2760
  store i32 %40, i32* %__base26, align 4, !dbg !2760
  call void @llvm.dbg.declare(metadata i32* %__rem27, metadata !2761, metadata !DIExpression()), !dbg !2760
  %41 = load i64, i64* %on_time_div, align 8, !dbg !2760
  %42 = load i32, i32* %__base26, align 4, !dbg !2760
  %conv28 = zext i32 %42 to i64, !dbg !2760
  %rem29 = urem i64 %41, %conv28, !dbg !2760
  %conv30 = trunc i64 %rem29 to i32, !dbg !2760
  store i32 %conv30, i32* %__rem27, align 4, !dbg !2760
  %43 = load i64, i64* %on_time_div, align 8, !dbg !2760
  %44 = load i32, i32* %__base26, align 4, !dbg !2760
  %conv31 = zext i32 %44 to i64, !dbg !2760
  %div32 = udiv i64 %43, %conv31, !dbg !2760
  store i64 %div32, i64* %on_time_div, align 8, !dbg !2760
  %45 = load i32, i32* %__rem27, align 4, !dbg !2760
  store i32 %45, i32* %tmp33, align 4, !dbg !2760
  %46 = load i32, i32* %tmp33, align 4, !dbg !2760
  %47 = load i64, i64* %on_time_div, align 8, !dbg !2762
  %sub34 = sub i64 255, %47, !dbg !2763
  store i64 %sub34, i64* %on_time_div, align 8, !dbg !2764
  %48 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2765
  %call = call i32 @pwm_lpss_read(%struct.pwm_device* %48) #6, !dbg !2766
  store i32 %call, i32* %ctrl, align 4, !dbg !2767
  %49 = load i32, i32* %ctrl, align 4, !dbg !2768
  %and = and i32 %49, -256, !dbg !2768
  store i32 %and, i32* %ctrl, align 4, !dbg !2768
  %50 = load i64, i64* %base_unit_range, align 8, !dbg !2769
  %sub35 = sub i64 %50, 1, !dbg !2770
  %shl36 = shl i64 %sub35, 8, !dbg !2771
  %neg = xor i64 %shl36, -1, !dbg !2772
  %51 = load i32, i32* %ctrl, align 4, !dbg !2773
  %conv37 = zext i32 %51 to i64, !dbg !2773
  %and38 = and i64 %conv37, %neg, !dbg !2773
  %conv39 = trunc i64 %and38 to i32, !dbg !2773
  store i32 %conv39, i32* %ctrl, align 4, !dbg !2773
  %52 = load i64, i64* %base_unit, align 8, !dbg !2774
  %conv40 = trunc i64 %52 to i32, !dbg !2775
  %shl41 = shl i32 %conv40, 8, !dbg !2776
  %53 = load i32, i32* %ctrl, align 4, !dbg !2777
  %or = or i32 %53, %shl41, !dbg !2777
  store i32 %or, i32* %ctrl, align 4, !dbg !2777
  %54 = load i64, i64* %on_time_div, align 8, !dbg !2778
  %55 = load i32, i32* %ctrl, align 4, !dbg !2779
  %conv42 = zext i32 %55 to i64, !dbg !2779
  %or43 = or i64 %conv42, %54, !dbg !2779
  %conv44 = trunc i64 %or43 to i32, !dbg !2779
  store i32 %conv44, i32* %ctrl, align 4, !dbg !2779
  %56 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2780
  %57 = load i32, i32* %ctrl, align 4, !dbg !2781
  call void @pwm_lpss_write(%struct.pwm_device* %56, i32 %57) #6, !dbg !2782
  %58 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2783
  %59 = load i32, i32* %ctrl, align 4, !dbg !2784
  %conv45 = zext i32 %59 to i64, !dbg !2784
  %or46 = or i64 %conv45, 1073741824, !dbg !2785
  %conv47 = trunc i64 %or46 to i32, !dbg !2784
  call void @pwm_lpss_write(%struct.pwm_device* %58, i32 %conv47) #6, !dbg !2786
  ret void, !dbg !2787
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pwm_lpss_cond_enable(%struct.pwm_device* %pwm, i1 zeroext %cond) #0 !dbg !2788 {
entry:
  %pwm.addr = alloca %struct.pwm_device*, align 8
  %cond.addr = alloca i8, align 1
  store %struct.pwm_device* %pwm, %struct.pwm_device** %pwm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm.addr, metadata !2791, metadata !DIExpression()), !dbg !2792
  %frombool = zext i1 %cond to i8
  store i8 %frombool, i8* %cond.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %cond.addr, metadata !2793, metadata !DIExpression()), !dbg !2794
  %0 = load i8, i8* %cond.addr, align 1, !dbg !2795
  %tobool = trunc i8 %0 to i1, !dbg !2795
  br i1 %tobool, label %if.then, label %if.end, !dbg !2797

if.then:                                          ; preds = %entry
  %1 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2798
  %2 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2799
  %call = call i32 @pwm_lpss_read(%struct.pwm_device* %2) #6, !dbg !2800
  %conv = zext i32 %call to i64, !dbg !2800
  %or = or i64 %conv, 2147483648, !dbg !2801
  %conv1 = trunc i64 %or to i32, !dbg !2800
  call void @pwm_lpss_write(%struct.pwm_device* %1, i32 %conv1) #6, !dbg !2802
  br label %if.end, !dbg !2802

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2803
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pwm_lpss_wait_for_update(%struct.pwm_device* %pwm) #0 !dbg !2804 {
entry:
  %pwm.addr = alloca %struct.pwm_device*, align 8
  %lpwm = alloca %struct.pwm_lpss_chip*, align 8
  %addr = alloca i8*, align 8
  %ms = alloca i32, align 4
  %val = alloca i32, align 4
  %err = alloca i32, align 4
  %__timeout_us = alloca i64, align 8
  %__sleep_us = alloca i64, align 8
  %__timeout = alloca i64, align 8
  %tmp = alloca i32, align 4
  store %struct.pwm_device* %pwm, %struct.pwm_device** %pwm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm.addr, metadata !2805, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.declare(metadata %struct.pwm_lpss_chip** %lpwm, metadata !2807, metadata !DIExpression()), !dbg !2808
  %0 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2809
  %chip = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %0, i32 0, i32 4, !dbg !2810
  %1 = load %struct.pwm_chip*, %struct.pwm_chip** %chip, align 8, !dbg !2810
  %call = call %struct.pwm_lpss_chip* @to_lpwm(%struct.pwm_chip* %1) #6, !dbg !2811
  store %struct.pwm_lpss_chip* %call, %struct.pwm_lpss_chip** %lpwm, align 8, !dbg !2808
  call void @llvm.dbg.declare(metadata i8** %addr, metadata !2812, metadata !DIExpression()), !dbg !2813
  %2 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %lpwm, align 8, !dbg !2814
  %regs = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %2, i32 0, i32 1, !dbg !2815
  %3 = load i8*, i8** %regs, align 8, !dbg !2815
  %4 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2816
  %hwpwm = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %4, i32 0, i32 2, !dbg !2817
  %5 = load i32, i32* %hwpwm, align 8, !dbg !2817
  %mul = mul i32 %5, 1024, !dbg !2818
  %idx.ext = zext i32 %mul to i64, !dbg !2819
  %add.ptr = getelementptr i8, i8* %3, i64 %idx.ext, !dbg !2819
  %add.ptr1 = getelementptr i8, i8* %add.ptr, i64 0, !dbg !2820
  store i8* %add.ptr1, i8** %addr, align 8, !dbg !2813
  call void @llvm.dbg.declare(metadata i32* %ms, metadata !2821, metadata !DIExpression()), !dbg !2823
  store i32 500000, i32* %ms, align 4, !dbg !2823
  call void @llvm.dbg.declare(metadata i32* %val, metadata !2824, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.declare(metadata i32* %err, metadata !2826, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.declare(metadata i64* %__timeout_us, metadata !2828, metadata !DIExpression()), !dbg !2830
  store i64 500000, i64* %__timeout_us, align 8, !dbg !2830
  call void @llvm.dbg.declare(metadata i64* %__sleep_us, metadata !2831, metadata !DIExpression()), !dbg !2830
  store i64 40, i64* %__sleep_us, align 8, !dbg !2830
  call void @llvm.dbg.declare(metadata i64* %__timeout, metadata !2832, metadata !DIExpression()), !dbg !2830
  %call2 = call i64 @ktime_get() #6, !dbg !2830
  %6 = load i64, i64* %__timeout_us, align 8, !dbg !2830
  %call3 = call i64 @ktime_add_us(i64 %call2, i64 %6) #6, !dbg !2830
  store i64 %call3, i64* %__timeout, align 8, !dbg !2830
  br label %do.body, !dbg !2830

do.body:                                          ; preds = %entry
  %7 = load i64, i64* %__sleep_us, align 8, !dbg !2833
  %cmp = icmp ne i64 %7, 0, !dbg !2833
  br i1 %cmp, label %if.then, label %if.end, !dbg !2836

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !2833

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !2837

do.body5:                                         ; preds = %do.body4
  br label %do.end, !dbg !2839

do.end:                                           ; preds = %do.body5
  br label %do.end6, !dbg !2837

do.end6:                                          ; preds = %do.end
  br label %if.end, !dbg !2837

if.end:                                           ; preds = %do.end6, %do.body
  br label %do.end7, !dbg !2836

do.end7:                                          ; preds = %if.end
  br label %for.cond, !dbg !2830

for.cond:                                         ; preds = %if.end21, %do.end7
  %8 = load i8*, i8** %addr, align 8, !dbg !2841
  %call8 = call i32 @readl(i8* %8) #6, !dbg !2841
  store i32 %call8, i32* %val, align 4, !dbg !2841
  %9 = load i32, i32* %val, align 4, !dbg !2845
  %conv = zext i32 %9 to i64, !dbg !2845
  %and = and i64 %conv, 1073741824, !dbg !2845
  %tobool = icmp ne i64 %and, 0, !dbg !2845
  br i1 %tobool, label %if.end10, label %if.then9, !dbg !2841

if.then9:                                         ; preds = %for.cond
  br label %for.end, !dbg !2845

if.end10:                                         ; preds = %for.cond
  %10 = load i64, i64* %__timeout_us, align 8, !dbg !2847
  %tobool11 = icmp ne i64 %10, 0, !dbg !2847
  br i1 %tobool11, label %land.lhs.true, label %if.end18, !dbg !2847

land.lhs.true:                                    ; preds = %if.end10
  %call12 = call i64 @ktime_get() #6, !dbg !2847
  %11 = load i64, i64* %__timeout, align 8, !dbg !2847
  %call13 = call i32 @ktime_compare(i64 %call12, i64 %11) #6, !dbg !2847
  %cmp14 = icmp sgt i32 %call13, 0, !dbg !2847
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !2841

if.then16:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %addr, align 8, !dbg !2849
  %call17 = call i32 @readl(i8* %12) #6, !dbg !2849
  store i32 %call17, i32* %val, align 4, !dbg !2849
  br label %for.end, !dbg !2849

if.end18:                                         ; preds = %land.lhs.true, %if.end10
  %13 = load i64, i64* %__sleep_us, align 8, !dbg !2851
  %tobool19 = icmp ne i64 %13, 0, !dbg !2851
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !2841

if.then20:                                        ; preds = %if.end18
  %14 = load i64, i64* %__sleep_us, align 8, !dbg !2851
  %shr = lshr i64 %14, 2, !dbg !2851
  %add = add i64 %shr, 1, !dbg !2851
  %15 = load i64, i64* %__sleep_us, align 8, !dbg !2851
  call void @usleep_range(i64 %add, i64 %15) #6, !dbg !2851
  br label %if.end21, !dbg !2851

if.end21:                                         ; preds = %if.then20, %if.end18
  br label %for.cond, !dbg !2853, !llvm.loop !2854

for.end:                                          ; preds = %if.then16, %if.then9
  %16 = load i32, i32* %val, align 4, !dbg !2830
  %conv22 = zext i32 %16 to i64, !dbg !2830
  %and23 = and i64 %conv22, 1073741824, !dbg !2830
  %tobool24 = icmp ne i64 %and23, 0, !dbg !2830
  %lnot = xor i1 %tobool24, true, !dbg !2830
  %17 = zext i1 %lnot to i64, !dbg !2830
  %cond = select i1 %lnot, i32 0, i32 -110, !dbg !2830
  store i32 %cond, i32* %tmp, align 4, !dbg !2855
  %18 = load i32, i32* %tmp, align 4, !dbg !2830
  store i32 %18, i32* %err, align 4, !dbg !2856
  %19 = load i32, i32* %err, align 4, !dbg !2857
  %tobool25 = icmp ne i32 %19, 0, !dbg !2857
  br i1 %tobool25, label %if.then26, label %if.end28, !dbg !2859

if.then26:                                        ; preds = %for.end
  %20 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2860
  %chip27 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %20, i32 0, i32 4, !dbg !2860
  %21 = load %struct.pwm_chip*, %struct.pwm_chip** %chip27, align 8, !dbg !2860
  %dev = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %21, i32 0, i32 0, !dbg !2860
  %22 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2860
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2860
  br label %if.end28, !dbg !2860

if.end28:                                         ; preds = %if.then26, %for.end
  %23 = load i32, i32* %err, align 4, !dbg !2861
  ret i32 %23, !dbg !2862
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_add_us(i64 %kt, i64 %usec) #0 !dbg !2863 {
entry:
  %kt.addr = alloca i64, align 8
  %usec.addr = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !2868, metadata !DIExpression()), !dbg !2869
  store i64 %usec, i64* %usec.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %usec.addr, metadata !2870, metadata !DIExpression()), !dbg !2871
  %0 = load i64, i64* %kt.addr, align 8, !dbg !2872
  %1 = load i64, i64* %usec.addr, align 8, !dbg !2872
  %mul = mul i64 %1, 1000, !dbg !2872
  %add = add i64 %0, %mul, !dbg !2872
  ret i64 %add, !dbg !2873
}

; Function Attrs: noredzone
declare dso_local i64 @ktime_get() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #0 !dbg !2874 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !2881, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2883, metadata !DIExpression()), !dbg !2882
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !2882
  %1 = bitcast i8* %0 to i32*, !dbg !2882
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #5, !dbg !2882, !srcloc !2884
  store i32 %2, i32* %ret, align 4, !dbg !2882
  %3 = load i32, i32* %ret, align 4, !dbg !2882
  ret i32 %3, !dbg !2882
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ktime_compare(i64 %cmp1, i64 %cmp2) #0 !dbg !2885 {
entry:
  %retval = alloca i32, align 4
  %cmp1.addr = alloca i64, align 8
  %cmp2.addr = alloca i64, align 8
  store i64 %cmp1, i64* %cmp1.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp1.addr, metadata !2888, metadata !DIExpression()), !dbg !2889
  store i64 %cmp2, i64* %cmp2.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp2.addr, metadata !2890, metadata !DIExpression()), !dbg !2891
  %0 = load i64, i64* %cmp1.addr, align 8, !dbg !2892
  %1 = load i64, i64* %cmp2.addr, align 8, !dbg !2894
  %cmp = icmp slt i64 %0, %1, !dbg !2895
  br i1 %cmp, label %if.then, label %if.end, !dbg !2896

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !2897
  br label %return, !dbg !2897

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %cmp1.addr, align 8, !dbg !2898
  %3 = load i64, i64* %cmp2.addr, align 8, !dbg !2900
  %cmp3 = icmp sgt i64 %2, %3, !dbg !2901
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2902

if.then4:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !2903
  br label %return, !dbg !2903

if.end5:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2904
  br label %return, !dbg !2904

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !2905
  ret i32 %4, !dbg !2905
}

; Function Attrs: noredzone
declare dso_local void @usleep_range(i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #0 !dbg !2906 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !2910, metadata !DIExpression()), !dbg !2911
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !2912, metadata !DIExpression()), !dbg !2911
  %0 = load i32, i32* %val.addr, align 4, !dbg !2911
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !2911
  %2 = bitcast i8* %1 to i32*, !dbg !2911
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #5, !dbg !2911, !srcloc !2913
  ret void, !dbg !2911
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pwm_get_state(%struct.pwm_device* %pwm, %struct.pwm_state* %state) #0 !dbg !2914 {
entry:
  %pwm.addr = alloca %struct.pwm_device*, align 8
  %state.addr = alloca %struct.pwm_state*, align 8
  store %struct.pwm_device* %pwm, %struct.pwm_device** %pwm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm.addr, metadata !2917, metadata !DIExpression()), !dbg !2918
  store %struct.pwm_state* %state, %struct.pwm_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_state** %state.addr, metadata !2919, metadata !DIExpression()), !dbg !2920
  %0 = load %struct.pwm_state*, %struct.pwm_state** %state.addr, align 8, !dbg !2921
  %1 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2922
  %state1 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %1, i32 0, i32 7, !dbg !2923
  %2 = bitcast %struct.pwm_state* %0 to i8*, !dbg !2923
  %3 = bitcast %struct.pwm_state* %state1 to i8*, !dbg !2923
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 24, i1 false), !dbg !2923
  ret void, !dbg !2924
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_idle(%struct.device*, i32) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2179, !2180, !2181, !2182}
!llvm.ident = !{!2183}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pwm_lpss_ops", scope: !2, file: !3, line: 199, type: !2061, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !60, globals: !2158, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pwm/pwm-lpss.c", directory: "/home/lizy2001/genbc/linux")
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pwm_polarity", file: !51, line: 23, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/pwm.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "PWM_POLARITY_NORMAL", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "PWM_POLARITY_INVERSED", value: 1, isUnsigned: true)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !56, line: 10, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!57 = !{!58, !59}
!58 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!59 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!60 = !{!61, !63, !64, !65, !2155, !262, !412, !2156}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !62, line: 148, baseType: !7)
!62 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!64 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pwm_lpss_chip", file: !67, line: 18, size: 640, elements: !68)
!67 = !DIFile(filename: "drivers/pwm/pwm-lpss.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !2144, !2145}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !66, file: !67, line: 19, baseType: !70, size: 512)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pwm_chip", file: !51, line: 289, size: 512, elements: !71)
!71 = !{!72, !2059, !2126, !2127, !2128, !2141, !2142, !2143}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !70, file: !51, line: 290, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !75)
!75 = !{!76, !1583, !1584, !1587, !1588, !1639, !1736, !1737, !1738, !1739, !1740, !1749, !1854, !1867, !1870, !1871, !1875, !1877, !1878, !1879, !1883, !1889, !1890, !1893, !2008, !2009, !2012, !2013, !2014, !2015, !2047, !2048, !2049, !2052, !2055, !2056, !2057, !2058}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !74, file: !30, line: 462, baseType: !77, size: 512)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !78, line: 64, size: 512, elements: !79)
!78 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!79 = !{!80, !84, !90, !92, !153, !1420, !1573, !1578, !1579, !1580, !1581, !1582}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !77, file: !78, line: 65, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !77, file: !78, line: 66, baseType: !85, size: 128, offset: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !62, line: 178, size: 128, elements: !86)
!86 = !{!87, !89}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !85, file: !62, line: 179, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !85, file: !62, line: 179, baseType: !88, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !77, file: !78, line: 67, baseType: !91, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !77, file: !78, line: 68, baseType: !93, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !78, line: 192, size: 704, elements: !95)
!95 = !{!96, !97, !113, !114}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !94, file: !78, line: 193, baseType: !85, size: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !94, file: !78, line: 194, baseType: !98, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !99, line: 83, baseType: !100)
!99 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !99, line: 71, elements: !101)
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_member, scope: !100, file: !99, line: 72, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !100, file: !99, line: 72, elements: !104)
!104 = !{!105}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !103, file: !99, line: 73, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !99, line: 20, elements: !107)
!107 = !{!108}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !106, file: !99, line: 21, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !110, line: 25, baseType: !111)
!110 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !110, line: 25, elements: !112)
!112 = !{}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !94, file: !78, line: 195, baseType: !77, size: 512, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !94, file: !78, line: 196, baseType: !115, size: 64, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !78, line: 156, size: 192, elements: !118)
!118 = !{!119, !125, !130}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !117, file: !78, line: 157, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!124, !93, !91}
!124 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !117, file: !78, line: 158, baseType: !126, size: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!81, !93, !91}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !117, file: !78, line: 159, baseType: !131, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!124, !93, !91, !135}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !78, line: 148, size: 20736, elements: !137)
!137 = !{!138, !143, !147, !148, !152}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !136, file: !78, line: 149, baseType: !139, size: 192)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 192, elements: !141)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!141 = !{!142}
!142 = !DISubrange(count: 3)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !136, file: !78, line: 150, baseType: !144, size: 4096, offset: 192)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 4096, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !136, file: !78, line: 151, baseType: !124, size: 32, offset: 4288)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !136, file: !78, line: 152, baseType: !149, size: 16384, offset: 4320)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 16384, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 2048)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !136, file: !78, line: 153, baseType: !124, size: 32, offset: 20704)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !77, file: !78, line: 69, baseType: !154, size: 64, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !78, line: 138, size: 448, elements: !156)
!156 = !{!157, !161, !190, !192, !1368, !1399, !1403}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !155, file: !78, line: 139, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !91}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !155, file: !78, line: 140, baseType: !162, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !165, line: 230, size: 128, elements: !166)
!165 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!166 = !{!167, !183}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !164, file: !165, line: 231, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!171, !91, !176, !140}
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !62, line: 60, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !173, line: 73, baseType: !174)
!173 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !173, line: 15, baseType: !175)
!175 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !165, line: 30, size: 128, elements: !178)
!178 = !{!179, !180}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !177, file: !165, line: 31, baseType: !81, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !177, file: !165, line: 32, baseType: !181, size: 16, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !62, line: 19, baseType: !182)
!182 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !164, file: !165, line: 232, baseType: !184, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!171, !91, !176, !81, !187}
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !62, line: 55, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !173, line: 72, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !173, line: 16, baseType: !64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !155, file: !78, line: 141, baseType: !191, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !155, file: !78, line: 142, baseType: !193, size: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !165, line: 84, size: 320, elements: !197)
!197 = !{!198, !199, !203, !1365, !1366}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !165, line: 85, baseType: !81, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !196, file: !165, line: 86, baseType: !200, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!181, !91, !176, !124}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !196, file: !165, line: 88, baseType: !204, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!181, !91, !207, !124}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !165, line: 168, size: 448, elements: !209)
!209 = !{!210, !211, !212, !213, !223, !224}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !208, file: !165, line: 169, baseType: !177, size: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !208, file: !165, line: 170, baseType: !187, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !208, file: !165, line: 171, baseType: !63, size: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !208, file: !165, line: 172, baseType: !214, size: 64, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!171, !217, !91, !207, !140, !220, !187}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !219, line: 526, flags: DIFlagFwdDecl)
!219 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !62, line: 46, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !173, line: 88, baseType: !222)
!222 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !208, file: !165, line: 174, baseType: !214, size: 64, offset: 320)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !208, file: !165, line: 176, baseType: !225, size: 64, offset: 384)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!124, !217, !91, !207, !228}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !230, line: 305, size: 1472, elements: !231)
!230 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!231 = !{!232, !233, !234, !235, !236, !244, !245, !1339, !1345, !1346, !1351, !1352, !1355, !1359, !1360, !1361, !1362, !1363}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !229, file: !230, line: 308, baseType: !64, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !229, file: !230, line: 309, baseType: !64, size: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !229, file: !230, line: 313, baseType: !228, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !229, file: !230, line: 313, baseType: !228, size: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !229, file: !230, line: 315, baseType: !237, size: 192, align: 64, offset: 256)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !238, line: 24, size: 192, align: 64, elements: !239)
!238 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!239 = !{!240, !241, !243}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !237, file: !238, line: 25, baseType: !64, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !237, file: !238, line: 26, baseType: !242, size: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !237, file: !238, line: 27, baseType: !242, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !229, file: !230, line: 323, baseType: !64, size: 64, offset: 448)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !229, file: !230, line: 327, baseType: !246, size: 64, offset: 512)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !230, line: 388, size: 7296, elements: !248)
!248 = !{!249, !1335}
!249 = !DIDerivedType(tag: DW_TAG_member, scope: !247, file: !230, line: 389, baseType: !250, size: 7296)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !247, file: !230, line: 389, size: 7296, elements: !251)
!251 = !{!252, !253, !257, !263, !267, !268, !269, !270, !271, !279, !284, !285, !286, !287, !296, !297, !298, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !333, !341, !344, !392, !393, !1305, !1306, !1309, !1313, !1314, !1317, !1318, !1319, !1322, !1334}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !250, file: !230, line: 390, baseType: !228, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !250, file: !230, line: 391, baseType: !254, size: 64, offset: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !238, line: 31, size: 64, elements: !255)
!255 = !{!256}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !254, file: !238, line: 32, baseType: !242, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !250, file: !230, line: 392, baseType: !258, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !259, line: 23, baseType: !260)
!259 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !261, line: 31, baseType: !262)
!261 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!262 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !250, file: !230, line: 394, baseType: !264, size: 64, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!64, !217, !64, !64, !64, !64}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !250, file: !230, line: 398, baseType: !64, size: 64, offset: 256)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !250, file: !230, line: 399, baseType: !64, size: 64, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !250, file: !230, line: 405, baseType: !64, size: 64, offset: 384)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !250, file: !230, line: 406, baseType: !64, size: 64, offset: 448)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !250, file: !230, line: 407, baseType: !272, size: 64, offset: 512)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !219, line: 286, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 286, size: 64, elements: !275)
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !274, file: !219, line: 286, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !278, line: 18, baseType: !64)
!278 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!279 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !250, file: !230, line: 416, baseType: !280, size: 32, offset: 576)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !62, line: 168, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !62, line: 166, size: 32, elements: !282)
!282 = !{!283}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !281, file: !62, line: 167, baseType: !124, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !250, file: !230, line: 428, baseType: !280, size: 32, offset: 608)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !250, file: !230, line: 437, baseType: !280, size: 32, offset: 640)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !250, file: !230, line: 447, baseType: !280, size: 32, offset: 672)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !250, file: !230, line: 450, baseType: !288, size: 64, offset: 704)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !289, line: 13, baseType: !290)
!289 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !62, line: 175, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !62, line: 173, size: 64, elements: !292)
!292 = !{!293}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !291, file: !62, line: 174, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !259, line: 22, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !261, line: 30, baseType: !222)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !250, file: !230, line: 452, baseType: !124, size: 32, offset: 768)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !250, file: !230, line: 454, baseType: !98, offset: 800)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !250, file: !230, line: 457, baseType: !299, size: 256, offset: 832)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !300, line: 35, size: 256, elements: !301)
!300 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!301 = !{!302, !303, !304, !306}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !299, file: !300, line: 36, baseType: !288, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !299, file: !300, line: 42, baseType: !288, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !299, file: !300, line: 46, baseType: !305, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !99, line: 29, baseType: !106)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !299, file: !300, line: 47, baseType: !85, size: 128, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !250, file: !230, line: 459, baseType: !85, size: 128, offset: 1088)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !250, file: !230, line: 466, baseType: !64, size: 64, offset: 1216)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !250, file: !230, line: 467, baseType: !64, size: 64, offset: 1280)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !250, file: !230, line: 469, baseType: !64, size: 64, offset: 1344)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !250, file: !230, line: 470, baseType: !64, size: 64, offset: 1408)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !250, file: !230, line: 471, baseType: !290, size: 64, offset: 1472)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !250, file: !230, line: 472, baseType: !64, size: 64, offset: 1536)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !250, file: !230, line: 473, baseType: !64, size: 64, offset: 1600)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !250, file: !230, line: 474, baseType: !64, size: 64, offset: 1664)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !250, file: !230, line: 475, baseType: !64, size: 64, offset: 1728)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !250, file: !230, line: 477, baseType: !98, offset: 1792)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !250, file: !230, line: 478, baseType: !64, size: 64, offset: 1792)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !250, file: !230, line: 478, baseType: !64, size: 64, offset: 1856)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !250, file: !230, line: 478, baseType: !64, size: 64, offset: 1920)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !250, file: !230, line: 478, baseType: !64, size: 64, offset: 1984)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !250, file: !230, line: 479, baseType: !64, size: 64, offset: 2048)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !250, file: !230, line: 479, baseType: !64, size: 64, offset: 2112)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !250, file: !230, line: 479, baseType: !64, size: 64, offset: 2176)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !250, file: !230, line: 480, baseType: !64, size: 64, offset: 2240)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !250, file: !230, line: 480, baseType: !64, size: 64, offset: 2304)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !250, file: !230, line: 480, baseType: !64, size: 64, offset: 2368)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !250, file: !230, line: 480, baseType: !64, size: 64, offset: 2432)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !250, file: !230, line: 482, baseType: !330, size: 2816, offset: 2496)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 2816, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 44)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !250, file: !230, line: 488, baseType: !334, size: 256, offset: 5312)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !335, line: 60, size: 256, elements: !336)
!335 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!336 = !{!337}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !334, file: !335, line: 61, baseType: !338, size: 256)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 256, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 4)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !250, file: !230, line: 490, baseType: !342, size: 64, offset: 5568)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !230, line: 490, flags: DIFlagFwdDecl)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !250, file: !230, line: 493, baseType: !345, size: 896, offset: 5632)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !346, line: 53, baseType: !347)
!346 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !346, line: 13, size: 896, elements: !348)
!348 = !{!349, !350, !351, !352, !355, !356, !363, !364, !384, !385, !388}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !347, file: !346, line: 18, baseType: !258, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !347, file: !346, line: 28, baseType: !290, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !347, file: !346, line: 31, baseType: !299, size: 256, offset: 128)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !347, file: !346, line: 32, baseType: !353, size: 64, offset: 384)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !346, line: 32, flags: DIFlagFwdDecl)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !347, file: !346, line: 37, baseType: !182, size: 16, offset: 448)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !347, file: !346, line: 40, baseType: !357, size: 192, offset: 512)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !358, line: 53, size: 192, elements: !359)
!358 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!359 = !{!360, !361, !362}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !357, file: !358, line: 54, baseType: !288, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !357, file: !358, line: 55, baseType: !98, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !357, file: !358, line: 59, baseType: !85, size: 128, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !347, file: !346, line: 41, baseType: !63, size: 64, offset: 704)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !347, file: !346, line: 42, baseType: !365, size: 64, offset: 768)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !368, line: 13, size: 896, elements: !369)
!368 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!369 = !{!370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !367, file: !368, line: 14, baseType: !63, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !367, file: !368, line: 15, baseType: !64, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !367, file: !368, line: 17, baseType: !64, size: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !367, file: !368, line: 17, baseType: !64, size: 64, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !367, file: !368, line: 19, baseType: !175, size: 64, offset: 256)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !367, file: !368, line: 21, baseType: !175, size: 64, offset: 320)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !367, file: !368, line: 22, baseType: !175, size: 64, offset: 384)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !367, file: !368, line: 23, baseType: !175, size: 64, offset: 448)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !367, file: !368, line: 24, baseType: !175, size: 64, offset: 512)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !367, file: !368, line: 25, baseType: !175, size: 64, offset: 576)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !367, file: !368, line: 26, baseType: !175, size: 64, offset: 640)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !367, file: !368, line: 27, baseType: !175, size: 64, offset: 704)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !367, file: !368, line: 28, baseType: !175, size: 64, offset: 768)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !367, file: !368, line: 29, baseType: !175, size: 64, offset: 832)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !347, file: !346, line: 44, baseType: !280, size: 32, offset: 832)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !347, file: !346, line: 50, baseType: !386, size: 16, offset: 864)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !259, line: 19, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !261, line: 24, baseType: !182)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !347, file: !346, line: 51, baseType: !389, size: 16, offset: 880)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !259, line: 18, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !261, line: 23, baseType: !391)
!391 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !250, file: !230, line: 495, baseType: !64, size: 64, offset: 6528)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !250, file: !230, line: 497, baseType: !394, size: 64, offset: 6592)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !230, line: 381, size: 384, elements: !396)
!396 = !{!397, !398, !1304}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !395, file: !230, line: 382, baseType: !280, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !395, file: !230, line: 383, baseType: !399, size: 128, offset: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !230, line: 376, size: 128, elements: !400)
!400 = !{!401, !1302}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !399, file: !230, line: 377, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !404, line: 640, size: 48640, elements: !405)
!404 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!405 = !{!406, !414, !416, !417, !423, !424, !425, !426, !427, !428, !429, !430, !434, !452, !463, !558, !559, !560, !571, !572, !574, !575, !576, !577, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !656, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !712, !714, !715, !716, !728, !730, !731, !732, !733, !734, !740, !741, !742, !743, !744, !745, !746, !758, !763, !768, !769, !770, !773, !777, !780, !783, !786, !789, !793, !796, !799, !805, !806, !807, !813, !814, !815, !816, !817, !826, !827, !828, !829, !830, !835, !836, !837, !840, !841, !844, !847, !850, !853, !856, !859, !860, !940, !943, !946, !947, !950, !951, !952, !958, !959, !960, !973, !974, !975, !987, !992, !995, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !403, file: !404, line: 646, baseType: !407, size: 128)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !408, line: 56, size: 128, elements: !409)
!408 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!409 = !{!410, !411}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !407, file: !408, line: 57, baseType: !64, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !407, file: !408, line: 58, baseType: !412, size: 32, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !259, line: 21, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !261, line: 27, baseType: !7)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !403, file: !404, line: 649, baseType: !415, size: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !175)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !403, file: !404, line: 657, baseType: !63, size: 64, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !403, file: !404, line: 658, baseType: !418, size: 32, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !419, line: 113, baseType: !420)
!419 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !419, line: 111, size: 32, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !420, file: !419, line: 112, baseType: !280, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !403, file: !404, line: 660, baseType: !7, size: 32, offset: 288)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !403, file: !404, line: 661, baseType: !7, size: 32, offset: 320)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !403, file: !404, line: 684, baseType: !124, size: 32, offset: 352)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !403, file: !404, line: 686, baseType: !124, size: 32, offset: 384)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !403, file: !404, line: 687, baseType: !124, size: 32, offset: 416)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !403, file: !404, line: 688, baseType: !124, size: 32, offset: 448)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !403, file: !404, line: 689, baseType: !7, size: 32, offset: 480)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !403, file: !404, line: 691, baseType: !431, size: 64, offset: 512)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!433 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !404, line: 691, flags: DIFlagFwdDecl)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !403, file: !404, line: 692, baseType: !435, size: 832, offset: 576)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !404, line: 451, size: 832, elements: !436)
!436 = !{!437, !442, !443, !444, !445, !446, !447, !448, !449, !450}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !435, file: !404, line: 453, baseType: !438, size: 128)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !404, line: 325, size: 128, elements: !439)
!439 = !{!440, !441}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !438, file: !404, line: 326, baseType: !64, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !438, file: !404, line: 327, baseType: !412, size: 32, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !435, file: !404, line: 454, baseType: !237, size: 192, align: 64, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !435, file: !404, line: 455, baseType: !85, size: 128, offset: 320)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !435, file: !404, line: 456, baseType: !7, size: 32, offset: 448)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !435, file: !404, line: 458, baseType: !258, size: 64, offset: 512)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !435, file: !404, line: 459, baseType: !258, size: 64, offset: 576)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !435, file: !404, line: 460, baseType: !258, size: 64, offset: 640)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !435, file: !404, line: 461, baseType: !258, size: 64, offset: 704)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !435, file: !404, line: 463, baseType: !258, size: 64, offset: 768)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !435, file: !404, line: 465, baseType: !451, offset: 832)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !404, line: 415, elements: !112)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !403, file: !404, line: 693, baseType: !453, size: 384, offset: 1408)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !404, line: 489, size: 384, elements: !454)
!454 = !{!455, !456, !457, !458, !459, !460, !461}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !453, file: !404, line: 490, baseType: !85, size: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !453, file: !404, line: 491, baseType: !64, size: 64, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !453, file: !404, line: 492, baseType: !64, size: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !453, file: !404, line: 493, baseType: !7, size: 32, offset: 256)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !453, file: !404, line: 494, baseType: !182, size: 16, offset: 288)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !453, file: !404, line: 495, baseType: !182, size: 16, offset: 304)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !453, file: !404, line: 497, baseType: !462, size: 64, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !403, file: !404, line: 697, baseType: !464, size: 1792, offset: 1792)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !404, line: 507, size: 1792, elements: !465)
!465 = !{!466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !555, !556}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !464, file: !404, line: 508, baseType: !237, size: 192, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !464, file: !404, line: 515, baseType: !258, size: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !464, file: !404, line: 516, baseType: !258, size: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !464, file: !404, line: 517, baseType: !258, size: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !464, file: !404, line: 518, baseType: !258, size: 64, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !464, file: !404, line: 519, baseType: !258, size: 64, offset: 448)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !464, file: !404, line: 526, baseType: !294, size: 64, offset: 512)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !464, file: !404, line: 527, baseType: !258, size: 64, offset: 576)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !464, file: !404, line: 528, baseType: !7, size: 32, offset: 640)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !464, file: !404, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !464, file: !404, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !464, file: !404, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !464, file: !404, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !464, file: !404, line: 563, baseType: !480, size: 512, offset: 704)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !481)
!481 = !{!482, !490, !491, !496, !548, !552, !553, !554}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !480, file: !6, line: 119, baseType: !483, size: 256)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !484, line: 9, size: 256, elements: !485)
!484 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!485 = !{!486, !487}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !483, file: !484, line: 10, baseType: !237, size: 192, align: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !483, file: !484, line: 11, baseType: !488, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !489, line: 29, baseType: !294)
!489 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !480, file: !6, line: 120, baseType: !488, size: 64, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !480, file: !6, line: 121, baseType: !492, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!5, !495}
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !480, file: !6, line: 122, baseType: !497, size: 64, offset: 384)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !499)
!499 = !{!500, !520, !521, !524, !534, !535, !543, !547}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !498, file: !6, line: 160, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !503)
!503 = !{!504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !502, file: !6, line: 215, baseType: !305)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !502, file: !6, line: 216, baseType: !7, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !502, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !502, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !502, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !502, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !502, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !502, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !502, file: !6, line: 233, baseType: !488, size: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !502, file: !6, line: 234, baseType: !495, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !502, file: !6, line: 235, baseType: !488, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !502, file: !6, line: 236, baseType: !495, size: 64, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !502, file: !6, line: 237, baseType: !517, size: 4096, offset: 512)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !498, size: 4096, elements: !518)
!518 = !{!519}
!519 = !DISubrange(count: 8)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !498, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !498, file: !6, line: 162, baseType: !522, size: 32, offset: 96)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !62, line: 27, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !173, line: 96, baseType: !124)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !498, file: !6, line: 163, baseType: !525, size: 32, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !526, line: 276, baseType: !527)
!526 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !526, line: 276, size: 32, elements: !528)
!528 = !{!529}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !527, file: !526, line: 276, baseType: !530, size: 32)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !526, line: 70, baseType: !531)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !526, line: 65, size: 32, elements: !532)
!532 = !{!533}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !531, file: !526, line: 66, baseType: !7, size: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !498, file: !6, line: 164, baseType: !495, size: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !498, file: !6, line: 165, baseType: !536, size: 128, offset: 256)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !484, line: 14, size: 128, elements: !537)
!537 = !{!538}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !536, file: !484, line: 15, baseType: !539, size: 128)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !238, line: 125, size: 128, elements: !540)
!540 = !{!541, !542}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !539, file: !238, line: 126, baseType: !254, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !539, file: !238, line: 127, baseType: !242, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !498, file: !6, line: 166, baseType: !544, size: 64, offset: 384)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!488}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !498, file: !6, line: 167, baseType: !488, size: 64, offset: 448)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !480, file: !6, line: 123, baseType: !549, size: 8, offset: 448)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !259, line: 17, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !261, line: 21, baseType: !551)
!551 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !480, file: !6, line: 124, baseType: !549, size: 8, offset: 456)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !480, file: !6, line: 125, baseType: !549, size: 8, offset: 464)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !480, file: !6, line: 126, baseType: !549, size: 8, offset: 472)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !464, file: !404, line: 572, baseType: !480, size: 512, offset: 1216)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !464, file: !404, line: 580, baseType: !557, size: 64, offset: 1728)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !403, file: !404, line: 721, baseType: !7, size: 32, offset: 3584)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !403, file: !404, line: 722, baseType: !124, size: 32, offset: 3616)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !403, file: !404, line: 723, baseType: !561, size: 64, offset: 3648)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !564, line: 17, baseType: !565)
!564 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !564, line: 17, size: 64, elements: !566)
!566 = !{!567}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !565, file: !564, line: 17, baseType: !568, size: 64)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 64, elements: !569)
!569 = !{!570}
!570 = !DISubrange(count: 1)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !403, file: !404, line: 724, baseType: !563, size: 64, offset: 3712)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !403, file: !404, line: 749, baseType: !573, offset: 3776)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !404, line: 290, elements: !112)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !403, file: !404, line: 751, baseType: !85, size: 128, offset: 3776)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !403, file: !404, line: 757, baseType: !246, size: 64, offset: 3904)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !403, file: !404, line: 758, baseType: !246, size: 64, offset: 3968)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !403, file: !404, line: 761, baseType: !578, size: 320, offset: 4032)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !335, line: 34, size: 320, elements: !579)
!579 = !{!580, !581}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !578, file: !335, line: 35, baseType: !258, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !578, file: !335, line: 36, baseType: !582, size: 256, offset: 64)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 256, elements: !339)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !403, file: !404, line: 766, baseType: !124, size: 32, offset: 4352)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !403, file: !404, line: 767, baseType: !124, size: 32, offset: 4384)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !403, file: !404, line: 768, baseType: !124, size: 32, offset: 4416)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !403, file: !404, line: 770, baseType: !124, size: 32, offset: 4448)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !403, file: !404, line: 772, baseType: !64, size: 64, offset: 4480)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !403, file: !404, line: 775, baseType: !7, size: 32, offset: 4544)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !403, file: !404, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !403, file: !404, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !403, file: !404, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !403, file: !404, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !403, file: !404, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !403, file: !404, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !403, file: !404, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !403, file: !404, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !403, file: !404, line: 831, baseType: !64, size: 64, offset: 4672)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !403, file: !404, line: 833, baseType: !599, size: 384, offset: 4736)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !600)
!600 = !{!601, !606}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !599, file: !12, line: 26, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!175, !605}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !12, line: 27, baseType: !607, size: 320, offset: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !599, file: !12, line: 27, size: 320, elements: !608)
!608 = !{!609, !619, !646}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !607, file: !12, line: 36, baseType: !610, size: 320)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !607, file: !12, line: 29, size: 320, elements: !611)
!611 = !{!612, !614, !615, !616, !617, !618}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !610, file: !12, line: 30, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !610, file: !12, line: 31, baseType: !412, size: 32, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !610, file: !12, line: 32, baseType: !412, size: 32, offset: 96)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !610, file: !12, line: 33, baseType: !412, size: 32, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !610, file: !12, line: 34, baseType: !258, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !610, file: !12, line: 35, baseType: !613, size: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !607, file: !12, line: 46, baseType: !620, size: 192)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !607, file: !12, line: 38, size: 192, elements: !621)
!621 = !{!622, !623, !624, !645}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !620, file: !12, line: 39, baseType: !522, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !620, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, scope: !620, file: !12, line: 41, baseType: !625, size: 64, offset: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !620, file: !12, line: 41, size: 64, elements: !626)
!626 = !{!627, !635}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !625, file: !12, line: 42, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !630, line: 7, size: 128, elements: !631)
!630 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!631 = !{!632, !634}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !629, file: !630, line: 8, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !173, line: 93, baseType: !222)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !629, file: !630, line: 9, baseType: !222, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !625, file: !12, line: 43, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !638, line: 7, size: 64, elements: !639)
!638 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!639 = !{!640, !644}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !637, file: !638, line: 8, baseType: !641, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !638, line: 5, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !259, line: 20, baseType: !643)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !261, line: 26, baseType: !124)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !637, file: !638, line: 9, baseType: !642, size: 32, offset: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !620, file: !12, line: 45, baseType: !258, size: 64, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !607, file: !12, line: 54, baseType: !647, size: 256)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !607, file: !12, line: 48, size: 256, elements: !648)
!648 = !{!649, !652, !653, !654, !655}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !647, file: !12, line: 49, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !647, file: !12, line: 50, baseType: !124, size: 32, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !647, file: !12, line: 51, baseType: !124, size: 32, offset: 96)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !647, file: !12, line: 52, baseType: !64, size: 64, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !647, file: !12, line: 53, baseType: !64, size: 64, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !403, file: !404, line: 835, baseType: !657, size: 32, offset: 5120)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !62, line: 22, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !173, line: 28, baseType: !124)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !403, file: !404, line: 836, baseType: !657, size: 32, offset: 5152)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !403, file: !404, line: 840, baseType: !64, size: 64, offset: 5184)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !403, file: !404, line: 849, baseType: !402, size: 64, offset: 5248)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !403, file: !404, line: 852, baseType: !402, size: 64, offset: 5312)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !403, file: !404, line: 857, baseType: !85, size: 128, offset: 5376)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !403, file: !404, line: 858, baseType: !85, size: 128, offset: 5504)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !403, file: !404, line: 859, baseType: !402, size: 64, offset: 5632)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !403, file: !404, line: 867, baseType: !85, size: 128, offset: 5696)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !403, file: !404, line: 868, baseType: !85, size: 128, offset: 5824)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !403, file: !404, line: 871, baseType: !669, size: 64, offset: 5952)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !671, line: 59, size: 768, elements: !672)
!671 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!672 = !{!673, !674, !675, !676, !687, !688, !695, !704}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !670, file: !671, line: 61, baseType: !418, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !670, file: !671, line: 62, baseType: !7, size: 32, offset: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !670, file: !671, line: 63, baseType: !98, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !670, file: !671, line: 65, baseType: !677, size: 256, offset: 64)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !678, size: 256, elements: !339)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !62, line: 182, size: 64, elements: !679)
!679 = !{!680}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !678, file: !62, line: 183, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !62, line: 186, size: 128, elements: !683)
!683 = !{!684, !685}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !682, file: !62, line: 187, baseType: !681, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !682, file: !62, line: 187, baseType: !686, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !670, file: !671, line: 66, baseType: !678, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !670, file: !671, line: 68, baseType: !689, size: 128, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !690, line: 40, baseType: !691)
!690 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !690, line: 36, size: 128, elements: !692)
!692 = !{!693, !694}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !691, file: !690, line: 37, baseType: !98)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !691, file: !690, line: 38, baseType: !85, size: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !670, file: !671, line: 69, baseType: !696, size: 128, align: 64, offset: 512)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !62, line: 216, size: 128, align: 64, elements: !697)
!697 = !{!698, !700}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !696, file: !62, line: 217, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !696, file: !62, line: 218, baseType: !701, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{null, !699}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !670, file: !671, line: 70, baseType: !705, size: 128, offset: 640)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, size: 128, elements: !569)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !671, line: 54, size: 128, elements: !707)
!707 = !{!708, !709}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !706, file: !671, line: 55, baseType: !124, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !706, file: !671, line: 56, baseType: !710, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !671, line: 56, flags: DIFlagFwdDecl)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !403, file: !404, line: 872, baseType: !713, size: 512, offset: 6016)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, size: 512, elements: !339)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !403, file: !404, line: 873, baseType: !85, size: 128, offset: 6528)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !403, file: !404, line: 874, baseType: !85, size: 128, offset: 6656)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !403, file: !404, line: 876, baseType: !717, size: 64, offset: 6784)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !719, line: 26, size: 192, elements: !720)
!719 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!720 = !{!721, !722}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !718, file: !719, line: 27, baseType: !7, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !718, file: !719, line: 28, baseType: !723, size: 128, offset: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !724, line: 43, size: 128, elements: !725)
!724 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!725 = !{!726, !727}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !723, file: !724, line: 44, baseType: !305)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !723, file: !724, line: 45, baseType: !85, size: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !403, file: !404, line: 879, baseType: !729, size: 64, offset: 6848)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !403, file: !404, line: 882, baseType: !729, size: 64, offset: 6912)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !403, file: !404, line: 884, baseType: !258, size: 64, offset: 6976)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !403, file: !404, line: 885, baseType: !258, size: 64, offset: 7040)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !403, file: !404, line: 890, baseType: !258, size: 64, offset: 7104)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !403, file: !404, line: 891, baseType: !735, size: 128, offset: 7168)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !404, line: 242, size: 128, elements: !736)
!736 = !{!737, !738, !739}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !735, file: !404, line: 244, baseType: !258, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !735, file: !404, line: 245, baseType: !258, size: 64, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !735, file: !404, line: 246, baseType: !305, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !403, file: !404, line: 900, baseType: !64, size: 64, offset: 7296)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !403, file: !404, line: 901, baseType: !64, size: 64, offset: 7360)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !403, file: !404, line: 904, baseType: !258, size: 64, offset: 7424)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !403, file: !404, line: 907, baseType: !258, size: 64, offset: 7488)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !403, file: !404, line: 910, baseType: !64, size: 64, offset: 7552)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !403, file: !404, line: 911, baseType: !64, size: 64, offset: 7616)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !403, file: !404, line: 914, baseType: !747, size: 640, offset: 7680)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !748, line: 123, size: 640, elements: !749)
!748 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!749 = !{!750, !756, !757}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !747, file: !748, line: 124, baseType: !751, size: 576)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !752, size: 576, elements: !141)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !748, line: 108, size: 192, elements: !753)
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !752, file: !748, line: 109, baseType: !258, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !752, file: !748, line: 110, baseType: !536, size: 128, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !747, file: !748, line: 125, baseType: !7, size: 32, offset: 576)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !747, file: !748, line: 126, baseType: !7, size: 32, offset: 608)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !403, file: !404, line: 917, baseType: !759, size: 192, offset: 8320)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !748, line: 134, size: 192, elements: !760)
!760 = !{!761, !762}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !759, file: !748, line: 135, baseType: !696, size: 128, align: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !759, file: !748, line: 136, baseType: !7, size: 32, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !403, file: !404, line: 923, baseType: !764, size: 64, offset: 8512)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !766)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !767, line: 11, flags: DIFlagFwdDecl)
!767 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!768 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !403, file: !404, line: 926, baseType: !764, size: 64, offset: 8576)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !403, file: !404, line: 929, baseType: !764, size: 64, offset: 8640)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !403, file: !404, line: 933, baseType: !771, size: 64, offset: 8704)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !404, line: 933, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !403, file: !404, line: 943, baseType: !774, size: 128, offset: 8768)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 128, elements: !775)
!775 = !{!776}
!776 = !DISubrange(count: 16)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !403, file: !404, line: 945, baseType: !778, size: 64, offset: 8896)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !404, line: 49, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !403, file: !404, line: 956, baseType: !781, size: 64, offset: 8960)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !404, line: 45, flags: DIFlagFwdDecl)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !403, file: !404, line: 959, baseType: !784, size: 64, offset: 9024)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !404, line: 959, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !403, file: !404, line: 962, baseType: !787, size: 64, offset: 9088)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !404, line: 66, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !403, file: !404, line: 966, baseType: !790, size: 64, offset: 9152)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !792, line: 35, flags: DIFlagFwdDecl)
!792 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!793 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !403, file: !404, line: 969, baseType: !794, size: 64, offset: 9216)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !748, line: 223, flags: DIFlagFwdDecl)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !403, file: !404, line: 970, baseType: !797, size: 64, offset: 9280)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !404, line: 62, flags: DIFlagFwdDecl)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !403, file: !404, line: 971, baseType: !800, size: 64, offset: 9344)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !801, line: 25, baseType: !802)
!801 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !801, line: 23, size: 64, elements: !803)
!803 = !{!804}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !802, file: !801, line: 24, baseType: !568, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !403, file: !404, line: 972, baseType: !800, size: 64, offset: 9408)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !403, file: !404, line: 974, baseType: !800, size: 64, offset: 9472)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !403, file: !404, line: 975, baseType: !808, size: 192, offset: 9536)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !809, line: 30, size: 192, elements: !810)
!809 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!810 = !{!811, !812}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !808, file: !809, line: 31, baseType: !85, size: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !808, file: !809, line: 32, baseType: !800, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !403, file: !404, line: 976, baseType: !64, size: 64, offset: 9728)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !403, file: !404, line: 977, baseType: !187, size: 64, offset: 9792)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !403, file: !404, line: 978, baseType: !7, size: 32, offset: 9856)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !403, file: !404, line: 980, baseType: !699, size: 64, offset: 9920)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !403, file: !404, line: 989, baseType: !818, size: 128, offset: 9984)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !819, line: 35, size: 128, elements: !820)
!819 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!820 = !{!821, !822, !823}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !818, file: !819, line: 36, baseType: !124, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !818, file: !819, line: 37, baseType: !280, size: 32, offset: 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !818, file: !819, line: 38, baseType: !824, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !819, line: 23, flags: DIFlagFwdDecl)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !403, file: !404, line: 992, baseType: !258, size: 64, offset: 10112)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !403, file: !404, line: 993, baseType: !258, size: 64, offset: 10176)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !403, file: !404, line: 996, baseType: !98, offset: 10240)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !403, file: !404, line: 999, baseType: !305, offset: 10240)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !403, file: !404, line: 1001, baseType: !831, size: 64, offset: 10240)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !404, line: 636, size: 64, elements: !832)
!832 = !{!833}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !831, file: !404, line: 637, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !403, file: !404, line: 1005, baseType: !539, size: 128, offset: 10304)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !403, file: !404, line: 1007, baseType: !402, size: 64, offset: 10432)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !403, file: !404, line: 1009, baseType: !838, size: 64, offset: 10496)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !404, line: 1009, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !403, file: !404, line: 1043, baseType: !63, size: 64, offset: 10560)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !403, file: !404, line: 1046, baseType: !842, size: 64, offset: 10624)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !404, line: 41, flags: DIFlagFwdDecl)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !403, file: !404, line: 1050, baseType: !845, size: 64, offset: 10688)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !404, line: 42, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !403, file: !404, line: 1054, baseType: !848, size: 64, offset: 10752)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !404, line: 55, flags: DIFlagFwdDecl)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !403, file: !404, line: 1056, baseType: !851, size: 64, offset: 10816)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !404, line: 40, flags: DIFlagFwdDecl)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !403, file: !404, line: 1058, baseType: !854, size: 64, offset: 10880)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !404, line: 47, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !403, file: !404, line: 1061, baseType: !857, size: 64, offset: 10944)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !404, line: 43, flags: DIFlagFwdDecl)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !403, file: !404, line: 1064, baseType: !64, size: 64, offset: 11008)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !403, file: !404, line: 1065, baseType: !861, size: 64, offset: 11072)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !809, line: 14, baseType: !863)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !809, line: 12, size: 384, elements: !864)
!864 = !{!865}
!865 = !DIDerivedType(tag: DW_TAG_member, scope: !863, file: !809, line: 13, baseType: !866, size: 384)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !863, file: !809, line: 13, size: 384, elements: !867)
!867 = !{!868, !869, !870, !871}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !866, file: !809, line: 13, baseType: !124, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !866, file: !809, line: 13, baseType: !124, size: 32, offset: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !866, file: !809, line: 13, baseType: !124, size: 32, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !866, file: !809, line: 13, baseType: !872, size: 256, offset: 128)
!872 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !873, line: 32, size: 256, elements: !874)
!873 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!874 = !{!875, !881, !894, !900, !909, !929, !934}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !872, file: !873, line: 37, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !872, file: !873, line: 34, size: 64, elements: !877)
!877 = !{!878, !879}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !876, file: !873, line: 35, baseType: !658, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !876, file: !873, line: 36, baseType: !880, size: 32, offset: 32)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !173, line: 49, baseType: !7)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !872, file: !873, line: 45, baseType: !882, size: 192)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !872, file: !873, line: 40, size: 192, elements: !883)
!883 = !{!884, !886, !887, !893}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !882, file: !873, line: 41, baseType: !885, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !173, line: 95, baseType: !124)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !882, file: !873, line: 42, baseType: !124, size: 32, offset: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !882, file: !873, line: 43, baseType: !888, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !873, line: 11, baseType: !889)
!889 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !873, line: 8, size: 64, elements: !890)
!890 = !{!891, !892}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !889, file: !873, line: 9, baseType: !124, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !889, file: !873, line: 10, baseType: !63, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !882, file: !873, line: 44, baseType: !124, size: 32, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !872, file: !873, line: 52, baseType: !895, size: 128)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !872, file: !873, line: 48, size: 128, elements: !896)
!896 = !{!897, !898, !899}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !895, file: !873, line: 49, baseType: !658, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !895, file: !873, line: 50, baseType: !880, size: 32, offset: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !895, file: !873, line: 51, baseType: !888, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !872, file: !873, line: 61, baseType: !901, size: 256)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !872, file: !873, line: 55, size: 256, elements: !902)
!902 = !{!903, !904, !905, !906, !908}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !901, file: !873, line: 56, baseType: !658, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !901, file: !873, line: 57, baseType: !880, size: 32, offset: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !901, file: !873, line: 58, baseType: !124, size: 32, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !901, file: !873, line: 59, baseType: !907, size: 64, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !173, line: 94, baseType: !174)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !901, file: !873, line: 60, baseType: !907, size: 64, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !872, file: !873, line: 95, baseType: !910, size: 256)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !872, file: !873, line: 64, size: 256, elements: !911)
!911 = !{!912, !913}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !910, file: !873, line: 65, baseType: !63, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, scope: !910, file: !873, line: 77, baseType: !914, size: 192, offset: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !910, file: !873, line: 77, size: 192, elements: !915)
!915 = !{!916, !917, !924}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !914, file: !873, line: 82, baseType: !391, size: 16)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !914, file: !873, line: 88, baseType: !918, size: 192)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !914, file: !873, line: 84, size: 192, elements: !919)
!919 = !{!920, !922, !923}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !918, file: !873, line: 85, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 64, elements: !518)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !918, file: !873, line: 86, baseType: !63, size: 64, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !918, file: !873, line: 87, baseType: !63, size: 64, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !914, file: !873, line: 93, baseType: !925, size: 96)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !914, file: !873, line: 90, size: 96, elements: !926)
!926 = !{!927, !928}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !925, file: !873, line: 91, baseType: !921, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !925, file: !873, line: 92, baseType: !413, size: 32, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !872, file: !873, line: 101, baseType: !930, size: 128)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !872, file: !873, line: 98, size: 128, elements: !931)
!931 = !{!932, !933}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !930, file: !873, line: 99, baseType: !175, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !930, file: !873, line: 100, baseType: !124, size: 32, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !872, file: !873, line: 108, baseType: !935, size: 128)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !872, file: !873, line: 104, size: 128, elements: !936)
!936 = !{!937, !938, !939}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !935, file: !873, line: 105, baseType: !63, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !935, file: !873, line: 106, baseType: !124, size: 32, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !935, file: !873, line: 107, baseType: !7, size: 32, offset: 96)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !403, file: !404, line: 1067, baseType: !941, offset: 11136)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !942, line: 12, elements: !112)
!942 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!943 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !403, file: !404, line: 1099, baseType: !944, size: 64, offset: 11136)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !404, line: 56, flags: DIFlagFwdDecl)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !403, file: !404, line: 1103, baseType: !85, size: 128, offset: 11200)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !403, file: !404, line: 1104, baseType: !948, size: 64, offset: 11328)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !404, line: 46, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !403, file: !404, line: 1105, baseType: !357, size: 192, offset: 11392)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !403, file: !404, line: 1106, baseType: !7, size: 32, offset: 11584)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !403, file: !404, line: 1109, baseType: !953, size: 128, offset: 11648)
!953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !954, size: 128, elements: !956)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !404, line: 51, flags: DIFlagFwdDecl)
!956 = !{!957}
!957 = !DISubrange(count: 2)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !403, file: !404, line: 1110, baseType: !357, size: 192, offset: 11776)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !403, file: !404, line: 1111, baseType: !85, size: 128, offset: 11968)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !403, file: !404, line: 1173, baseType: !961, size: 64, offset: 12096)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !963, line: 62, size: 256, align: 256, elements: !964)
!963 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!964 = !{!965, !966, !967, !972}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !962, file: !963, line: 75, baseType: !413, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !962, file: !963, line: 90, baseType: !413, size: 32, offset: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !962, file: !963, line: 124, baseType: !968, size: 64, offset: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !962, file: !963, line: 109, size: 64, elements: !969)
!969 = !{!970, !971}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !968, file: !963, line: 110, baseType: !260, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !968, file: !963, line: 112, baseType: !260, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !962, file: !963, line: 144, baseType: !413, size: 32, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !403, file: !404, line: 1174, baseType: !412, size: 32, offset: 12160)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !403, file: !404, line: 1179, baseType: !64, size: 64, offset: 12224)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !403, file: !404, line: 1182, baseType: !976, size: 128, offset: 12288)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !335, line: 76, size: 128, elements: !977)
!977 = !{!978, !983, !986}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !976, file: !335, line: 85, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !980, line: 7, size: 64, elements: !981)
!980 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!981 = !{!982}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !979, file: !980, line: 12, baseType: !565, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !976, file: !335, line: 88, baseType: !984, size: 8, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !62, line: 30, baseType: !985)
!985 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !976, file: !335, line: 95, baseType: !984, size: 8, offset: 72)
!987 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !404, line: 1184, baseType: !988, size: 128, offset: 12416)
!988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !404, line: 1184, size: 128, elements: !989)
!989 = !{!990, !991}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !988, file: !404, line: 1185, baseType: !418, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !988, file: !404, line: 1186, baseType: !696, size: 128, align: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !403, file: !404, line: 1190, baseType: !993, size: 64, offset: 12544)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !404, line: 53, flags: DIFlagFwdDecl)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !403, file: !404, line: 1192, baseType: !996, size: 128, offset: 12608)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !335, line: 64, size: 128, elements: !997)
!997 = !{!998, !1091, !1092}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !996, file: !335, line: 65, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !230, line: 68, size: 512, align: 128, elements: !1001)
!1001 = !{!1002, !1003, !1083, !1090}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1000, file: !230, line: 69, baseType: !64, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !230, line: 77, baseType: !1004, size: 320, offset: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1000, file: !230, line: 77, size: 320, elements: !1005)
!1005 = !{!1006, !1015, !1020, !1048, !1056, !1062, !1075, !1082}
!1006 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !230, line: 78, baseType: !1007, size: 320)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1004, file: !230, line: 78, size: 320, elements: !1008)
!1008 = !{!1009, !1010, !1013, !1014}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1007, file: !230, line: 84, baseType: !85, size: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1007, file: !230, line: 86, baseType: !1011, size: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !230, line: 26, flags: DIFlagFwdDecl)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1007, file: !230, line: 87, baseType: !64, size: 64, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1007, file: !230, line: 94, baseType: !64, size: 64, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !230, line: 96, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1004, file: !230, line: 96, size: 64, elements: !1017)
!1017 = !{!1018}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1016, file: !230, line: 101, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !62, line: 143, baseType: !258)
!1020 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !230, line: 103, baseType: !1021, size: 320)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1004, file: !230, line: 103, size: 320, elements: !1022)
!1022 = !{!1023, !1033, !1036, !1037}
!1023 = !DIDerivedType(tag: DW_TAG_member, scope: !1021, file: !230, line: 104, baseType: !1024, size: 128)
!1024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1021, file: !230, line: 104, size: 128, elements: !1025)
!1025 = !{!1026, !1027}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1024, file: !230, line: 105, baseType: !85, size: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, scope: !1024, file: !230, line: 106, baseType: !1028, size: 128)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1024, file: !230, line: 106, size: 128, elements: !1029)
!1029 = !{!1030, !1031, !1032}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1028, file: !230, line: 107, baseType: !999, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1028, file: !230, line: 109, baseType: !124, size: 32, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1028, file: !230, line: 110, baseType: !124, size: 32, offset: 96)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1021, file: !230, line: 117, baseType: !1034, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !230, line: 117, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1021, file: !230, line: 119, baseType: !63, size: 64, offset: 192)
!1037 = !DIDerivedType(tag: DW_TAG_member, scope: !1021, file: !230, line: 120, baseType: !1038, size: 64, offset: 256)
!1038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1021, file: !230, line: 120, size: 64, elements: !1039)
!1039 = !{!1040, !1041, !1042}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1038, file: !230, line: 121, baseType: !63, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1038, file: !230, line: 122, baseType: !64, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !230, line: 123, baseType: !1043, size: 32)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1038, file: !230, line: 123, size: 32, elements: !1044)
!1044 = !{!1045, !1046, !1047}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1043, file: !230, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1043, file: !230, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1043, file: !230, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1048 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !230, line: 130, baseType: !1049, size: 192)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1004, file: !230, line: 130, size: 192, elements: !1050)
!1050 = !{!1051, !1052, !1053, !1054, !1055}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1049, file: !230, line: 131, baseType: !64, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1049, file: !230, line: 134, baseType: !551, size: 8, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1049, file: !230, line: 135, baseType: !551, size: 8, offset: 72)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1049, file: !230, line: 136, baseType: !280, size: 32, offset: 96)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1049, file: !230, line: 137, baseType: !7, size: 32, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !230, line: 139, baseType: !1057, size: 256)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1004, file: !230, line: 139, size: 256, elements: !1058)
!1058 = !{!1059, !1060, !1061}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1057, file: !230, line: 140, baseType: !64, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1057, file: !230, line: 141, baseType: !280, size: 32, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1057, file: !230, line: 143, baseType: !85, size: 128, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !230, line: 145, baseType: !1063, size: 256)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1004, file: !230, line: 145, size: 256, elements: !1064)
!1064 = !{!1065, !1066, !1068, !1069, !1074}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1063, file: !230, line: 146, baseType: !64, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1063, file: !230, line: 147, baseType: !1067, size: 64, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !219, line: 509, baseType: !999)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1063, file: !230, line: 148, baseType: !64, size: 64, offset: 128)
!1069 = !DIDerivedType(tag: DW_TAG_member, scope: !1063, file: !230, line: 149, baseType: !1070, size: 64, offset: 192)
!1070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1063, file: !230, line: 149, size: 64, elements: !1071)
!1071 = !{!1072, !1073}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1070, file: !230, line: 150, baseType: !246, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1070, file: !230, line: 151, baseType: !280, size: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1063, file: !230, line: 156, baseType: !98, offset: 256)
!1075 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !230, line: 159, baseType: !1076, size: 128)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1004, file: !230, line: 159, size: 128, elements: !1077)
!1077 = !{!1078, !1081}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1076, file: !230, line: 161, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !230, line: 161, flags: DIFlagFwdDecl)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1076, file: !230, line: 162, baseType: !63, size: 64, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1004, file: !230, line: 176, baseType: !696, size: 128, align: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !230, line: 179, baseType: !1084, size: 32, offset: 384)
!1084 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1000, file: !230, line: 179, size: 32, elements: !1085)
!1085 = !{!1086, !1087, !1088, !1089}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1084, file: !230, line: 184, baseType: !280, size: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1084, file: !230, line: 192, baseType: !7, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1084, file: !230, line: 194, baseType: !7, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1084, file: !230, line: 195, baseType: !124, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1000, file: !230, line: 199, baseType: !280, size: 32, offset: 416)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !996, file: !335, line: 67, baseType: !413, size: 32, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !996, file: !335, line: 68, baseType: !413, size: 32, offset: 96)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !403, file: !404, line: 1206, baseType: !124, size: 32, offset: 12736)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !403, file: !404, line: 1207, baseType: !124, size: 32, offset: 12768)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !403, file: !404, line: 1209, baseType: !64, size: 64, offset: 12800)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !403, file: !404, line: 1219, baseType: !258, size: 64, offset: 12864)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !403, file: !404, line: 1220, baseType: !258, size: 64, offset: 12928)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !403, file: !404, line: 1317, baseType: !124, size: 32, offset: 12992)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !403, file: !404, line: 1319, baseType: !402, size: 64, offset: 13056)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !403, file: !404, line: 1322, baseType: !1101, size: 64, offset: 13120)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1103, line: 56, size: 512, elements: !1104)
!1103 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1104 = !{!1105, !1106, !1107, !1108, !1109, !1111, !1112, !1114}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1102, file: !1103, line: 57, baseType: !1101, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1102, file: !1103, line: 58, baseType: !63, size: 64, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1102, file: !1103, line: 59, baseType: !64, size: 64, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1102, file: !1103, line: 60, baseType: !64, size: 64, offset: 192)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1102, file: !1103, line: 61, baseType: !1110, size: 64, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1102, file: !1103, line: 62, baseType: !7, size: 32, offset: 320)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1102, file: !1103, line: 63, baseType: !1113, size: 64, offset: 384)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !62, line: 153, baseType: !258)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1102, file: !1103, line: 64, baseType: !1115, size: 64, offset: 448)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !403, file: !404, line: 1326, baseType: !418, size: 32, offset: 13184)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !403, file: !404, line: 1342, baseType: !63, size: 64, offset: 13248)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !403, file: !404, line: 1343, baseType: !260, size: 64, offset: 13312)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !403, file: !404, line: 1344, baseType: !258, size: 64, offset: 13376)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !403, file: !404, line: 1345, baseType: !260, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !403, file: !404, line: 1346, baseType: !260, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !403, file: !404, line: 1347, baseType: !260, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !403, file: !404, line: 1348, baseType: !696, size: 128, align: 64, offset: 13504)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !403, file: !404, line: 1358, baseType: !1126, size: 34816, offset: 13824)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1127, line: 485, size: 34816, elements: !1128)
!1127 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1128 = !{!1129, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1158, !1159, !1160, !1161, !1162, !1163, !1166, !1167, !1168}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1126, file: !1127, line: 487, baseType: !1130, size: 192)
!1130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1131, size: 192, elements: !141)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1132, line: 16, size: 64, elements: !1133)
!1132 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1133 = !{!1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1131, file: !1132, line: 17, baseType: !386, size: 16)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1131, file: !1132, line: 18, baseType: !386, size: 16, offset: 16)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1131, file: !1132, line: 19, baseType: !386, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1131, file: !1132, line: 19, baseType: !386, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1131, file: !1132, line: 19, baseType: !386, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1131, file: !1132, line: 19, baseType: !386, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1131, file: !1132, line: 19, baseType: !386, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1131, file: !1132, line: 20, baseType: !386, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1131, file: !1132, line: 20, baseType: !386, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1131, file: !1132, line: 20, baseType: !386, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1131, file: !1132, line: 20, baseType: !386, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1131, file: !1132, line: 20, baseType: !386, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1131, file: !1132, line: 20, baseType: !386, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1126, file: !1127, line: 491, baseType: !64, size: 64, offset: 192)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1126, file: !1127, line: 495, baseType: !182, size: 16, offset: 256)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1126, file: !1127, line: 496, baseType: !182, size: 16, offset: 272)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1126, file: !1127, line: 497, baseType: !182, size: 16, offset: 288)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1126, file: !1127, line: 498, baseType: !182, size: 16, offset: 304)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1126, file: !1127, line: 502, baseType: !64, size: 64, offset: 320)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1126, file: !1127, line: 503, baseType: !64, size: 64, offset: 384)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1126, file: !1127, line: 514, baseType: !1155, size: 256, offset: 448)
!1155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1156, size: 256, elements: !339)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1127, line: 483, flags: DIFlagFwdDecl)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1126, file: !1127, line: 516, baseType: !64, size: 64, offset: 704)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1126, file: !1127, line: 518, baseType: !64, size: 64, offset: 768)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1126, file: !1127, line: 520, baseType: !64, size: 64, offset: 832)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1126, file: !1127, line: 521, baseType: !64, size: 64, offset: 896)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1126, file: !1127, line: 522, baseType: !64, size: 64, offset: 960)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1126, file: !1127, line: 528, baseType: !1164, size: 64, offset: 1024)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1127, line: 10, flags: DIFlagFwdDecl)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1126, file: !1127, line: 535, baseType: !64, size: 64, offset: 1088)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1126, file: !1127, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1126, file: !1127, line: 540, baseType: !1169, size: 33280, offset: 1536)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1170, line: 317, size: 33280, elements: !1171)
!1170 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1171 = !{!1172, !1173, !1174}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1169, file: !1170, line: 330, baseType: !7, size: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1169, file: !1170, line: 337, baseType: !64, size: 64, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1169, file: !1170, line: 348, baseType: !1175, size: 32768, offset: 512)
!1175 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1170, line: 304, size: 32768, elements: !1176)
!1176 = !{!1177, !1192, !1231, !1281, !1298}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1175, file: !1170, line: 305, baseType: !1178, size: 896)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1170, line: 12, size: 896, elements: !1179)
!1179 = !{!1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1191}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1178, file: !1170, line: 13, baseType: !412, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1178, file: !1170, line: 14, baseType: !412, size: 32, offset: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1178, file: !1170, line: 15, baseType: !412, size: 32, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1178, file: !1170, line: 16, baseType: !412, size: 32, offset: 96)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1178, file: !1170, line: 17, baseType: !412, size: 32, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1178, file: !1170, line: 18, baseType: !412, size: 32, offset: 160)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1178, file: !1170, line: 19, baseType: !412, size: 32, offset: 192)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1178, file: !1170, line: 22, baseType: !1188, size: 640, offset: 224)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 640, elements: !1189)
!1189 = !{!1190}
!1190 = !DISubrange(count: 20)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1178, file: !1170, line: 25, baseType: !412, size: 32, offset: 864)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1175, file: !1170, line: 306, baseType: !1193, size: 4096, align: 128)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1170, line: 34, size: 4096, align: 128, elements: !1194)
!1194 = !{!1195, !1196, !1197, !1198, !1199, !1214, !1215, !1216, !1220, !1222, !1226}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1193, file: !1170, line: 35, baseType: !386, size: 16)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1193, file: !1170, line: 36, baseType: !386, size: 16, offset: 16)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1193, file: !1170, line: 37, baseType: !386, size: 16, offset: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1193, file: !1170, line: 38, baseType: !386, size: 16, offset: 48)
!1199 = !DIDerivedType(tag: DW_TAG_member, scope: !1193, file: !1170, line: 39, baseType: !1200, size: 128, offset: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1193, file: !1170, line: 39, size: 128, elements: !1201)
!1201 = !{!1202, !1207}
!1202 = !DIDerivedType(tag: DW_TAG_member, scope: !1200, file: !1170, line: 40, baseType: !1203, size: 128)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1200, file: !1170, line: 40, size: 128, elements: !1204)
!1204 = !{!1205, !1206}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1203, file: !1170, line: 41, baseType: !258, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1203, file: !1170, line: 42, baseType: !258, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, scope: !1200, file: !1170, line: 44, baseType: !1208, size: 128)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1200, file: !1170, line: 44, size: 128, elements: !1209)
!1209 = !{!1210, !1211, !1212, !1213}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1208, file: !1170, line: 45, baseType: !412, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1208, file: !1170, line: 46, baseType: !412, size: 32, offset: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1208, file: !1170, line: 47, baseType: !412, size: 32, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1208, file: !1170, line: 48, baseType: !412, size: 32, offset: 96)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1193, file: !1170, line: 51, baseType: !412, size: 32, offset: 192)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1193, file: !1170, line: 52, baseType: !412, size: 32, offset: 224)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1193, file: !1170, line: 55, baseType: !1217, size: 1024, offset: 256)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 1024, elements: !1218)
!1218 = !{!1219}
!1219 = !DISubrange(count: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1193, file: !1170, line: 58, baseType: !1221, size: 2048, offset: 1280)
!1221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 2048, elements: !145)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1193, file: !1170, line: 60, baseType: !1223, size: 384, offset: 3328)
!1223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 384, elements: !1224)
!1224 = !{!1225}
!1225 = !DISubrange(count: 12)
!1226 = !DIDerivedType(tag: DW_TAG_member, scope: !1193, file: !1170, line: 62, baseType: !1227, size: 384, offset: 3712)
!1227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1193, file: !1170, line: 62, size: 384, elements: !1228)
!1228 = !{!1229, !1230}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1227, file: !1170, line: 63, baseType: !1223, size: 384)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1227, file: !1170, line: 64, baseType: !1223, size: 384)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1175, file: !1170, line: 307, baseType: !1232, size: 1088)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1170, line: 79, size: 1088, elements: !1233)
!1233 = !{!1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1280}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1232, file: !1170, line: 80, baseType: !412, size: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1232, file: !1170, line: 81, baseType: !412, size: 32, offset: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1232, file: !1170, line: 82, baseType: !412, size: 32, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1232, file: !1170, line: 83, baseType: !412, size: 32, offset: 96)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1232, file: !1170, line: 84, baseType: !412, size: 32, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1232, file: !1170, line: 85, baseType: !412, size: 32, offset: 160)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1232, file: !1170, line: 86, baseType: !412, size: 32, offset: 192)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1232, file: !1170, line: 88, baseType: !1188, size: 640, offset: 224)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1232, file: !1170, line: 89, baseType: !549, size: 8, offset: 864)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1232, file: !1170, line: 90, baseType: !549, size: 8, offset: 872)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1232, file: !1170, line: 91, baseType: !549, size: 8, offset: 880)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1232, file: !1170, line: 92, baseType: !549, size: 8, offset: 888)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1232, file: !1170, line: 93, baseType: !549, size: 8, offset: 896)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1232, file: !1170, line: 94, baseType: !549, size: 8, offset: 904)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1232, file: !1170, line: 95, baseType: !1249, size: 64, offset: 960)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1251, line: 11, size: 128, elements: !1252)
!1251 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1252 = !{!1253, !1254}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1250, file: !1251, line: 12, baseType: !175, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1250, file: !1251, line: 13, baseType: !1255, size: 64, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1257, line: 56, size: 1344, elements: !1258)
!1257 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1258 = !{!1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1256, file: !1257, line: 61, baseType: !64, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1256, file: !1257, line: 62, baseType: !64, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1256, file: !1257, line: 63, baseType: !64, size: 64, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1256, file: !1257, line: 64, baseType: !64, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1256, file: !1257, line: 65, baseType: !64, size: 64, offset: 256)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1256, file: !1257, line: 66, baseType: !64, size: 64, offset: 320)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1256, file: !1257, line: 68, baseType: !64, size: 64, offset: 384)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1256, file: !1257, line: 69, baseType: !64, size: 64, offset: 448)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1256, file: !1257, line: 70, baseType: !64, size: 64, offset: 512)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1256, file: !1257, line: 71, baseType: !64, size: 64, offset: 576)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1256, file: !1257, line: 72, baseType: !64, size: 64, offset: 640)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1256, file: !1257, line: 73, baseType: !64, size: 64, offset: 704)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1256, file: !1257, line: 74, baseType: !64, size: 64, offset: 768)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1256, file: !1257, line: 75, baseType: !64, size: 64, offset: 832)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1256, file: !1257, line: 76, baseType: !64, size: 64, offset: 896)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1256, file: !1257, line: 81, baseType: !64, size: 64, offset: 960)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1256, file: !1257, line: 83, baseType: !64, size: 64, offset: 1024)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1256, file: !1257, line: 84, baseType: !64, size: 64, offset: 1088)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1256, file: !1257, line: 85, baseType: !64, size: 64, offset: 1152)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1256, file: !1257, line: 86, baseType: !64, size: 64, offset: 1216)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1256, file: !1257, line: 87, baseType: !64, size: 64, offset: 1280)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1232, file: !1170, line: 96, baseType: !412, size: 32, offset: 1024)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1175, file: !1170, line: 308, baseType: !1282, size: 4608, align: 512)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1170, line: 289, size: 4608, align: 512, elements: !1283)
!1283 = !{!1284, !1285, !1294}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1282, file: !1170, line: 290, baseType: !1193, size: 4096, align: 128)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1282, file: !1170, line: 291, baseType: !1286, size: 512, offset: 4096)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1170, line: 268, size: 512, elements: !1287)
!1287 = !{!1288, !1289, !1290}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1286, file: !1170, line: 269, baseType: !258, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1286, file: !1170, line: 270, baseType: !258, size: 64, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1286, file: !1170, line: 271, baseType: !1291, size: 384, offset: 128)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 384, elements: !1292)
!1292 = !{!1293}
!1293 = !DISubrange(count: 6)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1282, file: !1170, line: 292, baseType: !1295, offset: 4608)
!1295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, elements: !1296)
!1296 = !{!1297}
!1297 = !DISubrange(count: 0)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1175, file: !1170, line: 309, baseType: !1299, size: 32768)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 32768, elements: !1300)
!1300 = !{!1301}
!1301 = !DISubrange(count: 4096)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !399, file: !230, line: 378, baseType: !1303, size: 64, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !395, file: !230, line: 384, baseType: !718, size: 192, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !250, file: !230, line: 500, baseType: !98, offset: 6656)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !250, file: !230, line: 501, baseType: !1307, size: 64, offset: 6656)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !230, line: 387, flags: DIFlagFwdDecl)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !250, file: !230, line: 516, baseType: !1310, size: 64, offset: 6720)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1312, line: 18, flags: DIFlagFwdDecl)
!1312 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !250, file: !230, line: 519, baseType: !217, size: 64, offset: 6784)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !250, file: !230, line: 521, baseType: !1315, size: 64, offset: 6848)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !230, line: 521, flags: DIFlagFwdDecl)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !250, file: !230, line: 545, baseType: !280, size: 32, offset: 6912)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !250, file: !230, line: 548, baseType: !984, size: 8, offset: 6944)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !250, file: !230, line: 550, baseType: !1320, offset: 6952)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1321, line: 142, elements: !112)
!1321 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !250, file: !230, line: 554, baseType: !1323, size: 256, offset: 6976)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1324, line: 102, size: 256, elements: !1325)
!1324 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1325 = !{!1326, !1327, !1328}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1323, file: !1324, line: 103, baseType: !288, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1323, file: !1324, line: 104, baseType: !85, size: 128, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1323, file: !1324, line: 105, baseType: !1329, size: 64, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1324, line: 21, baseType: !1330)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{null, !1333}
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !250, file: !230, line: 557, baseType: !412, size: 32, offset: 7232)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !247, file: !230, line: 565, baseType: !1336, offset: 7296)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, elements: !1337)
!1337 = !{!1338}
!1338 = !DISubrange(count: -1)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !229, file: !230, line: 333, baseType: !1340, size: 64, offset: 576)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !219, line: 284, baseType: !1341)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !219, line: 284, size: 64, elements: !1342)
!1342 = !{!1343}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1341, file: !219, line: 284, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !278, line: 19, baseType: !64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !229, file: !230, line: 334, baseType: !64, size: 64, offset: 640)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !229, file: !230, line: 343, baseType: !1347, size: 256, offset: 704)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !229, file: !230, line: 340, size: 256, elements: !1348)
!1348 = !{!1349, !1350}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1347, file: !230, line: 341, baseType: !237, size: 192, align: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1347, file: !230, line: 342, baseType: !64, size: 64, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !229, file: !230, line: 351, baseType: !85, size: 128, offset: 960)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !229, file: !230, line: 353, baseType: !1353, size: 64, offset: 1088)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !230, line: 353, flags: DIFlagFwdDecl)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !229, file: !230, line: 356, baseType: !1356, size: 64, offset: 1152)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1358)
!1358 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !230, line: 356, flags: DIFlagFwdDecl)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !229, file: !230, line: 359, baseType: !64, size: 64, offset: 1216)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !229, file: !230, line: 361, baseType: !217, size: 64, offset: 1280)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !229, file: !230, line: 362, baseType: !63, size: 64, offset: 1344)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !229, file: !230, line: 365, baseType: !288, size: 64, offset: 1408)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !229, file: !230, line: 373, baseType: !1364, offset: 1472)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !230, line: 296, elements: !112)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !196, file: !165, line: 90, baseType: !191, size: 64, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !196, file: !165, line: 91, baseType: !1367, size: 64, offset: 256)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !155, file: !78, line: 143, baseType: !1369, size: 64, offset: 256)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!1372, !91}
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1374)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1375)
!1375 = !{!1376, !1377, !1381, !1385, !1391, !1395}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1374, file: !18, line: 40, baseType: !17, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1374, file: !18, line: 41, baseType: !1378, size: 64, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!984}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1374, file: !18, line: 42, baseType: !1382, size: 64, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!63}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1374, file: !18, line: 43, baseType: !1386, size: 64, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!1115, !1389}
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1374, file: !18, line: 44, baseType: !1392, size: 64, offset: 256)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!1115}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1374, file: !18, line: 45, baseType: !1396, size: 64, offset: 320)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{null, !63}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !155, file: !78, line: 144, baseType: !1400, size: 64, offset: 320)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!1115, !91}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !155, file: !78, line: 145, baseType: !1404, size: 64, offset: 384)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{null, !91, !1407, !1413}
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1312, line: 23, baseType: !1409)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1312, line: 21, size: 32, elements: !1410)
!1410 = !{!1411}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1409, file: !1312, line: 22, baseType: !1412, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !62, line: 32, baseType: !880)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1312, line: 28, baseType: !1415)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1312, line: 26, size: 32, elements: !1416)
!1416 = !{!1417}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1415, file: !1312, line: 27, baseType: !1418, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !62, line: 33, baseType: !1419)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !173, line: 50, baseType: !7)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !77, file: !78, line: 70, baseType: !1421, size: 64, offset: 384)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1423, line: 123, size: 1024, elements: !1424)
!1423 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1424 = !{!1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1566, !1567, !1568, !1569, !1570}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1422, file: !1423, line: 124, baseType: !280, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1422, file: !1423, line: 125, baseType: !280, size: 32, offset: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1422, file: !1423, line: 135, baseType: !1421, size: 64, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1422, file: !1423, line: 136, baseType: !81, size: 64, offset: 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1422, file: !1423, line: 138, baseType: !237, size: 192, align: 64, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1422, file: !1423, line: 140, baseType: !1115, size: 64, offset: 384)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1422, file: !1423, line: 141, baseType: !7, size: 32, offset: 448)
!1432 = !DIDerivedType(tag: DW_TAG_member, scope: !1422, file: !1423, line: 142, baseType: !1433, size: 256, offset: 512)
!1433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1422, file: !1423, line: 142, size: 256, elements: !1434)
!1434 = !{!1435, !1489, !1493}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1433, file: !1423, line: 143, baseType: !1436, size: 192)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1423, line: 91, size: 192, elements: !1437)
!1437 = !{!1438, !1439, !1440}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1436, file: !1423, line: 92, baseType: !64, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1436, file: !1423, line: 94, baseType: !254, size: 64, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1436, file: !1423, line: 100, baseType: !1441, size: 64, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1423, line: 180, size: 704, elements: !1443)
!1443 = !{!1444, !1445, !1446, !1459, !1460, !1461, !1487, !1488}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1442, file: !1423, line: 182, baseType: !1421, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1442, file: !1423, line: 183, baseType: !7, size: 32, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1442, file: !1423, line: 186, baseType: !1447, size: 192, offset: 128)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1448, line: 19, size: 192, elements: !1449)
!1448 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1449 = !{!1450, !1457, !1458}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1447, file: !1448, line: 20, baseType: !1451, size: 128)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1452, line: 292, size: 128, elements: !1453)
!1452 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1453 = !{!1454, !1455, !1456}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1451, file: !1452, line: 293, baseType: !98)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1451, file: !1452, line: 295, baseType: !61, size: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1451, file: !1452, line: 296, baseType: !63, size: 64, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1447, file: !1448, line: 21, baseType: !7, size: 32, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1447, file: !1448, line: 22, baseType: !7, size: 32, offset: 160)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1442, file: !1423, line: 187, baseType: !412, size: 32, offset: 320)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1442, file: !1423, line: 188, baseType: !412, size: 32, offset: 352)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1442, file: !1423, line: 189, baseType: !1462, size: 64, offset: 384)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1423, line: 168, size: 320, elements: !1464)
!1464 = !{!1465, !1471, !1475, !1479, !1483}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1463, file: !1423, line: 169, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!124, !1469, !1441}
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !219, line: 539, flags: DIFlagFwdDecl)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1463, file: !1423, line: 171, baseType: !1472, size: 64, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!124, !1421, !81, !181}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1463, file: !1423, line: 173, baseType: !1476, size: 64, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!124, !1421}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1463, file: !1423, line: 174, baseType: !1480, size: 64, offset: 192)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!124, !1421, !1421, !81}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1463, file: !1423, line: 176, baseType: !1484, size: 64, offset: 256)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!124, !1469, !1421, !1441}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1442, file: !1423, line: 192, baseType: !85, size: 128, offset: 448)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1442, file: !1423, line: 194, baseType: !689, size: 128, offset: 576)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1433, file: !1423, line: 144, baseType: !1490, size: 64)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1423, line: 103, size: 64, elements: !1491)
!1491 = !{!1492}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1490, file: !1423, line: 104, baseType: !1421, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1433, file: !1423, line: 145, baseType: !1494, size: 256)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1423, line: 107, size: 256, elements: !1495)
!1495 = !{!1496, !1561, !1564, !1565}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1494, file: !1423, line: 108, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1499)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1423, line: 217, size: 768, elements: !1500)
!1500 = !{!1501, !1521, !1525, !1529, !1534, !1538, !1542, !1546, !1547, !1548, !1549, !1557}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1499, file: !1423, line: 222, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!124, !1505}
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1423, line: 197, size: 1088, elements: !1507)
!1507 = !{!1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1506, file: !1423, line: 199, baseType: !1421, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1506, file: !1423, line: 200, baseType: !217, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1506, file: !1423, line: 201, baseType: !1469, size: 64, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1506, file: !1423, line: 202, baseType: !63, size: 64, offset: 192)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1506, file: !1423, line: 205, baseType: !357, size: 192, offset: 256)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1506, file: !1423, line: 206, baseType: !357, size: 192, offset: 448)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1506, file: !1423, line: 207, baseType: !124, size: 32, offset: 640)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1506, file: !1423, line: 208, baseType: !85, size: 128, offset: 704)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1506, file: !1423, line: 209, baseType: !140, size: 64, offset: 832)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1506, file: !1423, line: 211, baseType: !187, size: 64, offset: 896)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1506, file: !1423, line: 212, baseType: !984, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1506, file: !1423, line: 213, baseType: !984, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1506, file: !1423, line: 214, baseType: !1356, size: 64, offset: 1024)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1499, file: !1423, line: 223, baseType: !1522, size: 64, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{null, !1505}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1499, file: !1423, line: 236, baseType: !1526, size: 64, offset: 128)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!124, !1469, !63}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1499, file: !1423, line: 238, baseType: !1530, size: 64, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!63, !1469, !1533}
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1499, file: !1423, line: 239, baseType: !1535, size: 64, offset: 256)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!63, !1469, !63, !1533}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1499, file: !1423, line: 240, baseType: !1539, size: 64, offset: 320)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{null, !1469, !63}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1499, file: !1423, line: 242, baseType: !1543, size: 64, offset: 384)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!171, !1505, !140, !187, !220}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1499, file: !1423, line: 252, baseType: !187, size: 64, offset: 448)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1499, file: !1423, line: 259, baseType: !984, size: 8, offset: 512)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1499, file: !1423, line: 260, baseType: !1543, size: 64, offset: 576)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1499, file: !1423, line: 263, baseType: !1550, size: 64, offset: 640)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!1553, !1505, !1555}
!1553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1554, line: 52, baseType: !7)
!1554 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1423, line: 27, flags: DIFlagFwdDecl)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1499, file: !1423, line: 266, baseType: !1558, size: 64, offset: 704)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!124, !1505, !228}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1494, file: !1423, line: 109, baseType: !1562, size: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1423, line: 31, flags: DIFlagFwdDecl)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1494, file: !1423, line: 110, baseType: !220, size: 64, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1494, file: !1423, line: 111, baseType: !1421, size: 64, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1422, file: !1423, line: 148, baseType: !63, size: 64, offset: 768)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1422, file: !1423, line: 154, baseType: !258, size: 64, offset: 832)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1422, file: !1423, line: 156, baseType: !182, size: 16, offset: 896)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1422, file: !1423, line: 157, baseType: !181, size: 16, offset: 912)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1422, file: !1423, line: 158, baseType: !1571, size: 64, offset: 960)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1423, line: 32, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !77, file: !78, line: 71, baseType: !1574, size: 32, offset: 448)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1575, line: 19, size: 32, elements: !1576)
!1575 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1576 = !{!1577}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1574, file: !1575, line: 20, baseType: !418, size: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !77, file: !78, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !77, file: !78, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !77, file: !78, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !77, file: !78, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !77, file: !78, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !74, file: !30, line: 463, baseType: !73, size: 64, offset: 512)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !74, file: !30, line: 465, baseType: !1585, size: 64, offset: 576)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !74, file: !30, line: 467, baseType: !81, size: 64, offset: 640)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !74, file: !30, line: 468, baseType: !1589, size: 64, offset: 704)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1591)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1592)
!1592 = !{!1593, !1594, !1595, !1599, !1604, !1608}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1591, file: !30, line: 88, baseType: !81, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1591, file: !30, line: 89, baseType: !193, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1591, file: !30, line: 90, baseType: !1596, size: 64, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!124, !73, !135}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1591, file: !30, line: 91, baseType: !1600, size: 64, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!140, !73, !1603, !1407, !1413}
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1591, file: !30, line: 93, baseType: !1605, size: 64, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{null, !73}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1591, file: !30, line: 95, baseType: !1609, size: 64, offset: 320)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1611)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1612)
!1612 = !{!1613, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1611, file: !37, line: 279, baseType: !1614, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!124, !73}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1611, file: !37, line: 280, baseType: !1605, size: 64, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1611, file: !37, line: 281, baseType: !1614, size: 64, offset: 128)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1611, file: !37, line: 282, baseType: !1614, size: 64, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1611, file: !37, line: 283, baseType: !1614, size: 64, offset: 256)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1611, file: !37, line: 284, baseType: !1614, size: 64, offset: 320)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1611, file: !37, line: 285, baseType: !1614, size: 64, offset: 384)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1611, file: !37, line: 286, baseType: !1614, size: 64, offset: 448)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1611, file: !37, line: 287, baseType: !1614, size: 64, offset: 512)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1611, file: !37, line: 288, baseType: !1614, size: 64, offset: 576)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1611, file: !37, line: 289, baseType: !1614, size: 64, offset: 640)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1611, file: !37, line: 290, baseType: !1614, size: 64, offset: 704)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1611, file: !37, line: 291, baseType: !1614, size: 64, offset: 768)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1611, file: !37, line: 292, baseType: !1614, size: 64, offset: 832)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1611, file: !37, line: 293, baseType: !1614, size: 64, offset: 896)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1611, file: !37, line: 294, baseType: !1614, size: 64, offset: 960)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1611, file: !37, line: 295, baseType: !1614, size: 64, offset: 1024)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1611, file: !37, line: 296, baseType: !1614, size: 64, offset: 1088)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1611, file: !37, line: 297, baseType: !1614, size: 64, offset: 1152)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1611, file: !37, line: 298, baseType: !1614, size: 64, offset: 1216)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1611, file: !37, line: 299, baseType: !1614, size: 64, offset: 1280)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1611, file: !37, line: 300, baseType: !1614, size: 64, offset: 1344)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1611, file: !37, line: 301, baseType: !1614, size: 64, offset: 1408)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !74, file: !30, line: 470, baseType: !1640, size: 64, offset: 768)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1642, line: 82, size: 1408, elements: !1643)
!1642 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1643 = !{!1644, !1645, !1646, !1647, !1648, !1649, !1650, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1729, !1732, !1735}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1641, file: !1642, line: 83, baseType: !81, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1641, file: !1642, line: 84, baseType: !81, size: 64, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1641, file: !1642, line: 85, baseType: !73, size: 64, offset: 128)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1641, file: !1642, line: 86, baseType: !193, size: 64, offset: 192)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1641, file: !1642, line: 87, baseType: !193, size: 64, offset: 256)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1641, file: !1642, line: 88, baseType: !193, size: 64, offset: 320)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1641, file: !1642, line: 90, baseType: !1651, size: 64, offset: 384)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!124, !73, !1654}
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1656)
!1656 = !{!1657, !1658, !1659, !1663, !1664, !1665, !1666, !1680, !1693, !1694, !1695, !1696, !1697, !1705, !1706, !1707, !1708, !1709, !1710}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1655, file: !24, line: 96, baseType: !81, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1655, file: !24, line: 97, baseType: !1640, size: 64, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1655, file: !24, line: 99, baseType: !1660, size: 64, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1662, line: 76, flags: DIFlagFwdDecl)
!1662 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1655, file: !24, line: 100, baseType: !81, size: 64, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1655, file: !24, line: 102, baseType: !984, size: 8, offset: 256)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1655, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1655, file: !24, line: 105, baseType: !1667, size: 64, offset: 320)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1669)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1670, line: 262, size: 1600, elements: !1671)
!1670 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1671 = !{!1672, !1674, !1675, !1679}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1669, file: !1670, line: 263, baseType: !1673, size: 256)
!1673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 256, elements: !1218)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1669, file: !1670, line: 264, baseType: !1673, size: 256, offset: 256)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1669, file: !1670, line: 265, baseType: !1676, size: 1024, offset: 512)
!1676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 1024, elements: !1677)
!1677 = !{!1678}
!1678 = !DISubrange(count: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1669, file: !1670, line: 266, baseType: !1115, size: 64, offset: 1536)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1655, file: !24, line: 106, baseType: !1681, size: 64, offset: 384)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1683)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1670, line: 210, size: 256, elements: !1684)
!1684 = !{!1685, !1689, !1691, !1692}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1683, file: !1670, line: 211, baseType: !1686, size: 72)
!1686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 72, elements: !1687)
!1687 = !{!1688}
!1688 = !DISubrange(count: 9)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1683, file: !1670, line: 212, baseType: !1690, size: 64, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1670, line: 14, baseType: !64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1683, file: !1670, line: 213, baseType: !413, size: 32, offset: 192)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1683, file: !1670, line: 214, baseType: !413, size: 32, offset: 224)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1655, file: !24, line: 108, baseType: !1614, size: 64, offset: 448)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1655, file: !24, line: 109, baseType: !1605, size: 64, offset: 512)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1655, file: !24, line: 110, baseType: !1614, size: 64, offset: 576)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1655, file: !24, line: 111, baseType: !1605, size: 64, offset: 640)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1655, file: !24, line: 112, baseType: !1698, size: 64, offset: 704)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!124, !73, !1701}
!1701 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1702)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1703)
!1703 = !{!1704}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1702, file: !37, line: 51, baseType: !124, size: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1655, file: !24, line: 113, baseType: !1614, size: 64, offset: 768)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1655, file: !24, line: 114, baseType: !193, size: 64, offset: 832)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1655, file: !24, line: 115, baseType: !193, size: 64, offset: 896)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1655, file: !24, line: 117, baseType: !1609, size: 64, offset: 960)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1655, file: !24, line: 118, baseType: !1605, size: 64, offset: 1024)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1655, file: !24, line: 120, baseType: !1711, size: 64, offset: 1088)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1641, file: !1642, line: 91, baseType: !1596, size: 64, offset: 448)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1641, file: !1642, line: 92, baseType: !1614, size: 64, offset: 512)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1641, file: !1642, line: 93, baseType: !1605, size: 64, offset: 576)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1641, file: !1642, line: 94, baseType: !1614, size: 64, offset: 640)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1641, file: !1642, line: 95, baseType: !1605, size: 64, offset: 704)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1641, file: !1642, line: 97, baseType: !1614, size: 64, offset: 768)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1641, file: !1642, line: 98, baseType: !1614, size: 64, offset: 832)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1641, file: !1642, line: 100, baseType: !1698, size: 64, offset: 896)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1641, file: !1642, line: 101, baseType: !1614, size: 64, offset: 960)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1641, file: !1642, line: 103, baseType: !1614, size: 64, offset: 1024)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1641, file: !1642, line: 105, baseType: !1614, size: 64, offset: 1088)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1641, file: !1642, line: 107, baseType: !1609, size: 64, offset: 1152)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1641, file: !1642, line: 109, baseType: !1726, size: 64, offset: 1216)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1728)
!1728 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1642, line: 109, flags: DIFlagFwdDecl)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1641, file: !1642, line: 111, baseType: !1730, size: 64, offset: 1280)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1642, line: 111, flags: DIFlagFwdDecl)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1641, file: !1642, line: 112, baseType: !1733, offset: 1344)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1734, line: 187, elements: !112)
!1734 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1641, file: !1642, line: 114, baseType: !984, size: 8, offset: 1344)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !74, file: !30, line: 471, baseType: !1654, size: 64, offset: 832)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !74, file: !30, line: 473, baseType: !63, size: 64, offset: 896)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !74, file: !30, line: 475, baseType: !63, size: 64, offset: 960)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !74, file: !30, line: 480, baseType: !357, size: 192, offset: 1024)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !74, file: !30, line: 484, baseType: !1741, size: 576, offset: 1216)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1742)
!1742 = !{!1743, !1744, !1745, !1746, !1747, !1748}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1741, file: !30, line: 362, baseType: !85, size: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1741, file: !30, line: 363, baseType: !85, size: 128, offset: 128)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1741, file: !30, line: 364, baseType: !85, size: 128, offset: 256)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1741, file: !30, line: 365, baseType: !85, size: 128, offset: 384)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1741, file: !30, line: 366, baseType: !984, size: 8, offset: 512)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1741, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !74, file: !30, line: 485, baseType: !1750, size: 2304, offset: 1792)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1751)
!1751 = !{!1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1847, !1851}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1750, file: !37, line: 566, baseType: !1701, size: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1750, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1750, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1750, file: !37, line: 569, baseType: !984, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1750, file: !37, line: 570, baseType: !984, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1750, file: !37, line: 571, baseType: !984, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1750, file: !37, line: 572, baseType: !984, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1750, file: !37, line: 573, baseType: !984, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1750, file: !37, line: 574, baseType: !984, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1750, file: !37, line: 575, baseType: !984, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1750, file: !37, line: 576, baseType: !984, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1750, file: !37, line: 577, baseType: !412, size: 32, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1750, file: !37, line: 578, baseType: !98, offset: 96)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1750, file: !37, line: 580, baseType: !85, size: 128, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1750, file: !37, line: 581, baseType: !718, size: 192, offset: 256)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1750, file: !37, line: 582, baseType: !1768, size: 64, offset: 448)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1770, line: 43, size: 1472, elements: !1771)
!1770 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1771 = !{!1772, !1773, !1774, !1775, !1776, !1779, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1769, file: !1770, line: 44, baseType: !81, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1769, file: !1770, line: 45, baseType: !124, size: 32, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1769, file: !1770, line: 46, baseType: !85, size: 128, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1769, file: !1770, line: 47, baseType: !98, offset: 256)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1769, file: !1770, line: 48, baseType: !1777, size: 64, offset: 256)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1769, file: !1770, line: 49, baseType: !1780, size: 320, offset: 320)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1781, line: 11, size: 320, elements: !1782)
!1781 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1782 = !{!1783, !1784, !1785, !1790}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1780, file: !1781, line: 16, baseType: !682, size: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1780, file: !1781, line: 17, baseType: !64, size: 64, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1780, file: !1781, line: 18, baseType: !1786, size: 64, offset: 192)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{null, !1789}
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1780, file: !1781, line: 19, baseType: !412, size: 32, offset: 256)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1769, file: !1770, line: 50, baseType: !64, size: 64, offset: 640)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1769, file: !1770, line: 51, baseType: !488, size: 64, offset: 704)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1769, file: !1770, line: 52, baseType: !488, size: 64, offset: 768)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1769, file: !1770, line: 53, baseType: !488, size: 64, offset: 832)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1769, file: !1770, line: 54, baseType: !488, size: 64, offset: 896)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1769, file: !1770, line: 55, baseType: !488, size: 64, offset: 960)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1769, file: !1770, line: 56, baseType: !64, size: 64, offset: 1024)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1769, file: !1770, line: 57, baseType: !64, size: 64, offset: 1088)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1769, file: !1770, line: 58, baseType: !64, size: 64, offset: 1152)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1769, file: !1770, line: 59, baseType: !64, size: 64, offset: 1216)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1769, file: !1770, line: 60, baseType: !64, size: 64, offset: 1280)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1769, file: !1770, line: 61, baseType: !73, size: 64, offset: 1344)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1769, file: !1770, line: 62, baseType: !984, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1769, file: !1770, line: 63, baseType: !984, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1750, file: !37, line: 583, baseType: !984, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1750, file: !37, line: 584, baseType: !984, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1750, file: !37, line: 585, baseType: !984, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1750, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1750, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1750, file: !37, line: 592, baseType: !480, size: 512, offset: 576)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1750, file: !37, line: 593, baseType: !258, size: 64, offset: 1088)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1750, file: !37, line: 594, baseType: !1323, size: 256, offset: 1152)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1750, file: !37, line: 595, baseType: !689, size: 128, offset: 1408)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1750, file: !37, line: 596, baseType: !1777, size: 64, offset: 1536)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1750, file: !37, line: 597, baseType: !280, size: 32, offset: 1600)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1750, file: !37, line: 598, baseType: !280, size: 32, offset: 1632)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1750, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1750, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1750, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1750, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1750, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1750, file: !37, line: 604, baseType: !984, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1750, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1750, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1750, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1750, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1750, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1750, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1750, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1750, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1750, file: !37, line: 613, baseType: !124, size: 32, offset: 1792)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1750, file: !37, line: 614, baseType: !124, size: 32, offset: 1824)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1750, file: !37, line: 615, baseType: !258, size: 64, offset: 1856)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1750, file: !37, line: 616, baseType: !258, size: 64, offset: 1920)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1750, file: !37, line: 617, baseType: !258, size: 64, offset: 1984)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1750, file: !37, line: 618, baseType: !258, size: 64, offset: 2048)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1750, file: !37, line: 620, baseType: !1838, size: 64, offset: 2112)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1840)
!1840 = !{!1841, !1842, !1843, !1844}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1839, file: !37, line: 537, baseType: !98)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1839, file: !37, line: 538, baseType: !7, size: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1839, file: !37, line: 540, baseType: !85, size: 128, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1839, file: !37, line: 543, baseType: !1845, size: 64, offset: 192)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1750, file: !37, line: 621, baseType: !1848, size: 64, offset: 2176)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{null, !73, !642}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1750, file: !37, line: 622, baseType: !1852, size: 64, offset: 2240)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !74, file: !30, line: 486, baseType: !1855, size: 64, offset: 4096)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1857)
!1857 = !{!1858, !1859, !1860, !1864, !1865, !1866}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1856, file: !37, line: 643, baseType: !1611, size: 1472)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1856, file: !37, line: 644, baseType: !1614, size: 64, offset: 1472)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1856, file: !37, line: 645, baseType: !1861, size: 64, offset: 1536)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{null, !73, !984}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1856, file: !37, line: 646, baseType: !1614, size: 64, offset: 1600)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1856, file: !37, line: 647, baseType: !1605, size: 64, offset: 1664)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1856, file: !37, line: 648, baseType: !1605, size: 64, offset: 1728)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !74, file: !30, line: 493, baseType: !1868, size: 64, offset: 4160)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !74, file: !30, line: 499, baseType: !85, size: 128, offset: 4224)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !74, file: !30, line: 502, baseType: !1872, size: 64, offset: 4352)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1874)
!1874 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !74, file: !30, line: 504, baseType: !1876, size: 64, offset: 4416)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !74, file: !30, line: 505, baseType: !258, size: 64, offset: 4480)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !74, file: !30, line: 510, baseType: !258, size: 64, offset: 4544)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !74, file: !30, line: 511, baseType: !1880, size: 64, offset: 4608)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1882)
!1882 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !74, file: !30, line: 513, baseType: !1884, size: 64, offset: 4672)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1886)
!1886 = !{!1887, !1888}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1885, file: !30, line: 293, baseType: !7, size: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1885, file: !30, line: 294, baseType: !64, size: 64, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !74, file: !30, line: 515, baseType: !85, size: 128, offset: 4736)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !74, file: !30, line: 526, baseType: !1891, offset: 4864)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1892, line: 5, elements: !112)
!1892 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !74, file: !30, line: 528, baseType: !1894, size: 64, offset: 4864)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1896, line: 51, size: 1344, elements: !1897)
!1896 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1897 = !{!1898, !1899, !1901, !1902, !1992, !2001, !2002, !2003, !2004, !2005, !2006, !2007}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1895, file: !1896, line: 52, baseType: !81, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1895, file: !1896, line: 53, baseType: !1900, size: 32, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1896, line: 28, baseType: !412)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1895, file: !1896, line: 54, baseType: !81, size: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1895, file: !1896, line: 55, baseType: !1903, size: 192, offset: 192)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1904, line: 17, size: 192, elements: !1905)
!1904 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1905 = !{!1906, !1908, !1991}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1903, file: !1904, line: 18, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1903, file: !1904, line: 19, baseType: !1909, size: 64, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1911)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1904, line: 110, size: 1152, elements: !1912)
!1912 = !{!1913, !1917, !1921, !1927, !1933, !1937, !1941, !1946, !1950, !1951, !1955, !1959, !1963, !1974, !1975, !1976, !1977, !1987}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1911, file: !1904, line: 111, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!1907, !1907}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1911, file: !1904, line: 112, baseType: !1918, size: 64, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{null, !1907}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1911, file: !1904, line: 113, baseType: !1922, size: 64, offset: 128)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!984, !1925}
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1903)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1911, file: !1904, line: 114, baseType: !1928, size: 64, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!1115, !1925, !1931}
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1911, file: !1904, line: 116, baseType: !1934, size: 64, offset: 256)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!984, !1925, !81}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1911, file: !1904, line: 118, baseType: !1938, size: 64, offset: 320)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!124, !1925, !81, !7, !63, !187}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1911, file: !1904, line: 123, baseType: !1942, size: 64, offset: 384)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!124, !1925, !81, !1945, !187}
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1911, file: !1904, line: 126, baseType: !1947, size: 64, offset: 448)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!81, !1925}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1911, file: !1904, line: 127, baseType: !1947, size: 64, offset: 512)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1911, file: !1904, line: 128, baseType: !1952, size: 64, offset: 576)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!1907, !1925}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1911, file: !1904, line: 130, baseType: !1956, size: 64, offset: 640)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!1907, !1925, !1907}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1911, file: !1904, line: 133, baseType: !1960, size: 64, offset: 704)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!1907, !1925, !81}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1911, file: !1904, line: 135, baseType: !1964, size: 64, offset: 768)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!124, !1925, !81, !81, !7, !7, !1967}
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1904, line: 43, size: 640, elements: !1969)
!1969 = !{!1970, !1971, !1972}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1968, file: !1904, line: 44, baseType: !1907, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1968, file: !1904, line: 45, baseType: !7, size: 32, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1968, file: !1904, line: 46, baseType: !1973, size: 512, offset: 128)
!1973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 512, elements: !518)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1911, file: !1904, line: 140, baseType: !1956, size: 64, offset: 832)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1911, file: !1904, line: 143, baseType: !1952, size: 64, offset: 896)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1911, file: !1904, line: 145, baseType: !1914, size: 64, offset: 960)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1911, file: !1904, line: 146, baseType: !1978, size: 64, offset: 1024)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!124, !1925, !1981}
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1904, line: 29, size: 128, elements: !1983)
!1983 = !{!1984, !1985, !1986}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1982, file: !1904, line: 30, baseType: !7, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1982, file: !1904, line: 31, baseType: !7, size: 32, offset: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1982, file: !1904, line: 32, baseType: !1925, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1911, file: !1904, line: 148, baseType: !1988, size: 64, offset: 1088)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!124, !1925, !73}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1903, file: !1904, line: 20, baseType: !73, size: 64, offset: 128)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1895, file: !1896, line: 57, baseType: !1993, size: 64, offset: 384)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1896, line: 31, size: 704, elements: !1995)
!1995 = !{!1996, !1997, !1998, !1999, !2000}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1994, file: !1896, line: 32, baseType: !140, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1994, file: !1896, line: 33, baseType: !124, size: 32, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1994, file: !1896, line: 34, baseType: !63, size: 64, offset: 128)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1994, file: !1896, line: 35, baseType: !1993, size: 64, offset: 192)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1994, file: !1896, line: 43, baseType: !208, size: 448, offset: 256)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1895, file: !1896, line: 58, baseType: !1993, size: 64, offset: 448)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1895, file: !1896, line: 59, baseType: !1894, size: 64, offset: 512)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1895, file: !1896, line: 60, baseType: !1894, size: 64, offset: 576)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1895, file: !1896, line: 61, baseType: !1894, size: 64, offset: 640)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1895, file: !1896, line: 63, baseType: !77, size: 512, offset: 704)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1895, file: !1896, line: 65, baseType: !64, size: 64, offset: 1216)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1895, file: !1896, line: 66, baseType: !63, size: 64, offset: 1280)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !74, file: !30, line: 529, baseType: !1907, size: 64, offset: 4928)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !74, file: !30, line: 534, baseType: !2010, size: 32, offset: 4992)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !62, line: 16, baseType: !2011)
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !62, line: 13, baseType: !412)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !74, file: !30, line: 535, baseType: !412, size: 32, offset: 5024)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !74, file: !30, line: 537, baseType: !98, offset: 5056)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !74, file: !30, line: 538, baseType: !85, size: 128, offset: 5056)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !74, file: !30, line: 540, baseType: !2016, size: 64, offset: 5184)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2018, line: 54, size: 960, elements: !2019)
!2018 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2019 = !{!2020, !2021, !2022, !2023, !2024, !2025, !2026, !2030, !2034, !2035, !2036, !2037, !2041, !2045, !2046}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2017, file: !2018, line: 55, baseType: !81, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2017, file: !2018, line: 56, baseType: !1660, size: 64, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2017, file: !2018, line: 58, baseType: !193, size: 64, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2017, file: !2018, line: 59, baseType: !193, size: 64, offset: 192)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2017, file: !2018, line: 60, baseType: !91, size: 64, offset: 256)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2017, file: !2018, line: 62, baseType: !1596, size: 64, offset: 320)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2017, file: !2018, line: 63, baseType: !2027, size: 64, offset: 384)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!140, !73, !1603}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2017, file: !2018, line: 65, baseType: !2031, size: 64, offset: 448)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{null, !2016}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2017, file: !2018, line: 66, baseType: !1605, size: 64, offset: 512)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2017, file: !2018, line: 68, baseType: !1614, size: 64, offset: 576)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2017, file: !2018, line: 70, baseType: !1372, size: 64, offset: 640)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2017, file: !2018, line: 71, baseType: !2038, size: 64, offset: 704)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!1115, !73}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2017, file: !2018, line: 73, baseType: !2042, size: 64, offset: 768)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{null, !73, !1407, !1413}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2017, file: !2018, line: 75, baseType: !1609, size: 64, offset: 832)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2017, file: !2018, line: 77, baseType: !1730, size: 64, offset: 896)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !74, file: !30, line: 541, baseType: !193, size: 64, offset: 5248)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !74, file: !30, line: 543, baseType: !1605, size: 64, offset: 5312)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !74, file: !30, line: 544, baseType: !2050, size: 64, offset: 5376)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !74, file: !30, line: 545, baseType: !2053, size: 64, offset: 5440)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !74, file: !30, line: 547, baseType: !984, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !74, file: !30, line: 548, baseType: !984, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !74, file: !30, line: 549, baseType: !984, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !74, file: !30, line: 550, baseType: !984, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !70, file: !51, line: 291, baseType: !2060, size: 64, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2062)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pwm_ops", file: !51, line: 258, size: 640, elements: !2063)
!2063 = !{!2064, !2091, !2095, !2104, !2110, !2115, !2116, !2120, !2124, !2125}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2062, file: !51, line: 259, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!124, !2068, !2069}
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pwm_device", file: !51, line: 77, size: 832, elements: !2071)
!2071 = !{!2072, !2073, !2074, !2075, !2076, !2077, !2078, !2083, !2090}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !2070, file: !51, line: 78, baseType: !81, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2070, file: !51, line: 79, baseType: !64, size: 64, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "hwpwm", scope: !2070, file: !51, line: 80, baseType: !7, size: 32, offset: 128)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "pwm", scope: !2070, file: !51, line: 81, baseType: !7, size: 32, offset: 160)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !2070, file: !51, line: 82, baseType: !2068, size: 64, offset: 192)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !2070, file: !51, line: 83, baseType: !63, size: 64, offset: 256)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2070, file: !51, line: 85, baseType: !2079, size: 128, offset: 320)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pwm_args", file: !51, line: 41, size: 128, elements: !2080)
!2080 = !{!2081, !2082}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2079, file: !51, line: 42, baseType: !258, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2079, file: !51, line: 43, baseType: !50, size: 32, offset: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2070, file: !51, line: 86, baseType: !2084, size: 192, offset: 448)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pwm_state", file: !51, line: 58, size: 192, elements: !2085)
!2085 = !{!2086, !2087, !2088, !2089}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2084, file: !51, line: 59, baseType: !258, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "duty_cycle", scope: !2084, file: !51, line: 60, baseType: !258, size: 64, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2084, file: !51, line: 61, baseType: !50, size: 32, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2084, file: !51, line: 62, baseType: !984, size: 8, offset: 160)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !2070, file: !51, line: 87, baseType: !2084, size: 192, offset: 640)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2062, file: !51, line: 260, baseType: !2092, size: 64, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{null, !2068, !2069}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "capture", scope: !2062, file: !51, line: 261, baseType: !2096, size: 64, offset: 128)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!124, !2068, !2069, !2099, !64}
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pwm_capture", file: !51, line: 309, size: 64, elements: !2101)
!2101 = !{!2102, !2103}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2100, file: !51, line: 310, baseType: !7, size: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "duty_cycle", scope: !2100, file: !51, line: 311, baseType: !7, size: 32, offset: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "apply", scope: !2062, file: !51, line: 263, baseType: !2105, size: 64, offset: 192)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!124, !2068, !2069, !2108}
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2084)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2062, file: !51, line: 265, baseType: !2111, size: 64, offset: 256)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{null, !2068, !2069, !2114}
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2062, file: !51, line: 267, baseType: !1660, size: 64, offset: 320)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !2062, file: !51, line: 270, baseType: !2117, size: 64, offset: 384)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!124, !2068, !2069, !124, !124}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "set_polarity", scope: !2062, file: !51, line: 272, baseType: !2121, size: 64, offset: 448)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!124, !2068, !2069, !50}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !2062, file: !51, line: 274, baseType: !2065, size: 64, offset: 512)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !2062, file: !51, line: 275, baseType: !2092, size: 64, offset: 576)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !70, file: !51, line: 292, baseType: !124, size: 32, offset: 128)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "npwm", scope: !70, file: !51, line: 293, baseType: !7, size: 32, offset: 160)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "of_xlate", scope: !70, file: !51, line: 295, baseType: !2129, size: 64, offset: 192)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!2069, !2068, !2132}
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2134)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_phandle_args", file: !1896, line: 74, size: 640, elements: !2135)
!2135 = !{!2136, !2137, !2138}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !2134, file: !1896, line: 75, baseType: !1894, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "args_count", scope: !2134, file: !1896, line: 76, baseType: !124, size: 32, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2134, file: !1896, line: 77, baseType: !2139, size: 512, offset: 96)
!2139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2140, size: 512, elements: !775)
!2140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !62, line: 104, baseType: !412)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "of_pwm_n_cells", scope: !70, file: !51, line: 297, baseType: !7, size: 32, offset: 256)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !70, file: !51, line: 300, baseType: !85, size: 128, offset: 320)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "pwms", scope: !70, file: !51, line: 301, baseType: !2069, size: 64, offset: 448)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !66, file: !67, line: 20, baseType: !63, size: 64, offset: 512)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !66, file: !67, line: 21, baseType: !2146, size: 64, offset: 576)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2148)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pwm_lpss_boardinfo", file: !67, line: 24, size: 256, elements: !2149)
!2149 = !{!2150, !2151, !2152, !2153, !2154}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "clk_rate", scope: !2148, file: !67, line: 25, baseType: !64, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "npwm", scope: !2148, file: !67, line: 26, baseType: !7, size: 32, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "base_unit_bits", scope: !2148, file: !67, line: 27, baseType: !64, size: 64, offset: 128)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "bypass", scope: !2148, file: !67, line: 28, baseType: !984, size: 8, offset: 192)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "other_devices_aml_touches_pwm_regs", scope: !2148, file: !67, line: 33, baseType: !984, size: 8, offset: 200)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !62, line: 107, baseType: !258)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!2158 = !{!2159, !2164, !2169, !2174, !0}
!2159 = !DIGlobalVariableExpression(var: !2160, expr: !DIExpression())
!2160 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description166", scope: !2, file: !3, line: 263, type: !2161, isLocal: true, isDefinition: true, align: 8)
!2161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 376, elements: !2162)
!2162 = !{!2163}
!2163 = !DISubrange(count: 47)
!2164 = !DIGlobalVariableExpression(var: !2165, expr: !DIExpression())
!2165 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author167", scope: !2, file: !3, line: 264, type: !2166, isLocal: true, isDefinition: true, align: 8)
!2166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 528, elements: !2167)
!2167 = !{!2168}
!2168 = !DISubrange(count: 66)
!2169 = !DIGlobalVariableExpression(var: !2170, expr: !DIExpression())
!2170 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file168", scope: !2, file: !3, line: 265, type: !2171, isLocal: true, isDefinition: true, align: 8)
!2171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 280, elements: !2172)
!2172 = !{!2173}
!2173 = !DISubrange(count: 35)
!2174 = !DIGlobalVariableExpression(var: !2175, expr: !DIExpression())
!2175 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license169", scope: !2, file: !3, line: 265, type: !2176, isLocal: true, isDefinition: true, align: 8)
!2176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 192, elements: !2177)
!2177 = !{!2178}
!2178 = !DISubrange(count: 24)
!2179 = !{i32 7, !"Dwarf Version", i32 4}
!2180 = !{i32 2, !"Debug Info Version", i32 3}
!2181 = !{i32 1, !"wchar_size", i32 2}
!2182 = !{i32 1, !"Code Model", i32 2}
!2183 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2184 = distinct !DISubprogram(name: "pwm_lpss_probe", scope: !3, file: !3, line: 205, type: !2185, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!65, !73, !2187, !2146}
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2189, line: 20, size: 512, elements: !2190)
!2189 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2190 = !{!2191, !2193, !2194, !2195, !2196, !2197, !2198, !2199}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2188, file: !2189, line: 21, baseType: !2192, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !62, line: 158, baseType: !1113)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2188, file: !2189, line: 22, baseType: !2192, size: 64, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2188, file: !2189, line: 23, baseType: !81, size: 64, offset: 128)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2188, file: !2189, line: 24, baseType: !64, size: 64, offset: 192)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2188, file: !2189, line: 25, baseType: !64, size: 64, offset: 256)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2188, file: !2189, line: 26, baseType: !2187, size: 64, offset: 320)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2188, file: !2189, line: 26, baseType: !2187, size: 64, offset: 384)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2188, file: !2189, line: 26, baseType: !2187, size: 64, offset: 448)
!2200 = !DILocalVariable(name: "dev", arg: 1, scope: !2184, file: !3, line: 205, type: !73)
!2201 = !DILocation(line: 205, column: 53, scope: !2184)
!2202 = !DILocalVariable(name: "r", arg: 2, scope: !2184, file: !3, line: 205, type: !2187)
!2203 = !DILocation(line: 205, column: 75, scope: !2184)
!2204 = !DILocalVariable(name: "info", arg: 3, scope: !2184, file: !3, line: 206, type: !2146)
!2205 = !DILocation(line: 206, column: 43, scope: !2184)
!2206 = !DILocalVariable(name: "lpwm", scope: !2184, file: !3, line: 208, type: !65)
!2207 = !DILocation(line: 208, column: 24, scope: !2184)
!2208 = !DILocalVariable(name: "c", scope: !2184, file: !3, line: 209, type: !64)
!2209 = !DILocation(line: 209, column: 16, scope: !2184)
!2210 = !DILocalVariable(name: "i", scope: !2184, file: !3, line: 210, type: !124)
!2211 = !DILocation(line: 210, column: 6, scope: !2184)
!2212 = !DILocalVariable(name: "ret", scope: !2184, file: !3, line: 210, type: !124)
!2213 = !DILocation(line: 210, column: 9, scope: !2184)
!2214 = !DILocalVariable(name: "ctrl", scope: !2184, file: !3, line: 211, type: !412)
!2215 = !DILocation(line: 211, column: 6, scope: !2184)
!2216 = !DILocalVariable(name: "__ret_warn_on", scope: !2217, file: !3, line: 213, type: !124)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 213, column: 6)
!2218 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 213, column: 6)
!2219 = !DILocation(line: 213, column: 6, scope: !2217)
!2220 = !DILocation(line: 213, column: 6, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2217, file: !3, line: 213, column: 6)
!2222 = !DILocation(line: 213, column: 6, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 213, column: 6)
!2224 = !DILocation(line: 213, column: 6, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2223, file: !3, line: 213, column: 6)
!2226 = !DILocation(line: 213, column: 6, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2223, file: !3, line: 213, column: 6)
!2228 = !{i32 -2143377764, i32 -2143377735, i32 -2143377689, i32 -2143377631, i32 -2143377577, i32 -2143377523, i32 -2143377468, i32 -2143377437}
!2229 = !DILocation(line: 213, column: 6, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2223, file: !3, line: 213, column: 6)
!2231 = !{i32 -2143377033, i32 -2143377026, i32 -2143376974, i32 -2143376943, i32 -2143376913}
!2232 = !DILocation(line: 213, column: 6, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2223, file: !3, line: 213, column: 6)
!2234 = !DILocation(line: 213, column: 6, scope: !2218)
!2235 = !DILocation(line: 213, column: 6, scope: !2184)
!2236 = !DILocation(line: 214, column: 10, scope: !2218)
!2237 = !DILocation(line: 214, column: 3, scope: !2218)
!2238 = !DILocation(line: 216, column: 22, scope: !2184)
!2239 = !DILocation(line: 216, column: 9, scope: !2184)
!2240 = !DILocation(line: 216, column: 7, scope: !2184)
!2241 = !DILocation(line: 217, column: 7, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 217, column: 6)
!2243 = !DILocation(line: 217, column: 6, scope: !2184)
!2244 = !DILocation(line: 218, column: 10, scope: !2242)
!2245 = !DILocation(line: 218, column: 3, scope: !2242)
!2246 = !DILocation(line: 220, column: 37, scope: !2184)
!2247 = !DILocation(line: 220, column: 42, scope: !2184)
!2248 = !DILocation(line: 220, column: 15, scope: !2184)
!2249 = !DILocation(line: 220, column: 2, scope: !2184)
!2250 = !DILocation(line: 220, column: 8, scope: !2184)
!2251 = !DILocation(line: 220, column: 13, scope: !2184)
!2252 = !DILocation(line: 221, column: 13, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 221, column: 6)
!2254 = !DILocation(line: 221, column: 19, scope: !2253)
!2255 = !DILocation(line: 221, column: 6, scope: !2253)
!2256 = !DILocation(line: 221, column: 6, scope: !2184)
!2257 = !DILocation(line: 222, column: 19, scope: !2253)
!2258 = !DILocation(line: 222, column: 25, scope: !2253)
!2259 = !DILocation(line: 222, column: 10, scope: !2253)
!2260 = !DILocation(line: 222, column: 3, scope: !2253)
!2261 = !DILocation(line: 224, column: 15, scope: !2184)
!2262 = !DILocation(line: 224, column: 2, scope: !2184)
!2263 = !DILocation(line: 224, column: 8, scope: !2184)
!2264 = !DILocation(line: 224, column: 13, scope: !2184)
!2265 = !DILocation(line: 226, column: 6, scope: !2184)
!2266 = !DILocation(line: 226, column: 12, scope: !2184)
!2267 = !DILocation(line: 226, column: 18, scope: !2184)
!2268 = !DILocation(line: 226, column: 4, scope: !2184)
!2269 = !DILocation(line: 227, column: 7, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 227, column: 6)
!2271 = !DILocation(line: 227, column: 6, scope: !2184)
!2272 = !DILocation(line: 228, column: 10, scope: !2270)
!2273 = !DILocation(line: 228, column: 3, scope: !2270)
!2274 = !DILocation(line: 230, column: 19, scope: !2184)
!2275 = !DILocation(line: 230, column: 2, scope: !2184)
!2276 = !DILocation(line: 230, column: 8, scope: !2184)
!2277 = !DILocation(line: 230, column: 13, scope: !2184)
!2278 = !DILocation(line: 230, column: 17, scope: !2184)
!2279 = !DILocation(line: 231, column: 2, scope: !2184)
!2280 = !DILocation(line: 231, column: 8, scope: !2184)
!2281 = !DILocation(line: 231, column: 13, scope: !2184)
!2282 = !DILocation(line: 231, column: 17, scope: !2184)
!2283 = !DILocation(line: 232, column: 2, scope: !2184)
!2284 = !DILocation(line: 232, column: 8, scope: !2184)
!2285 = !DILocation(line: 232, column: 13, scope: !2184)
!2286 = !DILocation(line: 232, column: 18, scope: !2184)
!2287 = !DILocation(line: 233, column: 20, scope: !2184)
!2288 = !DILocation(line: 233, column: 26, scope: !2184)
!2289 = !DILocation(line: 233, column: 2, scope: !2184)
!2290 = !DILocation(line: 233, column: 8, scope: !2184)
!2291 = !DILocation(line: 233, column: 13, scope: !2184)
!2292 = !DILocation(line: 233, column: 18, scope: !2184)
!2293 = !DILocation(line: 235, column: 21, scope: !2184)
!2294 = !DILocation(line: 235, column: 27, scope: !2184)
!2295 = !DILocation(line: 235, column: 8, scope: !2184)
!2296 = !DILocation(line: 235, column: 6, scope: !2184)
!2297 = !DILocation(line: 236, column: 6, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 236, column: 6)
!2299 = !DILocation(line: 236, column: 6, scope: !2184)
!2300 = !DILocation(line: 237, column: 3, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 236, column: 11)
!2302 = !DILocation(line: 238, column: 18, scope: !2301)
!2303 = !DILocation(line: 238, column: 10, scope: !2301)
!2304 = !DILocation(line: 238, column: 3, scope: !2301)
!2305 = !DILocation(line: 241, column: 9, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 241, column: 2)
!2307 = !DILocation(line: 241, column: 7, scope: !2306)
!2308 = !DILocation(line: 241, column: 14, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 241, column: 2)
!2310 = !DILocation(line: 241, column: 18, scope: !2309)
!2311 = !DILocation(line: 241, column: 24, scope: !2309)
!2312 = !DILocation(line: 241, column: 30, scope: !2309)
!2313 = !DILocation(line: 241, column: 16, scope: !2309)
!2314 = !DILocation(line: 241, column: 2, scope: !2306)
!2315 = !DILocation(line: 242, column: 25, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2309, file: !3, line: 241, column: 41)
!2317 = !DILocation(line: 242, column: 31, scope: !2316)
!2318 = !DILocation(line: 242, column: 36, scope: !2316)
!2319 = !DILocation(line: 242, column: 41, scope: !2316)
!2320 = !DILocation(line: 242, column: 10, scope: !2316)
!2321 = !DILocation(line: 242, column: 8, scope: !2316)
!2322 = !DILocation(line: 243, column: 7, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2316, file: !3, line: 243, column: 7)
!2324 = !DILocation(line: 243, column: 12, scope: !2323)
!2325 = !DILocation(line: 243, column: 7, scope: !2316)
!2326 = !DILocation(line: 244, column: 19, scope: !2323)
!2327 = !DILocation(line: 244, column: 4, scope: !2323)
!2328 = !DILocation(line: 245, column: 2, scope: !2316)
!2329 = !DILocation(line: 241, column: 37, scope: !2309)
!2330 = !DILocation(line: 241, column: 2, scope: !2309)
!2331 = distinct !{!2331, !2314, !2332}
!2332 = !DILocation(line: 245, column: 2, scope: !2306)
!2333 = !DILocation(line: 247, column: 9, scope: !2184)
!2334 = !DILocation(line: 247, column: 2, scope: !2184)
!2335 = !DILocation(line: 248, column: 1, scope: !2184)
!2336 = distinct !DISubprogram(name: "ERR_PTR", scope: !2337, file: !2337, line: 24, type: !2338, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2337 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!63, !175}
!2340 = !DILocalVariable(name: "error", arg: 1, scope: !2336, file: !2337, line: 24, type: !175)
!2341 = !DILocation(line: 24, column: 48, scope: !2336)
!2342 = !DILocation(line: 26, column: 18, scope: !2336)
!2343 = !DILocation(line: 26, column: 9, scope: !2336)
!2344 = !DILocation(line: 26, column: 2, scope: !2336)
!2345 = distinct !DISubprogram(name: "devm_kzalloc", scope: !30, file: !30, line: 215, type: !2346, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!63, !73, !187, !61}
!2348 = !DILocalVariable(name: "dev", arg: 1, scope: !2345, file: !30, line: 215, type: !73)
!2349 = !DILocation(line: 215, column: 49, scope: !2345)
!2350 = !DILocalVariable(name: "size", arg: 2, scope: !2345, file: !30, line: 215, type: !187)
!2351 = !DILocation(line: 215, column: 61, scope: !2345)
!2352 = !DILocalVariable(name: "gfp", arg: 3, scope: !2345, file: !30, line: 215, type: !61)
!2353 = !DILocation(line: 215, column: 73, scope: !2345)
!2354 = !DILocation(line: 217, column: 22, scope: !2345)
!2355 = !DILocation(line: 217, column: 27, scope: !2345)
!2356 = !DILocation(line: 217, column: 33, scope: !2345)
!2357 = !DILocation(line: 217, column: 37, scope: !2345)
!2358 = !DILocation(line: 217, column: 9, scope: !2345)
!2359 = !DILocation(line: 217, column: 2, scope: !2345)
!2360 = distinct !DISubprogram(name: "IS_ERR", scope: !2337, file: !2337, line: 34, type: !2361, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!984, !1115}
!2363 = !DILocalVariable(name: "ptr", arg: 1, scope: !2360, file: !2337, line: 34, type: !1115)
!2364 = !DILocation(line: 34, column: 60, scope: !2360)
!2365 = !DILocation(line: 36, column: 9, scope: !2360)
!2366 = !DILocation(line: 36, column: 2, scope: !2360)
!2367 = distinct !DISubprogram(name: "ERR_CAST", scope: !2337, file: !2337, line: 51, type: !2368, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!63, !1115}
!2370 = !DILocalVariable(name: "ptr", arg: 1, scope: !2367, file: !2337, line: 51, type: !1115)
!2371 = !DILocation(line: 51, column: 64, scope: !2367)
!2372 = !DILocation(line: 54, column: 18, scope: !2367)
!2373 = !DILocation(line: 54, column: 2, scope: !2367)
!2374 = distinct !DISubprogram(name: "pwm_lpss_read", scope: !3, file: !3, line: 37, type: !2375, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!412, !2377}
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2070)
!2379 = !DILocalVariable(name: "pwm", arg: 1, scope: !2374, file: !3, line: 37, type: !2377)
!2380 = !DILocation(line: 37, column: 58, scope: !2374)
!2381 = !DILocalVariable(name: "lpwm", scope: !2374, file: !3, line: 39, type: !65)
!2382 = !DILocation(line: 39, column: 24, scope: !2374)
!2383 = !DILocation(line: 39, column: 39, scope: !2374)
!2384 = !DILocation(line: 39, column: 44, scope: !2374)
!2385 = !DILocation(line: 39, column: 31, scope: !2374)
!2386 = !DILocation(line: 41, column: 15, scope: !2374)
!2387 = !DILocation(line: 41, column: 21, scope: !2374)
!2388 = !DILocation(line: 41, column: 28, scope: !2374)
!2389 = !DILocation(line: 41, column: 33, scope: !2374)
!2390 = !DILocation(line: 41, column: 39, scope: !2374)
!2391 = !DILocation(line: 41, column: 26, scope: !2374)
!2392 = !DILocation(line: 41, column: 50, scope: !2374)
!2393 = !DILocation(line: 41, column: 9, scope: !2374)
!2394 = !DILocation(line: 41, column: 2, scope: !2374)
!2395 = distinct !DISubprogram(name: "pm_runtime_get", scope: !2396, file: !2396, line: 368, type: !1615, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2396 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!2397 = !DILocalVariable(name: "dev", arg: 1, scope: !2395, file: !2396, line: 368, type: !73)
!2398 = !DILocation(line: 368, column: 49, scope: !2395)
!2399 = !DILocation(line: 370, column: 29, scope: !2395)
!2400 = !DILocation(line: 370, column: 9, scope: !2395)
!2401 = !DILocation(line: 370, column: 2, scope: !2395)
!2402 = distinct !DISubprogram(name: "pwm_lpss_remove", scope: !3, file: !3, line: 251, type: !2403, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!124, !65}
!2405 = !DILocalVariable(name: "lpwm", arg: 1, scope: !2402, file: !3, line: 251, type: !65)
!2406 = !DILocation(line: 251, column: 43, scope: !2402)
!2407 = !DILocalVariable(name: "i", scope: !2402, file: !3, line: 253, type: !124)
!2408 = !DILocation(line: 253, column: 6, scope: !2402)
!2409 = !DILocation(line: 255, column: 9, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 255, column: 2)
!2411 = !DILocation(line: 255, column: 7, scope: !2410)
!2412 = !DILocation(line: 255, column: 14, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 255, column: 2)
!2414 = !DILocation(line: 255, column: 18, scope: !2413)
!2415 = !DILocation(line: 255, column: 24, scope: !2413)
!2416 = !DILocation(line: 255, column: 30, scope: !2413)
!2417 = !DILocation(line: 255, column: 16, scope: !2413)
!2418 = !DILocation(line: 255, column: 2, scope: !2410)
!2419 = !DILocation(line: 256, column: 23, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 256, column: 7)
!2421 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 255, column: 41)
!2422 = !DILocation(line: 256, column: 29, scope: !2420)
!2423 = !DILocation(line: 256, column: 34, scope: !2420)
!2424 = !DILocation(line: 256, column: 39, scope: !2420)
!2425 = !DILocation(line: 256, column: 7, scope: !2420)
!2426 = !DILocation(line: 256, column: 7, scope: !2421)
!2427 = !DILocation(line: 257, column: 19, scope: !2420)
!2428 = !DILocation(line: 257, column: 25, scope: !2420)
!2429 = !DILocation(line: 257, column: 30, scope: !2420)
!2430 = !DILocation(line: 257, column: 4, scope: !2420)
!2431 = !DILocation(line: 258, column: 2, scope: !2421)
!2432 = !DILocation(line: 255, column: 37, scope: !2413)
!2433 = !DILocation(line: 255, column: 2, scope: !2413)
!2434 = distinct !{!2434, !2418, !2435}
!2435 = !DILocation(line: 258, column: 2, scope: !2410)
!2436 = !DILocation(line: 259, column: 25, scope: !2402)
!2437 = !DILocation(line: 259, column: 31, scope: !2402)
!2438 = !DILocation(line: 259, column: 9, scope: !2402)
!2439 = !DILocation(line: 259, column: 2, scope: !2402)
!2440 = distinct !DISubprogram(name: "pwm_is_enabled", scope: !51, file: !51, line: 101, type: !2441, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!984, !2377}
!2443 = !DILocalVariable(name: "pwm", arg: 1, scope: !2440, file: !51, line: 101, type: !2377)
!2444 = !DILocation(line: 101, column: 60, scope: !2440)
!2445 = !DILocalVariable(name: "state", scope: !2440, file: !51, line: 103, type: !2084)
!2446 = !DILocation(line: 103, column: 19, scope: !2440)
!2447 = !DILocation(line: 105, column: 16, scope: !2440)
!2448 = !DILocation(line: 105, column: 2, scope: !2440)
!2449 = !DILocation(line: 107, column: 15, scope: !2440)
!2450 = !DILocation(line: 107, column: 2, scope: !2440)
!2451 = distinct !DISubprogram(name: "pm_runtime_put", scope: !2396, file: !2396, line: 417, type: !1615, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2452 = !DILocalVariable(name: "dev", arg: 1, scope: !2451, file: !2396, line: 417, type: !73)
!2453 = !DILocation(line: 417, column: 49, scope: !2451)
!2454 = !DILocation(line: 419, column: 27, scope: !2451)
!2455 = !DILocation(line: 419, column: 9, scope: !2451)
!2456 = !DILocation(line: 419, column: 2, scope: !2451)
!2457 = distinct !DISubprogram(name: "pwm_lpss_apply", scope: !3, file: !3, line: 143, type: !2106, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2458 = !DILocalVariable(name: "chip", arg: 1, scope: !2457, file: !3, line: 143, type: !2068)
!2459 = !DILocation(line: 143, column: 44, scope: !2457)
!2460 = !DILocalVariable(name: "pwm", arg: 2, scope: !2457, file: !3, line: 143, type: !2069)
!2461 = !DILocation(line: 143, column: 69, scope: !2457)
!2462 = !DILocalVariable(name: "state", arg: 3, scope: !2457, file: !3, line: 144, type: !2108)
!2463 = !DILocation(line: 144, column: 30, scope: !2457)
!2464 = !DILocalVariable(name: "lpwm", scope: !2457, file: !3, line: 146, type: !65)
!2465 = !DILocation(line: 146, column: 24, scope: !2457)
!2466 = !DILocation(line: 146, column: 39, scope: !2457)
!2467 = !DILocation(line: 146, column: 31, scope: !2457)
!2468 = !DILocalVariable(name: "ret", scope: !2457, file: !3, line: 147, type: !124)
!2469 = !DILocation(line: 147, column: 6, scope: !2457)
!2470 = !DILocation(line: 149, column: 6, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 149, column: 6)
!2472 = !DILocation(line: 149, column: 13, scope: !2471)
!2473 = !DILocation(line: 149, column: 6, scope: !2457)
!2474 = !DILocation(line: 150, column: 23, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 150, column: 7)
!2476 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 149, column: 22)
!2477 = !DILocation(line: 150, column: 8, scope: !2475)
!2478 = !DILocation(line: 150, column: 7, scope: !2476)
!2479 = !DILocation(line: 151, column: 24, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 150, column: 29)
!2481 = !DILocation(line: 151, column: 30, scope: !2480)
!2482 = !DILocation(line: 151, column: 4, scope: !2480)
!2483 = !DILocation(line: 152, column: 34, scope: !2480)
!2484 = !DILocation(line: 152, column: 40, scope: !2480)
!2485 = !DILocation(line: 152, column: 45, scope: !2480)
!2486 = !DILocation(line: 152, column: 10, scope: !2480)
!2487 = !DILocation(line: 152, column: 8, scope: !2480)
!2488 = !DILocation(line: 153, column: 8, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 153, column: 8)
!2490 = !DILocation(line: 153, column: 8, scope: !2480)
!2491 = !DILocation(line: 154, column: 20, scope: !2489)
!2492 = !DILocation(line: 154, column: 26, scope: !2489)
!2493 = !DILocation(line: 154, column: 5, scope: !2489)
!2494 = !DILocation(line: 155, column: 3, scope: !2480)
!2495 = !DILocation(line: 156, column: 34, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 155, column: 10)
!2497 = !DILocation(line: 156, column: 40, scope: !2496)
!2498 = !DILocation(line: 156, column: 45, scope: !2496)
!2499 = !DILocation(line: 156, column: 10, scope: !2496)
!2500 = !DILocation(line: 156, column: 8, scope: !2496)
!2501 = !DILocation(line: 158, column: 2, scope: !2476)
!2502 = !DILocation(line: 158, column: 28, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 158, column: 13)
!2504 = !DILocation(line: 158, column: 13, scope: !2503)
!2505 = !DILocation(line: 158, column: 13, scope: !2471)
!2506 = !DILocation(line: 159, column: 18, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 158, column: 34)
!2508 = !DILocation(line: 159, column: 37, scope: !2507)
!2509 = !DILocation(line: 159, column: 23, scope: !2507)
!2510 = !DILocation(line: 159, column: 42, scope: !2507)
!2511 = !DILocation(line: 159, column: 3, scope: !2507)
!2512 = !DILocation(line: 160, column: 18, scope: !2507)
!2513 = !DILocation(line: 160, column: 24, scope: !2507)
!2514 = !DILocation(line: 160, column: 3, scope: !2507)
!2515 = !DILocation(line: 161, column: 2, scope: !2507)
!2516 = !DILocation(line: 163, column: 9, scope: !2457)
!2517 = !DILocation(line: 163, column: 2, scope: !2457)
!2518 = distinct !DISubprogram(name: "pwm_lpss_get_state", scope: !3, file: !3, line: 166, type: !2112, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2519 = !DILocalVariable(name: "chip", arg: 1, scope: !2518, file: !3, line: 166, type: !2068)
!2520 = !DILocation(line: 166, column: 49, scope: !2518)
!2521 = !DILocalVariable(name: "pwm", arg: 2, scope: !2518, file: !3, line: 166, type: !2069)
!2522 = !DILocation(line: 166, column: 74, scope: !2518)
!2523 = !DILocalVariable(name: "state", arg: 3, scope: !2518, file: !3, line: 167, type: !2114)
!2524 = !DILocation(line: 167, column: 29, scope: !2518)
!2525 = !DILocalVariable(name: "lpwm", scope: !2518, file: !3, line: 169, type: !65)
!2526 = !DILocation(line: 169, column: 24, scope: !2518)
!2527 = !DILocation(line: 169, column: 39, scope: !2518)
!2528 = !DILocation(line: 169, column: 31, scope: !2518)
!2529 = !DILocalVariable(name: "base_unit_range", scope: !2518, file: !3, line: 170, type: !64)
!2530 = !DILocation(line: 170, column: 16, scope: !2518)
!2531 = !DILocalVariable(name: "base_unit", scope: !2518, file: !3, line: 171, type: !262)
!2532 = !DILocation(line: 171, column: 21, scope: !2518)
!2533 = !DILocalVariable(name: "freq", scope: !2518, file: !3, line: 171, type: !262)
!2534 = !DILocation(line: 171, column: 32, scope: !2518)
!2535 = !DILocalVariable(name: "on_time_div", scope: !2518, file: !3, line: 171, type: !262)
!2536 = !DILocation(line: 171, column: 38, scope: !2518)
!2537 = !DILocalVariable(name: "ctrl", scope: !2518, file: !3, line: 172, type: !412)
!2538 = !DILocation(line: 172, column: 6, scope: !2518)
!2539 = !DILocation(line: 174, column: 22, scope: !2518)
!2540 = !DILocation(line: 174, column: 28, scope: !2518)
!2541 = !DILocation(line: 174, column: 2, scope: !2518)
!2542 = !DILocation(line: 176, column: 20, scope: !2518)
!2543 = !DILocation(line: 176, column: 18, scope: !2518)
!2544 = !DILocation(line: 178, column: 23, scope: !2518)
!2545 = !DILocation(line: 178, column: 9, scope: !2518)
!2546 = !DILocation(line: 178, column: 7, scope: !2518)
!2547 = !DILocation(line: 179, column: 23, scope: !2518)
!2548 = !DILocation(line: 179, column: 28, scope: !2518)
!2549 = !DILocation(line: 179, column: 20, scope: !2518)
!2550 = !DILocation(line: 179, column: 16, scope: !2518)
!2551 = !DILocation(line: 179, column: 14, scope: !2518)
!2552 = !DILocation(line: 180, column: 15, scope: !2518)
!2553 = !DILocation(line: 180, column: 20, scope: !2518)
!2554 = !DILocation(line: 180, column: 14, scope: !2518)
!2555 = !DILocation(line: 180, column: 47, scope: !2518)
!2556 = !DILocation(line: 180, column: 63, scope: !2518)
!2557 = !DILocation(line: 180, column: 44, scope: !2518)
!2558 = !DILocation(line: 180, column: 12, scope: !2518)
!2559 = !DILocation(line: 182, column: 9, scope: !2518)
!2560 = !DILocation(line: 182, column: 21, scope: !2518)
!2561 = !DILocation(line: 182, column: 27, scope: !2518)
!2562 = !DILocation(line: 182, column: 33, scope: !2518)
!2563 = !DILocation(line: 182, column: 19, scope: !2518)
!2564 = !DILocation(line: 182, column: 7, scope: !2518)
!2565 = !DILocalVariable(name: "__base", scope: !2566, file: !3, line: 183, type: !2140)
!2566 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 183, column: 2)
!2567 = !DILocation(line: 183, column: 2, scope: !2566)
!2568 = !DILocalVariable(name: "__rem", scope: !2566, file: !3, line: 183, type: !2140)
!2569 = !DILocation(line: 184, column: 6, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 184, column: 6)
!2571 = !DILocation(line: 184, column: 11, scope: !2570)
!2572 = !DILocation(line: 184, column: 6, scope: !2518)
!2573 = !DILocation(line: 185, column: 3, scope: !2570)
!2574 = !DILocation(line: 185, column: 10, scope: !2570)
!2575 = !DILocation(line: 185, column: 17, scope: !2570)
!2576 = !DILocation(line: 187, column: 49, scope: !2570)
!2577 = !DILocation(line: 187, column: 32, scope: !2570)
!2578 = !DILocation(line: 187, column: 3, scope: !2570)
!2579 = !DILocation(line: 187, column: 10, scope: !2570)
!2580 = !DILocation(line: 187, column: 17, scope: !2570)
!2581 = !DILocation(line: 189, column: 17, scope: !2518)
!2582 = !DILocation(line: 189, column: 24, scope: !2518)
!2583 = !DILocation(line: 189, column: 14, scope: !2518)
!2584 = !DILocalVariable(name: "__base", scope: !2585, file: !3, line: 190, type: !2140)
!2585 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 190, column: 2)
!2586 = !DILocation(line: 190, column: 2, scope: !2585)
!2587 = !DILocalVariable(name: "__rem", scope: !2585, file: !3, line: 190, type: !2140)
!2588 = !DILocation(line: 191, column: 22, scope: !2518)
!2589 = !DILocation(line: 191, column: 2, scope: !2518)
!2590 = !DILocation(line: 191, column: 9, scope: !2518)
!2591 = !DILocation(line: 191, column: 20, scope: !2518)
!2592 = !DILocation(line: 193, column: 2, scope: !2518)
!2593 = !DILocation(line: 193, column: 9, scope: !2518)
!2594 = !DILocation(line: 193, column: 18, scope: !2518)
!2595 = !DILocation(line: 194, column: 22, scope: !2518)
!2596 = !DILocation(line: 194, column: 27, scope: !2518)
!2597 = !DILocation(line: 194, column: 20, scope: !2518)
!2598 = !DILocation(line: 194, column: 19, scope: !2518)
!2599 = !DILocation(line: 194, column: 2, scope: !2518)
!2600 = !DILocation(line: 194, column: 9, scope: !2518)
!2601 = !DILocation(line: 194, column: 17, scope: !2518)
!2602 = !DILocation(line: 196, column: 17, scope: !2518)
!2603 = !DILocation(line: 196, column: 23, scope: !2518)
!2604 = !DILocation(line: 196, column: 2, scope: !2518)
!2605 = !DILocation(line: 197, column: 1, scope: !2518)
!2606 = distinct !DISubprogram(name: "to_lpwm", scope: !3, file: !3, line: 32, type: !2607, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!65, !2068}
!2609 = !DILocalVariable(name: "chip", arg: 1, scope: !2606, file: !3, line: 32, type: !2068)
!2610 = !DILocation(line: 32, column: 62, scope: !2606)
!2611 = !DILocalVariable(name: "__mptr", scope: !2612, file: !3, line: 34, type: !63)
!2612 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 34, column: 9)
!2613 = !DILocation(line: 34, column: 9, scope: !2612)
!2614 = !DILocation(line: 34, column: 9, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2612, file: !3, line: 34, column: 9)
!2616 = !DILocation(line: 34, column: 2, scope: !2606)
!2617 = distinct !DISubprogram(name: "pm_runtime_get_sync", scope: !2396, file: !2396, line: 384, type: !1615, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2618 = !DILocalVariable(name: "dev", arg: 1, scope: !2617, file: !2396, line: 384, type: !73)
!2619 = !DILocation(line: 384, column: 54, scope: !2617)
!2620 = !DILocation(line: 386, column: 29, scope: !2617)
!2621 = !DILocation(line: 386, column: 9, scope: !2617)
!2622 = !DILocation(line: 386, column: 2, scope: !2617)
!2623 = distinct !DISubprogram(name: "pwm_lpss_prepare_enable", scope: !3, file: !3, line: 123, type: !2624, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!124, !65, !2069, !2108}
!2626 = !DILocalVariable(name: "lpwm", arg: 1, scope: !2623, file: !3, line: 123, type: !65)
!2627 = !DILocation(line: 123, column: 58, scope: !2623)
!2628 = !DILocalVariable(name: "pwm", arg: 2, scope: !2623, file: !3, line: 124, type: !2069)
!2629 = !DILocation(line: 124, column: 27, scope: !2623)
!2630 = !DILocalVariable(name: "state", arg: 3, scope: !2623, file: !3, line: 125, type: !2108)
!2631 = !DILocation(line: 125, column: 32, scope: !2623)
!2632 = !DILocalVariable(name: "ret", scope: !2623, file: !3, line: 127, type: !124)
!2633 = !DILocation(line: 127, column: 6, scope: !2623)
!2634 = !DILocation(line: 129, column: 29, scope: !2623)
!2635 = !DILocation(line: 129, column: 8, scope: !2623)
!2636 = !DILocation(line: 129, column: 6, scope: !2623)
!2637 = !DILocation(line: 130, column: 6, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 130, column: 6)
!2639 = !DILocation(line: 130, column: 6, scope: !2623)
!2640 = !DILocation(line: 131, column: 10, scope: !2638)
!2641 = !DILocation(line: 131, column: 3, scope: !2638)
!2642 = !DILocation(line: 133, column: 19, scope: !2623)
!2643 = !DILocation(line: 133, column: 25, scope: !2623)
!2644 = !DILocation(line: 133, column: 30, scope: !2623)
!2645 = !DILocation(line: 133, column: 37, scope: !2623)
!2646 = !DILocation(line: 133, column: 49, scope: !2623)
!2647 = !DILocation(line: 133, column: 56, scope: !2623)
!2648 = !DILocation(line: 133, column: 2, scope: !2623)
!2649 = !DILocation(line: 134, column: 23, scope: !2623)
!2650 = !DILocation(line: 134, column: 28, scope: !2623)
!2651 = !DILocation(line: 134, column: 34, scope: !2623)
!2652 = !DILocation(line: 134, column: 40, scope: !2623)
!2653 = !DILocation(line: 134, column: 47, scope: !2623)
!2654 = !DILocation(line: 134, column: 2, scope: !2623)
!2655 = !DILocation(line: 135, column: 33, scope: !2623)
!2656 = !DILocation(line: 135, column: 8, scope: !2623)
!2657 = !DILocation(line: 135, column: 6, scope: !2623)
!2658 = !DILocation(line: 136, column: 6, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 136, column: 6)
!2660 = !DILocation(line: 136, column: 6, scope: !2623)
!2661 = !DILocation(line: 137, column: 10, scope: !2659)
!2662 = !DILocation(line: 137, column: 3, scope: !2659)
!2663 = !DILocation(line: 139, column: 23, scope: !2623)
!2664 = !DILocation(line: 139, column: 28, scope: !2623)
!2665 = !DILocation(line: 139, column: 34, scope: !2623)
!2666 = !DILocation(line: 139, column: 40, scope: !2623)
!2667 = !DILocation(line: 139, column: 47, scope: !2623)
!2668 = !DILocation(line: 139, column: 2, scope: !2623)
!2669 = !DILocation(line: 140, column: 2, scope: !2623)
!2670 = !DILocation(line: 141, column: 1, scope: !2623)
!2671 = distinct !DISubprogram(name: "pwm_lpss_write", scope: !3, file: !3, line: 44, type: !2672, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{null, !2377, !412}
!2674 = !DILocalVariable(name: "pwm", arg: 1, scope: !2671, file: !3, line: 44, type: !2377)
!2675 = !DILocation(line: 44, column: 60, scope: !2671)
!2676 = !DILocalVariable(name: "value", arg: 2, scope: !2671, file: !3, line: 44, type: !412)
!2677 = !DILocation(line: 44, column: 69, scope: !2671)
!2678 = !DILocalVariable(name: "lpwm", scope: !2671, file: !3, line: 46, type: !65)
!2679 = !DILocation(line: 46, column: 24, scope: !2671)
!2680 = !DILocation(line: 46, column: 39, scope: !2671)
!2681 = !DILocation(line: 46, column: 44, scope: !2671)
!2682 = !DILocation(line: 46, column: 31, scope: !2671)
!2683 = !DILocation(line: 48, column: 9, scope: !2671)
!2684 = !DILocation(line: 48, column: 16, scope: !2671)
!2685 = !DILocation(line: 48, column: 22, scope: !2671)
!2686 = !DILocation(line: 48, column: 29, scope: !2671)
!2687 = !DILocation(line: 48, column: 34, scope: !2671)
!2688 = !DILocation(line: 48, column: 40, scope: !2671)
!2689 = !DILocation(line: 48, column: 27, scope: !2671)
!2690 = !DILocation(line: 48, column: 51, scope: !2671)
!2691 = !DILocation(line: 48, column: 2, scope: !2671)
!2692 = !DILocation(line: 49, column: 1, scope: !2671)
!2693 = distinct !DISubprogram(name: "pwm_lpss_is_updating", scope: !3, file: !3, line: 77, type: !2694, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!124, !2069}
!2696 = !DILocalVariable(name: "pwm", arg: 1, scope: !2693, file: !3, line: 77, type: !2069)
!2697 = !DILocation(line: 77, column: 59, scope: !2693)
!2698 = !DILocation(line: 79, column: 24, scope: !2693)
!2699 = !DILocation(line: 79, column: 10, scope: !2693)
!2700 = !DILocation(line: 79, column: 29, scope: !2693)
!2701 = !DILocation(line: 79, column: 9, scope: !2693)
!2702 = !DILocation(line: 79, column: 2, scope: !2693)
!2703 = distinct !DISubprogram(name: "pwm_lpss_prepare", scope: !3, file: !3, line: 82, type: !2704, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{null, !65, !2069, !124, !124}
!2706 = !DILocalVariable(name: "lpwm", arg: 1, scope: !2703, file: !3, line: 82, type: !65)
!2707 = !DILocation(line: 82, column: 52, scope: !2703)
!2708 = !DILocalVariable(name: "pwm", arg: 2, scope: !2703, file: !3, line: 82, type: !2069)
!2709 = !DILocation(line: 82, column: 77, scope: !2703)
!2710 = !DILocalVariable(name: "duty_ns", arg: 3, scope: !2703, file: !3, line: 83, type: !124)
!2711 = !DILocation(line: 83, column: 13, scope: !2703)
!2712 = !DILocalVariable(name: "period_ns", arg: 4, scope: !2703, file: !3, line: 83, type: !124)
!2713 = !DILocation(line: 83, column: 26, scope: !2703)
!2714 = !DILocalVariable(name: "on_time_div", scope: !2703, file: !3, line: 85, type: !262)
!2715 = !DILocation(line: 85, column: 21, scope: !2703)
!2716 = !DILocalVariable(name: "c", scope: !2703, file: !3, line: 86, type: !64)
!2717 = !DILocation(line: 86, column: 16, scope: !2703)
!2718 = !DILocation(line: 86, column: 20, scope: !2703)
!2719 = !DILocation(line: 86, column: 26, scope: !2703)
!2720 = !DILocation(line: 86, column: 32, scope: !2703)
!2721 = !DILocalVariable(name: "base_unit_range", scope: !2703, file: !3, line: 86, type: !64)
!2722 = !DILocation(line: 86, column: 42, scope: !2703)
!2723 = !DILocalVariable(name: "base_unit", scope: !2703, file: !3, line: 87, type: !262)
!2724 = !DILocation(line: 87, column: 21, scope: !2703)
!2725 = !DILocalVariable(name: "freq", scope: !2703, file: !3, line: 87, type: !262)
!2726 = !DILocation(line: 87, column: 32, scope: !2703)
!2727 = !DILocalVariable(name: "ctrl", scope: !2703, file: !3, line: 88, type: !412)
!2728 = !DILocation(line: 88, column: 6, scope: !2703)
!2729 = !DILocalVariable(name: "__base", scope: !2730, file: !3, line: 90, type: !2140)
!2730 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 90, column: 2)
!2731 = !DILocation(line: 90, column: 2, scope: !2730)
!2732 = !DILocalVariable(name: "__rem", scope: !2730, file: !3, line: 90, type: !2140)
!2733 = !DILocation(line: 96, column: 20, scope: !2703)
!2734 = !DILocation(line: 96, column: 18, scope: !2703)
!2735 = !DILocation(line: 97, column: 10, scope: !2703)
!2736 = !DILocation(line: 97, column: 7, scope: !2703)
!2737 = !DILocalVariable(name: "__d", scope: !2738, file: !3, line: 99, type: !64)
!2738 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 99, column: 14)
!2739 = !DILocation(line: 99, column: 14, scope: !2738)
!2740 = !DILocalVariable(name: "_tmp", scope: !2738, file: !3, line: 99, type: !262)
!2741 = !DILocalVariable(name: "__base", scope: !2742, file: !3, line: 99, type: !2140)
!2742 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 99, column: 14)
!2743 = !DILocation(line: 99, column: 14, scope: !2742)
!2744 = !DILocalVariable(name: "__rem", scope: !2742, file: !3, line: 99, type: !2140)
!2745 = !DILocation(line: 99, column: 12, scope: !2703)
!2746 = !DILocalVariable(name: "__UNIQUE_ID___x163", scope: !2747, file: !3, line: 101, type: !262)
!2747 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 101, column: 14)
!2748 = !DILocation(line: 101, column: 14, scope: !2747)
!2749 = !DILocalVariable(name: "__UNIQUE_ID___x161", scope: !2750, file: !3, line: 101, type: !262)
!2750 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 101, column: 14)
!2751 = !DILocation(line: 101, column: 14, scope: !2750)
!2752 = !DILocalVariable(name: "__UNIQUE_ID___y162", scope: !2750, file: !3, line: 101, type: !262)
!2753 = !DILocalVariable(name: "__UNIQUE_ID___y164", scope: !2747, file: !3, line: 101, type: !262)
!2754 = !DILocation(line: 101, column: 12, scope: !2703)
!2755 = !DILocation(line: 103, column: 25, scope: !2703)
!2756 = !DILocation(line: 103, column: 23, scope: !2703)
!2757 = !DILocation(line: 103, column: 14, scope: !2703)
!2758 = !DILocalVariable(name: "__base", scope: !2759, file: !3, line: 104, type: !2140)
!2759 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 104, column: 2)
!2760 = !DILocation(line: 104, column: 2, scope: !2759)
!2761 = !DILocalVariable(name: "__rem", scope: !2759, file: !3, line: 104, type: !2140)
!2762 = !DILocation(line: 105, column: 25, scope: !2703)
!2763 = !DILocation(line: 105, column: 23, scope: !2703)
!2764 = !DILocation(line: 105, column: 14, scope: !2703)
!2765 = !DILocation(line: 107, column: 23, scope: !2703)
!2766 = !DILocation(line: 107, column: 9, scope: !2703)
!2767 = !DILocation(line: 107, column: 7, scope: !2703)
!2768 = !DILocation(line: 108, column: 7, scope: !2703)
!2769 = !DILocation(line: 109, column: 13, scope: !2703)
!2770 = !DILocation(line: 109, column: 29, scope: !2703)
!2771 = !DILocation(line: 109, column: 34, scope: !2703)
!2772 = !DILocation(line: 109, column: 10, scope: !2703)
!2773 = !DILocation(line: 109, column: 7, scope: !2703)
!2774 = !DILocation(line: 110, column: 16, scope: !2703)
!2775 = !DILocation(line: 110, column: 10, scope: !2703)
!2776 = !DILocation(line: 110, column: 26, scope: !2703)
!2777 = !DILocation(line: 110, column: 7, scope: !2703)
!2778 = !DILocation(line: 111, column: 10, scope: !2703)
!2779 = !DILocation(line: 111, column: 7, scope: !2703)
!2780 = !DILocation(line: 113, column: 17, scope: !2703)
!2781 = !DILocation(line: 113, column: 22, scope: !2703)
!2782 = !DILocation(line: 113, column: 2, scope: !2703)
!2783 = !DILocation(line: 114, column: 17, scope: !2703)
!2784 = !DILocation(line: 114, column: 22, scope: !2703)
!2785 = !DILocation(line: 114, column: 27, scope: !2703)
!2786 = !DILocation(line: 114, column: 2, scope: !2703)
!2787 = !DILocation(line: 115, column: 1, scope: !2703)
!2788 = distinct !DISubprogram(name: "pwm_lpss_cond_enable", scope: !3, file: !3, line: 117, type: !2789, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{null, !2069, !984}
!2791 = !DILocalVariable(name: "pwm", arg: 1, scope: !2788, file: !3, line: 117, type: !2069)
!2792 = !DILocation(line: 117, column: 60, scope: !2788)
!2793 = !DILocalVariable(name: "cond", arg: 2, scope: !2788, file: !3, line: 117, type: !984)
!2794 = !DILocation(line: 117, column: 70, scope: !2788)
!2795 = !DILocation(line: 119, column: 6, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 119, column: 6)
!2797 = !DILocation(line: 119, column: 6, scope: !2788)
!2798 = !DILocation(line: 120, column: 18, scope: !2796)
!2799 = !DILocation(line: 120, column: 37, scope: !2796)
!2800 = !DILocation(line: 120, column: 23, scope: !2796)
!2801 = !DILocation(line: 120, column: 42, scope: !2796)
!2802 = !DILocation(line: 120, column: 3, scope: !2796)
!2803 = !DILocation(line: 121, column: 1, scope: !2788)
!2804 = distinct !DISubprogram(name: "pwm_lpss_wait_for_update", scope: !3, file: !3, line: 51, type: !2694, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2805 = !DILocalVariable(name: "pwm", arg: 1, scope: !2804, file: !3, line: 51, type: !2069)
!2806 = !DILocation(line: 51, column: 56, scope: !2804)
!2807 = !DILocalVariable(name: "lpwm", scope: !2804, file: !3, line: 53, type: !65)
!2808 = !DILocation(line: 53, column: 24, scope: !2804)
!2809 = !DILocation(line: 53, column: 39, scope: !2804)
!2810 = !DILocation(line: 53, column: 44, scope: !2804)
!2811 = !DILocation(line: 53, column: 31, scope: !2804)
!2812 = !DILocalVariable(name: "addr", scope: !2804, file: !3, line: 54, type: !1115)
!2813 = !DILocation(line: 54, column: 22, scope: !2804)
!2814 = !DILocation(line: 54, column: 29, scope: !2804)
!2815 = !DILocation(line: 54, column: 35, scope: !2804)
!2816 = !DILocation(line: 54, column: 42, scope: !2804)
!2817 = !DILocation(line: 54, column: 47, scope: !2804)
!2818 = !DILocation(line: 54, column: 53, scope: !2804)
!2819 = !DILocation(line: 54, column: 40, scope: !2804)
!2820 = !DILocation(line: 54, column: 64, scope: !2804)
!2821 = !DILocalVariable(name: "ms", scope: !2804, file: !3, line: 55, type: !2822)
!2822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2823 = !DILocation(line: 55, column: 21, scope: !2804)
!2824 = !DILocalVariable(name: "val", scope: !2804, file: !3, line: 56, type: !412)
!2825 = !DILocation(line: 56, column: 6, scope: !2804)
!2826 = !DILocalVariable(name: "err", scope: !2804, file: !3, line: 57, type: !124)
!2827 = !DILocation(line: 57, column: 6, scope: !2804)
!2828 = !DILocalVariable(name: "__timeout_us", scope: !2829, file: !3, line: 70, type: !258)
!2829 = distinct !DILexicalBlock(scope: !2804, file: !3, line: 70, column: 8)
!2830 = !DILocation(line: 70, column: 8, scope: !2829)
!2831 = !DILocalVariable(name: "__sleep_us", scope: !2829, file: !3, line: 70, type: !64)
!2832 = !DILocalVariable(name: "__timeout", scope: !2829, file: !3, line: 70, type: !488)
!2833 = !DILocation(line: 70, column: 8, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 70, column: 8)
!2835 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 70, column: 8)
!2836 = !DILocation(line: 70, column: 8, scope: !2835)
!2837 = !DILocation(line: 70, column: 8, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2834, file: !3, line: 70, column: 8)
!2839 = !DILocation(line: 70, column: 8, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 70, column: 8)
!2841 = !DILocation(line: 70, column: 8, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2843, file: !3, line: 70, column: 8)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 70, column: 8)
!2844 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 70, column: 8)
!2845 = !DILocation(line: 70, column: 8, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 70, column: 8)
!2847 = !DILocation(line: 70, column: 8, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 70, column: 8)
!2849 = !DILocation(line: 70, column: 8, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 70, column: 8)
!2851 = !DILocation(line: 70, column: 8, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 70, column: 8)
!2853 = !DILocation(line: 70, column: 8, scope: !2843)
!2854 = distinct !{!2854, !2855, !2855}
!2855 = !DILocation(line: 70, column: 8, scope: !2844)
!2856 = !DILocation(line: 70, column: 6, scope: !2804)
!2857 = !DILocation(line: 71, column: 6, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2804, file: !3, line: 71, column: 6)
!2859 = !DILocation(line: 71, column: 6, scope: !2804)
!2860 = !DILocation(line: 72, column: 3, scope: !2858)
!2861 = !DILocation(line: 74, column: 9, scope: !2804)
!2862 = !DILocation(line: 74, column: 2, scope: !2804)
!2863 = distinct !DISubprogram(name: "ktime_add_us", scope: !489, file: !489, line: 179, type: !2864, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!488, !2866, !2867}
!2866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !488)
!2867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!2868 = !DILocalVariable(name: "kt", arg: 1, scope: !2863, file: !489, line: 179, type: !2866)
!2869 = !DILocation(line: 179, column: 50, scope: !2863)
!2870 = !DILocalVariable(name: "usec", arg: 2, scope: !2863, file: !489, line: 179, type: !2867)
!2871 = !DILocation(line: 179, column: 64, scope: !2863)
!2872 = !DILocation(line: 181, column: 9, scope: !2863)
!2873 = !DILocation(line: 181, column: 2, scope: !2863)
!2874 = distinct !DISubprogram(name: "readl", scope: !2875, file: !2875, line: 59, type: !2876, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2875 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!7, !2878}
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2880)
!2880 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2881 = !DILocalVariable(name: "addr", arg: 1, scope: !2874, file: !2875, line: 59, type: !2878)
!2882 = !DILocation(line: 59, column: 1, scope: !2874)
!2883 = !DILocalVariable(name: "ret", scope: !2874, file: !2875, line: 59, type: !7)
!2884 = !{i32 -2146517441}
!2885 = distinct !DISubprogram(name: "ktime_compare", scope: !489, file: !489, line: 95, type: !2886, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!124, !2866, !2866}
!2888 = !DILocalVariable(name: "cmp1", arg: 1, scope: !2885, file: !489, line: 95, type: !2866)
!2889 = !DILocation(line: 95, column: 47, scope: !2885)
!2890 = !DILocalVariable(name: "cmp2", arg: 2, scope: !2885, file: !489, line: 95, type: !2866)
!2891 = !DILocation(line: 95, column: 67, scope: !2885)
!2892 = !DILocation(line: 97, column: 6, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2885, file: !489, line: 97, column: 6)
!2894 = !DILocation(line: 97, column: 13, scope: !2893)
!2895 = !DILocation(line: 97, column: 11, scope: !2893)
!2896 = !DILocation(line: 97, column: 6, scope: !2885)
!2897 = !DILocation(line: 98, column: 3, scope: !2893)
!2898 = !DILocation(line: 99, column: 6, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2885, file: !489, line: 99, column: 6)
!2900 = !DILocation(line: 99, column: 13, scope: !2899)
!2901 = !DILocation(line: 99, column: 11, scope: !2899)
!2902 = !DILocation(line: 99, column: 6, scope: !2885)
!2903 = !DILocation(line: 100, column: 3, scope: !2899)
!2904 = !DILocation(line: 101, column: 2, scope: !2885)
!2905 = !DILocation(line: 102, column: 1, scope: !2885)
!2906 = distinct !DISubprogram(name: "writel", scope: !2875, file: !2875, line: 67, type: !2907, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{null, !7, !2909}
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2910 = !DILocalVariable(name: "val", arg: 1, scope: !2906, file: !2875, line: 67, type: !7)
!2911 = !DILocation(line: 67, column: 1, scope: !2906)
!2912 = !DILocalVariable(name: "addr", arg: 2, scope: !2906, file: !2875, line: 67, type: !2909)
!2913 = !{i32 -2146515048}
!2914 = distinct !DISubprogram(name: "pwm_get_state", scope: !51, file: !51, line: 95, type: !2915, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{null, !2377, !2114}
!2917 = !DILocalVariable(name: "pwm", arg: 1, scope: !2914, file: !51, line: 95, type: !2377)
!2918 = !DILocation(line: 95, column: 59, scope: !2914)
!2919 = !DILocalVariable(name: "state", arg: 2, scope: !2914, file: !51, line: 96, type: !2114)
!2920 = !DILocation(line: 96, column: 24, scope: !2914)
!2921 = !DILocation(line: 98, column: 3, scope: !2914)
!2922 = !DILocation(line: 98, column: 11, scope: !2914)
!2923 = !DILocation(line: 98, column: 16, scope: !2914)
!2924 = !DILocation(line: 99, column: 1, scope: !2914)
