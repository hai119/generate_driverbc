; ModuleID = '../bcout/drivers/w1/w1_family.llvm.bc'
source_filename = "drivers/w1/w1_family.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.27, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i32 }
%struct.sched_class = type opaque
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics }
%struct.load_weight = type { i64, i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
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
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type opaque
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.file = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.14 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.14 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.6, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.7, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.8, %union.anon.12, %struct.key_restriction* }
%union.anon.6 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.7 = type { i64 }
%union.anon.8 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.9, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.9 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.12 = type { %union.key_payload }
%union.key_payload = type { [4 x i8*] }
%struct.key_restriction = type { i32 (%struct.key*, %struct.key_type*, %union.key_payload*, %struct.key*)*, %struct.key*, %struct.key_type* }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.mutex }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type opaque
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.rlimit = type { i64, i64 }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
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
%struct.kernel_siginfo = type { %struct.anon.15 }
%struct.anon.15 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.19 }
%struct.anon.19 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.26, i32, [12 x i8] }
%union.anon.26 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.27 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.28, %union.anon.41, %struct.atomic_t, [8 x i8] }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.41 = type { %struct.atomic_t }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.42, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.45 }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { i64, i64 }
%union.anon.45 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.w1_family = type { %struct.list_head, i8, %struct.w1_family_ops*, %struct.of_device_id*, %struct.atomic_t }
%struct.w1_family_ops = type { i32 (%struct.w1_slave*)*, void (%struct.w1_slave*)*, %struct.attribute_group**, %struct.hwmon_chip_info* }
%struct.w1_slave = type { %struct.module*, [32 x i8], %struct.list_head, %struct.w1_reg_num, %struct.atomic_t, i32, i64, %struct.w1_master*, %struct.w1_family*, i8*, %struct.device, %struct.device* }
%struct.module = type opaque
%struct.w1_reg_num = type { i64 }
%struct.w1_master = type { %struct.list_head, %struct.module*, [32 x i8], %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, i64, i32, i32, i32, i32, i64, %struct.atomic_t, i8*, i32, i32, i64, %struct.task_struct*, %struct.mutex, %struct.mutex, %struct.device_driver*, %struct.device, %struct.w1_bus_master*, i32 }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.acpi_device_id = type opaque
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.driver_private = type opaque
%struct.w1_bus_master = type { i8*, i8 (i8*)*, void (i8*, i8)*, i8 (i8*, i8)*, i8 (i8*)*, void (i8*, i8)*, i8 (i8*, i8*, i32)*, void (i8*, i8*, i32)*, i8 (i8*, i8)*, i8 (i8*)*, i8 (i8*, i32)*, void (i8*, %struct.w1_master*, i8, void (%struct.w1_master*, i64)*)*, i8* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.46, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.46 = type { %struct.kernfs_elem_attr }
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
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.hwmon_chip_info = type opaque
%struct.of_device_id = type opaque

@w1_flock = dso_local global %struct.spinlock undef, align 1, !dbg !0
@w1_families = internal global %struct.list_head { %struct.list_head* @w1_families, %struct.list_head* @w1_families }, align 8, !dbg !2306
@.str = private unnamed_addr constant [52 x i8] c"\016Waiting for family %u to become free: refcnt=%d.\0A\00", align 1
@current_task = external dso_local global %struct.task_struct*, section ".data", align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @w1_register_family(%struct.w1_family* %newf) #0 !dbg !2313 {
entry:
  %lock.addr.i8 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i8, metadata !2316, metadata !DIExpression()), !dbg !2322
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !2324, metadata !DIExpression()), !dbg !2330
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !2337, metadata !DIExpression()), !dbg !2338
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !2339, metadata !DIExpression()), !dbg !2347
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2349, metadata !DIExpression()), !dbg !2350
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !2351, metadata !DIExpression()), !dbg !2352
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !2353, metadata !DIExpression()), !dbg !2354
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2355, metadata !DIExpression()), !dbg !2357
  %newf.addr = alloca %struct.w1_family*, align 8
  %ent = alloca %struct.list_head*, align 8
  %n = alloca %struct.list_head*, align 8
  %f = alloca %struct.w1_family*, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.w1_family*, align 8
  store %struct.w1_family* %newf, %struct.w1_family** %newf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.w1_family** %newf.addr, metadata !2359, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.declare(metadata %struct.list_head** %ent, metadata !2361, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.declare(metadata %struct.list_head** %n, metadata !2363, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.declare(metadata %struct.w1_family** %f, metadata !2365, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2367, metadata !DIExpression()), !dbg !2368
  store i32 0, i32* %ret, align 4, !dbg !2368
  store %struct.spinlock* @w1_flock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2369, !srcloc !2371
  %0 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2372
  %1 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %0, i32 0, i32 0, !dbg !2372
  %rlock.i = bitcast %union.anon* %1 to %struct.raw_spinlock*, !dbg !2372
  %2 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @w1_families, i32 0, i32 0), align 8, !dbg !2374
  store %struct.list_head* %2, %struct.list_head** %ent, align 8, !dbg !2374
  %3 = load %struct.list_head*, %struct.list_head** %ent, align 8, !dbg !2374
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !2374
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2374
  store %struct.list_head* %4, %struct.list_head** %n, align 8, !dbg !2374
  br label %for.cond, !dbg !2374

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.list_head*, %struct.list_head** %ent, align 8, !dbg !2376
  %cmp = icmp ne %struct.list_head* %5, @w1_families, !dbg !2376
  br i1 %cmp, label %for.body, label %for.end, !dbg !2374

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2378, metadata !DIExpression()), !dbg !2381
  %6 = load %struct.list_head*, %struct.list_head** %ent, align 8, !dbg !2381
  %7 = bitcast %struct.list_head* %6 to i8*, !dbg !2381
  store i8* %7, i8** %__mptr, align 8, !dbg !2381
  br label %do.body, !dbg !2381

do.body:                                          ; preds = %for.body
  br label %do.end, !dbg !2382

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %__mptr, align 8, !dbg !2381
  %add.ptr = getelementptr i8, i8* %8, i64 0, !dbg !2381
  %9 = bitcast i8* %add.ptr to %struct.w1_family*, !dbg !2381
  store %struct.w1_family* %9, %struct.w1_family** %tmp, align 8, !dbg !2382
  %10 = load %struct.w1_family*, %struct.w1_family** %tmp, align 8, !dbg !2381
  store %struct.w1_family* %10, %struct.w1_family** %f, align 8, !dbg !2384
  %11 = load %struct.w1_family*, %struct.w1_family** %f, align 8, !dbg !2385
  %fid = getelementptr inbounds %struct.w1_family, %struct.w1_family* %11, i32 0, i32 1, !dbg !2387
  %12 = load i8, i8* %fid, align 8, !dbg !2387
  %conv = zext i8 %12 to i32, !dbg !2385
  %13 = load %struct.w1_family*, %struct.w1_family** %newf.addr, align 8, !dbg !2388
  %fid1 = getelementptr inbounds %struct.w1_family, %struct.w1_family* %13, i32 0, i32 1, !dbg !2389
  %14 = load i8, i8* %fid1, align 8, !dbg !2389
  %conv2 = zext i8 %14 to i32, !dbg !2388
  %cmp3 = icmp eq i32 %conv, %conv2, !dbg !2390
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2391

if.then:                                          ; preds = %do.end
  store i32 -17, i32* %ret, align 4, !dbg !2392
  br label %for.end, !dbg !2394

if.end:                                           ; preds = %do.end
  br label %for.inc, !dbg !2395

for.inc:                                          ; preds = %if.end
  %15 = load %struct.list_head*, %struct.list_head** %n, align 8, !dbg !2376
  store %struct.list_head* %15, %struct.list_head** %ent, align 8, !dbg !2376
  %16 = load %struct.list_head*, %struct.list_head** %ent, align 8, !dbg !2376
  %next5 = getelementptr inbounds %struct.list_head, %struct.list_head* %16, i32 0, i32 0, !dbg !2376
  %17 = load %struct.list_head*, %struct.list_head** %next5, align 8, !dbg !2376
  store %struct.list_head* %17, %struct.list_head** %n, align 8, !dbg !2376
  br label %for.cond, !dbg !2376, !llvm.loop !2396

for.end:                                          ; preds = %if.then, %for.cond
  %18 = load i32, i32* %ret, align 4, !dbg !2398
  %tobool = icmp ne i32 %18, 0, !dbg !2398
  br i1 %tobool, label %if.end7, label %if.then6, !dbg !2399

if.then6:                                         ; preds = %for.end
  %19 = load %struct.w1_family*, %struct.w1_family** %newf.addr, align 8, !dbg !2400
  %refcnt = getelementptr inbounds %struct.w1_family, %struct.w1_family* %19, i32 0, i32 4, !dbg !2401
  store %struct.atomic_t* %refcnt, %struct.atomic_t** %v.addr.i, align 8
  store i32 0, i32* %i.addr.i, align 4
  %20 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2402
  %21 = bitcast %struct.atomic_t* %20 to i8*, !dbg !2402
  store i8* %21, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %22 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2403
  %23 = load i64, i64* %size.addr.i.i, align 8, !dbg !2404
  %conv.i.i = trunc i64 %23 to i32, !dbg !2404
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %22, i32 %conv.i.i) #5, !dbg !2405
  %24 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2406
  %25 = load i64, i64* %size.addr.i.i, align 8, !dbg !2406
  call void @kcsan_check_access(i8* %24, i64 %25, i32 5) #5, !dbg !2406
  %26 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2407
  %27 = load i32, i32* %i.addr.i, align 4, !dbg !2408
  store %struct.atomic_t* %26, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %27, i32* %i.addr.i.i, align 4
  %28 = load i32, i32* %i.addr.i.i, align 4, !dbg !2409
  %29 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !2409
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %29, i32 0, i32 0, !dbg !2409
  store volatile i32 %28, i32* %counter.i.i, align 4, !dbg !2409
  %30 = load %struct.w1_family*, %struct.w1_family** %newf.addr, align 8, !dbg !2411
  %family_entry = getelementptr inbounds %struct.w1_family, %struct.w1_family* %30, i32 0, i32 0, !dbg !2412
  call void @list_add_tail(%struct.list_head* %family_entry, %struct.list_head* @w1_families) #6, !dbg !2413
  br label %if.end7, !dbg !2414

if.end7:                                          ; preds = %if.then6, %for.end
  store %struct.spinlock* @w1_flock, %struct.spinlock** %lock.addr.i8, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2415, !srcloc !2417
  %31 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i8, align 8, !dbg !2418
  %32 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %31, i32 0, i32 0, !dbg !2418
  %rlock.i9 = bitcast %union.anon* %32 to %struct.raw_spinlock*, !dbg !2418
  %33 = load %struct.w1_family*, %struct.w1_family** %newf.addr, align 8, !dbg !2420
  call void @w1_reconnect_slaves(%struct.w1_family* %33, i32 1) #6, !dbg !2421
  %34 = load i32, i32* %ret, align 4, !dbg !2422
  ret i32 %34, !dbg !2423
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !2424 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !2428, metadata !DIExpression()), !dbg !2429
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !2430, metadata !DIExpression()), !dbg !2431
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2432
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2433
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !2434
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !2434
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2435
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #6, !dbg !2436
  ret void, !dbg !2437
}

; Function Attrs: noredzone
declare dso_local void @w1_reconnect_slaves(%struct.w1_family*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @w1_unregister_family(%struct.w1_family* %fent) #0 !dbg !2438 {
entry:
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !2441, metadata !DIExpression()), !dbg !2447
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !2451, metadata !DIExpression()), !dbg !2453
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !2454, metadata !DIExpression()), !dbg !2456
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %v.addr.i1.i18 = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i18, metadata !2457, metadata !DIExpression()), !dbg !2463
  %v.addr.i.i19 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i19, metadata !2467, metadata !DIExpression()), !dbg !2469
  %size.addr.i.i20 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i20, metadata !2471, metadata !DIExpression()), !dbg !2472
  %v.addr.i21 = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i21, metadata !2473, metadata !DIExpression()), !dbg !2474
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !2457, metadata !DIExpression()), !dbg !2475
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !2467, metadata !DIExpression()), !dbg !2478
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2471, metadata !DIExpression()), !dbg !2480
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !2473, metadata !DIExpression()), !dbg !2481
  %lock.addr.i16 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i16, metadata !2316, metadata !DIExpression()), !dbg !2482
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2355, metadata !DIExpression()), !dbg !2484
  %fent.addr = alloca %struct.w1_family*, align 8
  %ent = alloca %struct.list_head*, align 8
  %n = alloca %struct.list_head*, align 8
  %f = alloca %struct.w1_family*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.w1_family*, align 8
  store %struct.w1_family* %fent, %struct.w1_family** %fent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.w1_family** %fent.addr, metadata !2486, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.declare(metadata %struct.list_head** %ent, metadata !2488, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.declare(metadata %struct.list_head** %n, metadata !2490, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.declare(metadata %struct.w1_family** %f, metadata !2492, metadata !DIExpression()), !dbg !2493
  store %struct.spinlock* @w1_flock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2494, !srcloc !2371
  %0 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2495
  %1 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %0, i32 0, i32 0, !dbg !2495
  %rlock.i = bitcast %union.anon* %1 to %struct.raw_spinlock*, !dbg !2495
  %2 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @w1_families, i32 0, i32 0), align 8, !dbg !2496
  store %struct.list_head* %2, %struct.list_head** %ent, align 8, !dbg !2496
  %3 = load %struct.list_head*, %struct.list_head** %ent, align 8, !dbg !2496
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !2496
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2496
  store %struct.list_head* %4, %struct.list_head** %n, align 8, !dbg !2496
  br label %for.cond, !dbg !2496

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.list_head*, %struct.list_head** %ent, align 8, !dbg !2498
  %cmp = icmp ne %struct.list_head* %5, @w1_families, !dbg !2498
  br i1 %cmp, label %for.body, label %for.end, !dbg !2496

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2500, metadata !DIExpression()), !dbg !2503
  %6 = load %struct.list_head*, %struct.list_head** %ent, align 8, !dbg !2503
  %7 = bitcast %struct.list_head* %6 to i8*, !dbg !2503
  store i8* %7, i8** %__mptr, align 8, !dbg !2503
  br label %do.body, !dbg !2503

do.body:                                          ; preds = %for.body
  br label %do.end, !dbg !2504

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %__mptr, align 8, !dbg !2503
  %add.ptr = getelementptr i8, i8* %8, i64 0, !dbg !2503
  %9 = bitcast i8* %add.ptr to %struct.w1_family*, !dbg !2503
  store %struct.w1_family* %9, %struct.w1_family** %tmp, align 8, !dbg !2504
  %10 = load %struct.w1_family*, %struct.w1_family** %tmp, align 8, !dbg !2503
  store %struct.w1_family* %10, %struct.w1_family** %f, align 8, !dbg !2506
  %11 = load %struct.w1_family*, %struct.w1_family** %f, align 8, !dbg !2507
  %fid = getelementptr inbounds %struct.w1_family, %struct.w1_family* %11, i32 0, i32 1, !dbg !2509
  %12 = load i8, i8* %fid, align 8, !dbg !2509
  %conv = zext i8 %12 to i32, !dbg !2507
  %13 = load %struct.w1_family*, %struct.w1_family** %fent.addr, align 8, !dbg !2510
  %fid1 = getelementptr inbounds %struct.w1_family, %struct.w1_family* %13, i32 0, i32 1, !dbg !2511
  %14 = load i8, i8* %fid1, align 8, !dbg !2511
  %conv2 = zext i8 %14 to i32, !dbg !2510
  %cmp3 = icmp eq i32 %conv, %conv2, !dbg !2512
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2513

if.then:                                          ; preds = %do.end
  %15 = load %struct.w1_family*, %struct.w1_family** %fent.addr, align 8, !dbg !2514
  %family_entry = getelementptr inbounds %struct.w1_family, %struct.w1_family* %15, i32 0, i32 0, !dbg !2516
  call void @list_del(%struct.list_head* %family_entry) #6, !dbg !2517
  br label %for.end, !dbg !2518

if.end:                                           ; preds = %do.end
  br label %for.inc, !dbg !2519

for.inc:                                          ; preds = %if.end
  %16 = load %struct.list_head*, %struct.list_head** %n, align 8, !dbg !2498
  store %struct.list_head* %16, %struct.list_head** %ent, align 8, !dbg !2498
  %17 = load %struct.list_head*, %struct.list_head** %ent, align 8, !dbg !2498
  %next5 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i32 0, i32 0, !dbg !2498
  %18 = load %struct.list_head*, %struct.list_head** %next5, align 8, !dbg !2498
  store %struct.list_head* %18, %struct.list_head** %n, align 8, !dbg !2498
  br label %for.cond, !dbg !2498, !llvm.loop !2520

for.end:                                          ; preds = %if.then, %for.cond
  store %struct.spinlock* @w1_flock, %struct.spinlock** %lock.addr.i16, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2522, !srcloc !2417
  %19 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i16, align 8, !dbg !2523
  %20 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %19, i32 0, i32 0, !dbg !2523
  %rlock.i17 = bitcast %union.anon* %20 to %struct.raw_spinlock*, !dbg !2523
  %21 = load %struct.w1_family*, %struct.w1_family** %fent.addr, align 8, !dbg !2524
  call void @w1_reconnect_slaves(%struct.w1_family* %21, i32 0) #6, !dbg !2525
  br label %while.cond, !dbg !2526

while.cond:                                       ; preds = %if.end15, %for.end
  %22 = load %struct.w1_family*, %struct.w1_family** %fent.addr, align 8, !dbg !2527
  %refcnt = getelementptr inbounds %struct.w1_family, %struct.w1_family* %22, i32 0, i32 4, !dbg !2528
  store %struct.atomic_t* %refcnt, %struct.atomic_t** %v.addr.i, align 8
  %23 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2529
  %24 = bitcast %struct.atomic_t* %23 to i8*, !dbg !2529
  store i8* %24, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %25 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2530
  %26 = load i64, i64* %size.addr.i.i, align 8, !dbg !2531
  %conv.i.i = trunc i64 %26 to i32, !dbg !2531
  %call.i.i = call zeroext i1 @kasan_check_read(i8* %25, i32 %conv.i.i) #5, !dbg !2532
  %27 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2533
  %28 = load i64, i64* %size.addr.i.i, align 8, !dbg !2533
  call void @kcsan_check_access(i8* %27, i64 %28, i32 4) #5, !dbg !2533
  %29 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2534
  store %struct.atomic_t* %29, %struct.atomic_t** %v.addr.i1.i, align 8
  %30 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !2535
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %30, i32 0, i32 0, !dbg !2535
  %31 = load volatile i32, i32* %counter.i.i, align 4, !dbg !2535
  %tobool = icmp ne i32 %31, 0, !dbg !2526
  br i1 %tobool, label %while.body, label %while.end, !dbg !2526

while.body:                                       ; preds = %while.cond
  %32 = load %struct.w1_family*, %struct.w1_family** %fent.addr, align 8, !dbg !2536
  %fid6 = getelementptr inbounds %struct.w1_family, %struct.w1_family* %32, i32 0, i32 1, !dbg !2536
  %33 = load i8, i8* %fid6, align 8, !dbg !2536
  %conv7 = zext i8 %33 to i32, !dbg !2536
  %34 = load %struct.w1_family*, %struct.w1_family** %fent.addr, align 8, !dbg !2536
  %refcnt8 = getelementptr inbounds %struct.w1_family, %struct.w1_family* %34, i32 0, i32 4, !dbg !2536
  store %struct.atomic_t* %refcnt8, %struct.atomic_t** %v.addr.i21, align 8
  %35 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i21, align 8, !dbg !2537
  %36 = bitcast %struct.atomic_t* %35 to i8*, !dbg !2537
  store i8* %36, i8** %v.addr.i.i19, align 8
  store i64 4, i64* %size.addr.i.i20, align 8
  %37 = load i8*, i8** %v.addr.i.i19, align 8, !dbg !2538
  %38 = load i64, i64* %size.addr.i.i20, align 8, !dbg !2539
  %conv.i.i22 = trunc i64 %38 to i32, !dbg !2539
  %call.i.i23 = call zeroext i1 @kasan_check_read(i8* %37, i32 %conv.i.i22) #5, !dbg !2540
  %39 = load i8*, i8** %v.addr.i.i19, align 8, !dbg !2541
  %40 = load i64, i64* %size.addr.i.i20, align 8, !dbg !2541
  call void @kcsan_check_access(i8* %39, i64 %40, i32 4) #5, !dbg !2541
  %41 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i21, align 8, !dbg !2542
  store %struct.atomic_t* %41, %struct.atomic_t** %v.addr.i1.i18, align 8
  %42 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i18, align 8, !dbg !2543
  %counter.i.i24 = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %42, i32 0, i32 0, !dbg !2543
  %43 = load volatile i32, i32* %counter.i.i24, align 4, !dbg !2543
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %conv7, i32 %43) #7, !dbg !2536
  %call11 = call i64 @msleep_interruptible(i32 1000) #6, !dbg !2544
  %tobool12 = icmp ne i64 %call11, 0, !dbg !2544
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !2545

if.then13:                                        ; preds = %while.body
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !2453
  %44 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !2453
  %45 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #8, !dbg !2456, !srcloc !2546
  store i64 %45, i64* %pfo_val__.i, align 8, !dbg !2456
  %46 = load i64, i64* %pfo_val__.i, align 8, !dbg !2456
  %47 = inttoptr i64 %46 to %struct.task_struct*, !dbg !2456
  store %struct.task_struct* %47, %struct.task_struct** %tmp.i, align 8, !dbg !2456
  %48 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !2456
  store %struct.task_struct* %48, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !2447
  %49 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !2447
  store %struct.task_struct* %49, %struct.task_struct** %tmp1.i, align 8, !dbg !2447
  %50 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !2447
  call void @flush_signals(%struct.task_struct* %50) #6, !dbg !2547
  br label %if.end15, !dbg !2547

if.end15:                                         ; preds = %if.then13, %while.body
  br label %while.cond, !dbg !2526, !llvm.loop !2548

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2550
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !2551 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !2554, metadata !DIExpression()), !dbg !2555
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2556
  call void @__list_del_entry(%struct.list_head* %0) #6, !dbg !2557
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2558
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !2559
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !2560
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2561
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !2562
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !2563
  ret void, !dbg !2564
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i64 @msleep_interruptible(i32) #2

; Function Attrs: noredzone
declare dso_local void @flush_signals(%struct.task_struct*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.w1_family* @w1_family_registered(i8 zeroext %fid) #0 !dbg !2565 {
entry:
  %fid.addr = alloca i8, align 1
  %ent = alloca %struct.list_head*, align 8
  %n = alloca %struct.list_head*, align 8
  %f = alloca %struct.w1_family*, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.w1_family*, align 8
  store i8 %fid, i8* %fid.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %fid.addr, metadata !2568, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.declare(metadata %struct.list_head** %ent, metadata !2570, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.declare(metadata %struct.list_head** %n, metadata !2572, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.declare(metadata %struct.w1_family** %f, metadata !2574, metadata !DIExpression()), !dbg !2575
  store %struct.w1_family* null, %struct.w1_family** %f, align 8, !dbg !2575
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2576, metadata !DIExpression()), !dbg !2577
  store i32 0, i32* %ret, align 4, !dbg !2577
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @w1_families, i32 0, i32 0), align 8, !dbg !2578
  store %struct.list_head* %0, %struct.list_head** %ent, align 8, !dbg !2578
  %1 = load %struct.list_head*, %struct.list_head** %ent, align 8, !dbg !2578
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !2578
  %2 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2578
  store %struct.list_head* %2, %struct.list_head** %n, align 8, !dbg !2578
  br label %for.cond, !dbg !2578

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.list_head*, %struct.list_head** %ent, align 8, !dbg !2580
  %cmp = icmp ne %struct.list_head* %3, @w1_families, !dbg !2580
  br i1 %cmp, label %for.body, label %for.end, !dbg !2578

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2582, metadata !DIExpression()), !dbg !2585
  %4 = load %struct.list_head*, %struct.list_head** %ent, align 8, !dbg !2585
  %5 = bitcast %struct.list_head* %4 to i8*, !dbg !2585
  store i8* %5, i8** %__mptr, align 8, !dbg !2585
  br label %do.body, !dbg !2585

