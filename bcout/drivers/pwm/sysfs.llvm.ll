; ModuleID = '../bcout/drivers/pwm/sysfs.llvm.bc'
source_filename = "drivers/pwm/sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall4.init\22, \22a\22\09"
module asm "__initcall_pwm_sysfs_init4:\09\09\09"
module asm ".long\09pwm_sysfs_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.module = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.file = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.36, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
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
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.vdso_image = type opaque
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot = type { i64 }
%struct.anon.36 = type { %struct.rb_node, i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.atomic64_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.37, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.37 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.seq_file = type opaque
%struct.poll_table_struct = type opaque
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.lock_class_key = type {}
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
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
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
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.subsys_private = type opaque
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.kmem_cache = type opaque
%struct.pwm_chip = type { %struct.device*, %struct.pwm_ops*, i32, i32, %struct.pwm_device* (%struct.pwm_chip*, %struct.of_phandle_args*)*, i32, %struct.list_head, %struct.pwm_device* }
%struct.pwm_ops = type { i32 (%struct.pwm_chip*, %struct.pwm_device*)*, void (%struct.pwm_chip*, %struct.pwm_device*)*, i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_capture*, i64)*, i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)*, void (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)*, %struct.module*, i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)*, i32 (%struct.pwm_chip*, %struct.pwm_device*, i32)*, i32 (%struct.pwm_chip*, %struct.pwm_device*)*, void (%struct.pwm_chip*, %struct.pwm_device*)* }
%struct.pwm_capture = type { i32, i32 }
%struct.pwm_state = type { i64, i64, i32, i8 }
%struct.of_phandle_args = type { %struct.device_node*, i32, [16 x i32] }
%struct.pwm_device = type { i8*, i64, i32, i32, %struct.pwm_chip*, i8*, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_export = type { %struct.device, %struct.pwm_device*, %struct.mutex, %struct.pwm_state }

@pwm_class = internal global %struct.class { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), %struct.module* null, %struct.attribute_group** null, %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @pwm_chip_groups, i32 0, i32 0), %struct.kobject* null, i32 (%struct.device*, %struct.kobj_uevent_env*)* null, i8* (%struct.device*, i16*)* null, void (%struct.class*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, %struct.kobj_ns_type_operations* null, i8* (%struct.device*)* null, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)* null, %struct.dev_pm_ops* @pwm_class_pm_ops, %struct.subsys_private* null }, align 8, !dbg !0
@.str = private unnamed_addr constant [10 x i8] c"pwmchip%d\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"device_create failed for pwm_chip sysfs export\0A\00", align 1
@__UNIQUE_ID___addressable_pwm_sysfs_init158 = internal global i8* bitcast (i32 ()* @pwm_sysfs_init to i8*), section ".discard.addressable", align 8, !dbg !2142
@.str.2 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@pwm_chip_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @pwm_chip_group, %struct.attribute_group* null], align 16, !dbg !2144
@pwm_class_pm_ops = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* @pwm_class_suspend, i32 (%struct.device*)* @pwm_class_resume, i32 (%struct.device*)* @pwm_class_suspend, i32 (%struct.device*)* @pwm_class_resume, i32 (%struct.device*)* @pwm_class_suspend, i32 (%struct.device*)* @pwm_class_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null }, align 8, !dbg !2192
@pwm_chip_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([4 x %struct.attribute*], [4 x %struct.attribute*]* @pwm_chip_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2147
@pwm_chip_attrs = internal global [4 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_export, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_unexport, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_npwm, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2149
@dev_attr_export = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i16 128 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* null, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @export_store }, align 8, !dbg !2152
@dev_attr_unexport = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i16 128 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* null, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @unexport_store }, align 8, !dbg !2188
@dev_attr_npwm = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @npwm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2190
@.str.3 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"sysfs\00", align 1
@pwm_export_child.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2166
@.str.5 = private unnamed_addr constant [14 x i8] c"&export->lock\00", align 1
@pwm_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @pwm_group, %struct.attribute_group* null], align 16, !dbg !2171
@.str.6 = private unnamed_addr constant [6 x i8] c"pwm%u\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"EXPORT=pwm%u\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pwm_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([6 x %struct.attribute*], [6 x %struct.attribute*]* @pwm_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2173
@pwm_attrs = internal global [6 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_period, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_duty_cycle, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_enable, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_polarity, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_capture, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2175
@dev_attr_period = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @period_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @period_store }, align 8, !dbg !2178
@dev_attr_duty_cycle = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @duty_cycle_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @duty_cycle_store }, align 8, !dbg !2180
@dev_attr_enable = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @enable_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @enable_store }, align 8, !dbg !2182
@dev_attr_polarity = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @polarity_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @polarity_store }, align 8, !dbg !2184
@dev_attr_capture = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @capture_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2186
@.str.9 = private unnamed_addr constant [7 x i8] c"period\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"duty_cycle\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"polarity\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"inversed\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"%u %u\0A\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"unexport\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"npwm\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"UNEXPORT=pwm%u\00", align 1
@pwm_sysfs_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2194
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_pwm_sysfs_init158 to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pwmchip_sysfs_export(%struct.pwm_chip* %chip) #0 !dbg !2204 {
entry:
  %chip.addr = alloca %struct.pwm_chip*, align 8
  %parent = alloca %struct.device*, align 8
  store %struct.pwm_chip* %chip, %struct.pwm_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_chip** %chip.addr, metadata !2207, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.declare(metadata %struct.device** %parent, metadata !2209, metadata !DIExpression()), !dbg !2210
  %0 = load %struct.pwm_chip*, %struct.pwm_chip** %chip.addr, align 8, !dbg !2211
  %dev = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %0, i32 0, i32 0, !dbg !2212
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2212
  %2 = load %struct.pwm_chip*, %struct.pwm_chip** %chip.addr, align 8, !dbg !2213
  %3 = bitcast %struct.pwm_chip* %2 to i8*, !dbg !2213
  %4 = load %struct.pwm_chip*, %struct.pwm_chip** %chip.addr, align 8, !dbg !2214
  %base = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %4, i32 0, i32 2, !dbg !2215
  %5 = load i32, i32* %base, align 8, !dbg !2215
  %call = call %struct.device* (%struct.class*, %struct.device*, i32, i8*, i8*, ...) @device_create(%struct.class* @pwm_class, %struct.device* %1, i32 0, i8* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %5) #9, !dbg !2216
  store %struct.device* %call, %struct.device** %parent, align 8, !dbg !2217
  %6 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2218
  %7 = bitcast %struct.device* %6 to i8*, !dbg !2218
  %call1 = call zeroext i1 @IS_ERR(i8* %7) #9, !dbg !2220
  br i1 %call1, label %if.then, label %if.end, !dbg !2221

if.then:                                          ; preds = %entry
  %8 = load %struct.pwm_chip*, %struct.pwm_chip** %chip.addr, align 8, !dbg !2222
  %dev2 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %8, i32 0, i32 0, !dbg !2222
  %9 = load %struct.device*, %struct.device** %dev2, align 8, !dbg !2222
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %9, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0)) #10, !dbg !2222
  br label %if.end, !dbg !2224

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2225
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local %struct.device* @device_create(%struct.class*, %struct.device*, i32, i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !2226 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2230, metadata !DIExpression()), !dbg !2231
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2232
  %1 = ptrtoint i8* %0 to i64, !dbg !2232
  %2 = inttoptr i64 %1 to i8*, !dbg !2232
  %3 = ptrtoint i8* %2 to i64, !dbg !2232
  %cmp = icmp uge i64 %3, -4095, !dbg !2232
  %lnot = xor i1 %cmp, true, !dbg !2232
  %lnot1 = xor i1 %lnot, true, !dbg !2232
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2232
  %conv = sext i32 %lnot.ext to i64, !dbg !2232
  %tobool = icmp ne i64 %conv, 0, !dbg !2232
  ret i1 %tobool, !dbg !2233
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pwmchip_sysfs_unexport(%struct.pwm_chip* %chip) #0 !dbg !2234 {
entry:
  %chip.addr = alloca %struct.pwm_chip*, align 8
  %parent = alloca %struct.device*, align 8
  %i = alloca i32, align 4
  %pwm = alloca %struct.pwm_device*, align 8
  store %struct.pwm_chip* %chip, %struct.pwm_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_chip** %chip.addr, metadata !2235, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.declare(metadata %struct.device** %parent, metadata !2237, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2239, metadata !DIExpression()), !dbg !2240
  %0 = load %struct.pwm_chip*, %struct.pwm_chip** %chip.addr, align 8, !dbg !2241
  %1 = bitcast %struct.pwm_chip* %0 to i8*, !dbg !2241
  %call = call %struct.device* @class_find_device(%struct.class* @pwm_class, %struct.device* null, i8* %1, i32 (%struct.device*, i8*)* @pwmchip_sysfs_match) #9, !dbg !2242
  store %struct.device* %call, %struct.device** %parent, align 8, !dbg !2243
  %2 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2244
  %tobool = icmp ne %struct.device* %2, null, !dbg !2244
  br i1 %tobool, label %if.end, label %if.then, !dbg !2246

if.then:                                          ; preds = %entry
  br label %return, !dbg !2247

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !2248
  br label %for.cond, !dbg !2250

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !dbg !2251
  %4 = load %struct.pwm_chip*, %struct.pwm_chip** %chip.addr, align 8, !dbg !2253
  %npwm = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %4, i32 0, i32 3, !dbg !2254
  %5 = load i32, i32* %npwm, align 4, !dbg !2254
  %cmp = icmp ult i32 %3, %5, !dbg !2255
  br i1 %cmp, label %for.body, label %for.end, !dbg !2256

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm, metadata !2257, metadata !DIExpression()), !dbg !2259
  %6 = load %struct.pwm_chip*, %struct.pwm_chip** %chip.addr, align 8, !dbg !2260
  %pwms = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %6, i32 0, i32 7, !dbg !2261
  %7 = load %struct.pwm_device*, %struct.pwm_device** %pwms, align 8, !dbg !2261
  %8 = load i32, i32* %i, align 4, !dbg !2262
  %idxprom = zext i32 %8 to i64, !dbg !2260
  %arrayidx = getelementptr %struct.pwm_device, %struct.pwm_device* %7, i64 %idxprom, !dbg !2260
  store %struct.pwm_device* %arrayidx, %struct.pwm_device** %pwm, align 8, !dbg !2259
  %9 = load %struct.pwm_device*, %struct.pwm_device** %pwm, align 8, !dbg !2263
  %flags = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %9, i32 0, i32 1, !dbg !2265
  %call1 = call zeroext i1 @test_bit(i64 2, i64* %flags) #9, !dbg !2266
  br i1 %call1, label %if.then2, label %if.end4, !dbg !2267

if.then2:                                         ; preds = %for.body
  %10 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2268
  %11 = load %struct.pwm_device*, %struct.pwm_device** %pwm, align 8, !dbg !2269
  %call3 = call i32 @pwm_unexport_child(%struct.device* %10, %struct.pwm_device* %11) #9, !dbg !2270
  br label %if.end4, !dbg !2270

if.end4:                                          ; preds = %if.then2, %for.body
  br label %for.inc, !dbg !2271

for.inc:                                          ; preds = %if.end4
  %12 = load i32, i32* %i, align 4, !dbg !2272
  %inc = add i32 %12, 1, !dbg !2272
  store i32 %inc, i32* %i, align 4, !dbg !2272
  br label %for.cond, !dbg !2273, !llvm.loop !2274

for.end:                                          ; preds = %for.cond
  %13 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2276
  call void @put_device(%struct.device* %13) #9, !dbg !2277
  %14 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2278
  call void @device_unregister(%struct.device* %14) #9, !dbg !2279
  br label %return, !dbg !2280

return:                                           ; preds = %for.end, %if.then
  ret void, !dbg !2280
}

; Function Attrs: noredzone
declare dso_local %struct.device* @class_find_device(%struct.class*, %struct.device*, i8*, i32 (%struct.device*, i8*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pwmchip_sysfs_match(%struct.device* %parent, i8* %data) #0 !dbg !2281 {
entry:
  %parent.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !2284, metadata !DIExpression()), !dbg !2285
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2286, metadata !DIExpression()), !dbg !2287
  %0 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !2288
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #9, !dbg !2289
  %1 = load i8*, i8** %data.addr, align 8, !dbg !2290
  %cmp = icmp eq i8* %call, %1, !dbg !2291
  %conv = zext i1 %cmp to i32, !dbg !2291
  ret i32 %conv, !dbg !2292
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !2293 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !2300, metadata !DIExpression()), !dbg !2303
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !2305, metadata !DIExpression()), !dbg !2306
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !2307, metadata !DIExpression()), !dbg !2308
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !2309, metadata !DIExpression()), !dbg !2311
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !2313, metadata !DIExpression()), !dbg !2314
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !2315, metadata !DIExpression()), !dbg !2323
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2325, metadata !DIExpression()), !dbg !2326
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !2327, metadata !DIExpression()), !dbg !2328
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !2329, metadata !DIExpression()), !dbg !2330
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !2331
  %1 = load i64, i64* %nr.addr, align 8, !dbg !2332
  %div = sdiv i64 %1, 64, !dbg !2332
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !2333
  %2 = bitcast i64* %add.ptr to i8*, !dbg !2331
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !2334
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2335
  %conv.i = trunc i64 %4 to i32, !dbg !2335
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #11, !dbg !2336
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !2337
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !2337
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #11, !dbg !2337
  %7 = load i64, i64* %nr.addr, align 8, !dbg !2338
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !2338
  br i1 %8, label %cond.true, label %cond.false, !dbg !2338

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !2338
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !2338
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !2339
  %and.i = and i64 %11, 63, !dbg !2340
  %shl.i = shl i64 1, %and.i, !dbg !2341
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !2342
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !2343
  %shr.i = ashr i64 %13, 6, !dbg !2344
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !2342
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !2342
  %and1.i = and i64 %shl.i, %14, !dbg !2345
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !2346
  %conv = zext i1 %cmp.i to i32, !dbg !2338
  br label %cond.end, !dbg !2338

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !2338
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !2338
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !2347
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !2348
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #12, !dbg !2349, !srcloc !2350
  store i8 %19, i8* %oldbit.i, align 1, !dbg !2349
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !2351
  %tobool.i = trunc i8 %20 to i1, !dbg !2351
  %conv2 = zext i1 %tobool.i to i32, !dbg !2338
  br label %cond.end, !dbg !2338

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !2338
  %tobool = icmp ne i32 %cond, 0, !dbg !2338
  ret i1 %tobool, !dbg !2352
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pwm_unexport_child(%struct.device* %parent, %struct.pwm_device* %pwm) #0 !dbg !2353 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca %struct.device*, align 8
  %pwm.addr = alloca %struct.pwm_device*, align 8
  %child = alloca %struct.device*, align 8
  %pwm_prop = alloca [2 x i8*], align 16
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !2354, metadata !DIExpression()), !dbg !2355
  store %struct.pwm_device* %pwm, %struct.pwm_device** %pwm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm.addr, metadata !2356, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.declare(metadata %struct.device** %child, metadata !2358, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.declare(metadata [2 x i8*]* %pwm_prop, metadata !2360, metadata !DIExpression()), !dbg !2362
  %0 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2363
  %flags = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %0, i32 0, i32 1, !dbg !2365
  %call = call zeroext i1 @test_and_clear_bit(i64 2, i64* %flags) #9, !dbg !2366
  br i1 %call, label %if.end, label %if.then, !dbg !2367

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !2368
  br label %return, !dbg !2368

if.end:                                           ; preds = %entry
  %1 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !2369
  %2 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2370
  %3 = bitcast %struct.pwm_device* %2 to i8*, !dbg !2370
  %call1 = call %struct.device* @device_find_child(%struct.device* %1, i8* %3, i32 (%struct.device*, i8*)* @pwm_unexport_match) #9, !dbg !2371
  store %struct.device* %call1, %struct.device** %child, align 8, !dbg !2372
  %4 = load %struct.device*, %struct.device** %child, align 8, !dbg !2373
  %tobool = icmp ne %struct.device* %4, null, !dbg !2373
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !2375

if.then2:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !2376
  br label %return, !dbg !2376

if.end3:                                          ; preds = %if.end
  %5 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2377
  %hwpwm = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %5, i32 0, i32 2, !dbg !2378
  %6 = load i32, i32* %hwpwm, align 8, !dbg !2378
  %call4 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 3264, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i32 %6) #9, !dbg !2379
  %arrayidx = getelementptr [2 x i8*], [2 x i8*]* %pwm_prop, i64 0, i64 0, !dbg !2380
  store i8* %call4, i8** %arrayidx, align 16, !dbg !2381
  %arrayidx5 = getelementptr [2 x i8*], [2 x i8*]* %pwm_prop, i64 0, i64 1, !dbg !2382
  store i8* null, i8** %arrayidx5, align 8, !dbg !2383
  %7 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !2384
  %kobj = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0, !dbg !2385
  %arraydecay = getelementptr inbounds [2 x i8*], [2 x i8*]* %pwm_prop, i64 0, i64 0, !dbg !2386
  %call6 = call i32 @kobject_uevent_env(%struct.kobject* %kobj, i32 2, i8** %arraydecay) #9, !dbg !2387
  %arrayidx7 = getelementptr [2 x i8*], [2 x i8*]* %pwm_prop, i64 0, i64 0, !dbg !2388
  %8 = load i8*, i8** %arrayidx7, align 16, !dbg !2388
  call void @kfree(i8* %8) #9, !dbg !2389
  %9 = load %struct.device*, %struct.device** %child, align 8, !dbg !2390
  call void @put_device(%struct.device* %9) #9, !dbg !2391
  %10 = load %struct.device*, %struct.device** %child, align 8, !dbg !2392
  call void @device_unregister(%struct.device* %10) #9, !dbg !2393
  %11 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2394
  call void @pwm_put(%struct.pwm_device* %11) #9, !dbg !2395
  store i32 0, i32* %retval, align 4, !dbg !2396
  br label %return, !dbg !2396

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !2397
  ret i32 %12, !dbg !2397
}

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @device_unregister(%struct.device*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @pwm_sysfs_init() #4 section ".init.text" !dbg !2196 {
entry:
  %tmp = alloca i32, align 4
  %call = call i32 @__class_register(%struct.class* @pwm_class, %struct.lock_class_key* @pwm_sysfs_init.__key) #9, !dbg !2398
  store i32 %call, i32* %tmp, align 4, !dbg !2398
  %0 = load i32, i32* %tmp, align 4, !dbg !2398
  ret i32 %0, !dbg !2400
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @export_store(%struct.device* %parent, %struct.device_attribute* %attr, i8* %buf, i64 %len) #0 !dbg !2401 {
entry:
  %retval = alloca i64, align 8
  %parent.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %chip = alloca %struct.pwm_chip*, align 8
  %pwm = alloca %struct.pwm_device*, align 8
  %hwpwm = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !2402, metadata !DIExpression()), !dbg !2403
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2404, metadata !DIExpression()), !dbg !2405
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2406, metadata !DIExpression()), !dbg !2407
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !2408, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.declare(metadata %struct.pwm_chip** %chip, metadata !2410, metadata !DIExpression()), !dbg !2411
  %0 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !2412
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #9, !dbg !2413
  %1 = bitcast i8* %call to %struct.pwm_chip*, !dbg !2413
  store %struct.pwm_chip* %1, %struct.pwm_chip** %chip, align 8, !dbg !2411
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm, metadata !2414, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.declare(metadata i32* %hwpwm, metadata !2416, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2418, metadata !DIExpression()), !dbg !2419
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !2420
  %call1 = call i32 @kstrtouint(i8* %2, i32 0, i32* %hwpwm) #9, !dbg !2421
  store i32 %call1, i32* %ret, align 4, !dbg !2422
  %3 = load i32, i32* %ret, align 4, !dbg !2423
  %cmp = icmp slt i32 %3, 0, !dbg !2425
  br i1 %cmp, label %if.then, label %if.end, !dbg !2426

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4, !dbg !2427
  %conv = sext i32 %4 to i64, !dbg !2427
  store i64 %conv, i64* %retval, align 8, !dbg !2428
  br label %return, !dbg !2428

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %hwpwm, align 4, !dbg !2429
  %6 = load %struct.pwm_chip*, %struct.pwm_chip** %chip, align 8, !dbg !2431
  %npwm = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %6, i32 0, i32 3, !dbg !2432
  %7 = load i32, i32* %npwm, align 4, !dbg !2432
  %cmp2 = icmp uge i32 %5, %7, !dbg !2433
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !2434

if.then4:                                         ; preds = %if.end
  store i64 -19, i64* %retval, align 8, !dbg !2435
  br label %return, !dbg !2435

if.end5:                                          ; preds = %if.end
  %8 = load %struct.pwm_chip*, %struct.pwm_chip** %chip, align 8, !dbg !2436
  %9 = load i32, i32* %hwpwm, align 4, !dbg !2437
  %call6 = call %struct.pwm_device* @pwm_request_from_chip(%struct.pwm_chip* %8, i32 %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !2438
  store %struct.pwm_device* %call6, %struct.pwm_device** %pwm, align 8, !dbg !2439
  %10 = load %struct.pwm_device*, %struct.pwm_device** %pwm, align 8, !dbg !2440
  %11 = bitcast %struct.pwm_device* %10 to i8*, !dbg !2440
  %call7 = call zeroext i1 @IS_ERR(i8* %11) #9, !dbg !2442
  br i1 %call7, label %if.then8, label %if.end10, !dbg !2443

if.then8:                                         ; preds = %if.end5
  %12 = load %struct.pwm_device*, %struct.pwm_device** %pwm, align 8, !dbg !2444
  %13 = bitcast %struct.pwm_device* %12 to i8*, !dbg !2444
  %call9 = call i64 @PTR_ERR(i8* %13) #9, !dbg !2445
  store i64 %call9, i64* %retval, align 8, !dbg !2446
  br label %return, !dbg !2446

if.end10:                                         ; preds = %if.end5
  %14 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !2447
  %15 = load %struct.pwm_device*, %struct.pwm_device** %pwm, align 8, !dbg !2448
  %call11 = call i32 @pwm_export_child(%struct.device* %14, %struct.pwm_device* %15) #9, !dbg !2449
  store i32 %call11, i32* %ret, align 4, !dbg !2450
  %16 = load i32, i32* %ret, align 4, !dbg !2451
  %cmp12 = icmp slt i32 %16, 0, !dbg !2453
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !2454

if.then14:                                        ; preds = %if.end10
  %17 = load %struct.pwm_device*, %struct.pwm_device** %pwm, align 8, !dbg !2455
  call void @pwm_put(%struct.pwm_device* %17) #9, !dbg !2456
  br label %if.end15, !dbg !2456

if.end15:                                         ; preds = %if.then14, %if.end10
  %18 = load i32, i32* %ret, align 4, !dbg !2457
  %tobool = icmp ne i32 %18, 0, !dbg !2457
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2457

cond.true:                                        ; preds = %if.end15
  %conv16 = sext i32 %18 to i64, !dbg !2457
  br label %cond.end, !dbg !2457

cond.false:                                       ; preds = %if.end15
  %19 = load i64, i64* %len.addr, align 8, !dbg !2458
  br label %cond.end, !dbg !2457

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv16, %cond.true ], [ %19, %cond.false ], !dbg !2457
  store i64 %cond, i64* %retval, align 8, !dbg !2459
  br label %return, !dbg !2459

return:                                           ; preds = %cond.end, %if.then8, %if.then4, %if.then
  %20 = load i64, i64* %retval, align 8, !dbg !2460
  ret i64 %20, !dbg !2460
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !2461 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2464, metadata !DIExpression()), !dbg !2465
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2466
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !2467
  %1 = load i8*, i8** %driver_data, align 8, !dbg !2467
  ret i8* %1, !dbg !2468
}

; Function Attrs: noredzone
declare dso_local i32 @kstrtouint(i8*, i32, i32*) #2

; Function Attrs: noredzone
declare dso_local %struct.pwm_device* @pwm_request_from_chip(%struct.pwm_chip*, i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !2469 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2472, metadata !DIExpression()), !dbg !2473
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2474
  %1 = ptrtoint i8* %0 to i64, !dbg !2475
  ret i64 %1, !dbg !2476
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pwm_export_child(%struct.device* %parent, %struct.pwm_device* %pwm) #0 !dbg !2168 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca %struct.device*, align 8
  %pwm.addr = alloca %struct.pwm_device*, align 8
  %export = alloca %struct.pwm_export*, align 8
  %pwm_prop = alloca [2 x i8*], align 16
  %ret = alloca i32, align 4
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !2477, metadata !DIExpression()), !dbg !2478
  store %struct.pwm_device* %pwm, %struct.pwm_device** %pwm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm.addr, metadata !2479, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.declare(metadata %struct.pwm_export** %export, metadata !2481, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.declare(metadata [2 x i8*]* %pwm_prop, metadata !2483, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2485, metadata !DIExpression()), !dbg !2486
  %0 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2487
  %flags = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %0, i32 0, i32 1, !dbg !2489
  %call = call zeroext i1 @test_and_set_bit(i64 2, i64* %flags) #9, !dbg !2490
  br i1 %call, label %if.then, label %if.end, !dbg !2491

if.then:                                          ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !2492
  br label %return, !dbg !2492

if.end:                                           ; preds = %entry
  %call1 = call i8* @kzalloc(i64 752, i32 3264) #9, !dbg !2493
  %1 = bitcast i8* %call1 to %struct.pwm_export*, !dbg !2493
  store %struct.pwm_export* %1, %struct.pwm_export** %export, align 8, !dbg !2494
  %2 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !2495
  %tobool = icmp ne %struct.pwm_export* %2, null, !dbg !2495
  br i1 %tobool, label %if.end4, label %if.then2, !dbg !2497

if.then2:                                         ; preds = %if.end
  %3 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2498
  %flags3 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %3, i32 0, i32 1, !dbg !2500
  call void @clear_bit(i64 2, i64* %flags3) #9, !dbg !2501
  store i32 -12, i32* %retval, align 4, !dbg !2502
  br label %return, !dbg !2502

if.end4:                                          ; preds = %if.end
  %4 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2503
  %5 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !2504
  %pwm5 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %5, i32 0, i32 1, !dbg !2505
  store %struct.pwm_device* %4, %struct.pwm_device** %pwm5, align 8, !dbg !2506
  br label %do.body, !dbg !2507

do.body:                                          ; preds = %if.end4
  %6 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !2508
  %lock = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %6, i32 0, i32 2, !dbg !2508
  call void @__mutex_init(%struct.mutex* %lock, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), %struct.lock_class_key* @pwm_export_child.__key) #9, !dbg !2508
  br label %do.end, !dbg !2508

do.end:                                           ; preds = %do.body
  %7 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !2510
  %child = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %7, i32 0, i32 0, !dbg !2511
  %release = getelementptr inbounds %struct.device, %struct.device* %child, i32 0, i32 31, !dbg !2512
  store void (%struct.device*)* @pwm_export_release, void (%struct.device*)** %release, align 8, !dbg !2513
  %8 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !2514
  %9 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !2515
  %child6 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %9, i32 0, i32 0, !dbg !2516
  %parent7 = getelementptr inbounds %struct.device, %struct.device* %child6, i32 0, i32 1, !dbg !2517
  store %struct.device* %8, %struct.device** %parent7, align 8, !dbg !2518
  %10 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !2519
  %child8 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %10, i32 0, i32 0, !dbg !2520
  %devt = getelementptr inbounds %struct.device, %struct.device* %child8, i32 0, i32 25, !dbg !2521
  store i32 0, i32* %devt, align 8, !dbg !2522
  %11 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !2523
  %child9 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %11, i32 0, i32 0, !dbg !2524
  %groups = getelementptr inbounds %struct.device, %struct.device* %child9, i32 0, i32 30, !dbg !2525
  store %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @pwm_groups, i64 0, i64 0), %struct.attribute_group*** %groups, align 8, !dbg !2526
  %12 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !2527
  %child10 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %12, i32 0, i32 0, !dbg !2528
  %13 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2529
  %hwpwm = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %13, i32 0, i32 2, !dbg !2530
  %14 = load i32, i32* %hwpwm, align 8, !dbg !2530
  %call11 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %child10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %14) #9, !dbg !2531
  %15 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !2532
  %child12 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %15, i32 0, i32 0, !dbg !2533
  %call13 = call i32 @device_register(%struct.device* %child12) #9, !dbg !2534
  store i32 %call13, i32* %ret, align 4, !dbg !2535
  %16 = load i32, i32* %ret, align 4, !dbg !2536
  %tobool14 = icmp ne i32 %16, 0, !dbg !2536
  br i1 %tobool14, label %if.then15, label %if.end18, !dbg !2538

if.then15:                                        ; preds = %do.end
  %17 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2539
  %flags16 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %17, i32 0, i32 1, !dbg !2541
  call void @clear_bit(i64 2, i64* %flags16) #9, !dbg !2542
  %18 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !2543
  %child17 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %18, i32 0, i32 0, !dbg !2544
  call void @put_device(%struct.device* %child17) #9, !dbg !2545
  store %struct.pwm_export* null, %struct.pwm_export** %export, align 8, !dbg !2546
  %19 = load i32, i32* %ret, align 4, !dbg !2547
  store i32 %19, i32* %retval, align 4, !dbg !2548
  br label %return, !dbg !2548

if.end18:                                         ; preds = %do.end
  %20 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !2549
  %hwpwm19 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %20, i32 0, i32 2, !dbg !2550
  %21 = load i32, i32* %hwpwm19, align 8, !dbg !2550
  %call20 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 3264, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %21) #9, !dbg !2551
  %arrayidx = getelementptr [2 x i8*], [2 x i8*]* %pwm_prop, i64 0, i64 0, !dbg !2552
  store i8* %call20, i8** %arrayidx, align 16, !dbg !2553
  %arrayidx21 = getelementptr [2 x i8*], [2 x i8*]* %pwm_prop, i64 0, i64 1, !dbg !2554
  store i8* null, i8** %arrayidx21, align 8, !dbg !2555
  %22 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !2556
  %kobj = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0, !dbg !2557
  %arraydecay = getelementptr inbounds [2 x i8*], [2 x i8*]* %pwm_prop, i64 0, i64 0, !dbg !2558
  %call22 = call i32 @kobject_uevent_env(%struct.kobject* %kobj, i32 2, i8** %arraydecay) #9, !dbg !2559
  %arrayidx23 = getelementptr [2 x i8*], [2 x i8*]* %pwm_prop, i64 0, i64 0, !dbg !2560
  %23 = load i8*, i8** %arrayidx23, align 16, !dbg !2560
  call void @kfree(i8* %23) #9, !dbg !2561
  store i32 0, i32* %retval, align 4, !dbg !2562
  br label %return, !dbg !2562

return:                                           ; preds = %if.end18, %if.then15, %if.then2, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !2563
  ret i32 %24, !dbg !2563
}

; Function Attrs: noredzone
declare dso_local void @pwm_put(%struct.pwm_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_and_set_bit(i64 %nr, i64* %addr) #0 !dbg !2564 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !2569, metadata !DIExpression()), !dbg !2571
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !2573, metadata !DIExpression()), !dbg !2574
  %c.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i, metadata !2575, metadata !DIExpression()), !dbg !2577
  %tmp.i = alloca i8, align 1
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !2578, metadata !DIExpression()), !dbg !2580
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2582, metadata !DIExpression()), !dbg !2583
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !2584, metadata !DIExpression()), !dbg !2585
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !2586, metadata !DIExpression()), !dbg !2587
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !2588
  %1 = load i64, i64* %nr.addr, align 8, !dbg !2589
  %div = sdiv i64 %1, 64, !dbg !2589
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !2590
  %2 = bitcast i64* %add.ptr to i8*, !dbg !2588
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !2591
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2592
  %conv.i = trunc i64 %4 to i32, !dbg !2592
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !2593
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !2594
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !2594
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #11, !dbg !2594
  %7 = load i64, i64* %nr.addr, align 8, !dbg !2595
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !2596
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !2577
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !2577
  %11 = call i8 asm sideeffect " btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64* %9) #12, !dbg !2577, !srcloc !2597
  store i8 %11, i8* %c.i, align 1, !dbg !2577
  %12 = load i8, i8* %c.i, align 1, !dbg !2577
  %tobool.i = trunc i8 %12 to i1, !dbg !2577
  %frombool.i = zext i1 %tobool.i to i8, !dbg !2577
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !2577
  %13 = load i8, i8* %tmp.i, align 1, !dbg !2577
  %tobool1.i = trunc i8 %13 to i1, !dbg !2577
  ret i1 %tobool1.i, !dbg !2598
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2599 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2602, metadata !DIExpression()), !dbg !2606
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2612, metadata !DIExpression()), !dbg !2613
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2614, metadata !DIExpression()), !dbg !2615
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2616, metadata !DIExpression()), !dbg !2617
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2618, metadata !DIExpression()), !dbg !2622
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2624, metadata !DIExpression()), !dbg !2628
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2630, metadata !DIExpression()), !dbg !2634
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2639, metadata !DIExpression()), !dbg !2640
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2641, metadata !DIExpression()), !dbg !2642
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2643, metadata !DIExpression()), !dbg !2644
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2645, metadata !DIExpression()), !dbg !2646
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2647, metadata !DIExpression()), !dbg !2648
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2649, metadata !DIExpression()), !dbg !2650
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2651, metadata !DIExpression()), !dbg !2652
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2653, metadata !DIExpression()), !dbg !2654
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2655, metadata !DIExpression()), !dbg !2656
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2657, metadata !DIExpression()), !dbg !2658
  %0 = load i64, i64* %size.addr, align 8, !dbg !2659
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2660
  %or = or i32 %1, 256, !dbg !2661
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2662
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #12, !dbg !2663
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2664

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2665
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2666
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2667

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2668
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2669
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2670
  %call.i.i = call i32 @get_order(i64 %7) #13, !dbg !2671
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2648
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2672
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2673
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2674
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2675
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2676
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2677
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !2678
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2678
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2678
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2678
  call void @llvm.assume(i1 %maskcond.i.i.i) #12, !dbg !2678
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2679
  br label %kmalloc.exit, !dbg !2679

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2680
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2681
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2681
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2683

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2684
  br label %kmalloc_index.exit.i, !dbg !2684

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2685
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2687
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2688

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2689
  br label %kmalloc_index.exit.i, !dbg !2689

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2690
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2692
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2693

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2694
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2695
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2696

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2697
  br label %kmalloc_index.exit.i, !dbg !2697

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2698
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2700
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2701

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2702
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2703
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2704

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2705
  br label %kmalloc_index.exit.i, !dbg !2705

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2706
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2708
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2709

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2710
  br label %kmalloc_index.exit.i, !dbg !2710

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2711
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2713
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2714

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2715
  br label %kmalloc_index.exit.i, !dbg !2715

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2716
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2718
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2719

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2720
  br label %kmalloc_index.exit.i, !dbg !2720

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2721
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2723
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2724

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2725
  br label %kmalloc_index.exit.i, !dbg !2725

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2726
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2728
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2729

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2730
  br label %kmalloc_index.exit.i, !dbg !2730

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2731
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !2733
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2734

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2735
  br label %kmalloc_index.exit.i, !dbg !2735

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2736
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !2738
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2739

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2740
  br label %kmalloc_index.exit.i, !dbg !2740

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2741
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !2743
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2744

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2745
  br label %kmalloc_index.exit.i, !dbg !2745

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2746
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !2748
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2749

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2750
  br label %kmalloc_index.exit.i, !dbg !2750

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2751
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !2753
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2754

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2755
  br label %kmalloc_index.exit.i, !dbg !2755

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2756
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2758
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2759

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2760
  br label %kmalloc_index.exit.i, !dbg !2760

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2761
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2763
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2764

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2765
  br label %kmalloc_index.exit.i, !dbg !2765

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2766
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2768
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2769

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2770
  br label %kmalloc_index.exit.i, !dbg !2770

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2771
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2773
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2774

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2775
  br label %kmalloc_index.exit.i, !dbg !2775

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2776
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2778
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2779

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2780
  br label %kmalloc_index.exit.i, !dbg !2780

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2781
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2783
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2784

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2785
  br label %kmalloc_index.exit.i, !dbg !2785

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2786
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2788
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2789

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2790
  br label %kmalloc_index.exit.i, !dbg !2790

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2791
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2793
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2794

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2795
  br label %kmalloc_index.exit.i, !dbg !2795

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2796
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !2798
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2799

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2800
  br label %kmalloc_index.exit.i, !dbg !2800

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2801
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !2803
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2804

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2805
  br label %kmalloc_index.exit.i, !dbg !2805

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2806
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !2808
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2809

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2810
  br label %kmalloc_index.exit.i, !dbg !2810

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2811
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !2813
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2814

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2815
  br label %kmalloc_index.exit.i, !dbg !2815

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2816
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !2818
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2819

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2820
  br label %kmalloc_index.exit.i, !dbg !2820

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2821
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2823
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2824

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2825
  br label %kmalloc_index.exit.i, !dbg !2825

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 382, i32 0, i64 12) #12, !dbg !2826, !srcloc !2829
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #12, !dbg !2830, !srcloc !2833
  unreachable, !dbg !2834

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2835
  store i32 %45, i32* %index.i, align 4, !dbg !2836
  %46 = load i32, i32* %index.i, align 4, !dbg !2837
  %tobool.i = icmp ne i32 %46, 0, !dbg !2837
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2839

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2840
  br label %kmalloc.exit, !dbg !2840

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2841
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2842
  %and.i.i = and i32 %48, 17, !dbg !2842
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2842
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2842
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2842
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2842
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2844

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2845
  br label %kmalloc_type.exit.i, !dbg !2845

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2846
  %and2.i.i = and i32 %49, 1, !dbg !2847
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2846
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2846
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2846
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2848
  br label %kmalloc_type.exit.i, !dbg !2848

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2849
  %idxprom.i = zext i32 %51 to i64, !dbg !2850
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2850
  %52 = load i32, i32* %index.i, align 4, !dbg !2851
  %idxprom6.i = zext i32 %52 to i64, !dbg !2850
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2850
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2850
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2852
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2853
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2854
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2855
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !2856
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2856
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2856
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2856
  call void @llvm.assume(i1 %maskcond.i.i) #12, !dbg !2856
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2617
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2857
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2858
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2859
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2860
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !2861
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2862
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2863
  store i8* %62, i8** %retval.i, align 8, !dbg !2864
  br label %kmalloc.exit, !dbg !2864

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2865
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2866
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !2867
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2867
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2867
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2867
  call void @llvm.assume(i1 %maskcond.i) #12, !dbg !2867
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2868
  br label %kmalloc.exit, !dbg !2868

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2869
  ret i8* %65, !dbg !2870
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #0 !dbg !2871 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !2874, metadata !DIExpression()), !dbg !2876
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !2878, metadata !DIExpression()), !dbg !2879
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !2880, metadata !DIExpression()), !dbg !2882
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2884, metadata !DIExpression()), !dbg !2885
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !2886, metadata !DIExpression()), !dbg !2887
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !2888, metadata !DIExpression()), !dbg !2889
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !2890
  %1 = load i64, i64* %nr.addr, align 8, !dbg !2891
  %div = sdiv i64 %1, 64, !dbg !2891
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !2892
  %2 = bitcast i64* %add.ptr to i8*, !dbg !2890
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !2893
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2894
  %conv.i = trunc i64 %4 to i32, !dbg !2894
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !2895
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !2896
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !2896
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #11, !dbg !2896
  %7 = load i64, i64* %nr.addr, align 8, !dbg !2897
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !2898
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !2899
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #12, !dbg !2901
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !2902

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !2903
  %12 = bitcast i64* %11 to i8*, !dbg !2903
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !2903
  %shr.i = ashr i64 %13, 3, !dbg !2903
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !2903
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !2905
  %and.i = and i64 %14, 7, !dbg !2905
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !2905
  %shl.i = shl i32 1, %sh_prom.i, !dbg !2905
  %neg.i = xor i32 %shl.i, -1, !dbg !2906
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #12, !dbg !2907, !srcloc !2908
  br label %arch_clear_bit.exit, !dbg !2909

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !2910
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !2912
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #12, !dbg !2913, !srcloc !2914
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !2915
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pwm_export_release(%struct.device* %child) #0 !dbg !2916 {
entry:
  %child.addr = alloca %struct.device*, align 8
  %export = alloca %struct.pwm_export*, align 8
  store %struct.device* %child, %struct.device** %child.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %child.addr, metadata !2917, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.declare(metadata %struct.pwm_export** %export, metadata !2919, metadata !DIExpression()), !dbg !2920
  %0 = load %struct.device*, %struct.device** %child.addr, align 8, !dbg !2921
  %call = call %struct.pwm_export* @child_to_pwm_export(%struct.device* %0) #9, !dbg !2922
  store %struct.pwm_export* %call, %struct.pwm_export** %export, align 8, !dbg !2920
  %1 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !2923
  %2 = bitcast %struct.pwm_export* %1 to i8*, !dbg !2923
  call void @kfree(i8* %2) #9, !dbg !2924
  ret void, !dbg !2925
}

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @device_register(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kasprintf(i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @kobject_uevent_env(%struct.kobject*, i32, i8**) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !2926 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !2930, metadata !DIExpression()), !dbg !2931
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !2932, metadata !DIExpression()), !dbg !2933
  ret i1 true, !dbg !2934
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !2935 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2939, metadata !DIExpression()), !dbg !2940
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2941, metadata !DIExpression()), !dbg !2942
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !2943, metadata !DIExpression()), !dbg !2944
  ret void, !dbg !2945
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !2946 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2950, metadata !DIExpression()), !dbg !2954
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2956, metadata !DIExpression()), !dbg !2957
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2958, metadata !DIExpression()), !dbg !2959
  %0 = load i64, i64* %size.addr, align 8, !dbg !2960
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2962
  br i1 %1, label %if.then, label %if.end447, !dbg !2963

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !2964
  %tobool = icmp ne i64 %2, 0, !dbg !2964
  br i1 %tobool, label %if.end, label %if.then1, !dbg !2967

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !2968
  br label %return, !dbg !2968

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !2969
  %cmp = icmp ult i64 %3, 4096, !dbg !2971
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2972

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2973
  br label %return, !dbg !2973

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub = sub i64 %4, 1, !dbg !2974
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !2974
  br i1 %5, label %cond.true, label %cond.false442, !dbg !2974

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub4 = sub i64 %6, 1, !dbg !2974
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !2974
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !2974

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub6 = sub i64 %8, 1, !dbg !2974
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !2974
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !2974

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !2974

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub9 = sub i64 %9, 1, !dbg !2974
  %and = and i64 %sub9, -9223372036854775808, !dbg !2974
  %tobool10 = icmp ne i64 %and, 0, !dbg !2974
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !2974

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !2974

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub13 = sub i64 %10, 1, !dbg !2974
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !2974
  %tobool15 = icmp ne i64 %and14, 0, !dbg !2974
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !2974

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !2974

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub18 = sub i64 %11, 1, !dbg !2974
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !2974
  %tobool20 = icmp ne i64 %and19, 0, !dbg !2974
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !2974

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !2974

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub23 = sub i64 %12, 1, !dbg !2974
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !2974
  %tobool25 = icmp ne i64 %and24, 0, !dbg !2974
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !2974

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !2974

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub28 = sub i64 %13, 1, !dbg !2974
  %and29 = and i64 %sub28, 576460752303423488, !dbg !2974
  %tobool30 = icmp ne i64 %and29, 0, !dbg !2974
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !2974

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !2974

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub33 = sub i64 %14, 1, !dbg !2974
  %and34 = and i64 %sub33, 288230376151711744, !dbg !2974
  %tobool35 = icmp ne i64 %and34, 0, !dbg !2974
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !2974

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !2974

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub38 = sub i64 %15, 1, !dbg !2974
  %and39 = and i64 %sub38, 144115188075855872, !dbg !2974
  %tobool40 = icmp ne i64 %and39, 0, !dbg !2974
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !2974

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !2974

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub43 = sub i64 %16, 1, !dbg !2974
  %and44 = and i64 %sub43, 72057594037927936, !dbg !2974
  %tobool45 = icmp ne i64 %and44, 0, !dbg !2974
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !2974

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !2974

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub48 = sub i64 %17, 1, !dbg !2974
  %and49 = and i64 %sub48, 36028797018963968, !dbg !2974
  %tobool50 = icmp ne i64 %and49, 0, !dbg !2974
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !2974

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !2974

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub53 = sub i64 %18, 1, !dbg !2974
  %and54 = and i64 %sub53, 18014398509481984, !dbg !2974
  %tobool55 = icmp ne i64 %and54, 0, !dbg !2974
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !2974

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !2974

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub58 = sub i64 %19, 1, !dbg !2974
  %and59 = and i64 %sub58, 9007199254740992, !dbg !2974
  %tobool60 = icmp ne i64 %and59, 0, !dbg !2974
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !2974

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !2974

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub63 = sub i64 %20, 1, !dbg !2974
  %and64 = and i64 %sub63, 4503599627370496, !dbg !2974
  %tobool65 = icmp ne i64 %and64, 0, !dbg !2974
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !2974

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !2974

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub68 = sub i64 %21, 1, !dbg !2974
  %and69 = and i64 %sub68, 2251799813685248, !dbg !2974
  %tobool70 = icmp ne i64 %and69, 0, !dbg !2974
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !2974

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !2974

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub73 = sub i64 %22, 1, !dbg !2974
  %and74 = and i64 %sub73, 1125899906842624, !dbg !2974
  %tobool75 = icmp ne i64 %and74, 0, !dbg !2974
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !2974

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !2974

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub78 = sub i64 %23, 1, !dbg !2974
  %and79 = and i64 %sub78, 562949953421312, !dbg !2974
  %tobool80 = icmp ne i64 %and79, 0, !dbg !2974
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !2974

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !2974

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub83 = sub i64 %24, 1, !dbg !2974
  %and84 = and i64 %sub83, 281474976710656, !dbg !2974
  %tobool85 = icmp ne i64 %and84, 0, !dbg !2974
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !2974

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !2974

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub88 = sub i64 %25, 1, !dbg !2974
  %and89 = and i64 %sub88, 140737488355328, !dbg !2974
  %tobool90 = icmp ne i64 %and89, 0, !dbg !2974
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !2974

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !2974

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub93 = sub i64 %26, 1, !dbg !2974
  %and94 = and i64 %sub93, 70368744177664, !dbg !2974
  %tobool95 = icmp ne i64 %and94, 0, !dbg !2974
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !2974

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !2974

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub98 = sub i64 %27, 1, !dbg !2974
  %and99 = and i64 %sub98, 35184372088832, !dbg !2974
  %tobool100 = icmp ne i64 %and99, 0, !dbg !2974
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !2974

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !2974

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub103 = sub i64 %28, 1, !dbg !2974
  %and104 = and i64 %sub103, 17592186044416, !dbg !2974
  %tobool105 = icmp ne i64 %and104, 0, !dbg !2974
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !2974

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !2974

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub108 = sub i64 %29, 1, !dbg !2974
  %and109 = and i64 %sub108, 8796093022208, !dbg !2974
  %tobool110 = icmp ne i64 %and109, 0, !dbg !2974
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !2974

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !2974

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub113 = sub i64 %30, 1, !dbg !2974
  %and114 = and i64 %sub113, 4398046511104, !dbg !2974
  %tobool115 = icmp ne i64 %and114, 0, !dbg !2974
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !2974

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !2974

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub118 = sub i64 %31, 1, !dbg !2974
  %and119 = and i64 %sub118, 2199023255552, !dbg !2974
  %tobool120 = icmp ne i64 %and119, 0, !dbg !2974
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !2974

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !2974

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub123 = sub i64 %32, 1, !dbg !2974
  %and124 = and i64 %sub123, 1099511627776, !dbg !2974
  %tobool125 = icmp ne i64 %and124, 0, !dbg !2974
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !2974

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !2974

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub128 = sub i64 %33, 1, !dbg !2974
  %and129 = and i64 %sub128, 549755813888, !dbg !2974
  %tobool130 = icmp ne i64 %and129, 0, !dbg !2974
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !2974

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !2974

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub133 = sub i64 %34, 1, !dbg !2974
  %and134 = and i64 %sub133, 274877906944, !dbg !2974
  %tobool135 = icmp ne i64 %and134, 0, !dbg !2974
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !2974

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !2974

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub138 = sub i64 %35, 1, !dbg !2974
  %and139 = and i64 %sub138, 137438953472, !dbg !2974
  %tobool140 = icmp ne i64 %and139, 0, !dbg !2974
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !2974

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !2974

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub143 = sub i64 %36, 1, !dbg !2974
  %and144 = and i64 %sub143, 68719476736, !dbg !2974
  %tobool145 = icmp ne i64 %and144, 0, !dbg !2974
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !2974

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !2974

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub148 = sub i64 %37, 1, !dbg !2974
  %and149 = and i64 %sub148, 34359738368, !dbg !2974
  %tobool150 = icmp ne i64 %and149, 0, !dbg !2974
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !2974

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !2974

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub153 = sub i64 %38, 1, !dbg !2974
  %and154 = and i64 %sub153, 17179869184, !dbg !2974
  %tobool155 = icmp ne i64 %and154, 0, !dbg !2974
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !2974

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !2974

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub158 = sub i64 %39, 1, !dbg !2974
  %and159 = and i64 %sub158, 8589934592, !dbg !2974
  %tobool160 = icmp ne i64 %and159, 0, !dbg !2974
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !2974

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !2974

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub163 = sub i64 %40, 1, !dbg !2974
  %and164 = and i64 %sub163, 4294967296, !dbg !2974
  %tobool165 = icmp ne i64 %and164, 0, !dbg !2974
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !2974

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !2974

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub168 = sub i64 %41, 1, !dbg !2974
  %and169 = and i64 %sub168, 2147483648, !dbg !2974
  %tobool170 = icmp ne i64 %and169, 0, !dbg !2974
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !2974

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !2974

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub173 = sub i64 %42, 1, !dbg !2974
  %and174 = and i64 %sub173, 1073741824, !dbg !2974
  %tobool175 = icmp ne i64 %and174, 0, !dbg !2974
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !2974

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !2974

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub178 = sub i64 %43, 1, !dbg !2974
  %and179 = and i64 %sub178, 536870912, !dbg !2974
  %tobool180 = icmp ne i64 %and179, 0, !dbg !2974
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !2974

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !2974

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub183 = sub i64 %44, 1, !dbg !2974
  %and184 = and i64 %sub183, 268435456, !dbg !2974
  %tobool185 = icmp ne i64 %and184, 0, !dbg !2974
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !2974

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !2974

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub188 = sub i64 %45, 1, !dbg !2974
  %and189 = and i64 %sub188, 134217728, !dbg !2974
  %tobool190 = icmp ne i64 %and189, 0, !dbg !2974
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !2974

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !2974

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub193 = sub i64 %46, 1, !dbg !2974
  %and194 = and i64 %sub193, 67108864, !dbg !2974
  %tobool195 = icmp ne i64 %and194, 0, !dbg !2974
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !2974

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !2974

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub198 = sub i64 %47, 1, !dbg !2974
  %and199 = and i64 %sub198, 33554432, !dbg !2974
  %tobool200 = icmp ne i64 %and199, 0, !dbg !2974
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !2974

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !2974

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub203 = sub i64 %48, 1, !dbg !2974
  %and204 = and i64 %sub203, 16777216, !dbg !2974
  %tobool205 = icmp ne i64 %and204, 0, !dbg !2974
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !2974

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !2974

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub208 = sub i64 %49, 1, !dbg !2974
  %and209 = and i64 %sub208, 8388608, !dbg !2974
  %tobool210 = icmp ne i64 %and209, 0, !dbg !2974
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !2974

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !2974

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub213 = sub i64 %50, 1, !dbg !2974
  %and214 = and i64 %sub213, 4194304, !dbg !2974
  %tobool215 = icmp ne i64 %and214, 0, !dbg !2974
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !2974

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !2974

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub218 = sub i64 %51, 1, !dbg !2974
  %and219 = and i64 %sub218, 2097152, !dbg !2974
  %tobool220 = icmp ne i64 %and219, 0, !dbg !2974
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !2974

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !2974

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub223 = sub i64 %52, 1, !dbg !2974
  %and224 = and i64 %sub223, 1048576, !dbg !2974
  %tobool225 = icmp ne i64 %and224, 0, !dbg !2974
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !2974

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !2974

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub228 = sub i64 %53, 1, !dbg !2974
  %and229 = and i64 %sub228, 524288, !dbg !2974
  %tobool230 = icmp ne i64 %and229, 0, !dbg !2974
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !2974

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !2974

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub233 = sub i64 %54, 1, !dbg !2974
  %and234 = and i64 %sub233, 262144, !dbg !2974
  %tobool235 = icmp ne i64 %and234, 0, !dbg !2974
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !2974

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !2974

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub238 = sub i64 %55, 1, !dbg !2974
  %and239 = and i64 %sub238, 131072, !dbg !2974
  %tobool240 = icmp ne i64 %and239, 0, !dbg !2974
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !2974

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !2974

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub243 = sub i64 %56, 1, !dbg !2974
  %and244 = and i64 %sub243, 65536, !dbg !2974
  %tobool245 = icmp ne i64 %and244, 0, !dbg !2974
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !2974

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !2974

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub248 = sub i64 %57, 1, !dbg !2974
  %and249 = and i64 %sub248, 32768, !dbg !2974
  %tobool250 = icmp ne i64 %and249, 0, !dbg !2974
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !2974

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !2974

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub253 = sub i64 %58, 1, !dbg !2974
  %and254 = and i64 %sub253, 16384, !dbg !2974
  %tobool255 = icmp ne i64 %and254, 0, !dbg !2974
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !2974

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !2974

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub258 = sub i64 %59, 1, !dbg !2974
  %and259 = and i64 %sub258, 8192, !dbg !2974
  %tobool260 = icmp ne i64 %and259, 0, !dbg !2974
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !2974

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !2974

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub263 = sub i64 %60, 1, !dbg !2974
  %and264 = and i64 %sub263, 4096, !dbg !2974
  %tobool265 = icmp ne i64 %and264, 0, !dbg !2974
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !2974

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !2974

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub268 = sub i64 %61, 1, !dbg !2974
  %and269 = and i64 %sub268, 2048, !dbg !2974
  %tobool270 = icmp ne i64 %and269, 0, !dbg !2974
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !2974

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !2974

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub273 = sub i64 %62, 1, !dbg !2974
  %and274 = and i64 %sub273, 1024, !dbg !2974
  %tobool275 = icmp ne i64 %and274, 0, !dbg !2974
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !2974

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !2974

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub278 = sub i64 %63, 1, !dbg !2974
  %and279 = and i64 %sub278, 512, !dbg !2974
  %tobool280 = icmp ne i64 %and279, 0, !dbg !2974
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !2974

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !2974

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub283 = sub i64 %64, 1, !dbg !2974
  %and284 = and i64 %sub283, 256, !dbg !2974
  %tobool285 = icmp ne i64 %and284, 0, !dbg !2974
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !2974

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !2974

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub288 = sub i64 %65, 1, !dbg !2974
  %and289 = and i64 %sub288, 128, !dbg !2974
  %tobool290 = icmp ne i64 %and289, 0, !dbg !2974
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !2974

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !2974

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub293 = sub i64 %66, 1, !dbg !2974
  %and294 = and i64 %sub293, 64, !dbg !2974
  %tobool295 = icmp ne i64 %and294, 0, !dbg !2974
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !2974

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !2974

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub298 = sub i64 %67, 1, !dbg !2974
  %and299 = and i64 %sub298, 32, !dbg !2974
  %tobool300 = icmp ne i64 %and299, 0, !dbg !2974
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !2974

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !2974

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub303 = sub i64 %68, 1, !dbg !2974
  %and304 = and i64 %sub303, 16, !dbg !2974
  %tobool305 = icmp ne i64 %and304, 0, !dbg !2974
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !2974

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !2974

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub308 = sub i64 %69, 1, !dbg !2974
  %and309 = and i64 %sub308, 8, !dbg !2974
  %tobool310 = icmp ne i64 %and309, 0, !dbg !2974
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !2974

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !2974

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub313 = sub i64 %70, 1, !dbg !2974
  %and314 = and i64 %sub313, 4, !dbg !2974
  %tobool315 = icmp ne i64 %and314, 0, !dbg !2974
  %71 = zext i1 %tobool315 to i64, !dbg !2974
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !2974
  br label %cond.end, !dbg !2974

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !2974
  br label %cond.end317, !dbg !2974

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !2974
  br label %cond.end319, !dbg !2974

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !2974
  br label %cond.end321, !dbg !2974

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !2974
  br label %cond.end323, !dbg !2974

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !2974
  br label %cond.end325, !dbg !2974

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !2974
  br label %cond.end327, !dbg !2974

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !2974
  br label %cond.end329, !dbg !2974

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !2974
  br label %cond.end331, !dbg !2974

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !2974
  br label %cond.end333, !dbg !2974

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !2974
  br label %cond.end335, !dbg !2974

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !2974
  br label %cond.end337, !dbg !2974

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !2974
  br label %cond.end339, !dbg !2974

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !2974
  br label %cond.end341, !dbg !2974

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !2974
  br label %cond.end343, !dbg !2974

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !2974
  br label %cond.end345, !dbg !2974

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !2974
  br label %cond.end347, !dbg !2974

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !2974
  br label %cond.end349, !dbg !2974

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !2974
  br label %cond.end351, !dbg !2974

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !2974
  br label %cond.end353, !dbg !2974

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !2974
  br label %cond.end355, !dbg !2974

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !2974
  br label %cond.end357, !dbg !2974

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !2974
  br label %cond.end359, !dbg !2974

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !2974
  br label %cond.end361, !dbg !2974

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !2974
  br label %cond.end363, !dbg !2974

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !2974
  br label %cond.end365, !dbg !2974

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !2974
  br label %cond.end367, !dbg !2974

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !2974
  br label %cond.end369, !dbg !2974

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !2974
  br label %cond.end371, !dbg !2974

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !2974
  br label %cond.end373, !dbg !2974

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !2974
  br label %cond.end375, !dbg !2974

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !2974
  br label %cond.end377, !dbg !2974

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !2974
  br label %cond.end379, !dbg !2974

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !2974
  br label %cond.end381, !dbg !2974

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !2974
  br label %cond.end383, !dbg !2974

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !2974
  br label %cond.end385, !dbg !2974

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !2974
  br label %cond.end387, !dbg !2974

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !2974
  br label %cond.end389, !dbg !2974

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !2974
  br label %cond.end391, !dbg !2974

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !2974
  br label %cond.end393, !dbg !2974

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !2974
  br label %cond.end395, !dbg !2974

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !2974
  br label %cond.end397, !dbg !2974

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !2974
  br label %cond.end399, !dbg !2974

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !2974
  br label %cond.end401, !dbg !2974

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !2974
  br label %cond.end403, !dbg !2974

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !2974
  br label %cond.end405, !dbg !2974

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !2974
  br label %cond.end407, !dbg !2974

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !2974
  br label %cond.end409, !dbg !2974

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !2974
  br label %cond.end411, !dbg !2974

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !2974
  br label %cond.end413, !dbg !2974

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !2974
  br label %cond.end415, !dbg !2974

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !2974
  br label %cond.end417, !dbg !2974

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !2974
  br label %cond.end419, !dbg !2974

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !2974
  br label %cond.end421, !dbg !2974

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !2974
  br label %cond.end423, !dbg !2974

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !2974
  br label %cond.end425, !dbg !2974

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !2974
  br label %cond.end427, !dbg !2974

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !2974
  br label %cond.end429, !dbg !2974

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !2974
  br label %cond.end431, !dbg !2974

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !2974
  br label %cond.end433, !dbg !2974

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !2974
  br label %cond.end435, !dbg !2974

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !2974
  br label %cond.end437, !dbg !2974

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !2974
  br label %cond.end440, !dbg !2974

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !2974

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !2974
  br label %cond.end444, !dbg !2974

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !2974
  %sub443 = sub i64 %72, 1, !dbg !2974
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !2974
  br label %cond.end444, !dbg !2974

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !2974
  %sub446 = sub i32 %cond445, 12, !dbg !2975
  %add = add i32 %sub446, 1, !dbg !2976
  store i32 %add, i32* %retval, align 4, !dbg !2977
  br label %return, !dbg !2977

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !2978
  %dec = add i64 %73, -1, !dbg !2978
  store i64 %dec, i64* %size.addr, align 8, !dbg !2978
  %74 = load i64, i64* %size.addr, align 8, !dbg !2979
  %shr = lshr i64 %74, 12, !dbg !2979
  store i64 %shr, i64* %size.addr, align 8, !dbg !2979
  %75 = load i64, i64* %size.addr, align 8, !dbg !2980
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2957
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !2981
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !2982
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !2981, !srcloc !2983
  store i32 %78, i32* %bitpos.i, align 4, !dbg !2981
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !2984
  %add.i = add i32 %79, 1, !dbg !2985
  store i32 %add.i, i32* %retval, align 4, !dbg !2986
  br label %return, !dbg !2986

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !2987
  ret i32 %80, !dbg !2987
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !2988 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2950, metadata !DIExpression()), !dbg !2992
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2956, metadata !DIExpression()), !dbg !2994
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2995, metadata !DIExpression()), !dbg !2996
  %0 = load i64, i64* %n.addr, align 8, !dbg !2997
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2994
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !2998
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !2999
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !2998, !srcloc !2983
  store i32 %3, i32* %bitpos.i, align 4, !dbg !2998
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3000
  %add.i = add i32 %4, 1, !dbg !3001
  %sub = sub i32 %add.i, 1, !dbg !3002
  ret i32 %sub, !dbg !3003
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3004 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3008, metadata !DIExpression()), !dbg !3009
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3010, metadata !DIExpression()), !dbg !3011
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3012, metadata !DIExpression()), !dbg !3013
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3014, metadata !DIExpression()), !dbg !3015
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3016
  ret i8* %0, !dbg !3017
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pwm_export* @child_to_pwm_export(%struct.device* %child) #0 !dbg !3018 {
entry:
  %child.addr = alloca %struct.device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pwm_export*, align 8
  store %struct.device* %child, %struct.device** %child.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %child.addr, metadata !3021, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3023, metadata !DIExpression()), !dbg !3025
  %0 = load %struct.device*, %struct.device** %child.addr, align 8, !dbg !3025
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3025
  store i8* %1, i8** %__mptr, align 8, !dbg !3025
  br label %do.body, !dbg !3025

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3026

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3025
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !3025
  %3 = bitcast i8* %add.ptr to %struct.pwm_export*, !dbg !3025
  store %struct.pwm_export* %3, %struct.pwm_export** %tmp, align 8, !dbg !3026
  %4 = load %struct.pwm_export*, %struct.pwm_export** %tmp, align 8, !dbg !3025
  ret %struct.pwm_export* %4, !dbg !3028
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @period_show(%struct.device* %child, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3029 {
entry:
  %child.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %pwm = alloca %struct.pwm_device*, align 8
  %state = alloca %struct.pwm_state, align 8
  store %struct.device* %child, %struct.device** %child.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %child.addr, metadata !3030, metadata !DIExpression()), !dbg !3031
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3032, metadata !DIExpression()), !dbg !3033
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3034, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm, metadata !3036, metadata !DIExpression()), !dbg !3039
  %0 = load %struct.device*, %struct.device** %child.addr, align 8, !dbg !3040
  %call = call %struct.pwm_device* @child_to_pwm_device(%struct.device* %0) #9, !dbg !3041
  store %struct.pwm_device* %call, %struct.pwm_device** %pwm, align 8, !dbg !3039
  call void @llvm.dbg.declare(metadata %struct.pwm_state* %state, metadata !3042, metadata !DIExpression()), !dbg !3043
  %1 = load %struct.pwm_device*, %struct.pwm_device** %pwm, align 8, !dbg !3044
  call void @pwm_get_state(%struct.pwm_device* %1, %struct.pwm_state* %state) #9, !dbg !3045
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !3046
  %period = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %state, i32 0, i32 0, !dbg !3047
  %3 = load i64, i64* %period, align 8, !dbg !3047
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %3) #9, !dbg !3048
  %conv = sext i32 %call1 to i64, !dbg !3048
  ret i64 %conv, !dbg !3049
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @period_store(%struct.device* %child, %struct.device_attribute* %attr, i8* %buf, i64 %size) #0 !dbg !3050 {
entry:
  %retval = alloca i64, align 8
  %child.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %export = alloca %struct.pwm_export*, align 8
  %pwm = alloca %struct.pwm_device*, align 8
  %state = alloca %struct.pwm_state, align 8
  %val = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device* %child, %struct.device** %child.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %child.addr, metadata !3051, metadata !DIExpression()), !dbg !3052
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3053, metadata !DIExpression()), !dbg !3054
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3055, metadata !DIExpression()), !dbg !3056
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3057, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.declare(metadata %struct.pwm_export** %export, metadata !3059, metadata !DIExpression()), !dbg !3060
  %0 = load %struct.device*, %struct.device** %child.addr, align 8, !dbg !3061
  %call = call %struct.pwm_export* @child_to_pwm_export(%struct.device* %0) #9, !dbg !3062
  store %struct.pwm_export* %call, %struct.pwm_export** %export, align 8, !dbg !3060
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm, metadata !3063, metadata !DIExpression()), !dbg !3064
  %1 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !3065
  %pwm1 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %1, i32 0, i32 1, !dbg !3066
  %2 = load %struct.pwm_device*, %struct.pwm_device** %pwm1, align 8, !dbg !3066
  store %struct.pwm_device* %2, %struct.pwm_device** %pwm, align 8, !dbg !3064
  call void @llvm.dbg.declare(metadata %struct.pwm_state* %state, metadata !3067, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.declare(metadata i64* %val, metadata !3069, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3071, metadata !DIExpression()), !dbg !3072
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !3073
  %call2 = call i32 @kstrtou64(i8* %3, i32 0, i64* %val) #9, !dbg !3074
  store i32 %call2, i32* %ret, align 4, !dbg !3075
  %4 = load i32, i32* %ret, align 4, !dbg !3076
  %tobool = icmp ne i32 %4, 0, !dbg !3076
  br i1 %tobool, label %if.then, label %if.end, !dbg !3078

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !3079
  %conv = sext i32 %5 to i64, !dbg !3079
  store i64 %conv, i64* %retval, align 8, !dbg !3080
  br label %return, !dbg !3080

if.end:                                           ; preds = %entry
  %6 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !3081
  %lock = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %6, i32 0, i32 2, !dbg !3082
  call void @mutex_lock(%struct.mutex* %lock) #9, !dbg !3083
  %7 = load %struct.pwm_device*, %struct.pwm_device** %pwm, align 8, !dbg !3084
  call void @pwm_get_state(%struct.pwm_device* %7, %struct.pwm_state* %state) #9, !dbg !3085
  %8 = load i64, i64* %val, align 8, !dbg !3086
  %period = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %state, i32 0, i32 0, !dbg !3087
  store i64 %8, i64* %period, align 8, !dbg !3088
  %9 = load %struct.pwm_device*, %struct.pwm_device** %pwm, align 8, !dbg !3089
  %call3 = call i32 @pwm_apply_state(%struct.pwm_device* %9, %struct.pwm_state* %state) #9, !dbg !3090
  store i32 %call3, i32* %ret, align 4, !dbg !3091
  %10 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !3092
  %lock4 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %10, i32 0, i32 2, !dbg !3093
  call void @mutex_unlock(%struct.mutex* %lock4) #9, !dbg !3094
  %11 = load i32, i32* %ret, align 4, !dbg !3095
  %tobool5 = icmp ne i32 %11, 0, !dbg !3095
  br i1 %tobool5, label %cond.true, label %cond.false, !dbg !3095

cond.true:                                        ; preds = %if.end
  %conv6 = sext i32 %11 to i64, !dbg !3095
  br label %cond.end, !dbg !3095

cond.false:                                       ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !3096
  br label %cond.end, !dbg !3095

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv6, %cond.true ], [ %12, %cond.false ], !dbg !3095
  store i64 %cond, i64* %retval, align 8, !dbg !3097
  br label %return, !dbg !3097

return:                                           ; preds = %cond.end, %if.then
  %13 = load i64, i64* %retval, align 8, !dbg !3098
  ret i64 %13, !dbg !3098
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pwm_device* @child_to_pwm_device(%struct.device* %child) #0 !dbg !3099 {
entry:
  %child.addr = alloca %struct.device*, align 8
  %export = alloca %struct.pwm_export*, align 8
  store %struct.device* %child, %struct.device** %child.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %child.addr, metadata !3102, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.declare(metadata %struct.pwm_export** %export, metadata !3104, metadata !DIExpression()), !dbg !3105
  %0 = load %struct.device*, %struct.device** %child.addr, align 8, !dbg !3106
  %call = call %struct.pwm_export* @child_to_pwm_export(%struct.device* %0) #9, !dbg !3107
  store %struct.pwm_export* %call, %struct.pwm_export** %export, align 8, !dbg !3105
  %1 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !3108
  %pwm = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %1, i32 0, i32 1, !dbg !3109
  %2 = load %struct.pwm_device*, %struct.pwm_device** %pwm, align 8, !dbg !3109
  ret %struct.pwm_device* %2, !dbg !3110
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pwm_get_state(%struct.pwm_device* %pwm, %struct.pwm_state* %state) #0 !dbg !3111 {
entry:
  %pwm.addr = alloca %struct.pwm_device*, align 8
  %state.addr = alloca %struct.pwm_state*, align 8
  store %struct.pwm_device* %pwm, %struct.pwm_device** %pwm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm.addr, metadata !3114, metadata !DIExpression()), !dbg !3115
  store %struct.pwm_state* %state, %struct.pwm_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_state** %state.addr, metadata !3116, metadata !DIExpression()), !dbg !3117
  %0 = load %struct.pwm_state*, %struct.pwm_state** %state.addr, align 8, !dbg !3118
  %1 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !3119
  %state1 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %1, i32 0, i32 7, !dbg !3120
  %2 = bitcast %struct.pwm_state* %0 to i8*, !dbg !3120
  %3 = bitcast %struct.pwm_state* %state1 to i8*, !dbg !3120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 24, i1 false), !dbg !3120
  ret void, !dbg !3121
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kstrtou64(i8* %s, i32 %base, i64* %res) #0 !dbg !3122 {
entry:
  %s.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca i64*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !3126, metadata !DIExpression()), !dbg !3127
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !3128, metadata !DIExpression()), !dbg !3129
  store i64* %res, i64** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %res.addr, metadata !3130, metadata !DIExpression()), !dbg !3131
  %0 = load i8*, i8** %s.addr, align 8, !dbg !3132
  %1 = load i32, i32* %base.addr, align 4, !dbg !3133
  %2 = load i64*, i64** %res.addr, align 8, !dbg !3134
  %call = call i32 @kstrtoull(i8* %0, i32 %1, i64* %2) #9, !dbg !3135
  ret i32 %call, !dbg !3136
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local i32 @pwm_apply_state(%struct.pwm_device*, %struct.pwm_state*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local i32 @kstrtoull(i8*, i32, i64*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @duty_cycle_show(%struct.device* %child, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3137 {
entry:
  %child.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %pwm = alloca %struct.pwm_device*, align 8
  %state = alloca %struct.pwm_state, align 8
  store %struct.device* %child, %struct.device** %child.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %child.addr, metadata !3138, metadata !DIExpression()), !dbg !3139
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3140, metadata !DIExpression()), !dbg !3141
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3142, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm, metadata !3144, metadata !DIExpression()), !dbg !3145
  %0 = load %struct.device*, %struct.device** %child.addr, align 8, !dbg !3146
  %call = call %struct.pwm_device* @child_to_pwm_device(%struct.device* %0) #9, !dbg !3147
  store %struct.pwm_device* %call, %struct.pwm_device** %pwm, align 8, !dbg !3145
  call void @llvm.dbg.declare(metadata %struct.pwm_state* %state, metadata !3148, metadata !DIExpression()), !dbg !3149
  %1 = load %struct.pwm_device*, %struct.pwm_device** %pwm, align 8, !dbg !3150
  call void @pwm_get_state(%struct.pwm_device* %1, %struct.pwm_state* %state) #9, !dbg !3151
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !3152
  %duty_cycle = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %state, i32 0, i32 1, !dbg !3153
  %3 = load i64, i64* %duty_cycle, align 8, !dbg !3153
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %3) #9, !dbg !3154
  %conv = sext i32 %call1 to i64, !dbg !3154
  ret i64 %conv, !dbg !3155
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @duty_cycle_store(%struct.device* %child, %struct.device_attribute* %attr, i8* %buf, i64 %size) #0 !dbg !3156 {
entry:
  %retval = alloca i64, align 8
  %child.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %export = alloca %struct.pwm_export*, align 8
  %pwm = alloca %struct.pwm_device*, align 8
  %state = alloca %struct.pwm_state, align 8
  %val = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device* %child, %struct.device** %child.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %child.addr, metadata !3157, metadata !DIExpression()), !dbg !3158
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3159, metadata !DIExpression()), !dbg !3160
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3161, metadata !DIExpression()), !dbg !3162
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3163, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.declare(metadata %struct.pwm_export** %export, metadata !3165, metadata !DIExpression()), !dbg !3166
  %0 = load %struct.device*, %struct.device** %child.addr, align 8, !dbg !3167
  %call = call %struct.pwm_export* @child_to_pwm_export(%struct.device* %0) #9, !dbg !3168
  store %struct.pwm_export* %call, %struct.pwm_export** %export, align 8, !dbg !3166
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm, metadata !3169, metadata !DIExpression()), !dbg !3170
  %1 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !3171
  %pwm1 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %1, i32 0, i32 1, !dbg !3172
  %2 = load %struct.pwm_device*, %struct.pwm_device** %pwm1, align 8, !dbg !3172
  store %struct.pwm_device* %2, %struct.pwm_device** %pwm, align 8, !dbg !3170
  call void @llvm.dbg.declare(metadata %struct.pwm_state* %state, metadata !3173, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.declare(metadata i64* %val, metadata !3175, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3177, metadata !DIExpression()), !dbg !3178
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !3179
  %call2 = call i32 @kstrtou64(i8* %3, i32 0, i64* %val) #9, !dbg !3180
  store i32 %call2, i32* %ret, align 4, !dbg !3181
  %4 = load i32, i32* %ret, align 4, !dbg !3182
  %tobool = icmp ne i32 %4, 0, !dbg !3182
  br i1 %tobool, label %if.then, label %if.end, !dbg !3184

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !3185
  %conv = sext i32 %5 to i64, !dbg !3185
  store i64 %conv, i64* %retval, align 8, !dbg !3186
  br label %return, !dbg !3186

if.end:                                           ; preds = %entry
  %6 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !3187
  %lock = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %6, i32 0, i32 2, !dbg !3188
  call void @mutex_lock(%struct.mutex* %lock) #9, !dbg !3189
  %7 = load %struct.pwm_device*, %struct.pwm_device** %pwm, align 8, !dbg !3190
  call void @pwm_get_state(%struct.pwm_device* %7, %struct.pwm_state* %state) #9, !dbg !3191
  %8 = load i64, i64* %val, align 8, !dbg !3192
  %duty_cycle = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %state, i32 0, i32 1, !dbg !3193
  store i64 %8, i64* %duty_cycle, align 8, !dbg !3194
  %9 = load %struct.pwm_device*, %struct.pwm_device** %pwm, align 8, !dbg !3195
  %call3 = call i32 @pwm_apply_state(%struct.pwm_device* %9, %struct.pwm_state* %state) #9, !dbg !3196
  store i32 %call3, i32* %ret, align 4, !dbg !3197
  %10 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !3198
  %lock4 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %10, i32 0, i32 2, !dbg !3199
  call void @mutex_unlock(%struct.mutex* %lock4) #9, !dbg !3200
  %11 = load i32, i32* %ret, align 4, !dbg !3201
  %tobool5 = icmp ne i32 %11, 0, !dbg !3201
  br i1 %tobool5, label %cond.true, label %cond.false, !dbg !3201

cond.true:                                        ; preds = %if.end
  %conv6 = sext i32 %11 to i64, !dbg !3201
  br label %cond.end, !dbg !3201

cond.false:                                       ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !3202
  br label %cond.end, !dbg !3201

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv6, %cond.true ], [ %12, %cond.false ], !dbg !3201
  store i64 %cond, i64* %retval, align 8, !dbg !3203
  br label %return, !dbg !3203

return:                                           ; preds = %cond.end, %if.then
  %13 = load i64, i64* %retval, align 8, !dbg !3204
  ret i64 %13, !dbg !3204
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @enable_show(%struct.device* %child, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3205 {
entry:
  %child.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %pwm = alloca %struct.pwm_device*, align 8
  %state = alloca %struct.pwm_state, align 8
  store %struct.device* %child, %struct.device** %child.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %child.addr, metadata !3206, metadata !DIExpression()), !dbg !3207
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3208, metadata !DIExpression()), !dbg !3209
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3210, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm, metadata !3212, metadata !DIExpression()), !dbg !3213
  %0 = load %struct.device*, %struct.device** %child.addr, align 8, !dbg !3214
  %call = call %struct.pwm_device* @child_to_pwm_device(%struct.device* %0) #9, !dbg !3215
  store %struct.pwm_device* %call, %struct.pwm_device** %pwm, align 8, !dbg !3213
  call void @llvm.dbg.declare(metadata %struct.pwm_state* %state, metadata !3216, metadata !DIExpression()), !dbg !3217
  %1 = load %struct.pwm_device*, %struct.pwm_device** %pwm, align 8, !dbg !3218
  call void @pwm_get_state(%struct.pwm_device* %1, %struct.pwm_state* %state) #9, !dbg !3219
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !3220
  %enabled = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %state, i32 0, i32 3, !dbg !3221
  %3 = load i8, i8* %enabled, align 4, !dbg !3221
  %tobool = trunc i8 %3 to i1, !dbg !3221
  %conv = zext i1 %tobool to i32, !dbg !3222
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %conv) #9, !dbg !3223
  %conv2 = sext i32 %call1 to i64, !dbg !3223
  ret i64 %conv2, !dbg !3224
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @enable_store(%struct.device* %child, %struct.device_attribute* %attr, i8* %buf, i64 %size) #0 !dbg !3225 {
entry:
  %retval = alloca i64, align 8
  %child.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %export = alloca %struct.pwm_export*, align 8
  %pwm = alloca %struct.pwm_device*, align 8
  %state = alloca %struct.pwm_state, align 8
  %val = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.device* %child, %struct.device** %child.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %child.addr, metadata !3226, metadata !DIExpression()), !dbg !3227
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3228, metadata !DIExpression()), !dbg !3229
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3230, metadata !DIExpression()), !dbg !3231
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3232, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.declare(metadata %struct.pwm_export** %export, metadata !3234, metadata !DIExpression()), !dbg !3235
  %0 = load %struct.device*, %struct.device** %child.addr, align 8, !dbg !3236
  %call = call %struct.pwm_export* @child_to_pwm_export(%struct.device* %0) #9, !dbg !3237
  store %struct.pwm_export* %call, %struct.pwm_export** %export, align 8, !dbg !3235
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm, metadata !3238, metadata !DIExpression()), !dbg !3239
  %1 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !3240
  %pwm1 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %1, i32 0, i32 1, !dbg !3241
  %2 = load %struct.pwm_device*, %struct.pwm_device** %pwm1, align 8, !dbg !3241
  store %struct.pwm_device* %2, %struct.pwm_device** %pwm, align 8, !dbg !3239
  call void @llvm.dbg.declare(metadata %struct.pwm_state* %state, metadata !3242, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.declare(metadata i32* %val, metadata !3244, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3246, metadata !DIExpression()), !dbg !3247
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !3248
  %call2 = call i32 @kstrtoint(i8* %3, i32 0, i32* %val) #9, !dbg !3249
  store i32 %call2, i32* %ret, align 4, !dbg !3250
  %4 = load i32, i32* %ret, align 4, !dbg !3251
  %tobool = icmp ne i32 %4, 0, !dbg !3251
  br i1 %tobool, label %if.then, label %if.end, !dbg !3253

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !3254
  %conv = sext i32 %5 to i64, !dbg !3254
  store i64 %conv, i64* %retval, align 8, !dbg !3255
  br label %return, !dbg !3255

if.end:                                           ; preds = %entry
  %6 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !3256
  %lock = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %6, i32 0, i32 2, !dbg !3257
  call void @mutex_lock(%struct.mutex* %lock) #9, !dbg !3258
  %7 = load %struct.pwm_device*, %struct.pwm_device** %pwm, align 8, !dbg !3259
  call void @pwm_get_state(%struct.pwm_device* %7, %struct.pwm_state* %state) #9, !dbg !3260
  %8 = load i32, i32* %val, align 4, !dbg !3261
  switch i32 %8, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ], !dbg !3262

sw.bb:                                            ; preds = %if.end
  %enabled = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %state, i32 0, i32 3, !dbg !3263
  store i8 0, i8* %enabled, align 4, !dbg !3265
  br label %sw.epilog, !dbg !3266

sw.bb3:                                           ; preds = %if.end
  %enabled4 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %state, i32 0, i32 3, !dbg !3267
  store i8 1, i8* %enabled4, align 4, !dbg !3268
  br label %sw.epilog, !dbg !3269

sw.default:                                       ; preds = %if.end
  store i32 -22, i32* %ret, align 4, !dbg !3270
  br label %unlock, !dbg !3271

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  %9 = load %struct.pwm_device*, %struct.pwm_device** %pwm, align 8, !dbg !3272
  %call5 = call i32 @pwm_apply_state(%struct.pwm_device* %9, %struct.pwm_state* %state) #9, !dbg !3273
  store i32 %call5, i32* %ret, align 4, !dbg !3274
  br label %unlock, !dbg !3275

unlock:                                           ; preds = %sw.epilog, %sw.default
  call void @llvm.dbg.label(metadata !3276), !dbg !3277
  %10 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !3278
  %lock6 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %10, i32 0, i32 2, !dbg !3279
  call void @mutex_unlock(%struct.mutex* %lock6) #9, !dbg !3280
  %11 = load i32, i32* %ret, align 4, !dbg !3281
  %tobool7 = icmp ne i32 %11, 0, !dbg !3281
  br i1 %tobool7, label %cond.true, label %cond.false, !dbg !3281

cond.true:                                        ; preds = %unlock
  %conv8 = sext i32 %11 to i64, !dbg !3281
  br label %cond.end, !dbg !3281

cond.false:                                       ; preds = %unlock
  %12 = load i64, i64* %size.addr, align 8, !dbg !3282
  br label %cond.end, !dbg !3281

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv8, %cond.true ], [ %12, %cond.false ], !dbg !3281
  store i64 %cond, i64* %retval, align 8, !dbg !3283
  br label %return, !dbg !3283

return:                                           ; preds = %cond.end, %if.then
  %13 = load i64, i64* %retval, align 8, !dbg !3284
  ret i64 %13, !dbg !3284
}

; Function Attrs: noredzone
declare dso_local i32 @kstrtoint(i8*, i32, i32*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @polarity_show(%struct.device* %child, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3285 {
entry:
  %child.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %pwm = alloca %struct.pwm_device*, align 8
  %polarity = alloca i8*, align 8
  %state = alloca %struct.pwm_state, align 8
  store %struct.device* %child, %struct.device** %child.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %child.addr, metadata !3286, metadata !DIExpression()), !dbg !3287
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3288, metadata !DIExpression()), !dbg !3289
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3290, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm, metadata !3292, metadata !DIExpression()), !dbg !3293
  %0 = load %struct.device*, %struct.device** %child.addr, align 8, !dbg !3294
  %call = call %struct.pwm_device* @child_to_pwm_device(%struct.device* %0) #9, !dbg !3295
  store %struct.pwm_device* %call, %struct.pwm_device** %pwm, align 8, !dbg !3293
  call void @llvm.dbg.declare(metadata i8** %polarity, metadata !3296, metadata !DIExpression()), !dbg !3297
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8** %polarity, align 8, !dbg !3297
  call void @llvm.dbg.declare(metadata %struct.pwm_state* %state, metadata !3298, metadata !DIExpression()), !dbg !3299
  %1 = load %struct.pwm_device*, %struct.pwm_device** %pwm, align 8, !dbg !3300
  call void @pwm_get_state(%struct.pwm_device* %1, %struct.pwm_state* %state) #9, !dbg !3301
  %polarity1 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %state, i32 0, i32 2, !dbg !3302
  %2 = load i32, i32* %polarity1, align 8, !dbg !3302
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ], !dbg !3303

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8** %polarity, align 8, !dbg !3304
  br label %sw.epilog, !dbg !3306

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8** %polarity, align 8, !dbg !3307
  br label %sw.epilog, !dbg !3308

sw.epilog:                                        ; preds = %entry, %sw.bb2, %sw.bb
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !3309
  %4 = load i8*, i8** %polarity, align 8, !dbg !3310
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %4) #9, !dbg !3311
  %conv = sext i32 %call3 to i64, !dbg !3311
  ret i64 %conv, !dbg !3312
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @polarity_store(%struct.device* %child, %struct.device_attribute* %attr, i8* %buf, i64 %size) #0 !dbg !3313 {
entry:
  %retval = alloca i64, align 8
  %child.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %export = alloca %struct.pwm_export*, align 8
  %pwm = alloca %struct.pwm_device*, align 8
  %polarity = alloca i32, align 4
  %state = alloca %struct.pwm_state, align 8
  %ret = alloca i32, align 4
  store %struct.device* %child, %struct.device** %child.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %child.addr, metadata !3314, metadata !DIExpression()), !dbg !3315
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3316, metadata !DIExpression()), !dbg !3317
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3318, metadata !DIExpression()), !dbg !3319
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3320, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.declare(metadata %struct.pwm_export** %export, metadata !3322, metadata !DIExpression()), !dbg !3323
  %0 = load %struct.device*, %struct.device** %child.addr, align 8, !dbg !3324
  %call = call %struct.pwm_export* @child_to_pwm_export(%struct.device* %0) #9, !dbg !3325
  store %struct.pwm_export* %call, %struct.pwm_export** %export, align 8, !dbg !3323
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm, metadata !3326, metadata !DIExpression()), !dbg !3327
  %1 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !3328
  %pwm1 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %1, i32 0, i32 1, !dbg !3329
  %2 = load %struct.pwm_device*, %struct.pwm_device** %pwm1, align 8, !dbg !3329
  store %struct.pwm_device* %2, %struct.pwm_device** %pwm, align 8, !dbg !3327
  call void @llvm.dbg.declare(metadata i32* %polarity, metadata !3330, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.declare(metadata %struct.pwm_state* %state, metadata !3332, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3334, metadata !DIExpression()), !dbg !3335
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !3336
  %call2 = call zeroext i1 @sysfs_streq(i8* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0)) #9, !dbg !3338
  br i1 %call2, label %if.then, label %if.else, !dbg !3339

if.then:                                          ; preds = %entry
  store i32 0, i32* %polarity, align 4, !dbg !3340
  br label %if.end6, !dbg !3341

if.else:                                          ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !3342
  %call3 = call zeroext i1 @sysfs_streq(i8* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !3344
  br i1 %call3, label %if.then4, label %if.else5, !dbg !3345

if.then4:                                         ; preds = %if.else
  store i32 1, i32* %polarity, align 4, !dbg !3346
  br label %if.end, !dbg !3347

if.else5:                                         ; preds = %if.else
  store i64 -22, i64* %retval, align 8, !dbg !3348
  br label %return, !dbg !3348

if.end:                                           ; preds = %if.then4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %5 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !3349
  %lock = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %5, i32 0, i32 2, !dbg !3350
  call void @mutex_lock(%struct.mutex* %lock) #9, !dbg !3351
  %6 = load %struct.pwm_device*, %struct.pwm_device** %pwm, align 8, !dbg !3352
  call void @pwm_get_state(%struct.pwm_device* %6, %struct.pwm_state* %state) #9, !dbg !3353
  %7 = load i32, i32* %polarity, align 4, !dbg !3354
  %polarity7 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %state, i32 0, i32 2, !dbg !3355
  store i32 %7, i32* %polarity7, align 8, !dbg !3356
  %8 = load %struct.pwm_device*, %struct.pwm_device** %pwm, align 8, !dbg !3357
  %call8 = call i32 @pwm_apply_state(%struct.pwm_device* %8, %struct.pwm_state* %state) #9, !dbg !3358
  store i32 %call8, i32* %ret, align 4, !dbg !3359
  %9 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !3360
  %lock9 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %9, i32 0, i32 2, !dbg !3361
  call void @mutex_unlock(%struct.mutex* %lock9) #9, !dbg !3362
  %10 = load i32, i32* %ret, align 4, !dbg !3363
  %tobool = icmp ne i32 %10, 0, !dbg !3363
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3363

cond.true:                                        ; preds = %if.end6
  %conv = sext i32 %10 to i64, !dbg !3363
  br label %cond.end, !dbg !3363

cond.false:                                       ; preds = %if.end6
  %11 = load i64, i64* %size.addr, align 8, !dbg !3364
  br label %cond.end, !dbg !3363

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %11, %cond.false ], !dbg !3363
  store i64 %cond, i64* %retval, align 8, !dbg !3365
  br label %return, !dbg !3365

return:                                           ; preds = %cond.end, %if.else5
  %12 = load i64, i64* %retval, align 8, !dbg !3366
  ret i64 %12, !dbg !3366
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @sysfs_streq(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @capture_show(%struct.device* %child, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3367 {
entry:
  %retval = alloca i64, align 8
  %child.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %pwm = alloca %struct.pwm_device*, align 8
  %result = alloca %struct.pwm_capture, align 4
  %ret = alloca i32, align 4
  store %struct.device* %child, %struct.device** %child.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %child.addr, metadata !3368, metadata !DIExpression()), !dbg !3369
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3370, metadata !DIExpression()), !dbg !3371
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3372, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm, metadata !3374, metadata !DIExpression()), !dbg !3375
  %0 = load %struct.device*, %struct.device** %child.addr, align 8, !dbg !3376
  %call = call %struct.pwm_device* @child_to_pwm_device(%struct.device* %0) #9, !dbg !3377
  store %struct.pwm_device* %call, %struct.pwm_device** %pwm, align 8, !dbg !3375
  call void @llvm.dbg.declare(metadata %struct.pwm_capture* %result, metadata !3378, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3380, metadata !DIExpression()), !dbg !3381
  %1 = load %struct.pwm_device*, %struct.pwm_device** %pwm, align 8, !dbg !3382
  %call1 = call i32 @jiffies_to_msecs(i64 250) #9, !dbg !3383
  %conv = zext i32 %call1 to i64, !dbg !3383
  %call2 = call i32 @pwm_capture(%struct.pwm_device* %1, %struct.pwm_capture* %result, i64 %conv) #9, !dbg !3384
  store i32 %call2, i32* %ret, align 4, !dbg !3385
  %2 = load i32, i32* %ret, align 4, !dbg !3386
  %tobool = icmp ne i32 %2, 0, !dbg !3386
  br i1 %tobool, label %if.then, label %if.end, !dbg !3388

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !3389
  %conv3 = sext i32 %3 to i64, !dbg !3389
  store i64 %conv3, i64* %retval, align 8, !dbg !3390
  br label %return, !dbg !3390

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !3391
  %period = getelementptr inbounds %struct.pwm_capture, %struct.pwm_capture* %result, i32 0, i32 0, !dbg !3392
  %5 = load i32, i32* %period, align 4, !dbg !3392
  %duty_cycle = getelementptr inbounds %struct.pwm_capture, %struct.pwm_capture* %result, i32 0, i32 1, !dbg !3393
  %6 = load i32, i32* %duty_cycle, align 4, !dbg !3393
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32 %5, i32 %6) #9, !dbg !3394
  %conv5 = sext i32 %call4 to i64, !dbg !3394
  store i64 %conv5, i64* %retval, align 8, !dbg !3395
  br label %return, !dbg !3395

return:                                           ; preds = %if.end, %if.then
  %7 = load i64, i64* %retval, align 8, !dbg !3396
  ret i64 %7, !dbg !3396
}

; Function Attrs: noredzone
declare dso_local i32 @pwm_capture(%struct.pwm_device*, %struct.pwm_capture*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @jiffies_to_msecs(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @unexport_store(%struct.device* %parent, %struct.device_attribute* %attr, i8* %buf, i64 %len) #0 !dbg !3397 {
entry:
  %retval = alloca i64, align 8
  %parent.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %chip = alloca %struct.pwm_chip*, align 8
  %hwpwm = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !3398, metadata !DIExpression()), !dbg !3399
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3400, metadata !DIExpression()), !dbg !3401
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3402, metadata !DIExpression()), !dbg !3403
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3404, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.declare(metadata %struct.pwm_chip** %chip, metadata !3406, metadata !DIExpression()), !dbg !3407
  %0 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !3408
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #9, !dbg !3409
  %1 = bitcast i8* %call to %struct.pwm_chip*, !dbg !3409
  store %struct.pwm_chip* %1, %struct.pwm_chip** %chip, align 8, !dbg !3407
  call void @llvm.dbg.declare(metadata i32* %hwpwm, metadata !3410, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3412, metadata !DIExpression()), !dbg !3413
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !3414
  %call1 = call i32 @kstrtouint(i8* %2, i32 0, i32* %hwpwm) #9, !dbg !3415
  store i32 %call1, i32* %ret, align 4, !dbg !3416
  %3 = load i32, i32* %ret, align 4, !dbg !3417
  %cmp = icmp slt i32 %3, 0, !dbg !3419
  br i1 %cmp, label %if.then, label %if.end, !dbg !3420

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4, !dbg !3421
  %conv = sext i32 %4 to i64, !dbg !3421
  store i64 %conv, i64* %retval, align 8, !dbg !3422
  br label %return, !dbg !3422

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %hwpwm, align 4, !dbg !3423
  %6 = load %struct.pwm_chip*, %struct.pwm_chip** %chip, align 8, !dbg !3425
  %npwm = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %6, i32 0, i32 3, !dbg !3426
  %7 = load i32, i32* %npwm, align 4, !dbg !3426
  %cmp2 = icmp uge i32 %5, %7, !dbg !3427
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !3428

if.then4:                                         ; preds = %if.end
  store i64 -19, i64* %retval, align 8, !dbg !3429
  br label %return, !dbg !3429

if.end5:                                          ; preds = %if.end
  %8 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !3430
  %9 = load %struct.pwm_chip*, %struct.pwm_chip** %chip, align 8, !dbg !3431
  %pwms = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %9, i32 0, i32 7, !dbg !3432
  %10 = load %struct.pwm_device*, %struct.pwm_device** %pwms, align 8, !dbg !3432
  %11 = load i32, i32* %hwpwm, align 4, !dbg !3433
  %idxprom = zext i32 %11 to i64, !dbg !3431
  %arrayidx = getelementptr %struct.pwm_device, %struct.pwm_device* %10, i64 %idxprom, !dbg !3431
  %call6 = call i32 @pwm_unexport_child(%struct.device* %8, %struct.pwm_device* %arrayidx) #9, !dbg !3434
  store i32 %call6, i32* %ret, align 4, !dbg !3435
  %12 = load i32, i32* %ret, align 4, !dbg !3436
  %tobool = icmp ne i32 %12, 0, !dbg !3436
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3436

cond.true:                                        ; preds = %if.end5
  %conv7 = sext i32 %12 to i64, !dbg !3436
  br label %cond.end, !dbg !3436

cond.false:                                       ; preds = %if.end5
  %13 = load i64, i64* %len.addr, align 8, !dbg !3437
  br label %cond.end, !dbg !3436

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv7, %cond.true ], [ %13, %cond.false ], !dbg !3436
  store i64 %cond, i64* %retval, align 8, !dbg !3438
  br label %return, !dbg !3438

return:                                           ; preds = %cond.end, %if.then4, %if.then
  %14 = load i64, i64* %retval, align 8, !dbg !3439
  ret i64 %14, !dbg !3439
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @npwm_show(%struct.device* %parent, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3440 {
entry:
  %parent.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %chip = alloca %struct.pwm_chip*, align 8
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !3441, metadata !DIExpression()), !dbg !3442
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3443, metadata !DIExpression()), !dbg !3444
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3445, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.declare(metadata %struct.pwm_chip** %chip, metadata !3447, metadata !DIExpression()), !dbg !3450
  %0 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !3451
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #9, !dbg !3452
  %1 = bitcast i8* %call to %struct.pwm_chip*, !dbg !3452
  store %struct.pwm_chip* %1, %struct.pwm_chip** %chip, align 8, !dbg !3450
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !3453
  %3 = load %struct.pwm_chip*, %struct.pwm_chip** %chip, align 8, !dbg !3454
  %npwm = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %3, i32 0, i32 3, !dbg !3455
  %4 = load i32, i32* %npwm, align 4, !dbg !3455
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i32 %4) #9, !dbg !3456
  %conv = sext i32 %call1 to i64, !dbg !3456
  ret i64 %conv, !dbg !3457
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pwm_class_suspend(%struct.device* %parent) #0 !dbg !3458 {
entry:
  %parent.addr = alloca %struct.device*, align 8
  %chip = alloca %struct.pwm_chip*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %pwm = alloca %struct.pwm_device*, align 8
  %state = alloca %struct.pwm_state, align 8
  %export = alloca %struct.pwm_export*, align 8
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !3459, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.declare(metadata %struct.pwm_chip** %chip, metadata !3461, metadata !DIExpression()), !dbg !3462
  %0 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !3463
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #9, !dbg !3464
  %1 = bitcast i8* %call to %struct.pwm_chip*, !dbg !3464
  store %struct.pwm_chip* %1, %struct.pwm_chip** %chip, align 8, !dbg !3462
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3465, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3467, metadata !DIExpression()), !dbg !3468
  store i32 0, i32* %ret, align 4, !dbg !3468
  store i32 0, i32* %i, align 4, !dbg !3469
  br label %for.cond, !dbg !3471

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !3472
  %3 = load %struct.pwm_chip*, %struct.pwm_chip** %chip, align 8, !dbg !3474
  %npwm = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %3, i32 0, i32 3, !dbg !3475
  %4 = load i32, i32* %npwm, align 4, !dbg !3475
  %cmp = icmp ult i32 %2, %4, !dbg !3476
  br i1 %cmp, label %for.body, label %for.end, !dbg !3477

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm, metadata !3478, metadata !DIExpression()), !dbg !3480
  %5 = load %struct.pwm_chip*, %struct.pwm_chip** %chip, align 8, !dbg !3481
  %pwms = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %5, i32 0, i32 7, !dbg !3482
  %6 = load %struct.pwm_device*, %struct.pwm_device** %pwms, align 8, !dbg !3482
  %7 = load i32, i32* %i, align 4, !dbg !3483
  %idxprom = zext i32 %7 to i64, !dbg !3481
  %arrayidx = getelementptr %struct.pwm_device, %struct.pwm_device* %6, i64 %idxprom, !dbg !3481
  store %struct.pwm_device* %arrayidx, %struct.pwm_device** %pwm, align 8, !dbg !3480
  call void @llvm.dbg.declare(metadata %struct.pwm_state* %state, metadata !3484, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.declare(metadata %struct.pwm_export** %export, metadata !3486, metadata !DIExpression()), !dbg !3487
  %8 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !3488
  %9 = load %struct.pwm_device*, %struct.pwm_device** %pwm, align 8, !dbg !3489
  %call1 = call %struct.pwm_export* @pwm_class_get_state(%struct.device* %8, %struct.pwm_device* %9, %struct.pwm_state* %state) #9, !dbg !3490
  store %struct.pwm_export* %call1, %struct.pwm_export** %export, align 8, !dbg !3491
  %10 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !3492
  %tobool = icmp ne %struct.pwm_export* %10, null, !dbg !3492
  br i1 %tobool, label %if.end, label %if.then, !dbg !3494

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !3495

if.end:                                           ; preds = %for.body
  %11 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !3496
  %suspend = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %11, i32 0, i32 3, !dbg !3497
  %12 = bitcast %struct.pwm_state* %suspend to i8*, !dbg !3498
  %13 = bitcast %struct.pwm_state* %state to i8*, !dbg !3498
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 24, i1 false), !dbg !3498
  %enabled = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %state, i32 0, i32 3, !dbg !3499
  store i8 0, i8* %enabled, align 4, !dbg !3500
  %14 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !3501
  %15 = load %struct.pwm_device*, %struct.pwm_device** %pwm, align 8, !dbg !3502
  %call2 = call i32 @pwm_class_apply_state(%struct.pwm_export* %14, %struct.pwm_device* %15, %struct.pwm_state* %state) #9, !dbg !3503
  store i32 %call2, i32* %ret, align 4, !dbg !3504
  %16 = load i32, i32* %ret, align 4, !dbg !3505
  %cmp3 = icmp slt i32 %16, 0, !dbg !3507
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !3508

if.then4:                                         ; preds = %if.end
  %17 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !3509
  %18 = load i32, i32* %i, align 4, !dbg !3511
  %call5 = call i32 @pwm_class_resume_npwm(%struct.device* %17, i32 %18) #9, !dbg !3512
  br label %for.end, !dbg !3513

if.end6:                                          ; preds = %if.end
  br label %for.inc, !dbg !3514

for.inc:                                          ; preds = %if.end6, %if.then
  %19 = load i32, i32* %i, align 4, !dbg !3515
  %inc = add i32 %19, 1, !dbg !3515
  store i32 %inc, i32* %i, align 4, !dbg !3515
  br label %for.cond, !dbg !3516, !llvm.loop !3517

for.end:                                          ; preds = %if.then4, %for.cond
  %20 = load i32, i32* %ret, align 4, !dbg !3519
  ret i32 %20, !dbg !3520
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pwm_class_resume(%struct.device* %parent) #0 !dbg !3521 {
entry:
  %parent.addr = alloca %struct.device*, align 8
  %chip = alloca %struct.pwm_chip*, align 8
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !3522, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.declare(metadata %struct.pwm_chip** %chip, metadata !3524, metadata !DIExpression()), !dbg !3525
  %0 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !3526
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #9, !dbg !3527
  %1 = bitcast i8* %call to %struct.pwm_chip*, !dbg !3527
  store %struct.pwm_chip* %1, %struct.pwm_chip** %chip, align 8, !dbg !3525
  %2 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !3528
  %3 = load %struct.pwm_chip*, %struct.pwm_chip** %chip, align 8, !dbg !3529
  %npwm = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %3, i32 0, i32 3, !dbg !3530
  %4 = load i32, i32* %npwm, align 4, !dbg !3530
  %call1 = call i32 @pwm_class_resume_npwm(%struct.device* %2, i32 %4) #9, !dbg !3531
  ret i32 %call1, !dbg !3532
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pwm_export* @pwm_class_get_state(%struct.device* %parent, %struct.pwm_device* %pwm, %struct.pwm_state* %state) #0 !dbg !3533 {
entry:
  %retval = alloca %struct.pwm_export*, align 8
  %parent.addr = alloca %struct.device*, align 8
  %pwm.addr = alloca %struct.pwm_device*, align 8
  %state.addr = alloca %struct.pwm_state*, align 8
  %child = alloca %struct.device*, align 8
  %export = alloca %struct.pwm_export*, align 8
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !3536, metadata !DIExpression()), !dbg !3537
  store %struct.pwm_device* %pwm, %struct.pwm_device** %pwm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm.addr, metadata !3538, metadata !DIExpression()), !dbg !3539
  store %struct.pwm_state* %state, %struct.pwm_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_state** %state.addr, metadata !3540, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.declare(metadata %struct.device** %child, metadata !3542, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.declare(metadata %struct.pwm_export** %export, metadata !3544, metadata !DIExpression()), !dbg !3545
  %0 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !3546
  %flags = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %0, i32 0, i32 1, !dbg !3548
  %call = call zeroext i1 @test_bit(i64 2, i64* %flags) #9, !dbg !3549
  br i1 %call, label %if.end, label %if.then, !dbg !3550

if.then:                                          ; preds = %entry
  store %struct.pwm_export* null, %struct.pwm_export** %retval, align 8, !dbg !3551
  br label %return, !dbg !3551

if.end:                                           ; preds = %entry
  %1 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !3552
  %2 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !3553
  %3 = bitcast %struct.pwm_device* %2 to i8*, !dbg !3553
  %call1 = call %struct.device* @device_find_child(%struct.device* %1, i8* %3, i32 (%struct.device*, i8*)* @pwm_unexport_match) #9, !dbg !3554
  store %struct.device* %call1, %struct.device** %child, align 8, !dbg !3555
  %4 = load %struct.device*, %struct.device** %child, align 8, !dbg !3556
  %tobool = icmp ne %struct.device* %4, null, !dbg !3556
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !3558

if.then2:                                         ; preds = %if.end
  store %struct.pwm_export* null, %struct.pwm_export** %retval, align 8, !dbg !3559
  br label %return, !dbg !3559

if.end3:                                          ; preds = %if.end
  %5 = load %struct.device*, %struct.device** %child, align 8, !dbg !3560
  %call4 = call %struct.pwm_export* @child_to_pwm_export(%struct.device* %5) #9, !dbg !3561
  store %struct.pwm_export* %call4, %struct.pwm_export** %export, align 8, !dbg !3562
  %6 = load %struct.device*, %struct.device** %child, align 8, !dbg !3563
  call void @put_device(%struct.device* %6) #9, !dbg !3564
  %7 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !3565
  %lock = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %7, i32 0, i32 2, !dbg !3566
  call void @mutex_lock(%struct.mutex* %lock) #9, !dbg !3567
  %8 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !3568
  %9 = load %struct.pwm_state*, %struct.pwm_state** %state.addr, align 8, !dbg !3569
  call void @pwm_get_state(%struct.pwm_device* %8, %struct.pwm_state* %9) #9, !dbg !3570
  %10 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !3571
  store %struct.pwm_export* %10, %struct.pwm_export** %retval, align 8, !dbg !3572
  br label %return, !dbg !3572

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %11 = load %struct.pwm_export*, %struct.pwm_export** %retval, align 8, !dbg !3573
  ret %struct.pwm_export* %11, !dbg !3573
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pwm_class_apply_state(%struct.pwm_export* %export, %struct.pwm_device* %pwm, %struct.pwm_state* %state) #0 !dbg !3574 {
entry:
  %export.addr = alloca %struct.pwm_export*, align 8
  %pwm.addr = alloca %struct.pwm_device*, align 8
  %state.addr = alloca %struct.pwm_state*, align 8
  %ret = alloca i32, align 4
  store %struct.pwm_export* %export, %struct.pwm_export** %export.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_export** %export.addr, metadata !3577, metadata !DIExpression()), !dbg !3578
  store %struct.pwm_device* %pwm, %struct.pwm_device** %pwm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm.addr, metadata !3579, metadata !DIExpression()), !dbg !3580
  store %struct.pwm_state* %state, %struct.pwm_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pwm_state** %state.addr, metadata !3581, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3583, metadata !DIExpression()), !dbg !3584
  %0 = load %struct.pwm_device*, %struct.pwm_device** %pwm.addr, align 8, !dbg !3585
  %1 = load %struct.pwm_state*, %struct.pwm_state** %state.addr, align 8, !dbg !3586
  %call = call i32 @pwm_apply_state(%struct.pwm_device* %0, %struct.pwm_state* %1) #9, !dbg !3587
  store i32 %call, i32* %ret, align 4, !dbg !3584
  %2 = load %struct.pwm_export*, %struct.pwm_export** %export.addr, align 8, !dbg !3588
  %lock = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %2, i32 0, i32 2, !dbg !3589
  call void @mutex_unlock(%struct.mutex* %lock) #9, !dbg !3590
  %3 = load i32, i32* %ret, align 4, !dbg !3591
  ret i32 %3, !dbg !3592
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pwm_class_resume_npwm(%struct.device* %parent, i32 %npwm) #0 !dbg !3593 {
entry:
  %parent.addr = alloca %struct.device*, align 8
  %npwm.addr = alloca i32, align 4
  %chip = alloca %struct.pwm_chip*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %pwm = alloca %struct.pwm_device*, align 8
  %state = alloca %struct.pwm_state, align 8
  %export = alloca %struct.pwm_export*, align 8
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !3596, metadata !DIExpression()), !dbg !3597
  store i32 %npwm, i32* %npwm.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %npwm.addr, metadata !3598, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.declare(metadata %struct.pwm_chip** %chip, metadata !3600, metadata !DIExpression()), !dbg !3601
  %0 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !3602
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #9, !dbg !3603
  %1 = bitcast i8* %call to %struct.pwm_chip*, !dbg !3603
  store %struct.pwm_chip* %1, %struct.pwm_chip** %chip, align 8, !dbg !3601
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3604, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3606, metadata !DIExpression()), !dbg !3607
  store i32 0, i32* %ret, align 4, !dbg !3607
  store i32 0, i32* %i, align 4, !dbg !3608
  br label %for.cond, !dbg !3610

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !3611
  %3 = load i32, i32* %npwm.addr, align 4, !dbg !3613
  %cmp = icmp ult i32 %2, %3, !dbg !3614
  br i1 %cmp, label %for.body, label %for.end, !dbg !3615

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.pwm_device** %pwm, metadata !3616, metadata !DIExpression()), !dbg !3618
  %4 = load %struct.pwm_chip*, %struct.pwm_chip** %chip, align 8, !dbg !3619
  %pwms = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %4, i32 0, i32 7, !dbg !3620
  %5 = load %struct.pwm_device*, %struct.pwm_device** %pwms, align 8, !dbg !3620
  %6 = load i32, i32* %i, align 4, !dbg !3621
  %idxprom = zext i32 %6 to i64, !dbg !3619
  %arrayidx = getelementptr %struct.pwm_device, %struct.pwm_device* %5, i64 %idxprom, !dbg !3619
  store %struct.pwm_device* %arrayidx, %struct.pwm_device** %pwm, align 8, !dbg !3618
  call void @llvm.dbg.declare(metadata %struct.pwm_state* %state, metadata !3622, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.declare(metadata %struct.pwm_export** %export, metadata !3624, metadata !DIExpression()), !dbg !3625
  %7 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !3626
  %8 = load %struct.pwm_device*, %struct.pwm_device** %pwm, align 8, !dbg !3627
  %call1 = call %struct.pwm_export* @pwm_class_get_state(%struct.device* %7, %struct.pwm_device* %8, %struct.pwm_state* %state) #9, !dbg !3628
  store %struct.pwm_export* %call1, %struct.pwm_export** %export, align 8, !dbg !3629
  %9 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !3630
  %tobool = icmp ne %struct.pwm_export* %9, null, !dbg !3630
  br i1 %tobool, label %if.end, label %if.then, !dbg !3632

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !3633

if.end:                                           ; preds = %for.body
  %10 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !3634
  %suspend = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %10, i32 0, i32 3, !dbg !3635
  %enabled = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %suspend, i32 0, i32 3, !dbg !3636
  %11 = load i8, i8* %enabled, align 4, !dbg !3636
  %tobool2 = trunc i8 %11 to i1, !dbg !3636
  %enabled3 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %state, i32 0, i32 3, !dbg !3637
  %frombool = zext i1 %tobool2 to i8, !dbg !3638
  store i8 %frombool, i8* %enabled3, align 4, !dbg !3638
  %12 = load %struct.pwm_export*, %struct.pwm_export** %export, align 8, !dbg !3639
  %13 = load %struct.pwm_device*, %struct.pwm_device** %pwm, align 8, !dbg !3640
  %call4 = call i32 @pwm_class_apply_state(%struct.pwm_export* %12, %struct.pwm_device* %13, %struct.pwm_state* %state) #9, !dbg !3641
  store i32 %call4, i32* %ret, align 4, !dbg !3642
  %14 = load i32, i32* %ret, align 4, !dbg !3643
  %cmp5 = icmp slt i32 %14, 0, !dbg !3645
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !3646

if.then6:                                         ; preds = %if.end
  br label %for.end, !dbg !3647

if.end7:                                          ; preds = %if.end
  br label %for.inc, !dbg !3648

for.inc:                                          ; preds = %if.end7, %if.then
  %15 = load i32, i32* %i, align 4, !dbg !3649
  %inc = add i32 %15, 1, !dbg !3649
  store i32 %inc, i32* %i, align 4, !dbg !3649
  br label %for.cond, !dbg !3650, !llvm.loop !3651

for.end:                                          ; preds = %if.then6, %for.cond
  %16 = load i32, i32* %ret, align 4, !dbg !3653
  ret i32 %16, !dbg !3654
}

; Function Attrs: noredzone
declare dso_local %struct.device* @device_find_child(%struct.device*, i8*, i32 (%struct.device*, i8*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pwm_unexport_match(%struct.device* %child, i8* %data) #0 !dbg !3655 {
entry:
  %child.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %child, %struct.device** %child.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %child.addr, metadata !3658, metadata !DIExpression()), !dbg !3659
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3660, metadata !DIExpression()), !dbg !3661
  %0 = load %struct.device*, %struct.device** %child.addr, align 8, !dbg !3662
  %call = call %struct.pwm_device* @child_to_pwm_device(%struct.device* %0) #9, !dbg !3663
  %1 = load i8*, i8** %data.addr, align 8, !dbg !3664
  %2 = bitcast i8* %1 to %struct.pwm_device*, !dbg !3664
  %cmp = icmp eq %struct.pwm_device* %call, %2, !dbg !3665
  %conv = zext i1 %cmp to i32, !dbg !3665
  ret i32 %conv, !dbg !3666
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !3667 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3668, metadata !DIExpression()), !dbg !3669
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3670, metadata !DIExpression()), !dbg !3671
  ret i1 true, !dbg !3672
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_and_clear_bit(i64 %nr, i64* %addr) #0 !dbg !3673 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !3674, metadata !DIExpression()), !dbg !3676
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !3678, metadata !DIExpression()), !dbg !3679
  %c.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i, metadata !3680, metadata !DIExpression()), !dbg !3682
  %tmp.i = alloca i8, align 1
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !2578, metadata !DIExpression()), !dbg !3683
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2582, metadata !DIExpression()), !dbg !3685
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !3686, metadata !DIExpression()), !dbg !3687
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !3688, metadata !DIExpression()), !dbg !3689
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !3690
  %1 = load i64, i64* %nr.addr, align 8, !dbg !3691
  %div = sdiv i64 %1, 64, !dbg !3691
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !3692
  %2 = bitcast i64* %add.ptr to i8*, !dbg !3690
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !3693
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3694
  %conv.i = trunc i64 %4 to i32, !dbg !3694
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !3695
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !3696
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !3696
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #11, !dbg !3696
  %7 = load i64, i64* %nr.addr, align 8, !dbg !3697
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !3698
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !3682
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !3682
  %11 = call i8 asm sideeffect " btrq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64* %9) #12, !dbg !3682, !srcloc !3699
  store i8 %11, i8* %c.i, align 1, !dbg !3682
  %12 = load i8, i8* %c.i, align 1, !dbg !3682
  %tobool.i = trunc i8 %12 to i1, !dbg !3682
  %frombool.i = zext i1 %tobool.i to i8, !dbg !3682
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !3682
  %13 = load i8, i8* %tmp.i, align 1, !dbg !3682
  %tobool1.i = trunc i8 %13 to i1, !dbg !3682
  ret i1 %tobool1.i, !dbg !3700
}

; Function Attrs: noredzone
declare dso_local i32 @__class_register(%struct.class*, %struct.lock_class_key*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind willreturn }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind }
attributes #13 = { noredzone nounwind readnone }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2199, !2200, !2201, !2202}
!llvm.ident = !{!2203}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pwm_class", scope: !2, file: !3, line: 476, type: !2007, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !82, globals: !2141, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pwm/sysfs.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !55, !59, !70, !75}
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
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 46, baseType: !7, size: 32, elements: !56)
!56 = !{!57, !58}
!57 = !DIEnumerator(name: "PWMF_REQUESTED", value: 1, isUnsigned: true)
!58 = !DIEnumerator(name: "PWMF_EXPORTED", value: 2, isUnsigned: true)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !60, line: 53, baseType: !7, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69}
!62 = !DIEnumerator(name: "KOBJ_ADD", value: 0, isUnsigned: true)
!63 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1, isUnsigned: true)
!64 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2, isUnsigned: true)
!65 = !DIEnumerator(name: "KOBJ_MOVE", value: 3, isUnsigned: true)
!66 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4, isUnsigned: true)
!67 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5, isUnsigned: true)
!68 = !DIEnumerator(name: "KOBJ_BIND", value: 6, isUnsigned: true)
!69 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7, isUnsigned: true)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !71, line: 10, baseType: !7, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!72 = !{!73, !74}
!73 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!74 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !76, line: 305, baseType: !7, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!77 = !{!78, !79, !80, !81}
!78 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!79 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!80 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!81 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!82 = !{!83, !84, !86, !87, !90, !92, !209, !2140}
!83 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !85, line: 148, baseType: !7)
!85 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !89)
!89 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !83)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pwm_export", file: !3, line: 17, size: 6016, elements: !94)
!94 = !{!95, !2049, !2138, !2139}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !93, file: !3, line: 18, baseType: !96, size: 5568)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !97)
!97 = !{!98, !1572, !1574, !1577, !1578, !1629, !1726, !1727, !1728, !1729, !1730, !1739, !1844, !1857, !1860, !1861, !1865, !1867, !1868, !1869, !1873, !1879, !1880, !1883, !1998, !1999, !2002, !2003, !2004, !2005, !2037, !2038, !2039, !2042, !2045, !2046, !2047, !2048}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !96, file: !30, line: 462, baseType: !99, size: 512)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !60, line: 64, size: 512, elements: !100)
!100 = !{!101, !104, !110, !112, !173, !1409, !1562, !1567, !1568, !1569, !1570, !1571}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !99, file: !60, line: 65, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !99, file: !60, line: 66, baseType: !105, size: 128, offset: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !85, line: 178, size: 128, elements: !106)
!106 = !{!107, !109}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !105, file: !85, line: 179, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !105, file: !85, line: 179, baseType: !108, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !99, file: !60, line: 67, baseType: !111, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !99, file: !60, line: 68, baseType: !113, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !60, line: 192, size: 704, elements: !115)
!115 = !{!116, !117, !133, !134}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !114, file: !60, line: 193, baseType: !105, size: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !114, file: !60, line: 194, baseType: !118, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !119, line: 83, baseType: !120)
!119 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !119, line: 71, elements: !121)
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, scope: !120, file: !119, line: 72, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !120, file: !119, line: 72, elements: !124)
!124 = !{!125}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !123, file: !119, line: 73, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !119, line: 20, elements: !127)
!127 = !{!128}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !126, file: !119, line: 21, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !130, line: 25, baseType: !131)
!130 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 25, elements: !132)
!132 = !{}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !114, file: !60, line: 195, baseType: !99, size: 512, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !114, file: !60, line: 196, baseType: !135, size: 64, offset: 640)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !60, line: 156, size: 192, elements: !138)
!138 = !{!139, !145, !150}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !137, file: !60, line: 157, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!144, !113, !111}
!144 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !137, file: !60, line: 158, baseType: !146, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!102, !113, !111}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !137, file: !60, line: 159, baseType: !151, size: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!144, !113, !111, !155}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !60, line: 148, size: 20736, elements: !157)
!157 = !{!158, !163, !167, !168, !172}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !156, file: !60, line: 149, baseType: !159, size: 192)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 192, elements: !161)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!161 = !{!162}
!162 = !DISubrange(count: 3)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !156, file: !60, line: 150, baseType: !164, size: 4096, offset: 192)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 4096, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !156, file: !60, line: 151, baseType: !144, size: 32, offset: 4288)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !156, file: !60, line: 152, baseType: !169, size: 16384, offset: 4320)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 16384, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 2048)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !156, file: !60, line: 153, baseType: !144, size: 32, offset: 20704)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !99, file: !60, line: 69, baseType: !174, size: 64, offset: 320)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !60, line: 138, size: 448, elements: !176)
!176 = !{!177, !181, !210, !212, !1355, !1388, !1392}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !175, file: !60, line: 139, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !111}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !175, file: !60, line: 140, baseType: !182, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !185, line: 230, size: 128, elements: !186)
!185 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!186 = !{!187, !202}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !184, file: !185, line: 231, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!191, !111, !195, !160}
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !85, line: 60, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !193, line: 73, baseType: !194)
!193 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !193, line: 15, baseType: !83)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !185, line: 30, size: 128, elements: !197)
!197 = !{!198, !199}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !185, line: 31, baseType: !102, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !196, file: !185, line: 32, baseType: !200, size: 16, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !85, line: 19, baseType: !201)
!201 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !184, file: !185, line: 232, baseType: !203, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!191, !111, !195, !102, !206}
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !85, line: 55, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !193, line: 72, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !193, line: 16, baseType: !209)
!209 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !175, file: !60, line: 141, baseType: !211, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !175, file: !60, line: 142, baseType: !213, size: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !185, line: 84, size: 320, elements: !217)
!217 = !{!218, !219, !223, !1352, !1353}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !216, file: !185, line: 85, baseType: !102, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !216, file: !185, line: 86, baseType: !220, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!200, !111, !195, !144}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !216, file: !185, line: 88, baseType: !224, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!200, !111, !227, !144}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !185, line: 168, size: 448, elements: !229)
!229 = !{!230, !231, !232, !233, !243, !244}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !228, file: !185, line: 169, baseType: !196, size: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !228, file: !185, line: 170, baseType: !206, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !228, file: !185, line: 171, baseType: !86, size: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !228, file: !185, line: 172, baseType: !234, size: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!191, !237, !111, !227, !160, !240, !206}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !239, line: 526, flags: DIFlagFwdDecl)
!239 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !85, line: 46, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !193, line: 88, baseType: !242)
!242 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !228, file: !185, line: 174, baseType: !234, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !228, file: !185, line: 176, baseType: !245, size: 64, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!144, !237, !111, !227, !248}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !250, line: 305, size: 1472, elements: !251)
!250 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!251 = !{!252, !253, !254, !255, !256, !264, !265, !1326, !1332, !1333, !1338, !1339, !1342, !1346, !1347, !1348, !1349, !1350}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !249, file: !250, line: 308, baseType: !209, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !249, file: !250, line: 309, baseType: !209, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !249, file: !250, line: 313, baseType: !248, size: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !249, file: !250, line: 313, baseType: !248, size: 64, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !249, file: !250, line: 315, baseType: !257, size: 192, align: 64, offset: 256)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !258, line: 24, size: 192, align: 64, elements: !259)
!258 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!259 = !{!260, !261, !263}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !257, file: !258, line: 25, baseType: !209, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !257, file: !258, line: 26, baseType: !262, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !257, file: !258, line: 27, baseType: !262, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !249, file: !250, line: 323, baseType: !209, size: 64, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !249, file: !250, line: 327, baseType: !266, size: 64, offset: 512)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !250, line: 388, size: 7296, elements: !268)
!268 = !{!269, !1322}
!269 = !DIDerivedType(tag: DW_TAG_member, scope: !267, file: !250, line: 389, baseType: !270, size: 7296)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !267, file: !250, line: 389, size: 7296, elements: !271)
!271 = !{!272, !273, !277, !283, !287, !288, !289, !290, !291, !299, !304, !305, !306, !307, !316, !317, !318, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !353, !361, !364, !396, !397, !1292, !1293, !1296, !1300, !1301, !1304, !1305, !1306, !1309, !1321}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !270, file: !250, line: 390, baseType: !248, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !270, file: !250, line: 391, baseType: !274, size: 64, offset: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !258, line: 31, size: 64, elements: !275)
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !274, file: !258, line: 32, baseType: !262, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !270, file: !250, line: 392, baseType: !278, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !279, line: 23, baseType: !280)
!279 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !281, line: 31, baseType: !282)
!281 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!282 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !270, file: !250, line: 394, baseType: !284, size: 64, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!209, !237, !209, !209, !209, !209}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !270, file: !250, line: 398, baseType: !209, size: 64, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !270, file: !250, line: 399, baseType: !209, size: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !270, file: !250, line: 405, baseType: !209, size: 64, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !270, file: !250, line: 406, baseType: !209, size: 64, offset: 448)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !270, file: !250, line: 407, baseType: !292, size: 64, offset: 512)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !239, line: 286, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !239, line: 286, size: 64, elements: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !294, file: !239, line: 286, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !298, line: 18, baseType: !209)
!298 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!299 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !270, file: !250, line: 416, baseType: !300, size: 32, offset: 576)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !85, line: 168, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !85, line: 166, size: 32, elements: !302)
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !301, file: !85, line: 167, baseType: !144, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !270, file: !250, line: 428, baseType: !300, size: 32, offset: 608)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !270, file: !250, line: 437, baseType: !300, size: 32, offset: 640)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !270, file: !250, line: 447, baseType: !300, size: 32, offset: 672)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !270, file: !250, line: 450, baseType: !308, size: 64, offset: 704)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !309, line: 13, baseType: !310)
!309 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !85, line: 175, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !85, line: 173, size: 64, elements: !312)
!312 = !{!313}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !311, file: !85, line: 174, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !279, line: 22, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !281, line: 30, baseType: !242)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !270, file: !250, line: 452, baseType: !144, size: 32, offset: 768)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !270, file: !250, line: 454, baseType: !118, offset: 800)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !270, file: !250, line: 457, baseType: !319, size: 256, offset: 832)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !320, line: 35, size: 256, elements: !321)
!320 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!321 = !{!322, !323, !324, !326}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !319, file: !320, line: 36, baseType: !308, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !319, file: !320, line: 42, baseType: !308, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !319, file: !320, line: 46, baseType: !325, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !119, line: 29, baseType: !126)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !319, file: !320, line: 47, baseType: !105, size: 128, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !270, file: !250, line: 459, baseType: !105, size: 128, offset: 1088)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !270, file: !250, line: 466, baseType: !209, size: 64, offset: 1216)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !270, file: !250, line: 467, baseType: !209, size: 64, offset: 1280)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !270, file: !250, line: 469, baseType: !209, size: 64, offset: 1344)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !270, file: !250, line: 470, baseType: !209, size: 64, offset: 1408)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !270, file: !250, line: 471, baseType: !310, size: 64, offset: 1472)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !270, file: !250, line: 472, baseType: !209, size: 64, offset: 1536)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !270, file: !250, line: 473, baseType: !209, size: 64, offset: 1600)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !270, file: !250, line: 474, baseType: !209, size: 64, offset: 1664)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !270, file: !250, line: 475, baseType: !209, size: 64, offset: 1728)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !270, file: !250, line: 477, baseType: !118, offset: 1792)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !270, file: !250, line: 478, baseType: !209, size: 64, offset: 1792)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !270, file: !250, line: 478, baseType: !209, size: 64, offset: 1856)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !270, file: !250, line: 478, baseType: !209, size: 64, offset: 1920)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !270, file: !250, line: 478, baseType: !209, size: 64, offset: 1984)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !270, file: !250, line: 479, baseType: !209, size: 64, offset: 2048)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !270, file: !250, line: 479, baseType: !209, size: 64, offset: 2112)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !270, file: !250, line: 479, baseType: !209, size: 64, offset: 2176)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !270, file: !250, line: 480, baseType: !209, size: 64, offset: 2240)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !270, file: !250, line: 480, baseType: !209, size: 64, offset: 2304)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !270, file: !250, line: 480, baseType: !209, size: 64, offset: 2368)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !270, file: !250, line: 480, baseType: !209, size: 64, offset: 2432)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !270, file: !250, line: 482, baseType: !350, size: 2816, offset: 2496)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 2816, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 44)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !270, file: !250, line: 488, baseType: !354, size: 256, offset: 5312)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !355, line: 60, size: 256, elements: !356)
!355 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !354, file: !355, line: 61, baseType: !358, size: 256)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 256, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 4)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !270, file: !250, line: 490, baseType: !362, size: 64, offset: 5568)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !250, line: 490, flags: DIFlagFwdDecl)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !270, file: !250, line: 493, baseType: !365, size: 896, offset: 5632)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !366, line: 53, baseType: !367)
!366 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !366, line: 13, size: 896, elements: !368)
!368 = !{!369, !370, !371, !372, !375, !376, !383, !384, !388, !389, !392}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !367, file: !366, line: 18, baseType: !278, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !367, file: !366, line: 28, baseType: !310, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !367, file: !366, line: 31, baseType: !319, size: 256, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !367, file: !366, line: 32, baseType: !373, size: 64, offset: 384)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !366, line: 32, flags: DIFlagFwdDecl)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !367, file: !366, line: 37, baseType: !201, size: 16, offset: 448)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !367, file: !366, line: 40, baseType: !377, size: 192, offset: 512)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !378, line: 53, size: 192, elements: !379)
!378 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!379 = !{!380, !381, !382}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !377, file: !378, line: 54, baseType: !308, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !377, file: !378, line: 55, baseType: !118, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !377, file: !378, line: 59, baseType: !105, size: 128, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !367, file: !366, line: 41, baseType: !86, size: 64, offset: 704)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !367, file: !366, line: 42, baseType: !385, size: 64, offset: 768)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!387 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !366, line: 42, flags: DIFlagFwdDecl)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !367, file: !366, line: 44, baseType: !300, size: 32, offset: 832)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !367, file: !366, line: 50, baseType: !390, size: 16, offset: 864)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !279, line: 19, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !281, line: 24, baseType: !201)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !367, file: !366, line: 51, baseType: !393, size: 16, offset: 880)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !279, line: 18, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !281, line: 23, baseType: !395)
!395 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !270, file: !250, line: 495, baseType: !209, size: 64, offset: 6528)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !270, file: !250, line: 497, baseType: !398, size: 64, offset: 6592)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !250, line: 381, size: 384, elements: !400)
!400 = !{!401, !402, !1291}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !399, file: !250, line: 382, baseType: !300, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !399, file: !250, line: 383, baseType: !403, size: 128, offset: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !250, line: 376, size: 128, elements: !404)
!404 = !{!405, !1289}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !403, file: !250, line: 377, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !408, line: 640, size: 48640, elements: !409)
!408 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!409 = !{!410, !418, !419, !420, !426, !427, !428, !429, !430, !431, !432, !433, !437, !455, !466, !561, !562, !563, !574, !575, !577, !578, !579, !580, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !659, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !715, !717, !718, !719, !731, !733, !734, !735, !736, !737, !743, !744, !745, !746, !747, !748, !749, !761, !766, !770, !771, !772, !775, !779, !782, !785, !788, !791, !794, !797, !800, !806, !807, !808, !814, !815, !816, !817, !818, !827, !828, !829, !830, !831, !836, !837, !838, !841, !842, !845, !848, !851, !854, !857, !860, !861, !941, !944, !947, !948, !951, !952, !953, !959, !960, !961, !974, !975, !976, !988, !993, !996, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !407, file: !408, line: 646, baseType: !411, size: 128)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !412, line: 56, size: 128, elements: !413)
!412 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!413 = !{!414, !415}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !411, file: !412, line: 57, baseType: !209, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !411, file: !412, line: 58, baseType: !416, size: 32, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !279, line: 21, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !281, line: 27, baseType: !7)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !407, file: !408, line: 649, baseType: !91, size: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !407, file: !408, line: 657, baseType: !86, size: 64, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !407, file: !408, line: 658, baseType: !421, size: 32, offset: 256)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !422, line: 113, baseType: !423)
!422 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !422, line: 111, size: 32, elements: !424)
!424 = !{!425}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !423, file: !422, line: 112, baseType: !300, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !407, file: !408, line: 660, baseType: !7, size: 32, offset: 288)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !407, file: !408, line: 661, baseType: !7, size: 32, offset: 320)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !407, file: !408, line: 684, baseType: !144, size: 32, offset: 352)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !407, file: !408, line: 686, baseType: !144, size: 32, offset: 384)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !407, file: !408, line: 687, baseType: !144, size: 32, offset: 416)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !407, file: !408, line: 688, baseType: !144, size: 32, offset: 448)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !407, file: !408, line: 689, baseType: !7, size: 32, offset: 480)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !407, file: !408, line: 691, baseType: !434, size: 64, offset: 512)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!436 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !408, line: 691, flags: DIFlagFwdDecl)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !407, file: !408, line: 692, baseType: !438, size: 832, offset: 576)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !408, line: 451, size: 832, elements: !439)
!439 = !{!440, !445, !446, !447, !448, !449, !450, !451, !452, !453}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !438, file: !408, line: 453, baseType: !441, size: 128)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !408, line: 325, size: 128, elements: !442)
!442 = !{!443, !444}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !441, file: !408, line: 326, baseType: !209, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !441, file: !408, line: 327, baseType: !416, size: 32, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !438, file: !408, line: 454, baseType: !257, size: 192, align: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !438, file: !408, line: 455, baseType: !105, size: 128, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !438, file: !408, line: 456, baseType: !7, size: 32, offset: 448)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !438, file: !408, line: 458, baseType: !278, size: 64, offset: 512)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !438, file: !408, line: 459, baseType: !278, size: 64, offset: 576)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !438, file: !408, line: 460, baseType: !278, size: 64, offset: 640)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !438, file: !408, line: 461, baseType: !278, size: 64, offset: 704)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !438, file: !408, line: 463, baseType: !278, size: 64, offset: 768)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !438, file: !408, line: 465, baseType: !454, offset: 832)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !408, line: 415, elements: !132)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !407, file: !408, line: 693, baseType: !456, size: 384, offset: 1408)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !408, line: 489, size: 384, elements: !457)
!457 = !{!458, !459, !460, !461, !462, !463, !464}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !456, file: !408, line: 490, baseType: !105, size: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !456, file: !408, line: 491, baseType: !209, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !456, file: !408, line: 492, baseType: !209, size: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !456, file: !408, line: 493, baseType: !7, size: 32, offset: 256)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !456, file: !408, line: 494, baseType: !201, size: 16, offset: 288)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !456, file: !408, line: 495, baseType: !201, size: 16, offset: 304)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !456, file: !408, line: 497, baseType: !465, size: 64, offset: 320)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !407, file: !408, line: 697, baseType: !467, size: 1792, offset: 1792)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !408, line: 507, size: 1792, elements: !468)
!468 = !{!469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !558, !559}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !467, file: !408, line: 508, baseType: !257, size: 192, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !467, file: !408, line: 515, baseType: !278, size: 64, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !467, file: !408, line: 516, baseType: !278, size: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !467, file: !408, line: 517, baseType: !278, size: 64, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !467, file: !408, line: 518, baseType: !278, size: 64, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !467, file: !408, line: 519, baseType: !278, size: 64, offset: 448)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !467, file: !408, line: 526, baseType: !314, size: 64, offset: 512)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !467, file: !408, line: 527, baseType: !278, size: 64, offset: 576)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !467, file: !408, line: 528, baseType: !7, size: 32, offset: 640)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !467, file: !408, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !467, file: !408, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !467, file: !408, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !467, file: !408, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !467, file: !408, line: 563, baseType: !483, size: 512, offset: 704)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !484)
!484 = !{!485, !493, !494, !499, !551, !555, !556, !557}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !483, file: !6, line: 119, baseType: !486, size: 256)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !487, line: 9, size: 256, elements: !488)
!487 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!488 = !{!489, !490}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !486, file: !487, line: 10, baseType: !257, size: 192, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !486, file: !487, line: 11, baseType: !491, size: 64, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !492, line: 29, baseType: !314)
!492 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !483, file: !6, line: 120, baseType: !491, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !483, file: !6, line: 121, baseType: !495, size: 64, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!5, !498}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !483, file: !6, line: 122, baseType: !500, size: 64, offset: 384)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !502)
!502 = !{!503, !523, !524, !527, !537, !538, !546, !550}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !501, file: !6, line: 160, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !506)
!506 = !{!507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !505, file: !6, line: 215, baseType: !325)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !505, file: !6, line: 216, baseType: !7, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !505, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !505, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !505, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !505, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !505, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !505, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !505, file: !6, line: 233, baseType: !491, size: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !505, file: !6, line: 234, baseType: !498, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !505, file: !6, line: 235, baseType: !491, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !505, file: !6, line: 236, baseType: !498, size: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !505, file: !6, line: 237, baseType: !520, size: 4096, offset: 512)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 4096, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: 8)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !501, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !501, file: !6, line: 162, baseType: !525, size: 32, offset: 96)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !85, line: 27, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !193, line: 96, baseType: !144)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !501, file: !6, line: 163, baseType: !528, size: 32, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !529, line: 276, baseType: !530)
!529 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !529, line: 276, size: 32, elements: !531)
!531 = !{!532}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !530, file: !529, line: 276, baseType: !533, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !529, line: 70, baseType: !534)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !529, line: 65, size: 32, elements: !535)
!535 = !{!536}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !534, file: !529, line: 66, baseType: !7, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !501, file: !6, line: 164, baseType: !498, size: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !501, file: !6, line: 165, baseType: !539, size: 128, offset: 256)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !487, line: 14, size: 128, elements: !540)
!540 = !{!541}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !539, file: !487, line: 15, baseType: !542, size: 128)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !258, line: 125, size: 128, elements: !543)
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !542, file: !258, line: 126, baseType: !274, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !542, file: !258, line: 127, baseType: !262, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !501, file: !6, line: 166, baseType: !547, size: 64, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!491}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !501, file: !6, line: 167, baseType: !491, size: 64, offset: 448)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !483, file: !6, line: 123, baseType: !552, size: 8, offset: 448)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !279, line: 17, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !281, line: 21, baseType: !554)
!554 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !483, file: !6, line: 124, baseType: !552, size: 8, offset: 456)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !483, file: !6, line: 125, baseType: !552, size: 8, offset: 464)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !483, file: !6, line: 126, baseType: !552, size: 8, offset: 472)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !467, file: !408, line: 572, baseType: !483, size: 512, offset: 1216)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !467, file: !408, line: 580, baseType: !560, size: 64, offset: 1728)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !407, file: !408, line: 721, baseType: !7, size: 32, offset: 3584)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !407, file: !408, line: 722, baseType: !144, size: 32, offset: 3616)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !407, file: !408, line: 723, baseType: !564, size: 64, offset: 3648)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !567, line: 17, baseType: !568)
!567 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !567, line: 17, size: 64, elements: !569)
!569 = !{!570}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !568, file: !567, line: 17, baseType: !571, size: 64)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 64, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 1)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !407, file: !408, line: 724, baseType: !566, size: 64, offset: 3712)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !407, file: !408, line: 749, baseType: !576, offset: 3776)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !408, line: 290, elements: !132)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !407, file: !408, line: 751, baseType: !105, size: 128, offset: 3776)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !407, file: !408, line: 757, baseType: !266, size: 64, offset: 3904)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !407, file: !408, line: 758, baseType: !266, size: 64, offset: 3968)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !407, file: !408, line: 761, baseType: !581, size: 320, offset: 4032)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !355, line: 34, size: 320, elements: !582)
!582 = !{!583, !584}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !581, file: !355, line: 35, baseType: !278, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !581, file: !355, line: 36, baseType: !585, size: 256, offset: 64)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 256, elements: !359)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !407, file: !408, line: 766, baseType: !144, size: 32, offset: 4352)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !407, file: !408, line: 767, baseType: !144, size: 32, offset: 4384)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !407, file: !408, line: 768, baseType: !144, size: 32, offset: 4416)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !407, file: !408, line: 770, baseType: !144, size: 32, offset: 4448)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !407, file: !408, line: 772, baseType: !209, size: 64, offset: 4480)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !407, file: !408, line: 775, baseType: !7, size: 32, offset: 4544)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !407, file: !408, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !407, file: !408, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !407, file: !408, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !407, file: !408, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !407, file: !408, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !407, file: !408, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !407, file: !408, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !407, file: !408, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !407, file: !408, line: 831, baseType: !209, size: 64, offset: 4672)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !407, file: !408, line: 833, baseType: !602, size: 384, offset: 4736)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !603)
!603 = !{!604, !609}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !602, file: !12, line: 26, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!83, !608}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, scope: !602, file: !12, line: 27, baseType: !610, size: 320, offset: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !602, file: !12, line: 27, size: 320, elements: !611)
!611 = !{!612, !622, !649}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !610, file: !12, line: 36, baseType: !613, size: 320)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !610, file: !12, line: 29, size: 320, elements: !614)
!614 = !{!615, !617, !618, !619, !620, !621}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !613, file: !12, line: 30, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !613, file: !12, line: 31, baseType: !416, size: 32, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !613, file: !12, line: 32, baseType: !416, size: 32, offset: 96)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !613, file: !12, line: 33, baseType: !416, size: 32, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !613, file: !12, line: 34, baseType: !278, size: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !613, file: !12, line: 35, baseType: !616, size: 64, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !610, file: !12, line: 46, baseType: !623, size: 192)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !610, file: !12, line: 38, size: 192, elements: !624)
!624 = !{!625, !626, !627, !648}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !623, file: !12, line: 39, baseType: !525, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !623, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, scope: !623, file: !12, line: 41, baseType: !628, size: 64, offset: 64)
!628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !623, file: !12, line: 41, size: 64, elements: !629)
!629 = !{!630, !638}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !628, file: !12, line: 42, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !633, line: 7, size: 128, elements: !634)
!633 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!634 = !{!635, !637}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !632, file: !633, line: 8, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !193, line: 93, baseType: !242)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !632, file: !633, line: 9, baseType: !242, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !628, file: !12, line: 43, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !641, line: 7, size: 64, elements: !642)
!641 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!642 = !{!643, !647}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !640, file: !641, line: 8, baseType: !644, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !641, line: 5, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !279, line: 20, baseType: !646)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !281, line: 26, baseType: !144)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !640, file: !641, line: 9, baseType: !645, size: 32, offset: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !623, file: !12, line: 45, baseType: !278, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !610, file: !12, line: 54, baseType: !650, size: 256)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !610, file: !12, line: 48, size: 256, elements: !651)
!651 = !{!652, !655, !656, !657, !658}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !650, file: !12, line: 49, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !650, file: !12, line: 50, baseType: !144, size: 32, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !650, file: !12, line: 51, baseType: !144, size: 32, offset: 96)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !650, file: !12, line: 52, baseType: !209, size: 64, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !650, file: !12, line: 53, baseType: !209, size: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !407, file: !408, line: 835, baseType: !660, size: 32, offset: 5120)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !85, line: 22, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !193, line: 28, baseType: !144)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !407, file: !408, line: 836, baseType: !660, size: 32, offset: 5152)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !407, file: !408, line: 840, baseType: !209, size: 64, offset: 5184)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !407, file: !408, line: 849, baseType: !406, size: 64, offset: 5248)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !407, file: !408, line: 852, baseType: !406, size: 64, offset: 5312)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !407, file: !408, line: 857, baseType: !105, size: 128, offset: 5376)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !407, file: !408, line: 858, baseType: !105, size: 128, offset: 5504)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !407, file: !408, line: 859, baseType: !406, size: 64, offset: 5632)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !407, file: !408, line: 867, baseType: !105, size: 128, offset: 5696)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !407, file: !408, line: 868, baseType: !105, size: 128, offset: 5824)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !407, file: !408, line: 871, baseType: !672, size: 64, offset: 5952)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !674, line: 59, size: 768, elements: !675)
!674 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!675 = !{!676, !677, !678, !679, !690, !691, !698, !707}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !673, file: !674, line: 61, baseType: !421, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !673, file: !674, line: 62, baseType: !7, size: 32, offset: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !673, file: !674, line: 63, baseType: !118, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !673, file: !674, line: 65, baseType: !680, size: 256, offset: 64)
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !681, size: 256, elements: !359)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !85, line: 182, size: 64, elements: !682)
!682 = !{!683}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !681, file: !85, line: 183, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !85, line: 186, size: 128, elements: !686)
!686 = !{!687, !688}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !685, file: !85, line: 187, baseType: !684, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !685, file: !85, line: 187, baseType: !689, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !673, file: !674, line: 66, baseType: !681, size: 64, offset: 320)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !673, file: !674, line: 68, baseType: !692, size: 128, offset: 384)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !693, line: 40, baseType: !694)
!693 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !693, line: 36, size: 128, elements: !695)
!695 = !{!696, !697}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !694, file: !693, line: 37, baseType: !118)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !694, file: !693, line: 38, baseType: !105, size: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !673, file: !674, line: 69, baseType: !699, size: 128, align: 64, offset: 512)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !85, line: 216, size: 128, align: 64, elements: !700)
!700 = !{!701, !703}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !699, file: !85, line: 217, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !699, file: !85, line: 218, baseType: !704, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !702}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !673, file: !674, line: 70, baseType: !708, size: 128, offset: 640)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !709, size: 128, elements: !572)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !674, line: 54, size: 128, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !709, file: !674, line: 55, baseType: !144, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !709, file: !674, line: 56, baseType: !713, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !674, line: 56, flags: DIFlagFwdDecl)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !407, file: !408, line: 872, baseType: !716, size: 512, offset: 6016)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !685, size: 512, elements: !359)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !407, file: !408, line: 873, baseType: !105, size: 128, offset: 6528)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !407, file: !408, line: 874, baseType: !105, size: 128, offset: 6656)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !407, file: !408, line: 876, baseType: !720, size: 64, offset: 6784)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !722, line: 26, size: 192, elements: !723)
!722 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !721, file: !722, line: 27, baseType: !7, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !721, file: !722, line: 28, baseType: !726, size: 128, offset: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !727, line: 43, size: 128, elements: !728)
!727 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!728 = !{!729, !730}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !726, file: !727, line: 44, baseType: !325)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !726, file: !727, line: 45, baseType: !105, size: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !407, file: !408, line: 879, baseType: !732, size: 64, offset: 6848)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !407, file: !408, line: 882, baseType: !732, size: 64, offset: 6912)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !407, file: !408, line: 884, baseType: !278, size: 64, offset: 6976)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !407, file: !408, line: 885, baseType: !278, size: 64, offset: 7040)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !407, file: !408, line: 890, baseType: !278, size: 64, offset: 7104)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !407, file: !408, line: 891, baseType: !738, size: 128, offset: 7168)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !408, line: 242, size: 128, elements: !739)
!739 = !{!740, !741, !742}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !738, file: !408, line: 244, baseType: !278, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !738, file: !408, line: 245, baseType: !278, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !738, file: !408, line: 246, baseType: !325, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !407, file: !408, line: 900, baseType: !209, size: 64, offset: 7296)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !407, file: !408, line: 901, baseType: !209, size: 64, offset: 7360)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !407, file: !408, line: 904, baseType: !278, size: 64, offset: 7424)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !407, file: !408, line: 907, baseType: !278, size: 64, offset: 7488)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !407, file: !408, line: 910, baseType: !209, size: 64, offset: 7552)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !407, file: !408, line: 911, baseType: !209, size: 64, offset: 7616)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !407, file: !408, line: 914, baseType: !750, size: 640, offset: 7680)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !751, line: 123, size: 640, elements: !752)
!751 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!752 = !{!753, !759, !760}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !750, file: !751, line: 124, baseType: !754, size: 576)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !755, size: 576, elements: !161)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !751, line: 108, size: 192, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !755, file: !751, line: 109, baseType: !278, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !755, file: !751, line: 110, baseType: !539, size: 128, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !750, file: !751, line: 125, baseType: !7, size: 32, offset: 576)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !750, file: !751, line: 126, baseType: !7, size: 32, offset: 608)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !407, file: !408, line: 917, baseType: !762, size: 192, offset: 8320)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !751, line: 134, size: 192, elements: !763)
!763 = !{!764, !765}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !762, file: !751, line: 135, baseType: !699, size: 128, align: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !762, file: !751, line: 136, baseType: !7, size: 32, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !407, file: !408, line: 923, baseType: !767, size: 64, offset: 8512)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !769)
!769 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !408, line: 923, flags: DIFlagFwdDecl)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !407, file: !408, line: 926, baseType: !767, size: 64, offset: 8576)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !407, file: !408, line: 929, baseType: !767, size: 64, offset: 8640)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !407, file: !408, line: 933, baseType: !773, size: 64, offset: 8704)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !408, line: 933, flags: DIFlagFwdDecl)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !407, file: !408, line: 943, baseType: !776, size: 128, offset: 8768)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 128, elements: !777)
!777 = !{!778}
!778 = !DISubrange(count: 16)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !407, file: !408, line: 945, baseType: !780, size: 64, offset: 8896)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !408, line: 49, flags: DIFlagFwdDecl)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !407, file: !408, line: 956, baseType: !783, size: 64, offset: 8960)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !408, line: 45, flags: DIFlagFwdDecl)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !407, file: !408, line: 959, baseType: !786, size: 64, offset: 9024)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !408, line: 959, flags: DIFlagFwdDecl)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !407, file: !408, line: 962, baseType: !789, size: 64, offset: 9088)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !408, line: 66, flags: DIFlagFwdDecl)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !407, file: !408, line: 966, baseType: !792, size: 64, offset: 9152)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !408, line: 50, flags: DIFlagFwdDecl)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !407, file: !408, line: 969, baseType: !795, size: 64, offset: 9216)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !751, line: 223, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !407, file: !408, line: 970, baseType: !798, size: 64, offset: 9280)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !408, line: 62, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !407, file: !408, line: 971, baseType: !801, size: 64, offset: 9344)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !802, line: 25, baseType: !803)
!802 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !802, line: 23, size: 64, elements: !804)
!804 = !{!805}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !803, file: !802, line: 24, baseType: !571, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !407, file: !408, line: 972, baseType: !801, size: 64, offset: 9408)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !407, file: !408, line: 974, baseType: !801, size: 64, offset: 9472)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !407, file: !408, line: 975, baseType: !809, size: 192, offset: 9536)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !810, line: 30, size: 192, elements: !811)
!810 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!811 = !{!812, !813}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !809, file: !810, line: 31, baseType: !105, size: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !809, file: !810, line: 32, baseType: !801, size: 64, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !407, file: !408, line: 976, baseType: !209, size: 64, offset: 9728)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !407, file: !408, line: 977, baseType: !206, size: 64, offset: 9792)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !407, file: !408, line: 978, baseType: !7, size: 32, offset: 9856)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !407, file: !408, line: 980, baseType: !702, size: 64, offset: 9920)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !407, file: !408, line: 989, baseType: !819, size: 128, offset: 9984)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !820, line: 35, size: 128, elements: !821)
!820 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!821 = !{!822, !823, !824}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !819, file: !820, line: 36, baseType: !144, size: 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !819, file: !820, line: 37, baseType: !300, size: 32, offset: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !819, file: !820, line: 38, baseType: !825, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !820, line: 23, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !407, file: !408, line: 992, baseType: !278, size: 64, offset: 10112)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !407, file: !408, line: 993, baseType: !278, size: 64, offset: 10176)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !407, file: !408, line: 996, baseType: !118, offset: 10240)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !407, file: !408, line: 999, baseType: !325, offset: 10240)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !407, file: !408, line: 1001, baseType: !832, size: 64, offset: 10240)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !408, line: 636, size: 64, elements: !833)
!833 = !{!834}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !832, file: !408, line: 637, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !407, file: !408, line: 1005, baseType: !542, size: 128, offset: 10304)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !407, file: !408, line: 1007, baseType: !406, size: 64, offset: 10432)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !407, file: !408, line: 1009, baseType: !839, size: 64, offset: 10496)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !408, line: 1009, flags: DIFlagFwdDecl)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !407, file: !408, line: 1043, baseType: !86, size: 64, offset: 10560)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !407, file: !408, line: 1046, baseType: !843, size: 64, offset: 10624)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !408, line: 41, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !407, file: !408, line: 1050, baseType: !846, size: 64, offset: 10688)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !408, line: 42, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !407, file: !408, line: 1054, baseType: !849, size: 64, offset: 10752)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !408, line: 55, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !407, file: !408, line: 1056, baseType: !852, size: 64, offset: 10816)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !408, line: 40, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !407, file: !408, line: 1058, baseType: !855, size: 64, offset: 10880)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !408, line: 47, flags: DIFlagFwdDecl)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !407, file: !408, line: 1061, baseType: !858, size: 64, offset: 10944)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !408, line: 43, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !407, file: !408, line: 1064, baseType: !209, size: 64, offset: 11008)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !407, file: !408, line: 1065, baseType: !862, size: 64, offset: 11072)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !810, line: 14, baseType: !864)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !810, line: 12, size: 384, elements: !865)
!865 = !{!866}
!866 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !810, line: 13, baseType: !867, size: 384)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !864, file: !810, line: 13, size: 384, elements: !868)
!868 = !{!869, !870, !871, !872}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !867, file: !810, line: 13, baseType: !144, size: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !867, file: !810, line: 13, baseType: !144, size: 32, offset: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !867, file: !810, line: 13, baseType: !144, size: 32, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !867, file: !810, line: 13, baseType: !873, size: 256, offset: 128)
!873 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !874, line: 32, size: 256, elements: !875)
!874 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!875 = !{!876, !882, !895, !901, !910, !930, !935}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !873, file: !874, line: 37, baseType: !877, size: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !873, file: !874, line: 34, size: 64, elements: !878)
!878 = !{!879, !880}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !877, file: !874, line: 35, baseType: !661, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !877, file: !874, line: 36, baseType: !881, size: 32, offset: 32)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !193, line: 49, baseType: !7)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !873, file: !874, line: 45, baseType: !883, size: 192)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !873, file: !874, line: 40, size: 192, elements: !884)
!884 = !{!885, !887, !888, !894}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !883, file: !874, line: 41, baseType: !886, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !193, line: 95, baseType: !144)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !883, file: !874, line: 42, baseType: !144, size: 32, offset: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !883, file: !874, line: 43, baseType: !889, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !874, line: 11, baseType: !890)
!890 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !874, line: 8, size: 64, elements: !891)
!891 = !{!892, !893}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !890, file: !874, line: 9, baseType: !144, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !890, file: !874, line: 10, baseType: !86, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !883, file: !874, line: 44, baseType: !144, size: 32, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !873, file: !874, line: 52, baseType: !896, size: 128)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !873, file: !874, line: 48, size: 128, elements: !897)
!897 = !{!898, !899, !900}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !896, file: !874, line: 49, baseType: !661, size: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !896, file: !874, line: 50, baseType: !881, size: 32, offset: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !896, file: !874, line: 51, baseType: !889, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !873, file: !874, line: 61, baseType: !902, size: 256)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !873, file: !874, line: 55, size: 256, elements: !903)
!903 = !{!904, !905, !906, !907, !909}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !902, file: !874, line: 56, baseType: !661, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !902, file: !874, line: 57, baseType: !881, size: 32, offset: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !902, file: !874, line: 58, baseType: !144, size: 32, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !902, file: !874, line: 59, baseType: !908, size: 64, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !193, line: 94, baseType: !194)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !902, file: !874, line: 60, baseType: !908, size: 64, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !873, file: !874, line: 95, baseType: !911, size: 256)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !873, file: !874, line: 64, size: 256, elements: !912)
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !911, file: !874, line: 65, baseType: !86, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, scope: !911, file: !874, line: 77, baseType: !915, size: 192, offset: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !911, file: !874, line: 77, size: 192, elements: !916)
!916 = !{!917, !918, !925}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !915, file: !874, line: 82, baseType: !395, size: 16)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !915, file: !874, line: 88, baseType: !919, size: 192)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !915, file: !874, line: 84, size: 192, elements: !920)
!920 = !{!921, !923, !924}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !919, file: !874, line: 85, baseType: !922, size: 64)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 64, elements: !521)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !919, file: !874, line: 86, baseType: !86, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !919, file: !874, line: 87, baseType: !86, size: 64, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !915, file: !874, line: 93, baseType: !926, size: 96)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !915, file: !874, line: 90, size: 96, elements: !927)
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !926, file: !874, line: 91, baseType: !922, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !926, file: !874, line: 92, baseType: !417, size: 32, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !873, file: !874, line: 101, baseType: !931, size: 128)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !873, file: !874, line: 98, size: 128, elements: !932)
!932 = !{!933, !934}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !931, file: !874, line: 99, baseType: !83, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !931, file: !874, line: 100, baseType: !144, size: 32, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !873, file: !874, line: 108, baseType: !936, size: 128)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !873, file: !874, line: 104, size: 128, elements: !937)
!937 = !{!938, !939, !940}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !936, file: !874, line: 105, baseType: !86, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !936, file: !874, line: 106, baseType: !144, size: 32, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !936, file: !874, line: 107, baseType: !7, size: 32, offset: 96)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !407, file: !408, line: 1067, baseType: !942, offset: 11136)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !943, line: 12, elements: !132)
!943 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!944 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !407, file: !408, line: 1099, baseType: !945, size: 64, offset: 11136)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !408, line: 56, flags: DIFlagFwdDecl)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !407, file: !408, line: 1103, baseType: !105, size: 128, offset: 11200)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !407, file: !408, line: 1104, baseType: !949, size: 64, offset: 11328)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !408, line: 46, flags: DIFlagFwdDecl)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !407, file: !408, line: 1105, baseType: !377, size: 192, offset: 11392)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !407, file: !408, line: 1106, baseType: !7, size: 32, offset: 11584)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !407, file: !408, line: 1109, baseType: !954, size: 128, offset: 11648)
!954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !955, size: 128, elements: !957)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !408, line: 51, flags: DIFlagFwdDecl)
!957 = !{!958}
!958 = !DISubrange(count: 2)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !407, file: !408, line: 1110, baseType: !377, size: 192, offset: 11776)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !407, file: !408, line: 1111, baseType: !105, size: 128, offset: 11968)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !407, file: !408, line: 1173, baseType: !962, size: 64, offset: 12096)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !964, line: 62, size: 256, align: 256, elements: !965)
!964 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!965 = !{!966, !967, !968, !973}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !963, file: !964, line: 75, baseType: !417, size: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !963, file: !964, line: 90, baseType: !417, size: 32, offset: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !963, file: !964, line: 124, baseType: !969, size: 64, offset: 64)
!969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !963, file: !964, line: 109, size: 64, elements: !970)
!970 = !{!971, !972}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !969, file: !964, line: 110, baseType: !280, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !969, file: !964, line: 112, baseType: !280, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !963, file: !964, line: 144, baseType: !417, size: 32, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !407, file: !408, line: 1174, baseType: !416, size: 32, offset: 12160)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !407, file: !408, line: 1179, baseType: !209, size: 64, offset: 12224)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !407, file: !408, line: 1182, baseType: !977, size: 128, offset: 12288)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !355, line: 76, size: 128, elements: !978)
!978 = !{!979, !984, !987}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !977, file: !355, line: 85, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !981, line: 7, size: 64, elements: !982)
!981 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!982 = !{!983}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !980, file: !981, line: 12, baseType: !568, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !977, file: !355, line: 88, baseType: !985, size: 8, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !85, line: 30, baseType: !986)
!986 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !977, file: !355, line: 95, baseType: !985, size: 8, offset: 72)
!988 = !DIDerivedType(tag: DW_TAG_member, scope: !407, file: !408, line: 1184, baseType: !989, size: 128, offset: 12416)
!989 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !407, file: !408, line: 1184, size: 128, elements: !990)
!990 = !{!991, !992}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !989, file: !408, line: 1185, baseType: !421, size: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !989, file: !408, line: 1186, baseType: !699, size: 128, align: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !407, file: !408, line: 1190, baseType: !994, size: 64, offset: 12544)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !408, line: 53, flags: DIFlagFwdDecl)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !407, file: !408, line: 1192, baseType: !997, size: 128, offset: 12608)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !355, line: 64, size: 128, elements: !998)
!998 = !{!999, !1092, !1093}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !997, file: !355, line: 65, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !250, line: 68, size: 512, align: 128, elements: !1002)
!1002 = !{!1003, !1004, !1084, !1091}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1001, file: !250, line: 69, baseType: !209, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !250, line: 77, baseType: !1005, size: 320, offset: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1001, file: !250, line: 77, size: 320, elements: !1006)
!1006 = !{!1007, !1016, !1021, !1049, !1057, !1063, !1076, !1083}
!1007 = !DIDerivedType(tag: DW_TAG_member, scope: !1005, file: !250, line: 78, baseType: !1008, size: 320)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !250, line: 78, size: 320, elements: !1009)
!1009 = !{!1010, !1011, !1014, !1015}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1008, file: !250, line: 84, baseType: !105, size: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1008, file: !250, line: 86, baseType: !1012, size: 64, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !250, line: 26, flags: DIFlagFwdDecl)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1008, file: !250, line: 87, baseType: !209, size: 64, offset: 192)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1008, file: !250, line: 94, baseType: !209, size: 64, offset: 256)
!1016 = !DIDerivedType(tag: DW_TAG_member, scope: !1005, file: !250, line: 96, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !250, line: 96, size: 64, elements: !1018)
!1018 = !{!1019}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1017, file: !250, line: 101, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !85, line: 143, baseType: !278)
!1021 = !DIDerivedType(tag: DW_TAG_member, scope: !1005, file: !250, line: 103, baseType: !1022, size: 320)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !250, line: 103, size: 320, elements: !1023)
!1023 = !{!1024, !1034, !1037, !1038}
!1024 = !DIDerivedType(tag: DW_TAG_member, scope: !1022, file: !250, line: 104, baseType: !1025, size: 128)
!1025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1022, file: !250, line: 104, size: 128, elements: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1025, file: !250, line: 105, baseType: !105, size: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, scope: !1025, file: !250, line: 106, baseType: !1029, size: 128)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1025, file: !250, line: 106, size: 128, elements: !1030)
!1030 = !{!1031, !1032, !1033}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1029, file: !250, line: 107, baseType: !1000, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1029, file: !250, line: 109, baseType: !144, size: 32, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1029, file: !250, line: 110, baseType: !144, size: 32, offset: 96)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1022, file: !250, line: 117, baseType: !1035, size: 64, offset: 128)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !250, line: 117, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1022, file: !250, line: 119, baseType: !86, size: 64, offset: 192)
!1038 = !DIDerivedType(tag: DW_TAG_member, scope: !1022, file: !250, line: 120, baseType: !1039, size: 64, offset: 256)
!1039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1022, file: !250, line: 120, size: 64, elements: !1040)
!1040 = !{!1041, !1042, !1043}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1039, file: !250, line: 121, baseType: !86, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1039, file: !250, line: 122, baseType: !209, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, scope: !1039, file: !250, line: 123, baseType: !1044, size: 32)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1039, file: !250, line: 123, size: 32, elements: !1045)
!1045 = !{!1046, !1047, !1048}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1044, file: !250, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1044, file: !250, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1044, file: !250, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1049 = !DIDerivedType(tag: DW_TAG_member, scope: !1005, file: !250, line: 130, baseType: !1050, size: 192)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !250, line: 130, size: 192, elements: !1051)
!1051 = !{!1052, !1053, !1054, !1055, !1056}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1050, file: !250, line: 131, baseType: !209, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1050, file: !250, line: 134, baseType: !554, size: 8, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1050, file: !250, line: 135, baseType: !554, size: 8, offset: 72)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1050, file: !250, line: 136, baseType: !300, size: 32, offset: 96)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1050, file: !250, line: 137, baseType: !7, size: 32, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, scope: !1005, file: !250, line: 139, baseType: !1058, size: 256)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !250, line: 139, size: 256, elements: !1059)
!1059 = !{!1060, !1061, !1062}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1058, file: !250, line: 140, baseType: !209, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1058, file: !250, line: 141, baseType: !300, size: 32, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1058, file: !250, line: 143, baseType: !105, size: 128, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, scope: !1005, file: !250, line: 145, baseType: !1064, size: 256)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !250, line: 145, size: 256, elements: !1065)
!1065 = !{!1066, !1067, !1069, !1070, !1075}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1064, file: !250, line: 146, baseType: !209, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1064, file: !250, line: 147, baseType: !1068, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !239, line: 509, baseType: !1000)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1064, file: !250, line: 148, baseType: !209, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, scope: !1064, file: !250, line: 149, baseType: !1071, size: 64, offset: 192)
!1071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1064, file: !250, line: 149, size: 64, elements: !1072)
!1072 = !{!1073, !1074}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1071, file: !250, line: 150, baseType: !266, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1071, file: !250, line: 151, baseType: !300, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1064, file: !250, line: 156, baseType: !118, offset: 256)
!1076 = !DIDerivedType(tag: DW_TAG_member, scope: !1005, file: !250, line: 159, baseType: !1077, size: 128)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !250, line: 159, size: 128, elements: !1078)
!1078 = !{!1079, !1082}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1077, file: !250, line: 161, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !250, line: 161, flags: DIFlagFwdDecl)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1077, file: !250, line: 162, baseType: !86, size: 64, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1005, file: !250, line: 176, baseType: !699, size: 128, align: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !250, line: 179, baseType: !1085, size: 32, offset: 384)
!1085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1001, file: !250, line: 179, size: 32, elements: !1086)
!1086 = !{!1087, !1088, !1089, !1090}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1085, file: !250, line: 184, baseType: !300, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1085, file: !250, line: 192, baseType: !7, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1085, file: !250, line: 194, baseType: !7, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1085, file: !250, line: 195, baseType: !144, size: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1001, file: !250, line: 199, baseType: !300, size: 32, offset: 416)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !997, file: !355, line: 67, baseType: !417, size: 32, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !997, file: !355, line: 68, baseType: !417, size: 32, offset: 96)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !407, file: !408, line: 1206, baseType: !144, size: 32, offset: 12736)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !407, file: !408, line: 1207, baseType: !144, size: 32, offset: 12768)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !407, file: !408, line: 1209, baseType: !209, size: 64, offset: 12800)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !407, file: !408, line: 1219, baseType: !278, size: 64, offset: 12864)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !407, file: !408, line: 1220, baseType: !278, size: 64, offset: 12928)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !407, file: !408, line: 1317, baseType: !144, size: 32, offset: 12992)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !407, file: !408, line: 1319, baseType: !406, size: 64, offset: 13056)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !407, file: !408, line: 1322, baseType: !1102, size: 64, offset: 13120)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !408, line: 1322, flags: DIFlagFwdDecl)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !407, file: !408, line: 1326, baseType: !421, size: 32, offset: 13184)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !407, file: !408, line: 1342, baseType: !86, size: 64, offset: 13248)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !407, file: !408, line: 1343, baseType: !280, size: 64, offset: 13312)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !407, file: !408, line: 1344, baseType: !278, size: 64, offset: 13376)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !407, file: !408, line: 1345, baseType: !280, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !407, file: !408, line: 1346, baseType: !280, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !407, file: !408, line: 1347, baseType: !280, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !407, file: !408, line: 1348, baseType: !699, size: 128, align: 64, offset: 13504)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !407, file: !408, line: 1358, baseType: !1113, size: 34816, offset: 13824)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1114, line: 485, size: 34816, elements: !1115)
!1114 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1115 = !{!1116, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1145, !1146, !1147, !1148, !1149, !1150, !1153, !1154, !1155}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1113, file: !1114, line: 487, baseType: !1117, size: 192)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1118, size: 192, elements: !161)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1119, line: 16, size: 64, elements: !1120)
!1119 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1120 = !{!1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1118, file: !1119, line: 17, baseType: !390, size: 16)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1118, file: !1119, line: 18, baseType: !390, size: 16, offset: 16)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1118, file: !1119, line: 19, baseType: !390, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1118, file: !1119, line: 19, baseType: !390, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1118, file: !1119, line: 19, baseType: !390, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1118, file: !1119, line: 19, baseType: !390, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1118, file: !1119, line: 19, baseType: !390, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1118, file: !1119, line: 20, baseType: !390, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1118, file: !1119, line: 20, baseType: !390, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1118, file: !1119, line: 20, baseType: !390, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1118, file: !1119, line: 20, baseType: !390, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1118, file: !1119, line: 20, baseType: !390, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1118, file: !1119, line: 20, baseType: !390, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1113, file: !1114, line: 491, baseType: !209, size: 64, offset: 192)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1113, file: !1114, line: 495, baseType: !201, size: 16, offset: 256)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1113, file: !1114, line: 496, baseType: !201, size: 16, offset: 272)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1113, file: !1114, line: 497, baseType: !201, size: 16, offset: 288)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1113, file: !1114, line: 498, baseType: !201, size: 16, offset: 304)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1113, file: !1114, line: 502, baseType: !209, size: 64, offset: 320)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1113, file: !1114, line: 503, baseType: !209, size: 64, offset: 384)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1113, file: !1114, line: 514, baseType: !1142, size: 256, offset: 448)
!1142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1143, size: 256, elements: !359)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1114, line: 483, flags: DIFlagFwdDecl)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1113, file: !1114, line: 516, baseType: !209, size: 64, offset: 704)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1113, file: !1114, line: 518, baseType: !209, size: 64, offset: 768)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1113, file: !1114, line: 520, baseType: !209, size: 64, offset: 832)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1113, file: !1114, line: 521, baseType: !209, size: 64, offset: 896)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1113, file: !1114, line: 522, baseType: !209, size: 64, offset: 960)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1113, file: !1114, line: 528, baseType: !1151, size: 64, offset: 1024)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1114, line: 10, flags: DIFlagFwdDecl)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1113, file: !1114, line: 535, baseType: !209, size: 64, offset: 1088)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1113, file: !1114, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1113, file: !1114, line: 540, baseType: !1156, size: 33280, offset: 1536)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1157, line: 317, size: 33280, elements: !1158)
!1157 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1158 = !{!1159, !1160, !1161}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1156, file: !1157, line: 330, baseType: !7, size: 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1156, file: !1157, line: 337, baseType: !209, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1156, file: !1157, line: 348, baseType: !1162, size: 32768, offset: 512)
!1162 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1157, line: 304, size: 32768, elements: !1163)
!1163 = !{!1164, !1179, !1218, !1268, !1285}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1162, file: !1157, line: 305, baseType: !1165, size: 896)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1157, line: 12, size: 896, elements: !1166)
!1166 = !{!1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1178}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1165, file: !1157, line: 13, baseType: !416, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1165, file: !1157, line: 14, baseType: !416, size: 32, offset: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1165, file: !1157, line: 15, baseType: !416, size: 32, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1165, file: !1157, line: 16, baseType: !416, size: 32, offset: 96)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1165, file: !1157, line: 17, baseType: !416, size: 32, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1165, file: !1157, line: 18, baseType: !416, size: 32, offset: 160)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1165, file: !1157, line: 19, baseType: !416, size: 32, offset: 192)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1165, file: !1157, line: 22, baseType: !1175, size: 640, offset: 224)
!1175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 640, elements: !1176)
!1176 = !{!1177}
!1177 = !DISubrange(count: 20)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1165, file: !1157, line: 25, baseType: !416, size: 32, offset: 864)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1162, file: !1157, line: 306, baseType: !1180, size: 4096, align: 128)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1157, line: 34, size: 4096, align: 128, elements: !1181)
!1181 = !{!1182, !1183, !1184, !1185, !1186, !1201, !1202, !1203, !1207, !1209, !1213}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1180, file: !1157, line: 35, baseType: !390, size: 16)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1180, file: !1157, line: 36, baseType: !390, size: 16, offset: 16)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1180, file: !1157, line: 37, baseType: !390, size: 16, offset: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1180, file: !1157, line: 38, baseType: !390, size: 16, offset: 48)
!1186 = !DIDerivedType(tag: DW_TAG_member, scope: !1180, file: !1157, line: 39, baseType: !1187, size: 128, offset: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1180, file: !1157, line: 39, size: 128, elements: !1188)
!1188 = !{!1189, !1194}
!1189 = !DIDerivedType(tag: DW_TAG_member, scope: !1187, file: !1157, line: 40, baseType: !1190, size: 128)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1187, file: !1157, line: 40, size: 128, elements: !1191)
!1191 = !{!1192, !1193}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1190, file: !1157, line: 41, baseType: !278, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1190, file: !1157, line: 42, baseType: !278, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, scope: !1187, file: !1157, line: 44, baseType: !1195, size: 128)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1187, file: !1157, line: 44, size: 128, elements: !1196)
!1196 = !{!1197, !1198, !1199, !1200}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1195, file: !1157, line: 45, baseType: !416, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1195, file: !1157, line: 46, baseType: !416, size: 32, offset: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1195, file: !1157, line: 47, baseType: !416, size: 32, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1195, file: !1157, line: 48, baseType: !416, size: 32, offset: 96)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1180, file: !1157, line: 51, baseType: !416, size: 32, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1180, file: !1157, line: 52, baseType: !416, size: 32, offset: 224)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1180, file: !1157, line: 55, baseType: !1204, size: 1024, offset: 256)
!1204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 1024, elements: !1205)
!1205 = !{!1206}
!1206 = !DISubrange(count: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1180, file: !1157, line: 58, baseType: !1208, size: 2048, offset: 1280)
!1208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 2048, elements: !165)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1180, file: !1157, line: 60, baseType: !1210, size: 384, offset: 3328)
!1210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 384, elements: !1211)
!1211 = !{!1212}
!1212 = !DISubrange(count: 12)
!1213 = !DIDerivedType(tag: DW_TAG_member, scope: !1180, file: !1157, line: 62, baseType: !1214, size: 384, offset: 3712)
!1214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1180, file: !1157, line: 62, size: 384, elements: !1215)
!1215 = !{!1216, !1217}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1214, file: !1157, line: 63, baseType: !1210, size: 384)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1214, file: !1157, line: 64, baseType: !1210, size: 384)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1162, file: !1157, line: 307, baseType: !1219, size: 1088)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1157, line: 79, size: 1088, elements: !1220)
!1220 = !{!1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1267}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1219, file: !1157, line: 80, baseType: !416, size: 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1219, file: !1157, line: 81, baseType: !416, size: 32, offset: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1219, file: !1157, line: 82, baseType: !416, size: 32, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1219, file: !1157, line: 83, baseType: !416, size: 32, offset: 96)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1219, file: !1157, line: 84, baseType: !416, size: 32, offset: 128)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1219, file: !1157, line: 85, baseType: !416, size: 32, offset: 160)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1219, file: !1157, line: 86, baseType: !416, size: 32, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1219, file: !1157, line: 88, baseType: !1175, size: 640, offset: 224)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1219, file: !1157, line: 89, baseType: !552, size: 8, offset: 864)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1219, file: !1157, line: 90, baseType: !552, size: 8, offset: 872)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1219, file: !1157, line: 91, baseType: !552, size: 8, offset: 880)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1219, file: !1157, line: 92, baseType: !552, size: 8, offset: 888)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1219, file: !1157, line: 93, baseType: !552, size: 8, offset: 896)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1219, file: !1157, line: 94, baseType: !552, size: 8, offset: 904)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1219, file: !1157, line: 95, baseType: !1236, size: 64, offset: 960)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1238, line: 11, size: 128, elements: !1239)
!1238 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1239 = !{!1240, !1241}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1237, file: !1238, line: 12, baseType: !83, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1237, file: !1238, line: 13, baseType: !1242, size: 64, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1244, line: 56, size: 1344, elements: !1245)
!1244 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1245 = !{!1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1243, file: !1244, line: 61, baseType: !209, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1243, file: !1244, line: 62, baseType: !209, size: 64, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1243, file: !1244, line: 63, baseType: !209, size: 64, offset: 128)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1243, file: !1244, line: 64, baseType: !209, size: 64, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1243, file: !1244, line: 65, baseType: !209, size: 64, offset: 256)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1243, file: !1244, line: 66, baseType: !209, size: 64, offset: 320)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1243, file: !1244, line: 68, baseType: !209, size: 64, offset: 384)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1243, file: !1244, line: 69, baseType: !209, size: 64, offset: 448)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1243, file: !1244, line: 70, baseType: !209, size: 64, offset: 512)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1243, file: !1244, line: 71, baseType: !209, size: 64, offset: 576)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1243, file: !1244, line: 72, baseType: !209, size: 64, offset: 640)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1243, file: !1244, line: 73, baseType: !209, size: 64, offset: 704)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1243, file: !1244, line: 74, baseType: !209, size: 64, offset: 768)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1243, file: !1244, line: 75, baseType: !209, size: 64, offset: 832)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1243, file: !1244, line: 76, baseType: !209, size: 64, offset: 896)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1243, file: !1244, line: 81, baseType: !209, size: 64, offset: 960)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1243, file: !1244, line: 83, baseType: !209, size: 64, offset: 1024)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1243, file: !1244, line: 84, baseType: !209, size: 64, offset: 1088)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1243, file: !1244, line: 85, baseType: !209, size: 64, offset: 1152)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1243, file: !1244, line: 86, baseType: !209, size: 64, offset: 1216)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1243, file: !1244, line: 87, baseType: !209, size: 64, offset: 1280)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1219, file: !1157, line: 96, baseType: !416, size: 32, offset: 1024)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1162, file: !1157, line: 308, baseType: !1269, size: 4608, align: 512)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1157, line: 289, size: 4608, align: 512, elements: !1270)
!1270 = !{!1271, !1272, !1281}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1269, file: !1157, line: 290, baseType: !1180, size: 4096, align: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1269, file: !1157, line: 291, baseType: !1273, size: 512, offset: 4096)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1157, line: 268, size: 512, elements: !1274)
!1274 = !{!1275, !1276, !1277}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1273, file: !1157, line: 269, baseType: !278, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1273, file: !1157, line: 270, baseType: !278, size: 64, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1273, file: !1157, line: 271, baseType: !1278, size: 384, offset: 128)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 384, elements: !1279)
!1279 = !{!1280}
!1280 = !DISubrange(count: 6)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1269, file: !1157, line: 292, baseType: !1282, offset: 4608)
!1282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, elements: !1283)
!1283 = !{!1284}
!1284 = !DISubrange(count: 0)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1162, file: !1157, line: 309, baseType: !1286, size: 32768)
!1286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 32768, elements: !1287)
!1287 = !{!1288}
!1288 = !DISubrange(count: 4096)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !403, file: !250, line: 378, baseType: !1290, size: 64, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !399, file: !250, line: 384, baseType: !721, size: 192, offset: 192)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !270, file: !250, line: 500, baseType: !118, offset: 6656)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !270, file: !250, line: 501, baseType: !1294, size: 64, offset: 6656)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !250, line: 387, flags: DIFlagFwdDecl)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !270, file: !250, line: 516, baseType: !1297, size: 64, offset: 6720)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1299, line: 18, flags: DIFlagFwdDecl)
!1299 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !270, file: !250, line: 519, baseType: !237, size: 64, offset: 6784)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !270, file: !250, line: 521, baseType: !1302, size: 64, offset: 6848)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !250, line: 521, flags: DIFlagFwdDecl)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !270, file: !250, line: 545, baseType: !300, size: 32, offset: 6912)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !270, file: !250, line: 548, baseType: !985, size: 8, offset: 6944)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !270, file: !250, line: 550, baseType: !1307, offset: 6952)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1308, line: 142, elements: !132)
!1308 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !270, file: !250, line: 554, baseType: !1310, size: 256, offset: 6976)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1311, line: 102, size: 256, elements: !1312)
!1311 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1312 = !{!1313, !1314, !1315}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1310, file: !1311, line: 103, baseType: !308, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1310, file: !1311, line: 104, baseType: !105, size: 128, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1310, file: !1311, line: 105, baseType: !1316, size: 64, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1311, line: 21, baseType: !1317)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{null, !1320}
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !270, file: !250, line: 557, baseType: !416, size: 32, offset: 7232)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !267, file: !250, line: 565, baseType: !1323, offset: 7296)
!1323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, elements: !1324)
!1324 = !{!1325}
!1325 = !DISubrange(count: -1)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !249, file: !250, line: 333, baseType: !1327, size: 64, offset: 576)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !239, line: 284, baseType: !1328)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !239, line: 284, size: 64, elements: !1329)
!1329 = !{!1330}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1328, file: !239, line: 284, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !298, line: 19, baseType: !209)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !249, file: !250, line: 334, baseType: !209, size: 64, offset: 640)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !249, file: !250, line: 343, baseType: !1334, size: 256, offset: 704)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !249, file: !250, line: 340, size: 256, elements: !1335)
!1335 = !{!1336, !1337}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1334, file: !250, line: 341, baseType: !257, size: 192, align: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1334, file: !250, line: 342, baseType: !209, size: 64, offset: 192)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !249, file: !250, line: 351, baseType: !105, size: 128, offset: 960)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !249, file: !250, line: 353, baseType: !1340, size: 64, offset: 1088)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !250, line: 353, flags: DIFlagFwdDecl)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !249, file: !250, line: 356, baseType: !1343, size: 64, offset: 1152)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1345)
!1345 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !250, line: 356, flags: DIFlagFwdDecl)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !249, file: !250, line: 359, baseType: !209, size: 64, offset: 1216)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !249, file: !250, line: 361, baseType: !237, size: 64, offset: 1280)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !249, file: !250, line: 362, baseType: !86, size: 64, offset: 1344)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !249, file: !250, line: 365, baseType: !308, size: 64, offset: 1408)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !249, file: !250, line: 373, baseType: !1351, offset: 1472)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !250, line: 296, elements: !132)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !216, file: !185, line: 90, baseType: !211, size: 64, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !216, file: !185, line: 91, baseType: !1354, size: 64, offset: 256)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !175, file: !60, line: 143, baseType: !1356, size: 64, offset: 256)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!1359, !111}
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1361)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1362)
!1362 = !{!1363, !1364, !1368, !1372, !1380, !1384}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1361, file: !18, line: 40, baseType: !17, size: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1361, file: !18, line: 41, baseType: !1365, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!985}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1361, file: !18, line: 42, baseType: !1369, size: 64, offset: 128)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!86}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1361, file: !18, line: 43, baseType: !1373, size: 64, offset: 192)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!1376, !1378}
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1361, file: !18, line: 44, baseType: !1381, size: 64, offset: 256)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!1376}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1361, file: !18, line: 45, baseType: !1385, size: 64, offset: 320)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{null, !86}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !175, file: !60, line: 144, baseType: !1389, size: 64, offset: 320)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!1376, !111}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !175, file: !60, line: 145, baseType: !1393, size: 64, offset: 384)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{null, !111, !1396, !1402}
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1299, line: 23, baseType: !1398)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1299, line: 21, size: 32, elements: !1399)
!1399 = !{!1400}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1398, file: !1299, line: 22, baseType: !1401, size: 32)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !85, line: 32, baseType: !881)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1299, line: 28, baseType: !1404)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1299, line: 26, size: 32, elements: !1405)
!1405 = !{!1406}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1404, file: !1299, line: 27, baseType: !1407, size: 32)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !85, line: 33, baseType: !1408)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !193, line: 50, baseType: !7)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !99, file: !60, line: 70, baseType: !1410, size: 64, offset: 384)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1412, line: 123, size: 1024, elements: !1413)
!1412 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1413 = !{!1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1555, !1556, !1557, !1558, !1559}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1411, file: !1412, line: 124, baseType: !300, size: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1411, file: !1412, line: 125, baseType: !300, size: 32, offset: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1411, file: !1412, line: 135, baseType: !1410, size: 64, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1411, file: !1412, line: 136, baseType: !102, size: 64, offset: 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1411, file: !1412, line: 138, baseType: !257, size: 192, align: 64, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1411, file: !1412, line: 140, baseType: !1376, size: 64, offset: 384)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1411, file: !1412, line: 141, baseType: !7, size: 32, offset: 448)
!1421 = !DIDerivedType(tag: DW_TAG_member, scope: !1411, file: !1412, line: 142, baseType: !1422, size: 256, offset: 512)
!1422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1411, file: !1412, line: 142, size: 256, elements: !1423)
!1423 = !{!1424, !1478, !1482}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1422, file: !1412, line: 143, baseType: !1425, size: 192)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1412, line: 91, size: 192, elements: !1426)
!1426 = !{!1427, !1428, !1429}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1425, file: !1412, line: 92, baseType: !209, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1425, file: !1412, line: 94, baseType: !274, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1425, file: !1412, line: 100, baseType: !1430, size: 64, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1412, line: 180, size: 704, elements: !1432)
!1432 = !{!1433, !1434, !1435, !1448, !1449, !1450, !1476, !1477}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1431, file: !1412, line: 182, baseType: !1410, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1431, file: !1412, line: 183, baseType: !7, size: 32, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1431, file: !1412, line: 186, baseType: !1436, size: 192, offset: 128)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1437, line: 19, size: 192, elements: !1438)
!1437 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1438 = !{!1439, !1446, !1447}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1436, file: !1437, line: 20, baseType: !1440, size: 128)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1441, line: 292, size: 128, elements: !1442)
!1441 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1442 = !{!1443, !1444, !1445}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1440, file: !1441, line: 293, baseType: !118)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1440, file: !1441, line: 295, baseType: !84, size: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1440, file: !1441, line: 296, baseType: !86, size: 64, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1436, file: !1437, line: 21, baseType: !7, size: 32, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1436, file: !1437, line: 22, baseType: !7, size: 32, offset: 160)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1431, file: !1412, line: 187, baseType: !416, size: 32, offset: 320)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1431, file: !1412, line: 188, baseType: !416, size: 32, offset: 352)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1431, file: !1412, line: 189, baseType: !1451, size: 64, offset: 384)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1412, line: 168, size: 320, elements: !1453)
!1453 = !{!1454, !1460, !1464, !1468, !1472}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1452, file: !1412, line: 169, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!144, !1458, !1430}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !239, line: 539, flags: DIFlagFwdDecl)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1452, file: !1412, line: 171, baseType: !1461, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!144, !1410, !102, !200}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1452, file: !1412, line: 173, baseType: !1465, size: 64, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!144, !1410}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1452, file: !1412, line: 174, baseType: !1469, size: 64, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!144, !1410, !1410, !102}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1452, file: !1412, line: 176, baseType: !1473, size: 64, offset: 256)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!144, !1458, !1410, !1430}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1431, file: !1412, line: 192, baseType: !105, size: 128, offset: 448)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1431, file: !1412, line: 194, baseType: !692, size: 128, offset: 576)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1422, file: !1412, line: 144, baseType: !1479, size: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1412, line: 103, size: 64, elements: !1480)
!1480 = !{!1481}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1479, file: !1412, line: 104, baseType: !1410, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1422, file: !1412, line: 145, baseType: !1483, size: 256)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1412, line: 107, size: 256, elements: !1484)
!1484 = !{!1485, !1550, !1553, !1554}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1483, file: !1412, line: 108, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1488)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1412, line: 217, size: 768, elements: !1489)
!1489 = !{!1490, !1510, !1514, !1518, !1523, !1527, !1531, !1535, !1536, !1537, !1538, !1546}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1488, file: !1412, line: 222, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!144, !1494}
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1412, line: 197, size: 1088, elements: !1496)
!1496 = !{!1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1495, file: !1412, line: 199, baseType: !1410, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1495, file: !1412, line: 200, baseType: !237, size: 64, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1495, file: !1412, line: 201, baseType: !1458, size: 64, offset: 128)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1495, file: !1412, line: 202, baseType: !86, size: 64, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1495, file: !1412, line: 205, baseType: !377, size: 192, offset: 256)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1495, file: !1412, line: 206, baseType: !377, size: 192, offset: 448)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1495, file: !1412, line: 207, baseType: !144, size: 32, offset: 640)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1495, file: !1412, line: 208, baseType: !105, size: 128, offset: 704)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1495, file: !1412, line: 209, baseType: !160, size: 64, offset: 832)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1495, file: !1412, line: 211, baseType: !206, size: 64, offset: 896)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1495, file: !1412, line: 212, baseType: !985, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1495, file: !1412, line: 213, baseType: !985, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1495, file: !1412, line: 214, baseType: !1343, size: 64, offset: 1024)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1488, file: !1412, line: 223, baseType: !1511, size: 64, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{null, !1494}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1488, file: !1412, line: 236, baseType: !1515, size: 64, offset: 128)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!144, !1458, !86}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1488, file: !1412, line: 238, baseType: !1519, size: 64, offset: 192)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!86, !1458, !1522}
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1488, file: !1412, line: 239, baseType: !1524, size: 64, offset: 256)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!86, !1458, !86, !1522}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1488, file: !1412, line: 240, baseType: !1528, size: 64, offset: 320)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{null, !1458, !86}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1488, file: !1412, line: 242, baseType: !1532, size: 64, offset: 384)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!191, !1494, !160, !206, !240}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1488, file: !1412, line: 252, baseType: !206, size: 64, offset: 448)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1488, file: !1412, line: 259, baseType: !985, size: 8, offset: 512)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1488, file: !1412, line: 260, baseType: !1532, size: 64, offset: 576)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1488, file: !1412, line: 263, baseType: !1539, size: 64, offset: 640)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!1542, !1494, !1544}
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1543, line: 52, baseType: !7)
!1543 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1412, line: 27, flags: DIFlagFwdDecl)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1488, file: !1412, line: 266, baseType: !1547, size: 64, offset: 704)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!144, !1494, !248}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1483, file: !1412, line: 109, baseType: !1551, size: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1412, line: 31, flags: DIFlagFwdDecl)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1483, file: !1412, line: 110, baseType: !240, size: 64, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1483, file: !1412, line: 111, baseType: !1410, size: 64, offset: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1411, file: !1412, line: 148, baseType: !86, size: 64, offset: 768)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1411, file: !1412, line: 154, baseType: !278, size: 64, offset: 832)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1411, file: !1412, line: 156, baseType: !201, size: 16, offset: 896)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1411, file: !1412, line: 157, baseType: !200, size: 16, offset: 912)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1411, file: !1412, line: 158, baseType: !1560, size: 64, offset: 960)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1412, line: 32, flags: DIFlagFwdDecl)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !99, file: !60, line: 71, baseType: !1563, size: 32, offset: 448)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1564, line: 19, size: 32, elements: !1565)
!1564 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1565 = !{!1566}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1563, file: !1564, line: 20, baseType: !421, size: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !99, file: !60, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !99, file: !60, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !99, file: !60, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !99, file: !60, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !99, file: !60, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !96, file: !30, line: 463, baseType: !1573, size: 64, offset: 512)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !96, file: !30, line: 465, baseType: !1575, size: 64, offset: 576)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !96, file: !30, line: 467, baseType: !102, size: 64, offset: 640)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !96, file: !30, line: 468, baseType: !1579, size: 64, offset: 704)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1581)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1582)
!1582 = !{!1583, !1584, !1585, !1589, !1594, !1598}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1581, file: !30, line: 88, baseType: !102, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1581, file: !30, line: 89, baseType: !213, size: 64, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1581, file: !30, line: 90, baseType: !1586, size: 64, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!144, !1573, !155}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1581, file: !30, line: 91, baseType: !1590, size: 64, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!160, !1573, !1593, !1396, !1402}
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1581, file: !30, line: 93, baseType: !1595, size: 64, offset: 256)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{null, !1573}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1581, file: !30, line: 95, baseType: !1599, size: 64, offset: 320)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1601)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1602)
!1602 = !{!1603, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1601, file: !37, line: 279, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!144, !1573}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1601, file: !37, line: 280, baseType: !1595, size: 64, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1601, file: !37, line: 281, baseType: !1604, size: 64, offset: 128)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1601, file: !37, line: 282, baseType: !1604, size: 64, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1601, file: !37, line: 283, baseType: !1604, size: 64, offset: 256)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1601, file: !37, line: 284, baseType: !1604, size: 64, offset: 320)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1601, file: !37, line: 285, baseType: !1604, size: 64, offset: 384)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1601, file: !37, line: 286, baseType: !1604, size: 64, offset: 448)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1601, file: !37, line: 287, baseType: !1604, size: 64, offset: 512)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1601, file: !37, line: 288, baseType: !1604, size: 64, offset: 576)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1601, file: !37, line: 289, baseType: !1604, size: 64, offset: 640)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1601, file: !37, line: 290, baseType: !1604, size: 64, offset: 704)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1601, file: !37, line: 291, baseType: !1604, size: 64, offset: 768)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1601, file: !37, line: 292, baseType: !1604, size: 64, offset: 832)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1601, file: !37, line: 293, baseType: !1604, size: 64, offset: 896)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1601, file: !37, line: 294, baseType: !1604, size: 64, offset: 960)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1601, file: !37, line: 295, baseType: !1604, size: 64, offset: 1024)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1601, file: !37, line: 296, baseType: !1604, size: 64, offset: 1088)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1601, file: !37, line: 297, baseType: !1604, size: 64, offset: 1152)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1601, file: !37, line: 298, baseType: !1604, size: 64, offset: 1216)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1601, file: !37, line: 299, baseType: !1604, size: 64, offset: 1280)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1601, file: !37, line: 300, baseType: !1604, size: 64, offset: 1344)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1601, file: !37, line: 301, baseType: !1604, size: 64, offset: 1408)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !96, file: !30, line: 470, baseType: !1630, size: 64, offset: 768)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1632, line: 82, size: 1408, elements: !1633)
!1632 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1633 = !{!1634, !1635, !1636, !1637, !1638, !1639, !1640, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1719, !1722, !1725}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1631, file: !1632, line: 83, baseType: !102, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1631, file: !1632, line: 84, baseType: !102, size: 64, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1631, file: !1632, line: 85, baseType: !1573, size: 64, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1631, file: !1632, line: 86, baseType: !213, size: 64, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1631, file: !1632, line: 87, baseType: !213, size: 64, offset: 256)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1631, file: !1632, line: 88, baseType: !213, size: 64, offset: 320)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1631, file: !1632, line: 90, baseType: !1641, size: 64, offset: 384)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!144, !1573, !1644}
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1646)
!1646 = !{!1647, !1648, !1649, !1653, !1654, !1655, !1656, !1670, !1683, !1684, !1685, !1686, !1687, !1695, !1696, !1697, !1698, !1699, !1700}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1645, file: !24, line: 96, baseType: !102, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1645, file: !24, line: 97, baseType: !1630, size: 64, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1645, file: !24, line: 99, baseType: !1650, size: 64, offset: 128)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1652, line: 76, flags: DIFlagFwdDecl)
!1652 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1645, file: !24, line: 100, baseType: !102, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1645, file: !24, line: 102, baseType: !985, size: 8, offset: 256)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1645, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1645, file: !24, line: 105, baseType: !1657, size: 64, offset: 320)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1659)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1660, line: 262, size: 1600, elements: !1661)
!1660 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1661 = !{!1662, !1664, !1665, !1669}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1659, file: !1660, line: 263, baseType: !1663, size: 256)
!1663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 256, elements: !1205)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1659, file: !1660, line: 264, baseType: !1663, size: 256, offset: 256)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1659, file: !1660, line: 265, baseType: !1666, size: 1024, offset: 512)
!1666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 1024, elements: !1667)
!1667 = !{!1668}
!1668 = !DISubrange(count: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1659, file: !1660, line: 266, baseType: !1376, size: 64, offset: 1536)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1645, file: !24, line: 106, baseType: !1671, size: 64, offset: 384)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1673)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1660, line: 210, size: 256, elements: !1674)
!1674 = !{!1675, !1679, !1681, !1682}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1673, file: !1660, line: 211, baseType: !1676, size: 72)
!1676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 72, elements: !1677)
!1677 = !{!1678}
!1678 = !DISubrange(count: 9)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1673, file: !1660, line: 212, baseType: !1680, size: 64, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1660, line: 14, baseType: !209)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1673, file: !1660, line: 213, baseType: !417, size: 32, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1673, file: !1660, line: 214, baseType: !417, size: 32, offset: 224)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1645, file: !24, line: 108, baseType: !1604, size: 64, offset: 448)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1645, file: !24, line: 109, baseType: !1595, size: 64, offset: 512)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1645, file: !24, line: 110, baseType: !1604, size: 64, offset: 576)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1645, file: !24, line: 111, baseType: !1595, size: 64, offset: 640)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1645, file: !24, line: 112, baseType: !1688, size: 64, offset: 704)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!144, !1573, !1691}
!1691 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1692)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1693)
!1693 = !{!1694}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1692, file: !37, line: 51, baseType: !144, size: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1645, file: !24, line: 113, baseType: !1604, size: 64, offset: 768)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1645, file: !24, line: 114, baseType: !213, size: 64, offset: 832)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1645, file: !24, line: 115, baseType: !213, size: 64, offset: 896)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1645, file: !24, line: 117, baseType: !1599, size: 64, offset: 960)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1645, file: !24, line: 118, baseType: !1595, size: 64, offset: 1024)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1645, file: !24, line: 120, baseType: !1701, size: 64, offset: 1088)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1631, file: !1632, line: 91, baseType: !1586, size: 64, offset: 448)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1631, file: !1632, line: 92, baseType: !1604, size: 64, offset: 512)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1631, file: !1632, line: 93, baseType: !1595, size: 64, offset: 576)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1631, file: !1632, line: 94, baseType: !1604, size: 64, offset: 640)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1631, file: !1632, line: 95, baseType: !1595, size: 64, offset: 704)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1631, file: !1632, line: 97, baseType: !1604, size: 64, offset: 768)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1631, file: !1632, line: 98, baseType: !1604, size: 64, offset: 832)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1631, file: !1632, line: 100, baseType: !1688, size: 64, offset: 896)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1631, file: !1632, line: 101, baseType: !1604, size: 64, offset: 960)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1631, file: !1632, line: 103, baseType: !1604, size: 64, offset: 1024)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1631, file: !1632, line: 105, baseType: !1604, size: 64, offset: 1088)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1631, file: !1632, line: 107, baseType: !1599, size: 64, offset: 1152)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1631, file: !1632, line: 109, baseType: !1716, size: 64, offset: 1216)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1718)
!1718 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1632, line: 109, flags: DIFlagFwdDecl)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1631, file: !1632, line: 111, baseType: !1720, size: 64, offset: 1280)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1632, line: 111, flags: DIFlagFwdDecl)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1631, file: !1632, line: 112, baseType: !1723, offset: 1344)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1724, line: 187, elements: !132)
!1724 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1631, file: !1632, line: 114, baseType: !985, size: 8, offset: 1344)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !96, file: !30, line: 471, baseType: !1644, size: 64, offset: 832)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !96, file: !30, line: 473, baseType: !86, size: 64, offset: 896)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !96, file: !30, line: 475, baseType: !86, size: 64, offset: 960)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !96, file: !30, line: 480, baseType: !377, size: 192, offset: 1024)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !96, file: !30, line: 484, baseType: !1731, size: 576, offset: 1216)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1732)
!1732 = !{!1733, !1734, !1735, !1736, !1737, !1738}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1731, file: !30, line: 362, baseType: !105, size: 128)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1731, file: !30, line: 363, baseType: !105, size: 128, offset: 128)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1731, file: !30, line: 364, baseType: !105, size: 128, offset: 256)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1731, file: !30, line: 365, baseType: !105, size: 128, offset: 384)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1731, file: !30, line: 366, baseType: !985, size: 8, offset: 512)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1731, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !96, file: !30, line: 485, baseType: !1740, size: 2304, offset: 1792)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1741)
!1741 = !{!1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1837, !1841}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1740, file: !37, line: 566, baseType: !1691, size: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1740, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1740, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1740, file: !37, line: 569, baseType: !985, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1740, file: !37, line: 570, baseType: !985, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1740, file: !37, line: 571, baseType: !985, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1740, file: !37, line: 572, baseType: !985, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1740, file: !37, line: 573, baseType: !985, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1740, file: !37, line: 574, baseType: !985, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1740, file: !37, line: 575, baseType: !985, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1740, file: !37, line: 576, baseType: !985, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1740, file: !37, line: 577, baseType: !416, size: 32, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1740, file: !37, line: 578, baseType: !118, offset: 96)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1740, file: !37, line: 580, baseType: !105, size: 128, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1740, file: !37, line: 581, baseType: !721, size: 192, offset: 256)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1740, file: !37, line: 582, baseType: !1758, size: 64, offset: 448)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1760, line: 43, size: 1472, elements: !1761)
!1760 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1761 = !{!1762, !1763, !1764, !1765, !1766, !1769, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1759, file: !1760, line: 44, baseType: !102, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1759, file: !1760, line: 45, baseType: !144, size: 32, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1759, file: !1760, line: 46, baseType: !105, size: 128, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1759, file: !1760, line: 47, baseType: !118, offset: 256)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1759, file: !1760, line: 48, baseType: !1767, size: 64, offset: 256)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1759, file: !1760, line: 49, baseType: !1770, size: 320, offset: 320)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1771, line: 11, size: 320, elements: !1772)
!1771 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1772 = !{!1773, !1774, !1775, !1780}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1770, file: !1771, line: 16, baseType: !685, size: 128)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1770, file: !1771, line: 17, baseType: !209, size: 64, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1770, file: !1771, line: 18, baseType: !1776, size: 64, offset: 192)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{null, !1779}
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1770, file: !1771, line: 19, baseType: !416, size: 32, offset: 256)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1759, file: !1760, line: 50, baseType: !209, size: 64, offset: 640)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1759, file: !1760, line: 51, baseType: !491, size: 64, offset: 704)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1759, file: !1760, line: 52, baseType: !491, size: 64, offset: 768)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1759, file: !1760, line: 53, baseType: !491, size: 64, offset: 832)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1759, file: !1760, line: 54, baseType: !491, size: 64, offset: 896)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1759, file: !1760, line: 55, baseType: !491, size: 64, offset: 960)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1759, file: !1760, line: 56, baseType: !209, size: 64, offset: 1024)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1759, file: !1760, line: 57, baseType: !209, size: 64, offset: 1088)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1759, file: !1760, line: 58, baseType: !209, size: 64, offset: 1152)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1759, file: !1760, line: 59, baseType: !209, size: 64, offset: 1216)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1759, file: !1760, line: 60, baseType: !209, size: 64, offset: 1280)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1759, file: !1760, line: 61, baseType: !1573, size: 64, offset: 1344)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1759, file: !1760, line: 62, baseType: !985, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1759, file: !1760, line: 63, baseType: !985, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1740, file: !37, line: 583, baseType: !985, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1740, file: !37, line: 584, baseType: !985, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1740, file: !37, line: 585, baseType: !985, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1740, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1740, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1740, file: !37, line: 592, baseType: !483, size: 512, offset: 576)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1740, file: !37, line: 593, baseType: !278, size: 64, offset: 1088)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1740, file: !37, line: 594, baseType: !1310, size: 256, offset: 1152)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1740, file: !37, line: 595, baseType: !692, size: 128, offset: 1408)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1740, file: !37, line: 596, baseType: !1767, size: 64, offset: 1536)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1740, file: !37, line: 597, baseType: !300, size: 32, offset: 1600)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1740, file: !37, line: 598, baseType: !300, size: 32, offset: 1632)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1740, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1740, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1740, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1740, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1740, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1740, file: !37, line: 604, baseType: !985, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1740, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1740, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1740, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1740, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1740, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1740, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1740, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1740, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1740, file: !37, line: 613, baseType: !144, size: 32, offset: 1792)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1740, file: !37, line: 614, baseType: !144, size: 32, offset: 1824)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1740, file: !37, line: 615, baseType: !278, size: 64, offset: 1856)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1740, file: !37, line: 616, baseType: !278, size: 64, offset: 1920)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1740, file: !37, line: 617, baseType: !278, size: 64, offset: 1984)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1740, file: !37, line: 618, baseType: !278, size: 64, offset: 2048)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1740, file: !37, line: 620, baseType: !1828, size: 64, offset: 2112)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1830)
!1830 = !{!1831, !1832, !1833, !1834}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1829, file: !37, line: 537, baseType: !118)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1829, file: !37, line: 538, baseType: !7, size: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1829, file: !37, line: 540, baseType: !105, size: 128, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1829, file: !37, line: 543, baseType: !1835, size: 64, offset: 192)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1740, file: !37, line: 621, baseType: !1838, size: 64, offset: 2176)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{null, !1573, !645}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1740, file: !37, line: 622, baseType: !1842, size: 64, offset: 2240)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !96, file: !30, line: 486, baseType: !1845, size: 64, offset: 4096)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1847)
!1847 = !{!1848, !1849, !1850, !1854, !1855, !1856}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1846, file: !37, line: 643, baseType: !1601, size: 1472)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1846, file: !37, line: 644, baseType: !1604, size: 64, offset: 1472)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1846, file: !37, line: 645, baseType: !1851, size: 64, offset: 1536)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{null, !1573, !985}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1846, file: !37, line: 646, baseType: !1604, size: 64, offset: 1600)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1846, file: !37, line: 647, baseType: !1595, size: 64, offset: 1664)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1846, file: !37, line: 648, baseType: !1595, size: 64, offset: 1728)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !96, file: !30, line: 493, baseType: !1858, size: 64, offset: 4160)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !96, file: !30, line: 499, baseType: !105, size: 128, offset: 4224)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !96, file: !30, line: 502, baseType: !1862, size: 64, offset: 4352)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1864)
!1864 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !96, file: !30, line: 504, baseType: !1866, size: 64, offset: 4416)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !96, file: !30, line: 505, baseType: !278, size: 64, offset: 4480)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !96, file: !30, line: 510, baseType: !278, size: 64, offset: 4544)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !96, file: !30, line: 511, baseType: !1870, size: 64, offset: 4608)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1872)
!1872 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !96, file: !30, line: 513, baseType: !1874, size: 64, offset: 4672)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1876)
!1876 = !{!1877, !1878}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1875, file: !30, line: 293, baseType: !7, size: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1875, file: !30, line: 294, baseType: !209, size: 64, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !96, file: !30, line: 515, baseType: !105, size: 128, offset: 4736)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !96, file: !30, line: 526, baseType: !1881, offset: 4864)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1882, line: 5, elements: !132)
!1882 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !96, file: !30, line: 528, baseType: !1884, size: 64, offset: 4864)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1886, line: 51, size: 1344, elements: !1887)
!1886 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1887 = !{!1888, !1889, !1891, !1892, !1982, !1991, !1992, !1993, !1994, !1995, !1996, !1997}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1885, file: !1886, line: 52, baseType: !102, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1885, file: !1886, line: 53, baseType: !1890, size: 32, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1886, line: 28, baseType: !416)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1885, file: !1886, line: 54, baseType: !102, size: 64, offset: 128)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1885, file: !1886, line: 55, baseType: !1893, size: 192, offset: 192)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1894, line: 17, size: 192, elements: !1895)
!1894 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1895 = !{!1896, !1898, !1981}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1893, file: !1894, line: 18, baseType: !1897, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1893, file: !1894, line: 19, baseType: !1899, size: 64, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1901)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1894, line: 110, size: 1152, elements: !1902)
!1902 = !{!1903, !1907, !1911, !1917, !1923, !1927, !1931, !1936, !1940, !1941, !1945, !1949, !1953, !1964, !1965, !1966, !1967, !1977}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1901, file: !1894, line: 111, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!1897, !1897}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1901, file: !1894, line: 112, baseType: !1908, size: 64, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{null, !1897}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1901, file: !1894, line: 113, baseType: !1912, size: 64, offset: 128)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!985, !1915}
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1893)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1901, file: !1894, line: 114, baseType: !1918, size: 64, offset: 192)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!1376, !1915, !1921}
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1901, file: !1894, line: 116, baseType: !1924, size: 64, offset: 256)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!985, !1915, !102}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1901, file: !1894, line: 118, baseType: !1928, size: 64, offset: 320)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!144, !1915, !102, !7, !86, !206}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1901, file: !1894, line: 123, baseType: !1932, size: 64, offset: 384)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!144, !1915, !102, !1935, !206}
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1901, file: !1894, line: 126, baseType: !1937, size: 64, offset: 448)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!102, !1915}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1901, file: !1894, line: 127, baseType: !1937, size: 64, offset: 512)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1901, file: !1894, line: 128, baseType: !1942, size: 64, offset: 576)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!1897, !1915}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1901, file: !1894, line: 130, baseType: !1946, size: 64, offset: 640)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!1897, !1915, !1897}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1901, file: !1894, line: 133, baseType: !1950, size: 64, offset: 704)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!1897, !1915, !102}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1901, file: !1894, line: 135, baseType: !1954, size: 64, offset: 768)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!144, !1915, !102, !102, !7, !7, !1957}
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1894, line: 43, size: 640, elements: !1959)
!1959 = !{!1960, !1961, !1962}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1958, file: !1894, line: 44, baseType: !1897, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1958, file: !1894, line: 45, baseType: !7, size: 32, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1958, file: !1894, line: 46, baseType: !1963, size: 512, offset: 128)
!1963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 512, elements: !521)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1901, file: !1894, line: 140, baseType: !1946, size: 64, offset: 832)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1901, file: !1894, line: 143, baseType: !1942, size: 64, offset: 896)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1901, file: !1894, line: 145, baseType: !1904, size: 64, offset: 960)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1901, file: !1894, line: 146, baseType: !1968, size: 64, offset: 1024)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!144, !1915, !1971}
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1894, line: 29, size: 128, elements: !1973)
!1973 = !{!1974, !1975, !1976}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1972, file: !1894, line: 30, baseType: !7, size: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1972, file: !1894, line: 31, baseType: !7, size: 32, offset: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1972, file: !1894, line: 32, baseType: !1915, size: 64, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1901, file: !1894, line: 148, baseType: !1978, size: 64, offset: 1088)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!144, !1915, !1573}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1893, file: !1894, line: 20, baseType: !1573, size: 64, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1885, file: !1886, line: 57, baseType: !1983, size: 64, offset: 384)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1886, line: 31, size: 704, elements: !1985)
!1985 = !{!1986, !1987, !1988, !1989, !1990}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1984, file: !1886, line: 32, baseType: !160, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1984, file: !1886, line: 33, baseType: !144, size: 32, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1984, file: !1886, line: 34, baseType: !86, size: 64, offset: 128)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1984, file: !1886, line: 35, baseType: !1983, size: 64, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1984, file: !1886, line: 43, baseType: !228, size: 448, offset: 256)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1885, file: !1886, line: 58, baseType: !1983, size: 64, offset: 448)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1885, file: !1886, line: 59, baseType: !1884, size: 64, offset: 512)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1885, file: !1886, line: 60, baseType: !1884, size: 64, offset: 576)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1885, file: !1886, line: 61, baseType: !1884, size: 64, offset: 640)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1885, file: !1886, line: 63, baseType: !99, size: 512, offset: 704)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1885, file: !1886, line: 65, baseType: !209, size: 64, offset: 1216)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1885, file: !1886, line: 66, baseType: !86, size: 64, offset: 1280)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !96, file: !30, line: 529, baseType: !1897, size: 64, offset: 4928)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !96, file: !30, line: 534, baseType: !2000, size: 32, offset: 4992)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !85, line: 16, baseType: !2001)
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !85, line: 13, baseType: !416)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !96, file: !30, line: 535, baseType: !416, size: 32, offset: 5024)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !96, file: !30, line: 537, baseType: !118, offset: 5056)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !96, file: !30, line: 538, baseType: !105, size: 128, offset: 5056)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !96, file: !30, line: 540, baseType: !2006, size: 64, offset: 5184)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2008, line: 54, size: 960, elements: !2009)
!2008 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2009 = !{!2010, !2011, !2012, !2013, !2014, !2015, !2016, !2020, !2024, !2025, !2026, !2027, !2031, !2035, !2036}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2007, file: !2008, line: 55, baseType: !102, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2007, file: !2008, line: 56, baseType: !1650, size: 64, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2007, file: !2008, line: 58, baseType: !213, size: 64, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2007, file: !2008, line: 59, baseType: !213, size: 64, offset: 192)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2007, file: !2008, line: 60, baseType: !111, size: 64, offset: 256)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2007, file: !2008, line: 62, baseType: !1586, size: 64, offset: 320)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2007, file: !2008, line: 63, baseType: !2017, size: 64, offset: 384)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!160, !1573, !1593}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2007, file: !2008, line: 65, baseType: !2021, size: 64, offset: 448)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{null, !2006}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2007, file: !2008, line: 66, baseType: !1595, size: 64, offset: 512)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2007, file: !2008, line: 68, baseType: !1604, size: 64, offset: 576)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2007, file: !2008, line: 70, baseType: !1359, size: 64, offset: 640)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2007, file: !2008, line: 71, baseType: !2028, size: 64, offset: 704)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!1376, !1573}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2007, file: !2008, line: 73, baseType: !2032, size: 64, offset: 768)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{null, !1573, !1396, !1402}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2007, file: !2008, line: 75, baseType: !1599, size: 64, offset: 832)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2007, file: !2008, line: 77, baseType: !1720, size: 64, offset: 896)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !96, file: !30, line: 541, baseType: !213, size: 64, offset: 5248)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !96, file: !30, line: 543, baseType: !1595, size: 64, offset: 5312)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !96, file: !30, line: 544, baseType: !2040, size: 64, offset: 5376)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !96, file: !30, line: 545, baseType: !2043, size: 64, offset: 5440)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !96, file: !30, line: 547, baseType: !985, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !96, file: !30, line: 548, baseType: !985, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !96, file: !30, line: 549, baseType: !985, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !96, file: !30, line: 550, baseType: !985, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "pwm", scope: !93, file: !3, line: 19, baseType: !2050, size: 64, offset: 5568)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pwm_device", file: !51, line: 77, size: 832, elements: !2052)
!2052 = !{!2053, !2054, !2055, !2056, !2057, !2130, !2131, !2136, !2137}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !2051, file: !51, line: 78, baseType: !102, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2051, file: !51, line: 79, baseType: !209, size: 64, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "hwpwm", scope: !2051, file: !51, line: 80, baseType: !7, size: 32, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "pwm", scope: !2051, file: !51, line: 81, baseType: !7, size: 32, offset: 160)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !2051, file: !51, line: 82, baseType: !2058, size: 64, offset: 192)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pwm_chip", file: !51, line: 289, size: 512, elements: !2060)
!2060 = !{!2061, !2062, !2112, !2113, !2114, !2127, !2128, !2129}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2059, file: !51, line: 290, baseType: !1573, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2059, file: !51, line: 291, baseType: !2063, size: 64, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2065)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pwm_ops", file: !51, line: 258, size: 640, elements: !2066)
!2066 = !{!2067, !2071, !2075, !2084, !2096, !2101, !2102, !2106, !2110, !2111}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2065, file: !51, line: 259, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!144, !2058, !2050}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2065, file: !51, line: 260, baseType: !2072, size: 64, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{null, !2058, !2050}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "capture", scope: !2065, file: !51, line: 261, baseType: !2076, size: 64, offset: 128)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!144, !2058, !2050, !2079, !209}
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pwm_capture", file: !51, line: 309, size: 64, elements: !2081)
!2081 = !{!2082, !2083}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2080, file: !51, line: 310, baseType: !7, size: 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "duty_cycle", scope: !2080, file: !51, line: 311, baseType: !7, size: 32, offset: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "apply", scope: !2065, file: !51, line: 263, baseType: !2085, size: 64, offset: 192)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!144, !2058, !2050, !2088}
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2090)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pwm_state", file: !51, line: 58, size: 192, elements: !2091)
!2091 = !{!2092, !2093, !2094, !2095}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2090, file: !51, line: 59, baseType: !278, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "duty_cycle", scope: !2090, file: !51, line: 60, baseType: !278, size: 64, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2090, file: !51, line: 61, baseType: !50, size: 32, offset: 128)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2090, file: !51, line: 62, baseType: !985, size: 8, offset: 160)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2065, file: !51, line: 265, baseType: !2097, size: 64, offset: 256)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{null, !2058, !2050, !2100}
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2065, file: !51, line: 267, baseType: !1650, size: 64, offset: 320)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !2065, file: !51, line: 270, baseType: !2103, size: 64, offset: 384)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!144, !2058, !2050, !144, !144}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "set_polarity", scope: !2065, file: !51, line: 272, baseType: !2107, size: 64, offset: 448)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!144, !2058, !2050, !50}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !2065, file: !51, line: 274, baseType: !2068, size: 64, offset: 512)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !2065, file: !51, line: 275, baseType: !2072, size: 64, offset: 576)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2059, file: !51, line: 292, baseType: !144, size: 32, offset: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "npwm", scope: !2059, file: !51, line: 293, baseType: !7, size: 32, offset: 160)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "of_xlate", scope: !2059, file: !51, line: 295, baseType: !2115, size: 64, offset: 192)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!2050, !2058, !2118}
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2120)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_phandle_args", file: !1886, line: 74, size: 640, elements: !2121)
!2121 = !{!2122, !2123, !2124}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !2120, file: !1886, line: 75, baseType: !1884, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "args_count", scope: !2120, file: !1886, line: 76, baseType: !144, size: 32, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2120, file: !1886, line: 77, baseType: !2125, size: 512, offset: 96)
!2125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2126, size: 512, elements: !777)
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !85, line: 104, baseType: !416)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "of_pwm_n_cells", scope: !2059, file: !51, line: 297, baseType: !7, size: 32, offset: 256)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2059, file: !51, line: 300, baseType: !105, size: 128, offset: 320)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "pwms", scope: !2059, file: !51, line: 301, baseType: !2050, size: 64, offset: 448)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !2051, file: !51, line: 83, baseType: !86, size: 64, offset: 256)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2051, file: !51, line: 85, baseType: !2132, size: 128, offset: 320)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pwm_args", file: !51, line: 41, size: 128, elements: !2133)
!2133 = !{!2134, !2135}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2132, file: !51, line: 42, baseType: !278, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2132, file: !51, line: 43, baseType: !50, size: 32, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2051, file: !51, line: 86, baseType: !2090, size: 192, offset: 448)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !2051, file: !51, line: 87, baseType: !2090, size: 192, offset: 640)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !93, file: !3, line: 20, baseType: !377, size: 192, offset: 5632)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !93, file: !3, line: 21, baseType: !2090, size: 192, offset: 5824)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!2141 = !{!2142, !0, !2144, !2147, !2149, !2152, !2166, !2171, !2173, !2175, !2178, !2180, !2182, !2184, !2186, !2188, !2190, !2192, !2194}
!2142 = !DIGlobalVariableExpression(var: !2143, expr: !DIExpression())
!2143 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pwm_sysfs_init158", scope: !2, file: !3, line: 529, type: !86, isLocal: true, isDefinition: true)
!2144 = !DIGlobalVariableExpression(var: !2145, expr: !DIExpression())
!2145 = distinct !DIGlobalVariable(name: "pwm_chip_groups", scope: !2, file: !3, line: 374, type: !2146, isLocal: true, isDefinition: true)
!2146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 128, elements: !957)
!2147 = !DIGlobalVariableExpression(var: !2148, expr: !DIExpression())
!2148 = distinct !DIGlobalVariable(name: "pwm_chip_group", scope: !2, file: !3, line: 374, type: !215, isLocal: true, isDefinition: true)
!2149 = !DIGlobalVariableExpression(var: !2150, expr: !DIExpression())
!2150 = distinct !DIGlobalVariable(name: "pwm_chip_attrs", scope: !2, file: !3, line: 368, type: !2151, isLocal: true, isDefinition: true)
!2151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 256, elements: !359)
!2152 = !DIGlobalVariableExpression(var: !2153, expr: !DIExpression())
!2153 = distinct !DIGlobalVariable(name: "dev_attr_export", scope: !2, file: !3, line: 336, type: !2154, isLocal: true, isDefinition: true)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !30, line: 99, size: 256, elements: !2155)
!2155 = !{!2156, !2157, !2162}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2154, file: !30, line: 100, baseType: !196, size: 128)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2154, file: !30, line: 101, baseType: !2158, size: 64, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!191, !1573, !2161, !160}
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2154, file: !30, line: 103, baseType: !2163, size: 64, offset: 192)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!191, !1573, !2161, !102, !206}
!2166 = !DIGlobalVariableExpression(var: !2167, expr: !DIExpression())
!2167 = distinct !DIGlobalVariable(name: "__key", scope: !2168, file: !3, line: 257, type: !1723, isLocal: true, isDefinition: true)
!2168 = distinct !DISubprogram(name: "pwm_export_child", scope: !3, file: !3, line: 241, type: !2169, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!144, !1573, !2050}
!2171 = !DIGlobalVariableExpression(var: !2172, expr: !DIExpression())
!2172 = distinct !DIGlobalVariable(name: "pwm_groups", scope: !2, file: !3, line: 232, type: !2146, isLocal: true, isDefinition: true)
!2173 = !DIGlobalVariableExpression(var: !2174, expr: !DIExpression())
!2174 = distinct !DIGlobalVariable(name: "pwm_group", scope: !2, file: !3, line: 232, type: !215, isLocal: true, isDefinition: true)
!2175 = !DIGlobalVariableExpression(var: !2176, expr: !DIExpression())
!2176 = distinct !DIGlobalVariable(name: "pwm_attrs", scope: !2, file: !3, line: 224, type: !2177, isLocal: true, isDefinition: true)
!2177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 384, elements: !1279)
!2178 = !DIGlobalVariableExpression(var: !2179, expr: !DIExpression())
!2179 = distinct !DIGlobalVariable(name: "dev_attr_period", scope: !2, file: !3, line: 218, type: !2154, isLocal: true, isDefinition: true)
!2180 = !DIGlobalVariableExpression(var: !2181, expr: !DIExpression())
!2181 = distinct !DIGlobalVariable(name: "dev_attr_duty_cycle", scope: !2, file: !3, line: 219, type: !2154, isLocal: true, isDefinition: true)
!2182 = !DIGlobalVariableExpression(var: !2183, expr: !DIExpression())
!2183 = distinct !DIGlobalVariable(name: "dev_attr_enable", scope: !2, file: !3, line: 220, type: !2154, isLocal: true, isDefinition: true)
!2184 = !DIGlobalVariableExpression(var: !2185, expr: !DIExpression())
!2185 = distinct !DIGlobalVariable(name: "dev_attr_polarity", scope: !2, file: !3, line: 221, type: !2154, isLocal: true, isDefinition: true)
!2186 = !DIGlobalVariableExpression(var: !2187, expr: !DIExpression())
!2187 = distinct !DIGlobalVariable(name: "dev_attr_capture", scope: !2, file: !3, line: 222, type: !2154, isLocal: true, isDefinition: true)
!2188 = !DIGlobalVariableExpression(var: !2189, expr: !DIExpression())
!2189 = distinct !DIGlobalVariable(name: "dev_attr_unexport", scope: !2, file: !3, line: 357, type: !2154, isLocal: true, isDefinition: true)
!2190 = !DIGlobalVariableExpression(var: !2191, expr: !DIExpression())
!2191 = distinct !DIGlobalVariable(name: "dev_attr_npwm", scope: !2, file: !3, line: 366, type: !2154, isLocal: true, isDefinition: true)
!2192 = !DIGlobalVariableExpression(var: !2193, expr: !DIExpression())
!2193 = distinct !DIGlobalVariable(name: "pwm_class_pm_ops", scope: !2, file: !3, line: 474, type: !1600, isLocal: true, isDefinition: true)
!2194 = !DIGlobalVariableExpression(var: !2195, expr: !DIExpression())
!2195 = distinct !DIGlobalVariable(name: "__key", scope: !2196, file: !3, line: 527, type: !1723, isLocal: true, isDefinition: true)
!2196 = distinct !DISubprogram(name: "pwm_sysfs_init", scope: !3, file: !3, line: 525, type: !2197, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!144}
!2199 = !{i32 7, !"Dwarf Version", i32 4}
!2200 = !{i32 2, !"Debug Info Version", i32 3}
!2201 = !{i32 1, !"wchar_size", i32 2}
!2202 = !{i32 1, !"Code Model", i32 2}
!2203 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2204 = distinct !DISubprogram(name: "pwmchip_sysfs_export", scope: !3, file: !3, line: 488, type: !2205, scopeLine: 489, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{null, !2058}
!2207 = !DILocalVariable(name: "chip", arg: 1, scope: !2204, file: !3, line: 488, type: !2058)
!2208 = !DILocation(line: 488, column: 44, scope: !2204)
!2209 = !DILocalVariable(name: "parent", scope: !2204, file: !3, line: 490, type: !1573)
!2210 = !DILocation(line: 490, column: 17, scope: !2204)
!2211 = !DILocation(line: 496, column: 37, scope: !2204)
!2212 = !DILocation(line: 496, column: 43, scope: !2204)
!2213 = !DILocation(line: 496, column: 61, scope: !2204)
!2214 = !DILocation(line: 497, column: 24, scope: !2204)
!2215 = !DILocation(line: 497, column: 30, scope: !2204)
!2216 = !DILocation(line: 496, column: 11, scope: !2204)
!2217 = !DILocation(line: 496, column: 9, scope: !2204)
!2218 = !DILocation(line: 498, column: 13, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2204, file: !3, line: 498, column: 6)
!2220 = !DILocation(line: 498, column: 6, scope: !2219)
!2221 = !DILocation(line: 498, column: 6, scope: !2204)
!2222 = !DILocation(line: 499, column: 3, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2219, file: !3, line: 498, column: 22)
!2224 = !DILocation(line: 501, column: 2, scope: !2223)
!2225 = !DILocation(line: 502, column: 1, scope: !2204)
!2226 = distinct !DISubprogram(name: "IS_ERR", scope: !2227, file: !2227, line: 34, type: !2228, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2227 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!985, !1376}
!2230 = !DILocalVariable(name: "ptr", arg: 1, scope: !2226, file: !2227, line: 34, type: !1376)
!2231 = !DILocation(line: 34, column: 60, scope: !2226)
!2232 = !DILocation(line: 36, column: 9, scope: !2226)
!2233 = !DILocation(line: 36, column: 2, scope: !2226)
!2234 = distinct !DISubprogram(name: "pwmchip_sysfs_unexport", scope: !3, file: !3, line: 504, type: !2205, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2235 = !DILocalVariable(name: "chip", arg: 1, scope: !2234, file: !3, line: 504, type: !2058)
!2236 = !DILocation(line: 504, column: 46, scope: !2234)
!2237 = !DILocalVariable(name: "parent", scope: !2234, file: !3, line: 506, type: !1573)
!2238 = !DILocation(line: 506, column: 17, scope: !2234)
!2239 = !DILocalVariable(name: "i", scope: !2234, file: !3, line: 507, type: !7)
!2240 = !DILocation(line: 507, column: 15, scope: !2234)
!2241 = !DILocation(line: 509, column: 47, scope: !2234)
!2242 = !DILocation(line: 509, column: 11, scope: !2234)
!2243 = !DILocation(line: 509, column: 9, scope: !2234)
!2244 = !DILocation(line: 511, column: 7, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2234, file: !3, line: 511, column: 6)
!2246 = !DILocation(line: 511, column: 6, scope: !2234)
!2247 = !DILocation(line: 512, column: 3, scope: !2245)
!2248 = !DILocation(line: 514, column: 9, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2234, file: !3, line: 514, column: 2)
!2250 = !DILocation(line: 514, column: 7, scope: !2249)
!2251 = !DILocation(line: 514, column: 14, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 514, column: 2)
!2253 = !DILocation(line: 514, column: 18, scope: !2252)
!2254 = !DILocation(line: 514, column: 24, scope: !2252)
!2255 = !DILocation(line: 514, column: 16, scope: !2252)
!2256 = !DILocation(line: 514, column: 2, scope: !2249)
!2257 = !DILocalVariable(name: "pwm", scope: !2258, file: !3, line: 515, type: !2050)
!2258 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 514, column: 35)
!2259 = !DILocation(line: 515, column: 22, scope: !2258)
!2260 = !DILocation(line: 515, column: 29, scope: !2258)
!2261 = !DILocation(line: 515, column: 35, scope: !2258)
!2262 = !DILocation(line: 515, column: 40, scope: !2258)
!2263 = !DILocation(line: 517, column: 32, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2258, file: !3, line: 517, column: 7)
!2265 = !DILocation(line: 517, column: 37, scope: !2264)
!2266 = !DILocation(line: 517, column: 7, scope: !2264)
!2267 = !DILocation(line: 517, column: 7, scope: !2258)
!2268 = !DILocation(line: 518, column: 23, scope: !2264)
!2269 = !DILocation(line: 518, column: 31, scope: !2264)
!2270 = !DILocation(line: 518, column: 4, scope: !2264)
!2271 = !DILocation(line: 519, column: 2, scope: !2258)
!2272 = !DILocation(line: 514, column: 31, scope: !2252)
!2273 = !DILocation(line: 514, column: 2, scope: !2252)
!2274 = distinct !{!2274, !2256, !2275}
!2275 = !DILocation(line: 519, column: 2, scope: !2249)
!2276 = !DILocation(line: 521, column: 13, scope: !2234)
!2277 = !DILocation(line: 521, column: 2, scope: !2234)
!2278 = !DILocation(line: 522, column: 20, scope: !2234)
!2279 = !DILocation(line: 522, column: 2, scope: !2234)
!2280 = !DILocation(line: 523, column: 1, scope: !2234)
!2281 = distinct !DISubprogram(name: "pwmchip_sysfs_match", scope: !3, file: !3, line: 483, type: !2282, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!144, !1573, !1376}
!2284 = !DILocalVariable(name: "parent", arg: 1, scope: !2281, file: !3, line: 483, type: !1573)
!2285 = !DILocation(line: 483, column: 47, scope: !2281)
!2286 = !DILocalVariable(name: "data", arg: 2, scope: !2281, file: !3, line: 483, type: !1376)
!2287 = !DILocation(line: 483, column: 67, scope: !2281)
!2288 = !DILocation(line: 485, column: 25, scope: !2281)
!2289 = !DILocation(line: 485, column: 9, scope: !2281)
!2290 = !DILocation(line: 485, column: 36, scope: !2281)
!2291 = !DILocation(line: 485, column: 33, scope: !2281)
!2292 = !DILocation(line: 485, column: 2, scope: !2281)
!2293 = distinct !DISubprogram(name: "test_bit", scope: !2294, file: !2294, line: 132, type: !2295, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2294 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!985, !83, !2297}
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2299)
!2299 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !209)
!2300 = !DILocalVariable(name: "nr", arg: 1, scope: !2301, file: !2302, line: 210, type: !83)
!2301 = distinct !DISubprogram(name: "variable_test_bit", scope: !2302, file: !2302, line: 210, type: !2295, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2302 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2303 = !DILocation(line: 210, column: 52, scope: !2301, inlinedAt: !2304)
!2304 = distinct !DILocation(line: 135, column: 9, scope: !2293)
!2305 = !DILocalVariable(name: "addr", arg: 2, scope: !2301, file: !2302, line: 210, type: !2297)
!2306 = !DILocation(line: 210, column: 86, scope: !2301, inlinedAt: !2304)
!2307 = !DILocalVariable(name: "oldbit", scope: !2301, file: !2302, line: 212, type: !985)
!2308 = !DILocation(line: 212, column: 7, scope: !2301, inlinedAt: !2304)
!2309 = !DILocalVariable(name: "nr", arg: 1, scope: !2310, file: !2302, line: 204, type: !83)
!2310 = distinct !DISubprogram(name: "constant_test_bit", scope: !2302, file: !2302, line: 204, type: !2295, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2311 = !DILocation(line: 204, column: 52, scope: !2310, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 135, column: 9, scope: !2293)
!2313 = !DILocalVariable(name: "addr", arg: 2, scope: !2310, file: !2302, line: 204, type: !2297)
!2314 = !DILocation(line: 204, column: 86, scope: !2310, inlinedAt: !2312)
!2315 = !DILocalVariable(name: "v", arg: 1, scope: !2316, file: !2317, line: 69, type: !2320)
!2316 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2317, file: !2317, line: 69, type: !2318, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2317 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!2318 = !DISubroutineType(types: !2319)
!2319 = !{null, !2320, !206}
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2322)
!2322 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2323 = !DILocation(line: 69, column: 73, scope: !2316, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 134, column: 2, scope: !2293)
!2325 = !DILocalVariable(name: "size", arg: 2, scope: !2316, file: !2317, line: 69, type: !206)
!2326 = !DILocation(line: 69, column: 83, scope: !2316, inlinedAt: !2324)
!2327 = !DILocalVariable(name: "nr", arg: 1, scope: !2293, file: !2294, line: 132, type: !83)
!2328 = !DILocation(line: 132, column: 34, scope: !2293)
!2329 = !DILocalVariable(name: "addr", arg: 2, scope: !2293, file: !2294, line: 132, type: !2297)
!2330 = !DILocation(line: 132, column: 68, scope: !2293)
!2331 = !DILocation(line: 134, column: 25, scope: !2293)
!2332 = !DILocation(line: 134, column: 32, scope: !2293)
!2333 = !DILocation(line: 134, column: 30, scope: !2293)
!2334 = !DILocation(line: 71, column: 19, scope: !2316, inlinedAt: !2324)
!2335 = !DILocation(line: 71, column: 22, scope: !2316, inlinedAt: !2324)
!2336 = !DILocation(line: 71, column: 2, scope: !2316, inlinedAt: !2324)
!2337 = !DILocation(line: 72, column: 2, scope: !2316, inlinedAt: !2324)
!2338 = !DILocation(line: 135, column: 9, scope: !2293)
!2339 = !DILocation(line: 206, column: 19, scope: !2310, inlinedAt: !2312)
!2340 = !DILocation(line: 206, column: 22, scope: !2310, inlinedAt: !2312)
!2341 = !DILocation(line: 206, column: 15, scope: !2310, inlinedAt: !2312)
!2342 = !DILocation(line: 207, column: 4, scope: !2310, inlinedAt: !2312)
!2343 = !DILocation(line: 207, column: 9, scope: !2310, inlinedAt: !2312)
!2344 = !DILocation(line: 207, column: 12, scope: !2310, inlinedAt: !2312)
!2345 = !DILocation(line: 206, column: 44, scope: !2310, inlinedAt: !2312)
!2346 = !DILocation(line: 207, column: 37, scope: !2310, inlinedAt: !2312)
!2347 = !DILocation(line: 217, column: 33, scope: !2301, inlinedAt: !2304)
!2348 = !DILocation(line: 217, column: 46, scope: !2301, inlinedAt: !2304)
!2349 = !DILocation(line: 214, column: 2, scope: !2301, inlinedAt: !2304)
!2350 = !{i32 -2147056160, i32 -2147056100}
!2351 = !DILocation(line: 219, column: 9, scope: !2301, inlinedAt: !2304)
!2352 = !DILocation(line: 135, column: 2, scope: !2293)
!2353 = distinct !DISubprogram(name: "pwm_unexport_child", scope: !3, file: !3, line: 285, type: !2169, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2354 = !DILocalVariable(name: "parent", arg: 1, scope: !2353, file: !3, line: 285, type: !1573)
!2355 = !DILocation(line: 285, column: 46, scope: !2353)
!2356 = !DILocalVariable(name: "pwm", arg: 2, scope: !2353, file: !3, line: 285, type: !2050)
!2357 = !DILocation(line: 285, column: 73, scope: !2353)
!2358 = !DILocalVariable(name: "child", scope: !2353, file: !3, line: 287, type: !1573)
!2359 = !DILocation(line: 287, column: 17, scope: !2353)
!2360 = !DILocalVariable(name: "pwm_prop", scope: !2353, file: !3, line: 288, type: !2361)
!2361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 128, elements: !957)
!2362 = !DILocation(line: 288, column: 8, scope: !2353)
!2363 = !DILocation(line: 290, column: 42, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 290, column: 6)
!2365 = !DILocation(line: 290, column: 47, scope: !2364)
!2366 = !DILocation(line: 290, column: 7, scope: !2364)
!2367 = !DILocation(line: 290, column: 6, scope: !2353)
!2368 = !DILocation(line: 291, column: 3, scope: !2364)
!2369 = !DILocation(line: 293, column: 28, scope: !2353)
!2370 = !DILocation(line: 293, column: 36, scope: !2353)
!2371 = !DILocation(line: 293, column: 10, scope: !2353)
!2372 = !DILocation(line: 293, column: 8, scope: !2353)
!2373 = !DILocation(line: 294, column: 7, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 294, column: 6)
!2375 = !DILocation(line: 294, column: 6, scope: !2353)
!2376 = !DILocation(line: 295, column: 3, scope: !2374)
!2377 = !DILocation(line: 297, column: 56, scope: !2353)
!2378 = !DILocation(line: 297, column: 61, scope: !2353)
!2379 = !DILocation(line: 297, column: 16, scope: !2353)
!2380 = !DILocation(line: 297, column: 2, scope: !2353)
!2381 = !DILocation(line: 297, column: 14, scope: !2353)
!2382 = !DILocation(line: 298, column: 2, scope: !2353)
!2383 = !DILocation(line: 298, column: 14, scope: !2353)
!2384 = !DILocation(line: 299, column: 22, scope: !2353)
!2385 = !DILocation(line: 299, column: 30, scope: !2353)
!2386 = !DILocation(line: 299, column: 49, scope: !2353)
!2387 = !DILocation(line: 299, column: 2, scope: !2353)
!2388 = !DILocation(line: 300, column: 8, scope: !2353)
!2389 = !DILocation(line: 300, column: 2, scope: !2353)
!2390 = !DILocation(line: 303, column: 13, scope: !2353)
!2391 = !DILocation(line: 303, column: 2, scope: !2353)
!2392 = !DILocation(line: 304, column: 20, scope: !2353)
!2393 = !DILocation(line: 304, column: 2, scope: !2353)
!2394 = !DILocation(line: 305, column: 10, scope: !2353)
!2395 = !DILocation(line: 305, column: 2, scope: !2353)
!2396 = !DILocation(line: 307, column: 2, scope: !2353)
!2397 = !DILocation(line: 308, column: 1, scope: !2353)
!2398 = !DILocation(line: 527, column: 9, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 527, column: 9)
!2400 = !DILocation(line: 527, column: 2, scope: !2196)
!2401 = distinct !DISubprogram(name: "export_store", scope: !3, file: !3, line: 310, type: !2164, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2402 = !DILocalVariable(name: "parent", arg: 1, scope: !2401, file: !3, line: 310, type: !1573)
!2403 = !DILocation(line: 310, column: 44, scope: !2401)
!2404 = !DILocalVariable(name: "attr", arg: 2, scope: !2401, file: !3, line: 311, type: !2161)
!2405 = !DILocation(line: 311, column: 33, scope: !2401)
!2406 = !DILocalVariable(name: "buf", arg: 3, scope: !2401, file: !3, line: 312, type: !102)
!2407 = !DILocation(line: 312, column: 20, scope: !2401)
!2408 = !DILocalVariable(name: "len", arg: 4, scope: !2401, file: !3, line: 312, type: !206)
!2409 = !DILocation(line: 312, column: 32, scope: !2401)
!2410 = !DILocalVariable(name: "chip", scope: !2401, file: !3, line: 314, type: !2058)
!2411 = !DILocation(line: 314, column: 19, scope: !2401)
!2412 = !DILocation(line: 314, column: 42, scope: !2401)
!2413 = !DILocation(line: 314, column: 26, scope: !2401)
!2414 = !DILocalVariable(name: "pwm", scope: !2401, file: !3, line: 315, type: !2050)
!2415 = !DILocation(line: 315, column: 21, scope: !2401)
!2416 = !DILocalVariable(name: "hwpwm", scope: !2401, file: !3, line: 316, type: !7)
!2417 = !DILocation(line: 316, column: 15, scope: !2401)
!2418 = !DILocalVariable(name: "ret", scope: !2401, file: !3, line: 317, type: !144)
!2419 = !DILocation(line: 317, column: 6, scope: !2401)
!2420 = !DILocation(line: 319, column: 19, scope: !2401)
!2421 = !DILocation(line: 319, column: 8, scope: !2401)
!2422 = !DILocation(line: 319, column: 6, scope: !2401)
!2423 = !DILocation(line: 320, column: 6, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 320, column: 6)
!2425 = !DILocation(line: 320, column: 10, scope: !2424)
!2426 = !DILocation(line: 320, column: 6, scope: !2401)
!2427 = !DILocation(line: 321, column: 10, scope: !2424)
!2428 = !DILocation(line: 321, column: 3, scope: !2424)
!2429 = !DILocation(line: 323, column: 6, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 323, column: 6)
!2431 = !DILocation(line: 323, column: 15, scope: !2430)
!2432 = !DILocation(line: 323, column: 21, scope: !2430)
!2433 = !DILocation(line: 323, column: 12, scope: !2430)
!2434 = !DILocation(line: 323, column: 6, scope: !2401)
!2435 = !DILocation(line: 324, column: 3, scope: !2430)
!2436 = !DILocation(line: 326, column: 30, scope: !2401)
!2437 = !DILocation(line: 326, column: 36, scope: !2401)
!2438 = !DILocation(line: 326, column: 8, scope: !2401)
!2439 = !DILocation(line: 326, column: 6, scope: !2401)
!2440 = !DILocation(line: 327, column: 13, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 327, column: 6)
!2442 = !DILocation(line: 327, column: 6, scope: !2441)
!2443 = !DILocation(line: 327, column: 6, scope: !2401)
!2444 = !DILocation(line: 328, column: 18, scope: !2441)
!2445 = !DILocation(line: 328, column: 10, scope: !2441)
!2446 = !DILocation(line: 328, column: 3, scope: !2441)
!2447 = !DILocation(line: 330, column: 25, scope: !2401)
!2448 = !DILocation(line: 330, column: 33, scope: !2401)
!2449 = !DILocation(line: 330, column: 8, scope: !2401)
!2450 = !DILocation(line: 330, column: 6, scope: !2401)
!2451 = !DILocation(line: 331, column: 6, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 331, column: 6)
!2453 = !DILocation(line: 331, column: 10, scope: !2452)
!2454 = !DILocation(line: 331, column: 6, scope: !2401)
!2455 = !DILocation(line: 332, column: 11, scope: !2452)
!2456 = !DILocation(line: 332, column: 3, scope: !2452)
!2457 = !DILocation(line: 334, column: 9, scope: !2401)
!2458 = !DILocation(line: 334, column: 17, scope: !2401)
!2459 = !DILocation(line: 334, column: 2, scope: !2401)
!2460 = !DILocation(line: 335, column: 1, scope: !2401)
!2461 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !2462, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!86, !1921}
!2464 = !DILocalVariable(name: "dev", arg: 1, scope: !2461, file: !30, line: 655, type: !1921)
!2465 = !DILocation(line: 655, column: 58, scope: !2461)
!2466 = !DILocation(line: 657, column: 9, scope: !2461)
!2467 = !DILocation(line: 657, column: 14, scope: !2461)
!2468 = !DILocation(line: 657, column: 2, scope: !2461)
!2469 = distinct !DISubprogram(name: "PTR_ERR", scope: !2227, file: !2227, line: 29, type: !2470, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!83, !1376}
!2472 = !DILocalVariable(name: "ptr", arg: 1, scope: !2469, file: !2227, line: 29, type: !1376)
!2473 = !DILocation(line: 29, column: 61, scope: !2469)
!2474 = !DILocation(line: 31, column: 16, scope: !2469)
!2475 = !DILocation(line: 31, column: 9, scope: !2469)
!2476 = !DILocation(line: 31, column: 2, scope: !2469)
!2477 = !DILocalVariable(name: "parent", arg: 1, scope: !2168, file: !3, line: 241, type: !1573)
!2478 = !DILocation(line: 241, column: 44, scope: !2168)
!2479 = !DILocalVariable(name: "pwm", arg: 2, scope: !2168, file: !3, line: 241, type: !2050)
!2480 = !DILocation(line: 241, column: 71, scope: !2168)
!2481 = !DILocalVariable(name: "export", scope: !2168, file: !3, line: 243, type: !92)
!2482 = !DILocation(line: 243, column: 21, scope: !2168)
!2483 = !DILocalVariable(name: "pwm_prop", scope: !2168, file: !3, line: 244, type: !2361)
!2484 = !DILocation(line: 244, column: 8, scope: !2168)
!2485 = !DILocalVariable(name: "ret", scope: !2168, file: !3, line: 245, type: !144)
!2486 = !DILocation(line: 245, column: 6, scope: !2168)
!2487 = !DILocation(line: 247, column: 39, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 247, column: 6)
!2489 = !DILocation(line: 247, column: 44, scope: !2488)
!2490 = !DILocation(line: 247, column: 6, scope: !2488)
!2491 = !DILocation(line: 247, column: 6, scope: !2168)
!2492 = !DILocation(line: 248, column: 3, scope: !2488)
!2493 = !DILocation(line: 250, column: 11, scope: !2168)
!2494 = !DILocation(line: 250, column: 9, scope: !2168)
!2495 = !DILocation(line: 251, column: 7, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 251, column: 6)
!2497 = !DILocation(line: 251, column: 6, scope: !2168)
!2498 = !DILocation(line: 252, column: 29, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 251, column: 15)
!2500 = !DILocation(line: 252, column: 34, scope: !2499)
!2501 = !DILocation(line: 252, column: 3, scope: !2499)
!2502 = !DILocation(line: 253, column: 3, scope: !2499)
!2503 = !DILocation(line: 256, column: 16, scope: !2168)
!2504 = !DILocation(line: 256, column: 2, scope: !2168)
!2505 = !DILocation(line: 256, column: 10, scope: !2168)
!2506 = !DILocation(line: 256, column: 14, scope: !2168)
!2507 = !DILocation(line: 257, column: 2, scope: !2168)
!2508 = !DILocation(line: 257, column: 2, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 257, column: 2)
!2510 = !DILocation(line: 259, column: 2, scope: !2168)
!2511 = !DILocation(line: 259, column: 10, scope: !2168)
!2512 = !DILocation(line: 259, column: 16, scope: !2168)
!2513 = !DILocation(line: 259, column: 24, scope: !2168)
!2514 = !DILocation(line: 260, column: 25, scope: !2168)
!2515 = !DILocation(line: 260, column: 2, scope: !2168)
!2516 = !DILocation(line: 260, column: 10, scope: !2168)
!2517 = !DILocation(line: 260, column: 16, scope: !2168)
!2518 = !DILocation(line: 260, column: 23, scope: !2168)
!2519 = !DILocation(line: 261, column: 2, scope: !2168)
!2520 = !DILocation(line: 261, column: 10, scope: !2168)
!2521 = !DILocation(line: 261, column: 16, scope: !2168)
!2522 = !DILocation(line: 261, column: 21, scope: !2168)
!2523 = !DILocation(line: 262, column: 2, scope: !2168)
!2524 = !DILocation(line: 262, column: 10, scope: !2168)
!2525 = !DILocation(line: 262, column: 16, scope: !2168)
!2526 = !DILocation(line: 262, column: 23, scope: !2168)
!2527 = !DILocation(line: 263, column: 16, scope: !2168)
!2528 = !DILocation(line: 263, column: 24, scope: !2168)
!2529 = !DILocation(line: 263, column: 40, scope: !2168)
!2530 = !DILocation(line: 263, column: 45, scope: !2168)
!2531 = !DILocation(line: 263, column: 2, scope: !2168)
!2532 = !DILocation(line: 265, column: 25, scope: !2168)
!2533 = !DILocation(line: 265, column: 33, scope: !2168)
!2534 = !DILocation(line: 265, column: 8, scope: !2168)
!2535 = !DILocation(line: 265, column: 6, scope: !2168)
!2536 = !DILocation(line: 266, column: 6, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 266, column: 6)
!2538 = !DILocation(line: 266, column: 6, scope: !2168)
!2539 = !DILocation(line: 267, column: 29, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 266, column: 11)
!2541 = !DILocation(line: 267, column: 34, scope: !2540)
!2542 = !DILocation(line: 267, column: 3, scope: !2540)
!2543 = !DILocation(line: 268, column: 15, scope: !2540)
!2544 = !DILocation(line: 268, column: 23, scope: !2540)
!2545 = !DILocation(line: 268, column: 3, scope: !2540)
!2546 = !DILocation(line: 269, column: 10, scope: !2540)
!2547 = !DILocation(line: 270, column: 10, scope: !2540)
!2548 = !DILocation(line: 270, column: 3, scope: !2540)
!2549 = !DILocation(line: 272, column: 54, scope: !2168)
!2550 = !DILocation(line: 272, column: 59, scope: !2168)
!2551 = !DILocation(line: 272, column: 16, scope: !2168)
!2552 = !DILocation(line: 272, column: 2, scope: !2168)
!2553 = !DILocation(line: 272, column: 14, scope: !2168)
!2554 = !DILocation(line: 273, column: 2, scope: !2168)
!2555 = !DILocation(line: 273, column: 14, scope: !2168)
!2556 = !DILocation(line: 274, column: 22, scope: !2168)
!2557 = !DILocation(line: 274, column: 30, scope: !2168)
!2558 = !DILocation(line: 274, column: 49, scope: !2168)
!2559 = !DILocation(line: 274, column: 2, scope: !2168)
!2560 = !DILocation(line: 275, column: 8, scope: !2168)
!2561 = !DILocation(line: 275, column: 2, scope: !2168)
!2562 = !DILocation(line: 277, column: 2, scope: !2168)
!2563 = !DILocation(line: 278, column: 1, scope: !2168)
!2564 = distinct !DISubprogram(name: "test_and_set_bit", scope: !2565, file: !2565, line: 68, type: !2566, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2565 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!985, !83, !2568}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2569 = !DILocalVariable(name: "nr", arg: 1, scope: !2570, file: !2302, line: 136, type: !83)
!2570 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !2302, file: !2302, line: 136, type: !2566, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2571 = !DILocation(line: 136, column: 28, scope: !2570, inlinedAt: !2572)
!2572 = distinct !DILocation(line: 71, column: 9, scope: !2564)
!2573 = !DILocalVariable(name: "addr", arg: 2, scope: !2570, file: !2302, line: 136, type: !2568)
!2574 = !DILocation(line: 136, column: 56, scope: !2570, inlinedAt: !2572)
!2575 = !DILocalVariable(name: "c", scope: !2576, file: !2302, line: 138, type: !985)
!2576 = distinct !DILexicalBlock(scope: !2570, file: !2302, line: 138, column: 9)
!2577 = !DILocation(line: 138, column: 9, scope: !2576, inlinedAt: !2572)
!2578 = !DILocalVariable(name: "v", arg: 1, scope: !2579, file: !2317, line: 99, type: !2320)
!2579 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !2317, file: !2317, line: 99, type: !2318, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2580 = !DILocation(line: 99, column: 79, scope: !2579, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 70, column: 2, scope: !2564)
!2582 = !DILocalVariable(name: "size", arg: 2, scope: !2579, file: !2317, line: 99, type: !206)
!2583 = !DILocation(line: 99, column: 89, scope: !2579, inlinedAt: !2581)
!2584 = !DILocalVariable(name: "nr", arg: 1, scope: !2564, file: !2565, line: 68, type: !83)
!2585 = !DILocation(line: 68, column: 42, scope: !2564)
!2586 = !DILocalVariable(name: "addr", arg: 2, scope: !2564, file: !2565, line: 68, type: !2568)
!2587 = !DILocation(line: 68, column: 70, scope: !2564)
!2588 = !DILocation(line: 70, column: 31, scope: !2564)
!2589 = !DILocation(line: 70, column: 38, scope: !2564)
!2590 = !DILocation(line: 70, column: 36, scope: !2564)
!2591 = !DILocation(line: 101, column: 20, scope: !2579, inlinedAt: !2581)
!2592 = !DILocation(line: 101, column: 23, scope: !2579, inlinedAt: !2581)
!2593 = !DILocation(line: 101, column: 2, scope: !2579, inlinedAt: !2581)
!2594 = !DILocation(line: 102, column: 2, scope: !2579, inlinedAt: !2581)
!2595 = !DILocation(line: 71, column: 31, scope: !2564)
!2596 = !DILocation(line: 71, column: 35, scope: !2564)
!2597 = !{i32 -2147060922, i32 -2147060826}
!2598 = !DILocation(line: 71, column: 2, scope: !2564)
!2599 = distinct !DISubprogram(name: "kzalloc", scope: !76, file: !76, line: 662, type: !2600, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!86, !206, !84}
!2602 = !DILocalVariable(name: "s", arg: 1, scope: !2603, file: !76, line: 445, type: !1035)
!2603 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !76, file: !76, line: 445, type: !2604, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!86, !1035, !84, !206}
!2606 = !DILocation(line: 445, column: 72, scope: !2603, inlinedAt: !2607)
!2607 = distinct !DILocation(line: 552, column: 10, scope: !2608, inlinedAt: !2611)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !76, line: 540, column: 34)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !76, line: 540, column: 6)
!2610 = distinct !DISubprogram(name: "kmalloc", scope: !76, file: !76, line: 538, type: !2600, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2611 = distinct !DILocation(line: 664, column: 9, scope: !2599)
!2612 = !DILocalVariable(name: "flags", arg: 2, scope: !2603, file: !76, line: 446, type: !84)
!2613 = !DILocation(line: 446, column: 9, scope: !2603, inlinedAt: !2607)
!2614 = !DILocalVariable(name: "size", arg: 3, scope: !2603, file: !76, line: 446, type: !206)
!2615 = !DILocation(line: 446, column: 23, scope: !2603, inlinedAt: !2607)
!2616 = !DILocalVariable(name: "ret", scope: !2603, file: !76, line: 448, type: !86)
!2617 = !DILocation(line: 448, column: 8, scope: !2603, inlinedAt: !2607)
!2618 = !DILocalVariable(name: "flags", arg: 1, scope: !2619, file: !76, line: 318, type: !84)
!2619 = distinct !DISubprogram(name: "kmalloc_type", scope: !76, file: !76, line: 318, type: !2620, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!75, !84}
!2622 = !DILocation(line: 318, column: 67, scope: !2619, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 553, column: 20, scope: !2608, inlinedAt: !2611)
!2624 = !DILocalVariable(name: "size", arg: 1, scope: !2625, file: !76, line: 346, type: !206)
!2625 = distinct !DISubprogram(name: "kmalloc_index", scope: !76, file: !76, line: 346, type: !2626, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!7, !206}
!2628 = !DILocation(line: 346, column: 58, scope: !2625, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 547, column: 11, scope: !2608, inlinedAt: !2611)
!2630 = !DILocalVariable(name: "size", arg: 1, scope: !2631, file: !76, line: 472, type: !206)
!2631 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !76, file: !76, line: 472, type: !2632, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!86, !206, !84, !7}
!2634 = !DILocation(line: 472, column: 28, scope: !2631, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 481, column: 9, scope: !2636, inlinedAt: !2637)
!2636 = distinct !DISubprogram(name: "kmalloc_large", scope: !76, file: !76, line: 478, type: !2600, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2637 = distinct !DILocation(line: 545, column: 11, scope: !2638, inlinedAt: !2611)
!2638 = distinct !DILexicalBlock(scope: !2608, file: !76, line: 544, column: 7)
!2639 = !DILocalVariable(name: "flags", arg: 2, scope: !2631, file: !76, line: 472, type: !84)
!2640 = !DILocation(line: 472, column: 40, scope: !2631, inlinedAt: !2635)
!2641 = !DILocalVariable(name: "order", arg: 3, scope: !2631, file: !76, line: 472, type: !7)
!2642 = !DILocation(line: 472, column: 60, scope: !2631, inlinedAt: !2635)
!2643 = !DILocalVariable(name: "size", arg: 1, scope: !2636, file: !76, line: 478, type: !206)
!2644 = !DILocation(line: 478, column: 51, scope: !2636, inlinedAt: !2637)
!2645 = !DILocalVariable(name: "flags", arg: 2, scope: !2636, file: !76, line: 478, type: !84)
!2646 = !DILocation(line: 478, column: 63, scope: !2636, inlinedAt: !2637)
!2647 = !DILocalVariable(name: "order", scope: !2636, file: !76, line: 480, type: !7)
!2648 = !DILocation(line: 480, column: 15, scope: !2636, inlinedAt: !2637)
!2649 = !DILocalVariable(name: "size", arg: 1, scope: !2610, file: !76, line: 538, type: !206)
!2650 = !DILocation(line: 538, column: 45, scope: !2610, inlinedAt: !2611)
!2651 = !DILocalVariable(name: "flags", arg: 2, scope: !2610, file: !76, line: 538, type: !84)
!2652 = !DILocation(line: 538, column: 57, scope: !2610, inlinedAt: !2611)
!2653 = !DILocalVariable(name: "index", scope: !2608, file: !76, line: 542, type: !7)
!2654 = !DILocation(line: 542, column: 16, scope: !2608, inlinedAt: !2611)
!2655 = !DILocalVariable(name: "size", arg: 1, scope: !2599, file: !76, line: 662, type: !206)
!2656 = !DILocation(line: 662, column: 36, scope: !2599)
!2657 = !DILocalVariable(name: "flags", arg: 2, scope: !2599, file: !76, line: 662, type: !84)
!2658 = !DILocation(line: 662, column: 48, scope: !2599)
!2659 = !DILocation(line: 664, column: 17, scope: !2599)
!2660 = !DILocation(line: 664, column: 23, scope: !2599)
!2661 = !DILocation(line: 664, column: 29, scope: !2599)
!2662 = !DILocation(line: 540, column: 27, scope: !2609, inlinedAt: !2611)
!2663 = !DILocation(line: 540, column: 6, scope: !2609, inlinedAt: !2611)
!2664 = !DILocation(line: 540, column: 6, scope: !2610, inlinedAt: !2611)
!2665 = !DILocation(line: 544, column: 7, scope: !2638, inlinedAt: !2611)
!2666 = !DILocation(line: 544, column: 12, scope: !2638, inlinedAt: !2611)
!2667 = !DILocation(line: 544, column: 7, scope: !2608, inlinedAt: !2611)
!2668 = !DILocation(line: 545, column: 25, scope: !2638, inlinedAt: !2611)
!2669 = !DILocation(line: 545, column: 31, scope: !2638, inlinedAt: !2611)
!2670 = !DILocation(line: 480, column: 33, scope: !2636, inlinedAt: !2637)
!2671 = !DILocation(line: 480, column: 23, scope: !2636, inlinedAt: !2637)
!2672 = !DILocation(line: 481, column: 29, scope: !2636, inlinedAt: !2637)
!2673 = !DILocation(line: 481, column: 35, scope: !2636, inlinedAt: !2637)
!2674 = !DILocation(line: 481, column: 42, scope: !2636, inlinedAt: !2637)
!2675 = !DILocation(line: 474, column: 23, scope: !2631, inlinedAt: !2635)
!2676 = !DILocation(line: 474, column: 29, scope: !2631, inlinedAt: !2635)
!2677 = !DILocation(line: 474, column: 36, scope: !2631, inlinedAt: !2635)
!2678 = !DILocation(line: 474, column: 9, scope: !2631, inlinedAt: !2635)
!2679 = !DILocation(line: 545, column: 4, scope: !2638, inlinedAt: !2611)
!2680 = !DILocation(line: 547, column: 25, scope: !2608, inlinedAt: !2611)
!2681 = !DILocation(line: 348, column: 7, scope: !2682, inlinedAt: !2629)
!2682 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 348, column: 6)
!2683 = !DILocation(line: 348, column: 6, scope: !2625, inlinedAt: !2629)
!2684 = !DILocation(line: 349, column: 3, scope: !2682, inlinedAt: !2629)
!2685 = !DILocation(line: 351, column: 6, scope: !2686, inlinedAt: !2629)
!2686 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 351, column: 6)
!2687 = !DILocation(line: 351, column: 11, scope: !2686, inlinedAt: !2629)
!2688 = !DILocation(line: 351, column: 6, scope: !2625, inlinedAt: !2629)
!2689 = !DILocation(line: 352, column: 3, scope: !2686, inlinedAt: !2629)
!2690 = !DILocation(line: 354, column: 32, scope: !2691, inlinedAt: !2629)
!2691 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 354, column: 6)
!2692 = !DILocation(line: 354, column: 37, scope: !2691, inlinedAt: !2629)
!2693 = !DILocation(line: 354, column: 42, scope: !2691, inlinedAt: !2629)
!2694 = !DILocation(line: 354, column: 45, scope: !2691, inlinedAt: !2629)
!2695 = !DILocation(line: 354, column: 50, scope: !2691, inlinedAt: !2629)
!2696 = !DILocation(line: 354, column: 6, scope: !2625, inlinedAt: !2629)
!2697 = !DILocation(line: 355, column: 3, scope: !2691, inlinedAt: !2629)
!2698 = !DILocation(line: 356, column: 32, scope: !2699, inlinedAt: !2629)
!2699 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 356, column: 6)
!2700 = !DILocation(line: 356, column: 37, scope: !2699, inlinedAt: !2629)
!2701 = !DILocation(line: 356, column: 43, scope: !2699, inlinedAt: !2629)
!2702 = !DILocation(line: 356, column: 46, scope: !2699, inlinedAt: !2629)
!2703 = !DILocation(line: 356, column: 51, scope: !2699, inlinedAt: !2629)
!2704 = !DILocation(line: 356, column: 6, scope: !2625, inlinedAt: !2629)
!2705 = !DILocation(line: 357, column: 3, scope: !2699, inlinedAt: !2629)
!2706 = !DILocation(line: 358, column: 6, scope: !2707, inlinedAt: !2629)
!2707 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 358, column: 6)
!2708 = !DILocation(line: 358, column: 11, scope: !2707, inlinedAt: !2629)
!2709 = !DILocation(line: 358, column: 6, scope: !2625, inlinedAt: !2629)
!2710 = !DILocation(line: 358, column: 26, scope: !2707, inlinedAt: !2629)
!2711 = !DILocation(line: 359, column: 6, scope: !2712, inlinedAt: !2629)
!2712 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 359, column: 6)
!2713 = !DILocation(line: 359, column: 11, scope: !2712, inlinedAt: !2629)
!2714 = !DILocation(line: 359, column: 6, scope: !2625, inlinedAt: !2629)
!2715 = !DILocation(line: 359, column: 26, scope: !2712, inlinedAt: !2629)
!2716 = !DILocation(line: 360, column: 6, scope: !2717, inlinedAt: !2629)
!2717 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 360, column: 6)
!2718 = !DILocation(line: 360, column: 11, scope: !2717, inlinedAt: !2629)
!2719 = !DILocation(line: 360, column: 6, scope: !2625, inlinedAt: !2629)
!2720 = !DILocation(line: 360, column: 26, scope: !2717, inlinedAt: !2629)
!2721 = !DILocation(line: 361, column: 6, scope: !2722, inlinedAt: !2629)
!2722 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 361, column: 6)
!2723 = !DILocation(line: 361, column: 11, scope: !2722, inlinedAt: !2629)
!2724 = !DILocation(line: 361, column: 6, scope: !2625, inlinedAt: !2629)
!2725 = !DILocation(line: 361, column: 26, scope: !2722, inlinedAt: !2629)
!2726 = !DILocation(line: 362, column: 6, scope: !2727, inlinedAt: !2629)
!2727 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 362, column: 6)
!2728 = !DILocation(line: 362, column: 11, scope: !2727, inlinedAt: !2629)
!2729 = !DILocation(line: 362, column: 6, scope: !2625, inlinedAt: !2629)
!2730 = !DILocation(line: 362, column: 26, scope: !2727, inlinedAt: !2629)
!2731 = !DILocation(line: 363, column: 6, scope: !2732, inlinedAt: !2629)
!2732 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 363, column: 6)
!2733 = !DILocation(line: 363, column: 11, scope: !2732, inlinedAt: !2629)
!2734 = !DILocation(line: 363, column: 6, scope: !2625, inlinedAt: !2629)
!2735 = !DILocation(line: 363, column: 26, scope: !2732, inlinedAt: !2629)
!2736 = !DILocation(line: 364, column: 6, scope: !2737, inlinedAt: !2629)
!2737 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 364, column: 6)
!2738 = !DILocation(line: 364, column: 11, scope: !2737, inlinedAt: !2629)
!2739 = !DILocation(line: 364, column: 6, scope: !2625, inlinedAt: !2629)
!2740 = !DILocation(line: 364, column: 26, scope: !2737, inlinedAt: !2629)
!2741 = !DILocation(line: 365, column: 6, scope: !2742, inlinedAt: !2629)
!2742 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 365, column: 6)
!2743 = !DILocation(line: 365, column: 11, scope: !2742, inlinedAt: !2629)
!2744 = !DILocation(line: 365, column: 6, scope: !2625, inlinedAt: !2629)
!2745 = !DILocation(line: 365, column: 26, scope: !2742, inlinedAt: !2629)
!2746 = !DILocation(line: 366, column: 6, scope: !2747, inlinedAt: !2629)
!2747 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 366, column: 6)
!2748 = !DILocation(line: 366, column: 11, scope: !2747, inlinedAt: !2629)
!2749 = !DILocation(line: 366, column: 6, scope: !2625, inlinedAt: !2629)
!2750 = !DILocation(line: 366, column: 26, scope: !2747, inlinedAt: !2629)
!2751 = !DILocation(line: 367, column: 6, scope: !2752, inlinedAt: !2629)
!2752 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 367, column: 6)
!2753 = !DILocation(line: 367, column: 11, scope: !2752, inlinedAt: !2629)
!2754 = !DILocation(line: 367, column: 6, scope: !2625, inlinedAt: !2629)
!2755 = !DILocation(line: 367, column: 26, scope: !2752, inlinedAt: !2629)
!2756 = !DILocation(line: 368, column: 6, scope: !2757, inlinedAt: !2629)
!2757 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 368, column: 6)
!2758 = !DILocation(line: 368, column: 11, scope: !2757, inlinedAt: !2629)
!2759 = !DILocation(line: 368, column: 6, scope: !2625, inlinedAt: !2629)
!2760 = !DILocation(line: 368, column: 26, scope: !2757, inlinedAt: !2629)
!2761 = !DILocation(line: 369, column: 6, scope: !2762, inlinedAt: !2629)
!2762 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 369, column: 6)
!2763 = !DILocation(line: 369, column: 11, scope: !2762, inlinedAt: !2629)
!2764 = !DILocation(line: 369, column: 6, scope: !2625, inlinedAt: !2629)
!2765 = !DILocation(line: 369, column: 26, scope: !2762, inlinedAt: !2629)
!2766 = !DILocation(line: 370, column: 6, scope: !2767, inlinedAt: !2629)
!2767 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 370, column: 6)
!2768 = !DILocation(line: 370, column: 11, scope: !2767, inlinedAt: !2629)
!2769 = !DILocation(line: 370, column: 6, scope: !2625, inlinedAt: !2629)
!2770 = !DILocation(line: 370, column: 26, scope: !2767, inlinedAt: !2629)
!2771 = !DILocation(line: 371, column: 6, scope: !2772, inlinedAt: !2629)
!2772 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 371, column: 6)
!2773 = !DILocation(line: 371, column: 11, scope: !2772, inlinedAt: !2629)
!2774 = !DILocation(line: 371, column: 6, scope: !2625, inlinedAt: !2629)
!2775 = !DILocation(line: 371, column: 26, scope: !2772, inlinedAt: !2629)
!2776 = !DILocation(line: 372, column: 6, scope: !2777, inlinedAt: !2629)
!2777 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 372, column: 6)
!2778 = !DILocation(line: 372, column: 11, scope: !2777, inlinedAt: !2629)
!2779 = !DILocation(line: 372, column: 6, scope: !2625, inlinedAt: !2629)
!2780 = !DILocation(line: 372, column: 26, scope: !2777, inlinedAt: !2629)
!2781 = !DILocation(line: 373, column: 6, scope: !2782, inlinedAt: !2629)
!2782 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 373, column: 6)
!2783 = !DILocation(line: 373, column: 11, scope: !2782, inlinedAt: !2629)
!2784 = !DILocation(line: 373, column: 6, scope: !2625, inlinedAt: !2629)
!2785 = !DILocation(line: 373, column: 26, scope: !2782, inlinedAt: !2629)
!2786 = !DILocation(line: 374, column: 6, scope: !2787, inlinedAt: !2629)
!2787 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 374, column: 6)
!2788 = !DILocation(line: 374, column: 11, scope: !2787, inlinedAt: !2629)
!2789 = !DILocation(line: 374, column: 6, scope: !2625, inlinedAt: !2629)
!2790 = !DILocation(line: 374, column: 26, scope: !2787, inlinedAt: !2629)
!2791 = !DILocation(line: 375, column: 6, scope: !2792, inlinedAt: !2629)
!2792 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 375, column: 6)
!2793 = !DILocation(line: 375, column: 11, scope: !2792, inlinedAt: !2629)
!2794 = !DILocation(line: 375, column: 6, scope: !2625, inlinedAt: !2629)
!2795 = !DILocation(line: 375, column: 27, scope: !2792, inlinedAt: !2629)
!2796 = !DILocation(line: 376, column: 6, scope: !2797, inlinedAt: !2629)
!2797 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 376, column: 6)
!2798 = !DILocation(line: 376, column: 11, scope: !2797, inlinedAt: !2629)
!2799 = !DILocation(line: 376, column: 6, scope: !2625, inlinedAt: !2629)
!2800 = !DILocation(line: 376, column: 32, scope: !2797, inlinedAt: !2629)
!2801 = !DILocation(line: 377, column: 6, scope: !2802, inlinedAt: !2629)
!2802 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 377, column: 6)
!2803 = !DILocation(line: 377, column: 11, scope: !2802, inlinedAt: !2629)
!2804 = !DILocation(line: 377, column: 6, scope: !2625, inlinedAt: !2629)
!2805 = !DILocation(line: 377, column: 32, scope: !2802, inlinedAt: !2629)
!2806 = !DILocation(line: 378, column: 6, scope: !2807, inlinedAt: !2629)
!2807 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 378, column: 6)
!2808 = !DILocation(line: 378, column: 11, scope: !2807, inlinedAt: !2629)
!2809 = !DILocation(line: 378, column: 6, scope: !2625, inlinedAt: !2629)
!2810 = !DILocation(line: 378, column: 32, scope: !2807, inlinedAt: !2629)
!2811 = !DILocation(line: 379, column: 6, scope: !2812, inlinedAt: !2629)
!2812 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 379, column: 6)
!2813 = !DILocation(line: 379, column: 11, scope: !2812, inlinedAt: !2629)
!2814 = !DILocation(line: 379, column: 6, scope: !2625, inlinedAt: !2629)
!2815 = !DILocation(line: 379, column: 33, scope: !2812, inlinedAt: !2629)
!2816 = !DILocation(line: 380, column: 6, scope: !2817, inlinedAt: !2629)
!2817 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 380, column: 6)
!2818 = !DILocation(line: 380, column: 11, scope: !2817, inlinedAt: !2629)
!2819 = !DILocation(line: 380, column: 6, scope: !2625, inlinedAt: !2629)
!2820 = !DILocation(line: 380, column: 33, scope: !2817, inlinedAt: !2629)
!2821 = !DILocation(line: 381, column: 6, scope: !2822, inlinedAt: !2629)
!2822 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 381, column: 6)
!2823 = !DILocation(line: 381, column: 11, scope: !2822, inlinedAt: !2629)
!2824 = !DILocation(line: 381, column: 6, scope: !2625, inlinedAt: !2629)
!2825 = !DILocation(line: 381, column: 33, scope: !2822, inlinedAt: !2629)
!2826 = !DILocation(line: 382, column: 2, scope: !2827, inlinedAt: !2629)
!2827 = distinct !DILexicalBlock(scope: !2828, file: !76, line: 382, column: 2)
!2828 = distinct !DILexicalBlock(scope: !2625, file: !76, line: 382, column: 2)
!2829 = !{i32 -2143727086, i32 -2143727057, i32 -2143727011, i32 -2143726953, i32 -2143726899, i32 -2143726845, i32 -2143726790, i32 -2143726759}
!2830 = !DILocation(line: 382, column: 2, scope: !2831, inlinedAt: !2629)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !76, line: 382, column: 2)
!2832 = distinct !DILexicalBlock(scope: !2828, file: !76, line: 382, column: 2)
!2833 = !{i32 -2143726316, i32 -2143726309, i32 -2143726255, i32 -2143726224, i32 -2143726194}
!2834 = !DILocation(line: 382, column: 2, scope: !2832, inlinedAt: !2629)
!2835 = !DILocation(line: 386, column: 1, scope: !2625, inlinedAt: !2629)
!2836 = !DILocation(line: 547, column: 9, scope: !2608, inlinedAt: !2611)
!2837 = !DILocation(line: 549, column: 8, scope: !2838, inlinedAt: !2611)
!2838 = distinct !DILexicalBlock(scope: !2608, file: !76, line: 549, column: 7)
!2839 = !DILocation(line: 549, column: 7, scope: !2608, inlinedAt: !2611)
!2840 = !DILocation(line: 550, column: 4, scope: !2838, inlinedAt: !2611)
!2841 = !DILocation(line: 553, column: 33, scope: !2608, inlinedAt: !2611)
!2842 = !DILocation(line: 325, column: 6, scope: !2843, inlinedAt: !2623)
!2843 = distinct !DILexicalBlock(scope: !2619, file: !76, line: 325, column: 6)
!2844 = !DILocation(line: 325, column: 6, scope: !2619, inlinedAt: !2623)
!2845 = !DILocation(line: 326, column: 3, scope: !2843, inlinedAt: !2623)
!2846 = !DILocation(line: 332, column: 9, scope: !2619, inlinedAt: !2623)
!2847 = !DILocation(line: 332, column: 15, scope: !2619, inlinedAt: !2623)
!2848 = !DILocation(line: 332, column: 2, scope: !2619, inlinedAt: !2623)
!2849 = !DILocation(line: 336, column: 1, scope: !2619, inlinedAt: !2623)
!2850 = !DILocation(line: 553, column: 5, scope: !2608, inlinedAt: !2611)
!2851 = !DILocation(line: 553, column: 41, scope: !2608, inlinedAt: !2611)
!2852 = !DILocation(line: 554, column: 5, scope: !2608, inlinedAt: !2611)
!2853 = !DILocation(line: 554, column: 12, scope: !2608, inlinedAt: !2611)
!2854 = !DILocation(line: 448, column: 31, scope: !2603, inlinedAt: !2607)
!2855 = !DILocation(line: 448, column: 34, scope: !2603, inlinedAt: !2607)
!2856 = !DILocation(line: 448, column: 14, scope: !2603, inlinedAt: !2607)
!2857 = !DILocation(line: 450, column: 22, scope: !2603, inlinedAt: !2607)
!2858 = !DILocation(line: 450, column: 25, scope: !2603, inlinedAt: !2607)
!2859 = !DILocation(line: 450, column: 30, scope: !2603, inlinedAt: !2607)
!2860 = !DILocation(line: 450, column: 36, scope: !2603, inlinedAt: !2607)
!2861 = !DILocation(line: 450, column: 8, scope: !2603, inlinedAt: !2607)
!2862 = !DILocation(line: 450, column: 6, scope: !2603, inlinedAt: !2607)
!2863 = !DILocation(line: 451, column: 9, scope: !2603, inlinedAt: !2607)
!2864 = !DILocation(line: 552, column: 3, scope: !2608, inlinedAt: !2611)
!2865 = !DILocation(line: 557, column: 19, scope: !2610, inlinedAt: !2611)
!2866 = !DILocation(line: 557, column: 25, scope: !2610, inlinedAt: !2611)
!2867 = !DILocation(line: 557, column: 9, scope: !2610, inlinedAt: !2611)
!2868 = !DILocation(line: 557, column: 2, scope: !2610, inlinedAt: !2611)
!2869 = !DILocation(line: 558, column: 1, scope: !2610, inlinedAt: !2611)
!2870 = !DILocation(line: 664, column: 2, scope: !2599)
!2871 = distinct !DISubprogram(name: "clear_bit", scope: !2565, file: !2565, line: 39, type: !2872, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{null, !83, !2568}
!2874 = !DILocalVariable(name: "nr", arg: 1, scope: !2875, file: !2302, line: 72, type: !83)
!2875 = distinct !DISubprogram(name: "arch_clear_bit", scope: !2302, file: !2302, line: 72, type: !2872, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2876 = !DILocation(line: 72, column: 21, scope: !2875, inlinedAt: !2877)
!2877 = distinct !DILocation(line: 42, column: 2, scope: !2871)
!2878 = !DILocalVariable(name: "addr", arg: 2, scope: !2875, file: !2302, line: 72, type: !2568)
!2879 = !DILocation(line: 72, column: 49, scope: !2875, inlinedAt: !2877)
!2880 = !DILocalVariable(name: "v", arg: 1, scope: !2881, file: !2317, line: 84, type: !2320)
!2881 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !2317, file: !2317, line: 84, type: !2318, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2882 = !DILocation(line: 84, column: 74, scope: !2881, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 41, column: 2, scope: !2871)
!2884 = !DILocalVariable(name: "size", arg: 2, scope: !2881, file: !2317, line: 84, type: !206)
!2885 = !DILocation(line: 84, column: 84, scope: !2881, inlinedAt: !2883)
!2886 = !DILocalVariable(name: "nr", arg: 1, scope: !2871, file: !2565, line: 39, type: !83)
!2887 = !DILocation(line: 39, column: 35, scope: !2871)
!2888 = !DILocalVariable(name: "addr", arg: 2, scope: !2871, file: !2565, line: 39, type: !2568)
!2889 = !DILocation(line: 39, column: 63, scope: !2871)
!2890 = !DILocation(line: 41, column: 26, scope: !2871)
!2891 = !DILocation(line: 41, column: 33, scope: !2871)
!2892 = !DILocation(line: 41, column: 31, scope: !2871)
!2893 = !DILocation(line: 86, column: 20, scope: !2881, inlinedAt: !2883)
!2894 = !DILocation(line: 86, column: 23, scope: !2881, inlinedAt: !2883)
!2895 = !DILocation(line: 86, column: 2, scope: !2881, inlinedAt: !2883)
!2896 = !DILocation(line: 87, column: 2, scope: !2881, inlinedAt: !2883)
!2897 = !DILocation(line: 42, column: 17, scope: !2871)
!2898 = !DILocation(line: 42, column: 21, scope: !2871)
!2899 = !DILocation(line: 74, column: 27, scope: !2900, inlinedAt: !2877)
!2900 = distinct !DILexicalBlock(scope: !2875, file: !2302, line: 74, column: 6)
!2901 = !DILocation(line: 74, column: 6, scope: !2900, inlinedAt: !2877)
!2902 = !DILocation(line: 74, column: 6, scope: !2875, inlinedAt: !2877)
!2903 = !DILocation(line: 76, column: 6, scope: !2904, inlinedAt: !2877)
!2904 = distinct !DILexicalBlock(scope: !2900, file: !2302, line: 74, column: 32)
!2905 = !DILocation(line: 77, column: 13, scope: !2904, inlinedAt: !2877)
!2906 = !DILocation(line: 77, column: 12, scope: !2904, inlinedAt: !2877)
!2907 = !DILocation(line: 75, column: 3, scope: !2904, inlinedAt: !2877)
!2908 = !{i32 -2147064454}
!2909 = !DILocation(line: 78, column: 2, scope: !2904, inlinedAt: !2877)
!2910 = !DILocation(line: 80, column: 8, scope: !2911, inlinedAt: !2877)
!2911 = distinct !DILexicalBlock(scope: !2900, file: !2302, line: 78, column: 9)
!2912 = !DILocation(line: 80, column: 32, scope: !2911, inlinedAt: !2877)
!2913 = !DILocation(line: 79, column: 3, scope: !2911, inlinedAt: !2877)
!2914 = !{i32 -2147064322}
!2915 = !DILocation(line: 43, column: 1, scope: !2871)
!2916 = distinct !DISubprogram(name: "pwm_export_release", scope: !3, file: !3, line: 234, type: !1596, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2917 = !DILocalVariable(name: "child", arg: 1, scope: !2916, file: !3, line: 234, type: !1573)
!2918 = !DILocation(line: 234, column: 47, scope: !2916)
!2919 = !DILocalVariable(name: "export", scope: !2916, file: !3, line: 236, type: !92)
!2920 = !DILocation(line: 236, column: 21, scope: !2916)
!2921 = !DILocation(line: 236, column: 50, scope: !2916)
!2922 = !DILocation(line: 236, column: 30, scope: !2916)
!2923 = !DILocation(line: 238, column: 8, scope: !2916)
!2924 = !DILocation(line: 238, column: 2, scope: !2916)
!2925 = !DILocation(line: 239, column: 1, scope: !2916)
!2926 = distinct !DISubprogram(name: "kasan_check_write", scope: !2927, file: !2927, line: 38, type: !2928, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2927 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!985, !2320, !7}
!2930 = !DILocalVariable(name: "p", arg: 1, scope: !2926, file: !2927, line: 38, type: !2320)
!2931 = !DILocation(line: 38, column: 59, scope: !2926)
!2932 = !DILocalVariable(name: "size", arg: 2, scope: !2926, file: !2927, line: 38, type: !7)
!2933 = !DILocation(line: 38, column: 75, scope: !2926)
!2934 = !DILocation(line: 40, column: 2, scope: !2926)
!2935 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2936, file: !2936, line: 178, type: !2937, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2936 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!2937 = !DISubroutineType(types: !2938)
!2938 = !{null, !2320, !206, !144}
!2939 = !DILocalVariable(name: "ptr", arg: 1, scope: !2935, file: !2936, line: 178, type: !2320)
!2940 = !DILocation(line: 178, column: 60, scope: !2935)
!2941 = !DILocalVariable(name: "size", arg: 2, scope: !2935, file: !2936, line: 178, type: !206)
!2942 = !DILocation(line: 178, column: 72, scope: !2935)
!2943 = !DILocalVariable(name: "type", arg: 3, scope: !2935, file: !2936, line: 179, type: !144)
!2944 = !DILocation(line: 179, column: 15, scope: !2935)
!2945 = !DILocation(line: 179, column: 23, scope: !2935)
!2946 = distinct !DISubprogram(name: "get_order", scope: !2947, file: !2947, line: 29, type: !2948, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2947 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!144, !209}
!2950 = !DILocalVariable(name: "x", arg: 1, scope: !2951, file: !2302, line: 366, type: !280)
!2951 = distinct !DISubprogram(name: "fls64", scope: !2302, file: !2302, line: 366, type: !2952, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!144, !280}
!2954 = !DILocation(line: 366, column: 40, scope: !2951, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 46, column: 9, scope: !2946)
!2956 = !DILocalVariable(name: "bitpos", scope: !2951, file: !2302, line: 368, type: !144)
!2957 = !DILocation(line: 368, column: 6, scope: !2951, inlinedAt: !2955)
!2958 = !DILocalVariable(name: "size", arg: 1, scope: !2946, file: !2947, line: 29, type: !209)
!2959 = !DILocation(line: 29, column: 63, scope: !2946)
!2960 = !DILocation(line: 31, column: 27, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2946, file: !2947, line: 31, column: 6)
!2962 = !DILocation(line: 31, column: 6, scope: !2961)
!2963 = !DILocation(line: 31, column: 6, scope: !2946)
!2964 = !DILocation(line: 32, column: 8, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !2947, line: 32, column: 7)
!2966 = distinct !DILexicalBlock(scope: !2961, file: !2947, line: 31, column: 34)
!2967 = !DILocation(line: 32, column: 7, scope: !2966)
!2968 = !DILocation(line: 33, column: 4, scope: !2965)
!2969 = !DILocation(line: 35, column: 7, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2966, file: !2947, line: 35, column: 7)
!2971 = !DILocation(line: 35, column: 12, scope: !2970)
!2972 = !DILocation(line: 35, column: 7, scope: !2966)
!2973 = !DILocation(line: 36, column: 4, scope: !2970)
!2974 = !DILocation(line: 38, column: 10, scope: !2966)
!2975 = !DILocation(line: 38, column: 28, scope: !2966)
!2976 = !DILocation(line: 38, column: 41, scope: !2966)
!2977 = !DILocation(line: 38, column: 3, scope: !2966)
!2978 = !DILocation(line: 41, column: 6, scope: !2946)
!2979 = !DILocation(line: 42, column: 7, scope: !2946)
!2980 = !DILocation(line: 46, column: 15, scope: !2946)
!2981 = !DILocation(line: 374, column: 2, scope: !2951, inlinedAt: !2955)
!2982 = !DILocation(line: 376, column: 14, scope: !2951, inlinedAt: !2955)
!2983 = !{i32 386813}
!2984 = !DILocation(line: 377, column: 9, scope: !2951, inlinedAt: !2955)
!2985 = !DILocation(line: 377, column: 16, scope: !2951, inlinedAt: !2955)
!2986 = !DILocation(line: 46, column: 2, scope: !2946)
!2987 = !DILocation(line: 48, column: 1, scope: !2946)
!2988 = distinct !DISubprogram(name: "__ilog2_u64", scope: !2989, file: !2989, line: 30, type: !2990, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2989 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!144, !278}
!2992 = !DILocation(line: 366, column: 40, scope: !2951, inlinedAt: !2993)
!2993 = distinct !DILocation(line: 32, column: 9, scope: !2988)
!2994 = !DILocation(line: 368, column: 6, scope: !2951, inlinedAt: !2993)
!2995 = !DILocalVariable(name: "n", arg: 1, scope: !2988, file: !2989, line: 30, type: !278)
!2996 = !DILocation(line: 30, column: 21, scope: !2988)
!2997 = !DILocation(line: 32, column: 15, scope: !2988)
!2998 = !DILocation(line: 374, column: 2, scope: !2951, inlinedAt: !2993)
!2999 = !DILocation(line: 376, column: 14, scope: !2951, inlinedAt: !2993)
!3000 = !DILocation(line: 377, column: 9, scope: !2951, inlinedAt: !2993)
!3001 = !DILocation(line: 377, column: 16, scope: !2951, inlinedAt: !2993)
!3002 = !DILocation(line: 32, column: 18, scope: !2988)
!3003 = !DILocation(line: 32, column: 2, scope: !2988)
!3004 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3005, file: !3005, line: 137, type: !3006, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3005 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!86, !1035, !1376, !206, !84}
!3008 = !DILocalVariable(name: "s", arg: 1, scope: !3004, file: !3005, line: 137, type: !1035)
!3009 = !DILocation(line: 137, column: 54, scope: !3004)
!3010 = !DILocalVariable(name: "object", arg: 2, scope: !3004, file: !3005, line: 137, type: !1376)
!3011 = !DILocation(line: 137, column: 69, scope: !3004)
!3012 = !DILocalVariable(name: "size", arg: 3, scope: !3004, file: !3005, line: 138, type: !206)
!3013 = !DILocation(line: 138, column: 12, scope: !3004)
!3014 = !DILocalVariable(name: "flags", arg: 4, scope: !3004, file: !3005, line: 138, type: !84)
!3015 = !DILocation(line: 138, column: 24, scope: !3004)
!3016 = !DILocation(line: 140, column: 17, scope: !3004)
!3017 = !DILocation(line: 140, column: 2, scope: !3004)
!3018 = distinct !DISubprogram(name: "child_to_pwm_export", scope: !3, file: !3, line: 24, type: !3019, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!92, !1573}
!3021 = !DILocalVariable(name: "child", arg: 1, scope: !3018, file: !3, line: 24, type: !1573)
!3022 = !DILocation(line: 24, column: 62, scope: !3018)
!3023 = !DILocalVariable(name: "__mptr", scope: !3024, file: !3, line: 26, type: !86)
!3024 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 26, column: 9)
!3025 = !DILocation(line: 26, column: 9, scope: !3024)
!3026 = !DILocation(line: 26, column: 9, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 26, column: 9)
!3028 = !DILocation(line: 26, column: 2, scope: !3018)
!3029 = distinct !DISubprogram(name: "period_show", scope: !3, file: !3, line: 36, type: !2159, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3030 = !DILocalVariable(name: "child", arg: 1, scope: !3029, file: !3, line: 36, type: !1573)
!3031 = !DILocation(line: 36, column: 43, scope: !3029)
!3032 = !DILocalVariable(name: "attr", arg: 2, scope: !3029, file: !3, line: 37, type: !2161)
!3033 = !DILocation(line: 37, column: 32, scope: !3029)
!3034 = !DILocalVariable(name: "buf", arg: 3, scope: !3029, file: !3, line: 38, type: !160)
!3035 = !DILocation(line: 38, column: 13, scope: !3029)
!3036 = !DILocalVariable(name: "pwm", scope: !3029, file: !3, line: 40, type: !3037)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2051)
!3039 = !DILocation(line: 40, column: 27, scope: !3029)
!3040 = !DILocation(line: 40, column: 53, scope: !3029)
!3041 = !DILocation(line: 40, column: 33, scope: !3029)
!3042 = !DILocalVariable(name: "state", scope: !3029, file: !3, line: 41, type: !2090)
!3043 = !DILocation(line: 41, column: 19, scope: !3029)
!3044 = !DILocation(line: 43, column: 16, scope: !3029)
!3045 = !DILocation(line: 43, column: 2, scope: !3029)
!3046 = !DILocation(line: 45, column: 17, scope: !3029)
!3047 = !DILocation(line: 45, column: 38, scope: !3029)
!3048 = !DILocation(line: 45, column: 9, scope: !3029)
!3049 = !DILocation(line: 45, column: 2, scope: !3029)
!3050 = distinct !DISubprogram(name: "period_store", scope: !3, file: !3, line: 48, type: !2164, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3051 = !DILocalVariable(name: "child", arg: 1, scope: !3050, file: !3, line: 48, type: !1573)
!3052 = !DILocation(line: 48, column: 44, scope: !3050)
!3053 = !DILocalVariable(name: "attr", arg: 2, scope: !3050, file: !3, line: 49, type: !2161)
!3054 = !DILocation(line: 49, column: 33, scope: !3050)
!3055 = !DILocalVariable(name: "buf", arg: 3, scope: !3050, file: !3, line: 50, type: !102)
!3056 = !DILocation(line: 50, column: 20, scope: !3050)
!3057 = !DILocalVariable(name: "size", arg: 4, scope: !3050, file: !3, line: 50, type: !206)
!3058 = !DILocation(line: 50, column: 32, scope: !3050)
!3059 = !DILocalVariable(name: "export", scope: !3050, file: !3, line: 52, type: !92)
!3060 = !DILocation(line: 52, column: 21, scope: !3050)
!3061 = !DILocation(line: 52, column: 50, scope: !3050)
!3062 = !DILocation(line: 52, column: 30, scope: !3050)
!3063 = !DILocalVariable(name: "pwm", scope: !3050, file: !3, line: 53, type: !2050)
!3064 = !DILocation(line: 53, column: 21, scope: !3050)
!3065 = !DILocation(line: 53, column: 27, scope: !3050)
!3066 = !DILocation(line: 53, column: 35, scope: !3050)
!3067 = !DILocalVariable(name: "state", scope: !3050, file: !3, line: 54, type: !2090)
!3068 = !DILocation(line: 54, column: 19, scope: !3050)
!3069 = !DILocalVariable(name: "val", scope: !3050, file: !3, line: 55, type: !278)
!3070 = !DILocation(line: 55, column: 6, scope: !3050)
!3071 = !DILocalVariable(name: "ret", scope: !3050, file: !3, line: 56, type: !144)
!3072 = !DILocation(line: 56, column: 6, scope: !3050)
!3073 = !DILocation(line: 58, column: 18, scope: !3050)
!3074 = !DILocation(line: 58, column: 8, scope: !3050)
!3075 = !DILocation(line: 58, column: 6, scope: !3050)
!3076 = !DILocation(line: 59, column: 6, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3050, file: !3, line: 59, column: 6)
!3078 = !DILocation(line: 59, column: 6, scope: !3050)
!3079 = !DILocation(line: 60, column: 10, scope: !3077)
!3080 = !DILocation(line: 60, column: 3, scope: !3077)
!3081 = !DILocation(line: 62, column: 14, scope: !3050)
!3082 = !DILocation(line: 62, column: 22, scope: !3050)
!3083 = !DILocation(line: 62, column: 2, scope: !3050)
!3084 = !DILocation(line: 63, column: 16, scope: !3050)
!3085 = !DILocation(line: 63, column: 2, scope: !3050)
!3086 = !DILocation(line: 64, column: 17, scope: !3050)
!3087 = !DILocation(line: 64, column: 8, scope: !3050)
!3088 = !DILocation(line: 64, column: 15, scope: !3050)
!3089 = !DILocation(line: 65, column: 24, scope: !3050)
!3090 = !DILocation(line: 65, column: 8, scope: !3050)
!3091 = !DILocation(line: 65, column: 6, scope: !3050)
!3092 = !DILocation(line: 66, column: 16, scope: !3050)
!3093 = !DILocation(line: 66, column: 24, scope: !3050)
!3094 = !DILocation(line: 66, column: 2, scope: !3050)
!3095 = !DILocation(line: 68, column: 9, scope: !3050)
!3096 = !DILocation(line: 68, column: 17, scope: !3050)
!3097 = !DILocation(line: 68, column: 2, scope: !3050)
!3098 = !DILocation(line: 69, column: 1, scope: !3050)
!3099 = distinct !DISubprogram(name: "child_to_pwm_device", scope: !3, file: !3, line: 29, type: !3100, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!2050, !1573}
!3102 = !DILocalVariable(name: "child", arg: 1, scope: !3099, file: !3, line: 29, type: !1573)
!3103 = !DILocation(line: 29, column: 62, scope: !3099)
!3104 = !DILocalVariable(name: "export", scope: !3099, file: !3, line: 31, type: !92)
!3105 = !DILocation(line: 31, column: 21, scope: !3099)
!3106 = !DILocation(line: 31, column: 50, scope: !3099)
!3107 = !DILocation(line: 31, column: 30, scope: !3099)
!3108 = !DILocation(line: 33, column: 9, scope: !3099)
!3109 = !DILocation(line: 33, column: 17, scope: !3099)
!3110 = !DILocation(line: 33, column: 2, scope: !3099)
!3111 = distinct !DISubprogram(name: "pwm_get_state", scope: !51, file: !51, line: 95, type: !3112, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{null, !3037, !2100}
!3114 = !DILocalVariable(name: "pwm", arg: 1, scope: !3111, file: !51, line: 95, type: !3037)
!3115 = !DILocation(line: 95, column: 59, scope: !3111)
!3116 = !DILocalVariable(name: "state", arg: 2, scope: !3111, file: !51, line: 96, type: !2100)
!3117 = !DILocation(line: 96, column: 24, scope: !3111)
!3118 = !DILocation(line: 98, column: 3, scope: !3111)
!3119 = !DILocation(line: 98, column: 11, scope: !3111)
!3120 = !DILocation(line: 98, column: 16, scope: !3111)
!3121 = !DILocation(line: 99, column: 1, scope: !3111)
!3122 = distinct !DISubprogram(name: "kstrtou64", scope: !3123, file: !3123, line: 395, type: !3124, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3123 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!144, !102, !7, !1866}
!3126 = !DILocalVariable(name: "s", arg: 1, scope: !3122, file: !3123, line: 395, type: !102)
!3127 = !DILocation(line: 395, column: 54, scope: !3122)
!3128 = !DILocalVariable(name: "base", arg: 2, scope: !3122, file: !3123, line: 395, type: !7)
!3129 = !DILocation(line: 395, column: 70, scope: !3122)
!3130 = !DILocalVariable(name: "res", arg: 3, scope: !3122, file: !3123, line: 395, type: !1866)
!3131 = !DILocation(line: 395, column: 81, scope: !3122)
!3132 = !DILocation(line: 397, column: 19, scope: !3122)
!3133 = !DILocation(line: 397, column: 22, scope: !3122)
!3134 = !DILocation(line: 397, column: 28, scope: !3122)
!3135 = !DILocation(line: 397, column: 9, scope: !3122)
!3136 = !DILocation(line: 397, column: 2, scope: !3122)
!3137 = distinct !DISubprogram(name: "duty_cycle_show", scope: !3, file: !3, line: 71, type: !2159, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3138 = !DILocalVariable(name: "child", arg: 1, scope: !3137, file: !3, line: 71, type: !1573)
!3139 = !DILocation(line: 71, column: 47, scope: !3137)
!3140 = !DILocalVariable(name: "attr", arg: 2, scope: !3137, file: !3, line: 72, type: !2161)
!3141 = !DILocation(line: 72, column: 36, scope: !3137)
!3142 = !DILocalVariable(name: "buf", arg: 3, scope: !3137, file: !3, line: 73, type: !160)
!3143 = !DILocation(line: 73, column: 17, scope: !3137)
!3144 = !DILocalVariable(name: "pwm", scope: !3137, file: !3, line: 75, type: !3037)
!3145 = !DILocation(line: 75, column: 27, scope: !3137)
!3146 = !DILocation(line: 75, column: 53, scope: !3137)
!3147 = !DILocation(line: 75, column: 33, scope: !3137)
!3148 = !DILocalVariable(name: "state", scope: !3137, file: !3, line: 76, type: !2090)
!3149 = !DILocation(line: 76, column: 19, scope: !3137)
!3150 = !DILocation(line: 78, column: 16, scope: !3137)
!3151 = !DILocation(line: 78, column: 2, scope: !3137)
!3152 = !DILocation(line: 80, column: 17, scope: !3137)
!3153 = !DILocation(line: 80, column: 38, scope: !3137)
!3154 = !DILocation(line: 80, column: 9, scope: !3137)
!3155 = !DILocation(line: 80, column: 2, scope: !3137)
!3156 = distinct !DISubprogram(name: "duty_cycle_store", scope: !3, file: !3, line: 83, type: !2164, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3157 = !DILocalVariable(name: "child", arg: 1, scope: !3156, file: !3, line: 83, type: !1573)
!3158 = !DILocation(line: 83, column: 48, scope: !3156)
!3159 = !DILocalVariable(name: "attr", arg: 2, scope: !3156, file: !3, line: 84, type: !2161)
!3160 = !DILocation(line: 84, column: 30, scope: !3156)
!3161 = !DILocalVariable(name: "buf", arg: 3, scope: !3156, file: !3, line: 85, type: !102)
!3162 = !DILocation(line: 85, column: 17, scope: !3156)
!3163 = !DILocalVariable(name: "size", arg: 4, scope: !3156, file: !3, line: 85, type: !206)
!3164 = !DILocation(line: 85, column: 29, scope: !3156)
!3165 = !DILocalVariable(name: "export", scope: !3156, file: !3, line: 87, type: !92)
!3166 = !DILocation(line: 87, column: 21, scope: !3156)
!3167 = !DILocation(line: 87, column: 50, scope: !3156)
!3168 = !DILocation(line: 87, column: 30, scope: !3156)
!3169 = !DILocalVariable(name: "pwm", scope: !3156, file: !3, line: 88, type: !2050)
!3170 = !DILocation(line: 88, column: 21, scope: !3156)
!3171 = !DILocation(line: 88, column: 27, scope: !3156)
!3172 = !DILocation(line: 88, column: 35, scope: !3156)
!3173 = !DILocalVariable(name: "state", scope: !3156, file: !3, line: 89, type: !2090)
!3174 = !DILocation(line: 89, column: 19, scope: !3156)
!3175 = !DILocalVariable(name: "val", scope: !3156, file: !3, line: 90, type: !278)
!3176 = !DILocation(line: 90, column: 6, scope: !3156)
!3177 = !DILocalVariable(name: "ret", scope: !3156, file: !3, line: 91, type: !144)
!3178 = !DILocation(line: 91, column: 6, scope: !3156)
!3179 = !DILocation(line: 93, column: 18, scope: !3156)
!3180 = !DILocation(line: 93, column: 8, scope: !3156)
!3181 = !DILocation(line: 93, column: 6, scope: !3156)
!3182 = !DILocation(line: 94, column: 6, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 94, column: 6)
!3184 = !DILocation(line: 94, column: 6, scope: !3156)
!3185 = !DILocation(line: 95, column: 10, scope: !3183)
!3186 = !DILocation(line: 95, column: 3, scope: !3183)
!3187 = !DILocation(line: 97, column: 14, scope: !3156)
!3188 = !DILocation(line: 97, column: 22, scope: !3156)
!3189 = !DILocation(line: 97, column: 2, scope: !3156)
!3190 = !DILocation(line: 98, column: 16, scope: !3156)
!3191 = !DILocation(line: 98, column: 2, scope: !3156)
!3192 = !DILocation(line: 99, column: 21, scope: !3156)
!3193 = !DILocation(line: 99, column: 8, scope: !3156)
!3194 = !DILocation(line: 99, column: 19, scope: !3156)
!3195 = !DILocation(line: 100, column: 24, scope: !3156)
!3196 = !DILocation(line: 100, column: 8, scope: !3156)
!3197 = !DILocation(line: 100, column: 6, scope: !3156)
!3198 = !DILocation(line: 101, column: 16, scope: !3156)
!3199 = !DILocation(line: 101, column: 24, scope: !3156)
!3200 = !DILocation(line: 101, column: 2, scope: !3156)
!3201 = !DILocation(line: 103, column: 9, scope: !3156)
!3202 = !DILocation(line: 103, column: 17, scope: !3156)
!3203 = !DILocation(line: 103, column: 2, scope: !3156)
!3204 = !DILocation(line: 104, column: 1, scope: !3156)
!3205 = distinct !DISubprogram(name: "enable_show", scope: !3, file: !3, line: 106, type: !2159, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3206 = !DILocalVariable(name: "child", arg: 1, scope: !3205, file: !3, line: 106, type: !1573)
!3207 = !DILocation(line: 106, column: 43, scope: !3205)
!3208 = !DILocalVariable(name: "attr", arg: 2, scope: !3205, file: !3, line: 107, type: !2161)
!3209 = !DILocation(line: 107, column: 32, scope: !3205)
!3210 = !DILocalVariable(name: "buf", arg: 3, scope: !3205, file: !3, line: 108, type: !160)
!3211 = !DILocation(line: 108, column: 13, scope: !3205)
!3212 = !DILocalVariable(name: "pwm", scope: !3205, file: !3, line: 110, type: !3037)
!3213 = !DILocation(line: 110, column: 27, scope: !3205)
!3214 = !DILocation(line: 110, column: 53, scope: !3205)
!3215 = !DILocation(line: 110, column: 33, scope: !3205)
!3216 = !DILocalVariable(name: "state", scope: !3205, file: !3, line: 111, type: !2090)
!3217 = !DILocation(line: 111, column: 19, scope: !3205)
!3218 = !DILocation(line: 113, column: 16, scope: !3205)
!3219 = !DILocation(line: 113, column: 2, scope: !3205)
!3220 = !DILocation(line: 115, column: 17, scope: !3205)
!3221 = !DILocation(line: 115, column: 36, scope: !3205)
!3222 = !DILocation(line: 115, column: 30, scope: !3205)
!3223 = !DILocation(line: 115, column: 9, scope: !3205)
!3224 = !DILocation(line: 115, column: 2, scope: !3205)
!3225 = distinct !DISubprogram(name: "enable_store", scope: !3, file: !3, line: 118, type: !2164, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3226 = !DILocalVariable(name: "child", arg: 1, scope: !3225, file: !3, line: 118, type: !1573)
!3227 = !DILocation(line: 118, column: 44, scope: !3225)
!3228 = !DILocalVariable(name: "attr", arg: 2, scope: !3225, file: !3, line: 119, type: !2161)
!3229 = !DILocation(line: 119, column: 33, scope: !3225)
!3230 = !DILocalVariable(name: "buf", arg: 3, scope: !3225, file: !3, line: 120, type: !102)
!3231 = !DILocation(line: 120, column: 20, scope: !3225)
!3232 = !DILocalVariable(name: "size", arg: 4, scope: !3225, file: !3, line: 120, type: !206)
!3233 = !DILocation(line: 120, column: 32, scope: !3225)
!3234 = !DILocalVariable(name: "export", scope: !3225, file: !3, line: 122, type: !92)
!3235 = !DILocation(line: 122, column: 21, scope: !3225)
!3236 = !DILocation(line: 122, column: 50, scope: !3225)
!3237 = !DILocation(line: 122, column: 30, scope: !3225)
!3238 = !DILocalVariable(name: "pwm", scope: !3225, file: !3, line: 123, type: !2050)
!3239 = !DILocation(line: 123, column: 21, scope: !3225)
!3240 = !DILocation(line: 123, column: 27, scope: !3225)
!3241 = !DILocation(line: 123, column: 35, scope: !3225)
!3242 = !DILocalVariable(name: "state", scope: !3225, file: !3, line: 124, type: !2090)
!3243 = !DILocation(line: 124, column: 19, scope: !3225)
!3244 = !DILocalVariable(name: "val", scope: !3225, file: !3, line: 125, type: !144)
!3245 = !DILocation(line: 125, column: 6, scope: !3225)
!3246 = !DILocalVariable(name: "ret", scope: !3225, file: !3, line: 125, type: !144)
!3247 = !DILocation(line: 125, column: 11, scope: !3225)
!3248 = !DILocation(line: 127, column: 18, scope: !3225)
!3249 = !DILocation(line: 127, column: 8, scope: !3225)
!3250 = !DILocation(line: 127, column: 6, scope: !3225)
!3251 = !DILocation(line: 128, column: 6, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3225, file: !3, line: 128, column: 6)
!3253 = !DILocation(line: 128, column: 6, scope: !3225)
!3254 = !DILocation(line: 129, column: 10, scope: !3252)
!3255 = !DILocation(line: 129, column: 3, scope: !3252)
!3256 = !DILocation(line: 131, column: 14, scope: !3225)
!3257 = !DILocation(line: 131, column: 22, scope: !3225)
!3258 = !DILocation(line: 131, column: 2, scope: !3225)
!3259 = !DILocation(line: 133, column: 16, scope: !3225)
!3260 = !DILocation(line: 133, column: 2, scope: !3225)
!3261 = !DILocation(line: 135, column: 10, scope: !3225)
!3262 = !DILocation(line: 135, column: 2, scope: !3225)
!3263 = !DILocation(line: 137, column: 9, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3225, file: !3, line: 135, column: 15)
!3265 = !DILocation(line: 137, column: 17, scope: !3264)
!3266 = !DILocation(line: 138, column: 3, scope: !3264)
!3267 = !DILocation(line: 140, column: 9, scope: !3264)
!3268 = !DILocation(line: 140, column: 17, scope: !3264)
!3269 = !DILocation(line: 141, column: 3, scope: !3264)
!3270 = !DILocation(line: 143, column: 7, scope: !3264)
!3271 = !DILocation(line: 144, column: 3, scope: !3264)
!3272 = !DILocation(line: 147, column: 24, scope: !3225)
!3273 = !DILocation(line: 147, column: 8, scope: !3225)
!3274 = !DILocation(line: 147, column: 6, scope: !3225)
!3275 = !DILocation(line: 147, column: 2, scope: !3225)
!3276 = !DILabel(scope: !3225, name: "unlock", file: !3, line: 149)
!3277 = !DILocation(line: 149, column: 1, scope: !3225)
!3278 = !DILocation(line: 150, column: 16, scope: !3225)
!3279 = !DILocation(line: 150, column: 24, scope: !3225)
!3280 = !DILocation(line: 150, column: 2, scope: !3225)
!3281 = !DILocation(line: 151, column: 9, scope: !3225)
!3282 = !DILocation(line: 151, column: 17, scope: !3225)
!3283 = !DILocation(line: 151, column: 2, scope: !3225)
!3284 = !DILocation(line: 152, column: 1, scope: !3225)
!3285 = distinct !DISubprogram(name: "polarity_show", scope: !3, file: !3, line: 154, type: !2159, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3286 = !DILocalVariable(name: "child", arg: 1, scope: !3285, file: !3, line: 154, type: !1573)
!3287 = !DILocation(line: 154, column: 45, scope: !3285)
!3288 = !DILocalVariable(name: "attr", arg: 2, scope: !3285, file: !3, line: 155, type: !2161)
!3289 = !DILocation(line: 155, column: 34, scope: !3285)
!3290 = !DILocalVariable(name: "buf", arg: 3, scope: !3285, file: !3, line: 156, type: !160)
!3291 = !DILocation(line: 156, column: 15, scope: !3285)
!3292 = !DILocalVariable(name: "pwm", scope: !3285, file: !3, line: 158, type: !3037)
!3293 = !DILocation(line: 158, column: 27, scope: !3285)
!3294 = !DILocation(line: 158, column: 53, scope: !3285)
!3295 = !DILocation(line: 158, column: 33, scope: !3285)
!3296 = !DILocalVariable(name: "polarity", scope: !3285, file: !3, line: 159, type: !102)
!3297 = !DILocation(line: 159, column: 14, scope: !3285)
!3298 = !DILocalVariable(name: "state", scope: !3285, file: !3, line: 160, type: !2090)
!3299 = !DILocation(line: 160, column: 19, scope: !3285)
!3300 = !DILocation(line: 162, column: 16, scope: !3285)
!3301 = !DILocation(line: 162, column: 2, scope: !3285)
!3302 = !DILocation(line: 164, column: 16, scope: !3285)
!3303 = !DILocation(line: 164, column: 2, scope: !3285)
!3304 = !DILocation(line: 166, column: 12, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3285, file: !3, line: 164, column: 26)
!3306 = !DILocation(line: 167, column: 3, scope: !3305)
!3307 = !DILocation(line: 170, column: 12, scope: !3305)
!3308 = !DILocation(line: 171, column: 3, scope: !3305)
!3309 = !DILocation(line: 174, column: 17, scope: !3285)
!3310 = !DILocation(line: 174, column: 30, scope: !3285)
!3311 = !DILocation(line: 174, column: 9, scope: !3285)
!3312 = !DILocation(line: 174, column: 2, scope: !3285)
!3313 = distinct !DISubprogram(name: "polarity_store", scope: !3, file: !3, line: 177, type: !2164, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3314 = !DILocalVariable(name: "child", arg: 1, scope: !3313, file: !3, line: 177, type: !1573)
!3315 = !DILocation(line: 177, column: 46, scope: !3313)
!3316 = !DILocalVariable(name: "attr", arg: 2, scope: !3313, file: !3, line: 178, type: !2161)
!3317 = !DILocation(line: 178, column: 35, scope: !3313)
!3318 = !DILocalVariable(name: "buf", arg: 3, scope: !3313, file: !3, line: 179, type: !102)
!3319 = !DILocation(line: 179, column: 22, scope: !3313)
!3320 = !DILocalVariable(name: "size", arg: 4, scope: !3313, file: !3, line: 179, type: !206)
!3321 = !DILocation(line: 179, column: 34, scope: !3313)
!3322 = !DILocalVariable(name: "export", scope: !3313, file: !3, line: 181, type: !92)
!3323 = !DILocation(line: 181, column: 21, scope: !3313)
!3324 = !DILocation(line: 181, column: 50, scope: !3313)
!3325 = !DILocation(line: 181, column: 30, scope: !3313)
!3326 = !DILocalVariable(name: "pwm", scope: !3313, file: !3, line: 182, type: !2050)
!3327 = !DILocation(line: 182, column: 21, scope: !3313)
!3328 = !DILocation(line: 182, column: 27, scope: !3313)
!3329 = !DILocation(line: 182, column: 35, scope: !3313)
!3330 = !DILocalVariable(name: "polarity", scope: !3313, file: !3, line: 183, type: !50)
!3331 = !DILocation(line: 183, column: 20, scope: !3313)
!3332 = !DILocalVariable(name: "state", scope: !3313, file: !3, line: 184, type: !2090)
!3333 = !DILocation(line: 184, column: 19, scope: !3313)
!3334 = !DILocalVariable(name: "ret", scope: !3313, file: !3, line: 185, type: !144)
!3335 = !DILocation(line: 185, column: 6, scope: !3313)
!3336 = !DILocation(line: 187, column: 18, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3313, file: !3, line: 187, column: 6)
!3338 = !DILocation(line: 187, column: 6, scope: !3337)
!3339 = !DILocation(line: 187, column: 6, scope: !3313)
!3340 = !DILocation(line: 188, column: 12, scope: !3337)
!3341 = !DILocation(line: 188, column: 3, scope: !3337)
!3342 = !DILocation(line: 189, column: 23, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3337, file: !3, line: 189, column: 11)
!3344 = !DILocation(line: 189, column: 11, scope: !3343)
!3345 = !DILocation(line: 189, column: 11, scope: !3337)
!3346 = !DILocation(line: 190, column: 12, scope: !3343)
!3347 = !DILocation(line: 190, column: 3, scope: !3343)
!3348 = !DILocation(line: 192, column: 3, scope: !3343)
!3349 = !DILocation(line: 194, column: 14, scope: !3313)
!3350 = !DILocation(line: 194, column: 22, scope: !3313)
!3351 = !DILocation(line: 194, column: 2, scope: !3313)
!3352 = !DILocation(line: 195, column: 16, scope: !3313)
!3353 = !DILocation(line: 195, column: 2, scope: !3313)
!3354 = !DILocation(line: 196, column: 19, scope: !3313)
!3355 = !DILocation(line: 196, column: 8, scope: !3313)
!3356 = !DILocation(line: 196, column: 17, scope: !3313)
!3357 = !DILocation(line: 197, column: 24, scope: !3313)
!3358 = !DILocation(line: 197, column: 8, scope: !3313)
!3359 = !DILocation(line: 197, column: 6, scope: !3313)
!3360 = !DILocation(line: 198, column: 16, scope: !3313)
!3361 = !DILocation(line: 198, column: 24, scope: !3313)
!3362 = !DILocation(line: 198, column: 2, scope: !3313)
!3363 = !DILocation(line: 200, column: 9, scope: !3313)
!3364 = !DILocation(line: 200, column: 17, scope: !3313)
!3365 = !DILocation(line: 200, column: 2, scope: !3313)
!3366 = !DILocation(line: 201, column: 1, scope: !3313)
!3367 = distinct !DISubprogram(name: "capture_show", scope: !3, file: !3, line: 203, type: !2159, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3368 = !DILocalVariable(name: "child", arg: 1, scope: !3367, file: !3, line: 203, type: !1573)
!3369 = !DILocation(line: 203, column: 44, scope: !3367)
!3370 = !DILocalVariable(name: "attr", arg: 2, scope: !3367, file: !3, line: 204, type: !2161)
!3371 = !DILocation(line: 204, column: 33, scope: !3367)
!3372 = !DILocalVariable(name: "buf", arg: 3, scope: !3367, file: !3, line: 205, type: !160)
!3373 = !DILocation(line: 205, column: 14, scope: !3367)
!3374 = !DILocalVariable(name: "pwm", scope: !3367, file: !3, line: 207, type: !2050)
!3375 = !DILocation(line: 207, column: 21, scope: !3367)
!3376 = !DILocation(line: 207, column: 47, scope: !3367)
!3377 = !DILocation(line: 207, column: 27, scope: !3367)
!3378 = !DILocalVariable(name: "result", scope: !3367, file: !3, line: 208, type: !2080)
!3379 = !DILocation(line: 208, column: 21, scope: !3367)
!3380 = !DILocalVariable(name: "ret", scope: !3367, file: !3, line: 209, type: !144)
!3381 = !DILocation(line: 209, column: 6, scope: !3367)
!3382 = !DILocation(line: 211, column: 20, scope: !3367)
!3383 = !DILocation(line: 211, column: 34, scope: !3367)
!3384 = !DILocation(line: 211, column: 8, scope: !3367)
!3385 = !DILocation(line: 211, column: 6, scope: !3367)
!3386 = !DILocation(line: 212, column: 6, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3367, file: !3, line: 212, column: 6)
!3388 = !DILocation(line: 212, column: 6, scope: !3367)
!3389 = !DILocation(line: 213, column: 10, scope: !3387)
!3390 = !DILocation(line: 213, column: 3, scope: !3387)
!3391 = !DILocation(line: 215, column: 17, scope: !3367)
!3392 = !DILocation(line: 215, column: 40, scope: !3367)
!3393 = !DILocation(line: 215, column: 55, scope: !3367)
!3394 = !DILocation(line: 215, column: 9, scope: !3367)
!3395 = !DILocation(line: 215, column: 2, scope: !3367)
!3396 = !DILocation(line: 216, column: 1, scope: !3367)
!3397 = distinct !DISubprogram(name: "unexport_store", scope: !3, file: !3, line: 338, type: !2164, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3398 = !DILocalVariable(name: "parent", arg: 1, scope: !3397, file: !3, line: 338, type: !1573)
!3399 = !DILocation(line: 338, column: 46, scope: !3397)
!3400 = !DILocalVariable(name: "attr", arg: 2, scope: !3397, file: !3, line: 339, type: !2161)
!3401 = !DILocation(line: 339, column: 35, scope: !3397)
!3402 = !DILocalVariable(name: "buf", arg: 3, scope: !3397, file: !3, line: 340, type: !102)
!3403 = !DILocation(line: 340, column: 22, scope: !3397)
!3404 = !DILocalVariable(name: "len", arg: 4, scope: !3397, file: !3, line: 340, type: !206)
!3405 = !DILocation(line: 340, column: 34, scope: !3397)
!3406 = !DILocalVariable(name: "chip", scope: !3397, file: !3, line: 342, type: !2058)
!3407 = !DILocation(line: 342, column: 19, scope: !3397)
!3408 = !DILocation(line: 342, column: 42, scope: !3397)
!3409 = !DILocation(line: 342, column: 26, scope: !3397)
!3410 = !DILocalVariable(name: "hwpwm", scope: !3397, file: !3, line: 343, type: !7)
!3411 = !DILocation(line: 343, column: 15, scope: !3397)
!3412 = !DILocalVariable(name: "ret", scope: !3397, file: !3, line: 344, type: !144)
!3413 = !DILocation(line: 344, column: 6, scope: !3397)
!3414 = !DILocation(line: 346, column: 19, scope: !3397)
!3415 = !DILocation(line: 346, column: 8, scope: !3397)
!3416 = !DILocation(line: 346, column: 6, scope: !3397)
!3417 = !DILocation(line: 347, column: 6, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3397, file: !3, line: 347, column: 6)
!3419 = !DILocation(line: 347, column: 10, scope: !3418)
!3420 = !DILocation(line: 347, column: 6, scope: !3397)
!3421 = !DILocation(line: 348, column: 10, scope: !3418)
!3422 = !DILocation(line: 348, column: 3, scope: !3418)
!3423 = !DILocation(line: 350, column: 6, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3397, file: !3, line: 350, column: 6)
!3425 = !DILocation(line: 350, column: 15, scope: !3424)
!3426 = !DILocation(line: 350, column: 21, scope: !3424)
!3427 = !DILocation(line: 350, column: 12, scope: !3424)
!3428 = !DILocation(line: 350, column: 6, scope: !3397)
!3429 = !DILocation(line: 351, column: 3, scope: !3424)
!3430 = !DILocation(line: 353, column: 27, scope: !3397)
!3431 = !DILocation(line: 353, column: 36, scope: !3397)
!3432 = !DILocation(line: 353, column: 42, scope: !3397)
!3433 = !DILocation(line: 353, column: 47, scope: !3397)
!3434 = !DILocation(line: 353, column: 8, scope: !3397)
!3435 = !DILocation(line: 353, column: 6, scope: !3397)
!3436 = !DILocation(line: 355, column: 9, scope: !3397)
!3437 = !DILocation(line: 355, column: 17, scope: !3397)
!3438 = !DILocation(line: 355, column: 2, scope: !3397)
!3439 = !DILocation(line: 356, column: 1, scope: !3397)
!3440 = distinct !DISubprogram(name: "npwm_show", scope: !3, file: !3, line: 359, type: !2159, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3441 = !DILocalVariable(name: "parent", arg: 1, scope: !3440, file: !3, line: 359, type: !1573)
!3442 = !DILocation(line: 359, column: 41, scope: !3440)
!3443 = !DILocalVariable(name: "attr", arg: 2, scope: !3440, file: !3, line: 359, type: !2161)
!3444 = !DILocation(line: 359, column: 74, scope: !3440)
!3445 = !DILocalVariable(name: "buf", arg: 3, scope: !3440, file: !3, line: 360, type: !160)
!3446 = !DILocation(line: 360, column: 11, scope: !3440)
!3447 = !DILocalVariable(name: "chip", scope: !3440, file: !3, line: 362, type: !3448)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2059)
!3450 = !DILocation(line: 362, column: 25, scope: !3440)
!3451 = !DILocation(line: 362, column: 48, scope: !3440)
!3452 = !DILocation(line: 362, column: 32, scope: !3440)
!3453 = !DILocation(line: 364, column: 17, scope: !3440)
!3454 = !DILocation(line: 364, column: 30, scope: !3440)
!3455 = !DILocation(line: 364, column: 36, scope: !3440)
!3456 = !DILocation(line: 364, column: 9, scope: !3440)
!3457 = !DILocation(line: 364, column: 2, scope: !3440)
!3458 = distinct !DISubprogram(name: "pwm_class_suspend", scope: !3, file: !3, line: 436, type: !1605, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3459 = !DILocalVariable(name: "parent", arg: 1, scope: !3458, file: !3, line: 436, type: !1573)
!3460 = !DILocation(line: 436, column: 60, scope: !3458)
!3461 = !DILocalVariable(name: "chip", scope: !3458, file: !3, line: 438, type: !2058)
!3462 = !DILocation(line: 438, column: 19, scope: !3458)
!3463 = !DILocation(line: 438, column: 42, scope: !3458)
!3464 = !DILocation(line: 438, column: 26, scope: !3458)
!3465 = !DILocalVariable(name: "i", scope: !3458, file: !3, line: 439, type: !7)
!3466 = !DILocation(line: 439, column: 15, scope: !3458)
!3467 = !DILocalVariable(name: "ret", scope: !3458, file: !3, line: 440, type: !144)
!3468 = !DILocation(line: 440, column: 6, scope: !3458)
!3469 = !DILocation(line: 442, column: 9, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 442, column: 2)
!3471 = !DILocation(line: 442, column: 7, scope: !3470)
!3472 = !DILocation(line: 442, column: 14, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3470, file: !3, line: 442, column: 2)
!3474 = !DILocation(line: 442, column: 18, scope: !3473)
!3475 = !DILocation(line: 442, column: 24, scope: !3473)
!3476 = !DILocation(line: 442, column: 16, scope: !3473)
!3477 = !DILocation(line: 442, column: 2, scope: !3470)
!3478 = !DILocalVariable(name: "pwm", scope: !3479, file: !3, line: 443, type: !2050)
!3479 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 442, column: 35)
!3480 = !DILocation(line: 443, column: 22, scope: !3479)
!3481 = !DILocation(line: 443, column: 29, scope: !3479)
!3482 = !DILocation(line: 443, column: 35, scope: !3479)
!3483 = !DILocation(line: 443, column: 40, scope: !3479)
!3484 = !DILocalVariable(name: "state", scope: !3479, file: !3, line: 444, type: !2090)
!3485 = !DILocation(line: 444, column: 20, scope: !3479)
!3486 = !DILocalVariable(name: "export", scope: !3479, file: !3, line: 445, type: !92)
!3487 = !DILocation(line: 445, column: 22, scope: !3479)
!3488 = !DILocation(line: 447, column: 32, scope: !3479)
!3489 = !DILocation(line: 447, column: 40, scope: !3479)
!3490 = !DILocation(line: 447, column: 12, scope: !3479)
!3491 = !DILocation(line: 447, column: 10, scope: !3479)
!3492 = !DILocation(line: 448, column: 8, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3479, file: !3, line: 448, column: 7)
!3494 = !DILocation(line: 448, column: 7, scope: !3479)
!3495 = !DILocation(line: 449, column: 4, scope: !3493)
!3496 = !DILocation(line: 451, column: 3, scope: !3479)
!3497 = !DILocation(line: 451, column: 11, scope: !3479)
!3498 = !DILocation(line: 451, column: 21, scope: !3479)
!3499 = !DILocation(line: 452, column: 9, scope: !3479)
!3500 = !DILocation(line: 452, column: 17, scope: !3479)
!3501 = !DILocation(line: 453, column: 31, scope: !3479)
!3502 = !DILocation(line: 453, column: 39, scope: !3479)
!3503 = !DILocation(line: 453, column: 9, scope: !3479)
!3504 = !DILocation(line: 453, column: 7, scope: !3479)
!3505 = !DILocation(line: 454, column: 7, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3479, file: !3, line: 454, column: 7)
!3507 = !DILocation(line: 454, column: 11, scope: !3506)
!3508 = !DILocation(line: 454, column: 7, scope: !3479)
!3509 = !DILocation(line: 459, column: 26, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 454, column: 16)
!3511 = !DILocation(line: 459, column: 34, scope: !3510)
!3512 = !DILocation(line: 459, column: 4, scope: !3510)
!3513 = !DILocation(line: 460, column: 4, scope: !3510)
!3514 = !DILocation(line: 462, column: 2, scope: !3479)
!3515 = !DILocation(line: 442, column: 31, scope: !3473)
!3516 = !DILocation(line: 442, column: 2, scope: !3473)
!3517 = distinct !{!3517, !3477, !3518}
!3518 = !DILocation(line: 462, column: 2, scope: !3470)
!3519 = !DILocation(line: 464, column: 9, scope: !3458)
!3520 = !DILocation(line: 464, column: 2, scope: !3458)
!3521 = distinct !DISubprogram(name: "pwm_class_resume", scope: !3, file: !3, line: 467, type: !1605, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3522 = !DILocalVariable(name: "parent", arg: 1, scope: !3521, file: !3, line: 467, type: !1573)
!3523 = !DILocation(line: 467, column: 59, scope: !3521)
!3524 = !DILocalVariable(name: "chip", scope: !3521, file: !3, line: 469, type: !2058)
!3525 = !DILocation(line: 469, column: 19, scope: !3521)
!3526 = !DILocation(line: 469, column: 42, scope: !3521)
!3527 = !DILocation(line: 469, column: 26, scope: !3521)
!3528 = !DILocation(line: 471, column: 31, scope: !3521)
!3529 = !DILocation(line: 471, column: 39, scope: !3521)
!3530 = !DILocation(line: 471, column: 45, scope: !3521)
!3531 = !DILocation(line: 471, column: 9, scope: !3521)
!3532 = !DILocation(line: 471, column: 2, scope: !3521)
!3533 = distinct !DISubprogram(name: "pwm_class_get_state", scope: !3, file: !3, line: 377, type: !3534, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!92, !1573, !2050, !2100}
!3536 = !DILocalVariable(name: "parent", arg: 1, scope: !3533, file: !3, line: 377, type: !1573)
!3537 = !DILocation(line: 377, column: 62, scope: !3533)
!3538 = !DILocalVariable(name: "pwm", arg: 2, scope: !3533, file: !3, line: 378, type: !2050)
!3539 = !DILocation(line: 378, column: 31, scope: !3533)
!3540 = !DILocalVariable(name: "state", arg: 3, scope: !3533, file: !3, line: 379, type: !2100)
!3541 = !DILocation(line: 379, column: 30, scope: !3533)
!3542 = !DILocalVariable(name: "child", scope: !3533, file: !3, line: 381, type: !1573)
!3543 = !DILocation(line: 381, column: 17, scope: !3533)
!3544 = !DILocalVariable(name: "export", scope: !3533, file: !3, line: 382, type: !92)
!3545 = !DILocation(line: 382, column: 21, scope: !3533)
!3546 = !DILocation(line: 384, column: 32, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 384, column: 6)
!3548 = !DILocation(line: 384, column: 37, scope: !3547)
!3549 = !DILocation(line: 384, column: 7, scope: !3547)
!3550 = !DILocation(line: 384, column: 6, scope: !3533)
!3551 = !DILocation(line: 385, column: 3, scope: !3547)
!3552 = !DILocation(line: 387, column: 28, scope: !3533)
!3553 = !DILocation(line: 387, column: 36, scope: !3533)
!3554 = !DILocation(line: 387, column: 10, scope: !3533)
!3555 = !DILocation(line: 387, column: 8, scope: !3533)
!3556 = !DILocation(line: 388, column: 7, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 388, column: 6)
!3558 = !DILocation(line: 388, column: 6, scope: !3533)
!3559 = !DILocation(line: 389, column: 3, scope: !3557)
!3560 = !DILocation(line: 391, column: 31, scope: !3533)
!3561 = !DILocation(line: 391, column: 11, scope: !3533)
!3562 = !DILocation(line: 391, column: 9, scope: !3533)
!3563 = !DILocation(line: 392, column: 13, scope: !3533)
!3564 = !DILocation(line: 392, column: 2, scope: !3533)
!3565 = !DILocation(line: 394, column: 14, scope: !3533)
!3566 = !DILocation(line: 394, column: 22, scope: !3533)
!3567 = !DILocation(line: 394, column: 2, scope: !3533)
!3568 = !DILocation(line: 395, column: 16, scope: !3533)
!3569 = !DILocation(line: 395, column: 21, scope: !3533)
!3570 = !DILocation(line: 395, column: 2, scope: !3533)
!3571 = !DILocation(line: 397, column: 9, scope: !3533)
!3572 = !DILocation(line: 397, column: 2, scope: !3533)
!3573 = !DILocation(line: 398, column: 1, scope: !3533)
!3574 = distinct !DISubprogram(name: "pwm_class_apply_state", scope: !3, file: !3, line: 400, type: !3575, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!144, !92, !2050, !2100}
!3577 = !DILocalVariable(name: "export", arg: 1, scope: !3574, file: !3, line: 400, type: !92)
!3578 = !DILocation(line: 400, column: 53, scope: !3574)
!3579 = !DILocalVariable(name: "pwm", arg: 2, scope: !3574, file: !3, line: 401, type: !2050)
!3580 = !DILocation(line: 401, column: 25, scope: !3574)
!3581 = !DILocalVariable(name: "state", arg: 3, scope: !3574, file: !3, line: 402, type: !2100)
!3582 = !DILocation(line: 402, column: 24, scope: !3574)
!3583 = !DILocalVariable(name: "ret", scope: !3574, file: !3, line: 404, type: !144)
!3584 = !DILocation(line: 404, column: 6, scope: !3574)
!3585 = !DILocation(line: 404, column: 28, scope: !3574)
!3586 = !DILocation(line: 404, column: 33, scope: !3574)
!3587 = !DILocation(line: 404, column: 12, scope: !3574)
!3588 = !DILocation(line: 407, column: 16, scope: !3574)
!3589 = !DILocation(line: 407, column: 24, scope: !3574)
!3590 = !DILocation(line: 407, column: 2, scope: !3574)
!3591 = !DILocation(line: 409, column: 9, scope: !3574)
!3592 = !DILocation(line: 409, column: 2, scope: !3574)
!3593 = distinct !DISubprogram(name: "pwm_class_resume_npwm", scope: !3, file: !3, line: 412, type: !3594, scopeLine: 413, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!144, !1573, !7}
!3596 = !DILocalVariable(name: "parent", arg: 1, scope: !3593, file: !3, line: 412, type: !1573)
!3597 = !DILocation(line: 412, column: 49, scope: !3593)
!3598 = !DILocalVariable(name: "npwm", arg: 2, scope: !3593, file: !3, line: 412, type: !7)
!3599 = !DILocation(line: 412, column: 70, scope: !3593)
!3600 = !DILocalVariable(name: "chip", scope: !3593, file: !3, line: 414, type: !2058)
!3601 = !DILocation(line: 414, column: 19, scope: !3593)
!3602 = !DILocation(line: 414, column: 42, scope: !3593)
!3603 = !DILocation(line: 414, column: 26, scope: !3593)
!3604 = !DILocalVariable(name: "i", scope: !3593, file: !3, line: 415, type: !7)
!3605 = !DILocation(line: 415, column: 15, scope: !3593)
!3606 = !DILocalVariable(name: "ret", scope: !3593, file: !3, line: 416, type: !144)
!3607 = !DILocation(line: 416, column: 6, scope: !3593)
!3608 = !DILocation(line: 418, column: 9, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3593, file: !3, line: 418, column: 2)
!3610 = !DILocation(line: 418, column: 7, scope: !3609)
!3611 = !DILocation(line: 418, column: 14, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3609, file: !3, line: 418, column: 2)
!3613 = !DILocation(line: 418, column: 18, scope: !3612)
!3614 = !DILocation(line: 418, column: 16, scope: !3612)
!3615 = !DILocation(line: 418, column: 2, scope: !3609)
!3616 = !DILocalVariable(name: "pwm", scope: !3617, file: !3, line: 419, type: !2050)
!3617 = distinct !DILexicalBlock(scope: !3612, file: !3, line: 418, column: 29)
!3618 = !DILocation(line: 419, column: 22, scope: !3617)
!3619 = !DILocation(line: 419, column: 29, scope: !3617)
!3620 = !DILocation(line: 419, column: 35, scope: !3617)
!3621 = !DILocation(line: 419, column: 40, scope: !3617)
!3622 = !DILocalVariable(name: "state", scope: !3617, file: !3, line: 420, type: !2090)
!3623 = !DILocation(line: 420, column: 20, scope: !3617)
!3624 = !DILocalVariable(name: "export", scope: !3617, file: !3, line: 421, type: !92)
!3625 = !DILocation(line: 421, column: 22, scope: !3617)
!3626 = !DILocation(line: 423, column: 32, scope: !3617)
!3627 = !DILocation(line: 423, column: 40, scope: !3617)
!3628 = !DILocation(line: 423, column: 12, scope: !3617)
!3629 = !DILocation(line: 423, column: 10, scope: !3617)
!3630 = !DILocation(line: 424, column: 8, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3617, file: !3, line: 424, column: 7)
!3632 = !DILocation(line: 424, column: 7, scope: !3617)
!3633 = !DILocation(line: 425, column: 4, scope: !3631)
!3634 = !DILocation(line: 427, column: 19, scope: !3617)
!3635 = !DILocation(line: 427, column: 27, scope: !3617)
!3636 = !DILocation(line: 427, column: 35, scope: !3617)
!3637 = !DILocation(line: 427, column: 9, scope: !3617)
!3638 = !DILocation(line: 427, column: 17, scope: !3617)
!3639 = !DILocation(line: 428, column: 31, scope: !3617)
!3640 = !DILocation(line: 428, column: 39, scope: !3617)
!3641 = !DILocation(line: 428, column: 9, scope: !3617)
!3642 = !DILocation(line: 428, column: 7, scope: !3617)
!3643 = !DILocation(line: 429, column: 7, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3617, file: !3, line: 429, column: 7)
!3645 = !DILocation(line: 429, column: 11, scope: !3644)
!3646 = !DILocation(line: 429, column: 7, scope: !3617)
!3647 = !DILocation(line: 430, column: 4, scope: !3644)
!3648 = !DILocation(line: 431, column: 2, scope: !3617)
!3649 = !DILocation(line: 418, column: 25, scope: !3612)
!3650 = !DILocation(line: 418, column: 2, scope: !3612)
!3651 = distinct !{!3651, !3615, !3652}
!3652 = !DILocation(line: 431, column: 2, scope: !3609)
!3653 = !DILocation(line: 433, column: 9, scope: !3593)
!3654 = !DILocation(line: 433, column: 2, scope: !3593)
!3655 = distinct !DISubprogram(name: "pwm_unexport_match", scope: !3, file: !3, line: 280, type: !3656, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!144, !1573, !86}
!3658 = !DILocalVariable(name: "child", arg: 1, scope: !3655, file: !3, line: 280, type: !1573)
!3659 = !DILocation(line: 280, column: 46, scope: !3655)
!3660 = !DILocalVariable(name: "data", arg: 2, scope: !3655, file: !3, line: 280, type: !86)
!3661 = !DILocation(line: 280, column: 59, scope: !3655)
!3662 = !DILocation(line: 282, column: 29, scope: !3655)
!3663 = !DILocation(line: 282, column: 9, scope: !3655)
!3664 = !DILocation(line: 282, column: 39, scope: !3655)
!3665 = !DILocation(line: 282, column: 36, scope: !3655)
!3666 = !DILocation(line: 282, column: 2, scope: !3655)
!3667 = distinct !DISubprogram(name: "kasan_check_read", scope: !2927, file: !2927, line: 34, type: !2928, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3668 = !DILocalVariable(name: "p", arg: 1, scope: !3667, file: !2927, line: 34, type: !2320)
!3669 = !DILocation(line: 34, column: 58, scope: !3667)
!3670 = !DILocalVariable(name: "size", arg: 2, scope: !3667, file: !2927, line: 34, type: !7)
!3671 = !DILocation(line: 34, column: 74, scope: !3667)
!3672 = !DILocation(line: 36, column: 2, scope: !3667)
!3673 = distinct !DISubprogram(name: "test_and_clear_bit", scope: !2565, file: !2565, line: 81, type: !2566, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3674 = !DILocalVariable(name: "nr", arg: 1, scope: !3675, file: !2302, line: 160, type: !83)
!3675 = distinct !DISubprogram(name: "arch_test_and_clear_bit", scope: !2302, file: !2302, line: 160, type: !2566, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!3676 = !DILocation(line: 160, column: 30, scope: !3675, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 84, column: 9, scope: !3673)
!3678 = !DILocalVariable(name: "addr", arg: 2, scope: !3675, file: !2302, line: 160, type: !2568)
!3679 = !DILocation(line: 160, column: 58, scope: !3675, inlinedAt: !3677)
!3680 = !DILocalVariable(name: "c", scope: !3681, file: !2302, line: 162, type: !985)
!3681 = distinct !DILexicalBlock(scope: !3675, file: !2302, line: 162, column: 9)
!3682 = !DILocation(line: 162, column: 9, scope: !3681, inlinedAt: !3677)
!3683 = !DILocation(line: 99, column: 79, scope: !2579, inlinedAt: !3684)
!3684 = distinct !DILocation(line: 83, column: 2, scope: !3673)
!3685 = !DILocation(line: 99, column: 89, scope: !2579, inlinedAt: !3684)
!3686 = !DILocalVariable(name: "nr", arg: 1, scope: !3673, file: !2565, line: 81, type: !83)
!3687 = !DILocation(line: 81, column: 44, scope: !3673)
!3688 = !DILocalVariable(name: "addr", arg: 2, scope: !3673, file: !2565, line: 81, type: !2568)
!3689 = !DILocation(line: 81, column: 72, scope: !3673)
!3690 = !DILocation(line: 83, column: 31, scope: !3673)
!3691 = !DILocation(line: 83, column: 38, scope: !3673)
!3692 = !DILocation(line: 83, column: 36, scope: !3673)
!3693 = !DILocation(line: 101, column: 20, scope: !2579, inlinedAt: !3684)
!3694 = !DILocation(line: 101, column: 23, scope: !2579, inlinedAt: !3684)
!3695 = !DILocation(line: 101, column: 2, scope: !2579, inlinedAt: !3684)
!3696 = !DILocation(line: 102, column: 2, scope: !2579, inlinedAt: !3684)
!3697 = !DILocation(line: 84, column: 33, scope: !3673)
!3698 = !DILocation(line: 84, column: 37, scope: !3673)
!3699 = !{i32 -2147059010, i32 -2147058914}
!3700 = !DILocation(line: 84, column: 2, scope: !3673)