do.body:                                          ; preds = %for.body
  br label %do.end, !dbg !2586

do.end:                                           ; preds = %do.body
  %6 = load i8*, i8** %__mptr, align 8, !dbg !2585
  %add.ptr = getelementptr i8, i8* %6, i64 0, !dbg !2585
  %7 = bitcast i8* %add.ptr to %struct.w1_family*, !dbg !2585
  store %struct.w1_family* %7, %struct.w1_family** %tmp, align 8, !dbg !2586
  %8 = load %struct.w1_family*, %struct.w1_family** %tmp, align 8, !dbg !2585
  store %struct.w1_family* %8, %struct.w1_family** %f, align 8, !dbg !2588
  %9 = load %struct.w1_family*, %struct.w1_family** %f, align 8, !dbg !2589
  %fid1 = getelementptr inbounds %struct.w1_family, %struct.w1_family* %9, i32 0, i32 1, !dbg !2591
  %10 = load i8, i8* %fid1, align 8, !dbg !2591
  %conv = zext i8 %10 to i32, !dbg !2589
  %11 = load i8, i8* %fid.addr, align 1, !dbg !2592
  %conv2 = zext i8 %11 to i32, !dbg !2592
  %cmp3 = icmp eq i32 %conv, %conv2, !dbg !2593
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2594

if.then:                                          ; preds = %do.end
  store i32 1, i32* %ret, align 4, !dbg !2595
  br label %for.end, !dbg !2597

if.end:                                           ; preds = %do.end
  br label %for.inc, !dbg !2598

for.inc:                                          ; preds = %if.end
  %12 = load %struct.list_head*, %struct.list_head** %n, align 8, !dbg !2580
  store %struct.list_head* %12, %struct.list_head** %ent, align 8, !dbg !2580
  %13 = load %struct.list_head*, %struct.list_head** %ent, align 8, !dbg !2580
  %next5 = getelementptr inbounds %struct.list_head, %struct.list_head* %13, i32 0, i32 0, !dbg !2580
  %14 = load %struct.list_head*, %struct.list_head** %next5, align 8, !dbg !2580
  store %struct.list_head* %14, %struct.list_head** %n, align 8, !dbg !2580
  br label %for.cond, !dbg !2580, !llvm.loop !2599

for.end:                                          ; preds = %if.then, %for.cond
  %15 = load i32, i32* %ret, align 4, !dbg !2601
  %tobool = icmp ne i32 %15, 0, !dbg !2602
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2602

cond.true:                                        ; preds = %for.end
  %16 = load %struct.w1_family*, %struct.w1_family** %f, align 8, !dbg !2603
  br label %cond.end, !dbg !2602

cond.false:                                       ; preds = %for.end
  br label %cond.end, !dbg !2602

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.w1_family* [ %16, %cond.true ], [ null, %cond.false ], !dbg !2602
  ret %struct.w1_family* %cond, !dbg !2604
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @w1_family_put(%struct.w1_family* %f) #0 !dbg !2605 {
entry:
  %lock.addr.i1 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i1, metadata !2316, metadata !DIExpression()), !dbg !2606
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2355, metadata !DIExpression()), !dbg !2608
  %f.addr = alloca %struct.w1_family*, align 8
  store %struct.w1_family* %f, %struct.w1_family** %f.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.w1_family** %f.addr, metadata !2610, metadata !DIExpression()), !dbg !2611
  store %struct.spinlock* @w1_flock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2612, !srcloc !2371
  %0 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2613
  %1 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %0, i32 0, i32 0, !dbg !2613
  %rlock.i = bitcast %union.anon* %1 to %struct.raw_spinlock*, !dbg !2613
  %2 = load %struct.w1_family*, %struct.w1_family** %f.addr, align 8, !dbg !2614
  call void @__w1_family_put(%struct.w1_family* %2) #6, !dbg !2615
  store %struct.spinlock* @w1_flock, %struct.spinlock** %lock.addr.i1, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2616, !srcloc !2417
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i1, align 8, !dbg !2617
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !2617
  %rlock.i2 = bitcast %union.anon* %4 to %struct.raw_spinlock*, !dbg !2617
  ret void, !dbg !2618
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__w1_family_put(%struct.w1_family* %f) #0 !dbg !2619 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !2620, metadata !DIExpression()), !dbg !2624
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !2628, metadata !DIExpression()), !dbg !2630
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2632, metadata !DIExpression()), !dbg !2633
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !2634, metadata !DIExpression()), !dbg !2635
  %f.addr = alloca %struct.w1_family*, align 8
  store %struct.w1_family* %f, %struct.w1_family** %f.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.w1_family** %f.addr, metadata !2636, metadata !DIExpression()), !dbg !2637
  %0 = load %struct.w1_family*, %struct.w1_family** %f.addr, align 8, !dbg !2638
  %refcnt = getelementptr inbounds %struct.w1_family, %struct.w1_family* %0, i32 0, i32 4, !dbg !2639
  store %struct.atomic_t* %refcnt, %struct.atomic_t** %v.addr.i, align 8
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2640
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !2640
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2641
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !2642
  %conv.i.i = trunc i64 %4 to i32, !dbg !2642
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i.i) #5, !dbg !2643
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2644
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !2644
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #5, !dbg !2644
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2645
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !2646
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %8, i32 0, i32 0, !dbg !2647
  call void asm sideeffect "decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32* %counter.i.i) #4, !dbg !2648, !srcloc !2649
  ret void, !dbg !2650
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @__w1_family_get(%struct.w1_family* %f) #0 !dbg !2651 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !2652, metadata !DIExpression()), !dbg !2654
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !2628, metadata !DIExpression()), !dbg !2658
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2632, metadata !DIExpression()), !dbg !2660
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !2661, metadata !DIExpression()), !dbg !2662
  %f.addr = alloca %struct.w1_family*, align 8
  store %struct.w1_family* %f, %struct.w1_family** %f.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.w1_family** %f.addr, metadata !2663, metadata !DIExpression()), !dbg !2664
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2665, !srcloc !2666
  %0 = load %struct.w1_family*, %struct.w1_family** %f.addr, align 8, !dbg !2667
  %refcnt = getelementptr inbounds %struct.w1_family, %struct.w1_family* %0, i32 0, i32 4, !dbg !2668
  store %struct.atomic_t* %refcnt, %struct.atomic_t** %v.addr.i, align 8
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2669
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !2669
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2670
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !2671
  %conv.i.i = trunc i64 %4 to i32, !dbg !2671
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i.i) #5, !dbg !2672
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2673
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !2673
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #5, !dbg !2673
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2674
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !2675
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %8, i32 0, i32 0, !dbg !2676
  call void asm sideeffect "incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32* %counter.i.i) #4, !dbg !2677, !srcloc !2678
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2679, !srcloc !2680
  ret void, !dbg !2681
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !2682 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !2686, metadata !DIExpression()), !dbg !2687
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !2688, metadata !DIExpression()), !dbg !2689
  ret i1 true, !dbg !2690
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !2691 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2695, metadata !DIExpression()), !dbg !2696
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2697, metadata !DIExpression()), !dbg !2698
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !2699, metadata !DIExpression()), !dbg !2700
  ret void, !dbg !2701
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !2702 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !2705, metadata !DIExpression()), !dbg !2706
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !2707, metadata !DIExpression()), !dbg !2708
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !2709, metadata !DIExpression()), !dbg !2710
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2711
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !2713
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !2714
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #6, !dbg !2715
  br i1 %call, label %if.end, label %if.then, !dbg !2716

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !2717

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2718
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !2719
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !2720
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !2721
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !2722
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2723
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !2724
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !2725
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !2726
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2727
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !2728
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !2729
  br label %do.body, !dbg !2730

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !2731

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !2733

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !2731

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2735
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !2735
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !2735
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !2735
  br label %do.end7, !dbg !2735

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !2731

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !2737
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !2738 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !2741, metadata !DIExpression()), !dbg !2742
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !2743, metadata !DIExpression()), !dbg !2744
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !2745, metadata !DIExpression()), !dbg !2746
  ret i1 true, !dbg !2747
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !2748 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !2749, metadata !DIExpression()), !dbg !2750
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2751
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #6, !dbg !2753
  br i1 %call, label %if.end, label %if.then, !dbg !2754

if.then:                                          ; preds = %entry
  br label %return, !dbg !2755

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2756
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !2757
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !2757
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2758
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !2759
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2759
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #6, !dbg !2760
  br label %return, !dbg !2761

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2761
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !2762 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !2765, metadata !DIExpression()), !dbg !2766
  ret i1 true, !dbg !2767
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !2768 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !2769, metadata !DIExpression()), !dbg !2770
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !2771, metadata !DIExpression()), !dbg !2772
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !2773
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !2774
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !2775
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !2776
  br label %do.body, !dbg !2777

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !2778

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !2780

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !2778

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !2782
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !2782
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !2782
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !2782
  br label %do.end5, !dbg !2782

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !2778

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !2784
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !2785 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !2786, metadata !DIExpression()), !dbg !2787
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !2788, metadata !DIExpression()), !dbg !2789
  ret i1 true, !dbg !2790
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noredzone nounwind }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }
attributes #8 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2308, !2309, !2310, !2311}
!llvm.ident = !{!2312}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "w1_flock", scope: !2, file: !3, line: 14, type: !134, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !55, globals: !2305, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/w1/w1_family.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !30, !38, !44, !50}
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 10, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!55 = !{!56, !57, !2298, !2300, !2302, !2304, !170, !111}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "w1_family", file: !59, line: 268, size: 384, elements: !60)
!59 = !DIFile(filename: "./include/linux/w1.h", directory: "/home/lizy2001/genbc/linux")
!60 = !{!61, !68, !74, !2296, !2297}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "family_entry", scope: !58, file: !59, line: 269, baseType: !62, size: 128)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !63, line: 178, size: 128, elements: !64)
!63 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!64 = !{!65, !67}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !62, file: !63, line: 179, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !62, file: !63, line: 179, baseType: !66, size: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "fid", scope: !58, file: !59, line: 270, baseType: !69, size: 8, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !70, line: 17, baseType: !71)
!70 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !72, line: 21, baseType: !73)
!72 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!73 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !58, file: !59, line: 272, baseType: !75, size: 64, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "w1_family_ops", file: !59, line: 253, size: 256, elements: !78)
!78 = !{!79, !2287, !2291, !2292}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "add_slave", scope: !77, file: !59, line: 254, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!83, !84}
!83 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "w1_slave", file: !59, line: 65, size: 6464, elements: !86)
!86 = !{!87, !91, !95, !96, !104, !109, !110, !112, !2283, !2284, !2285, !2286}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !85, file: !59, line: 66, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !90, line: 76, flags: DIFlagFwdDecl)
!90 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!91 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !85, file: !59, line: 67, baseType: !92, size: 256, offset: 64)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 256, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "w1_slave_entry", scope: !85, file: !59, line: 68, baseType: !62, size: 128, offset: 320)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "reg_num", scope: !85, file: !59, line: 69, baseType: !97, size: 64, offset: 448)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "w1_reg_num", file: !59, line: 18, size: 64, elements: !98)
!98 = !{!99, !102, !103}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !97, file: !59, line: 20, baseType: !100, size: 8, flags: DIFlagBitField, extraData: i64 0)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !72, line: 31, baseType: !101)
!101 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !97, file: !59, line: 21, baseType: !100, size: 48, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !97, file: !59, line: 22, baseType: !100, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !85, file: !59, line: 70, baseType: !105, size: 32, offset: 512)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !63, line: 168, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 166, size: 32, elements: !107)
!107 = !{!108}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !106, file: !63, line: 167, baseType: !83, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !85, file: !59, line: 71, baseType: !83, size: 32, offset: 544)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !85, file: !59, line: 72, baseType: !111, size: 64, offset: 576)
!111 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !85, file: !59, line: 74, baseType: !113, size: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "w1_master", file: !59, line: 199, size: 7680, elements: !115)
!115 = !{!116, !117, !118, !119, !150, !151, !152, !153, !154, !155, !156, !157, !160, !161, !163, !164, !165, !166, !167, !169, !1563, !1564, !1565, !2236, !2237, !2282}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "w1_master_entry", scope: !114, file: !59, line: 200, baseType: !62, size: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !114, file: !59, line: 201, baseType: !88, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !114, file: !59, line: 202, baseType: !92, size: 256, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "list_mutex", scope: !114, file: !59, line: 208, baseType: !120, size: 192, offset: 448)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !121, line: 53, size: 192, elements: !122)
!121 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!122 = !{!123, !133, !149}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !120, file: !121, line: 54, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !125, line: 13, baseType: !126)
!125 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !63, line: 175, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 173, size: 64, elements: !128)
!128 = !{!129}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !127, file: !63, line: 174, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !70, line: 22, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !72, line: 30, baseType: !132)
!132 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !120, file: !121, line: 55, baseType: !134, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !135, line: 83, baseType: !136)
!135 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !135, line: 71, elements: !137)
!137 = !{!138}
!138 = !DIDerivedType(tag: DW_TAG_member, scope: !136, file: !135, line: 72, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !136, file: !135, line: 72, elements: !140)
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !139, file: !135, line: 73, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !135, line: 20, elements: !143)
!143 = !{!144}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !142, file: !135, line: 21, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !146, line: 25, baseType: !147)
!146 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 25, elements: !148)
!148 = !{}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !120, file: !121, line: 59, baseType: !62, size: 128, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "slist", scope: !114, file: !59, line: 209, baseType: !62, size: 128, offset: 640)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "async_list", scope: !114, file: !59, line: 210, baseType: !62, size: 128, offset: 768)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "max_slave_count", scope: !114, file: !59, line: 211, baseType: !83, size: 32, offset: 896)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "slave_count", scope: !114, file: !59, line: 211, baseType: !83, size: 32, offset: 928)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "attempts", scope: !114, file: !59, line: 212, baseType: !111, size: 64, offset: 960)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ttl", scope: !114, file: !59, line: 213, baseType: !83, size: 32, offset: 1024)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !114, file: !59, line: 214, baseType: !83, size: 32, offset: 1056)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !114, file: !59, line: 215, baseType: !158, size: 32, offset: 1088)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !70, line: 21, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !72, line: 27, baseType: !7)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "search_count", scope: !114, file: !59, line: 216, baseType: !83, size: 32, offset: 1120)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "search_id", scope: !114, file: !59, line: 218, baseType: !162, size: 64, offset: 1152)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !70, line: 23, baseType: !100)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !114, file: !59, line: 220, baseType: !105, size: 32, offset: 1216)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !114, file: !59, line: 222, baseType: !56, size: 64, offset: 1280)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "enable_pullup", scope: !114, file: !59, line: 225, baseType: !83, size: 32, offset: 1344)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "pullup_duration", scope: !114, file: !59, line: 227, baseType: !83, size: 32, offset: 1376)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !114, file: !59, line: 229, baseType: !168, size: 64, offset: 1408)
!168 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !114, file: !59, line: 231, baseType: !170, size: 64, offset: 1472)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !172, line: 640, size: 48640, elements: !173)
!172 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!173 = !{!174, !180, !182, !183, !189, !190, !191, !192, !193, !194, !195, !196, !200, !225, !237, !334, !335, !336, !347, !348, !350, !351, !554, !555, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !634, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !690, !692, !693, !694, !696, !698, !699, !700, !701, !702, !708, !709, !710, !711, !712, !713, !714, !728, !733, !934, !935, !936, !937, !941, !944, !947, !950, !953, !956, !1062, !1093, !1094, !1095, !1096, !1097, !1098, !1101, !1102, !1103, !1112, !1113, !1114, !1115, !1116, !1121, !1122, !1123, !1126, !1127, !1130, !1133, !1136, !1139, !1142, !1145, !1146, !1226, !1227, !1230, !1231, !1234, !1235, !1236, !1240, !1241, !1242, !1255, !1256, !1257, !1267, !1272, !1275, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !171, file: !172, line: 646, baseType: !175, size: 128)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !176, line: 56, size: 128, elements: !177)
!176 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!177 = !{!178, !179}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !175, file: !176, line: 57, baseType: !111, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !175, file: !176, line: 58, baseType: !158, size: 32, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !171, file: !172, line: 649, baseType: !181, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !168)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !171, file: !172, line: 657, baseType: !56, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !171, file: !172, line: 658, baseType: !184, size: 32, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !185, line: 113, baseType: !186)
!185 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !185, line: 111, size: 32, elements: !187)
!187 = !{!188}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !186, file: !185, line: 112, baseType: !105, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !171, file: !172, line: 660, baseType: !7, size: 32, offset: 288)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !171, file: !172, line: 661, baseType: !7, size: 32, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !171, file: !172, line: 684, baseType: !83, size: 32, offset: 352)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !171, file: !172, line: 686, baseType: !83, size: 32, offset: 384)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !171, file: !172, line: 687, baseType: !83, size: 32, offset: 416)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !171, file: !172, line: 688, baseType: !83, size: 32, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !171, file: !172, line: 689, baseType: !7, size: 32, offset: 480)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !171, file: !172, line: 691, baseType: !197, size: 64, offset: 512)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!199 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !172, line: 691, flags: DIFlagFwdDecl)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !171, file: !172, line: 692, baseType: !201, size: 832, offset: 576)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !172, line: 451, size: 832, elements: !202)
!202 = !{!203, !208, !216, !217, !218, !219, !220, !221, !222, !223}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !201, file: !172, line: 453, baseType: !204, size: 128)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !172, line: 325, size: 128, elements: !205)
!205 = !{!206, !207}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !204, file: !172, line: 326, baseType: !111, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !204, file: !172, line: 327, baseType: !158, size: 32, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !201, file: !172, line: 454, baseType: !209, size: 192, align: 64, offset: 128)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !210, line: 24, size: 192, align: 64, elements: !211)
!210 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!211 = !{!212, !213, !215}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !209, file: !210, line: 25, baseType: !111, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !209, file: !210, line: 26, baseType: !214, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !209, file: !210, line: 27, baseType: !214, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !201, file: !172, line: 455, baseType: !62, size: 128, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !201, file: !172, line: 456, baseType: !7, size: 32, offset: 448)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !201, file: !172, line: 458, baseType: !162, size: 64, offset: 512)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !201, file: !172, line: 459, baseType: !162, size: 64, offset: 576)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !201, file: !172, line: 460, baseType: !162, size: 64, offset: 640)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !201, file: !172, line: 461, baseType: !162, size: 64, offset: 704)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !201, file: !172, line: 463, baseType: !162, size: 64, offset: 768)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !201, file: !172, line: 465, baseType: !224, offset: 832)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !172, line: 415, elements: !148)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !171, file: !172, line: 693, baseType: !226, size: 384, offset: 1408)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !172, line: 489, size: 384, elements: !227)
!227 = !{!228, !229, !230, !231, !232, !234, !235}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !226, file: !172, line: 490, baseType: !62, size: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !226, file: !172, line: 491, baseType: !111, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !226, file: !172, line: 492, baseType: !111, size: 64, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !226, file: !172, line: 493, baseType: !7, size: 32, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !226, file: !172, line: 494, baseType: !233, size: 16, offset: 288)
!233 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !226, file: !172, line: 495, baseType: !233, size: 16, offset: 304)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !226, file: !172, line: 497, baseType: !236, size: 64, offset: 320)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !171, file: !172, line: 697, baseType: !238, size: 1792, offset: 1792)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !172, line: 507, size: 1792, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !331, !332}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !238, file: !172, line: 508, baseType: !209, size: 192, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !238, file: !172, line: 515, baseType: !162, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !238, file: !172, line: 516, baseType: !162, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !238, file: !172, line: 517, baseType: !162, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !238, file: !172, line: 518, baseType: !162, size: 64, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !238, file: !172, line: 519, baseType: !162, size: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !238, file: !172, line: 526, baseType: !130, size: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !238, file: !172, line: 527, baseType: !162, size: 64, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !238, file: !172, line: 528, baseType: !7, size: 32, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !238, file: !172, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !238, file: !172, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !238, file: !172, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !238, file: !172, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !238, file: !172, line: 563, baseType: !254, size: 512, offset: 704)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !255)
!255 = !{!256, !264, !265, !270, !327, !328, !329, !330}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !254, file: !6, line: 119, baseType: !257, size: 256)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !258, line: 9, size: 256, elements: !259)
!258 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!259 = !{!260, !261}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !257, file: !258, line: 10, baseType: !209, size: 192, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !257, file: !258, line: 11, baseType: !262, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !263, line: 29, baseType: !130)
!263 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !254, file: !6, line: 120, baseType: !262, size: 64, offset: 256)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !254, file: !6, line: 121, baseType: !266, size: 64, offset: 320)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!5, !269}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !254, file: !6, line: 122, baseType: !271, size: 64, offset: 384)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !273)
!273 = !{!274, !295, !296, !300, !310, !311, !322, !326}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !272, file: !6, line: 160, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !277)
!277 = !{!278, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !276, file: !6, line: 215, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !135, line: 29, baseType: !142)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !276, file: !6, line: 216, baseType: !7, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !276, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !276, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !276, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !276, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !276, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !276, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !276, file: !6, line: 233, baseType: !262, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !276, file: !6, line: 234, baseType: !269, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !276, file: !6, line: 235, baseType: !262, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !276, file: !6, line: 236, baseType: !269, size: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !276, file: !6, line: 237, baseType: !292, size: 4096, offset: 512)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 4096, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 8)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !272, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !272, file: !6, line: 162, baseType: !297, size: 32, offset: 96)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !63, line: 27, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !299, line: 96, baseType: !83)
!299 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!300 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !272, file: !6, line: 163, baseType: !301, size: 32, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !302, line: 276, baseType: !303)
!302 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !302, line: 276, size: 32, elements: !304)
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !303, file: !302, line: 276, baseType: !306, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !302, line: 70, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !302, line: 65, size: 32, elements: !308)
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !307, file: !302, line: 66, baseType: !7, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !272, file: !6, line: 164, baseType: !269, size: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !272, file: !6, line: 165, baseType: !312, size: 128, offset: 256)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !258, line: 14, size: 128, elements: !313)
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !312, file: !258, line: 15, baseType: !315, size: 128)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !210, line: 125, size: 128, elements: !316)
!316 = !{!317, !321}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !315, file: !210, line: 126, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !210, line: 31, size: 64, elements: !319)
!319 = !{!320}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !318, file: !210, line: 32, baseType: !214, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !315, file: !210, line: 127, baseType: !214, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !272, file: !6, line: 166, baseType: !323, size: 64, offset: 384)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!262}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !272, file: !6, line: 167, baseType: !262, size: 64, offset: 448)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !254, file: !6, line: 123, baseType: !69, size: 8, offset: 448)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !254, file: !6, line: 124, baseType: !69, size: 8, offset: 456)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !254, file: !6, line: 125, baseType: !69, size: 8, offset: 464)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !254, file: !6, line: 126, baseType: !69, size: 8, offset: 472)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !238, file: !172, line: 572, baseType: !254, size: 512, offset: 1216)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !238, file: !172, line: 580, baseType: !333, size: 64, offset: 1728)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !171, file: !172, line: 721, baseType: !7, size: 32, offset: 3584)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !171, file: !172, line: 722, baseType: !83, size: 32, offset: 3616)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !171, file: !172, line: 723, baseType: !337, size: 64, offset: 3648)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !340, line: 17, baseType: !341)
!340 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !340, line: 17, size: 64, elements: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !341, file: !340, line: 17, baseType: !344, size: 64)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 64, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 1)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !171, file: !172, line: 724, baseType: !339, size: 64, offset: 3712)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !171, file: !172, line: 749, baseType: !349, offset: 3776)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !172, line: 290, elements: !148)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !171, file: !172, line: 751, baseType: !62, size: 128, offset: 3776)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !171, file: !172, line: 757, baseType: !352, size: 64, offset: 3904)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !354, line: 388, size: 7296, elements: !355)
!354 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!355 = !{!356, !550}
!356 = !DIDerivedType(tag: DW_TAG_member, scope: !353, file: !354, line: 389, baseType: !357, size: 7296)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !353, file: !354, line: 389, size: 7296, elements: !358)
!358 = !{!359, !400, !401, !402, !406, !407, !408, !409, !410, !417, !418, !419, !420, !421, !422, !423, !424, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !458, !466, !469, !495, !496, !518, !519, !522, !526, !527, !530, !531, !534, !537, !549}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !357, file: !354, line: 390, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !354, line: 305, size: 1472, elements: !362)
!362 = !{!363, !364, !365, !366, !367, !368, !369, !370, !378, !379, !384, !385, !388, !392, !393, !396, !397, !398}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !361, file: !354, line: 308, baseType: !111, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !361, file: !354, line: 309, baseType: !111, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !361, file: !354, line: 313, baseType: !360, size: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !361, file: !354, line: 313, baseType: !360, size: 64, offset: 192)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !361, file: !354, line: 315, baseType: !209, size: 192, align: 64, offset: 256)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !361, file: !354, line: 323, baseType: !111, size: 64, offset: 448)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !361, file: !354, line: 327, baseType: !352, size: 64, offset: 512)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !361, file: !354, line: 333, baseType: !371, size: 64, offset: 576)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !372, line: 284, baseType: !373)
!372 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !372, line: 284, size: 64, elements: !374)
!374 = !{!375}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !373, file: !372, line: 284, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !377, line: 19, baseType: !111)
!377 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!378 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !361, file: !354, line: 334, baseType: !111, size: 64, offset: 640)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !361, file: !354, line: 343, baseType: !380, size: 256, offset: 704)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !361, file: !354, line: 340, size: 256, elements: !381)
!381 = !{!382, !383}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !380, file: !354, line: 341, baseType: !209, size: 192, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !380, file: !354, line: 342, baseType: !111, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !361, file: !354, line: 351, baseType: !62, size: 128, offset: 960)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !361, file: !354, line: 353, baseType: !386, size: 64, offset: 1088)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !354, line: 353, flags: DIFlagFwdDecl)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !361, file: !354, line: 356, baseType: !389, size: 64, offset: 1152)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!391 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !354, line: 356, flags: DIFlagFwdDecl)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !361, file: !354, line: 359, baseType: !111, size: 64, offset: 1216)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !361, file: !354, line: 361, baseType: !394, size: 64, offset: 1280)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !372, line: 526, flags: DIFlagFwdDecl)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !361, file: !354, line: 362, baseType: !56, size: 64, offset: 1344)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !361, file: !354, line: 365, baseType: !124, size: 64, offset: 1408)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !361, file: !354, line: 373, baseType: !399, offset: 1472)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !354, line: 296, elements: !148)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !357, file: !354, line: 391, baseType: !318, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !357, file: !354, line: 392, baseType: !162, size: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !357, file: !354, line: 394, baseType: !403, size: 64, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!111, !394, !111, !111, !111, !111}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !357, file: !354, line: 398, baseType: !111, size: 64, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !357, file: !354, line: 399, baseType: !111, size: 64, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !357, file: !354, line: 405, baseType: !111, size: 64, offset: 384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !357, file: !354, line: 406, baseType: !111, size: 64, offset: 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !357, file: !354, line: 407, baseType: !411, size: 64, offset: 512)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !372, line: 286, baseType: !413)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 286, size: 64, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !413, file: !372, line: 286, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !377, line: 18, baseType: !111)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !357, file: !354, line: 416, baseType: !105, size: 32, offset: 576)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !357, file: !354, line: 428, baseType: !105, size: 32, offset: 608)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !357, file: !354, line: 437, baseType: !105, size: 32, offset: 640)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !357, file: !354, line: 447, baseType: !105, size: 32, offset: 672)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !357, file: !354, line: 450, baseType: !124, size: 64, offset: 704)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !357, file: !354, line: 452, baseType: !83, size: 32, offset: 768)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !357, file: !354, line: 454, baseType: !134, offset: 800)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !357, file: !354, line: 457, baseType: !425, size: 256, offset: 832)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !426, line: 35, size: 256, elements: !427)
!426 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!427 = !{!428, !429, !430, !431}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !425, file: !426, line: 36, baseType: !124, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !425, file: !426, line: 42, baseType: !124, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !425, file: !426, line: 46, baseType: !279, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !425, file: !426, line: 47, baseType: !62, size: 128, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !357, file: !354, line: 459, baseType: !62, size: 128, offset: 1088)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !357, file: !354, line: 466, baseType: !111, size: 64, offset: 1216)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !357, file: !354, line: 467, baseType: !111, size: 64, offset: 1280)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !357, file: !354, line: 469, baseType: !111, size: 64, offset: 1344)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !357, file: !354, line: 470, baseType: !111, size: 64, offset: 1408)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !357, file: !354, line: 471, baseType: !126, size: 64, offset: 1472)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !357, file: !354, line: 472, baseType: !111, size: 64, offset: 1536)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !357, file: !354, line: 473, baseType: !111, size: 64, offset: 1600)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !357, file: !354, line: 474, baseType: !111, size: 64, offset: 1664)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !357, file: !354, line: 475, baseType: !111, size: 64, offset: 1728)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !357, file: !354, line: 477, baseType: !134, offset: 1792)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !357, file: !354, line: 478, baseType: !111, size: 64, offset: 1792)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !357, file: !354, line: 478, baseType: !111, size: 64, offset: 1856)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !357, file: !354, line: 478, baseType: !111, size: 64, offset: 1920)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !357, file: !354, line: 478, baseType: !111, size: 64, offset: 1984)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !357, file: !354, line: 479, baseType: !111, size: 64, offset: 2048)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !357, file: !354, line: 479, baseType: !111, size: 64, offset: 2112)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !357, file: !354, line: 479, baseType: !111, size: 64, offset: 2176)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !357, file: !354, line: 480, baseType: !111, size: 64, offset: 2240)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !357, file: !354, line: 480, baseType: !111, size: 64, offset: 2304)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !357, file: !354, line: 480, baseType: !111, size: 64, offset: 2368)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !357, file: !354, line: 480, baseType: !111, size: 64, offset: 2432)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !357, file: !354, line: 482, baseType: !455, size: 2816, offset: 2496)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 2816, elements: !456)
!456 = !{!457}
!457 = !DISubrange(count: 44)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !357, file: !354, line: 488, baseType: !459, size: 256, offset: 5312)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !460, line: 60, size: 256, elements: !461)
!460 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!461 = !{!462}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !459, file: !460, line: 61, baseType: !463, size: 256)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 256, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 4)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !357, file: !354, line: 490, baseType: !467, size: 64, offset: 5568)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !354, line: 490, flags: DIFlagFwdDecl)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !357, file: !354, line: 493, baseType: !470, size: 896, offset: 5632)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !471, line: 53, baseType: !472)
!471 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !471, line: 13, size: 896, elements: !473)
!473 = !{!474, !475, !476, !477, !480, !481, !482, !483, !487, !488, !491}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !472, file: !471, line: 18, baseType: !162, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !472, file: !471, line: 28, baseType: !126, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !472, file: !471, line: 31, baseType: !425, size: 256, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !472, file: !471, line: 32, baseType: !478, size: 64, offset: 384)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !471, line: 32, flags: DIFlagFwdDecl)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !472, file: !471, line: 37, baseType: !233, size: 16, offset: 448)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !472, file: !471, line: 40, baseType: !120, size: 192, offset: 512)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !472, file: !471, line: 41, baseType: !56, size: 64, offset: 704)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !472, file: !471, line: 42, baseType: !484, size: 64, offset: 768)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!486 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !471, line: 42, flags: DIFlagFwdDecl)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !472, file: !471, line: 44, baseType: !105, size: 32, offset: 832)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !472, file: !471, line: 50, baseType: !489, size: 16, offset: 864)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !70, line: 19, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !72, line: 24, baseType: !233)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !472, file: !471, line: 51, baseType: !492, size: 16, offset: 880)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !70, line: 18, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !72, line: 23, baseType: !494)
!494 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !357, file: !354, line: 495, baseType: !111, size: 64, offset: 6528)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !357, file: !354, line: 497, baseType: !497, size: 64, offset: 6592)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !354, line: 381, size: 384, elements: !499)
!499 = !{!500, !501, !507}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !498, file: !354, line: 382, baseType: !105, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !498, file: !354, line: 383, baseType: !502, size: 128, offset: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !354, line: 376, size: 128, elements: !503)
!503 = !{!504, !505}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !502, file: !354, line: 377, baseType: !170, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !502, file: !354, line: 378, baseType: !506, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !498, file: !354, line: 384, baseType: !508, size: 192, offset: 192)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !509, line: 26, size: 192, elements: !510)
!509 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!510 = !{!511, !512}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !508, file: !509, line: 27, baseType: !7, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !508, file: !509, line: 28, baseType: !513, size: 128, offset: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !514, line: 43, size: 128, elements: !515)
!514 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !513, file: !514, line: 44, baseType: !279)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !513, file: !514, line: 45, baseType: !62, size: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !357, file: !354, line: 500, baseType: !134, offset: 6656)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !357, file: !354, line: 501, baseType: !520, size: 64, offset: 6656)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !354, line: 387, flags: DIFlagFwdDecl)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !357, file: !354, line: 516, baseType: !523, size: 64, offset: 6720)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !525, line: 18, flags: DIFlagFwdDecl)
!525 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!526 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !357, file: !354, line: 519, baseType: !394, size: 64, offset: 6784)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !357, file: !354, line: 521, baseType: !528, size: 64, offset: 6848)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !354, line: 521, flags: DIFlagFwdDecl)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !357, file: !354, line: 545, baseType: !105, size: 32, offset: 6912)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !357, file: !354, line: 548, baseType: !532, size: 8, offset: 6944)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !63, line: 30, baseType: !533)
!533 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !357, file: !354, line: 550, baseType: !535, offset: 6952)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !536, line: 142, elements: !148)
!536 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!537 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !357, file: !354, line: 554, baseType: !538, size: 256, offset: 6976)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !539, line: 102, size: 256, elements: !540)
!539 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!540 = !{!541, !542, !543}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !538, file: !539, line: 103, baseType: !124, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !538, file: !539, line: 104, baseType: !62, size: 128, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !538, file: !539, line: 105, baseType: !544, size: 64, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !539, line: 21, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{null, !548}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !357, file: !354, line: 557, baseType: !158, size: 32, offset: 7232)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !353, file: !354, line: 565, baseType: !551, offset: 7296)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, elements: !552)
!552 = !{!553}
!553 = !DISubrange(count: -1)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !171, file: !172, line: 758, baseType: !352, size: 64, offset: 3968)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !171, file: !172, line: 761, baseType: !556, size: 320, offset: 4032)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !460, line: 34, size: 320, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !556, file: !460, line: 35, baseType: !162, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !556, file: !460, line: 36, baseType: !560, size: 256, offset: 64)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 256, elements: !464)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !171, file: !172, line: 766, baseType: !83, size: 32, offset: 4352)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !171, file: !172, line: 767, baseType: !83, size: 32, offset: 4384)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !171, file: !172, line: 768, baseType: !83, size: 32, offset: 4416)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !171, file: !172, line: 770, baseType: !83, size: 32, offset: 4448)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !171, file: !172, line: 772, baseType: !111, size: 64, offset: 4480)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !171, file: !172, line: 775, baseType: !7, size: 32, offset: 4544)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !171, file: !172, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !171, file: !172, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !171, file: !172, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !171, file: !172, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !171, file: !172, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !171, file: !172, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !171, file: !172, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !171, file: !172, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !171, file: !172, line: 831, baseType: !111, size: 64, offset: 4672)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !171, file: !172, line: 833, baseType: !577, size: 384, offset: 4736)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !578)
!578 = !{!579, !584}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !577, file: !12, line: 26, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!168, !583}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, scope: !577, file: !12, line: 27, baseType: !585, size: 320, offset: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !577, file: !12, line: 27, size: 320, elements: !586)
!586 = !{!587, !597, !624}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !585, file: !12, line: 36, baseType: !588, size: 320)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !585, file: !12, line: 29, size: 320, elements: !589)
!589 = !{!590, !592, !593, !594, !595, !596}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !588, file: !12, line: 30, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !588, file: !12, line: 31, baseType: !158, size: 32, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !588, file: !12, line: 32, baseType: !158, size: 32, offset: 96)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !588, file: !12, line: 33, baseType: !158, size: 32, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !588, file: !12, line: 34, baseType: !162, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !588, file: !12, line: 35, baseType: !591, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !585, file: !12, line: 46, baseType: !598, size: 192)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !585, file: !12, line: 38, size: 192, elements: !599)
!599 = !{!600, !601, !602, !623}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !598, file: !12, line: 39, baseType: !297, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !598, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, scope: !598, file: !12, line: 41, baseType: !603, size: 64, offset: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !598, file: !12, line: 41, size: 64, elements: !604)
!604 = !{!605, !613}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !603, file: !12, line: 42, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !608, line: 7, size: 128, elements: !609)
!608 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!609 = !{!610, !612}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !607, file: !608, line: 8, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !299, line: 93, baseType: !132)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !607, file: !608, line: 9, baseType: !132, size: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !603, file: !12, line: 43, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !616, line: 7, size: 64, elements: !617)
!616 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!617 = !{!618, !622}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !615, file: !616, line: 8, baseType: !619, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !616, line: 5, baseType: !620)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !70, line: 20, baseType: !621)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !72, line: 26, baseType: !83)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !615, file: !616, line: 9, baseType: !620, size: 32, offset: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !598, file: !12, line: 45, baseType: !162, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !585, file: !12, line: 54, baseType: !625, size: 256)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !585, file: !12, line: 48, size: 256, elements: !626)
!626 = !{!627, !630, !631, !632, !633}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !625, file: !12, line: 49, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !625, file: !12, line: 50, baseType: !83, size: 32, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !625, file: !12, line: 51, baseType: !83, size: 32, offset: 96)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !625, file: !12, line: 52, baseType: !111, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !625, file: !12, line: 53, baseType: !111, size: 64, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !171, file: !172, line: 835, baseType: !635, size: 32, offset: 5120)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !63, line: 22, baseType: !636)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !299, line: 28, baseType: !83)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !171, file: !172, line: 836, baseType: !635, size: 32, offset: 5152)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !171, file: !172, line: 840, baseType: !111, size: 64, offset: 5184)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !171, file: !172, line: 849, baseType: !170, size: 64, offset: 5248)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !171, file: !172, line: 852, baseType: !170, size: 64, offset: 5312)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !171, file: !172, line: 857, baseType: !62, size: 128, offset: 5376)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !171, file: !172, line: 858, baseType: !62, size: 128, offset: 5504)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !171, file: !172, line: 859, baseType: !170, size: 64, offset: 5632)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !171, file: !172, line: 867, baseType: !62, size: 128, offset: 5696)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !171, file: !172, line: 868, baseType: !62, size: 128, offset: 5824)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !171, file: !172, line: 871, baseType: !647, size: 64, offset: 5952)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !649, line: 59, size: 768, elements: !650)
!649 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!650 = !{!651, !652, !653, !654, !665, !666, !673, !682}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !648, file: !649, line: 61, baseType: !184, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !648, file: !649, line: 62, baseType: !7, size: 32, offset: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !648, file: !649, line: 63, baseType: !134, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !648, file: !649, line: 65, baseType: !655, size: 256, offset: 64)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !656, size: 256, elements: !464)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !63, line: 182, size: 64, elements: !657)
!657 = !{!658}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !656, file: !63, line: 183, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !63, line: 186, size: 128, elements: !661)
!661 = !{!662, !663}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !660, file: !63, line: 187, baseType: !659, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !660, file: !63, line: 187, baseType: !664, size: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !648, file: !649, line: 66, baseType: !656, size: 64, offset: 320)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !648, file: !649, line: 68, baseType: !667, size: 128, offset: 384)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !668, line: 40, baseType: !669)
!668 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !668, line: 36, size: 128, elements: !670)
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !669, file: !668, line: 37, baseType: !134)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !669, file: !668, line: 38, baseType: !62, size: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !648, file: !649, line: 69, baseType: !674, size: 128, align: 64, offset: 512)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !63, line: 216, size: 128, align: 64, elements: !675)
!675 = !{!676, !678}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !674, file: !63, line: 217, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !674, file: !63, line: 218, baseType: !679, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !677}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !648, file: !649, line: 70, baseType: !683, size: 128, offset: 640)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 128, elements: !345)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !649, line: 54, size: 128, elements: !685)
!685 = !{!686, !687}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !684, file: !649, line: 55, baseType: !83, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !684, file: !649, line: 56, baseType: !688, size: 64, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !649, line: 56, flags: DIFlagFwdDecl)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !171, file: !172, line: 872, baseType: !691, size: 512, offset: 6016)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 512, elements: !464)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !171, file: !172, line: 873, baseType: !62, size: 128, offset: 6528)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !171, file: !172, line: 874, baseType: !62, size: 128, offset: 6656)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !171, file: !172, line: 876, baseType: !695, size: 64, offset: 6784)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !171, file: !172, line: 879, baseType: !697, size: 64, offset: 6848)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !171, file: !172, line: 882, baseType: !697, size: 64, offset: 6912)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !171, file: !172, line: 884, baseType: !162, size: 64, offset: 6976)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !171, file: !172, line: 885, baseType: !162, size: 64, offset: 7040)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !171, file: !172, line: 890, baseType: !162, size: 64, offset: 7104)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !171, file: !172, line: 891, baseType: !703, size: 128, offset: 7168)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !172, line: 242, size: 128, elements: !704)
!704 = !{!705, !706, !707}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !703, file: !172, line: 244, baseType: !162, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !703, file: !172, line: 245, baseType: !162, size: 64, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !703, file: !172, line: 246, baseType: !279, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !171, file: !172, line: 900, baseType: !111, size: 64, offset: 7296)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !171, file: !172, line: 901, baseType: !111, size: 64, offset: 7360)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !171, file: !172, line: 904, baseType: !162, size: 64, offset: 7424)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !171, file: !172, line: 907, baseType: !162, size: 64, offset: 7488)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !171, file: !172, line: 910, baseType: !111, size: 64, offset: 7552)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !171, file: !172, line: 911, baseType: !111, size: 64, offset: 7616)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !171, file: !172, line: 914, baseType: !715, size: 640, offset: 7680)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !716, line: 123, size: 640, elements: !717)
!716 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!717 = !{!718, !726, !727}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !715, file: !716, line: 124, baseType: !719, size: 576)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 576, elements: !724)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !716, line: 108, size: 192, elements: !721)
!721 = !{!722, !723}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !720, file: !716, line: 109, baseType: !162, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !720, file: !716, line: 110, baseType: !312, size: 128, offset: 64)
!724 = !{!725}
!725 = !DISubrange(count: 3)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !715, file: !716, line: 125, baseType: !7, size: 32, offset: 576)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !715, file: !716, line: 126, baseType: !7, size: 32, offset: 608)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !171, file: !172, line: 917, baseType: !729, size: 192, offset: 8320)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !716, line: 134, size: 192, elements: !730)
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !729, file: !716, line: 135, baseType: !674, size: 128, align: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !729, file: !716, line: 136, baseType: !7, size: 32, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !171, file: !172, line: 923, baseType: !734, size: 64, offset: 8512)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !737, line: 111, size: 1280, elements: !738)
!737 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!738 = !{!739, !740, !747, !754, !755, !756, !757, !758, !759, !760, !761, !770, !771, !772, !773, !774, !775, !889, !890, !891, !892, !918, !919, !929}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !736, file: !737, line: 112, baseType: !105, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !736, file: !737, line: 120, baseType: !741, size: 32, offset: 32)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !525, line: 23, baseType: !742)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !525, line: 21, size: 32, elements: !743)
!743 = !{!744}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !742, file: !525, line: 22, baseType: !745, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !63, line: 32, baseType: !746)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !299, line: 49, baseType: !7)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !736, file: !737, line: 121, baseType: !748, size: 32, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !525, line: 28, baseType: !749)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !525, line: 26, size: 32, elements: !750)
!750 = !{!751}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !749, file: !525, line: 27, baseType: !752, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !63, line: 33, baseType: !753)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !299, line: 50, baseType: !7)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !736, file: !737, line: 122, baseType: !741, size: 32, offset: 96)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !736, file: !737, line: 123, baseType: !748, size: 32, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !736, file: !737, line: 124, baseType: !741, size: 32, offset: 160)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !736, file: !737, line: 125, baseType: !748, size: 32, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !736, file: !737, line: 126, baseType: !741, size: 32, offset: 224)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !736, file: !737, line: 127, baseType: !748, size: 32, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !736, file: !737, line: 128, baseType: !7, size: 32, offset: 288)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !736, file: !737, line: 129, baseType: !762, size: 64, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !763, line: 26, baseType: !764)
!763 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !763, line: 24, size: 64, elements: !765)
!765 = !{!766}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !764, file: !763, line: 25, baseType: !767, size: 64)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 64, elements: !768)
!768 = !{!769}
!769 = !DISubrange(count: 2)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !736, file: !737, line: 130, baseType: !762, size: 64, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !736, file: !737, line: 131, baseType: !762, size: 64, offset: 448)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !736, file: !737, line: 132, baseType: !762, size: 64, offset: 512)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !736, file: !737, line: 133, baseType: !762, size: 64, offset: 576)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !736, file: !737, line: 135, baseType: !73, size: 8, offset: 640)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !736, file: !737, line: 137, baseType: !776, size: 64, offset: 704)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !778, line: 189, size: 1664, elements: !779)
!778 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!779 = !{!780, !781, !784, !789, !790, !793, !794, !801, !802, !803, !804, !807, !808, !809, !810, !811, !853, !874}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !777, file: !778, line: 190, baseType: !184, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !777, file: !778, line: 191, baseType: !782, size: 32, offset: 32)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !778, line: 28, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !63, line: 98, baseType: !620)
!784 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !778, line: 192, baseType: !785, size: 192, offset: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !777, file: !778, line: 192, size: 192, elements: !786)
!786 = !{!787, !788}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !785, file: !778, line: 193, baseType: !62, size: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !785, file: !778, line: 194, baseType: !209, size: 192, align: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !777, file: !778, line: 199, baseType: !425, size: 256, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !777, file: !778, line: 200, baseType: !791, size: 64, offset: 512)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !778, line: 200, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !777, file: !778, line: 201, baseType: !56, size: 64, offset: 576)
!794 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !778, line: 202, baseType: !795, size: 64, offset: 640)
!795 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !777, file: !778, line: 202, size: 64, elements: !796)
!796 = !{!797, !800}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !795, file: !778, line: 203, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !799, line: 8, baseType: !131)
!799 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!800 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !795, file: !778, line: 204, baseType: !798, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !777, file: !778, line: 206, baseType: !798, size: 64, offset: 704)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !777, file: !778, line: 207, baseType: !741, size: 32, offset: 768)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !777, file: !778, line: 208, baseType: !748, size: 32, offset: 800)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !777, file: !778, line: 209, baseType: !805, size: 32, offset: 832)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !778, line: 31, baseType: !806)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !63, line: 104, baseType: !158)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !777, file: !778, line: 210, baseType: !233, size: 16, offset: 864)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !777, file: !778, line: 211, baseType: !233, size: 16, offset: 880)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !777, file: !778, line: 215, baseType: !494, size: 16, offset: 896)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !777, file: !778, line: 222, baseType: !111, size: 64, offset: 960)
!811 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !778, line: 239, baseType: !812, size: 320, offset: 1024)
!812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !777, file: !778, line: 239, size: 320, elements: !813)
!813 = !{!814, !844}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !812, file: !778, line: 240, baseType: !815, size: 320)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !778, line: 108, size: 320, elements: !816)
!816 = !{!817, !818, !831, !834, !841}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !815, file: !778, line: 110, baseType: !111, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, scope: !815, file: !778, line: 111, baseType: !819, size: 64, offset: 64)
!819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !815, file: !778, line: 111, size: 64, elements: !820)
!820 = !{!821, !830}
!821 = !DIDerivedType(tag: DW_TAG_member, scope: !819, file: !778, line: 112, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !819, file: !778, line: 112, size: 64, elements: !823)
!823 = !{!824, !825}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !822, file: !778, line: 114, baseType: !489, size: 16)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !822, file: !778, line: 115, baseType: !826, size: 48, offset: 16)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !827, size: 48, elements: !828)
!827 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!828 = !{!829}
!829 = !DISubrange(count: 6)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !819, file: !778, line: 121, baseType: !111, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !815, file: !778, line: 123, baseType: !832, size: 64, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !778, line: 96, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !815, file: !778, line: 124, baseType: !835, size: 64, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !778, line: 102, size: 192, elements: !837)
!837 = !{!838, !839, !840}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !836, file: !778, line: 103, baseType: !674, size: 128, align: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !836, file: !778, line: 104, baseType: !184, size: 32, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !836, file: !778, line: 105, baseType: !532, size: 8, offset: 160)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !815, file: !778, line: 125, baseType: !842, size: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !827)
!844 = !DIDerivedType(tag: DW_TAG_member, scope: !812, file: !778, line: 241, baseType: !845, size: 320)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !812, file: !778, line: 241, size: 320, elements: !846)
!846 = !{!847, !848, !849, !850, !851}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !845, file: !778, line: 242, baseType: !111, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !845, file: !778, line: 243, baseType: !111, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !845, file: !778, line: 244, baseType: !832, size: 64, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !845, file: !778, line: 245, baseType: !835, size: 64, offset: 192)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !845, file: !778, line: 246, baseType: !852, size: 64, offset: 256)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !778, line: 254, baseType: !854, size: 256, offset: 1344)
!854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !777, file: !778, line: 254, size: 256, elements: !855)
!855 = !{!856, !862}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !854, file: !778, line: 255, baseType: !857, size: 256)
!857 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !778, line: 128, size: 256, elements: !858)
!858 = !{!859, !860}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !857, file: !778, line: 129, baseType: !56, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !857, file: !778, line: 130, baseType: !861, size: 256)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 256, elements: !464)
!862 = !DIDerivedType(tag: DW_TAG_member, scope: !854, file: !778, line: 256, baseType: !863, size: 256)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !854, file: !778, line: 256, size: 256, elements: !864)
!864 = !{!865, !866}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !863, file: !778, line: 258, baseType: !62, size: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !863, file: !778, line: 259, baseType: !867, size: 128, offset: 128)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !868, line: 22, size: 128, elements: !869)
!868 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!869 = !{!870, !873}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !867, file: !868, line: 23, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !868, line: 23, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !867, file: !868, line: 24, baseType: !111, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !777, file: !778, line: 274, baseType: !875, size: 64, offset: 1600)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !778, line: 170, size: 192, elements: !877)
!877 = !{!878, !887, !888}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !876, file: !778, line: 171, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !778, line: 165, baseType: !880)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!83, !776, !883, !885, !776}
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !833)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !857)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !876, file: !778, line: 172, baseType: !776, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !876, file: !778, line: 173, baseType: !832, size: 64, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !736, file: !737, line: 138, baseType: !776, size: 64, offset: 768)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !736, file: !737, line: 139, baseType: !776, size: 64, offset: 832)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !736, file: !737, line: 140, baseType: !776, size: 64, offset: 896)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !736, file: !737, line: 145, baseType: !893, size: 64, offset: 960)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !895, line: 13, size: 896, elements: !896)
!895 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!896 = !{!897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !894, file: !895, line: 14, baseType: !184, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !894, file: !895, line: 15, baseType: !105, size: 32, offset: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !894, file: !895, line: 16, baseType: !105, size: 32, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !894, file: !895, line: 21, baseType: !124, size: 64, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !894, file: !895, line: 27, baseType: !111, size: 64, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !894, file: !895, line: 28, baseType: !111, size: 64, offset: 256)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !894, file: !895, line: 29, baseType: !124, size: 64, offset: 320)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !894, file: !895, line: 32, baseType: !660, size: 128, offset: 384)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !894, file: !895, line: 33, baseType: !741, size: 32, offset: 512)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !894, file: !895, line: 37, baseType: !124, size: 64, offset: 576)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !894, file: !895, line: 44, baseType: !908, size: 256, offset: 640)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !909, line: 15, size: 256, elements: !910)
!909 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!910 = !{!911, !912, !913, !914, !915, !916, !917}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !908, file: !909, line: 16, baseType: !279)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !908, file: !909, line: 18, baseType: !83, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !908, file: !909, line: 19, baseType: !83, size: 32, offset: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !908, file: !909, line: 20, baseType: !83, size: 32, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !908, file: !909, line: 21, baseType: !83, size: 32, offset: 96)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !908, file: !909, line: 22, baseType: !111, size: 64, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !908, file: !909, line: 23, baseType: !111, size: 64, offset: 192)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !736, file: !737, line: 146, baseType: !523, size: 64, offset: 1024)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !736, file: !737, line: 147, baseType: !920, size: 64, offset: 1088)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !737, line: 25, size: 64, elements: !922)
!922 = !{!923, !924, !925}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !921, file: !737, line: 26, baseType: !105, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !921, file: !737, line: 27, baseType: !83, size: 32, offset: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !921, file: !737, line: 28, baseType: !926, offset: 64)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !748, elements: !927)
!927 = !{!928}
!928 = !DISubrange(count: 0)
!929 = !DIDerivedType(tag: DW_TAG_member, scope: !736, file: !737, line: 149, baseType: !930, size: 128, offset: 1152)
!930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !736, file: !737, line: 149, size: 128, elements: !931)
!931 = !{!932, !933}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !930, file: !737, line: 150, baseType: !83, size: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !930, file: !737, line: 151, baseType: !674, size: 128, align: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !171, file: !172, line: 926, baseType: !734, size: 64, offset: 8576)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !171, file: !172, line: 929, baseType: !734, size: 64, offset: 8640)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !171, file: !172, line: 933, baseType: !776, size: 64, offset: 8704)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !171, file: !172, line: 943, baseType: !938, size: 128, offset: 8768)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !827, size: 128, elements: !939)
!939 = !{!940}
!940 = !DISubrange(count: 16)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !171, file: !172, line: 945, baseType: !942, size: 64, offset: 8896)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !172, line: 49, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !171, file: !172, line: 956, baseType: !945, size: 64, offset: 8960)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !172, line: 45, flags: DIFlagFwdDecl)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !171, file: !172, line: 959, baseType: !948, size: 64, offset: 9024)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !172, line: 959, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !171, file: !172, line: 962, baseType: !951, size: 64, offset: 9088)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !172, line: 66, flags: DIFlagFwdDecl)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !171, file: !172, line: 966, baseType: !954, size: 64, offset: 9152)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !172, line: 50, flags: DIFlagFwdDecl)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !171, file: !172, line: 969, baseType: !957, size: 64, offset: 9216)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !959, line: 82, size: 7296, elements: !960)
!959 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!960 = !{!961, !962, !963, !964, !965, !966, !967, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !996, !1005, !1006, !1008, !1009, !1010, !1013, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1047, !1048, !1056, !1057, !1058, !1059, !1060, !1061}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !958, file: !959, line: 83, baseType: !184, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !958, file: !959, line: 84, baseType: !105, size: 32, offset: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !958, file: !959, line: 85, baseType: !83, size: 32, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !958, file: !959, line: 86, baseType: !62, size: 128, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !958, file: !959, line: 88, baseType: !667, size: 128, offset: 256)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !958, file: !959, line: 91, baseType: !170, size: 64, offset: 384)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !958, file: !959, line: 94, baseType: !968, size: 192, offset: 448)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !969, line: 30, size: 192, elements: !970)
!969 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!970 = !{!971, !972}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !968, file: !969, line: 31, baseType: !62, size: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !968, file: !969, line: 32, baseType: !973, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !974, line: 25, baseType: !975)
!974 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !974, line: 23, size: 64, elements: !976)
!976 = !{!977}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !975, file: !974, line: 24, baseType: !344, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !958, file: !959, line: 97, baseType: !656, size: 64, offset: 640)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !958, file: !959, line: 100, baseType: !83, size: 32, offset: 704)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !958, file: !959, line: 106, baseType: !83, size: 32, offset: 736)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !958, file: !959, line: 107, baseType: !170, size: 64, offset: 768)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !958, file: !959, line: 110, baseType: !83, size: 32, offset: 832)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !958, file: !959, line: 111, baseType: !7, size: 32, offset: 864)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !958, file: !959, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !958, file: !959, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !958, file: !959, line: 128, baseType: !83, size: 32, offset: 928)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !958, file: !959, line: 129, baseType: !62, size: 128, offset: 960)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !958, file: !959, line: 132, baseType: !254, size: 512, offset: 1088)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !958, file: !959, line: 133, baseType: !262, size: 64, offset: 1600)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !958, file: !959, line: 140, baseType: !991, size: 256, offset: 1664)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !992, size: 256, elements: !768)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !959, line: 38, size: 128, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !992, file: !959, line: 39, baseType: !162, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !992, file: !959, line: 40, baseType: !162, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !958, file: !959, line: 146, baseType: !997, size: 192, offset: 1920)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !959, line: 66, size: 192, elements: !998)
!998 = !{!999}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !997, file: !959, line: 67, baseType: !1000, size: 192)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !959, line: 47, size: 192, elements: !1001)
!1001 = !{!1002, !1003, !1004}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1000, file: !959, line: 48, baseType: !126, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1000, file: !959, line: 49, baseType: !126, size: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1000, file: !959, line: 50, baseType: !126, size: 64, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !958, file: !959, line: 150, baseType: !715, size: 640, offset: 2112)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !958, file: !959, line: 153, baseType: !1007, size: 256, offset: 2752)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 256, elements: !464)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !958, file: !959, line: 159, baseType: !647, size: 64, offset: 3008)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !958, file: !959, line: 162, baseType: !83, size: 32, offset: 3072)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !958, file: !959, line: 164, baseType: !1011, size: 64, offset: 3136)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !959, line: 164, flags: DIFlagFwdDecl)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !958, file: !959, line: 175, baseType: !1014, size: 32, offset: 3200)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !302, line: 805, baseType: !1015)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !302, line: 798, size: 32, elements: !1016)
!1016 = !{!1017, !1022}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1015, file: !302, line: 803, baseType: !1018, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !302, line: 277, baseType: !1019)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !302, line: 277, size: 32, elements: !1020)
!1020 = !{!1021}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1019, file: !302, line: 277, baseType: !306, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1015, file: !302, line: 804, baseType: !134, offset: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !958, file: !959, line: 176, baseType: !162, size: 64, offset: 3264)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !958, file: !959, line: 176, baseType: !162, size: 64, offset: 3328)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !958, file: !959, line: 176, baseType: !162, size: 64, offset: 3392)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !958, file: !959, line: 176, baseType: !162, size: 64, offset: 3456)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !958, file: !959, line: 177, baseType: !162, size: 64, offset: 3520)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !958, file: !959, line: 178, baseType: !162, size: 64, offset: 3584)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !958, file: !959, line: 179, baseType: !703, size: 128, offset: 3648)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !958, file: !959, line: 180, baseType: !111, size: 64, offset: 3776)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !958, file: !959, line: 180, baseType: !111, size: 64, offset: 3840)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !958, file: !959, line: 180, baseType: !111, size: 64, offset: 3904)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !958, file: !959, line: 180, baseType: !111, size: 64, offset: 3968)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !958, file: !959, line: 181, baseType: !111, size: 64, offset: 4032)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !958, file: !959, line: 181, baseType: !111, size: 64, offset: 4096)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !958, file: !959, line: 181, baseType: !111, size: 64, offset: 4160)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !958, file: !959, line: 181, baseType: !111, size: 64, offset: 4224)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !958, file: !959, line: 182, baseType: !111, size: 64, offset: 4288)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !958, file: !959, line: 182, baseType: !111, size: 64, offset: 4352)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !958, file: !959, line: 182, baseType: !111, size: 64, offset: 4416)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !958, file: !959, line: 182, baseType: !111, size: 64, offset: 4480)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !958, file: !959, line: 183, baseType: !111, size: 64, offset: 4544)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !958, file: !959, line: 183, baseType: !111, size: 64, offset: 4608)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !958, file: !959, line: 184, baseType: !1045, offset: 4672)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1046, line: 12, elements: !148)
!1046 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !958, file: !959, line: 192, baseType: !101, size: 64, offset: 4672)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !958, file: !959, line: 203, baseType: !1049, size: 2048, offset: 4736)
!1049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1050, size: 2048, elements: !939)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1051, line: 43, size: 128, elements: !1052)
!1051 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1052 = !{!1053, !1055}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1050, file: !1051, line: 44, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !299, line: 16, baseType: !111)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1050, file: !1051, line: 45, baseType: !1054, size: 64, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !958, file: !959, line: 220, baseType: !532, size: 8, offset: 6784)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !958, file: !959, line: 221, baseType: !494, size: 16, offset: 6800)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !958, file: !959, line: 222, baseType: !494, size: 16, offset: 6816)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !958, file: !959, line: 224, baseType: !352, size: 64, offset: 6848)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !958, file: !959, line: 227, baseType: !120, size: 192, offset: 6912)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !958, file: !959, line: 233, baseType: !120, size: 192, offset: 7104)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !171, file: !172, line: 970, baseType: !1063, size: 64, offset: 9280)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !959, line: 20, size: 16576, elements: !1065)
!1065 = !{!1066, !1067, !1068, !1069}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1064, file: !959, line: 21, baseType: !134)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1064, file: !959, line: 22, baseType: !184, size: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1064, file: !959, line: 23, baseType: !667, size: 128, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1064, file: !959, line: 24, baseType: !1070, size: 16384, offset: 192)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1071, size: 16384, elements: !1091)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !969, line: 49, size: 256, elements: !1072)
!1072 = !{!1073}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1071, file: !969, line: 50, baseType: !1074, size: 256)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !969, line: 35, size: 256, elements: !1075)
!1075 = !{!1076, !1083, !1084, !1090}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1074, file: !969, line: 37, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1078, line: 19, baseType: !1079)
!1078 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1078, line: 18, baseType: !1081)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{null, !83}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1074, file: !969, line: 38, baseType: !111, size: 64, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1074, file: !969, line: 44, baseType: !1085, size: 64, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1078, line: 22, baseType: !1086)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1078, line: 21, baseType: !1088)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1074, file: !969, line: 46, baseType: !973, size: 64, offset: 192)
!1091 = !{!1092}
!1092 = !DISubrange(count: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !171, file: !172, line: 971, baseType: !973, size: 64, offset: 9344)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !171, file: !172, line: 972, baseType: !973, size: 64, offset: 9408)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !171, file: !172, line: 974, baseType: !973, size: 64, offset: 9472)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !171, file: !172, line: 975, baseType: !968, size: 192, offset: 9536)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !171, file: !172, line: 976, baseType: !111, size: 64, offset: 9728)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !171, file: !172, line: 977, baseType: !1099, size: 64, offset: 9792)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !63, line: 55, baseType: !1100)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !299, line: 72, baseType: !1054)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !171, file: !172, line: 978, baseType: !7, size: 32, offset: 9856)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !171, file: !172, line: 980, baseType: !677, size: 64, offset: 9920)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !171, file: !172, line: 989, baseType: !1104, size: 128, offset: 9984)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1105, line: 35, size: 128, elements: !1106)
!1105 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1106 = !{!1107, !1108, !1109}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1104, file: !1105, line: 36, baseType: !83, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1104, file: !1105, line: 37, baseType: !105, size: 32, offset: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1104, file: !1105, line: 38, baseType: !1110, size: 64, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1105, line: 23, flags: DIFlagFwdDecl)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !171, file: !172, line: 992, baseType: !162, size: 64, offset: 10112)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !171, file: !172, line: 993, baseType: !162, size: 64, offset: 10176)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !171, file: !172, line: 996, baseType: !134, offset: 10240)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !171, file: !172, line: 999, baseType: !279, offset: 10240)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !171, file: !172, line: 1001, baseType: !1117, size: 64, offset: 10240)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !172, line: 636, size: 64, elements: !1118)
!1118 = !{!1119}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1117, file: !172, line: 637, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !171, file: !172, line: 1005, baseType: !315, size: 128, offset: 10304)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !171, file: !172, line: 1007, baseType: !170, size: 64, offset: 10432)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !171, file: !172, line: 1009, baseType: !1124, size: 64, offset: 10496)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !172, line: 1009, flags: DIFlagFwdDecl)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !171, file: !172, line: 1043, baseType: !56, size: 64, offset: 10560)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !171, file: !172, line: 1046, baseType: !1128, size: 64, offset: 10624)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !172, line: 41, flags: DIFlagFwdDecl)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !171, file: !172, line: 1050, baseType: !1131, size: 64, offset: 10688)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !172, line: 42, flags: DIFlagFwdDecl)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !171, file: !172, line: 1054, baseType: !1134, size: 64, offset: 10752)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !172, line: 55, flags: DIFlagFwdDecl)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !171, file: !172, line: 1056, baseType: !1137, size: 64, offset: 10816)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !172, line: 40, flags: DIFlagFwdDecl)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !171, file: !172, line: 1058, baseType: !1140, size: 64, offset: 10880)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !172, line: 47, flags: DIFlagFwdDecl)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !171, file: !172, line: 1061, baseType: !1143, size: 64, offset: 10944)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !172, line: 43, flags: DIFlagFwdDecl)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !171, file: !172, line: 1064, baseType: !111, size: 64, offset: 11008)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !171, file: !172, line: 1065, baseType: !1147, size: 64, offset: 11072)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !969, line: 14, baseType: !1149)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !969, line: 12, size: 384, elements: !1150)
!1150 = !{!1151}
!1151 = !DIDerivedType(tag: DW_TAG_member, scope: !1149, file: !969, line: 13, baseType: !1152, size: 384)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1149, file: !969, line: 13, size: 384, elements: !1153)
!1153 = !{!1154, !1155, !1156, !1157}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1152, file: !969, line: 13, baseType: !83, size: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1152, file: !969, line: 13, baseType: !83, size: 32, offset: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1152, file: !969, line: 13, baseType: !83, size: 32, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1152, file: !969, line: 13, baseType: !1158, size: 256, offset: 128)
!1158 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1159, line: 32, size: 256, elements: !1160)
!1159 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1160 = !{!1161, !1166, !1179, !1185, !1195, !1215, !1220}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1158, file: !1159, line: 37, baseType: !1162, size: 64)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1158, file: !1159, line: 34, size: 64, elements: !1163)
!1163 = !{!1164, !1165}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1162, file: !1159, line: 35, baseType: !636, size: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1162, file: !1159, line: 36, baseType: !746, size: 32, offset: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1158, file: !1159, line: 45, baseType: !1167, size: 192)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1158, file: !1159, line: 40, size: 192, elements: !1168)
!1168 = !{!1169, !1171, !1172, !1178}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1167, file: !1159, line: 41, baseType: !1170, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !299, line: 95, baseType: !83)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1167, file: !1159, line: 42, baseType: !83, size: 32, offset: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1167, file: !1159, line: 43, baseType: !1173, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1159, line: 11, baseType: !1174)
!1174 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1159, line: 8, size: 64, elements: !1175)
!1175 = !{!1176, !1177}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1174, file: !1159, line: 9, baseType: !83, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1174, file: !1159, line: 10, baseType: !56, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1167, file: !1159, line: 44, baseType: !83, size: 32, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1158, file: !1159, line: 52, baseType: !1180, size: 128)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1158, file: !1159, line: 48, size: 128, elements: !1181)
!1181 = !{!1182, !1183, !1184}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1180, file: !1159, line: 49, baseType: !636, size: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1180, file: !1159, line: 50, baseType: !746, size: 32, offset: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1180, file: !1159, line: 51, baseType: !1173, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1158, file: !1159, line: 61, baseType: !1186, size: 256)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1158, file: !1159, line: 55, size: 256, elements: !1187)
!1187 = !{!1188, !1189, !1190, !1191, !1194}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1186, file: !1159, line: 56, baseType: !636, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1186, file: !1159, line: 57, baseType: !746, size: 32, offset: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1186, file: !1159, line: 58, baseType: !83, size: 32, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1186, file: !1159, line: 59, baseType: !1192, size: 64, offset: 128)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !299, line: 94, baseType: !1193)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !299, line: 15, baseType: !168)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1186, file: !1159, line: 60, baseType: !1192, size: 64, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1158, file: !1159, line: 95, baseType: !1196, size: 256)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1158, file: !1159, line: 64, size: 256, elements: !1197)
!1197 = !{!1198, !1199}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1196, file: !1159, line: 65, baseType: !56, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !1159, line: 77, baseType: !1200, size: 192, offset: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1196, file: !1159, line: 77, size: 192, elements: !1201)
!1201 = !{!1202, !1203, !1210}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1200, file: !1159, line: 82, baseType: !494, size: 16)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1200, file: !1159, line: 88, baseType: !1204, size: 192)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1200, file: !1159, line: 84, size: 192, elements: !1205)
!1205 = !{!1206, !1208, !1209}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1204, file: !1159, line: 85, baseType: !1207, size: 64)
!1207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !827, size: 64, elements: !293)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1204, file: !1159, line: 86, baseType: !56, size: 64, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1204, file: !1159, line: 87, baseType: !56, size: 64, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1200, file: !1159, line: 93, baseType: !1211, size: 96)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1200, file: !1159, line: 90, size: 96, elements: !1212)
!1212 = !{!1213, !1214}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1211, file: !1159, line: 91, baseType: !1207, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1211, file: !1159, line: 92, baseType: !159, size: 32, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1158, file: !1159, line: 101, baseType: !1216, size: 128)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1158, file: !1159, line: 98, size: 128, elements: !1217)
!1217 = !{!1218, !1219}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1216, file: !1159, line: 99, baseType: !168, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1216, file: !1159, line: 100, baseType: !83, size: 32, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1158, file: !1159, line: 108, baseType: !1221, size: 128)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1158, file: !1159, line: 104, size: 128, elements: !1222)
!1222 = !{!1223, !1224, !1225}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1221, file: !1159, line: 105, baseType: !56, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1221, file: !1159, line: 106, baseType: !83, size: 32, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1221, file: !1159, line: 107, baseType: !7, size: 32, offset: 96)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !171, file: !172, line: 1067, baseType: !1045, offset: 11136)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !171, file: !172, line: 1099, baseType: !1228, size: 64, offset: 11136)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !172, line: 56, flags: DIFlagFwdDecl)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !171, file: !172, line: 1103, baseType: !62, size: 128, offset: 11200)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !171, file: !172, line: 1104, baseType: !1232, size: 64, offset: 11328)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !172, line: 46, flags: DIFlagFwdDecl)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !171, file: !172, line: 1105, baseType: !120, size: 192, offset: 11392)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !171, file: !172, line: 1106, baseType: !7, size: 32, offset: 11584)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !171, file: !172, line: 1109, baseType: !1237, size: 128, offset: 11648)
!1237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1238, size: 128, elements: !768)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !172, line: 51, flags: DIFlagFwdDecl)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !171, file: !172, line: 1110, baseType: !120, size: 192, offset: 11776)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !171, file: !172, line: 1111, baseType: !62, size: 128, offset: 11968)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !171, file: !172, line: 1173, baseType: !1243, size: 64, offset: 12096)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1245, line: 62, size: 256, align: 256, elements: !1246)
!1245 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1246 = !{!1247, !1248, !1249, !1254}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1244, file: !1245, line: 75, baseType: !159, size: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1244, file: !1245, line: 90, baseType: !159, size: 32, offset: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1244, file: !1245, line: 124, baseType: !1250, size: 64, offset: 64)
!1250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1244, file: !1245, line: 109, size: 64, elements: !1251)
!1251 = !{!1252, !1253}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1250, file: !1245, line: 110, baseType: !100, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1250, file: !1245, line: 112, baseType: !100, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1244, file: !1245, line: 144, baseType: !159, size: 32, offset: 128)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !171, file: !172, line: 1174, baseType: !158, size: 32, offset: 12160)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !171, file: !172, line: 1179, baseType: !111, size: 64, offset: 12224)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !171, file: !172, line: 1182, baseType: !1258, size: 128, offset: 12288)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !460, line: 76, size: 128, elements: !1259)
!1259 = !{!1260, !1265, !1266}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1258, file: !460, line: 85, baseType: !1261, size: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1262, line: 7, size: 64, elements: !1263)
!1262 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1263 = !{!1264}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1261, file: !1262, line: 12, baseType: !341, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1258, file: !460, line: 88, baseType: !532, size: 8, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1258, file: !460, line: 95, baseType: !532, size: 8, offset: 72)
!1267 = !DIDerivedType(tag: DW_TAG_member, scope: !171, file: !172, line: 1184, baseType: !1268, size: 128, offset: 12416)
!1268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !171, file: !172, line: 1184, size: 128, elements: !1269)
!1269 = !{!1270, !1271}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1268, file: !172, line: 1185, baseType: !184, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1268, file: !172, line: 1186, baseType: !674, size: 128, align: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !171, file: !172, line: 1190, baseType: !1273, size: 64, offset: 12544)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !172, line: 53, flags: DIFlagFwdDecl)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !171, file: !172, line: 1192, baseType: !1276, size: 128, offset: 12608)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !460, line: 64, size: 128, elements: !1277)
!1277 = !{!1278, !1372, !1373}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1276, file: !460, line: 65, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !354, line: 68, size: 512, align: 128, elements: !1281)
!1281 = !{!1282, !1283, !1364, !1371}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1280, file: !354, line: 69, baseType: !111, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, scope: !1280, file: !354, line: 77, baseType: !1284, size: 320, offset: 64)
!1284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1280, file: !354, line: 77, size: 320, elements: !1285)
!1285 = !{!1286, !1295, !1300, !1329, !1337, !1343, !1356, !1363}
!1286 = !DIDerivedType(tag: DW_TAG_member, scope: !1284, file: !354, line: 78, baseType: !1287, size: 320)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1284, file: !354, line: 78, size: 320, elements: !1288)
!1288 = !{!1289, !1290, !1293, !1294}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1287, file: !354, line: 84, baseType: !62, size: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1287, file: !354, line: 86, baseType: !1291, size: 64, offset: 128)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !354, line: 26, flags: DIFlagFwdDecl)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1287, file: !354, line: 87, baseType: !111, size: 64, offset: 192)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1287, file: !354, line: 94, baseType: !111, size: 64, offset: 256)
!1295 = !DIDerivedType(tag: DW_TAG_member, scope: !1284, file: !354, line: 96, baseType: !1296, size: 64)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1284, file: !354, line: 96, size: 64, elements: !1297)
!1297 = !{!1298}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1296, file: !354, line: 101, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !63, line: 143, baseType: !162)
!1300 = !DIDerivedType(tag: DW_TAG_member, scope: !1284, file: !354, line: 103, baseType: !1301, size: 320)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1284, file: !354, line: 103, size: 320, elements: !1302)
!1302 = !{!1303, !1313, !1317, !1318}
!1303 = !DIDerivedType(tag: DW_TAG_member, scope: !1301, file: !354, line: 104, baseType: !1304, size: 128)
!1304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1301, file: !354, line: 104, size: 128, elements: !1305)
!1305 = !{!1306, !1307}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1304, file: !354, line: 105, baseType: !62, size: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !354, line: 106, baseType: !1308, size: 128)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1304, file: !354, line: 106, size: 128, elements: !1309)
!1309 = !{!1310, !1311, !1312}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1308, file: !354, line: 107, baseType: !1279, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1308, file: !354, line: 109, baseType: !83, size: 32, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1308, file: !354, line: 110, baseType: !83, size: 32, offset: 96)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1301, file: !354, line: 117, baseType: !1314, size: 64, offset: 128)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1316, line: 323, flags: DIFlagFwdDecl)
!1316 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/lizy2001/genbc/linux")
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1301, file: !354, line: 119, baseType: !56, size: 64, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, scope: !1301, file: !354, line: 120, baseType: !1319, size: 64, offset: 256)
!1319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1301, file: !354, line: 120, size: 64, elements: !1320)
!1320 = !{!1321, !1322, !1323}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1319, file: !354, line: 121, baseType: !56, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1319, file: !354, line: 122, baseType: !111, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, scope: !1319, file: !354, line: 123, baseType: !1324, size: 32)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1319, file: !354, line: 123, size: 32, elements: !1325)
!1325 = !{!1326, !1327, !1328}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1324, file: !354, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1324, file: !354, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1324, file: !354, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1329 = !DIDerivedType(tag: DW_TAG_member, scope: !1284, file: !354, line: 130, baseType: !1330, size: 192)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1284, file: !354, line: 130, size: 192, elements: !1331)
!1331 = !{!1332, !1333, !1334, !1335, !1336}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1330, file: !354, line: 131, baseType: !111, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1330, file: !354, line: 134, baseType: !73, size: 8, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1330, file: !354, line: 135, baseType: !73, size: 8, offset: 72)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1330, file: !354, line: 136, baseType: !105, size: 32, offset: 96)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1330, file: !354, line: 137, baseType: !7, size: 32, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, scope: !1284, file: !354, line: 139, baseType: !1338, size: 256)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1284, file: !354, line: 139, size: 256, elements: !1339)
!1339 = !{!1340, !1341, !1342}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1338, file: !354, line: 140, baseType: !111, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1338, file: !354, line: 141, baseType: !105, size: 32, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1338, file: !354, line: 143, baseType: !62, size: 128, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, scope: !1284, file: !354, line: 145, baseType: !1344, size: 256)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1284, file: !354, line: 145, size: 256, elements: !1345)
!1345 = !{!1346, !1347, !1349, !1350, !1355}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1344, file: !354, line: 146, baseType: !111, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1344, file: !354, line: 147, baseType: !1348, size: 64, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !372, line: 509, baseType: !1279)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1344, file: !354, line: 148, baseType: !111, size: 64, offset: 128)
!1350 = !DIDerivedType(tag: DW_TAG_member, scope: !1344, file: !354, line: 149, baseType: !1351, size: 64, offset: 192)
!1351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1344, file: !354, line: 149, size: 64, elements: !1352)
!1352 = !{!1353, !1354}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1351, file: !354, line: 150, baseType: !352, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1351, file: !354, line: 151, baseType: !105, size: 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1344, file: !354, line: 156, baseType: !134, offset: 256)
!1356 = !DIDerivedType(tag: DW_TAG_member, scope: !1284, file: !354, line: 159, baseType: !1357, size: 128)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1284, file: !354, line: 159, size: 128, elements: !1358)
!1358 = !{!1359, !1362}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1357, file: !354, line: 161, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !354, line: 161, flags: DIFlagFwdDecl)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1357, file: !354, line: 162, baseType: !56, size: 64, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1284, file: !354, line: 176, baseType: !674, size: 128, align: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, scope: !1280, file: !354, line: 179, baseType: !1365, size: 32, offset: 384)
!1365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1280, file: !354, line: 179, size: 32, elements: !1366)
!1366 = !{!1367, !1368, !1369, !1370}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1365, file: !354, line: 184, baseType: !105, size: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1365, file: !354, line: 192, baseType: !7, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1365, file: !354, line: 194, baseType: !7, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1365, file: !354, line: 195, baseType: !83, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1280, file: !354, line: 199, baseType: !105, size: 32, offset: 416)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1276, file: !460, line: 67, baseType: !159, size: 32, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1276, file: !460, line: 68, baseType: !159, size: 32, offset: 96)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !171, file: !172, line: 1206, baseType: !83, size: 32, offset: 12736)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !171, file: !172, line: 1207, baseType: !83, size: 32, offset: 12768)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !171, file: !172, line: 1209, baseType: !111, size: 64, offset: 12800)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !171, file: !172, line: 1219, baseType: !162, size: 64, offset: 12864)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !171, file: !172, line: 1220, baseType: !162, size: 64, offset: 12928)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !171, file: !172, line: 1317, baseType: !83, size: 32, offset: 12992)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !171, file: !172, line: 1319, baseType: !170, size: 64, offset: 13056)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !171, file: !172, line: 1322, baseType: !1382, size: 64, offset: 13120)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !172, line: 1322, flags: DIFlagFwdDecl)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !171, file: !172, line: 1326, baseType: !184, size: 32, offset: 13184)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !171, file: !172, line: 1342, baseType: !56, size: 64, offset: 13248)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !171, file: !172, line: 1343, baseType: !100, size: 64, offset: 13312)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !171, file: !172, line: 1344, baseType: !162, size: 64, offset: 13376)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !171, file: !172, line: 1345, baseType: !100, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !171, file: !172, line: 1346, baseType: !100, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !171, file: !172, line: 1347, baseType: !100, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !171, file: !172, line: 1348, baseType: !674, size: 128, align: 64, offset: 13504)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !171, file: !172, line: 1358, baseType: !1393, size: 34816, offset: 13824)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1394, line: 485, size: 34816, elements: !1395)
!1394 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1395 = !{!1396, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1425, !1426, !1427, !1428, !1429, !1430, !1433, !1434, !1435}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1393, file: !1394, line: 487, baseType: !1397, size: 192)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1398, size: 192, elements: !724)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1399, line: 16, size: 64, elements: !1400)
!1399 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1400 = !{!1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1398, file: !1399, line: 17, baseType: !489, size: 16)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1398, file: !1399, line: 18, baseType: !489, size: 16, offset: 16)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1398, file: !1399, line: 19, baseType: !489, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1398, file: !1399, line: 19, baseType: !489, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1398, file: !1399, line: 19, baseType: !489, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1398, file: !1399, line: 19, baseType: !489, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1398, file: !1399, line: 19, baseType: !489, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1398, file: !1399, line: 20, baseType: !489, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1398, file: !1399, line: 20, baseType: !489, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1398, file: !1399, line: 20, baseType: !489, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1398, file: !1399, line: 20, baseType: !489, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1398, file: !1399, line: 20, baseType: !489, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1398, file: !1399, line: 20, baseType: !489, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1393, file: !1394, line: 491, baseType: !111, size: 64, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1393, file: !1394, line: 495, baseType: !233, size: 16, offset: 256)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1393, file: !1394, line: 496, baseType: !233, size: 16, offset: 272)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1393, file: !1394, line: 497, baseType: !233, size: 16, offset: 288)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1393, file: !1394, line: 498, baseType: !233, size: 16, offset: 304)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1393, file: !1394, line: 502, baseType: !111, size: 64, offset: 320)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1393, file: !1394, line: 503, baseType: !111, size: 64, offset: 384)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1393, file: !1394, line: 514, baseType: !1422, size: 256, offset: 448)
!1422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1423, size: 256, elements: !464)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1394, line: 483, flags: DIFlagFwdDecl)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1393, file: !1394, line: 516, baseType: !111, size: 64, offset: 704)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1393, file: !1394, line: 518, baseType: !111, size: 64, offset: 768)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1393, file: !1394, line: 520, baseType: !111, size: 64, offset: 832)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1393, file: !1394, line: 521, baseType: !111, size: 64, offset: 896)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1393, file: !1394, line: 522, baseType: !111, size: 64, offset: 960)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1393, file: !1394, line: 528, baseType: !1431, size: 64, offset: 1024)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1394, line: 10, flags: DIFlagFwdDecl)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1393, file: !1394, line: 535, baseType: !111, size: 64, offset: 1088)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1393, file: !1394, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1393, file: !1394, line: 540, baseType: !1436, size: 33280, offset: 1536)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1437, line: 317, size: 33280, elements: !1438)
!1437 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1438 = !{!1439, !1440, !1441}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1436, file: !1437, line: 330, baseType: !7, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1436, file: !1437, line: 337, baseType: !111, size: 64, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1436, file: !1437, line: 348, baseType: !1442, size: 32768, offset: 512)
!1442 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1437, line: 304, size: 32768, elements: !1443)
!1443 = !{!1444, !1459, !1496, !1546, !1559}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1442, file: !1437, line: 305, baseType: !1445, size: 896)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1437, line: 12, size: 896, elements: !1446)
!1446 = !{!1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1458}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1445, file: !1437, line: 13, baseType: !158, size: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1445, file: !1437, line: 14, baseType: !158, size: 32, offset: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1445, file: !1437, line: 15, baseType: !158, size: 32, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1445, file: !1437, line: 16, baseType: !158, size: 32, offset: 96)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1445, file: !1437, line: 17, baseType: !158, size: 32, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1445, file: !1437, line: 18, baseType: !158, size: 32, offset: 160)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1445, file: !1437, line: 19, baseType: !158, size: 32, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1445, file: !1437, line: 22, baseType: !1455, size: 640, offset: 224)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 640, elements: !1456)
!1456 = !{!1457}
!1457 = !DISubrange(count: 20)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1445, file: !1437, line: 25, baseType: !158, size: 32, offset: 864)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1442, file: !1437, line: 306, baseType: !1460, size: 4096, align: 128)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1437, line: 34, size: 4096, align: 128, elements: !1461)
!1461 = !{!1462, !1463, !1464, !1465, !1466, !1481, !1482, !1483, !1485, !1487, !1491}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1460, file: !1437, line: 35, baseType: !489, size: 16)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1460, file: !1437, line: 36, baseType: !489, size: 16, offset: 16)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1460, file: !1437, line: 37, baseType: !489, size: 16, offset: 32)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1460, file: !1437, line: 38, baseType: !489, size: 16, offset: 48)
!1466 = !DIDerivedType(tag: DW_TAG_member, scope: !1460, file: !1437, line: 39, baseType: !1467, size: 128, offset: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1460, file: !1437, line: 39, size: 128, elements: !1468)
!1468 = !{!1469, !1474}
!1469 = !DIDerivedType(tag: DW_TAG_member, scope: !1467, file: !1437, line: 40, baseType: !1470, size: 128)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1467, file: !1437, line: 40, size: 128, elements: !1471)
!1471 = !{!1472, !1473}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1470, file: !1437, line: 41, baseType: !162, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1470, file: !1437, line: 42, baseType: !162, size: 64, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, scope: !1467, file: !1437, line: 44, baseType: !1475, size: 128)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1467, file: !1437, line: 44, size: 128, elements: !1476)
!1476 = !{!1477, !1478, !1479, !1480}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1475, file: !1437, line: 45, baseType: !158, size: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1475, file: !1437, line: 46, baseType: !158, size: 32, offset: 32)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1475, file: !1437, line: 47, baseType: !158, size: 32, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1475, file: !1437, line: 48, baseType: !158, size: 32, offset: 96)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1460, file: !1437, line: 51, baseType: !158, size: 32, offset: 192)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1460, file: !1437, line: 52, baseType: !158, size: 32, offset: 224)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1460, file: !1437, line: 55, baseType: !1484, size: 1024, offset: 256)
!1484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 1024, elements: !93)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1460, file: !1437, line: 58, baseType: !1486, size: 2048, offset: 1280)
!1486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 2048, elements: !1091)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1460, file: !1437, line: 60, baseType: !1488, size: 384, offset: 3328)
!1488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 384, elements: !1489)
!1489 = !{!1490}
!1490 = !DISubrange(count: 12)
!1491 = !DIDerivedType(tag: DW_TAG_member, scope: !1460, file: !1437, line: 62, baseType: !1492, size: 384, offset: 3712)
!1492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1460, file: !1437, line: 62, size: 384, elements: !1493)
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1492, file: !1437, line: 63, baseType: !1488, size: 384)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1492, file: !1437, line: 64, baseType: !1488, size: 384)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1442, file: !1437, line: 307, baseType: !1497, size: 1088)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1437, line: 79, size: 1088, elements: !1498)
!1498 = !{!1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1545}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1497, file: !1437, line: 80, baseType: !158, size: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1497, file: !1437, line: 81, baseType: !158, size: 32, offset: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1497, file: !1437, line: 82, baseType: !158, size: 32, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1497, file: !1437, line: 83, baseType: !158, size: 32, offset: 96)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1497, file: !1437, line: 84, baseType: !158, size: 32, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1497, file: !1437, line: 85, baseType: !158, size: 32, offset: 160)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1497, file: !1437, line: 86, baseType: !158, size: 32, offset: 192)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1497, file: !1437, line: 88, baseType: !1455, size: 640, offset: 224)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1497, file: !1437, line: 89, baseType: !69, size: 8, offset: 864)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1497, file: !1437, line: 90, baseType: !69, size: 8, offset: 872)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1497, file: !1437, line: 91, baseType: !69, size: 8, offset: 880)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1497, file: !1437, line: 92, baseType: !69, size: 8, offset: 888)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1497, file: !1437, line: 93, baseType: !69, size: 8, offset: 896)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1497, file: !1437, line: 94, baseType: !69, size: 8, offset: 904)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1497, file: !1437, line: 95, baseType: !1514, size: 64, offset: 960)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1516, line: 11, size: 128, elements: !1517)
!1516 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1515, file: !1516, line: 12, baseType: !168, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1515, file: !1516, line: 13, baseType: !1520, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1522, line: 56, size: 1344, elements: !1523)
!1522 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1523 = !{!1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1521, file: !1522, line: 61, baseType: !111, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1521, file: !1522, line: 62, baseType: !111, size: 64, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1521, file: !1522, line: 63, baseType: !111, size: 64, offset: 128)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1521, file: !1522, line: 64, baseType: !111, size: 64, offset: 192)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1521, file: !1522, line: 65, baseType: !111, size: 64, offset: 256)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1521, file: !1522, line: 66, baseType: !111, size: 64, offset: 320)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1521, file: !1522, line: 68, baseType: !111, size: 64, offset: 384)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1521, file: !1522, line: 69, baseType: !111, size: 64, offset: 448)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1521, file: !1522, line: 70, baseType: !111, size: 64, offset: 512)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1521, file: !1522, line: 71, baseType: !111, size: 64, offset: 576)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1521, file: !1522, line: 72, baseType: !111, size: 64, offset: 640)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1521, file: !1522, line: 73, baseType: !111, size: 64, offset: 704)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1521, file: !1522, line: 74, baseType: !111, size: 64, offset: 768)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1521, file: !1522, line: 75, baseType: !111, size: 64, offset: 832)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1521, file: !1522, line: 76, baseType: !111, size: 64, offset: 896)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1521, file: !1522, line: 81, baseType: !111, size: 64, offset: 960)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1521, file: !1522, line: 83, baseType: !111, size: 64, offset: 1024)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1521, file: !1522, line: 84, baseType: !111, size: 64, offset: 1088)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1521, file: !1522, line: 85, baseType: !111, size: 64, offset: 1152)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1521, file: !1522, line: 86, baseType: !111, size: 64, offset: 1216)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1521, file: !1522, line: 87, baseType: !111, size: 64, offset: 1280)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1497, file: !1437, line: 96, baseType: !158, size: 32, offset: 1024)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1442, file: !1437, line: 308, baseType: !1547, size: 4608, align: 512)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1437, line: 289, size: 4608, align: 512, elements: !1548)
!1548 = !{!1549, !1550, !1557}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1547, file: !1437, line: 290, baseType: !1460, size: 4096, align: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1547, file: !1437, line: 291, baseType: !1551, size: 512, offset: 4096)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1437, line: 268, size: 512, elements: !1552)
!1552 = !{!1553, !1554, !1555}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1551, file: !1437, line: 269, baseType: !162, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1551, file: !1437, line: 270, baseType: !162, size: 64, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1551, file: !1437, line: 271, baseType: !1556, size: 384, offset: 128)
!1556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 384, elements: !828)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1547, file: !1437, line: 292, baseType: !1558, offset: 4608)
!1558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, elements: !927)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1442, file: !1437, line: 309, baseType: !1560, size: 32768)
!1560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 32768, elements: !1561)
!1561 = !{!1562}
!1562 = !DISubrange(count: 4096)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !114, file: !59, line: 232, baseType: !120, size: 192, offset: 1536)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mutex", scope: !114, file: !59, line: 233, baseType: !120, size: 192, offset: 1728)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !114, file: !59, line: 235, baseType: !1566, size: 64, offset: 1920)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !45, line: 95, size: 1152, elements: !1568)
!1568 = !{!1569, !1570, !2211, !2212, !2213, !2214, !2215, !2219, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1567, file: !45, line: 96, baseType: !842, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1567, file: !45, line: 97, baseType: !1571, size: 64, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1573, line: 82, size: 1408, elements: !1574)
!1573 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1574 = !{!1575, !1576, !1577, !2180, !2181, !2182, !2183, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2198, !2199, !2200, !2201, !2202, !2206, !2207, !2210}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1572, file: !1573, line: 83, baseType: !842, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1572, file: !1573, line: 84, baseType: !842, size: 64, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1572, file: !1573, line: 85, baseType: !1578, size: 64, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !24, line: 461, size: 5568, elements: !1580)
!1580 = !{!1581, !1903, !1904, !1907, !1908, !1959, !1960, !1961, !1962, !1963, !1964, !1973, !2082, !2095, !2098, !2099, !2103, !2105, !2106, !2107, !2111, !2117, !2118, !2121, !2125, !2128, !2131, !2132, !2133, !2134, !2168, !2169, !2170, !2173, !2176, !2177, !2178, !2179}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1579, file: !24, line: 462, baseType: !1582, size: 512)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1583, line: 64, size: 512, elements: !1584)
!1583 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!1584 = !{!1585, !1586, !1587, !1589, !1629, !1739, !1893, !1898, !1899, !1900, !1901, !1902}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1582, file: !1583, line: 65, baseType: !842, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1582, file: !1583, line: 66, baseType: !62, size: 128, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1582, file: !1583, line: 67, baseType: !1588, size: 64, offset: 192)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1582, file: !1583, line: 68, baseType: !1590, size: 64, offset: 256)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1583, line: 192, size: 704, elements: !1592)
!1592 = !{!1593, !1594, !1595, !1596}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1591, file: !1583, line: 193, baseType: !62, size: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1591, file: !1583, line: 194, baseType: !134, offset: 128)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1591, file: !1583, line: 195, baseType: !1582, size: 512, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1591, file: !1583, line: 196, baseType: !1597, size: 64, offset: 640)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1599)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1583, line: 156, size: 192, elements: !1600)
!1600 = !{!1601, !1606, !1611}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1599, file: !1583, line: 157, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1603)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!83, !1590, !1588}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1599, file: !1583, line: 158, baseType: !1607, size: 64, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1608)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!842, !1590, !1588}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1599, file: !1583, line: 159, baseType: !1612, size: 64, offset: 128)
!1612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1613)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!83, !1590, !1588, !1616}
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1583, line: 148, size: 20736, elements: !1618)
!1618 = !{!1619, !1621, !1623, !1624, !1628}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1617, file: !1583, line: 149, baseType: !1620, size: 192)
!1620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !852, size: 192, elements: !724)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1617, file: !1583, line: 150, baseType: !1622, size: 4096, offset: 192)
!1622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !852, size: 4096, elements: !1091)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1617, file: !1583, line: 151, baseType: !83, size: 32, offset: 4288)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1617, file: !1583, line: 152, baseType: !1625, size: 16384, offset: 4320)
!1625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !827, size: 16384, elements: !1626)
!1626 = !{!1627}
!1627 = !DISubrange(count: 2048)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1617, file: !1583, line: 153, baseType: !83, size: 32, offset: 20704)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1582, file: !1583, line: 69, baseType: !1630, size: 64, offset: 320)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1583, line: 138, size: 448, elements: !1632)
!1632 = !{!1633, !1637, !1659, !1661, !1696, !1729, !1733}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1631, file: !1583, line: 139, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{null, !1588}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1631, file: !1583, line: 140, baseType: !1638, size: 64, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1640)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1641, line: 230, size: 128, elements: !1642)
!1641 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!1642 = !{!1643, !1655}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1640, file: !1641, line: 231, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!1647, !1588, !1649, !852}
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !63, line: 60, baseType: !1648)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !299, line: 73, baseType: !1193)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1641, line: 30, size: 128, elements: !1651)
!1651 = !{!1652, !1653}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1650, file: !1641, line: 31, baseType: !842, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1650, file: !1641, line: 32, baseType: !1654, size: 16, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !63, line: 19, baseType: !233)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1640, file: !1641, line: 232, baseType: !1656, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!1647, !1588, !1649, !842, !1099}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !1631, file: !1583, line: 141, baseType: !1660, size: 64, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1631, file: !1583, line: 142, baseType: !1662, size: 64, offset: 192)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1665)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1641, line: 84, size: 320, elements: !1666)
!1666 = !{!1667, !1668, !1672, !1693, !1694}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1665, file: !1641, line: 85, baseType: !842, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1665, file: !1641, line: 86, baseType: !1669, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!1654, !1588, !1649, !83}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1665, file: !1641, line: 88, baseType: !1673, size: 64, offset: 128)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!1654, !1588, !1676, !83}
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1641, line: 168, size: 448, elements: !1678)
!1678 = !{!1679, !1680, !1681, !1682, !1688, !1689}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1677, file: !1641, line: 169, baseType: !1650, size: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1677, file: !1641, line: 170, baseType: !1099, size: 64, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1677, file: !1641, line: 171, baseType: !56, size: 64, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1677, file: !1641, line: 172, baseType: !1683, size: 64, offset: 256)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!1647, !394, !1588, !1676, !852, !1686, !1099}
!1686 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !63, line: 46, baseType: !1687)
!1687 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !299, line: 88, baseType: !132)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1677, file: !1641, line: 174, baseType: !1683, size: 64, offset: 320)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1677, file: !1641, line: 176, baseType: !1690, size: 64, offset: 384)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!83, !394, !1588, !1676, !360}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1665, file: !1641, line: 90, baseType: !1660, size: 64, offset: 192)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1665, file: !1641, line: 91, baseType: !1695, size: 64, offset: 256)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1631, file: !1583, line: 143, baseType: !1697, size: 64, offset: 256)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!1700, !1588}
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1702)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1703)
!1703 = !{!1704, !1705, !1709, !1713, !1721, !1725}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1702, file: !18, line: 40, baseType: !17, size: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1702, file: !18, line: 41, baseType: !1706, size: 64, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!532}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1702, file: !18, line: 42, baseType: !1710, size: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!56}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1702, file: !18, line: 43, baseType: !1714, size: 64, offset: 192)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!1717, !1719}
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1702, file: !18, line: 44, baseType: !1722, size: 64, offset: 256)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!1717}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1702, file: !18, line: 45, baseType: !1726, size: 64, offset: 320)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{null, !56}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1631, file: !1583, line: 144, baseType: !1730, size: 64, offset: 320)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!1717, !1588}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1631, file: !1583, line: 145, baseType: !1734, size: 64, offset: 384)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{null, !1588, !1737, !1738}
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1582, file: !1583, line: 70, baseType: !1740, size: 64, offset: 384)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1742, line: 123, size: 1024, elements: !1743)
!1742 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1743 = !{!1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1886, !1887, !1888, !1889, !1890}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1741, file: !1742, line: 124, baseType: !105, size: 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1741, file: !1742, line: 125, baseType: !105, size: 32, offset: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1741, file: !1742, line: 135, baseType: !1740, size: 64, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1741, file: !1742, line: 136, baseType: !842, size: 64, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1741, file: !1742, line: 138, baseType: !209, size: 192, align: 64, offset: 192)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1741, file: !1742, line: 140, baseType: !1717, size: 64, offset: 384)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1741, file: !1742, line: 141, baseType: !7, size: 32, offset: 448)
!1751 = !DIDerivedType(tag: DW_TAG_member, scope: !1741, file: !1742, line: 142, baseType: !1752, size: 256, offset: 512)
!1752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1741, file: !1742, line: 142, size: 256, elements: !1753)
!1753 = !{!1754, !1809, !1813}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1752, file: !1742, line: 143, baseType: !1755, size: 192)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1742, line: 91, size: 192, elements: !1756)
!1756 = !{!1757, !1758, !1759}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1755, file: !1742, line: 92, baseType: !111, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1755, file: !1742, line: 94, baseType: !318, size: 64, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1755, file: !1742, line: 100, baseType: !1760, size: 64, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1742, line: 180, size: 704, elements: !1762)
!1762 = !{!1763, !1764, !1765, !1779, !1780, !1781, !1807, !1808}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1761, file: !1742, line: 182, baseType: !1740, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1761, file: !1742, line: 183, baseType: !7, size: 32, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1761, file: !1742, line: 186, baseType: !1766, size: 192, offset: 128)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1767, line: 19, size: 192, elements: !1768)
!1767 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1768 = !{!1769, !1777, !1778}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1766, file: !1767, line: 20, baseType: !1770, size: 128)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1771, line: 292, size: 128, elements: !1772)
!1771 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1772 = !{!1773, !1774, !1776}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1770, file: !1771, line: 293, baseType: !134)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1770, file: !1771, line: 295, baseType: !1775, size: 32)
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !63, line: 148, baseType: !7)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1770, file: !1771, line: 296, baseType: !56, size: 64, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1766, file: !1767, line: 21, baseType: !7, size: 32, offset: 128)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1766, file: !1767, line: 22, baseType: !7, size: 32, offset: 160)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1761, file: !1742, line: 187, baseType: !158, size: 32, offset: 320)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1761, file: !1742, line: 188, baseType: !158, size: 32, offset: 352)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1761, file: !1742, line: 189, baseType: !1782, size: 64, offset: 384)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1742, line: 168, size: 320, elements: !1784)
!1784 = !{!1785, !1791, !1795, !1799, !1803}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1783, file: !1742, line: 169, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!83, !1789, !1760}
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !372, line: 539, flags: DIFlagFwdDecl)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1783, file: !1742, line: 171, baseType: !1792, size: 64, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!83, !1740, !842, !1654}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1783, file: !1742, line: 173, baseType: !1796, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!83, !1740}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1783, file: !1742, line: 174, baseType: !1800, size: 64, offset: 192)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!83, !1740, !1740, !842}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1783, file: !1742, line: 176, baseType: !1804, size: 64, offset: 256)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!83, !1789, !1740, !1760}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1761, file: !1742, line: 192, baseType: !62, size: 128, offset: 448)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1761, file: !1742, line: 194, baseType: !667, size: 128, offset: 576)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1752, file: !1742, line: 144, baseType: !1810, size: 64)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1742, line: 103, size: 64, elements: !1811)
!1811 = !{!1812}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1810, file: !1742, line: 104, baseType: !1740, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1752, file: !1742, line: 145, baseType: !1814, size: 256)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1742, line: 107, size: 256, elements: !1815)
!1815 = !{!1816, !1881, !1884, !1885}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1814, file: !1742, line: 108, baseType: !1817, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1819)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1742, line: 217, size: 768, elements: !1820)
!1820 = !{!1821, !1841, !1845, !1849, !1854, !1858, !1862, !1866, !1867, !1868, !1869, !1877}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1819, file: !1742, line: 222, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!83, !1825}
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1742, line: 197, size: 1088, elements: !1827)
!1827 = !{!1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1826, file: !1742, line: 199, baseType: !1740, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1826, file: !1742, line: 200, baseType: !394, size: 64, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1826, file: !1742, line: 201, baseType: !1789, size: 64, offset: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1826, file: !1742, line: 202, baseType: !56, size: 64, offset: 192)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1826, file: !1742, line: 205, baseType: !120, size: 192, offset: 256)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1826, file: !1742, line: 206, baseType: !120, size: 192, offset: 448)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1826, file: !1742, line: 207, baseType: !83, size: 32, offset: 640)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1826, file: !1742, line: 208, baseType: !62, size: 128, offset: 704)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1826, file: !1742, line: 209, baseType: !852, size: 64, offset: 832)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1826, file: !1742, line: 211, baseType: !1099, size: 64, offset: 896)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1826, file: !1742, line: 212, baseType: !532, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1826, file: !1742, line: 213, baseType: !532, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1826, file: !1742, line: 214, baseType: !389, size: 64, offset: 1024)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1819, file: !1742, line: 223, baseType: !1842, size: 64, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{null, !1825}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1819, file: !1742, line: 236, baseType: !1846, size: 64, offset: 128)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!83, !1789, !56}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1819, file: !1742, line: 238, baseType: !1850, size: 64, offset: 192)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!56, !1789, !1853}
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1819, file: !1742, line: 239, baseType: !1855, size: 64, offset: 256)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!56, !1789, !56, !1853}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1819, file: !1742, line: 240, baseType: !1859, size: 64, offset: 320)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{null, !1789, !56}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1819, file: !1742, line: 242, baseType: !1863, size: 64, offset: 384)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!1647, !1825, !852, !1099, !1686}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1819, file: !1742, line: 252, baseType: !1099, size: 64, offset: 448)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1819, file: !1742, line: 259, baseType: !532, size: 8, offset: 512)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1819, file: !1742, line: 260, baseType: !1863, size: 64, offset: 576)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1819, file: !1742, line: 263, baseType: !1870, size: 64, offset: 640)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!1873, !1825, !1875}
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1874, line: 52, baseType: !7)
!1874 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1742, line: 27, flags: DIFlagFwdDecl)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1819, file: !1742, line: 266, baseType: !1878, size: 64, offset: 704)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!83, !1825, !360}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1814, file: !1742, line: 109, baseType: !1882, size: 64, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1742, line: 31, flags: DIFlagFwdDecl)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1814, file: !1742, line: 110, baseType: !1686, size: 64, offset: 128)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1814, file: !1742, line: 111, baseType: !1740, size: 64, offset: 192)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1741, file: !1742, line: 148, baseType: !56, size: 64, offset: 768)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1741, file: !1742, line: 154, baseType: !162, size: 64, offset: 832)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1741, file: !1742, line: 156, baseType: !233, size: 16, offset: 896)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1741, file: !1742, line: 157, baseType: !1654, size: 16, offset: 912)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1741, file: !1742, line: 158, baseType: !1891, size: 64, offset: 960)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1742, line: 32, flags: DIFlagFwdDecl)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1582, file: !1583, line: 71, baseType: !1894, size: 32, offset: 448)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1895, line: 19, size: 32, elements: !1896)
!1895 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1896 = !{!1897}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1894, file: !1895, line: 20, baseType: !184, size: 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1582, file: !1583, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1582, file: !1583, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1582, file: !1583, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1582, file: !1583, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1582, file: !1583, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1579, file: !24, line: 463, baseType: !1578, size: 64, offset: 512)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1579, file: !24, line: 465, baseType: !1905, size: 64, offset: 576)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !24, line: 36, flags: DIFlagFwdDecl)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1579, file: !24, line: 467, baseType: !842, size: 64, offset: 640)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1579, file: !24, line: 468, baseType: !1909, size: 64, offset: 704)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1911)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !24, line: 87, size: 384, elements: !1912)
!1912 = !{!1913, !1914, !1915, !1919, !1924, !1928}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1911, file: !24, line: 88, baseType: !842, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1911, file: !24, line: 89, baseType: !1662, size: 64, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1911, file: !24, line: 90, baseType: !1916, size: 64, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!83, !1578, !1616}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1911, file: !24, line: 91, baseType: !1920, size: 64, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!852, !1578, !1923, !1737, !1738}
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1911, file: !24, line: 93, baseType: !1925, size: 64, offset: 256)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{null, !1578}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1911, file: !24, line: 95, baseType: !1929, size: 64, offset: 320)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1931)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !31, line: 278, size: 1472, elements: !1932)
!1932 = !{!1933, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1931, file: !31, line: 279, baseType: !1934, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!83, !1578}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1931, file: !31, line: 280, baseType: !1925, size: 64, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1931, file: !31, line: 281, baseType: !1934, size: 64, offset: 128)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1931, file: !31, line: 282, baseType: !1934, size: 64, offset: 192)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1931, file: !31, line: 283, baseType: !1934, size: 64, offset: 256)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1931, file: !31, line: 284, baseType: !1934, size: 64, offset: 320)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1931, file: !31, line: 285, baseType: !1934, size: 64, offset: 384)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1931, file: !31, line: 286, baseType: !1934, size: 64, offset: 448)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1931, file: !31, line: 287, baseType: !1934, size: 64, offset: 512)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1931, file: !31, line: 288, baseType: !1934, size: 64, offset: 576)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1931, file: !31, line: 289, baseType: !1934, size: 64, offset: 640)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1931, file: !31, line: 290, baseType: !1934, size: 64, offset: 704)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1931, file: !31, line: 291, baseType: !1934, size: 64, offset: 768)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1931, file: !31, line: 292, baseType: !1934, size: 64, offset: 832)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1931, file: !31, line: 293, baseType: !1934, size: 64, offset: 896)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1931, file: !31, line: 294, baseType: !1934, size: 64, offset: 960)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1931, file: !31, line: 295, baseType: !1934, size: 64, offset: 1024)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1931, file: !31, line: 296, baseType: !1934, size: 64, offset: 1088)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1931, file: !31, line: 297, baseType: !1934, size: 64, offset: 1152)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1931, file: !31, line: 298, baseType: !1934, size: 64, offset: 1216)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1931, file: !31, line: 299, baseType: !1934, size: 64, offset: 1280)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1931, file: !31, line: 300, baseType: !1934, size: 64, offset: 1344)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1931, file: !31, line: 301, baseType: !1934, size: 64, offset: 1408)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1579, file: !24, line: 470, baseType: !1571, size: 64, offset: 768)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1579, file: !24, line: 471, baseType: !1566, size: 64, offset: 832)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1579, file: !24, line: 473, baseType: !56, size: 64, offset: 896)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1579, file: !24, line: 475, baseType: !56, size: 64, offset: 960)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1579, file: !24, line: 480, baseType: !120, size: 192, offset: 1024)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1579, file: !24, line: 484, baseType: !1965, size: 576, offset: 1216)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !24, line: 361, size: 576, elements: !1966)
!1966 = !{!1967, !1968, !1969, !1970, !1971, !1972}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1965, file: !24, line: 362, baseType: !62, size: 128)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1965, file: !24, line: 363, baseType: !62, size: 128, offset: 128)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1965, file: !24, line: 364, baseType: !62, size: 128, offset: 256)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1965, file: !24, line: 365, baseType: !62, size: 128, offset: 384)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1965, file: !24, line: 366, baseType: !532, size: 8, offset: 512)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1965, file: !24, line: 367, baseType: !23, size: 32, offset: 544)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1579, file: !24, line: 485, baseType: !1974, size: 2304, offset: 1792)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !31, line: 565, size: 2304, elements: !1975)
!1975 = !{!1976, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2075, !2079}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1974, file: !31, line: 566, baseType: !1977, size: 32)
!1977 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !31, line: 52, baseType: !1978)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !31, line: 50, size: 32, elements: !1979)
!1979 = !{!1980}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1978, file: !31, line: 51, baseType: !83, size: 32)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1974, file: !31, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1974, file: !31, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1974, file: !31, line: 569, baseType: !532, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1974, file: !31, line: 570, baseType: !532, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1974, file: !31, line: 571, baseType: !532, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1974, file: !31, line: 572, baseType: !532, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1974, file: !31, line: 573, baseType: !532, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1974, file: !31, line: 574, baseType: !532, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1974, file: !31, line: 575, baseType: !532, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1974, file: !31, line: 576, baseType: !532, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1974, file: !31, line: 577, baseType: !158, size: 32, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1974, file: !31, line: 578, baseType: !134, offset: 96)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1974, file: !31, line: 580, baseType: !62, size: 128, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1974, file: !31, line: 581, baseType: !508, size: 192, offset: 256)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1974, file: !31, line: 582, baseType: !1996, size: 64, offset: 448)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1998, line: 43, size: 1472, elements: !1999)
!1998 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1999 = !{!2000, !2001, !2002, !2003, !2004, !2007, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1997, file: !1998, line: 44, baseType: !842, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1997, file: !1998, line: 45, baseType: !83, size: 32, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1997, file: !1998, line: 46, baseType: !62, size: 128, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1997, file: !1998, line: 47, baseType: !134, offset: 256)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1997, file: !1998, line: 48, baseType: !2005, size: 64, offset: 256)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !31, line: 533, flags: DIFlagFwdDecl)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1997, file: !1998, line: 49, baseType: !2008, size: 320, offset: 320)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2009, line: 11, size: 320, elements: !2010)
!2009 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!2010 = !{!2011, !2012, !2013, !2018}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2008, file: !2009, line: 16, baseType: !660, size: 128)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2008, file: !2009, line: 17, baseType: !111, size: 64, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2008, file: !2009, line: 18, baseType: !2014, size: 64, offset: 192)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{null, !2017}
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2008, file: !2009, line: 19, baseType: !158, size: 32, offset: 256)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1997, file: !1998, line: 50, baseType: !111, size: 64, offset: 640)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1997, file: !1998, line: 51, baseType: !262, size: 64, offset: 704)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1997, file: !1998, line: 52, baseType: !262, size: 64, offset: 768)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1997, file: !1998, line: 53, baseType: !262, size: 64, offset: 832)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1997, file: !1998, line: 54, baseType: !262, size: 64, offset: 896)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1997, file: !1998, line: 55, baseType: !262, size: 64, offset: 960)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1997, file: !1998, line: 56, baseType: !111, size: 64, offset: 1024)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1997, file: !1998, line: 57, baseType: !111, size: 64, offset: 1088)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1997, file: !1998, line: 58, baseType: !111, size: 64, offset: 1152)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1997, file: !1998, line: 59, baseType: !111, size: 64, offset: 1216)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1997, file: !1998, line: 60, baseType: !111, size: 64, offset: 1280)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1997, file: !1998, line: 61, baseType: !1578, size: 64, offset: 1344)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1997, file: !1998, line: 62, baseType: !532, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1997, file: !1998, line: 63, baseType: !532, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1974, file: !31, line: 583, baseType: !532, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1974, file: !31, line: 584, baseType: !532, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1974, file: !31, line: 585, baseType: !532, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1974, file: !31, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1974, file: !31, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1974, file: !31, line: 592, baseType: !254, size: 512, offset: 576)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1974, file: !31, line: 593, baseType: !162, size: 64, offset: 1088)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1974, file: !31, line: 594, baseType: !538, size: 256, offset: 1152)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1974, file: !31, line: 595, baseType: !667, size: 128, offset: 1408)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1974, file: !31, line: 596, baseType: !2005, size: 64, offset: 1536)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1974, file: !31, line: 597, baseType: !105, size: 32, offset: 1600)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1974, file: !31, line: 598, baseType: !105, size: 32, offset: 1632)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1974, file: !31, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1974, file: !31, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1974, file: !31, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1974, file: !31, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1974, file: !31, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1974, file: !31, line: 604, baseType: !532, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1974, file: !31, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1974, file: !31, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1974, file: !31, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1974, file: !31, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1974, file: !31, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1974, file: !31, line: 610, baseType: !7, size: 32, offset: 1696)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1974, file: !31, line: 611, baseType: !30, size: 32, offset: 1728)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1974, file: !31, line: 612, baseType: !38, size: 32, offset: 1760)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1974, file: !31, line: 613, baseType: !83, size: 32, offset: 1792)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1974, file: !31, line: 614, baseType: !83, size: 32, offset: 1824)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1974, file: !31, line: 615, baseType: !162, size: 64, offset: 1856)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1974, file: !31, line: 616, baseType: !162, size: 64, offset: 1920)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1974, file: !31, line: 617, baseType: !162, size: 64, offset: 1984)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1974, file: !31, line: 618, baseType: !162, size: 64, offset: 2048)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1974, file: !31, line: 620, baseType: !2066, size: 64, offset: 2112)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !31, line: 536, size: 256, elements: !2068)
!2068 = !{!2069, !2070, !2071, !2072}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2067, file: !31, line: 537, baseType: !134)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2067, file: !31, line: 538, baseType: !7, size: 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2067, file: !31, line: 540, baseType: !62, size: 128, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2067, file: !31, line: 543, baseType: !2073, size: 64, offset: 192)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !31, line: 534, flags: DIFlagFwdDecl)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1974, file: !31, line: 621, baseType: !2076, size: 64, offset: 2176)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{null, !1578, !620}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1974, file: !31, line: 622, baseType: !2080, size: 64, offset: 2240)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !31, line: 622, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1579, file: !24, line: 486, baseType: !2083, size: 64, offset: 4096)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !31, line: 642, size: 1792, elements: !2085)
!2085 = !{!2086, !2087, !2088, !2092, !2093, !2094}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2084, file: !31, line: 643, baseType: !1931, size: 1472)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2084, file: !31, line: 644, baseType: !1934, size: 64, offset: 1472)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2084, file: !31, line: 645, baseType: !2089, size: 64, offset: 1536)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{null, !1578, !532}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2084, file: !31, line: 646, baseType: !1934, size: 64, offset: 1600)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2084, file: !31, line: 647, baseType: !1925, size: 64, offset: 1664)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2084, file: !31, line: 648, baseType: !1925, size: 64, offset: 1728)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !1579, file: !24, line: 493, baseType: !2096, size: 64, offset: 4160)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !24, line: 493, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !1579, file: !24, line: 499, baseType: !62, size: 128, offset: 4224)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1579, file: !24, line: 502, baseType: !2100, size: 64, offset: 4352)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2102)
!2102 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !24, line: 502, flags: DIFlagFwdDecl)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1579, file: !24, line: 504, baseType: !2104, size: 64, offset: 4416)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1579, file: !24, line: 505, baseType: !162, size: 64, offset: 4480)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1579, file: !24, line: 510, baseType: !162, size: 64, offset: 4544)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1579, file: !24, line: 511, baseType: !2108, size: 64, offset: 4608)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2110)
!2110 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !24, line: 511, flags: DIFlagFwdDecl)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1579, file: !24, line: 513, baseType: !2112, size: 64, offset: 4672)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !24, line: 288, size: 128, elements: !2114)
!2114 = !{!2115, !2116}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2113, file: !24, line: 293, baseType: !7, size: 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2113, file: !24, line: 294, baseType: !111, size: 64, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1579, file: !24, line: 515, baseType: !62, size: 128, offset: 4736)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1579, file: !24, line: 526, baseType: !2119, offset: 4864)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2120, line: 5, elements: !148)
!2120 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1579, file: !24, line: 528, baseType: !2122, size: 64, offset: 4864)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2124, line: 14, flags: DIFlagFwdDecl)
!2124 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1579, file: !24, line: 529, baseType: !2126, size: 64, offset: 4928)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1573, line: 22, flags: DIFlagFwdDecl)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1579, file: !24, line: 534, baseType: !2129, size: 32, offset: 4992)
!2129 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !63, line: 16, baseType: !2130)
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !63, line: 13, baseType: !158)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1579, file: !24, line: 535, baseType: !158, size: 32, offset: 5024)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1579, file: !24, line: 537, baseType: !134, offset: 5056)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1579, file: !24, line: 538, baseType: !62, size: 128, offset: 5056)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1579, file: !24, line: 540, baseType: !2135, size: 64, offset: 5184)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2137, line: 54, size: 960, elements: !2138)
!2137 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2138 = !{!2139, !2140, !2141, !2142, !2143, !2144, !2145, !2149, !2153, !2154, !2155, !2156, !2160, !2164, !2165}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2136, file: !2137, line: 55, baseType: !842, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2136, file: !2137, line: 56, baseType: !88, size: 64, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2136, file: !2137, line: 58, baseType: !1662, size: 64, offset: 128)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2136, file: !2137, line: 59, baseType: !1662, size: 64, offset: 192)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2136, file: !2137, line: 60, baseType: !1588, size: 64, offset: 256)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2136, file: !2137, line: 62, baseType: !1916, size: 64, offset: 320)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2136, file: !2137, line: 63, baseType: !2146, size: 64, offset: 384)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!852, !1578, !1923}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2136, file: !2137, line: 65, baseType: !2150, size: 64, offset: 448)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{null, !2135}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2136, file: !2137, line: 66, baseType: !1925, size: 64, offset: 512)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2136, file: !2137, line: 68, baseType: !1934, size: 64, offset: 576)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2136, file: !2137, line: 70, baseType: !1700, size: 64, offset: 640)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2136, file: !2137, line: 71, baseType: !2157, size: 64, offset: 704)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!1717, !1578}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2136, file: !2137, line: 73, baseType: !2161, size: 64, offset: 768)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{null, !1578, !1737, !1738}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2136, file: !2137, line: 75, baseType: !1929, size: 64, offset: 832)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2136, file: !2137, line: 77, baseType: !2166, size: 64, offset: 896)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1573, line: 111, flags: DIFlagFwdDecl)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1579, file: !24, line: 541, baseType: !1662, size: 64, offset: 5248)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1579, file: !24, line: 543, baseType: !1925, size: 64, offset: 5312)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1579, file: !24, line: 544, baseType: !2171, size: 64, offset: 5376)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !24, line: 45, flags: DIFlagFwdDecl)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1579, file: !24, line: 545, baseType: !2174, size: 64, offset: 5440)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !24, line: 47, flags: DIFlagFwdDecl)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1579, file: !24, line: 547, baseType: !532, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1579, file: !24, line: 548, baseType: !532, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1579, file: !24, line: 549, baseType: !532, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1579, file: !24, line: 550, baseType: !532, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1572, file: !1573, line: 86, baseType: !1662, size: 64, offset: 192)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1572, file: !1573, line: 87, baseType: !1662, size: 64, offset: 256)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1572, file: !1573, line: 88, baseType: !1662, size: 64, offset: 320)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1572, file: !1573, line: 90, baseType: !2184, size: 64, offset: 384)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!83, !1578, !1566}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1572, file: !1573, line: 91, baseType: !1916, size: 64, offset: 448)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1572, file: !1573, line: 92, baseType: !1934, size: 64, offset: 512)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1572, file: !1573, line: 93, baseType: !1925, size: 64, offset: 576)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1572, file: !1573, line: 94, baseType: !1934, size: 64, offset: 640)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1572, file: !1573, line: 95, baseType: !1925, size: 64, offset: 704)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1572, file: !1573, line: 97, baseType: !1934, size: 64, offset: 768)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1572, file: !1573, line: 98, baseType: !1934, size: 64, offset: 832)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1572, file: !1573, line: 100, baseType: !2195, size: 64, offset: 896)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!83, !1578, !1977}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1572, file: !1573, line: 101, baseType: !1934, size: 64, offset: 960)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1572, file: !1573, line: 103, baseType: !1934, size: 64, offset: 1024)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1572, file: !1573, line: 105, baseType: !1934, size: 64, offset: 1088)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1572, file: !1573, line: 107, baseType: !1929, size: 64, offset: 1152)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1572, file: !1573, line: 109, baseType: !2203, size: 64, offset: 1216)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2205)
!2205 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1573, line: 109, flags: DIFlagFwdDecl)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1572, file: !1573, line: 111, baseType: !2166, size: 64, offset: 1280)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1572, file: !1573, line: 112, baseType: !2208, offset: 1344)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2209, line: 187, elements: !148)
!2209 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1572, file: !1573, line: 114, baseType: !532, size: 8, offset: 1344)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1567, file: !45, line: 99, baseType: !88, size: 64, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1567, file: !45, line: 100, baseType: !842, size: 64, offset: 192)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1567, file: !45, line: 102, baseType: !532, size: 8, offset: 256)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1567, file: !45, line: 103, baseType: !44, size: 32, offset: 288)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1567, file: !45, line: 105, baseType: !2216, size: 64, offset: 320)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2218)
!2218 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !45, line: 105, flags: DIFlagFwdDecl)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1567, file: !45, line: 106, baseType: !2220, size: 64, offset: 384)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2222)
!2222 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !45, line: 106, flags: DIFlagFwdDecl)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1567, file: !45, line: 108, baseType: !1934, size: 64, offset: 448)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1567, file: !45, line: 109, baseType: !1925, size: 64, offset: 512)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1567, file: !45, line: 110, baseType: !1934, size: 64, offset: 576)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1567, file: !45, line: 111, baseType: !1925, size: 64, offset: 640)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1567, file: !45, line: 112, baseType: !2195, size: 64, offset: 704)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1567, file: !45, line: 113, baseType: !1934, size: 64, offset: 768)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1567, file: !45, line: 114, baseType: !1662, size: 64, offset: 832)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1567, file: !45, line: 115, baseType: !1662, size: 64, offset: 896)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1567, file: !45, line: 117, baseType: !1929, size: 64, offset: 960)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1567, file: !45, line: 118, baseType: !1925, size: 64, offset: 1024)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1567, file: !45, line: 120, baseType: !2234, size: 64, offset: 1088)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !45, line: 120, flags: DIFlagFwdDecl)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !114, file: !59, line: 236, baseType: !1579, size: 5568, offset: 1984)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master", scope: !114, file: !59, line: 238, baseType: !2238, size: 64, offset: 7552)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "w1_bus_master", file: !59, line: 131, size: 832, elements: !2240)
!2240 = !{!2241, !2242, !2246, !2250, !2254, !2255, !2256, !2261, !2267, !2268, !2269, !2273, !2281}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2239, file: !59, line: 132, baseType: !56, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "read_bit", scope: !2239, file: !59, line: 134, baseType: !2243, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!69, !56}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "write_bit", scope: !2239, file: !59, line: 136, baseType: !2247, size: 64, offset: 128)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{null, !56, !69}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "touch_bit", scope: !2239, file: !59, line: 138, baseType: !2251, size: 64, offset: 192)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!69, !56, !69}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "read_byte", scope: !2239, file: !59, line: 140, baseType: !2243, size: 64, offset: 256)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "write_byte", scope: !2239, file: !59, line: 142, baseType: !2247, size: 64, offset: 320)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "read_block", scope: !2239, file: !59, line: 144, baseType: !2257, size: 64, offset: 384)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!69, !56, !2260, !83}
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "write_block", scope: !2239, file: !59, line: 146, baseType: !2262, size: 64, offset: 448)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{null, !56, !2265, !83}
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "triplet", scope: !2239, file: !59, line: 148, baseType: !2251, size: 64, offset: 512)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "reset_bus", scope: !2239, file: !59, line: 150, baseType: !2243, size: 64, offset: 576)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "set_pullup", scope: !2239, file: !59, line: 152, baseType: !2270, size: 64, offset: 640)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!69, !56, !83}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !2239, file: !59, line: 154, baseType: !2274, size: 64, offset: 704)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{null, !56, !113, !69, !2277}
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "w1_slave_found_callback", file: !59, line: 81, baseType: !2278)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{null, !113, !162}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !2239, file: !59, line: 157, baseType: !852, size: 64, offset: 768)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !114, file: !59, line: 240, baseType: !158, size: 32, offset: 7616)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !85, file: !59, line: 75, baseType: !57, size: 64, offset: 704)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "family_data", scope: !85, file: !59, line: 76, baseType: !56, size: 64, offset: 768)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !85, file: !59, line: 77, baseType: !1579, size: 5568, offset: 832)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "hwmon", scope: !85, file: !59, line: 78, baseType: !1578, size: 64, offset: 6400)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "remove_slave", scope: !77, file: !59, line: 255, baseType: !2288, size: 64, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{null, !84}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !77, file: !59, line: 256, baseType: !1662, size: 64, offset: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "chip_info", scope: !77, file: !59, line: 257, baseType: !2293, size: 64, offset: 192)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2295)
!2295 = !DICompositeType(tag: DW_TAG_structure_type, name: "hwmon_chip_info", file: !59, line: 257, flags: DIFlagFwdDecl)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !58, file: !59, line: 274, baseType: !2216, size: 64, offset: 256)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !58, file: !59, line: 276, baseType: !105, size: 32, offset: 320)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !83)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !66)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2299)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!2305 = !{!0, !2306}
!2306 = !DIGlobalVariableExpression(var: !2307, expr: !DIExpression())
!2307 = distinct !DIGlobalVariable(name: "w1_families", scope: !2, file: !3, line: 15, type: !62, isLocal: true, isDefinition: true)
!2308 = !{i32 7, !"Dwarf Version", i32 4}
!2309 = !{i32 2, !"Debug Info Version", i32 3}
!2310 = !{i32 1, !"wchar_size", i32 2}
!2311 = !{i32 1, !"Code Model", i32 2}
!2312 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2313 = distinct !DISubprogram(name: "w1_register_family", scope: !3, file: !3, line: 21, type: !2314, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!83, !57}
!2316 = !DILocalVariable(name: "lock", arg: 1, scope: !2317, file: !2318, line: 392, type: !2321)
!2317 = distinct !DISubprogram(name: "spin_unlock", scope: !2318, file: !2318, line: 392, type: !2319, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2318 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!2319 = !DISubroutineType(types: !2320)
!2320 = !{null, !2321}
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!2322 = !DILocation(line: 392, column: 53, scope: !2317, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 41, column: 2, scope: !2313)
!2324 = !DILocalVariable(name: "v", arg: 1, scope: !2325, file: !2326, line: 39, type: !2329)
!2325 = distinct !DISubprogram(name: "arch_atomic_set", scope: !2326, file: !2326, line: 39, type: !2327, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2326 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!2327 = !DISubroutineType(types: !2328)
!2328 = !{null, !2329, !83}
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!2330 = !DILocation(line: 39, column: 55, scope: !2325, inlinedAt: !2331)
!2331 = distinct !DILocation(line: 46, column: 2, scope: !2332, inlinedAt: !2334)
!2332 = distinct !DISubprogram(name: "atomic_set", scope: !2333, file: !2333, line: 43, type: !2327, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2333 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!2334 = distinct !DILocation(line: 38, column: 3, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 37, column: 12)
!2336 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 37, column: 6)
!2337 = !DILocalVariable(name: "i", arg: 2, scope: !2325, file: !2326, line: 39, type: !83)
!2338 = !DILocation(line: 39, column: 62, scope: !2325, inlinedAt: !2331)
!2339 = !DILocalVariable(name: "v", arg: 1, scope: !2340, file: !2341, line: 84, type: !2344)
!2340 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !2341, file: !2341, line: 84, type: !2342, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2341 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!2342 = !DISubroutineType(types: !2343)
!2343 = !{null, !2344, !1099}
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2346)
!2346 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2347 = !DILocation(line: 84, column: 74, scope: !2340, inlinedAt: !2348)
!2348 = distinct !DILocation(line: 45, column: 2, scope: !2332, inlinedAt: !2334)
!2349 = !DILocalVariable(name: "size", arg: 2, scope: !2340, file: !2341, line: 84, type: !1099)
!2350 = !DILocation(line: 84, column: 84, scope: !2340, inlinedAt: !2348)
!2351 = !DILocalVariable(name: "v", arg: 1, scope: !2332, file: !2333, line: 43, type: !2329)
!2352 = !DILocation(line: 43, column: 22, scope: !2332, inlinedAt: !2334)
!2353 = !DILocalVariable(name: "i", arg: 2, scope: !2332, file: !2333, line: 43, type: !83)
!2354 = !DILocation(line: 43, column: 29, scope: !2332, inlinedAt: !2334)
!2355 = !DILocalVariable(name: "lock", arg: 1, scope: !2356, file: !2318, line: 352, type: !2321)
!2356 = distinct !DISubprogram(name: "spin_lock", scope: !2318, file: !2318, line: 352, type: !2319, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2357 = !DILocation(line: 352, column: 51, scope: !2356, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 27, column: 2, scope: !2313)
!2359 = !DILocalVariable(name: "newf", arg: 1, scope: !2313, file: !3, line: 21, type: !57)
!2360 = !DILocation(line: 21, column: 42, scope: !2313)
!2361 = !DILocalVariable(name: "ent", scope: !2313, file: !3, line: 23, type: !66)
!2362 = !DILocation(line: 23, column: 20, scope: !2313)
!2363 = !DILocalVariable(name: "n", scope: !2313, file: !3, line: 23, type: !66)
!2364 = !DILocation(line: 23, column: 26, scope: !2313)
!2365 = !DILocalVariable(name: "f", scope: !2313, file: !3, line: 24, type: !57)
!2366 = !DILocation(line: 24, column: 20, scope: !2313)
!2367 = !DILocalVariable(name: "ret", scope: !2313, file: !3, line: 25, type: !83)
!2368 = !DILocation(line: 25, column: 6, scope: !2313)
!2369 = !DILocation(line: 354, column: 2, scope: !2370, inlinedAt: !2358)
!2370 = distinct !DILexicalBlock(scope: !2356, file: !2318, line: 354, column: 2)
!2371 = !{i32 -2145629876}
!2372 = !DILocation(line: 354, column: 2, scope: !2373, inlinedAt: !2358)
!2373 = distinct !DILexicalBlock(scope: !2370, file: !2318, line: 354, column: 2)
!2374 = !DILocation(line: 28, column: 2, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 28, column: 2)
!2376 = !DILocation(line: 28, column: 2, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 28, column: 2)
!2378 = !DILocalVariable(name: "__mptr", scope: !2379, file: !3, line: 29, type: !56)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 29, column: 7)
!2380 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 28, column: 43)
!2381 = !DILocation(line: 29, column: 7, scope: !2379)
!2382 = !DILocation(line: 29, column: 7, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2379, file: !3, line: 29, column: 7)
!2384 = !DILocation(line: 29, column: 5, scope: !2380)
!2385 = !DILocation(line: 31, column: 7, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 31, column: 7)
!2387 = !DILocation(line: 31, column: 10, scope: !2386)
!2388 = !DILocation(line: 31, column: 17, scope: !2386)
!2389 = !DILocation(line: 31, column: 23, scope: !2386)
!2390 = !DILocation(line: 31, column: 14, scope: !2386)
!2391 = !DILocation(line: 31, column: 7, scope: !2380)
!2392 = !DILocation(line: 32, column: 8, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 31, column: 28)
!2394 = !DILocation(line: 33, column: 4, scope: !2393)
!2395 = !DILocation(line: 35, column: 2, scope: !2380)
!2396 = distinct !{!2396, !2374, !2397}
!2397 = !DILocation(line: 35, column: 2, scope: !2375)
!2398 = !DILocation(line: 37, column: 7, scope: !2336)
!2399 = !DILocation(line: 37, column: 6, scope: !2313)
!2400 = !DILocation(line: 38, column: 15, scope: !2335)
!2401 = !DILocation(line: 38, column: 21, scope: !2335)
!2402 = !DILocation(line: 45, column: 26, scope: !2332, inlinedAt: !2334)
!2403 = !DILocation(line: 86, column: 20, scope: !2340, inlinedAt: !2348)
!2404 = !DILocation(line: 86, column: 23, scope: !2340, inlinedAt: !2348)
!2405 = !DILocation(line: 86, column: 2, scope: !2340, inlinedAt: !2348)
!2406 = !DILocation(line: 87, column: 2, scope: !2340, inlinedAt: !2348)
!2407 = !DILocation(line: 46, column: 18, scope: !2332, inlinedAt: !2334)
!2408 = !DILocation(line: 46, column: 21, scope: !2332, inlinedAt: !2334)
!2409 = !DILocation(line: 41, column: 2, scope: !2410, inlinedAt: !2331)
!2410 = distinct !DILexicalBlock(scope: !2325, file: !2326, line: 41, column: 2)
!2411 = !DILocation(line: 39, column: 18, scope: !2335)
!2412 = !DILocation(line: 39, column: 24, scope: !2335)
!2413 = !DILocation(line: 39, column: 3, scope: !2335)
!2414 = !DILocation(line: 40, column: 2, scope: !2335)
!2415 = !DILocation(line: 394, column: 2, scope: !2416, inlinedAt: !2323)
!2416 = distinct !DILexicalBlock(scope: !2317, file: !2318, line: 394, column: 2)
!2417 = !{i32 -2145627515}
!2418 = !DILocation(line: 394, column: 2, scope: !2419, inlinedAt: !2323)
!2419 = distinct !DILexicalBlock(scope: !2416, file: !2318, line: 394, column: 2)
!2420 = !DILocation(line: 44, column: 22, scope: !2313)
!2421 = !DILocation(line: 44, column: 2, scope: !2313)
!2422 = !DILocation(line: 46, column: 9, scope: !2313)
!2423 = !DILocation(line: 46, column: 2, scope: !2313)
!2424 = distinct !DISubprogram(name: "list_add_tail", scope: !2425, file: !2425, line: 98, type: !2426, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2425 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!2426 = !DISubroutineType(types: !2427)
!2427 = !{null, !66, !66}
!2428 = !DILocalVariable(name: "new", arg: 1, scope: !2424, file: !2425, line: 98, type: !66)
!2429 = !DILocation(line: 98, column: 52, scope: !2424)
!2430 = !DILocalVariable(name: "head", arg: 2, scope: !2424, file: !2425, line: 98, type: !66)
!2431 = !DILocation(line: 98, column: 75, scope: !2424)
!2432 = !DILocation(line: 100, column: 13, scope: !2424)
!2433 = !DILocation(line: 100, column: 18, scope: !2424)
!2434 = !DILocation(line: 100, column: 24, scope: !2424)
!2435 = !DILocation(line: 100, column: 30, scope: !2424)
!2436 = !DILocation(line: 100, column: 2, scope: !2424)
!2437 = !DILocation(line: 101, column: 1, scope: !2424)
!2438 = distinct !DISubprogram(name: "w1_unregister_family", scope: !3, file: !3, line: 54, type: !2439, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{null, !57}
!2441 = !DILocalVariable(name: "pscr_ret__", scope: !2442, file: !2443, line: 15, type: !170)
!2442 = distinct !DILexicalBlock(scope: !2444, file: !2443, line: 15, column: 9)
!2443 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!2444 = distinct !DISubprogram(name: "get_current", scope: !2443, file: !2443, line: 13, type: !2445, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!170}
!2447 = !DILocation(line: 15, column: 9, scope: !2442, inlinedAt: !2448)
!2448 = distinct !DILocation(line: 78, column: 18, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 77, column: 7)
!2450 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 73, column: 37)
!2451 = !DILocalVariable(name: "__vpp_verify", scope: !2452, file: !2443, line: 15, type: !1717)
!2452 = distinct !DILexicalBlock(scope: !2442, file: !2443, line: 15, column: 9)
!2453 = !DILocation(line: 15, column: 9, scope: !2452, inlinedAt: !2448)
!2454 = !DILocalVariable(name: "pfo_val__", scope: !2455, file: !2443, line: 15, type: !162)
!2455 = distinct !DILexicalBlock(scope: !2442, file: !2443, line: 15, column: 9)
!2456 = !DILocation(line: 15, column: 9, scope: !2455, inlinedAt: !2448)
!2457 = !DILocalVariable(name: "v", arg: 1, scope: !2458, file: !2326, line: 23, type: !2461)
!2458 = distinct !DISubprogram(name: "arch_atomic_read", scope: !2326, file: !2326, line: 23, type: !2459, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!83, !2461}
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!2463 = !DILocation(line: 23, column: 61, scope: !2458, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 28, column: 9, scope: !2465, inlinedAt: !2466)
!2465 = distinct !DISubprogram(name: "atomic_read", scope: !2333, file: !2333, line: 25, type: !2459, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2466 = distinct !DILocation(line: 74, column: 3, scope: !2450)
!2467 = !DILocalVariable(name: "v", arg: 1, scope: !2468, file: !2341, line: 69, type: !2344)
!2468 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2341, file: !2341, line: 69, type: !2342, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2469 = !DILocation(line: 69, column: 73, scope: !2468, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 27, column: 2, scope: !2465, inlinedAt: !2466)
!2471 = !DILocalVariable(name: "size", arg: 2, scope: !2468, file: !2341, line: 69, type: !1099)
!2472 = !DILocation(line: 69, column: 83, scope: !2468, inlinedAt: !2470)
!2473 = !DILocalVariable(name: "v", arg: 1, scope: !2465, file: !2333, line: 25, type: !2461)
!2474 = !DILocation(line: 25, column: 29, scope: !2465, inlinedAt: !2466)
!2475 = !DILocation(line: 23, column: 61, scope: !2458, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 28, column: 9, scope: !2465, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 73, column: 9, scope: !2438)
!2478 = !DILocation(line: 69, column: 73, scope: !2468, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 27, column: 2, scope: !2465, inlinedAt: !2477)
!2480 = !DILocation(line: 69, column: 83, scope: !2468, inlinedAt: !2479)
!2481 = !DILocation(line: 25, column: 29, scope: !2465, inlinedAt: !2477)
!2482 = !DILocation(line: 392, column: 53, scope: !2317, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 68, column: 2, scope: !2438)
!2484 = !DILocation(line: 352, column: 51, scope: !2356, inlinedAt: !2485)
!2485 = distinct !DILocation(line: 59, column: 2, scope: !2438)
!2486 = !DILocalVariable(name: "fent", arg: 1, scope: !2438, file: !3, line: 54, type: !57)
!2487 = !DILocation(line: 54, column: 45, scope: !2438)
!2488 = !DILocalVariable(name: "ent", scope: !2438, file: !3, line: 56, type: !66)
!2489 = !DILocation(line: 56, column: 20, scope: !2438)
!2490 = !DILocalVariable(name: "n", scope: !2438, file: !3, line: 56, type: !66)
!2491 = !DILocation(line: 56, column: 26, scope: !2438)
!2492 = !DILocalVariable(name: "f", scope: !2438, file: !3, line: 57, type: !57)
!2493 = !DILocation(line: 57, column: 20, scope: !2438)
!2494 = !DILocation(line: 354, column: 2, scope: !2370, inlinedAt: !2485)
!2495 = !DILocation(line: 354, column: 2, scope: !2373, inlinedAt: !2485)
!2496 = !DILocation(line: 60, column: 2, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 60, column: 2)
!2498 = !DILocation(line: 60, column: 2, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 60, column: 2)
!2500 = !DILocalVariable(name: "__mptr", scope: !2501, file: !3, line: 61, type: !56)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 61, column: 7)
!2502 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 60, column: 43)
!2503 = !DILocation(line: 61, column: 7, scope: !2501)
!2504 = !DILocation(line: 61, column: 7, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2501, file: !3, line: 61, column: 7)
!2506 = !DILocation(line: 61, column: 5, scope: !2502)
!2507 = !DILocation(line: 63, column: 7, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 63, column: 7)
!2509 = !DILocation(line: 63, column: 10, scope: !2508)
!2510 = !DILocation(line: 63, column: 17, scope: !2508)
!2511 = !DILocation(line: 63, column: 23, scope: !2508)
!2512 = !DILocation(line: 63, column: 14, scope: !2508)
!2513 = !DILocation(line: 63, column: 7, scope: !2502)
!2514 = !DILocation(line: 64, column: 14, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 63, column: 28)
!2516 = !DILocation(line: 64, column: 20, scope: !2515)
!2517 = !DILocation(line: 64, column: 4, scope: !2515)
!2518 = !DILocation(line: 65, column: 4, scope: !2515)
!2519 = !DILocation(line: 67, column: 2, scope: !2502)
!2520 = distinct !{!2520, !2496, !2521}
!2521 = !DILocation(line: 67, column: 2, scope: !2497)
!2522 = !DILocation(line: 394, column: 2, scope: !2416, inlinedAt: !2483)
!2523 = !DILocation(line: 394, column: 2, scope: !2419, inlinedAt: !2483)
!2524 = !DILocation(line: 71, column: 22, scope: !2438)
!2525 = !DILocation(line: 71, column: 2, scope: !2438)
!2526 = !DILocation(line: 73, column: 2, scope: !2438)
!2527 = !DILocation(line: 73, column: 22, scope: !2438)
!2528 = !DILocation(line: 73, column: 28, scope: !2438)
!2529 = !DILocation(line: 27, column: 25, scope: !2465, inlinedAt: !2477)
!2530 = !DILocation(line: 71, column: 19, scope: !2468, inlinedAt: !2479)
!2531 = !DILocation(line: 71, column: 22, scope: !2468, inlinedAt: !2479)
!2532 = !DILocation(line: 71, column: 2, scope: !2468, inlinedAt: !2479)
!2533 = !DILocation(line: 72, column: 2, scope: !2468, inlinedAt: !2479)
!2534 = !DILocation(line: 28, column: 26, scope: !2465, inlinedAt: !2477)
!2535 = !DILocation(line: 29, column: 9, scope: !2458, inlinedAt: !2476)
!2536 = !DILocation(line: 74, column: 3, scope: !2450)
!2537 = !DILocation(line: 27, column: 25, scope: !2465, inlinedAt: !2466)
!2538 = !DILocation(line: 71, column: 19, scope: !2468, inlinedAt: !2470)
!2539 = !DILocation(line: 71, column: 22, scope: !2468, inlinedAt: !2470)
!2540 = !DILocation(line: 71, column: 2, scope: !2468, inlinedAt: !2470)
!2541 = !DILocation(line: 72, column: 2, scope: !2468, inlinedAt: !2470)
!2542 = !DILocation(line: 28, column: 26, scope: !2465, inlinedAt: !2466)
!2543 = !DILocation(line: 29, column: 9, scope: !2458, inlinedAt: !2464)
!2544 = !DILocation(line: 77, column: 7, scope: !2449)
!2545 = !DILocation(line: 77, column: 7, scope: !2450)
!2546 = !{i32 -2146791870}
!2547 = !DILocation(line: 78, column: 4, scope: !2449)
!2548 = distinct !{!2548, !2526, !2549}
!2549 = !DILocation(line: 79, column: 2, scope: !2438)
!2550 = !DILocation(line: 80, column: 1, scope: !2438)
!2551 = distinct !DISubprogram(name: "list_del", scope: !2425, file: !2425, line: 144, type: !2552, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{null, !66}
!2554 = !DILocalVariable(name: "entry", arg: 1, scope: !2551, file: !2425, line: 144, type: !66)
!2555 = !DILocation(line: 144, column: 47, scope: !2551)
!2556 = !DILocation(line: 146, column: 19, scope: !2551)
!2557 = !DILocation(line: 146, column: 2, scope: !2551)
!2558 = !DILocation(line: 147, column: 2, scope: !2551)
!2559 = !DILocation(line: 147, column: 9, scope: !2551)
!2560 = !DILocation(line: 147, column: 14, scope: !2551)
!2561 = !DILocation(line: 148, column: 2, scope: !2551)
!2562 = !DILocation(line: 148, column: 9, scope: !2551)
!2563 = !DILocation(line: 148, column: 14, scope: !2551)
!2564 = !DILocation(line: 149, column: 1, scope: !2551)
!2565 = distinct !DISubprogram(name: "w1_family_registered", scope: !3, file: !3, line: 86, type: !2566, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!57, !69}
!2568 = !DILocalVariable(name: "fid", arg: 1, scope: !2565, file: !3, line: 86, type: !69)
!2569 = !DILocation(line: 86, column: 44, scope: !2565)
!2570 = !DILocalVariable(name: "ent", scope: !2565, file: !3, line: 88, type: !66)
!2571 = !DILocation(line: 88, column: 20, scope: !2565)
!2572 = !DILocalVariable(name: "n", scope: !2565, file: !3, line: 88, type: !66)
!2573 = !DILocation(line: 88, column: 26, scope: !2565)
!2574 = !DILocalVariable(name: "f", scope: !2565, file: !3, line: 89, type: !57)
!2575 = !DILocation(line: 89, column: 20, scope: !2565)
!2576 = !DILocalVariable(name: "ret", scope: !2565, file: !3, line: 90, type: !83)
!2577 = !DILocation(line: 90, column: 6, scope: !2565)
!2578 = !DILocation(line: 92, column: 2, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 92, column: 2)
!2580 = !DILocation(line: 92, column: 2, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 92, column: 2)
!2582 = !DILocalVariable(name: "__mptr", scope: !2583, file: !3, line: 93, type: !56)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 93, column: 7)
!2584 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 92, column: 43)
!2585 = !DILocation(line: 93, column: 7, scope: !2583)
!2586 = !DILocation(line: 93, column: 7, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2583, file: !3, line: 93, column: 7)
!2588 = !DILocation(line: 93, column: 5, scope: !2584)
!2589 = !DILocation(line: 95, column: 7, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 95, column: 7)
!2591 = !DILocation(line: 95, column: 10, scope: !2590)
!2592 = !DILocation(line: 95, column: 17, scope: !2590)
!2593 = !DILocation(line: 95, column: 14, scope: !2590)
!2594 = !DILocation(line: 95, column: 7, scope: !2584)
!2595 = !DILocation(line: 96, column: 8, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 95, column: 22)
!2597 = !DILocation(line: 97, column: 4, scope: !2596)
!2598 = !DILocation(line: 99, column: 2, scope: !2584)
!2599 = distinct !{!2599, !2578, !2600}
!2600 = !DILocation(line: 99, column: 2, scope: !2579)
!2601 = !DILocation(line: 101, column: 10, scope: !2565)
!2602 = !DILocation(line: 101, column: 9, scope: !2565)
!2603 = !DILocation(line: 101, column: 17, scope: !2565)
!2604 = !DILocation(line: 101, column: 2, scope: !2565)
!2605 = distinct !DISubprogram(name: "w1_family_put", scope: !3, file: !3, line: 109, type: !2439, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2606 = !DILocation(line: 392, column: 53, scope: !2317, inlinedAt: !2607)
!2607 = distinct !DILocation(line: 113, column: 2, scope: !2605)
!2608 = !DILocation(line: 352, column: 51, scope: !2356, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 111, column: 2, scope: !2605)
!2610 = !DILocalVariable(name: "f", arg: 1, scope: !2605, file: !3, line: 109, type: !57)
!2611 = !DILocation(line: 109, column: 38, scope: !2605)
!2612 = !DILocation(line: 354, column: 2, scope: !2370, inlinedAt: !2609)
!2613 = !DILocation(line: 354, column: 2, scope: !2373, inlinedAt: !2609)
!2614 = !DILocation(line: 112, column: 18, scope: !2605)
!2615 = !DILocation(line: 112, column: 2, scope: !2605)
!2616 = !DILocation(line: 394, column: 2, scope: !2416, inlinedAt: !2607)
!2617 = !DILocation(line: 394, column: 2, scope: !2419, inlinedAt: !2607)
!2618 = !DILocation(line: 114, column: 1, scope: !2605)
!2619 = distinct !DISubprogram(name: "__w1_family_put", scope: !3, file: !3, line: 104, type: !2439, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2620 = !DILocalVariable(name: "v", arg: 1, scope: !2621, file: !2326, line: 106, type: !2329)
!2621 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !2326, file: !2326, line: 106, type: !2622, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{null, !2329}
!2624 = !DILocation(line: 106, column: 55, scope: !2621, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 331, column: 2, scope: !2626, inlinedAt: !2627)
!2626 = distinct !DISubprogram(name: "atomic_dec", scope: !2333, file: !2333, line: 328, type: !2622, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2627 = distinct !DILocation(line: 106, column: 2, scope: !2619)
!2628 = !DILocalVariable(name: "v", arg: 1, scope: !2629, file: !2341, line: 99, type: !2344)
!2629 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !2341, file: !2341, line: 99, type: !2342, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2630 = !DILocation(line: 99, column: 79, scope: !2629, inlinedAt: !2631)
!2631 = distinct !DILocation(line: 330, column: 2, scope: !2626, inlinedAt: !2627)
!2632 = !DILocalVariable(name: "size", arg: 2, scope: !2629, file: !2341, line: 99, type: !1099)
!2633 = !DILocation(line: 99, column: 89, scope: !2629, inlinedAt: !2631)
!2634 = !DILocalVariable(name: "v", arg: 1, scope: !2626, file: !2333, line: 328, type: !2329)
!2635 = !DILocation(line: 328, column: 22, scope: !2626, inlinedAt: !2627)
!2636 = !DILocalVariable(name: "f", arg: 1, scope: !2619, file: !3, line: 104, type: !57)
!2637 = !DILocation(line: 104, column: 47, scope: !2619)
!2638 = !DILocation(line: 106, column: 14, scope: !2619)
!2639 = !DILocation(line: 106, column: 17, scope: !2619)
!2640 = !DILocation(line: 330, column: 31, scope: !2626, inlinedAt: !2627)
!2641 = !DILocation(line: 101, column: 20, scope: !2629, inlinedAt: !2631)
!2642 = !DILocation(line: 101, column: 23, scope: !2629, inlinedAt: !2631)
!2643 = !DILocation(line: 101, column: 2, scope: !2629, inlinedAt: !2631)
!2644 = !DILocation(line: 102, column: 2, scope: !2629, inlinedAt: !2631)
!2645 = !DILocation(line: 331, column: 18, scope: !2626, inlinedAt: !2627)
!2646 = !DILocation(line: 109, column: 16, scope: !2621, inlinedAt: !2625)
!2647 = !DILocation(line: 109, column: 19, scope: !2621, inlinedAt: !2625)
!2648 = !DILocation(line: 108, column: 2, scope: !2621, inlinedAt: !2625)
!2649 = !{i32 -2146554049}
!2650 = !DILocation(line: 107, column: 1, scope: !2619)
!2651 = distinct !DISubprogram(name: "__w1_family_get", scope: !3, file: !3, line: 125, type: !2439, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2652 = !DILocalVariable(name: "v", arg: 1, scope: !2653, file: !2326, line: 93, type: !2329)
!2653 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !2326, file: !2326, line: 93, type: !2622, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2654 = !DILocation(line: 93, column: 55, scope: !2653, inlinedAt: !2655)
!2655 = distinct !DILocation(line: 241, column: 2, scope: !2656, inlinedAt: !2657)
!2656 = distinct !DISubprogram(name: "atomic_inc", scope: !2333, file: !2333, line: 238, type: !2622, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2657 = distinct !DILocation(line: 128, column: 2, scope: !2651)
!2658 = !DILocation(line: 99, column: 79, scope: !2629, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 240, column: 2, scope: !2656, inlinedAt: !2657)
!2660 = !DILocation(line: 99, column: 89, scope: !2629, inlinedAt: !2659)
!2661 = !DILocalVariable(name: "v", arg: 1, scope: !2656, file: !2333, line: 238, type: !2329)
!2662 = !DILocation(line: 238, column: 22, scope: !2656, inlinedAt: !2657)
!2663 = !DILocalVariable(name: "f", arg: 1, scope: !2651, file: !3, line: 125, type: !57)
!2664 = !DILocation(line: 125, column: 40, scope: !2651)
!2665 = !DILocation(line: 127, column: 2, scope: !2651)
!2666 = !{i32 -2143521267}
!2667 = !DILocation(line: 128, column: 14, scope: !2651)
!2668 = !DILocation(line: 128, column: 17, scope: !2651)
!2669 = !DILocation(line: 240, column: 31, scope: !2656, inlinedAt: !2657)
!2670 = !DILocation(line: 101, column: 20, scope: !2629, inlinedAt: !2659)
!2671 = !DILocation(line: 101, column: 23, scope: !2629, inlinedAt: !2659)
!2672 = !DILocation(line: 101, column: 2, scope: !2629, inlinedAt: !2659)
!2673 = !DILocation(line: 102, column: 2, scope: !2629, inlinedAt: !2659)
!2674 = !DILocation(line: 241, column: 18, scope: !2656, inlinedAt: !2657)
!2675 = !DILocation(line: 96, column: 16, scope: !2653, inlinedAt: !2655)
!2676 = !DILocation(line: 96, column: 19, scope: !2653, inlinedAt: !2655)
!2677 = !DILocation(line: 95, column: 2, scope: !2653, inlinedAt: !2655)
!2678 = !{i32 -2146554259}
!2679 = !DILocation(line: 129, column: 2, scope: !2651)
!2680 = !{i32 -2143521208}
!2681 = !DILocation(line: 130, column: 1, scope: !2651)
!2682 = distinct !DISubprogram(name: "kasan_check_write", scope: !2683, file: !2683, line: 38, type: !2684, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2683 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!532, !2344, !7}
!2686 = !DILocalVariable(name: "p", arg: 1, scope: !2682, file: !2683, line: 38, type: !2344)
!2687 = !DILocation(line: 38, column: 59, scope: !2682)
!2688 = !DILocalVariable(name: "size", arg: 2, scope: !2682, file: !2683, line: 38, type: !7)
!2689 = !DILocation(line: 38, column: 75, scope: !2682)
!2690 = !DILocation(line: 40, column: 2, scope: !2682)
!2691 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2692, file: !2692, line: 178, type: !2693, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2692 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!2693 = !DISubroutineType(types: !2694)
!2694 = !{null, !2344, !1099, !83}
!2695 = !DILocalVariable(name: "ptr", arg: 1, scope: !2691, file: !2692, line: 178, type: !2344)
!2696 = !DILocation(line: 178, column: 60, scope: !2691)
!2697 = !DILocalVariable(name: "size", arg: 2, scope: !2691, file: !2692, line: 178, type: !1099)
!2698 = !DILocation(line: 178, column: 72, scope: !2691)
!2699 = !DILocalVariable(name: "type", arg: 3, scope: !2691, file: !2692, line: 179, type: !83)
!2700 = !DILocation(line: 179, column: 15, scope: !2691)
!2701 = !DILocation(line: 179, column: 23, scope: !2691)
!2702 = distinct !DISubprogram(name: "__list_add", scope: !2425, file: !2425, line: 63, type: !2703, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{null, !66, !66, !66}
!2705 = !DILocalVariable(name: "new", arg: 1, scope: !2702, file: !2425, line: 63, type: !66)
!2706 = !DILocation(line: 63, column: 49, scope: !2702)
!2707 = !DILocalVariable(name: "prev", arg: 2, scope: !2702, file: !2425, line: 64, type: !66)
!2708 = !DILocation(line: 64, column: 28, scope: !2702)
!2709 = !DILocalVariable(name: "next", arg: 3, scope: !2702, file: !2425, line: 65, type: !66)
!2710 = !DILocation(line: 65, column: 28, scope: !2702)
!2711 = !DILocation(line: 67, column: 24, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2702, file: !2425, line: 67, column: 6)
!2713 = !DILocation(line: 67, column: 29, scope: !2712)
!2714 = !DILocation(line: 67, column: 35, scope: !2712)
!2715 = !DILocation(line: 67, column: 7, scope: !2712)
!2716 = !DILocation(line: 67, column: 6, scope: !2702)
!2717 = !DILocation(line: 68, column: 3, scope: !2712)
!2718 = !DILocation(line: 70, column: 15, scope: !2702)
!2719 = !DILocation(line: 70, column: 2, scope: !2702)
!2720 = !DILocation(line: 70, column: 8, scope: !2702)
!2721 = !DILocation(line: 70, column: 13, scope: !2702)
!2722 = !DILocation(line: 71, column: 14, scope: !2702)
!2723 = !DILocation(line: 71, column: 2, scope: !2702)
!2724 = !DILocation(line: 71, column: 7, scope: !2702)
!2725 = !DILocation(line: 71, column: 12, scope: !2702)
!2726 = !DILocation(line: 72, column: 14, scope: !2702)
!2727 = !DILocation(line: 72, column: 2, scope: !2702)
!2728 = !DILocation(line: 72, column: 7, scope: !2702)
!2729 = !DILocation(line: 72, column: 12, scope: !2702)
!2730 = !DILocation(line: 73, column: 2, scope: !2702)
!2731 = !DILocation(line: 73, column: 2, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2702, file: !2425, line: 73, column: 2)
!2733 = !DILocation(line: 73, column: 2, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2732, file: !2425, line: 73, column: 2)
!2735 = !DILocation(line: 73, column: 2, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2732, file: !2425, line: 73, column: 2)
!2737 = !DILocation(line: 74, column: 1, scope: !2702)
!2738 = distinct !DISubprogram(name: "__list_add_valid", scope: !2425, file: !2425, line: 45, type: !2739, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!532, !66, !66, !66}
!2741 = !DILocalVariable(name: "new", arg: 1, scope: !2738, file: !2425, line: 45, type: !66)
!2742 = !DILocation(line: 45, column: 55, scope: !2738)
!2743 = !DILocalVariable(name: "prev", arg: 2, scope: !2738, file: !2425, line: 46, type: !66)
!2744 = !DILocation(line: 46, column: 23, scope: !2738)
!2745 = !DILocalVariable(name: "next", arg: 3, scope: !2738, file: !2425, line: 47, type: !66)
!2746 = !DILocation(line: 47, column: 23, scope: !2738)
!2747 = !DILocation(line: 49, column: 2, scope: !2738)
!2748 = distinct !DISubprogram(name: "__list_del_entry", scope: !2425, file: !2425, line: 130, type: !2552, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2749 = !DILocalVariable(name: "entry", arg: 1, scope: !2748, file: !2425, line: 130, type: !66)
!2750 = !DILocation(line: 130, column: 55, scope: !2748)
!2751 = !DILocation(line: 132, column: 30, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2748, file: !2425, line: 132, column: 6)
!2753 = !DILocation(line: 132, column: 7, scope: !2752)
!2754 = !DILocation(line: 132, column: 6, scope: !2748)
!2755 = !DILocation(line: 133, column: 3, scope: !2752)
!2756 = !DILocation(line: 135, column: 13, scope: !2748)
!2757 = !DILocation(line: 135, column: 20, scope: !2748)
!2758 = !DILocation(line: 135, column: 26, scope: !2748)
!2759 = !DILocation(line: 135, column: 33, scope: !2748)
!2760 = !DILocation(line: 135, column: 2, scope: !2748)
!2761 = !DILocation(line: 136, column: 1, scope: !2748)
!2762 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !2425, file: !2425, line: 51, type: !2763, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!532, !66}
!2765 = !DILocalVariable(name: "entry", arg: 1, scope: !2762, file: !2425, line: 51, type: !66)
!2766 = !DILocation(line: 51, column: 61, scope: !2762)
!2767 = !DILocation(line: 53, column: 2, scope: !2762)
!2768 = distinct !DISubprogram(name: "__list_del", scope: !2425, file: !2425, line: 110, type: !2426, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2769 = !DILocalVariable(name: "prev", arg: 1, scope: !2768, file: !2425, line: 110, type: !66)
!2770 = !DILocation(line: 110, column: 50, scope: !2768)
!2771 = !DILocalVariable(name: "next", arg: 2, scope: !2768, file: !2425, line: 110, type: !66)
!2772 = !DILocation(line: 110, column: 75, scope: !2768)
!2773 = !DILocation(line: 112, column: 15, scope: !2768)
!2774 = !DILocation(line: 112, column: 2, scope: !2768)
!2775 = !DILocation(line: 112, column: 8, scope: !2768)
!2776 = !DILocation(line: 112, column: 13, scope: !2768)
!2777 = !DILocation(line: 113, column: 2, scope: !2768)
!2778 = !DILocation(line: 113, column: 2, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2768, file: !2425, line: 113, column: 2)
!2780 = !DILocation(line: 113, column: 2, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2779, file: !2425, line: 113, column: 2)
!2782 = !DILocation(line: 113, column: 2, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2779, file: !2425, line: 113, column: 2)
!2784 = !DILocation(line: 114, column: 1, scope: !2768)
!2785 = distinct !DISubprogram(name: "kasan_check_read", scope: !2683, file: !2683, line: 34, type: !2684, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !148)
!2786 = !DILocalVariable(name: "p", arg: 1, scope: !2785, file: !2683, line: 34, type: !2344)
!2787 = !DILocation(line: 34, column: 58, scope: !2785)
!2788 = !DILocalVariable(name: "size", arg: 2, scope: !2785, file: !2683, line: 34, type: !7)
!2789 = !DILocation(line: 34, column: 74, scope: !2785)
!2790 = !DILocation(line: 36, column: 2, scope: !2785)
