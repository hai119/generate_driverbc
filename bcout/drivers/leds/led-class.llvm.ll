; ModuleID = '../bcout/drivers/leds/led-class.llvm.bc'
source_filename = "drivers/leds/led-class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall4.init\22, \22a\22\09"
module asm "__initcall_leds_init4:\09\09\09"
module asm ".long\09leds_init - .\09\09\09"
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
%struct.led_classdev = type { i8*, i32, i32, i32, i64, void (%struct.led_classdev*, i32)*, i32 (%struct.led_classdev*, i32)*, i32 (%struct.led_classdev*)*, i32 (%struct.led_classdev*, i64*, i64*)*, i32 (%struct.led_classdev*, %struct.led_pattern*, i32, i32)*, i32 (%struct.led_classdev*)*, %struct.device*, %struct.attribute_group**, %struct.list_head, i8*, i64, i64, %struct.timer_list, i32, i32, {}*, %struct.work_struct, i32, %struct.mutex }
%struct.led_pattern = type { i32, i32 }
%struct.led_init_data = type { %struct.fwnode_handle*, i8*, i8*, i8 }

@.str = private unnamed_addr constant [5 x i8] c"leds\00", align 1
@leds_class = internal global %struct.class* null, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [33 x i8] c"Mandatory device name is missing\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"linux,default-trigger\00", align 1
@led_classdev_register_ext.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2098
@.str.3 = private unnamed_addr constant [22 x i8] c"&led_cdev->led_access\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Led %s renamed to %s due to name collision\00", align 1
@leds_list_lock = external dso_local global %struct.rw_semaphore, align 8
@leds_list = external dso_local global %struct.list_head, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"drivers/leds/led-class.c\00", align 1
@__UNIQUE_ID___addressable_leds_init164 = internal global i8* bitcast (i32 ()* @leds_init to i8*), section ".discard.addressable", align 8, !dbg !2110
@__exitcall_leds_exit = internal global void ()* @leds_exit, section ".exitcall.exit", align 8, !dbg !2112
@__UNIQUE_ID_author165 = internal constant [43 x i8] c"led_class.author=John Lenz, Richard Purdie\00", section ".modinfo", align 1, !dbg !2119
@__UNIQUE_ID_file166 = internal constant [38 x i8] c"led_class.file=drivers/leds/led-class\00", section ".modinfo", align 1, !dbg !2124
@__UNIQUE_ID_license167 = internal constant [22 x i8] c"led_class.license=GPL\00", section ".modinfo", align 1, !dbg !2129
@__UNIQUE_ID_description168 = internal constant [42 x i8] c"led_class.description=LED Class Interface\00", section ".modinfo", align 1, !dbg !2134
@.str.7 = private unnamed_addr constant [6 x i8] c"%s_%u\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 8
@leds_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2139
@leds_class_dev_pm_ops = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* @led_suspend, i32 (%struct.device*)* @led_resume, i32 (%struct.device*)* @led_suspend, i32 (%struct.device*)* @led_resume, i32 (%struct.device*)* @led_suspend, i32 (%struct.device*)* @led_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null }, align 8, !dbg !2144
@led_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @led_group, %struct.attribute_group* null], align 16, !dbg !2146
@led_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([3 x %struct.attribute*], [3 x %struct.attribute*]* @led_class_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2149
@led_class_attrs = internal global [3 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_brightness, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_max_brightness, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2151
@dev_attr_brightness = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @brightness_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @brightness_store }, align 8, !dbg !2154
@dev_attr_max_brightness = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @max_brightness_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2168
@.str.8 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"max_brightness\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (void ()* @leds_exit to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_leds_init164 to i8*), i8* bitcast (void ()** @__exitcall_leds_exit to i8*), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__UNIQUE_ID_author165, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__UNIQUE_ID_file166, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__UNIQUE_ID_license167, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__UNIQUE_ID_description168, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @led_classdev_suspend(%struct.led_classdev* %led_cdev) #0 !dbg !2175 {
entry:
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !2176, metadata !DIExpression()), !dbg !2177
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2178
  %flags = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %0, i32 0, i32 3, !dbg !2179
  %1 = load i32, i32* %flags, align 8, !dbg !2180
  %conv = sext i32 %1 to i64, !dbg !2180
  %or = or i64 %conv, 1, !dbg !2180
  %conv1 = trunc i64 %or to i32, !dbg !2180
  store i32 %conv1, i32* %flags, align 8, !dbg !2180
  %2 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2181
  call void @led_set_brightness_nopm(%struct.led_classdev* %2, i32 0) #5, !dbg !2182
  %3 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2183
  %set_brightness_work = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %3, i32 0, i32 21, !dbg !2184
  %call = call zeroext i1 @flush_work(%struct.work_struct* %set_brightness_work) #5, !dbg !2185
  ret void, !dbg !2186
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @led_set_brightness_nopm(%struct.led_classdev*, i32) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @flush_work(%struct.work_struct*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @led_classdev_resume(%struct.led_classdev* %led_cdev) #0 !dbg !2187 {
entry:
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !2188, metadata !DIExpression()), !dbg !2189
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2190
  %1 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2191
  %brightness = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %1, i32 0, i32 1, !dbg !2192
  %2 = load i32, i32* %brightness, align 8, !dbg !2192
  call void @led_set_brightness_nopm(%struct.led_classdev* %0, i32 %2) #5, !dbg !2193
  %3 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2194
  %flash_resume = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %3, i32 0, i32 20, !dbg !2196
  %flash_resume1 = bitcast {}** %flash_resume to void (%struct.led_classdev*)**, !dbg !2196
  %4 = load void (%struct.led_classdev*)*, void (%struct.led_classdev*)** %flash_resume1, align 8, !dbg !2196
  %tobool = icmp ne void (%struct.led_classdev*)* %4, null, !dbg !2194
  br i1 %tobool, label %if.then, label %if.end, !dbg !2197

if.then:                                          ; preds = %entry
  %5 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2198
  %flash_resume2 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %5, i32 0, i32 20, !dbg !2199
  %flash_resume3 = bitcast {}** %flash_resume2 to void (%struct.led_classdev*)**, !dbg !2199
  %6 = load void (%struct.led_classdev*)*, void (%struct.led_classdev*)** %flash_resume3, align 8, !dbg !2199
  %7 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2200
  call void %6(%struct.led_classdev* %7) #5, !dbg !2198
  br label %if.end, !dbg !2198

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2201
  %flags = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %8, i32 0, i32 3, !dbg !2202
  %9 = load i32, i32* %flags, align 8, !dbg !2203
  %conv = sext i32 %9 to i64, !dbg !2203
  %and = and i64 %conv, -2, !dbg !2203
  %conv4 = trunc i64 %and to i32, !dbg !2203
  store i32 %conv4, i32* %flags, align 8, !dbg !2203
  ret void, !dbg !2204
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.led_classdev* @of_led_get(%struct.device_node* %np, i32 %index) #0 !dbg !2205 {
entry:
  %retval = alloca %struct.led_classdev*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %index.addr = alloca i32, align 4
  %led_dev = alloca %struct.device*, align 8
  %led_cdev = alloca %struct.led_classdev*, align 8
  %led_node = alloca %struct.device_node*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2208, metadata !DIExpression()), !dbg !2209
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !2210, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.declare(metadata %struct.device** %led_dev, metadata !2212, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev, metadata !2214, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.declare(metadata %struct.device_node** %led_node, metadata !2216, metadata !DIExpression()), !dbg !2217
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2218
  %1 = load i32, i32* %index.addr, align 4, !dbg !2219
  %call = call %struct.device_node* @of_parse_phandle(%struct.device_node* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %1) #5, !dbg !2220
  store %struct.device_node* %call, %struct.device_node** %led_node, align 8, !dbg !2221
  %2 = load %struct.device_node*, %struct.device_node** %led_node, align 8, !dbg !2222
  %tobool = icmp ne %struct.device_node* %2, null, !dbg !2222
  br i1 %tobool, label %if.end, label %if.then, !dbg !2224

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -2) #5, !dbg !2225
  %3 = bitcast i8* %call1 to %struct.led_classdev*, !dbg !2225
  store %struct.led_classdev* %3, %struct.led_classdev** %retval, align 8, !dbg !2226
  br label %return, !dbg !2226

if.end:                                           ; preds = %entry
  %4 = load %struct.class*, %struct.class** @leds_class, align 8, !dbg !2227
  %5 = load %struct.device_node*, %struct.device_node** %led_node, align 8, !dbg !2228
  %call2 = call %struct.device* @class_find_device_by_of_node(%struct.class* %4, %struct.device_node* %5) #5, !dbg !2229
  store %struct.device* %call2, %struct.device** %led_dev, align 8, !dbg !2230
  %6 = load %struct.device_node*, %struct.device_node** %led_node, align 8, !dbg !2231
  call void @of_node_put(%struct.device_node* %6) #5, !dbg !2232
  %7 = load %struct.device*, %struct.device** %led_dev, align 8, !dbg !2233
  %tobool3 = icmp ne %struct.device* %7, null, !dbg !2233
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !2235

if.then4:                                         ; preds = %if.end
  %call5 = call i8* @ERR_PTR(i64 -517) #5, !dbg !2236
  %8 = bitcast i8* %call5 to %struct.led_classdev*, !dbg !2236
  store %struct.led_classdev* %8, %struct.led_classdev** %retval, align 8, !dbg !2237
  br label %return, !dbg !2237

if.end6:                                          ; preds = %if.end
  %9 = load %struct.device*, %struct.device** %led_dev, align 8, !dbg !2238
  %call7 = call i8* @dev_get_drvdata(%struct.device* %9) #5, !dbg !2239
  %10 = bitcast i8* %call7 to %struct.led_classdev*, !dbg !2239
  store %struct.led_classdev* %10, %struct.led_classdev** %led_cdev, align 8, !dbg !2240
  %11 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2241
  %dev = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %11, i32 0, i32 11, !dbg !2243
  %12 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2243
  %parent = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 1, !dbg !2244
  %13 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2244
  %driver = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 6, !dbg !2245
  %14 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2245
  %owner = getelementptr inbounds %struct.device_driver, %struct.device_driver* %14, i32 0, i32 2, !dbg !2246
  %15 = load %struct.module*, %struct.module** %owner, align 8, !dbg !2246
  %call8 = call zeroext i1 @try_module_get(%struct.module* %15) #5, !dbg !2247
  br i1 %call8, label %if.end11, label %if.then9, !dbg !2248

if.then9:                                         ; preds = %if.end6
  %call10 = call i8* @ERR_PTR(i64 -19) #5, !dbg !2249
  %16 = bitcast i8* %call10 to %struct.led_classdev*, !dbg !2249
  store %struct.led_classdev* %16, %struct.led_classdev** %retval, align 8, !dbg !2250
  br label %return, !dbg !2250

if.end11:                                         ; preds = %if.end6
  %17 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2251
  store %struct.led_classdev* %17, %struct.led_classdev** %retval, align 8, !dbg !2252
  br label %return, !dbg !2252

return:                                           ; preds = %if.end11, %if.then9, %if.then4, %if.then
  %18 = load %struct.led_classdev*, %struct.led_classdev** %retval, align 8, !dbg !2253
  ret %struct.led_classdev* %18, !dbg !2253
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !2254 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !2258, metadata !DIExpression()), !dbg !2259
  %0 = load i64, i64* %error.addr, align 8, !dbg !2260
  %1 = inttoptr i64 %0 to i8*, !dbg !2261
  ret i8* %1, !dbg !2262
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device* @class_find_device_by_of_node(%struct.class* %class, %struct.device_node* %np) #0 !dbg !2263 {
entry:
  %class.addr = alloca %struct.class*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  store %struct.class* %class, %struct.class** %class.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class** %class.addr, metadata !2268, metadata !DIExpression()), !dbg !2269
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2270, metadata !DIExpression()), !dbg !2271
  %0 = load %struct.class*, %struct.class** %class.addr, align 8, !dbg !2272
  %1 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2273
  %2 = bitcast %struct.device_node* %1 to i8*, !dbg !2273
  %call = call %struct.device* @class_find_device(%struct.class* %0, %struct.device* null, i8* %2, i32 (%struct.device*, i8*)* @device_match_of_node) #5, !dbg !2274
  ret %struct.device* %call, !dbg !2275
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #0 !dbg !2276 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !2279, metadata !DIExpression()), !dbg !2280
  ret void, !dbg !2281
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !2282 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2285, metadata !DIExpression()), !dbg !2286
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2287
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !2288
  %1 = load i8*, i8** %driver_data, align 8, !dbg !2288
  ret i8* %1, !dbg !2289
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @try_module_get(%struct.module* %module) #0 !dbg !2290 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !2294, metadata !DIExpression()), !dbg !2295
  ret i1 true, !dbg !2296
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @led_put(%struct.led_classdev* %led_cdev) #0 !dbg !2297 {
entry:
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !2298, metadata !DIExpression()), !dbg !2299
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2300
  %dev = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %0, i32 0, i32 11, !dbg !2301
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2301
  %parent = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 1, !dbg !2302
  %2 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2302
  %driver = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 6, !dbg !2303
  %3 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2303
  %owner = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 2, !dbg !2304
  %4 = load %struct.module*, %struct.module** %owner, align 8, !dbg !2304
  call void @module_put(%struct.module* %4) #5, !dbg !2305
  ret void, !dbg !2306
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @module_put(%struct.module* %module) #0 !dbg !2307 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !2310, metadata !DIExpression()), !dbg !2311
  ret void, !dbg !2312
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.led_classdev* @devm_of_led_get(%struct.device* %dev, i32 %index) #0 !dbg !2313 {
entry:
  %retval = alloca %struct.led_classdev*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %index.addr = alloca i32, align 4
  %led = alloca %struct.led_classdev*, align 8
  %dr = alloca %struct.led_classdev**, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2316, metadata !DIExpression()), !dbg !2317
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !2318, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led, metadata !2320, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.declare(metadata %struct.led_classdev*** %dr, metadata !2322, metadata !DIExpression()), !dbg !2323
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2324
  %tobool = icmp ne %struct.device* %0, null, !dbg !2324
  br i1 %tobool, label %if.end, label %if.then, !dbg !2326

if.then:                                          ; preds = %entry
  %call = call i8* @ERR_PTR(i64 -22) #5, !dbg !2327
  %1 = bitcast i8* %call to %struct.led_classdev*, !dbg !2327
  store %struct.led_classdev* %1, %struct.led_classdev** %retval, align 8, !dbg !2328
  br label %return, !dbg !2328

if.end:                                           ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2329
  %of_node = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 23, !dbg !2331
  %3 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2331
  %tobool1 = icmp ne %struct.device_node* %3, null, !dbg !2329
  br i1 %tobool1, label %if.end4, label %if.then2, !dbg !2332

if.then2:                                         ; preds = %if.end
  %call3 = call i8* @ERR_PTR(i64 -524) #5, !dbg !2333
  %4 = bitcast i8* %call3 to %struct.led_classdev*, !dbg !2333
  store %struct.led_classdev* %4, %struct.led_classdev** %retval, align 8, !dbg !2334
  br label %return, !dbg !2334

if.end4:                                          ; preds = %if.end
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2335
  %of_node5 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 23, !dbg !2336
  %6 = load %struct.device_node*, %struct.device_node** %of_node5, align 8, !dbg !2336
  %7 = load i32, i32* %index.addr, align 4, !dbg !2337
  %call6 = call %struct.led_classdev* @of_led_get(%struct.device_node* %6, i32 %7) #5, !dbg !2338
  store %struct.led_classdev* %call6, %struct.led_classdev** %led, align 8, !dbg !2339
  %8 = load %struct.led_classdev*, %struct.led_classdev** %led, align 8, !dbg !2340
  %9 = bitcast %struct.led_classdev* %8 to i8*, !dbg !2340
  %call7 = call zeroext i1 @IS_ERR(i8* %9) #5, !dbg !2342
  br i1 %call7, label %if.then8, label %if.end9, !dbg !2343

if.then8:                                         ; preds = %if.end4
  %10 = load %struct.led_classdev*, %struct.led_classdev** %led, align 8, !dbg !2344
  store %struct.led_classdev* %10, %struct.led_classdev** %retval, align 8, !dbg !2345
  br label %return, !dbg !2345

if.end9:                                          ; preds = %if.end4
  %call10 = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_led_release, i64 8, i32 3264) #5, !dbg !2346
  %11 = bitcast i8* %call10 to %struct.led_classdev**, !dbg !2346
  store %struct.led_classdev** %11, %struct.led_classdev*** %dr, align 8, !dbg !2347
  %12 = load %struct.led_classdev**, %struct.led_classdev*** %dr, align 8, !dbg !2348
  %tobool11 = icmp ne %struct.led_classdev** %12, null, !dbg !2348
  br i1 %tobool11, label %if.end14, label %if.then12, !dbg !2350

if.then12:                                        ; preds = %if.end9
  %13 = load %struct.led_classdev*, %struct.led_classdev** %led, align 8, !dbg !2351
  call void @led_put(%struct.led_classdev* %13) #5, !dbg !2353
  %call13 = call i8* @ERR_PTR(i64 -12) #5, !dbg !2354
  %14 = bitcast i8* %call13 to %struct.led_classdev*, !dbg !2354
  store %struct.led_classdev* %14, %struct.led_classdev** %retval, align 8, !dbg !2355
  br label %return, !dbg !2355

if.end14:                                         ; preds = %if.end9
  %15 = load %struct.led_classdev*, %struct.led_classdev** %led, align 8, !dbg !2356
  %16 = load %struct.led_classdev**, %struct.led_classdev*** %dr, align 8, !dbg !2357
  store %struct.led_classdev* %15, %struct.led_classdev** %16, align 8, !dbg !2358
  %17 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2359
  %18 = load %struct.led_classdev**, %struct.led_classdev*** %dr, align 8, !dbg !2360
  %19 = bitcast %struct.led_classdev** %18 to i8*, !dbg !2360
  call void @devres_add(%struct.device* %17, i8* %19) #5, !dbg !2361
  %20 = load %struct.led_classdev*, %struct.led_classdev** %led, align 8, !dbg !2362
  store %struct.led_classdev* %20, %struct.led_classdev** %retval, align 8, !dbg !2363
  br label %return, !dbg !2363

return:                                           ; preds = %if.end14, %if.then12, %if.then8, %if.then2, %if.then
  %21 = load %struct.led_classdev*, %struct.led_classdev** %retval, align 8, !dbg !2364
  ret %struct.led_classdev* %21, !dbg !2364
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !2365 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2368, metadata !DIExpression()), !dbg !2369
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2370
  %1 = ptrtoint i8* %0 to i64, !dbg !2370
  %2 = inttoptr i64 %1 to i8*, !dbg !2370
  %3 = ptrtoint i8* %2 to i64, !dbg !2370
  %cmp = icmp uge i64 %3, -4095, !dbg !2370
  %lnot = xor i1 %cmp, true, !dbg !2370
  %lnot1 = xor i1 %lnot, true, !dbg !2370
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2370
  %conv = sext i32 %lnot.ext to i64, !dbg !2370
  %tobool = icmp ne i64 %conv, 0, !dbg !2370
  ret i1 %tobool, !dbg !2371
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devres_alloc(void (%struct.device*, i8*)* %release, i64 %size, i32 %gfp) #0 !dbg !2372 {
entry:
  %release.addr = alloca void (%struct.device*, i8*)*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store void (%struct.device*, i8*)* %release, void (%struct.device*, i8*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr, metadata !2379, metadata !DIExpression()), !dbg !2380
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2381, metadata !DIExpression()), !dbg !2382
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2383, metadata !DIExpression()), !dbg !2384
  %0 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr, align 8, !dbg !2385
  %1 = load i64, i64* %size.addr, align 8, !dbg !2386
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2387
  %call = call noalias i8* @devres_alloc_node(void (%struct.device*, i8*)* %0, i64 %1, i32 %2, i32 -1) #5, !dbg !2388
  ret i8* %call, !dbg !2389
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_led_release(%struct.device* %dev, i8* %res) #0 !dbg !2390 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %p = alloca %struct.led_classdev**, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2391, metadata !DIExpression()), !dbg !2392
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !2393, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.declare(metadata %struct.led_classdev*** %p, metadata !2395, metadata !DIExpression()), !dbg !2396
  %0 = load i8*, i8** %res.addr, align 8, !dbg !2397
  %1 = bitcast i8* %0 to %struct.led_classdev**, !dbg !2397
  store %struct.led_classdev** %1, %struct.led_classdev*** %p, align 8, !dbg !2396
  %2 = load %struct.led_classdev**, %struct.led_classdev*** %p, align 8, !dbg !2398
  %3 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8, !dbg !2399
  call void @led_put(%struct.led_classdev* %3) #5, !dbg !2400
  ret void, !dbg !2401
}

; Function Attrs: noredzone
declare dso_local void @devres_add(%struct.device*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @led_classdev_register_ext(%struct.device* %parent, %struct.led_classdev* %led_cdev, %struct.led_init_data* %init_data) #0 !dbg !2100 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca %struct.device*, align 8
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  %init_data.addr = alloca %struct.led_init_data*, align 8
  %composed_name = alloca [64 x i8], align 16
  %final_name = alloca [64 x i8], align 16
  %proposed_name = alloca i8*, align 8
  %ret = alloca i32, align 4
  %__to_of_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.device_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp41 = alloca %struct.device_node*, align 8
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !2402, metadata !DIExpression()), !dbg !2403
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !2404, metadata !DIExpression()), !dbg !2405
  store %struct.led_init_data* %init_data, %struct.led_init_data** %init_data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_init_data** %init_data.addr, metadata !2406, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.declare(metadata [64 x i8]* %composed_name, metadata !2408, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.declare(metadata [64 x i8]* %final_name, metadata !2411, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.declare(metadata i8** %proposed_name, metadata !2413, metadata !DIExpression()), !dbg !2414
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %composed_name, i64 0, i64 0, !dbg !2415
  store i8* %arraydecay, i8** %proposed_name, align 8, !dbg !2414
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2416, metadata !DIExpression()), !dbg !2417
  %0 = load %struct.led_init_data*, %struct.led_init_data** %init_data.addr, align 8, !dbg !2418
  %tobool = icmp ne %struct.led_init_data* %0, null, !dbg !2418
  br i1 %tobool, label %if.then, label %if.else, !dbg !2420

if.then:                                          ; preds = %entry
  %1 = load %struct.led_init_data*, %struct.led_init_data** %init_data.addr, align 8, !dbg !2421
  %devname_mandatory = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %1, i32 0, i32 3, !dbg !2424
  %2 = load i8, i8* %devname_mandatory, align 8, !dbg !2424
  %tobool1 = trunc i8 %2 to i1, !dbg !2424
  br i1 %tobool1, label %land.lhs.true, label %if.end, !dbg !2425

land.lhs.true:                                    ; preds = %if.then
  %3 = load %struct.led_init_data*, %struct.led_init_data** %init_data.addr, align 8, !dbg !2426
  %devicename = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %3, i32 0, i32 2, !dbg !2427
  %4 = load i8*, i8** %devicename, align 8, !dbg !2427
  %tobool2 = icmp ne i8* %4, null, !dbg !2426
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !2428

if.then3:                                         ; preds = %land.lhs.true
  %5 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !2429
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2429
  store i32 -22, i32* %retval, align 4, !dbg !2431
  br label %return, !dbg !2431

if.end:                                           ; preds = %land.lhs.true, %if.then
  %6 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !2432
  %7 = load %struct.led_init_data*, %struct.led_init_data** %init_data.addr, align 8, !dbg !2433
  %arraydecay4 = getelementptr inbounds [64 x i8], [64 x i8]* %composed_name, i64 0, i64 0, !dbg !2434
  %call = call i32 @led_compose_name(%struct.device* %6, %struct.led_init_data* %7, i8* %arraydecay4) #5, !dbg !2435
  store i32 %call, i32* %ret, align 4, !dbg !2436
  %8 = load i32, i32* %ret, align 4, !dbg !2437
  %cmp = icmp slt i32 %8, 0, !dbg !2439
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !2440

if.then5:                                         ; preds = %if.end
  %9 = load i32, i32* %ret, align 4, !dbg !2441
  store i32 %9, i32* %retval, align 4, !dbg !2442
  br label %return, !dbg !2442

if.end6:                                          ; preds = %if.end
  %10 = load %struct.led_init_data*, %struct.led_init_data** %init_data.addr, align 8, !dbg !2443
  %fwnode = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %10, i32 0, i32 0, !dbg !2445
  %11 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !2445
  %tobool7 = icmp ne %struct.fwnode_handle* %11, null, !dbg !2443
  br i1 %tobool7, label %if.then8, label %if.end11, !dbg !2446

if.then8:                                         ; preds = %if.end6
  %12 = load %struct.led_init_data*, %struct.led_init_data** %init_data.addr, align 8, !dbg !2447
  %fwnode9 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %12, i32 0, i32 0, !dbg !2448
  %13 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode9, align 8, !dbg !2448
  %14 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2449
  %default_trigger = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %14, i32 0, i32 14, !dbg !2450
  %call10 = call i32 @fwnode_property_read_string(%struct.fwnode_handle* %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %default_trigger) #5, !dbg !2451
  br label %if.end11, !dbg !2451

if.end11:                                         ; preds = %if.then8, %if.end6
  br label %if.end12, !dbg !2452

if.else:                                          ; preds = %entry
  %15 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2453
  %name = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %15, i32 0, i32 0, !dbg !2455
  %16 = load i8*, i8** %name, align 8, !dbg !2455
  store i8* %16, i8** %proposed_name, align 8, !dbg !2456
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end11
  %17 = load i8*, i8** %proposed_name, align 8, !dbg !2457
  %arraydecay13 = getelementptr inbounds [64 x i8], [64 x i8]* %final_name, i64 0, i64 0, !dbg !2458
  %call14 = call i32 @led_classdev_next_name(i8* %17, i8* %arraydecay13, i64 64) #5, !dbg !2459
  store i32 %call14, i32* %ret, align 4, !dbg !2460
  %18 = load i32, i32* %ret, align 4, !dbg !2461
  %cmp15 = icmp slt i32 %18, 0, !dbg !2463
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2464

if.then16:                                        ; preds = %if.end12
  %19 = load i32, i32* %ret, align 4, !dbg !2465
  store i32 %19, i32* %retval, align 4, !dbg !2466
  br label %return, !dbg !2466

if.end17:                                         ; preds = %if.end12
  br label %do.body, !dbg !2467

do.body:                                          ; preds = %if.end17
  %20 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2468
  %led_access = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %20, i32 0, i32 23, !dbg !2468
  call void @__mutex_init(%struct.mutex* %led_access, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), %struct.lock_class_key* @led_classdev_register_ext.__key) #5, !dbg !2468
  br label %do.end, !dbg !2468

do.end:                                           ; preds = %do.body
  %21 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2470
  %led_access18 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %21, i32 0, i32 23, !dbg !2471
  call void @mutex_lock(%struct.mutex* %led_access18) #5, !dbg !2472
  %22 = load %struct.class*, %struct.class** @leds_class, align 8, !dbg !2473
  %23 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !2474
  %24 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2475
  %25 = bitcast %struct.led_classdev* %24 to i8*, !dbg !2475
  %26 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2476
  %groups = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %26, i32 0, i32 12, !dbg !2477
  %27 = load %struct.attribute_group**, %struct.attribute_group*** %groups, align 8, !dbg !2477
  %arraydecay19 = getelementptr inbounds [64 x i8], [64 x i8]* %final_name, i64 0, i64 0, !dbg !2478
  %call20 = call %struct.device* (%struct.class*, %struct.device*, i32, i8*, %struct.attribute_group**, i8*, ...) @device_create_with_groups(%struct.class* %22, %struct.device* %23, i32 0, i8* %25, %struct.attribute_group** %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %arraydecay19) #5, !dbg !2479
  %28 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2480
  %dev = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %28, i32 0, i32 11, !dbg !2481
  store %struct.device* %call20, %struct.device** %dev, align 8, !dbg !2482
  %29 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2483
  %dev21 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %29, i32 0, i32 11, !dbg !2485
  %30 = load %struct.device*, %struct.device** %dev21, align 8, !dbg !2485
  %31 = bitcast %struct.device* %30 to i8*, !dbg !2483
  %call22 = call zeroext i1 @IS_ERR(i8* %31) #5, !dbg !2486
  br i1 %call22, label %if.then23, label %if.end27, !dbg !2487

if.then23:                                        ; preds = %do.end
  %32 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2488
  %led_access24 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %32, i32 0, i32 23, !dbg !2490
  call void @mutex_unlock(%struct.mutex* %led_access24) #5, !dbg !2491
  %33 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2492
  %dev25 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %33, i32 0, i32 11, !dbg !2493
  %34 = load %struct.device*, %struct.device** %dev25, align 8, !dbg !2493
  %35 = bitcast %struct.device* %34 to i8*, !dbg !2492
  %call26 = call i64 @PTR_ERR(i8* %35) #5, !dbg !2494
  %conv = trunc i64 %call26 to i32, !dbg !2494
  store i32 %conv, i32* %retval, align 4, !dbg !2495
  br label %return, !dbg !2495

if.end27:                                         ; preds = %do.end
  %36 = load %struct.led_init_data*, %struct.led_init_data** %init_data.addr, align 8, !dbg !2496
  %tobool28 = icmp ne %struct.led_init_data* %36, null, !dbg !2496
  br i1 %tobool28, label %land.lhs.true29, label %if.end43, !dbg !2498

land.lhs.true29:                                  ; preds = %if.end27
  %37 = load %struct.led_init_data*, %struct.led_init_data** %init_data.addr, align 8, !dbg !2499
  %fwnode30 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %37, i32 0, i32 0, !dbg !2500
  %38 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode30, align 8, !dbg !2500
  %tobool31 = icmp ne %struct.fwnode_handle* %38, null, !dbg !2499
  br i1 %tobool31, label %if.then32, label %if.end43, !dbg !2501

if.then32:                                        ; preds = %land.lhs.true29
  %39 = load %struct.led_init_data*, %struct.led_init_data** %init_data.addr, align 8, !dbg !2502
  %fwnode33 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %39, i32 0, i32 0, !dbg !2504
  %40 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode33, align 8, !dbg !2504
  %41 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2505
  %dev34 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %41, i32 0, i32 11, !dbg !2506
  %42 = load %struct.device*, %struct.device** %dev34, align 8, !dbg !2506
  %fwnode35 = getelementptr inbounds %struct.device, %struct.device* %42, i32 0, i32 24, !dbg !2507
  store %struct.fwnode_handle* %40, %struct.fwnode_handle** %fwnode35, align 8, !dbg !2508
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_of_node_fwnode, metadata !2509, metadata !DIExpression()), !dbg !2511
  %43 = load %struct.led_init_data*, %struct.led_init_data** %init_data.addr, align 8, !dbg !2511
  %fwnode36 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %43, i32 0, i32 0, !dbg !2511
  %44 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode36, align 8, !dbg !2511
  store %struct.fwnode_handle* %44, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !2511
  %45 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !2511
  %call37 = call zeroext i1 @is_of_node(%struct.fwnode_handle* %45) #5, !dbg !2511
  br i1 %call37, label %cond.true, label %cond.false, !dbg !2511

cond.true:                                        ; preds = %if.then32
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2512, metadata !DIExpression()), !dbg !2514
  %46 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !2514
  %47 = bitcast %struct.fwnode_handle* %46 to i8*, !dbg !2514
  store i8* %47, i8** %__mptr, align 8, !dbg !2514
  br label %do.body39, !dbg !2514

do.body39:                                        ; preds = %cond.true
  br label %do.end40, !dbg !2515

do.end40:                                         ; preds = %do.body39
  %48 = load i8*, i8** %__mptr, align 8, !dbg !2514
  %add.ptr = getelementptr i8, i8* %48, i64 -24, !dbg !2514
  %49 = bitcast i8* %add.ptr to %struct.device_node*, !dbg !2514
  store %struct.device_node* %49, %struct.device_node** %tmp41, align 8, !dbg !2515
  %50 = load %struct.device_node*, %struct.device_node** %tmp41, align 8, !dbg !2514
  br label %cond.end, !dbg !2511

cond.false:                                       ; preds = %if.then32
  br label %cond.end, !dbg !2511

cond.end:                                         ; preds = %cond.false, %do.end40
  %cond = phi %struct.device_node* [ %50, %do.end40 ], [ null, %cond.false ], !dbg !2511
  store %struct.device_node* %cond, %struct.device_node** %tmp, align 8, !dbg !2511
  %51 = load %struct.device_node*, %struct.device_node** %tmp, align 8, !dbg !2511
  %52 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2517
  %dev42 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %52, i32 0, i32 11, !dbg !2518
  %53 = load %struct.device*, %struct.device** %dev42, align 8, !dbg !2518
  %of_node = getelementptr inbounds %struct.device, %struct.device* %53, i32 0, i32 23, !dbg !2519
  store %struct.device_node* %51, %struct.device_node** %of_node, align 8, !dbg !2520
  br label %if.end43, !dbg !2521

if.end43:                                         ; preds = %cond.end, %land.lhs.true29, %if.end27
  %54 = load i32, i32* %ret, align 4, !dbg !2522
  %tobool44 = icmp ne i32 %54, 0, !dbg !2522
  br i1 %tobool44, label %if.then45, label %if.end48, !dbg !2524

if.then45:                                        ; preds = %if.end43
  %55 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !2525
  %56 = load i8*, i8** %proposed_name, align 8, !dbg !2525
  %57 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2525
  %dev46 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %57, i32 0, i32 11, !dbg !2525
  %58 = load %struct.device*, %struct.device** %dev46, align 8, !dbg !2525
  %call47 = call i8* @dev_name(%struct.device* %58) #5, !dbg !2525
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %55, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8* %56, i8* %call47) #6, !dbg !2525
  br label %if.end48, !dbg !2525

if.end48:                                         ; preds = %if.then45, %if.end43
  %59 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2526
  %flags = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %59, i32 0, i32 3, !dbg !2528
  %60 = load i32, i32* %flags, align 8, !dbg !2528
  %conv49 = sext i32 %60 to i64, !dbg !2526
  %and = and i64 %conv49, 2097152, !dbg !2529
  %tobool50 = icmp ne i64 %and, 0, !dbg !2529
  br i1 %tobool50, label %if.then51, label %if.end59, !dbg !2530

if.then51:                                        ; preds = %if.end48
  %61 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2531
  %call52 = call i32 @led_add_brightness_hw_changed(%struct.led_classdev* %61) #5, !dbg !2533
  store i32 %call52, i32* %ret, align 4, !dbg !2534
  %62 = load i32, i32* %ret, align 4, !dbg !2535
  %tobool53 = icmp ne i32 %62, 0, !dbg !2535
  br i1 %tobool53, label %if.then54, label %if.end58, !dbg !2537

if.then54:                                        ; preds = %if.then51
  %63 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2538
  %dev55 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %63, i32 0, i32 11, !dbg !2540
  %64 = load %struct.device*, %struct.device** %dev55, align 8, !dbg !2540
  call void @device_unregister(%struct.device* %64) #5, !dbg !2541
  %65 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2542
  %dev56 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %65, i32 0, i32 11, !dbg !2543
  store %struct.device* null, %struct.device** %dev56, align 8, !dbg !2544
  %66 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2545
  %led_access57 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %66, i32 0, i32 23, !dbg !2546
  call void @mutex_unlock(%struct.mutex* %led_access57) #5, !dbg !2547
  %67 = load i32, i32* %ret, align 4, !dbg !2548
  store i32 %67, i32* %retval, align 4, !dbg !2549
  br label %return, !dbg !2549

if.end58:                                         ; preds = %if.then51
  br label %if.end59, !dbg !2550

if.end59:                                         ; preds = %if.end58, %if.end48
  %68 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2551
  %work_flags = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %68, i32 0, i32 4, !dbg !2552
  store i64 0, i64* %work_flags, align 8, !dbg !2553
  call void @down_write(%struct.rw_semaphore* @leds_list_lock) #5, !dbg !2554
  %69 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2555
  %node = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %69, i32 0, i32 13, !dbg !2556
  call void @list_add_tail(%struct.list_head* %node, %struct.list_head* @leds_list) #5, !dbg !2557
  call void @up_write(%struct.rw_semaphore* @leds_list_lock) #5, !dbg !2558
  %70 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2559
  %max_brightness = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %70, i32 0, i32 2, !dbg !2561
  %71 = load i32, i32* %max_brightness, align 4, !dbg !2561
  %tobool60 = icmp ne i32 %71, 0, !dbg !2559
  br i1 %tobool60, label %if.end63, label %if.then61, !dbg !2562

if.then61:                                        ; preds = %if.end59
  %72 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2563
  %max_brightness62 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %72, i32 0, i32 2, !dbg !2564
  store i32 255, i32* %max_brightness62, align 4, !dbg !2565
  br label %if.end63, !dbg !2563

if.end63:                                         ; preds = %if.then61, %if.end59
  %73 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2566
  %call64 = call i32 @led_update_brightness(%struct.led_classdev* %73) #5, !dbg !2567
  %74 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2568
  call void @led_init_core(%struct.led_classdev* %74) #5, !dbg !2569
  %75 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2570
  %led_access65 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %75, i32 0, i32 23, !dbg !2571
  call void @mutex_unlock(%struct.mutex* %led_access65) #5, !dbg !2572
  store i32 0, i32* %retval, align 4, !dbg !2573
  br label %return, !dbg !2573

return:                                           ; preds = %if.end63, %if.then54, %if.then23, %if.then16, %if.then5, %if.then3
  %76 = load i32, i32* %retval, align 4, !dbg !2574
  ret i32 %76, !dbg !2574
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @led_compose_name(%struct.device*, %struct.led_init_data*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @fwnode_property_read_string(%struct.fwnode_handle*, i8*, i8**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @led_classdev_next_name(i8* %init_name, i8* %name, i64 %len) #0 !dbg !2575 {
entry:
  %retval = alloca i32, align 4
  %init_name.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %dev = alloca %struct.device*, align 8
  store i8* %init_name, i8** %init_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %init_name.addr, metadata !2578, metadata !DIExpression()), !dbg !2579
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !2580, metadata !DIExpression()), !dbg !2581
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !2582, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2584, metadata !DIExpression()), !dbg !2585
  store i32 0, i32* %i, align 4, !dbg !2585
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2586, metadata !DIExpression()), !dbg !2587
  store i32 0, i32* %ret, align 4, !dbg !2587
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2588, metadata !DIExpression()), !dbg !2589
  %0 = load i8*, i8** %name.addr, align 8, !dbg !2590
  %1 = load i8*, i8** %init_name.addr, align 8, !dbg !2591
  %2 = load i64, i64* %len.addr, align 8, !dbg !2592
  %call = call i64 @strlcpy(i8* %0, i8* %1, i64 %2) #5, !dbg !2593
  br label %while.cond, !dbg !2594

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %ret, align 4, !dbg !2595
  %conv = sext i32 %3 to i64, !dbg !2595
  %4 = load i64, i64* %len.addr, align 8, !dbg !2596
  %cmp = icmp ult i64 %conv, %4, !dbg !2597
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2598

land.rhs:                                         ; preds = %while.cond
  %5 = load %struct.class*, %struct.class** @leds_class, align 8, !dbg !2599
  %6 = load i8*, i8** %name.addr, align 8, !dbg !2600
  %call2 = call %struct.device* @class_find_device_by_name(%struct.class* %5, i8* %6) #5, !dbg !2601
  store %struct.device* %call2, %struct.device** %dev, align 8, !dbg !2602
  %tobool = icmp ne %struct.device* %call2, null, !dbg !2598
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ], !dbg !2603
  br i1 %7, label %while.body, label %while.end, !dbg !2594

while.body:                                       ; preds = %land.end
  %8 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2604
  call void @put_device(%struct.device* %8) #5, !dbg !2606
  %9 = load i8*, i8** %name.addr, align 8, !dbg !2607
  %10 = load i64, i64* %len.addr, align 8, !dbg !2608
  %11 = load i8*, i8** %init_name.addr, align 8, !dbg !2609
  %12 = load i32, i32* %i, align 4, !dbg !2610
  %inc = add i32 %12, 1, !dbg !2610
  store i32 %inc, i32* %i, align 4, !dbg !2610
  %call3 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %9, i64 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %11, i32 %inc) #5, !dbg !2611
  store i32 %call3, i32* %ret, align 4, !dbg !2612
  br label %while.cond, !dbg !2594, !llvm.loop !2613

while.end:                                        ; preds = %land.end
  %13 = load i32, i32* %ret, align 4, !dbg !2615
  %conv4 = sext i32 %13 to i64, !dbg !2615
  %14 = load i64, i64* %len.addr, align 8, !dbg !2617
  %cmp5 = icmp uge i64 %conv4, %14, !dbg !2618
  br i1 %cmp5, label %if.then, label %if.end, !dbg !2619

if.then:                                          ; preds = %while.end
  store i32 -12, i32* %retval, align 4, !dbg !2620
  br label %return, !dbg !2620

if.end:                                           ; preds = %while.end
  %15 = load i32, i32* %i, align 4, !dbg !2621
  store i32 %15, i32* %retval, align 4, !dbg !2622
  br label %return, !dbg !2622

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !2623
  ret i32 %16, !dbg !2623
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local %struct.device* @device_create_with_groups(%struct.class*, %struct.device*, i32, i8*, %struct.attribute_group**, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !2624 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2627, metadata !DIExpression()), !dbg !2628
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2629
  %1 = ptrtoint i8* %0 to i64, !dbg !2630
  ret i64 %1, !dbg !2631
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @is_of_node(%struct.fwnode_handle* %fwnode) #0 !dbg !2632 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !2633, metadata !DIExpression()), !dbg !2634
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !2635
  %1 = bitcast %struct.fwnode_handle* %0 to i8*, !dbg !2635
  %call = call zeroext i1 @IS_ERR_OR_NULL(i8* %1) #5, !dbg !2636
  br i1 %call, label %land.end, label %land.rhs, !dbg !2637

land.rhs:                                         ; preds = %entry
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !2638
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %2, i32 0, i32 1, !dbg !2639
  %3 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8, !dbg !2639
  %cmp = icmp eq %struct.fwnode_operations* %3, @of_fwnode_ops, !dbg !2640
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !2641
  ret i1 %4, !dbg !2642
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !2643 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2646, metadata !DIExpression()), !dbg !2647
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2648
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !2650
  %1 = load i8*, i8** %init_name, align 8, !dbg !2650
  %tobool = icmp ne i8* %1, null, !dbg !2648
  br i1 %tobool, label %if.then, label %if.end, !dbg !2651

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2652
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !2653
  %3 = load i8*, i8** %init_name1, align 8, !dbg !2653
  store i8* %3, i8** %retval, align 8, !dbg !2654
  br label %return, !dbg !2654

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2655
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !2656
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #5, !dbg !2657
  store i8* %call, i8** %retval, align 8, !dbg !2658
  br label %return, !dbg !2658

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !2659
  ret i8* %5, !dbg !2659
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @led_add_brightness_hw_changed(%struct.led_classdev* %led_cdev) #0 !dbg !2660 {
entry:
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !2661, metadata !DIExpression()), !dbg !2662
  ret i32 0, !dbg !2663
}

; Function Attrs: noredzone
declare dso_local void @device_unregister(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @down_write(%struct.rw_semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !2664 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !2668, metadata !DIExpression()), !dbg !2669
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !2670, metadata !DIExpression()), !dbg !2671
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2672
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2673
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !2674
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !2674
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2675
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #5, !dbg !2676
  ret void, !dbg !2677
}

; Function Attrs: noredzone
declare dso_local void @up_write(%struct.rw_semaphore*) #2

; Function Attrs: noredzone
declare dso_local i32 @led_update_brightness(%struct.led_classdev*) #2

; Function Attrs: noredzone
declare dso_local void @led_init_core(%struct.led_classdev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @led_classdev_unregister(%struct.led_classdev* %led_cdev) #0 !dbg !2678 {
entry:
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !2679, metadata !DIExpression()), !dbg !2680
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2681
  %dev = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %0, i32 0, i32 11, !dbg !2683
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2683
  %2 = bitcast %struct.device* %1 to i8*, !dbg !2681
  %call = call zeroext i1 @IS_ERR_OR_NULL(i8* %2) #5, !dbg !2684
  br i1 %call, label %if.then, label %if.end, !dbg !2685

if.then:                                          ; preds = %entry
  br label %return, !dbg !2686

if.end:                                           ; preds = %entry
  %3 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2687
  %flags = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %3, i32 0, i32 3, !dbg !2688
  %4 = load i32, i32* %flags, align 8, !dbg !2689
  %conv = sext i32 %4 to i64, !dbg !2689
  %or = or i64 %conv, 2, !dbg !2689
  %conv1 = trunc i64 %or to i32, !dbg !2689
  store i32 %conv1, i32* %flags, align 8, !dbg !2689
  %5 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2690
  call void @led_stop_software_blink(%struct.led_classdev* %5) #5, !dbg !2691
  %6 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2692
  call void @led_set_brightness(%struct.led_classdev* %6, i32 0) #5, !dbg !2693
  %7 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2694
  %set_brightness_work = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %7, i32 0, i32 21, !dbg !2695
  %call2 = call zeroext i1 @flush_work(%struct.work_struct* %set_brightness_work) #5, !dbg !2696
  %8 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2697
  %flags3 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %8, i32 0, i32 3, !dbg !2699
  %9 = load i32, i32* %flags3, align 8, !dbg !2699
  %conv4 = sext i32 %9 to i64, !dbg !2697
  %and = and i64 %conv4, 2097152, !dbg !2700
  %tobool = icmp ne i64 %and, 0, !dbg !2700
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !2701

if.then5:                                         ; preds = %if.end
  %10 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2702
  call void @led_remove_brightness_hw_changed(%struct.led_classdev* %10) #5, !dbg !2703
  br label %if.end6, !dbg !2703

if.end6:                                          ; preds = %if.then5, %if.end
  %11 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2704
  %dev7 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %11, i32 0, i32 11, !dbg !2705
  %12 = load %struct.device*, %struct.device** %dev7, align 8, !dbg !2705
  call void @device_unregister(%struct.device* %12) #5, !dbg !2706
  call void @down_write(%struct.rw_semaphore* @leds_list_lock) #5, !dbg !2707
  %13 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2708
  %node = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %13, i32 0, i32 13, !dbg !2709
  call void @list_del(%struct.list_head* %node) #5, !dbg !2710
  call void @up_write(%struct.rw_semaphore* @leds_list_lock) #5, !dbg !2711
  %14 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2712
  %led_access = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %14, i32 0, i32 23, !dbg !2713
  call void @mutex_destroy(%struct.mutex* %led_access) #5, !dbg !2714
  br label %return, !dbg !2715

return:                                           ; preds = %if.end6, %if.then
  ret void, !dbg !2715
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(i8* %ptr) #0 !dbg !2716 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2717, metadata !DIExpression()), !dbg !2718
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2719
  %tobool = icmp ne i8* %0, null, !dbg !2719
  %lnot = xor i1 %tobool, true, !dbg !2719
  %lnot1 = xor i1 %lnot, true, !dbg !2719
  %lnot2 = xor i1 %lnot1, true, !dbg !2719
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2719
  %conv = sext i32 %lnot.ext to i64, !dbg !2719
  %tobool3 = icmp ne i64 %conv, 0, !dbg !2719
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !2720

lor.rhs:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !2721
  %2 = ptrtoint i8* %1 to i64, !dbg !2721
  %3 = inttoptr i64 %2 to i8*, !dbg !2721
  %4 = ptrtoint i8* %3 to i64, !dbg !2721
  %cmp = icmp uge i64 %4, -4095, !dbg !2721
  %lnot5 = xor i1 %cmp, true, !dbg !2721
  %lnot7 = xor i1 %lnot5, true, !dbg !2721
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !2721
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !2721
  %tobool10 = icmp ne i64 %conv9, 0, !dbg !2720
  br label %lor.end, !dbg !2720

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool10, %lor.rhs ]
  ret i1 %5, !dbg !2722
}

; Function Attrs: noredzone
declare dso_local void @led_stop_software_blink(%struct.led_classdev*) #2

; Function Attrs: noredzone
declare dso_local void @led_set_brightness(%struct.led_classdev*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @led_remove_brightness_hw_changed(%struct.led_classdev* %led_cdev) #0 !dbg !2723 {
entry:
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !2724, metadata !DIExpression()), !dbg !2725
  ret void, !dbg !2726
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !2727 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !2730, metadata !DIExpression()), !dbg !2731
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2732
  call void @__list_del_entry(%struct.list_head* %0) #5, !dbg !2733
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2734
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !2735
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !2736
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2737
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !2738
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !2739
  ret void, !dbg !2740
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mutex_destroy(%struct.mutex* %lock) #0 !dbg !2741 {
entry:
  %lock.addr = alloca %struct.mutex*, align 8
  store %struct.mutex* %lock, %struct.mutex** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mutex** %lock.addr, metadata !2745, metadata !DIExpression()), !dbg !2746
  ret void, !dbg !2747
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @devm_led_classdev_register_ext(%struct.device* %parent, %struct.led_classdev* %led_cdev, %struct.led_init_data* %init_data) #0 !dbg !2748 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca %struct.device*, align 8
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  %init_data.addr = alloca %struct.led_init_data*, align 8
  %dr = alloca %struct.led_classdev**, align 8
  %rc = alloca i32, align 4
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !2749, metadata !DIExpression()), !dbg !2750
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !2751, metadata !DIExpression()), !dbg !2752
  store %struct.led_init_data* %init_data, %struct.led_init_data** %init_data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_init_data** %init_data.addr, metadata !2753, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.declare(metadata %struct.led_classdev*** %dr, metadata !2755, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !2757, metadata !DIExpression()), !dbg !2758
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_led_classdev_release, i64 8, i32 3264) #5, !dbg !2759
  %0 = bitcast i8* %call to %struct.led_classdev**, !dbg !2759
  store %struct.led_classdev** %0, %struct.led_classdev*** %dr, align 8, !dbg !2760
  %1 = load %struct.led_classdev**, %struct.led_classdev*** %dr, align 8, !dbg !2761
  %tobool = icmp ne %struct.led_classdev** %1, null, !dbg !2761
  br i1 %tobool, label %if.end, label %if.then, !dbg !2763

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2764
  br label %return, !dbg !2764

if.end:                                           ; preds = %entry
  %2 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !2765
  %3 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2766
  %4 = load %struct.led_init_data*, %struct.led_init_data** %init_data.addr, align 8, !dbg !2767
  %call1 = call i32 @led_classdev_register_ext(%struct.device* %2, %struct.led_classdev* %3, %struct.led_init_data* %4) #5, !dbg !2768
  store i32 %call1, i32* %rc, align 4, !dbg !2769
  %5 = load i32, i32* %rc, align 4, !dbg !2770
  %tobool2 = icmp ne i32 %5, 0, !dbg !2770
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2772

if.then3:                                         ; preds = %if.end
  %6 = load %struct.led_classdev**, %struct.led_classdev*** %dr, align 8, !dbg !2773
  %7 = bitcast %struct.led_classdev** %6 to i8*, !dbg !2773
  call void @devres_free(i8* %7) #5, !dbg !2775
  %8 = load i32, i32* %rc, align 4, !dbg !2776
  store i32 %8, i32* %retval, align 4, !dbg !2777
  br label %return, !dbg !2777

if.end4:                                          ; preds = %if.end
  %9 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2778
  %10 = load %struct.led_classdev**, %struct.led_classdev*** %dr, align 8, !dbg !2779
  store %struct.led_classdev* %9, %struct.led_classdev** %10, align 8, !dbg !2780
  %11 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !2781
  %12 = load %struct.led_classdev**, %struct.led_classdev*** %dr, align 8, !dbg !2782
  %13 = bitcast %struct.led_classdev** %12 to i8*, !dbg !2782
  call void @devres_add(%struct.device* %11, i8* %13) #5, !dbg !2783
  store i32 0, i32* %retval, align 4, !dbg !2784
  br label %return, !dbg !2784

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !2785
  ret i32 %14, !dbg !2785
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_led_classdev_release(%struct.device* %dev, i8* %res) #0 !dbg !2786 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2787, metadata !DIExpression()), !dbg !2788
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !2789, metadata !DIExpression()), !dbg !2790
  %0 = load i8*, i8** %res.addr, align 8, !dbg !2791
  %1 = bitcast i8* %0 to %struct.led_classdev**, !dbg !2792
  %2 = load %struct.led_classdev*, %struct.led_classdev** %1, align 8, !dbg !2793
  call void @led_classdev_unregister(%struct.led_classdev* %2) #5, !dbg !2794
  ret void, !dbg !2795
}

; Function Attrs: noredzone
declare dso_local void @devres_free(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @devm_led_classdev_unregister(%struct.device* %dev, %struct.led_classdev* %led_cdev) #0 !dbg !2796 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2799, metadata !DIExpression()), !dbg !2800
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !2801, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2803, metadata !DIExpression()), !dbg !2805
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2805
  %1 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2805
  %2 = bitcast %struct.led_classdev* %1 to i8*, !dbg !2805
  %call = call i32 @devres_release(%struct.device* %0, void (%struct.device*, i8*)* @devm_led_classdev_release, i32 (%struct.device*, i8*, i8*)* @devm_led_classdev_match, i8* %2) #5, !dbg !2805
  %tobool = icmp ne i32 %call, 0, !dbg !2805
  %lnot = xor i1 %tobool, true, !dbg !2805
  %lnot1 = xor i1 %lnot, true, !dbg !2805
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2805
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2805
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !2806
  %tobool2 = icmp ne i32 %3, 0, !dbg !2806
  %lnot3 = xor i1 %tobool2, true, !dbg !2806
  %lnot5 = xor i1 %lnot3, true, !dbg !2806
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !2806
  %conv = sext i32 %lnot.ext6 to i64, !dbg !2806
  %tobool7 = icmp ne i64 %conv, 0, !dbg !2806
  br i1 %tobool7, label %if.then, label %if.end, !dbg !2805

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2806

do.body:                                          ; preds = %if.then
  br label %do.body8, !dbg !2808

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !2810

do.end:                                           ; preds = %do.body8
  br label %do.body9, !dbg !2808

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 525, i32 2305, i64 12) #7, !dbg !2812, !srcloc !2814
  br label %do.end10, !dbg !2812

do.end10:                                         ; preds = %do.body9
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 163) #7, !dbg !2815, !srcloc !2817
  br label %do.body11, !dbg !2808

do.body11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !2818

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !2808

do.end13:                                         ; preds = %do.end12
  br label %if.end, !dbg !2808

if.end:                                           ; preds = %do.end13, %entry
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !2805
  %tobool14 = icmp ne i32 %4, 0, !dbg !2805
  %lnot15 = xor i1 %tobool14, true, !dbg !2805
  %lnot17 = xor i1 %lnot15, true, !dbg !2805
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !2805
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !2805
  store i64 %conv19, i64* %tmp, align 8, !dbg !2806
  %5 = load i64, i64* %tmp, align 8, !dbg !2805
  ret void, !dbg !2820
}

; Function Attrs: noredzone
declare dso_local i32 @devres_release(%struct.device*, void (%struct.device*, i8*)*, i32 (%struct.device*, i8*, i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @devm_led_classdev_match(%struct.device* %dev, i8* %res, i8* %data) #0 !dbg !2821 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %p = alloca %struct.led_classdev**, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2824, metadata !DIExpression()), !dbg !2825
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !2826, metadata !DIExpression()), !dbg !2827
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2828, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.declare(metadata %struct.led_classdev*** %p, metadata !2830, metadata !DIExpression()), !dbg !2831
  %0 = load i8*, i8** %res.addr, align 8, !dbg !2832
  %1 = bitcast i8* %0 to %struct.led_classdev**, !dbg !2832
  store %struct.led_classdev** %1, %struct.led_classdev*** %p, align 8, !dbg !2831
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2833, metadata !DIExpression()), !dbg !2836
  %2 = load %struct.led_classdev**, %struct.led_classdev*** %p, align 8, !dbg !2836
  %tobool = icmp ne %struct.led_classdev** %2, null, !dbg !2836
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !2836

lor.rhs:                                          ; preds = %entry
  %3 = load %struct.led_classdev**, %struct.led_classdev*** %p, align 8, !dbg !2836
  %4 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8, !dbg !2836
  %tobool1 = icmp ne %struct.led_classdev* %4, null, !dbg !2836
  %lnot = xor i1 %tobool1, true, !dbg !2836
  br label %lor.end, !dbg !2836

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot2 = xor i1 %5, true, !dbg !2836
  %lnot3 = xor i1 %lnot2, true, !dbg !2836
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2836
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2836
  %6 = load i32, i32* %__ret_warn_on, align 4, !dbg !2837
  %tobool4 = icmp ne i32 %6, 0, !dbg !2837
  %lnot5 = xor i1 %tobool4, true, !dbg !2837
  %lnot7 = xor i1 %lnot5, true, !dbg !2837
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !2837
  %conv = sext i32 %lnot.ext8 to i64, !dbg !2837
  %tobool9 = icmp ne i64 %conv, 0, !dbg !2837
  br i1 %tobool9, label %if.then, label %if.end, !dbg !2836

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !2837

do.body:                                          ; preds = %if.then
  br label %do.body10, !dbg !2839

do.body10:                                        ; preds = %do.body
  br label %do.end, !dbg !2841

do.end:                                           ; preds = %do.body10
  br label %do.body11, !dbg !2839

do.body11:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 509, i32 2305, i64 12) #7, !dbg !2843, !srcloc !2845
  br label %do.end12, !dbg !2843

do.end12:                                         ; preds = %do.body11
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 162) #7, !dbg !2846, !srcloc !2848
  br label %do.body13, !dbg !2839

do.body13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !2849

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !2839

do.end15:                                         ; preds = %do.end14
  br label %if.end, !dbg !2839

if.end:                                           ; preds = %do.end15, %lor.end
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !2836
  %tobool16 = icmp ne i32 %7, 0, !dbg !2836
  %lnot17 = xor i1 %tobool16, true, !dbg !2836
  %lnot19 = xor i1 %lnot17, true, !dbg !2836
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !2836
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !2836
  store i64 %conv21, i64* %tmp, align 8, !dbg !2837
  %8 = load i64, i64* %tmp, align 8, !dbg !2836
  %tobool22 = icmp ne i64 %8, 0, !dbg !2851
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !2852

if.then23:                                        ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2853
  br label %return, !dbg !2853

if.end24:                                         ; preds = %if.end
  %9 = load %struct.led_classdev**, %struct.led_classdev*** %p, align 8, !dbg !2854
  %10 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8, !dbg !2855
  %11 = load i8*, i8** %data.addr, align 8, !dbg !2856
  %12 = bitcast i8* %11 to %struct.led_classdev*, !dbg !2856
  %cmp = icmp eq %struct.led_classdev* %10, %12, !dbg !2857
  %conv25 = zext i1 %cmp to i32, !dbg !2857
  store i32 %conv25, i32* %retval, align 4, !dbg !2858
  br label %return, !dbg !2858

return:                                           ; preds = %if.end24, %if.then23
  %13 = load i32, i32* %retval, align 4, !dbg !2859
  ret i32 %13, !dbg !2859
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @leds_exit() #4 section ".exit.text" !dbg !2860 {
entry:
  %0 = load %struct.class*, %struct.class** @leds_class, align 8, !dbg !2861
  call void @class_destroy(%struct.class* %0) #5, !dbg !2862
  ret void, !dbg !2863
}

; Function Attrs: noredzone
declare dso_local void @class_destroy(%struct.class*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @leds_init() #4 section ".init.text" !dbg !2141 {
entry:
  %retval = alloca i32, align 4
  %tmp = alloca %struct.class*, align 8
  %call = call %struct.class* @__class_create(%struct.module* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* @leds_init.__key) #5, !dbg !2864
  store %struct.class* %call, %struct.class** %tmp, align 8, !dbg !2864
  %0 = load %struct.class*, %struct.class** %tmp, align 8, !dbg !2864
  store %struct.class* %0, %struct.class** @leds_class, align 8, !dbg !2866
  %1 = load %struct.class*, %struct.class** @leds_class, align 8, !dbg !2867
  %2 = bitcast %struct.class* %1 to i8*, !dbg !2867
  %call1 = call zeroext i1 @IS_ERR(i8* %2) #5, !dbg !2869
  br i1 %call1, label %if.then, label %if.end, !dbg !2870

if.then:                                          ; preds = %entry
  %3 = load %struct.class*, %struct.class** @leds_class, align 8, !dbg !2871
  %4 = bitcast %struct.class* %3 to i8*, !dbg !2871
  %call2 = call i64 @PTR_ERR(i8* %4) #5, !dbg !2872
  %conv = trunc i64 %call2 to i32, !dbg !2872
  store i32 %conv, i32* %retval, align 4, !dbg !2873
  br label %return, !dbg !2873

if.end:                                           ; preds = %entry
  %5 = load %struct.class*, %struct.class** @leds_class, align 8, !dbg !2874
  %pm = getelementptr inbounds %struct.class, %struct.class* %5, i32 0, i32 13, !dbg !2875
  store %struct.dev_pm_ops* @leds_class_dev_pm_ops, %struct.dev_pm_ops** %pm, align 8, !dbg !2876
  %6 = load %struct.class*, %struct.class** @leds_class, align 8, !dbg !2877
  %dev_groups = getelementptr inbounds %struct.class, %struct.class* %6, i32 0, i32 3, !dbg !2878
  store %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @led_groups, i64 0, i64 0), %struct.attribute_group*** %dev_groups, align 8, !dbg !2879
  store i32 0, i32* %retval, align 4, !dbg !2880
  br label %return, !dbg !2880

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !2881
  ret i32 %7, !dbg !2881
}

; Function Attrs: noredzone
declare dso_local %struct.device* @class_find_device(%struct.class*, %struct.device*, i8*, i32 (%struct.device*, i8*)*) #2

; Function Attrs: noredzone
declare dso_local i32 @device_match_of_node(%struct.device*, i8*) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @devres_alloc_node(void (%struct.device*, i8*)*, i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @strlcpy(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device* @class_find_device_by_name(%struct.class* %class, i8* %name) #0 !dbg !2882 {
entry:
  %class.addr = alloca %struct.class*, align 8
  %name.addr = alloca i8*, align 8
  store %struct.class* %class, %struct.class** %class.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class** %class.addr, metadata !2885, metadata !DIExpression()), !dbg !2886
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !2887, metadata !DIExpression()), !dbg !2888
  %0 = load %struct.class*, %struct.class** %class.addr, align 8, !dbg !2889
  %1 = load i8*, i8** %name.addr, align 8, !dbg !2890
  %call = call %struct.device* @class_find_device(%struct.class* %0, %struct.device* null, i8* %1, i32 (%struct.device*, i8*)* @device_match_name) #5, !dbg !2891
  ret %struct.device* %call, !dbg !2892
}

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @device_match_name(%struct.device*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !2893 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !2898, metadata !DIExpression()), !dbg !2899
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !2900
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !2901
  %1 = load i8*, i8** %name, align 8, !dbg !2901
  ret i8* %1, !dbg !2902
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !2903 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !2906, metadata !DIExpression()), !dbg !2907
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !2908, metadata !DIExpression()), !dbg !2909
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !2910, metadata !DIExpression()), !dbg !2911
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2912
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !2914
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !2915
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #5, !dbg !2916
  br i1 %call, label %if.end, label %if.then, !dbg !2917

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !2918

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2919
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !2920
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !2921
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !2922
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !2923
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2924
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !2925
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !2926
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !2927
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2928
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !2929
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !2930
  br label %do.body, !dbg !2931

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !2932

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !2934

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !2932

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2936
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !2936
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !2936
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !2936
  br label %do.end7, !dbg !2936

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !2932

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !2938
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !2939 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !2942, metadata !DIExpression()), !dbg !2943
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !2944, metadata !DIExpression()), !dbg !2945
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !2946, metadata !DIExpression()), !dbg !2947
  ret i1 true, !dbg !2948
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !2949 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !2950, metadata !DIExpression()), !dbg !2951
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2952
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #5, !dbg !2954
  br i1 %call, label %if.end, label %if.then, !dbg !2955

if.then:                                          ; preds = %entry
  br label %return, !dbg !2956

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2957
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !2958
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !2958
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2959
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !2960
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2960
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #5, !dbg !2961
  br label %return, !dbg !2962

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2962
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !2963 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !2966, metadata !DIExpression()), !dbg !2967
  ret i1 true, !dbg !2968
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !2969 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !2970, metadata !DIExpression()), !dbg !2971
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !2972, metadata !DIExpression()), !dbg !2973
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !2974
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !2975
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !2976
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !2977
  br label %do.body, !dbg !2978

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !2979

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !2981

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !2979

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !2983
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !2983
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !2983
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !2983
  br label %do.end5, !dbg !2983

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !2979

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !2985
}

; Function Attrs: noredzone
declare dso_local %struct.class* @__class_create(%struct.module*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @led_suspend(%struct.device* %dev) #0 !dbg !2986 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %led_cdev = alloca %struct.led_classdev*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2987, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev, metadata !2989, metadata !DIExpression()), !dbg !2990
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2991
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !2992
  %1 = bitcast i8* %call to %struct.led_classdev*, !dbg !2992
  store %struct.led_classdev* %1, %struct.led_classdev** %led_cdev, align 8, !dbg !2990
  %2 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2993
  %flags = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %2, i32 0, i32 3, !dbg !2995
  %3 = load i32, i32* %flags, align 8, !dbg !2995
  %conv = sext i32 %3 to i64, !dbg !2993
  %and = and i64 %conv, 65536, !dbg !2996
  %tobool = icmp ne i64 %and, 0, !dbg !2996
  br i1 %tobool, label %if.then, label %if.end, !dbg !2997

if.then:                                          ; preds = %entry
  %4 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2998
  call void @led_classdev_suspend(%struct.led_classdev* %4) #5, !dbg !2999
  br label %if.end, !dbg !2999

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !3000
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @led_resume(%struct.device* %dev) #0 !dbg !3001 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %led_cdev = alloca %struct.led_classdev*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3002, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev, metadata !3004, metadata !DIExpression()), !dbg !3005
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3006
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !3007
  %1 = bitcast i8* %call to %struct.led_classdev*, !dbg !3007
  store %struct.led_classdev* %1, %struct.led_classdev** %led_cdev, align 8, !dbg !3005
  %2 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !3008
  %flags = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %2, i32 0, i32 3, !dbg !3010
  %3 = load i32, i32* %flags, align 8, !dbg !3010
  %conv = sext i32 %3 to i64, !dbg !3008
  %and = and i64 %conv, 65536, !dbg !3011
  %tobool = icmp ne i64 %and, 0, !dbg !3011
  br i1 %tobool, label %if.then, label %if.end, !dbg !3012

if.then:                                          ; preds = %entry
  %4 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !3013
  call void @led_classdev_resume(%struct.led_classdev* %4) #5, !dbg !3014
  br label %if.end, !dbg !3014

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !3015
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @brightness_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3016 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %led_cdev = alloca %struct.led_classdev*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3017, metadata !DIExpression()), !dbg !3018
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3019, metadata !DIExpression()), !dbg !3020
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3021, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev, metadata !3023, metadata !DIExpression()), !dbg !3024
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3025
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !3026
  %1 = bitcast i8* %call to %struct.led_classdev*, !dbg !3026
  store %struct.led_classdev* %1, %struct.led_classdev** %led_cdev, align 8, !dbg !3024
  %2 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !3027
  %call1 = call i32 @led_update_brightness(%struct.led_classdev* %2) #5, !dbg !3028
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !3029
  %4 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !3030
  %brightness = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %4, i32 0, i32 1, !dbg !3031
  %5 = load i32, i32* %brightness, align 8, !dbg !3031
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %5) #5, !dbg !3032
  %conv = sext i32 %call2 to i64, !dbg !3032
  ret i64 %conv, !dbg !3033
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @brightness_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %size) #0 !dbg !3034 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %led_cdev = alloca %struct.led_classdev*, align 8
  %state = alloca i64, align 8
  %ret = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3035, metadata !DIExpression()), !dbg !3036
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3037, metadata !DIExpression()), !dbg !3038
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3039, metadata !DIExpression()), !dbg !3040
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3041, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev, metadata !3043, metadata !DIExpression()), !dbg !3044
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3045
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !3046
  %1 = bitcast i8* %call to %struct.led_classdev*, !dbg !3046
  store %struct.led_classdev* %1, %struct.led_classdev** %led_cdev, align 8, !dbg !3044
  call void @llvm.dbg.declare(metadata i64* %state, metadata !3047, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !3049, metadata !DIExpression()), !dbg !3050
  %2 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !3051
  %led_access = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %2, i32 0, i32 23, !dbg !3052
  call void @mutex_lock(%struct.mutex* %led_access) #5, !dbg !3053
  %3 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !3054
  %call1 = call zeroext i1 @led_sysfs_is_disabled(%struct.led_classdev* %3) #5, !dbg !3056
  br i1 %call1, label %if.then, label %if.end, !dbg !3057

if.then:                                          ; preds = %entry
  store i64 -16, i64* %ret, align 8, !dbg !3058
  br label %unlock, !dbg !3060

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !3061
  %call2 = call i32 @kstrtoul(i8* %4, i32 10, i64* %state) #5, !dbg !3062
  %conv = sext i32 %call2 to i64, !dbg !3062
  store i64 %conv, i64* %ret, align 8, !dbg !3063
  %5 = load i64, i64* %ret, align 8, !dbg !3064
  %tobool = icmp ne i64 %5, 0, !dbg !3064
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !3066

if.then3:                                         ; preds = %if.end
  br label %unlock, !dbg !3067

if.end4:                                          ; preds = %if.end
  %6 = load i64, i64* %state, align 8, !dbg !3068
  %cmp = icmp eq i64 %6, 0, !dbg !3070
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !3071

if.then6:                                         ; preds = %if.end4
  %7 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !3072
  call void @led_trigger_remove(%struct.led_classdev* %7) #5, !dbg !3073
  br label %if.end7, !dbg !3073

if.end7:                                          ; preds = %if.then6, %if.end4
  %8 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !3074
  %9 = load i64, i64* %state, align 8, !dbg !3075
  %conv8 = trunc i64 %9 to i32, !dbg !3075
  call void @led_set_brightness(%struct.led_classdev* %8, i32 %conv8) #5, !dbg !3076
  %10 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !3077
  %set_brightness_work = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %10, i32 0, i32 21, !dbg !3078
  %call9 = call zeroext i1 @flush_work(%struct.work_struct* %set_brightness_work) #5, !dbg !3079
  %11 = load i64, i64* %size.addr, align 8, !dbg !3080
  store i64 %11, i64* %ret, align 8, !dbg !3081
  br label %unlock, !dbg !3082

unlock:                                           ; preds = %if.end7, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !3083), !dbg !3084
  %12 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !3085
  %led_access10 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %12, i32 0, i32 23, !dbg !3086
  call void @mutex_unlock(%struct.mutex* %led_access10) #5, !dbg !3087
  %13 = load i64, i64* %ret, align 8, !dbg !3088
  ret i64 %13, !dbg !3089
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @led_sysfs_is_disabled(%struct.led_classdev* %led_cdev) #0 !dbg !3090 {
entry:
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !3093, metadata !DIExpression()), !dbg !3094
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !3095
  %flags = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %0, i32 0, i32 3, !dbg !3096
  %1 = load i32, i32* %flags, align 8, !dbg !3096
  %conv = sext i32 %1 to i64, !dbg !3095
  %and = and i64 %conv, 131072, !dbg !3097
  %tobool = icmp ne i64 %and, 0, !dbg !3095
  ret i1 %tobool, !dbg !3098
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kstrtoul(i8* %s, i32 %base, i64* %res) #0 !dbg !3099 {
entry:
  %s.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca i64*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !3103, metadata !DIExpression()), !dbg !3104
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !3105, metadata !DIExpression()), !dbg !3106
  store i64* %res, i64** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %res.addr, metadata !3107, metadata !DIExpression()), !dbg !3108
  %0 = load i8*, i8** %s.addr, align 8, !dbg !3109
  %1 = load i32, i32* %base.addr, align 4, !dbg !3111
  %2 = load i64*, i64** %res.addr, align 8, !dbg !3112
  %call = call i32 @kstrtoull(i8* %0, i32 %1, i64* %2) #5, !dbg !3113
  ret i32 %call, !dbg !3114
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @led_trigger_remove(%struct.led_classdev* %led_cdev) #0 !dbg !3115 {
entry:
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !3116, metadata !DIExpression()), !dbg !3117
  ret void, !dbg !3118
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @kstrtoull(i8*, i32, i64*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @max_brightness_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3119 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %led_cdev = alloca %struct.led_classdev*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3120, metadata !DIExpression()), !dbg !3121
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3122, metadata !DIExpression()), !dbg !3123
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3124, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev, metadata !3126, metadata !DIExpression()), !dbg !3127
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3128
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !3129
  %1 = bitcast i8* %call to %struct.led_classdev*, !dbg !3129
  store %struct.led_classdev* %1, %struct.led_classdev** %led_cdev, align 8, !dbg !3127
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !3130
  %3 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !3131
  %max_brightness = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %3, i32 0, i32 2, !dbg !3132
  %4 = load i32, i32* %max_brightness, align 4, !dbg !3132
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %4) #5, !dbg !3133
  %conv = sext i32 %call1 to i64, !dbg !3133
  ret i64 %conv, !dbg !3134
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone }
attributes #6 = { cold noredzone }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2170, !2171, !2172, !2173}
!llvm.ident = !{!2174}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "leds_class", scope: !2, file: !3, line: 25, type: !1921, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !62, globals: !2097, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/leds/led-class.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18, !24, !30, !36, !43, !51, !57}
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
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !58, line: 10, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!59 = !{!60, !61}
!60 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!61 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!62 = !{!63, !65, !66, !229, !214, !2039, !2041, !1679, !2096}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !64, line: 148, baseType: !7)
!64 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !68, line: 51, size: 1344, elements: !69)
!68 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!69 = !{!70, !74, !80, !81, !2023, !2032, !2033, !2034, !2035, !2036, !2037, !2038}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !67, file: !68, line: 52, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!73 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !67, file: !68, line: 53, baseType: !75, size: 32, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !68, line: 28, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !77, line: 21, baseType: !78)
!77 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !79, line: 27, baseType: !7)
!79 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!80 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !67, file: !68, line: 54, baseType: !71, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !67, file: !68, line: 55, baseType: !82, size: 192, offset: 192)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !83, line: 17, size: 192, elements: !84)
!83 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!84 = !{!85, !87, !2022}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !82, file: !83, line: 18, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !82, file: !83, line: 19, baseType: !88, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !83, line: 110, size: 1152, elements: !91)
!91 = !{!92, !96, !100, !108, !1964, !1968, !1972, !1977, !1981, !1982, !1986, !1990, !1994, !2005, !2006, !2007, !2008, !2018}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !90, file: !83, line: 111, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{!86, !86}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !90, file: !83, line: 112, baseType: !97, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !86}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !90, file: !83, line: 113, baseType: !101, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{!104, !106}
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !64, line: 30, baseType: !105)
!105 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !90, file: !83, line: 114, baseType: !109, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!112, !106, !114}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !37, line: 461, size: 5568, elements: !117)
!117 = !{!118, !1601, !1603, !1606, !1607, !1658, !1755, !1756, !1757, !1758, !1759, !1768, !1873, !1886, !1889, !1890, !1894, !1896, !1897, !1898, !1902, !1908, !1909, !1912, !1913, !1914, !1917, !1918, !1919, !1920, !1952, !1953, !1954, !1957, !1960, !1961, !1962, !1963}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !116, file: !37, line: 462, baseType: !119, size: 512)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !120, line: 64, size: 512, elements: !121)
!120 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!121 = !{!122, !123, !129, !131, !192, !1438, !1591, !1596, !1597, !1598, !1599, !1600}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !119, file: !120, line: 65, baseType: !71, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !119, file: !120, line: 66, baseType: !124, size: 128, offset: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !64, line: 178, size: 128, elements: !125)
!125 = !{!126, !128}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !124, file: !64, line: 179, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !124, file: !64, line: 179, baseType: !127, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !119, file: !120, line: 67, baseType: !130, size: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !119, file: !120, line: 68, baseType: !132, size: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !120, line: 192, size: 704, elements: !134)
!134 = !{!135, !136, !152, !153}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !133, file: !120, line: 193, baseType: !124, size: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !133, file: !120, line: 194, baseType: !137, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !138, line: 83, baseType: !139)
!138 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !138, line: 71, elements: !140)
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, scope: !139, file: !138, line: 72, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !139, file: !138, line: 72, elements: !143)
!143 = !{!144}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !142, file: !138, line: 73, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !138, line: 20, elements: !146)
!146 = !{!147}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !145, file: !138, line: 21, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !149, line: 25, baseType: !150)
!149 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !149, line: 25, elements: !151)
!151 = !{}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !133, file: !120, line: 195, baseType: !119, size: 512, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !133, file: !120, line: 196, baseType: !154, size: 64, offset: 640)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !120, line: 156, size: 192, elements: !157)
!157 = !{!158, !164, !169}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !156, file: !120, line: 157, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!163, !132, !130}
!163 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !156, file: !120, line: 158, baseType: !165, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!71, !132, !130}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !156, file: !120, line: 159, baseType: !170, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!163, !132, !130, !174}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !120, line: 148, size: 20736, elements: !176)
!176 = !{!177, !182, !186, !187, !191}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !175, file: !120, line: 149, baseType: !178, size: 192)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 192, elements: !180)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!180 = !{!181}
!181 = !DISubrange(count: 3)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !175, file: !120, line: 150, baseType: !183, size: 4096, offset: 192)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 4096, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !175, file: !120, line: 151, baseType: !163, size: 32, offset: 4288)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !175, file: !120, line: 152, baseType: !188, size: 16384, offset: 4320)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 16384, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 2048)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !175, file: !120, line: 153, baseType: !163, size: 32, offset: 20704)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !119, file: !120, line: 69, baseType: !193, size: 64, offset: 320)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !120, line: 138, size: 448, elements: !195)
!195 = !{!196, !200, !230, !232, !1386, !1417, !1421}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !194, file: !120, line: 139, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !130}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !194, file: !120, line: 140, baseType: !201, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !204, line: 230, size: 128, elements: !205)
!204 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!205 = !{!206, !222}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !203, file: !204, line: 231, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!210, !130, !215, !179}
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !64, line: 60, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !212, line: 73, baseType: !213)
!212 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !212, line: 15, baseType: !214)
!214 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !204, line: 30, size: 128, elements: !217)
!217 = !{!218, !219}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !216, file: !204, line: 31, baseType: !71, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !216, file: !204, line: 32, baseType: !220, size: 16, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !64, line: 19, baseType: !221)
!221 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !203, file: !204, line: 232, baseType: !223, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!210, !130, !215, !71, !226}
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !64, line: 55, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !212, line: 72, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !212, line: 16, baseType: !229)
!229 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !194, file: !120, line: 141, baseType: !231, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !194, file: !120, line: 142, baseType: !233, size: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !204, line: 84, size: 320, elements: !237)
!237 = !{!238, !239, !243, !1383, !1384}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !236, file: !204, line: 85, baseType: !71, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !236, file: !204, line: 86, baseType: !240, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!220, !130, !215, !163}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !236, file: !204, line: 88, baseType: !244, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!220, !130, !247, !163}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !204, line: 168, size: 448, elements: !249)
!249 = !{!250, !251, !252, !253, !263, !264}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !248, file: !204, line: 169, baseType: !216, size: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !248, file: !204, line: 170, baseType: !226, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !248, file: !204, line: 171, baseType: !65, size: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !248, file: !204, line: 172, baseType: !254, size: 64, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!210, !257, !130, !247, !179, !260, !226}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !259, line: 526, flags: DIFlagFwdDecl)
!259 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !64, line: 46, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !212, line: 88, baseType: !262)
!262 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !248, file: !204, line: 174, baseType: !254, size: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !248, file: !204, line: 176, baseType: !265, size: 64, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!163, !257, !130, !247, !268}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !270, line: 305, size: 1472, elements: !271)
!270 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!271 = !{!272, !273, !274, !275, !276, !284, !285, !1357, !1363, !1364, !1369, !1370, !1373, !1377, !1378, !1379, !1380, !1381}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !269, file: !270, line: 308, baseType: !229, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !269, file: !270, line: 309, baseType: !229, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !269, file: !270, line: 313, baseType: !268, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !269, file: !270, line: 313, baseType: !268, size: 64, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !269, file: !270, line: 315, baseType: !277, size: 192, align: 64, offset: 256)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !278, line: 24, size: 192, align: 64, elements: !279)
!278 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!279 = !{!280, !281, !283}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !277, file: !278, line: 25, baseType: !229, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !277, file: !278, line: 26, baseType: !282, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !277, file: !278, line: 27, baseType: !282, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !269, file: !270, line: 323, baseType: !229, size: 64, offset: 448)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !269, file: !270, line: 327, baseType: !286, size: 64, offset: 512)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !270, line: 388, size: 7296, elements: !288)
!288 = !{!289, !1353}
!289 = !DIDerivedType(tag: DW_TAG_member, scope: !287, file: !270, line: 389, baseType: !290, size: 7296)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !287, file: !270, line: 389, size: 7296, elements: !291)
!291 = !{!292, !293, !297, !301, !305, !306, !307, !308, !309, !317, !322, !323, !324, !325, !334, !335, !336, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !371, !379, !382, !430, !431, !1323, !1324, !1327, !1331, !1332, !1335, !1336, !1337, !1340, !1352}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !290, file: !270, line: 390, baseType: !268, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !290, file: !270, line: 391, baseType: !294, size: 64, offset: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !278, line: 31, size: 64, elements: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !294, file: !278, line: 32, baseType: !282, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !290, file: !270, line: 392, baseType: !298, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !77, line: 23, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !79, line: 31, baseType: !300)
!300 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !290, file: !270, line: 394, baseType: !302, size: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!229, !257, !229, !229, !229, !229}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !290, file: !270, line: 398, baseType: !229, size: 64, offset: 256)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !290, file: !270, line: 399, baseType: !229, size: 64, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !290, file: !270, line: 405, baseType: !229, size: 64, offset: 384)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !290, file: !270, line: 406, baseType: !229, size: 64, offset: 448)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !290, file: !270, line: 407, baseType: !310, size: 64, offset: 512)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !259, line: 286, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !259, line: 286, size: 64, elements: !313)
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !312, file: !259, line: 286, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !316, line: 18, baseType: !229)
!316 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!317 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !290, file: !270, line: 416, baseType: !318, size: 32, offset: 576)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !64, line: 168, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 166, size: 32, elements: !320)
!320 = !{!321}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !319, file: !64, line: 167, baseType: !163, size: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !290, file: !270, line: 428, baseType: !318, size: 32, offset: 608)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !290, file: !270, line: 437, baseType: !318, size: 32, offset: 640)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !290, file: !270, line: 447, baseType: !318, size: 32, offset: 672)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !290, file: !270, line: 450, baseType: !326, size: 64, offset: 704)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !327, line: 13, baseType: !328)
!327 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !64, line: 175, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 173, size: 64, elements: !330)
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !329, file: !64, line: 174, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !77, line: 22, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !79, line: 30, baseType: !262)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !290, file: !270, line: 452, baseType: !163, size: 32, offset: 768)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !290, file: !270, line: 454, baseType: !137, offset: 800)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !290, file: !270, line: 457, baseType: !337, size: 256, offset: 832)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !338, line: 35, size: 256, elements: !339)
!338 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!339 = !{!340, !341, !342, !344}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !337, file: !338, line: 36, baseType: !326, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !337, file: !338, line: 42, baseType: !326, size: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !337, file: !338, line: 46, baseType: !343, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !138, line: 29, baseType: !145)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !337, file: !338, line: 47, baseType: !124, size: 128, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !290, file: !270, line: 459, baseType: !124, size: 128, offset: 1088)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !290, file: !270, line: 466, baseType: !229, size: 64, offset: 1216)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !290, file: !270, line: 467, baseType: !229, size: 64, offset: 1280)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !290, file: !270, line: 469, baseType: !229, size: 64, offset: 1344)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !290, file: !270, line: 470, baseType: !229, size: 64, offset: 1408)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !290, file: !270, line: 471, baseType: !328, size: 64, offset: 1472)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !290, file: !270, line: 472, baseType: !229, size: 64, offset: 1536)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !290, file: !270, line: 473, baseType: !229, size: 64, offset: 1600)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !290, file: !270, line: 474, baseType: !229, size: 64, offset: 1664)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !290, file: !270, line: 475, baseType: !229, size: 64, offset: 1728)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !290, file: !270, line: 477, baseType: !137, offset: 1792)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !290, file: !270, line: 478, baseType: !229, size: 64, offset: 1792)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !290, file: !270, line: 478, baseType: !229, size: 64, offset: 1856)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !290, file: !270, line: 478, baseType: !229, size: 64, offset: 1920)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !290, file: !270, line: 478, baseType: !229, size: 64, offset: 1984)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !290, file: !270, line: 479, baseType: !229, size: 64, offset: 2048)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !290, file: !270, line: 479, baseType: !229, size: 64, offset: 2112)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !290, file: !270, line: 479, baseType: !229, size: 64, offset: 2176)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !290, file: !270, line: 480, baseType: !229, size: 64, offset: 2240)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !290, file: !270, line: 480, baseType: !229, size: 64, offset: 2304)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !290, file: !270, line: 480, baseType: !229, size: 64, offset: 2368)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !290, file: !270, line: 480, baseType: !229, size: 64, offset: 2432)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !290, file: !270, line: 482, baseType: !368, size: 2816, offset: 2496)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 2816, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 44)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !290, file: !270, line: 488, baseType: !372, size: 256, offset: 5312)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !373, line: 60, size: 256, elements: !374)
!373 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!374 = !{!375}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !372, file: !373, line: 61, baseType: !376, size: 256)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 256, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 4)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !290, file: !270, line: 490, baseType: !380, size: 64, offset: 5568)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !270, line: 490, flags: DIFlagFwdDecl)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !290, file: !270, line: 493, baseType: !383, size: 896, offset: 5632)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !384, line: 53, baseType: !385)
!384 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !384, line: 13, size: 896, elements: !386)
!386 = !{!387, !388, !389, !390, !393, !394, !401, !402, !422, !423, !426}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !385, file: !384, line: 18, baseType: !298, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !385, file: !384, line: 28, baseType: !328, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !385, file: !384, line: 31, baseType: !337, size: 256, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !385, file: !384, line: 32, baseType: !391, size: 64, offset: 384)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !384, line: 32, flags: DIFlagFwdDecl)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !385, file: !384, line: 37, baseType: !221, size: 16, offset: 448)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !385, file: !384, line: 40, baseType: !395, size: 192, offset: 512)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !396, line: 53, size: 192, elements: !397)
!396 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!397 = !{!398, !399, !400}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !395, file: !396, line: 54, baseType: !326, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !395, file: !396, line: 55, baseType: !137, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !395, file: !396, line: 59, baseType: !124, size: 128, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !385, file: !384, line: 41, baseType: !65, size: 64, offset: 704)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !385, file: !384, line: 42, baseType: !403, size: 64, offset: 768)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !406, line: 13, size: 896, elements: !407)
!406 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!407 = !{!408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !405, file: !406, line: 14, baseType: !65, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !405, file: !406, line: 15, baseType: !229, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !405, file: !406, line: 17, baseType: !229, size: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !405, file: !406, line: 17, baseType: !229, size: 64, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !405, file: !406, line: 19, baseType: !214, size: 64, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !405, file: !406, line: 21, baseType: !214, size: 64, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !405, file: !406, line: 22, baseType: !214, size: 64, offset: 384)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !405, file: !406, line: 23, baseType: !214, size: 64, offset: 448)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !405, file: !406, line: 24, baseType: !214, size: 64, offset: 512)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !405, file: !406, line: 25, baseType: !214, size: 64, offset: 576)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !405, file: !406, line: 26, baseType: !214, size: 64, offset: 640)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !405, file: !406, line: 27, baseType: !214, size: 64, offset: 704)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !405, file: !406, line: 28, baseType: !214, size: 64, offset: 768)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !405, file: !406, line: 29, baseType: !214, size: 64, offset: 832)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !385, file: !384, line: 44, baseType: !318, size: 32, offset: 832)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !385, file: !384, line: 50, baseType: !424, size: 16, offset: 864)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !77, line: 19, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !79, line: 24, baseType: !221)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !385, file: !384, line: 51, baseType: !427, size: 16, offset: 880)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !77, line: 18, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !79, line: 23, baseType: !429)
!429 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !290, file: !270, line: 495, baseType: !229, size: 64, offset: 6528)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !290, file: !270, line: 497, baseType: !432, size: 64, offset: 6592)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !270, line: 381, size: 384, elements: !434)
!434 = !{!435, !436, !1322}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !433, file: !270, line: 382, baseType: !318, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !433, file: !270, line: 383, baseType: !437, size: 128, offset: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !270, line: 376, size: 128, elements: !438)
!438 = !{!439, !1320}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !437, file: !270, line: 377, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !442, line: 640, size: 48640, elements: !443)
!442 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!443 = !{!444, !450, !452, !453, !459, !460, !461, !462, !463, !464, !465, !466, !470, !488, !499, !594, !595, !596, !607, !608, !610, !611, !612, !613, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !692, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !748, !750, !751, !752, !764, !766, !767, !768, !769, !770, !776, !777, !778, !779, !780, !781, !782, !794, !799, !803, !804, !805, !808, !812, !815, !818, !821, !824, !827, !830, !833, !839, !840, !841, !847, !848, !849, !850, !851, !860, !861, !862, !863, !864, !869, !870, !871, !874, !875, !878, !881, !884, !887, !890, !893, !894, !974, !977, !980, !981, !984, !985, !986, !992, !993, !994, !1007, !1008, !1009, !1019, !1024, !1027, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !441, file: !442, line: 646, baseType: !445, size: 128)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !446, line: 56, size: 128, elements: !447)
!446 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!447 = !{!448, !449}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !445, file: !446, line: 57, baseType: !229, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !445, file: !446, line: 58, baseType: !76, size: 32, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !441, file: !442, line: 649, baseType: !451, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !214)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !441, file: !442, line: 657, baseType: !65, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !441, file: !442, line: 658, baseType: !454, size: 32, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !455, line: 113, baseType: !456)
!455 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !455, line: 111, size: 32, elements: !457)
!457 = !{!458}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !456, file: !455, line: 112, baseType: !318, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !441, file: !442, line: 660, baseType: !7, size: 32, offset: 288)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !441, file: !442, line: 661, baseType: !7, size: 32, offset: 320)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !441, file: !442, line: 684, baseType: !163, size: 32, offset: 352)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !441, file: !442, line: 686, baseType: !163, size: 32, offset: 384)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !441, file: !442, line: 687, baseType: !163, size: 32, offset: 416)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !441, file: !442, line: 688, baseType: !163, size: 32, offset: 448)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !441, file: !442, line: 689, baseType: !7, size: 32, offset: 480)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !441, file: !442, line: 691, baseType: !467, size: 64, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !469)
!469 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !442, line: 691, flags: DIFlagFwdDecl)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !441, file: !442, line: 692, baseType: !471, size: 832, offset: 576)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !442, line: 451, size: 832, elements: !472)
!472 = !{!473, !478, !479, !480, !481, !482, !483, !484, !485, !486}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !471, file: !442, line: 453, baseType: !474, size: 128)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !442, line: 325, size: 128, elements: !475)
!475 = !{!476, !477}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !474, file: !442, line: 326, baseType: !229, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !474, file: !442, line: 327, baseType: !76, size: 32, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !471, file: !442, line: 454, baseType: !277, size: 192, align: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !471, file: !442, line: 455, baseType: !124, size: 128, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !471, file: !442, line: 456, baseType: !7, size: 32, offset: 448)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !471, file: !442, line: 458, baseType: !298, size: 64, offset: 512)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !471, file: !442, line: 459, baseType: !298, size: 64, offset: 576)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !471, file: !442, line: 460, baseType: !298, size: 64, offset: 640)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !471, file: !442, line: 461, baseType: !298, size: 64, offset: 704)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !471, file: !442, line: 463, baseType: !298, size: 64, offset: 768)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !471, file: !442, line: 465, baseType: !487, offset: 832)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !442, line: 415, elements: !151)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !441, file: !442, line: 693, baseType: !489, size: 384, offset: 1408)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !442, line: 489, size: 384, elements: !490)
!490 = !{!491, !492, !493, !494, !495, !496, !497}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !489, file: !442, line: 490, baseType: !124, size: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !489, file: !442, line: 491, baseType: !229, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !489, file: !442, line: 492, baseType: !229, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !489, file: !442, line: 493, baseType: !7, size: 32, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !489, file: !442, line: 494, baseType: !221, size: 16, offset: 288)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !489, file: !442, line: 495, baseType: !221, size: 16, offset: 304)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !489, file: !442, line: 497, baseType: !498, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !441, file: !442, line: 697, baseType: !500, size: 1792, offset: 1792)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !442, line: 507, size: 1792, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !591, !592}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !500, file: !442, line: 508, baseType: !277, size: 192, align: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !500, file: !442, line: 515, baseType: !298, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !500, file: !442, line: 516, baseType: !298, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !500, file: !442, line: 517, baseType: !298, size: 64, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !500, file: !442, line: 518, baseType: !298, size: 64, offset: 384)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !500, file: !442, line: 519, baseType: !298, size: 64, offset: 448)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !500, file: !442, line: 526, baseType: !332, size: 64, offset: 512)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !500, file: !442, line: 527, baseType: !298, size: 64, offset: 576)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !500, file: !442, line: 528, baseType: !7, size: 32, offset: 640)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !500, file: !442, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !500, file: !442, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !500, file: !442, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !500, file: !442, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !500, file: !442, line: 563, baseType: !516, size: 512, offset: 704)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !14, line: 118, size: 512, elements: !517)
!517 = !{!518, !526, !527, !532, !584, !588, !589, !590}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !516, file: !14, line: 119, baseType: !519, size: 256)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !520, line: 9, size: 256, elements: !521)
!520 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !519, file: !520, line: 10, baseType: !277, size: 192, align: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !519, file: !520, line: 11, baseType: !524, size: 64, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !525, line: 29, baseType: !332)
!525 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !516, file: !14, line: 120, baseType: !524, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !516, file: !14, line: 121, baseType: !528, size: 64, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!13, !531}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !516, file: !14, line: 122, baseType: !533, size: 64, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !14, line: 159, size: 512, align: 512, elements: !535)
!535 = !{!536, !556, !557, !560, !570, !571, !579, !583}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !534, file: !14, line: 160, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !14, line: 214, size: 4608, align: 512, elements: !539)
!539 = !{!540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !538, file: !14, line: 215, baseType: !343)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !538, file: !14, line: 216, baseType: !7, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !538, file: !14, line: 217, baseType: !7, size: 32, offset: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !538, file: !14, line: 218, baseType: !7, size: 32, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !538, file: !14, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !538, file: !14, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !538, file: !14, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !538, file: !14, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !538, file: !14, line: 233, baseType: !524, size: 64, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !538, file: !14, line: 234, baseType: !531, size: 64, offset: 192)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !538, file: !14, line: 235, baseType: !524, size: 64, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !538, file: !14, line: 236, baseType: !531, size: 64, offset: 320)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !538, file: !14, line: 237, baseType: !553, size: 4096, offset: 512)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !534, size: 4096, elements: !554)
!554 = !{!555}
!555 = !DISubrange(count: 8)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !534, file: !14, line: 161, baseType: !7, size: 32, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !534, file: !14, line: 162, baseType: !558, size: 32, offset: 96)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !64, line: 27, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !212, line: 96, baseType: !163)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !534, file: !14, line: 163, baseType: !561, size: 32, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !562, line: 276, baseType: !563)
!562 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !562, line: 276, size: 32, elements: !564)
!564 = !{!565}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !563, file: !562, line: 276, baseType: !566, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !562, line: 70, baseType: !567)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !562, line: 65, size: 32, elements: !568)
!568 = !{!569}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !567, file: !562, line: 66, baseType: !7, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !534, file: !14, line: 164, baseType: !531, size: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !534, file: !14, line: 165, baseType: !572, size: 128, offset: 256)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !520, line: 14, size: 128, elements: !573)
!573 = !{!574}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !572, file: !520, line: 15, baseType: !575, size: 128)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !278, line: 125, size: 128, elements: !576)
!576 = !{!577, !578}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !575, file: !278, line: 126, baseType: !294, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !575, file: !278, line: 127, baseType: !282, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !534, file: !14, line: 166, baseType: !580, size: 64, offset: 384)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!524}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !534, file: !14, line: 167, baseType: !524, size: 64, offset: 448)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !516, file: !14, line: 123, baseType: !585, size: 8, offset: 448)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !77, line: 17, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !79, line: 21, baseType: !587)
!587 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !516, file: !14, line: 124, baseType: !585, size: 8, offset: 456)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !516, file: !14, line: 125, baseType: !585, size: 8, offset: 464)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !516, file: !14, line: 126, baseType: !585, size: 8, offset: 472)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !500, file: !442, line: 572, baseType: !516, size: 512, offset: 1216)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !500, file: !442, line: 580, baseType: !593, size: 64, offset: 1728)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !441, file: !442, line: 721, baseType: !7, size: 32, offset: 3584)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !441, file: !442, line: 722, baseType: !163, size: 32, offset: 3616)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !441, file: !442, line: 723, baseType: !597, size: 64, offset: 3648)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !600, line: 17, baseType: !601)
!600 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !600, line: 17, size: 64, elements: !602)
!602 = !{!603}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !601, file: !600, line: 17, baseType: !604, size: 64)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 64, elements: !605)
!605 = !{!606}
!606 = !DISubrange(count: 1)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !441, file: !442, line: 724, baseType: !599, size: 64, offset: 3712)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !441, file: !442, line: 749, baseType: !609, offset: 3776)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !442, line: 290, elements: !151)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !441, file: !442, line: 751, baseType: !124, size: 128, offset: 3776)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !441, file: !442, line: 757, baseType: !286, size: 64, offset: 3904)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !441, file: !442, line: 758, baseType: !286, size: 64, offset: 3968)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !441, file: !442, line: 761, baseType: !614, size: 320, offset: 4032)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !373, line: 34, size: 320, elements: !615)
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !614, file: !373, line: 35, baseType: !298, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !614, file: !373, line: 36, baseType: !618, size: 256, offset: 64)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 256, elements: !377)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !441, file: !442, line: 766, baseType: !163, size: 32, offset: 4352)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !441, file: !442, line: 767, baseType: !163, size: 32, offset: 4384)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !441, file: !442, line: 768, baseType: !163, size: 32, offset: 4416)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !441, file: !442, line: 770, baseType: !163, size: 32, offset: 4448)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !441, file: !442, line: 772, baseType: !229, size: 64, offset: 4480)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !441, file: !442, line: 775, baseType: !7, size: 32, offset: 4544)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !441, file: !442, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !441, file: !442, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !441, file: !442, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !441, file: !442, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !441, file: !442, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !441, file: !442, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !441, file: !442, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !441, file: !442, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !441, file: !442, line: 831, baseType: !229, size: 64, offset: 4672)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !441, file: !442, line: 833, baseType: !635, size: 384, offset: 4736)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !19, line: 25, size: 384, elements: !636)
!636 = !{!637, !642}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !635, file: !19, line: 26, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!214, !641}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, scope: !635, file: !19, line: 27, baseType: !643, size: 320, offset: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !635, file: !19, line: 27, size: 320, elements: !644)
!644 = !{!645, !655, !682}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !643, file: !19, line: 36, baseType: !646, size: 320)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !643, file: !19, line: 29, size: 320, elements: !647)
!647 = !{!648, !650, !651, !652, !653, !654}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !646, file: !19, line: 30, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !646, file: !19, line: 31, baseType: !76, size: 32, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !646, file: !19, line: 32, baseType: !76, size: 32, offset: 96)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !646, file: !19, line: 33, baseType: !76, size: 32, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !646, file: !19, line: 34, baseType: !298, size: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !646, file: !19, line: 35, baseType: !649, size: 64, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !643, file: !19, line: 46, baseType: !656, size: 192)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !643, file: !19, line: 38, size: 192, elements: !657)
!657 = !{!658, !659, !660, !681}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !656, file: !19, line: 39, baseType: !558, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !656, file: !19, line: 40, baseType: !18, size: 32, offset: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, scope: !656, file: !19, line: 41, baseType: !661, size: 64, offset: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !656, file: !19, line: 41, size: 64, elements: !662)
!662 = !{!663, !671}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !661, file: !19, line: 42, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !666, line: 7, size: 128, elements: !667)
!666 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!667 = !{!668, !670}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !665, file: !666, line: 8, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !212, line: 93, baseType: !262)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !665, file: !666, line: 9, baseType: !262, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !661, file: !19, line: 43, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !674, line: 7, size: 64, elements: !675)
!674 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!675 = !{!676, !680}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !673, file: !674, line: 8, baseType: !677, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !674, line: 5, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !77, line: 20, baseType: !679)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !79, line: 26, baseType: !163)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !673, file: !674, line: 9, baseType: !678, size: 32, offset: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !656, file: !19, line: 45, baseType: !298, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !643, file: !19, line: 54, baseType: !683, size: 256)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !643, file: !19, line: 48, size: 256, elements: !684)
!684 = !{!685, !688, !689, !690, !691}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !683, file: !19, line: 49, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !19, line: 14, flags: DIFlagFwdDecl)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !683, file: !19, line: 50, baseType: !163, size: 32, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !683, file: !19, line: 51, baseType: !163, size: 32, offset: 96)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !683, file: !19, line: 52, baseType: !229, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !683, file: !19, line: 53, baseType: !229, size: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !441, file: !442, line: 835, baseType: !693, size: 32, offset: 5120)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !64, line: 22, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !212, line: 28, baseType: !163)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !441, file: !442, line: 836, baseType: !693, size: 32, offset: 5152)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !441, file: !442, line: 840, baseType: !229, size: 64, offset: 5184)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !441, file: !442, line: 849, baseType: !440, size: 64, offset: 5248)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !441, file: !442, line: 852, baseType: !440, size: 64, offset: 5312)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !441, file: !442, line: 857, baseType: !124, size: 128, offset: 5376)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !441, file: !442, line: 858, baseType: !124, size: 128, offset: 5504)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !441, file: !442, line: 859, baseType: !440, size: 64, offset: 5632)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !441, file: !442, line: 867, baseType: !124, size: 128, offset: 5696)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !441, file: !442, line: 868, baseType: !124, size: 128, offset: 5824)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !441, file: !442, line: 871, baseType: !705, size: 64, offset: 5952)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !707, line: 59, size: 768, elements: !708)
!707 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!708 = !{!709, !710, !711, !712, !723, !724, !731, !740}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !706, file: !707, line: 61, baseType: !454, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !706, file: !707, line: 62, baseType: !7, size: 32, offset: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !706, file: !707, line: 63, baseType: !137, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !706, file: !707, line: 65, baseType: !713, size: 256, offset: 64)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !714, size: 256, elements: !377)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !64, line: 182, size: 64, elements: !715)
!715 = !{!716}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !714, file: !64, line: 183, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !64, line: 186, size: 128, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !718, file: !64, line: 187, baseType: !717, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !718, file: !64, line: 187, baseType: !722, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !706, file: !707, line: 66, baseType: !714, size: 64, offset: 320)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !706, file: !707, line: 68, baseType: !725, size: 128, offset: 384)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !726, line: 40, baseType: !727)
!726 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !726, line: 36, size: 128, elements: !728)
!728 = !{!729, !730}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !727, file: !726, line: 37, baseType: !137)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !727, file: !726, line: 38, baseType: !124, size: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !706, file: !707, line: 69, baseType: !732, size: 128, align: 64, offset: 512)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !64, line: 216, size: 128, align: 64, elements: !733)
!733 = !{!734, !736}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !732, file: !64, line: 217, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !732, file: !64, line: 218, baseType: !737, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !735}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !706, file: !707, line: 70, baseType: !741, size: 128, offset: 640)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !742, size: 128, elements: !605)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !707, line: 54, size: 128, elements: !743)
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !742, file: !707, line: 55, baseType: !163, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !742, file: !707, line: 56, baseType: !746, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !707, line: 56, flags: DIFlagFwdDecl)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !441, file: !442, line: 872, baseType: !749, size: 512, offset: 6016)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, size: 512, elements: !377)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !441, file: !442, line: 873, baseType: !124, size: 128, offset: 6528)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !441, file: !442, line: 874, baseType: !124, size: 128, offset: 6656)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !441, file: !442, line: 876, baseType: !753, size: 64, offset: 6784)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !755, line: 26, size: 192, elements: !756)
!755 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !754, file: !755, line: 27, baseType: !7, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !754, file: !755, line: 28, baseType: !759, size: 128, offset: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !760, line: 43, size: 128, elements: !761)
!760 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !759, file: !760, line: 44, baseType: !343)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !759, file: !760, line: 45, baseType: !124, size: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !441, file: !442, line: 879, baseType: !765, size: 64, offset: 6848)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !441, file: !442, line: 882, baseType: !765, size: 64, offset: 6912)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !441, file: !442, line: 884, baseType: !298, size: 64, offset: 6976)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !441, file: !442, line: 885, baseType: !298, size: 64, offset: 7040)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !441, file: !442, line: 890, baseType: !298, size: 64, offset: 7104)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !441, file: !442, line: 891, baseType: !771, size: 128, offset: 7168)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !442, line: 242, size: 128, elements: !772)
!772 = !{!773, !774, !775}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !771, file: !442, line: 244, baseType: !298, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !771, file: !442, line: 245, baseType: !298, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !771, file: !442, line: 246, baseType: !343, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !441, file: !442, line: 900, baseType: !229, size: 64, offset: 7296)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !441, file: !442, line: 901, baseType: !229, size: 64, offset: 7360)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !441, file: !442, line: 904, baseType: !298, size: 64, offset: 7424)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !441, file: !442, line: 907, baseType: !298, size: 64, offset: 7488)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !441, file: !442, line: 910, baseType: !229, size: 64, offset: 7552)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !441, file: !442, line: 911, baseType: !229, size: 64, offset: 7616)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !441, file: !442, line: 914, baseType: !783, size: 640, offset: 7680)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !784, line: 123, size: 640, elements: !785)
!784 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!785 = !{!786, !792, !793}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !783, file: !784, line: 124, baseType: !787, size: 576)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !788, size: 576, elements: !180)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !784, line: 108, size: 192, elements: !789)
!789 = !{!790, !791}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !788, file: !784, line: 109, baseType: !298, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !788, file: !784, line: 110, baseType: !572, size: 128, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !783, file: !784, line: 125, baseType: !7, size: 32, offset: 576)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !783, file: !784, line: 126, baseType: !7, size: 32, offset: 608)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !441, file: !442, line: 917, baseType: !795, size: 192, offset: 8320)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !784, line: 134, size: 192, elements: !796)
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !795, file: !784, line: 135, baseType: !732, size: 128, align: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !795, file: !784, line: 136, baseType: !7, size: 32, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !441, file: !442, line: 923, baseType: !800, size: 64, offset: 8512)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !802)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !442, line: 923, flags: DIFlagFwdDecl)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !441, file: !442, line: 926, baseType: !800, size: 64, offset: 8576)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !441, file: !442, line: 929, baseType: !800, size: 64, offset: 8640)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !441, file: !442, line: 933, baseType: !806, size: 64, offset: 8704)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !442, line: 933, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !441, file: !442, line: 943, baseType: !809, size: 128, offset: 8768)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 128, elements: !810)
!810 = !{!811}
!811 = !DISubrange(count: 16)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !441, file: !442, line: 945, baseType: !813, size: 64, offset: 8896)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !442, line: 49, flags: DIFlagFwdDecl)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !441, file: !442, line: 956, baseType: !816, size: 64, offset: 8960)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !442, line: 45, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !441, file: !442, line: 959, baseType: !819, size: 64, offset: 9024)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !442, line: 959, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !441, file: !442, line: 962, baseType: !822, size: 64, offset: 9088)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !442, line: 66, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !441, file: !442, line: 966, baseType: !825, size: 64, offset: 9152)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !442, line: 50, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !441, file: !442, line: 969, baseType: !828, size: 64, offset: 9216)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !784, line: 223, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !441, file: !442, line: 970, baseType: !831, size: 64, offset: 9280)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !442, line: 62, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !441, file: !442, line: 971, baseType: !834, size: 64, offset: 9344)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !835, line: 25, baseType: !836)
!835 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !835, line: 23, size: 64, elements: !837)
!837 = !{!838}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !836, file: !835, line: 24, baseType: !604, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !441, file: !442, line: 972, baseType: !834, size: 64, offset: 9408)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !441, file: !442, line: 974, baseType: !834, size: 64, offset: 9472)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !441, file: !442, line: 975, baseType: !842, size: 192, offset: 9536)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !843, line: 30, size: 192, elements: !844)
!843 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!844 = !{!845, !846}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !842, file: !843, line: 31, baseType: !124, size: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !842, file: !843, line: 32, baseType: !834, size: 64, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !441, file: !442, line: 976, baseType: !229, size: 64, offset: 9728)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !441, file: !442, line: 977, baseType: !226, size: 64, offset: 9792)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !441, file: !442, line: 978, baseType: !7, size: 32, offset: 9856)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !441, file: !442, line: 980, baseType: !735, size: 64, offset: 9920)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !441, file: !442, line: 989, baseType: !852, size: 128, offset: 9984)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !853, line: 35, size: 128, elements: !854)
!853 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!854 = !{!855, !856, !857}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !852, file: !853, line: 36, baseType: !163, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !852, file: !853, line: 37, baseType: !318, size: 32, offset: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !852, file: !853, line: 38, baseType: !858, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !853, line: 23, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !441, file: !442, line: 992, baseType: !298, size: 64, offset: 10112)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !441, file: !442, line: 993, baseType: !298, size: 64, offset: 10176)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !441, file: !442, line: 996, baseType: !137, offset: 10240)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !441, file: !442, line: 999, baseType: !343, offset: 10240)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !441, file: !442, line: 1001, baseType: !865, size: 64, offset: 10240)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !442, line: 636, size: 64, elements: !866)
!866 = !{!867}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !865, file: !442, line: 637, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !441, file: !442, line: 1005, baseType: !575, size: 128, offset: 10304)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !441, file: !442, line: 1007, baseType: !440, size: 64, offset: 10432)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !441, file: !442, line: 1009, baseType: !872, size: 64, offset: 10496)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !442, line: 1009, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !441, file: !442, line: 1043, baseType: !65, size: 64, offset: 10560)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !441, file: !442, line: 1046, baseType: !876, size: 64, offset: 10624)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !442, line: 41, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !441, file: !442, line: 1050, baseType: !879, size: 64, offset: 10688)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !442, line: 42, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !441, file: !442, line: 1054, baseType: !882, size: 64, offset: 10752)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !442, line: 55, flags: DIFlagFwdDecl)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !441, file: !442, line: 1056, baseType: !885, size: 64, offset: 10816)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !442, line: 40, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !441, file: !442, line: 1058, baseType: !888, size: 64, offset: 10880)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !442, line: 47, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !441, file: !442, line: 1061, baseType: !891, size: 64, offset: 10944)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !442, line: 43, flags: DIFlagFwdDecl)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !441, file: !442, line: 1064, baseType: !229, size: 64, offset: 11008)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !441, file: !442, line: 1065, baseType: !895, size: 64, offset: 11072)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !843, line: 14, baseType: !897)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !843, line: 12, size: 384, elements: !898)
!898 = !{!899}
!899 = !DIDerivedType(tag: DW_TAG_member, scope: !897, file: !843, line: 13, baseType: !900, size: 384)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !897, file: !843, line: 13, size: 384, elements: !901)
!901 = !{!902, !903, !904, !905}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !900, file: !843, line: 13, baseType: !163, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !900, file: !843, line: 13, baseType: !163, size: 32, offset: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !900, file: !843, line: 13, baseType: !163, size: 32, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !900, file: !843, line: 13, baseType: !906, size: 256, offset: 128)
!906 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !907, line: 32, size: 256, elements: !908)
!907 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!908 = !{!909, !915, !928, !934, !943, !963, !968}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !906, file: !907, line: 37, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !907, line: 34, size: 64, elements: !911)
!911 = !{!912, !913}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !910, file: !907, line: 35, baseType: !694, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !910, file: !907, line: 36, baseType: !914, size: 32, offset: 32)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !212, line: 49, baseType: !7)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !906, file: !907, line: 45, baseType: !916, size: 192)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !907, line: 40, size: 192, elements: !917)
!917 = !{!918, !920, !921, !927}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !916, file: !907, line: 41, baseType: !919, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !212, line: 95, baseType: !163)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !916, file: !907, line: 42, baseType: !163, size: 32, offset: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !916, file: !907, line: 43, baseType: !922, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !907, line: 11, baseType: !923)
!923 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !907, line: 8, size: 64, elements: !924)
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !923, file: !907, line: 9, baseType: !163, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !923, file: !907, line: 10, baseType: !65, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !916, file: !907, line: 44, baseType: !163, size: 32, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !906, file: !907, line: 52, baseType: !929, size: 128)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !907, line: 48, size: 128, elements: !930)
!930 = !{!931, !932, !933}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !929, file: !907, line: 49, baseType: !694, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !929, file: !907, line: 50, baseType: !914, size: 32, offset: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !929, file: !907, line: 51, baseType: !922, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !906, file: !907, line: 61, baseType: !935, size: 256)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !907, line: 55, size: 256, elements: !936)
!936 = !{!937, !938, !939, !940, !942}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !935, file: !907, line: 56, baseType: !694, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !935, file: !907, line: 57, baseType: !914, size: 32, offset: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !935, file: !907, line: 58, baseType: !163, size: 32, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !935, file: !907, line: 59, baseType: !941, size: 64, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !212, line: 94, baseType: !213)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !935, file: !907, line: 60, baseType: !941, size: 64, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !906, file: !907, line: 95, baseType: !944, size: 256)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !907, line: 64, size: 256, elements: !945)
!945 = !{!946, !947}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !944, file: !907, line: 65, baseType: !65, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, scope: !944, file: !907, line: 77, baseType: !948, size: 192, offset: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !944, file: !907, line: 77, size: 192, elements: !949)
!949 = !{!950, !951, !958}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !948, file: !907, line: 82, baseType: !429, size: 16)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !948, file: !907, line: 88, baseType: !952, size: 192)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !948, file: !907, line: 84, size: 192, elements: !953)
!953 = !{!954, !956, !957}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !952, file: !907, line: 85, baseType: !955, size: 64)
!955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 64, elements: !554)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !952, file: !907, line: 86, baseType: !65, size: 64, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !952, file: !907, line: 87, baseType: !65, size: 64, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !948, file: !907, line: 93, baseType: !959, size: 96)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !948, file: !907, line: 90, size: 96, elements: !960)
!960 = !{!961, !962}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !959, file: !907, line: 91, baseType: !955, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !959, file: !907, line: 92, baseType: !78, size: 32, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !906, file: !907, line: 101, baseType: !964, size: 128)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !907, line: 98, size: 128, elements: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !964, file: !907, line: 99, baseType: !214, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !964, file: !907, line: 100, baseType: !163, size: 32, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !906, file: !907, line: 108, baseType: !969, size: 128)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !907, line: 104, size: 128, elements: !970)
!970 = !{!971, !972, !973}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !969, file: !907, line: 105, baseType: !65, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !969, file: !907, line: 106, baseType: !163, size: 32, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !969, file: !907, line: 107, baseType: !7, size: 32, offset: 96)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !441, file: !442, line: 1067, baseType: !975, offset: 11136)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !976, line: 12, elements: !151)
!976 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!977 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !441, file: !442, line: 1099, baseType: !978, size: 64, offset: 11136)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !442, line: 56, flags: DIFlagFwdDecl)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !441, file: !442, line: 1103, baseType: !124, size: 128, offset: 11200)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !441, file: !442, line: 1104, baseType: !982, size: 64, offset: 11328)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !442, line: 46, flags: DIFlagFwdDecl)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !441, file: !442, line: 1105, baseType: !395, size: 192, offset: 11392)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !441, file: !442, line: 1106, baseType: !7, size: 32, offset: 11584)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !441, file: !442, line: 1109, baseType: !987, size: 128, offset: 11648)
!987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !988, size: 128, elements: !990)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !442, line: 51, flags: DIFlagFwdDecl)
!990 = !{!991}
!991 = !DISubrange(count: 2)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !441, file: !442, line: 1110, baseType: !395, size: 192, offset: 11776)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !441, file: !442, line: 1111, baseType: !124, size: 128, offset: 11968)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !441, file: !442, line: 1173, baseType: !995, size: 64, offset: 12096)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !997, line: 62, size: 256, align: 256, elements: !998)
!997 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!998 = !{!999, !1000, !1001, !1006}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !996, file: !997, line: 75, baseType: !78, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !996, file: !997, line: 90, baseType: !78, size: 32, offset: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !996, file: !997, line: 124, baseType: !1002, size: 64, offset: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !996, file: !997, line: 109, size: 64, elements: !1003)
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1002, file: !997, line: 110, baseType: !299, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1002, file: !997, line: 112, baseType: !299, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !996, file: !997, line: 144, baseType: !78, size: 32, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !441, file: !442, line: 1174, baseType: !76, size: 32, offset: 12160)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !441, file: !442, line: 1179, baseType: !229, size: 64, offset: 12224)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !441, file: !442, line: 1182, baseType: !1010, size: 128, offset: 12288)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !373, line: 76, size: 128, elements: !1011)
!1011 = !{!1012, !1017, !1018}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1010, file: !373, line: 85, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1014, line: 7, size: 64, elements: !1015)
!1014 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1015 = !{!1016}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1013, file: !1014, line: 12, baseType: !601, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1010, file: !373, line: 88, baseType: !104, size: 8, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1010, file: !373, line: 95, baseType: !104, size: 8, offset: 72)
!1019 = !DIDerivedType(tag: DW_TAG_member, scope: !441, file: !442, line: 1184, baseType: !1020, size: 128, offset: 12416)
!1020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !441, file: !442, line: 1184, size: 128, elements: !1021)
!1021 = !{!1022, !1023}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1020, file: !442, line: 1185, baseType: !454, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1020, file: !442, line: 1186, baseType: !732, size: 128, align: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !441, file: !442, line: 1190, baseType: !1025, size: 64, offset: 12544)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !442, line: 53, flags: DIFlagFwdDecl)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !441, file: !442, line: 1192, baseType: !1028, size: 128, offset: 12608)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !373, line: 64, size: 128, elements: !1029)
!1029 = !{!1030, !1123, !1124}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1028, file: !373, line: 65, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !270, line: 68, size: 512, align: 128, elements: !1033)
!1033 = !{!1034, !1035, !1115, !1122}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1032, file: !270, line: 69, baseType: !229, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, scope: !1032, file: !270, line: 77, baseType: !1036, size: 320, offset: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1032, file: !270, line: 77, size: 320, elements: !1037)
!1037 = !{!1038, !1047, !1052, !1080, !1088, !1094, !1107, !1114}
!1038 = !DIDerivedType(tag: DW_TAG_member, scope: !1036, file: !270, line: 78, baseType: !1039, size: 320)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1036, file: !270, line: 78, size: 320, elements: !1040)
!1040 = !{!1041, !1042, !1045, !1046}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1039, file: !270, line: 84, baseType: !124, size: 128)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1039, file: !270, line: 86, baseType: !1043, size: 64, offset: 128)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !270, line: 26, flags: DIFlagFwdDecl)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1039, file: !270, line: 87, baseType: !229, size: 64, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1039, file: !270, line: 94, baseType: !229, size: 64, offset: 256)
!1047 = !DIDerivedType(tag: DW_TAG_member, scope: !1036, file: !270, line: 96, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1036, file: !270, line: 96, size: 64, elements: !1049)
!1049 = !{!1050}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1048, file: !270, line: 101, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !64, line: 143, baseType: !298)
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !1036, file: !270, line: 103, baseType: !1053, size: 320)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1036, file: !270, line: 103, size: 320, elements: !1054)
!1054 = !{!1055, !1065, !1068, !1069}
!1055 = !DIDerivedType(tag: DW_TAG_member, scope: !1053, file: !270, line: 104, baseType: !1056, size: 128)
!1056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1053, file: !270, line: 104, size: 128, elements: !1057)
!1057 = !{!1058, !1059}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1056, file: !270, line: 105, baseType: !124, size: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, scope: !1056, file: !270, line: 106, baseType: !1060, size: 128)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1056, file: !270, line: 106, size: 128, elements: !1061)
!1061 = !{!1062, !1063, !1064}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1060, file: !270, line: 107, baseType: !1031, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1060, file: !270, line: 109, baseType: !163, size: 32, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1060, file: !270, line: 110, baseType: !163, size: 32, offset: 96)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1053, file: !270, line: 117, baseType: !1066, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !270, line: 117, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1053, file: !270, line: 119, baseType: !65, size: 64, offset: 192)
!1069 = !DIDerivedType(tag: DW_TAG_member, scope: !1053, file: !270, line: 120, baseType: !1070, size: 64, offset: 256)
!1070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1053, file: !270, line: 120, size: 64, elements: !1071)
!1071 = !{!1072, !1073, !1074}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1070, file: !270, line: 121, baseType: !65, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1070, file: !270, line: 122, baseType: !229, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, scope: !1070, file: !270, line: 123, baseType: !1075, size: 32)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1070, file: !270, line: 123, size: 32, elements: !1076)
!1076 = !{!1077, !1078, !1079}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1075, file: !270, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1075, file: !270, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1075, file: !270, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !1036, file: !270, line: 130, baseType: !1081, size: 192)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1036, file: !270, line: 130, size: 192, elements: !1082)
!1082 = !{!1083, !1084, !1085, !1086, !1087}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1081, file: !270, line: 131, baseType: !229, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1081, file: !270, line: 134, baseType: !587, size: 8, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1081, file: !270, line: 135, baseType: !587, size: 8, offset: 72)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1081, file: !270, line: 136, baseType: !318, size: 32, offset: 96)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1081, file: !270, line: 137, baseType: !7, size: 32, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, scope: !1036, file: !270, line: 139, baseType: !1089, size: 256)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1036, file: !270, line: 139, size: 256, elements: !1090)
!1090 = !{!1091, !1092, !1093}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1089, file: !270, line: 140, baseType: !229, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1089, file: !270, line: 141, baseType: !318, size: 32, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1089, file: !270, line: 143, baseType: !124, size: 128, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, scope: !1036, file: !270, line: 145, baseType: !1095, size: 256)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1036, file: !270, line: 145, size: 256, elements: !1096)
!1096 = !{!1097, !1098, !1100, !1101, !1106}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1095, file: !270, line: 146, baseType: !229, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1095, file: !270, line: 147, baseType: !1099, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !259, line: 509, baseType: !1031)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1095, file: !270, line: 148, baseType: !229, size: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_member, scope: !1095, file: !270, line: 149, baseType: !1102, size: 64, offset: 192)
!1102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1095, file: !270, line: 149, size: 64, elements: !1103)
!1103 = !{!1104, !1105}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1102, file: !270, line: 150, baseType: !286, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1102, file: !270, line: 151, baseType: !318, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1095, file: !270, line: 156, baseType: !137, offset: 256)
!1107 = !DIDerivedType(tag: DW_TAG_member, scope: !1036, file: !270, line: 159, baseType: !1108, size: 128)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1036, file: !270, line: 159, size: 128, elements: !1109)
!1109 = !{!1110, !1113}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1108, file: !270, line: 161, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !270, line: 161, flags: DIFlagFwdDecl)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1108, file: !270, line: 162, baseType: !65, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1036, file: !270, line: 176, baseType: !732, size: 128, align: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, scope: !1032, file: !270, line: 179, baseType: !1116, size: 32, offset: 384)
!1116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1032, file: !270, line: 179, size: 32, elements: !1117)
!1117 = !{!1118, !1119, !1120, !1121}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1116, file: !270, line: 184, baseType: !318, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1116, file: !270, line: 192, baseType: !7, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1116, file: !270, line: 194, baseType: !7, size: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1116, file: !270, line: 195, baseType: !163, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1032, file: !270, line: 199, baseType: !318, size: 32, offset: 416)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1028, file: !373, line: 67, baseType: !78, size: 32, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1028, file: !373, line: 68, baseType: !78, size: 32, offset: 96)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !441, file: !442, line: 1206, baseType: !163, size: 32, offset: 12736)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !441, file: !442, line: 1207, baseType: !163, size: 32, offset: 12768)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !441, file: !442, line: 1209, baseType: !229, size: 64, offset: 12800)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !441, file: !442, line: 1219, baseType: !298, size: 64, offset: 12864)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !441, file: !442, line: 1220, baseType: !298, size: 64, offset: 12928)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !441, file: !442, line: 1317, baseType: !163, size: 32, offset: 12992)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !441, file: !442, line: 1319, baseType: !440, size: 64, offset: 13056)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !441, file: !442, line: 1322, baseType: !1133, size: 64, offset: 13120)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !442, line: 1322, flags: DIFlagFwdDecl)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !441, file: !442, line: 1326, baseType: !454, size: 32, offset: 13184)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !441, file: !442, line: 1342, baseType: !65, size: 64, offset: 13248)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !441, file: !442, line: 1343, baseType: !299, size: 64, offset: 13312)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !441, file: !442, line: 1344, baseType: !298, size: 64, offset: 13376)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !441, file: !442, line: 1345, baseType: !299, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !441, file: !442, line: 1346, baseType: !299, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !441, file: !442, line: 1347, baseType: !299, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !441, file: !442, line: 1348, baseType: !732, size: 128, align: 64, offset: 13504)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !441, file: !442, line: 1358, baseType: !1144, size: 34816, offset: 13824)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1145, line: 485, size: 34816, elements: !1146)
!1145 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1146 = !{!1147, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1176, !1177, !1178, !1179, !1180, !1181, !1184, !1185, !1186}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1144, file: !1145, line: 487, baseType: !1148, size: 192)
!1148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1149, size: 192, elements: !180)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1150, line: 16, size: 64, elements: !1151)
!1150 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1151 = !{!1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1149, file: !1150, line: 17, baseType: !424, size: 16)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1149, file: !1150, line: 18, baseType: !424, size: 16, offset: 16)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1149, file: !1150, line: 19, baseType: !424, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1149, file: !1150, line: 19, baseType: !424, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1149, file: !1150, line: 19, baseType: !424, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1149, file: !1150, line: 19, baseType: !424, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1149, file: !1150, line: 19, baseType: !424, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1149, file: !1150, line: 20, baseType: !424, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1149, file: !1150, line: 20, baseType: !424, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1149, file: !1150, line: 20, baseType: !424, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1149, file: !1150, line: 20, baseType: !424, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1149, file: !1150, line: 20, baseType: !424, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1149, file: !1150, line: 20, baseType: !424, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1144, file: !1145, line: 491, baseType: !229, size: 64, offset: 192)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1144, file: !1145, line: 495, baseType: !221, size: 16, offset: 256)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1144, file: !1145, line: 496, baseType: !221, size: 16, offset: 272)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1144, file: !1145, line: 497, baseType: !221, size: 16, offset: 288)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1144, file: !1145, line: 498, baseType: !221, size: 16, offset: 304)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1144, file: !1145, line: 502, baseType: !229, size: 64, offset: 320)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1144, file: !1145, line: 503, baseType: !229, size: 64, offset: 384)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1144, file: !1145, line: 514, baseType: !1173, size: 256, offset: 448)
!1173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1174, size: 256, elements: !377)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1145, line: 483, flags: DIFlagFwdDecl)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1144, file: !1145, line: 516, baseType: !229, size: 64, offset: 704)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1144, file: !1145, line: 518, baseType: !229, size: 64, offset: 768)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1144, file: !1145, line: 520, baseType: !229, size: 64, offset: 832)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1144, file: !1145, line: 521, baseType: !229, size: 64, offset: 896)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1144, file: !1145, line: 522, baseType: !229, size: 64, offset: 960)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1144, file: !1145, line: 528, baseType: !1182, size: 64, offset: 1024)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1145, line: 10, flags: DIFlagFwdDecl)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1144, file: !1145, line: 535, baseType: !229, size: 64, offset: 1088)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1144, file: !1145, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1144, file: !1145, line: 540, baseType: !1187, size: 33280, offset: 1536)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1188, line: 317, size: 33280, elements: !1189)
!1188 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1189 = !{!1190, !1191, !1192}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1187, file: !1188, line: 330, baseType: !7, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1187, file: !1188, line: 337, baseType: !229, size: 64, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1187, file: !1188, line: 348, baseType: !1193, size: 32768, offset: 512)
!1193 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1188, line: 304, size: 32768, elements: !1194)
!1194 = !{!1195, !1210, !1249, !1299, !1316}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1193, file: !1188, line: 305, baseType: !1196, size: 896)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1188, line: 12, size: 896, elements: !1197)
!1197 = !{!1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1209}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1196, file: !1188, line: 13, baseType: !76, size: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1196, file: !1188, line: 14, baseType: !76, size: 32, offset: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1196, file: !1188, line: 15, baseType: !76, size: 32, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1196, file: !1188, line: 16, baseType: !76, size: 32, offset: 96)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1196, file: !1188, line: 17, baseType: !76, size: 32, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1196, file: !1188, line: 18, baseType: !76, size: 32, offset: 160)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1196, file: !1188, line: 19, baseType: !76, size: 32, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1196, file: !1188, line: 22, baseType: !1206, size: 640, offset: 224)
!1206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 640, elements: !1207)
!1207 = !{!1208}
!1208 = !DISubrange(count: 20)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1196, file: !1188, line: 25, baseType: !76, size: 32, offset: 864)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1193, file: !1188, line: 306, baseType: !1211, size: 4096, align: 128)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1188, line: 34, size: 4096, align: 128, elements: !1212)
!1212 = !{!1213, !1214, !1215, !1216, !1217, !1232, !1233, !1234, !1238, !1240, !1244}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1211, file: !1188, line: 35, baseType: !424, size: 16)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1211, file: !1188, line: 36, baseType: !424, size: 16, offset: 16)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1211, file: !1188, line: 37, baseType: !424, size: 16, offset: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1211, file: !1188, line: 38, baseType: !424, size: 16, offset: 48)
!1217 = !DIDerivedType(tag: DW_TAG_member, scope: !1211, file: !1188, line: 39, baseType: !1218, size: 128, offset: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1211, file: !1188, line: 39, size: 128, elements: !1219)
!1219 = !{!1220, !1225}
!1220 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !1188, line: 40, baseType: !1221, size: 128)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1218, file: !1188, line: 40, size: 128, elements: !1222)
!1222 = !{!1223, !1224}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1221, file: !1188, line: 41, baseType: !298, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1221, file: !1188, line: 42, baseType: !298, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !1188, line: 44, baseType: !1226, size: 128)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1218, file: !1188, line: 44, size: 128, elements: !1227)
!1227 = !{!1228, !1229, !1230, !1231}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1226, file: !1188, line: 45, baseType: !76, size: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1226, file: !1188, line: 46, baseType: !76, size: 32, offset: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1226, file: !1188, line: 47, baseType: !76, size: 32, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1226, file: !1188, line: 48, baseType: !76, size: 32, offset: 96)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1211, file: !1188, line: 51, baseType: !76, size: 32, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1211, file: !1188, line: 52, baseType: !76, size: 32, offset: 224)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1211, file: !1188, line: 55, baseType: !1235, size: 1024, offset: 256)
!1235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 1024, elements: !1236)
!1236 = !{!1237}
!1237 = !DISubrange(count: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1211, file: !1188, line: 58, baseType: !1239, size: 2048, offset: 1280)
!1239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 2048, elements: !184)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1211, file: !1188, line: 60, baseType: !1241, size: 384, offset: 3328)
!1241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 384, elements: !1242)
!1242 = !{!1243}
!1243 = !DISubrange(count: 12)
!1244 = !DIDerivedType(tag: DW_TAG_member, scope: !1211, file: !1188, line: 62, baseType: !1245, size: 384, offset: 3712)
!1245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1211, file: !1188, line: 62, size: 384, elements: !1246)
!1246 = !{!1247, !1248}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1245, file: !1188, line: 63, baseType: !1241, size: 384)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1245, file: !1188, line: 64, baseType: !1241, size: 384)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1193, file: !1188, line: 307, baseType: !1250, size: 1088)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1188, line: 79, size: 1088, elements: !1251)
!1251 = !{!1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1298}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1250, file: !1188, line: 80, baseType: !76, size: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1250, file: !1188, line: 81, baseType: !76, size: 32, offset: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1250, file: !1188, line: 82, baseType: !76, size: 32, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1250, file: !1188, line: 83, baseType: !76, size: 32, offset: 96)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1250, file: !1188, line: 84, baseType: !76, size: 32, offset: 128)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1250, file: !1188, line: 85, baseType: !76, size: 32, offset: 160)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1250, file: !1188, line: 86, baseType: !76, size: 32, offset: 192)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1250, file: !1188, line: 88, baseType: !1206, size: 640, offset: 224)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1250, file: !1188, line: 89, baseType: !585, size: 8, offset: 864)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1250, file: !1188, line: 90, baseType: !585, size: 8, offset: 872)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1250, file: !1188, line: 91, baseType: !585, size: 8, offset: 880)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1250, file: !1188, line: 92, baseType: !585, size: 8, offset: 888)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1250, file: !1188, line: 93, baseType: !585, size: 8, offset: 896)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1250, file: !1188, line: 94, baseType: !585, size: 8, offset: 904)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1250, file: !1188, line: 95, baseType: !1267, size: 64, offset: 960)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1269, line: 11, size: 128, elements: !1270)
!1269 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1270 = !{!1271, !1272}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1268, file: !1269, line: 12, baseType: !214, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1268, file: !1269, line: 13, baseType: !1273, size: 64, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1275, line: 56, size: 1344, elements: !1276)
!1275 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1276 = !{!1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1274, file: !1275, line: 61, baseType: !229, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1274, file: !1275, line: 62, baseType: !229, size: 64, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1274, file: !1275, line: 63, baseType: !229, size: 64, offset: 128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1274, file: !1275, line: 64, baseType: !229, size: 64, offset: 192)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1274, file: !1275, line: 65, baseType: !229, size: 64, offset: 256)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1274, file: !1275, line: 66, baseType: !229, size: 64, offset: 320)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1274, file: !1275, line: 68, baseType: !229, size: 64, offset: 384)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1274, file: !1275, line: 69, baseType: !229, size: 64, offset: 448)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1274, file: !1275, line: 70, baseType: !229, size: 64, offset: 512)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1274, file: !1275, line: 71, baseType: !229, size: 64, offset: 576)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1274, file: !1275, line: 72, baseType: !229, size: 64, offset: 640)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1274, file: !1275, line: 73, baseType: !229, size: 64, offset: 704)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1274, file: !1275, line: 74, baseType: !229, size: 64, offset: 768)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1274, file: !1275, line: 75, baseType: !229, size: 64, offset: 832)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1274, file: !1275, line: 76, baseType: !229, size: 64, offset: 896)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1274, file: !1275, line: 81, baseType: !229, size: 64, offset: 960)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1274, file: !1275, line: 83, baseType: !229, size: 64, offset: 1024)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1274, file: !1275, line: 84, baseType: !229, size: 64, offset: 1088)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1274, file: !1275, line: 85, baseType: !229, size: 64, offset: 1152)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1274, file: !1275, line: 86, baseType: !229, size: 64, offset: 1216)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1274, file: !1275, line: 87, baseType: !229, size: 64, offset: 1280)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1250, file: !1188, line: 96, baseType: !76, size: 32, offset: 1024)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1193, file: !1188, line: 308, baseType: !1300, size: 4608, align: 512)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1188, line: 289, size: 4608, align: 512, elements: !1301)
!1301 = !{!1302, !1303, !1312}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1300, file: !1188, line: 290, baseType: !1211, size: 4096, align: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1300, file: !1188, line: 291, baseType: !1304, size: 512, offset: 4096)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1188, line: 268, size: 512, elements: !1305)
!1305 = !{!1306, !1307, !1308}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1304, file: !1188, line: 269, baseType: !298, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1304, file: !1188, line: 270, baseType: !298, size: 64, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1304, file: !1188, line: 271, baseType: !1309, size: 384, offset: 128)
!1309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 384, elements: !1310)
!1310 = !{!1311}
!1311 = !DISubrange(count: 6)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1300, file: !1188, line: 292, baseType: !1313, offset: 4608)
!1313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, elements: !1314)
!1314 = !{!1315}
!1315 = !DISubrange(count: 0)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1193, file: !1188, line: 309, baseType: !1317, size: 32768)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 32768, elements: !1318)
!1318 = !{!1319}
!1319 = !DISubrange(count: 4096)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !437, file: !270, line: 378, baseType: !1321, size: 64, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !433, file: !270, line: 384, baseType: !754, size: 192, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !290, file: !270, line: 500, baseType: !137, offset: 6656)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !290, file: !270, line: 501, baseType: !1325, size: 64, offset: 6656)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !270, line: 387, flags: DIFlagFwdDecl)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !290, file: !270, line: 516, baseType: !1328, size: 64, offset: 6720)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1330, line: 18, flags: DIFlagFwdDecl)
!1330 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !290, file: !270, line: 519, baseType: !257, size: 64, offset: 6784)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !290, file: !270, line: 521, baseType: !1333, size: 64, offset: 6848)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !270, line: 521, flags: DIFlagFwdDecl)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !290, file: !270, line: 545, baseType: !318, size: 32, offset: 6912)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !290, file: !270, line: 548, baseType: !104, size: 8, offset: 6944)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !290, file: !270, line: 550, baseType: !1338, offset: 6952)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1339, line: 142, elements: !151)
!1339 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !290, file: !270, line: 554, baseType: !1341, size: 256, offset: 6976)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1342, line: 102, size: 256, elements: !1343)
!1342 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1343 = !{!1344, !1345, !1346}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1341, file: !1342, line: 103, baseType: !326, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1341, file: !1342, line: 104, baseType: !124, size: 128, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1341, file: !1342, line: 105, baseType: !1347, size: 64, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1342, line: 21, baseType: !1348)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{null, !1351}
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !290, file: !270, line: 557, baseType: !76, size: 32, offset: 7232)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !287, file: !270, line: 565, baseType: !1354, offset: 7296)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, elements: !1355)
!1355 = !{!1356}
!1356 = !DISubrange(count: -1)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !269, file: !270, line: 333, baseType: !1358, size: 64, offset: 576)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !259, line: 284, baseType: !1359)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !259, line: 284, size: 64, elements: !1360)
!1360 = !{!1361}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1359, file: !259, line: 284, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !316, line: 19, baseType: !229)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !269, file: !270, line: 334, baseType: !229, size: 64, offset: 640)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !269, file: !270, line: 343, baseType: !1365, size: 256, offset: 704)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !269, file: !270, line: 340, size: 256, elements: !1366)
!1366 = !{!1367, !1368}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1365, file: !270, line: 341, baseType: !277, size: 192, align: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1365, file: !270, line: 342, baseType: !229, size: 64, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !269, file: !270, line: 351, baseType: !124, size: 128, offset: 960)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !269, file: !270, line: 353, baseType: !1371, size: 64, offset: 1088)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !270, line: 353, flags: DIFlagFwdDecl)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !269, file: !270, line: 356, baseType: !1374, size: 64, offset: 1152)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1376)
!1376 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !270, line: 356, flags: DIFlagFwdDecl)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !269, file: !270, line: 359, baseType: !229, size: 64, offset: 1216)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !269, file: !270, line: 361, baseType: !257, size: 64, offset: 1280)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !269, file: !270, line: 362, baseType: !65, size: 64, offset: 1344)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !269, file: !270, line: 365, baseType: !326, size: 64, offset: 1408)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !269, file: !270, line: 373, baseType: !1382, offset: 1472)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !270, line: 296, elements: !151)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !236, file: !204, line: 90, baseType: !231, size: 64, offset: 192)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !236, file: !204, line: 91, baseType: !1385, size: 64, offset: 256)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !194, file: !120, line: 143, baseType: !1387, size: 64, offset: 256)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!1390, !130}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1392)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !25, line: 39, size: 384, elements: !1393)
!1393 = !{!1394, !1395, !1399, !1403, !1409, !1413}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1392, file: !25, line: 40, baseType: !24, size: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1392, file: !25, line: 41, baseType: !1396, size: 64, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!104}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1392, file: !25, line: 42, baseType: !1400, size: 64, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!65}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1392, file: !25, line: 43, baseType: !1404, size: 64, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!112, !1407}
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !25, line: 19, flags: DIFlagFwdDecl)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1392, file: !25, line: 44, baseType: !1410, size: 64, offset: 256)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!112}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1392, file: !25, line: 45, baseType: !1414, size: 64, offset: 320)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{null, !65}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !194, file: !120, line: 144, baseType: !1418, size: 64, offset: 320)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!112, !130}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !194, file: !120, line: 145, baseType: !1422, size: 64, offset: 384)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{null, !130, !1425, !1431}
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1330, line: 23, baseType: !1427)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1330, line: 21, size: 32, elements: !1428)
!1428 = !{!1429}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1427, file: !1330, line: 22, baseType: !1430, size: 32)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !64, line: 32, baseType: !914)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1330, line: 28, baseType: !1433)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1330, line: 26, size: 32, elements: !1434)
!1434 = !{!1435}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1433, file: !1330, line: 27, baseType: !1436, size: 32)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !64, line: 33, baseType: !1437)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !212, line: 50, baseType: !7)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !119, file: !120, line: 70, baseType: !1439, size: 64, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1441, line: 123, size: 1024, elements: !1442)
!1441 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1442 = !{!1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1584, !1585, !1586, !1587, !1588}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1440, file: !1441, line: 124, baseType: !318, size: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1440, file: !1441, line: 125, baseType: !318, size: 32, offset: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1440, file: !1441, line: 135, baseType: !1439, size: 64, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1440, file: !1441, line: 136, baseType: !71, size: 64, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1440, file: !1441, line: 138, baseType: !277, size: 192, align: 64, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1440, file: !1441, line: 140, baseType: !112, size: 64, offset: 384)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1440, file: !1441, line: 141, baseType: !7, size: 32, offset: 448)
!1450 = !DIDerivedType(tag: DW_TAG_member, scope: !1440, file: !1441, line: 142, baseType: !1451, size: 256, offset: 512)
!1451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1440, file: !1441, line: 142, size: 256, elements: !1452)
!1452 = !{!1453, !1507, !1511}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1451, file: !1441, line: 143, baseType: !1454, size: 192)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1441, line: 91, size: 192, elements: !1455)
!1455 = !{!1456, !1457, !1458}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1454, file: !1441, line: 92, baseType: !229, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1454, file: !1441, line: 94, baseType: !294, size: 64, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1454, file: !1441, line: 100, baseType: !1459, size: 64, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1441, line: 180, size: 704, elements: !1461)
!1461 = !{!1462, !1463, !1464, !1477, !1478, !1479, !1505, !1506}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1460, file: !1441, line: 182, baseType: !1439, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1460, file: !1441, line: 183, baseType: !7, size: 32, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1460, file: !1441, line: 186, baseType: !1465, size: 192, offset: 128)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1466, line: 19, size: 192, elements: !1467)
!1466 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1467 = !{!1468, !1475, !1476}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1465, file: !1466, line: 20, baseType: !1469, size: 128)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1470, line: 292, size: 128, elements: !1471)
!1470 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1471 = !{!1472, !1473, !1474}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1469, file: !1470, line: 293, baseType: !137)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1469, file: !1470, line: 295, baseType: !63, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1469, file: !1470, line: 296, baseType: !65, size: 64, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1465, file: !1466, line: 21, baseType: !7, size: 32, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1465, file: !1466, line: 22, baseType: !7, size: 32, offset: 160)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1460, file: !1441, line: 187, baseType: !76, size: 32, offset: 320)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1460, file: !1441, line: 188, baseType: !76, size: 32, offset: 352)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1460, file: !1441, line: 189, baseType: !1480, size: 64, offset: 384)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1441, line: 168, size: 320, elements: !1482)
!1482 = !{!1483, !1489, !1493, !1497, !1501}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1481, file: !1441, line: 169, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!163, !1487, !1459}
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !259, line: 539, flags: DIFlagFwdDecl)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1481, file: !1441, line: 171, baseType: !1490, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!163, !1439, !71, !220}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1481, file: !1441, line: 173, baseType: !1494, size: 64, offset: 128)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!163, !1439}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1481, file: !1441, line: 174, baseType: !1498, size: 64, offset: 192)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!163, !1439, !1439, !71}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1481, file: !1441, line: 176, baseType: !1502, size: 64, offset: 256)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!163, !1487, !1439, !1459}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1460, file: !1441, line: 192, baseType: !124, size: 128, offset: 448)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1460, file: !1441, line: 194, baseType: !725, size: 128, offset: 576)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1451, file: !1441, line: 144, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1441, line: 103, size: 64, elements: !1509)
!1509 = !{!1510}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1508, file: !1441, line: 104, baseType: !1439, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1451, file: !1441, line: 145, baseType: !1512, size: 256)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1441, line: 107, size: 256, elements: !1513)
!1513 = !{!1514, !1579, !1582, !1583}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1512, file: !1441, line: 108, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1517)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1441, line: 217, size: 768, elements: !1518)
!1518 = !{!1519, !1539, !1543, !1547, !1552, !1556, !1560, !1564, !1565, !1566, !1567, !1575}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1517, file: !1441, line: 222, baseType: !1520, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!163, !1523}
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1441, line: 197, size: 1088, elements: !1525)
!1525 = !{!1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1524, file: !1441, line: 199, baseType: !1439, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1524, file: !1441, line: 200, baseType: !257, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1524, file: !1441, line: 201, baseType: !1487, size: 64, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1524, file: !1441, line: 202, baseType: !65, size: 64, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1524, file: !1441, line: 205, baseType: !395, size: 192, offset: 256)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1524, file: !1441, line: 206, baseType: !395, size: 192, offset: 448)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1524, file: !1441, line: 207, baseType: !163, size: 32, offset: 640)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1524, file: !1441, line: 208, baseType: !124, size: 128, offset: 704)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1524, file: !1441, line: 209, baseType: !179, size: 64, offset: 832)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1524, file: !1441, line: 211, baseType: !226, size: 64, offset: 896)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1524, file: !1441, line: 212, baseType: !104, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1524, file: !1441, line: 213, baseType: !104, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1524, file: !1441, line: 214, baseType: !1374, size: 64, offset: 1024)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1517, file: !1441, line: 223, baseType: !1540, size: 64, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{null, !1523}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1517, file: !1441, line: 236, baseType: !1544, size: 64, offset: 128)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!163, !1487, !65}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1517, file: !1441, line: 238, baseType: !1548, size: 64, offset: 192)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!65, !1487, !1551}
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1517, file: !1441, line: 239, baseType: !1553, size: 64, offset: 256)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!65, !1487, !65, !1551}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1517, file: !1441, line: 240, baseType: !1557, size: 64, offset: 320)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{null, !1487, !65}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1517, file: !1441, line: 242, baseType: !1561, size: 64, offset: 384)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!210, !1523, !179, !226, !260}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1517, file: !1441, line: 252, baseType: !226, size: 64, offset: 448)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1517, file: !1441, line: 259, baseType: !104, size: 8, offset: 512)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1517, file: !1441, line: 260, baseType: !1561, size: 64, offset: 576)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1517, file: !1441, line: 263, baseType: !1568, size: 64, offset: 640)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!1571, !1523, !1573}
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1572, line: 52, baseType: !7)
!1572 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1441, line: 27, flags: DIFlagFwdDecl)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1517, file: !1441, line: 266, baseType: !1576, size: 64, offset: 704)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!163, !1523, !268}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1512, file: !1441, line: 109, baseType: !1580, size: 64, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1441, line: 31, flags: DIFlagFwdDecl)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1512, file: !1441, line: 110, baseType: !260, size: 64, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1512, file: !1441, line: 111, baseType: !1439, size: 64, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1440, file: !1441, line: 148, baseType: !65, size: 64, offset: 768)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1440, file: !1441, line: 154, baseType: !298, size: 64, offset: 832)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1440, file: !1441, line: 156, baseType: !221, size: 16, offset: 896)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1440, file: !1441, line: 157, baseType: !220, size: 16, offset: 912)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1440, file: !1441, line: 158, baseType: !1589, size: 64, offset: 960)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1441, line: 32, flags: DIFlagFwdDecl)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !119, file: !120, line: 71, baseType: !1592, size: 32, offset: 448)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1593, line: 19, size: 32, elements: !1594)
!1593 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1594 = !{!1595}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1592, file: !1593, line: 20, baseType: !454, size: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !119, file: !120, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !119, file: !120, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !119, file: !120, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !119, file: !120, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !119, file: !120, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !116, file: !37, line: 463, baseType: !1602, size: 64, offset: 512)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !116, file: !37, line: 465, baseType: !1604, size: 64, offset: 576)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !37, line: 36, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !116, file: !37, line: 467, baseType: !71, size: 64, offset: 640)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !37, line: 468, baseType: !1608, size: 64, offset: 704)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1610)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !37, line: 87, size: 384, elements: !1611)
!1611 = !{!1612, !1613, !1614, !1618, !1623, !1627}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1610, file: !37, line: 88, baseType: !71, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1610, file: !37, line: 89, baseType: !233, size: 64, offset: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1610, file: !37, line: 90, baseType: !1615, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!163, !1602, !174}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1610, file: !37, line: 91, baseType: !1619, size: 64, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!179, !1602, !1622, !1425, !1431}
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1610, file: !37, line: 93, baseType: !1624, size: 64, offset: 256)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{null, !1602}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1610, file: !37, line: 95, baseType: !1628, size: 64, offset: 320)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1630)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !44, line: 278, size: 1472, elements: !1631)
!1631 = !{!1632, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1630, file: !44, line: 279, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!163, !1602}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1630, file: !44, line: 280, baseType: !1624, size: 64, offset: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1630, file: !44, line: 281, baseType: !1633, size: 64, offset: 128)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1630, file: !44, line: 282, baseType: !1633, size: 64, offset: 192)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1630, file: !44, line: 283, baseType: !1633, size: 64, offset: 256)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1630, file: !44, line: 284, baseType: !1633, size: 64, offset: 320)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1630, file: !44, line: 285, baseType: !1633, size: 64, offset: 384)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1630, file: !44, line: 286, baseType: !1633, size: 64, offset: 448)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1630, file: !44, line: 287, baseType: !1633, size: 64, offset: 512)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1630, file: !44, line: 288, baseType: !1633, size: 64, offset: 576)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1630, file: !44, line: 289, baseType: !1633, size: 64, offset: 640)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1630, file: !44, line: 290, baseType: !1633, size: 64, offset: 704)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1630, file: !44, line: 291, baseType: !1633, size: 64, offset: 768)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1630, file: !44, line: 292, baseType: !1633, size: 64, offset: 832)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1630, file: !44, line: 293, baseType: !1633, size: 64, offset: 896)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1630, file: !44, line: 294, baseType: !1633, size: 64, offset: 960)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1630, file: !44, line: 295, baseType: !1633, size: 64, offset: 1024)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1630, file: !44, line: 296, baseType: !1633, size: 64, offset: 1088)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1630, file: !44, line: 297, baseType: !1633, size: 64, offset: 1152)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1630, file: !44, line: 298, baseType: !1633, size: 64, offset: 1216)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1630, file: !44, line: 299, baseType: !1633, size: 64, offset: 1280)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1630, file: !44, line: 300, baseType: !1633, size: 64, offset: 1344)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1630, file: !44, line: 301, baseType: !1633, size: 64, offset: 1408)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !116, file: !37, line: 470, baseType: !1659, size: 64, offset: 768)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1661, line: 82, size: 1408, elements: !1662)
!1661 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1662 = !{!1663, !1664, !1665, !1666, !1667, !1668, !1669, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1748, !1751, !1754}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1660, file: !1661, line: 83, baseType: !71, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1660, file: !1661, line: 84, baseType: !71, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1660, file: !1661, line: 85, baseType: !1602, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1660, file: !1661, line: 86, baseType: !233, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1660, file: !1661, line: 87, baseType: !233, size: 64, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1660, file: !1661, line: 88, baseType: !233, size: 64, offset: 320)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1660, file: !1661, line: 90, baseType: !1670, size: 64, offset: 384)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!163, !1602, !1673}
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !31, line: 95, size: 1152, elements: !1675)
!1675 = !{!1676, !1677, !1678, !1682, !1683, !1684, !1685, !1699, !1712, !1713, !1714, !1715, !1716, !1724, !1725, !1726, !1727, !1728, !1729}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1674, file: !31, line: 96, baseType: !71, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1674, file: !31, line: 97, baseType: !1659, size: 64, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1674, file: !31, line: 99, baseType: !1679, size: 64, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1681, line: 76, flags: DIFlagFwdDecl)
!1681 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1674, file: !31, line: 100, baseType: !71, size: 64, offset: 192)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1674, file: !31, line: 102, baseType: !104, size: 8, offset: 256)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1674, file: !31, line: 103, baseType: !30, size: 32, offset: 288)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1674, file: !31, line: 105, baseType: !1686, size: 64, offset: 320)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1688)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1689, line: 262, size: 1600, elements: !1690)
!1689 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1690 = !{!1691, !1693, !1694, !1698}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1688, file: !1689, line: 263, baseType: !1692, size: 256)
!1692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 256, elements: !1236)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1688, file: !1689, line: 264, baseType: !1692, size: 256, offset: 256)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1688, file: !1689, line: 265, baseType: !1695, size: 1024, offset: 512)
!1695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 1024, elements: !1696)
!1696 = !{!1697}
!1697 = !DISubrange(count: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1688, file: !1689, line: 266, baseType: !112, size: 64, offset: 1536)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1674, file: !31, line: 106, baseType: !1700, size: 64, offset: 384)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1702)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1689, line: 210, size: 256, elements: !1703)
!1703 = !{!1704, !1708, !1710, !1711}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1702, file: !1689, line: 211, baseType: !1705, size: 72)
!1705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !586, size: 72, elements: !1706)
!1706 = !{!1707}
!1707 = !DISubrange(count: 9)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1702, file: !1689, line: 212, baseType: !1709, size: 64, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1689, line: 14, baseType: !229)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1702, file: !1689, line: 213, baseType: !78, size: 32, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1702, file: !1689, line: 214, baseType: !78, size: 32, offset: 224)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1674, file: !31, line: 108, baseType: !1633, size: 64, offset: 448)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1674, file: !31, line: 109, baseType: !1624, size: 64, offset: 512)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1674, file: !31, line: 110, baseType: !1633, size: 64, offset: 576)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1674, file: !31, line: 111, baseType: !1624, size: 64, offset: 640)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1674, file: !31, line: 112, baseType: !1717, size: 64, offset: 704)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!163, !1602, !1720}
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !44, line: 52, baseType: !1721)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !44, line: 50, size: 32, elements: !1722)
!1722 = !{!1723}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1721, file: !44, line: 51, baseType: !163, size: 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1674, file: !31, line: 113, baseType: !1633, size: 64, offset: 768)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1674, file: !31, line: 114, baseType: !233, size: 64, offset: 832)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1674, file: !31, line: 115, baseType: !233, size: 64, offset: 896)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1674, file: !31, line: 117, baseType: !1628, size: 64, offset: 960)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1674, file: !31, line: 118, baseType: !1624, size: 64, offset: 1024)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1674, file: !31, line: 120, baseType: !1730, size: 64, offset: 1088)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !31, line: 120, flags: DIFlagFwdDecl)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1660, file: !1661, line: 91, baseType: !1615, size: 64, offset: 448)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1660, file: !1661, line: 92, baseType: !1633, size: 64, offset: 512)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1660, file: !1661, line: 93, baseType: !1624, size: 64, offset: 576)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1660, file: !1661, line: 94, baseType: !1633, size: 64, offset: 640)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1660, file: !1661, line: 95, baseType: !1624, size: 64, offset: 704)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1660, file: !1661, line: 97, baseType: !1633, size: 64, offset: 768)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1660, file: !1661, line: 98, baseType: !1633, size: 64, offset: 832)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1660, file: !1661, line: 100, baseType: !1717, size: 64, offset: 896)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1660, file: !1661, line: 101, baseType: !1633, size: 64, offset: 960)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1660, file: !1661, line: 103, baseType: !1633, size: 64, offset: 1024)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1660, file: !1661, line: 105, baseType: !1633, size: 64, offset: 1088)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1660, file: !1661, line: 107, baseType: !1628, size: 64, offset: 1152)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1660, file: !1661, line: 109, baseType: !1745, size: 64, offset: 1216)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1747)
!1747 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1661, line: 109, flags: DIFlagFwdDecl)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1660, file: !1661, line: 111, baseType: !1749, size: 64, offset: 1280)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1661, line: 111, flags: DIFlagFwdDecl)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1660, file: !1661, line: 112, baseType: !1752, offset: 1344)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1753, line: 187, elements: !151)
!1753 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1660, file: !1661, line: 114, baseType: !104, size: 8, offset: 1344)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !116, file: !37, line: 471, baseType: !1673, size: 64, offset: 832)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !116, file: !37, line: 473, baseType: !65, size: 64, offset: 896)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !116, file: !37, line: 475, baseType: !65, size: 64, offset: 960)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !116, file: !37, line: 480, baseType: !395, size: 192, offset: 1024)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !116, file: !37, line: 484, baseType: !1760, size: 576, offset: 1216)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !37, line: 361, size: 576, elements: !1761)
!1761 = !{!1762, !1763, !1764, !1765, !1766, !1767}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1760, file: !37, line: 362, baseType: !124, size: 128)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1760, file: !37, line: 363, baseType: !124, size: 128, offset: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1760, file: !37, line: 364, baseType: !124, size: 128, offset: 256)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1760, file: !37, line: 365, baseType: !124, size: 128, offset: 384)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1760, file: !37, line: 366, baseType: !104, size: 8, offset: 512)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1760, file: !37, line: 367, baseType: !36, size: 32, offset: 544)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !116, file: !37, line: 485, baseType: !1769, size: 2304, offset: 1792)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !44, line: 565, size: 2304, elements: !1770)
!1770 = !{!1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1866, !1870}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1769, file: !44, line: 566, baseType: !1720, size: 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1769, file: !44, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1769, file: !44, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1769, file: !44, line: 569, baseType: !104, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1769, file: !44, line: 570, baseType: !104, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1769, file: !44, line: 571, baseType: !104, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1769, file: !44, line: 572, baseType: !104, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1769, file: !44, line: 573, baseType: !104, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1769, file: !44, line: 574, baseType: !104, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1769, file: !44, line: 575, baseType: !104, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1769, file: !44, line: 576, baseType: !104, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1769, file: !44, line: 577, baseType: !76, size: 32, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1769, file: !44, line: 578, baseType: !137, offset: 96)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1769, file: !44, line: 580, baseType: !124, size: 128, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1769, file: !44, line: 581, baseType: !754, size: 192, offset: 256)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1769, file: !44, line: 582, baseType: !1787, size: 64, offset: 448)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1789, line: 43, size: 1472, elements: !1790)
!1789 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1790 = !{!1791, !1792, !1793, !1794, !1795, !1798, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1788, file: !1789, line: 44, baseType: !71, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1788, file: !1789, line: 45, baseType: !163, size: 32, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1788, file: !1789, line: 46, baseType: !124, size: 128, offset: 128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1788, file: !1789, line: 47, baseType: !137, offset: 256)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1788, file: !1789, line: 48, baseType: !1796, size: 64, offset: 256)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !44, line: 533, flags: DIFlagFwdDecl)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1788, file: !1789, line: 49, baseType: !1799, size: 320, offset: 320)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1800, line: 11, size: 320, elements: !1801)
!1800 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1801 = !{!1802, !1803, !1804, !1809}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1799, file: !1800, line: 16, baseType: !718, size: 128)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1799, file: !1800, line: 17, baseType: !229, size: 64, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1799, file: !1800, line: 18, baseType: !1805, size: 64, offset: 192)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{null, !1808}
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1799, file: !1800, line: 19, baseType: !76, size: 32, offset: 256)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1788, file: !1789, line: 50, baseType: !229, size: 64, offset: 640)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1788, file: !1789, line: 51, baseType: !524, size: 64, offset: 704)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1788, file: !1789, line: 52, baseType: !524, size: 64, offset: 768)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1788, file: !1789, line: 53, baseType: !524, size: 64, offset: 832)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1788, file: !1789, line: 54, baseType: !524, size: 64, offset: 896)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1788, file: !1789, line: 55, baseType: !524, size: 64, offset: 960)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1788, file: !1789, line: 56, baseType: !229, size: 64, offset: 1024)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1788, file: !1789, line: 57, baseType: !229, size: 64, offset: 1088)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1788, file: !1789, line: 58, baseType: !229, size: 64, offset: 1152)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1788, file: !1789, line: 59, baseType: !229, size: 64, offset: 1216)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1788, file: !1789, line: 60, baseType: !229, size: 64, offset: 1280)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1788, file: !1789, line: 61, baseType: !1602, size: 64, offset: 1344)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1788, file: !1789, line: 62, baseType: !104, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1788, file: !1789, line: 63, baseType: !104, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1769, file: !44, line: 583, baseType: !104, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1769, file: !44, line: 584, baseType: !104, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1769, file: !44, line: 585, baseType: !104, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1769, file: !44, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1769, file: !44, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1769, file: !44, line: 592, baseType: !516, size: 512, offset: 576)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1769, file: !44, line: 593, baseType: !298, size: 64, offset: 1088)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1769, file: !44, line: 594, baseType: !1341, size: 256, offset: 1152)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1769, file: !44, line: 595, baseType: !725, size: 128, offset: 1408)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1769, file: !44, line: 596, baseType: !1796, size: 64, offset: 1536)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1769, file: !44, line: 597, baseType: !318, size: 32, offset: 1600)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1769, file: !44, line: 598, baseType: !318, size: 32, offset: 1632)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1769, file: !44, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1769, file: !44, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1769, file: !44, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1769, file: !44, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1769, file: !44, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1769, file: !44, line: 604, baseType: !104, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1769, file: !44, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1769, file: !44, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1769, file: !44, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1769, file: !44, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1769, file: !44, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1769, file: !44, line: 610, baseType: !7, size: 32, offset: 1696)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1769, file: !44, line: 611, baseType: !43, size: 32, offset: 1728)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1769, file: !44, line: 612, baseType: !51, size: 32, offset: 1760)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1769, file: !44, line: 613, baseType: !163, size: 32, offset: 1792)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1769, file: !44, line: 614, baseType: !163, size: 32, offset: 1824)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1769, file: !44, line: 615, baseType: !298, size: 64, offset: 1856)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1769, file: !44, line: 616, baseType: !298, size: 64, offset: 1920)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1769, file: !44, line: 617, baseType: !298, size: 64, offset: 1984)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1769, file: !44, line: 618, baseType: !298, size: 64, offset: 2048)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1769, file: !44, line: 620, baseType: !1857, size: 64, offset: 2112)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !44, line: 536, size: 256, elements: !1859)
!1859 = !{!1860, !1861, !1862, !1863}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1858, file: !44, line: 537, baseType: !137)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1858, file: !44, line: 538, baseType: !7, size: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1858, file: !44, line: 540, baseType: !124, size: 128, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1858, file: !44, line: 543, baseType: !1864, size: 64, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !44, line: 534, flags: DIFlagFwdDecl)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1769, file: !44, line: 621, baseType: !1867, size: 64, offset: 2176)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{null, !1602, !678}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1769, file: !44, line: 622, baseType: !1871, size: 64, offset: 2240)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !44, line: 622, flags: DIFlagFwdDecl)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !116, file: !37, line: 486, baseType: !1874, size: 64, offset: 4096)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !44, line: 642, size: 1792, elements: !1876)
!1876 = !{!1877, !1878, !1879, !1883, !1884, !1885}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1875, file: !44, line: 643, baseType: !1630, size: 1472)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1875, file: !44, line: 644, baseType: !1633, size: 64, offset: 1472)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1875, file: !44, line: 645, baseType: !1880, size: 64, offset: 1536)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{null, !1602, !104}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1875, file: !44, line: 646, baseType: !1633, size: 64, offset: 1600)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1875, file: !44, line: 647, baseType: !1624, size: 64, offset: 1664)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1875, file: !44, line: 648, baseType: !1624, size: 64, offset: 1728)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !116, file: !37, line: 493, baseType: !1887, size: 64, offset: 4160)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !37, line: 493, flags: DIFlagFwdDecl)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !116, file: !37, line: 499, baseType: !124, size: 128, offset: 4224)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !116, file: !37, line: 502, baseType: !1891, size: 64, offset: 4352)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1893)
!1893 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !37, line: 502, flags: DIFlagFwdDecl)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !116, file: !37, line: 504, baseType: !1895, size: 64, offset: 4416)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !116, file: !37, line: 505, baseType: !298, size: 64, offset: 4480)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !116, file: !37, line: 510, baseType: !298, size: 64, offset: 4544)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !116, file: !37, line: 511, baseType: !1899, size: 64, offset: 4608)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1901)
!1901 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !37, line: 511, flags: DIFlagFwdDecl)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !116, file: !37, line: 513, baseType: !1903, size: 64, offset: 4672)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !37, line: 288, size: 128, elements: !1905)
!1905 = !{!1906, !1907}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1904, file: !37, line: 293, baseType: !7, size: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1904, file: !37, line: 294, baseType: !229, size: 64, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !116, file: !37, line: 515, baseType: !124, size: 128, offset: 4736)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !116, file: !37, line: 526, baseType: !1910, offset: 4864)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1911, line: 5, elements: !151)
!1911 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !116, file: !37, line: 528, baseType: !66, size: 64, offset: 4864)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !116, file: !37, line: 529, baseType: !86, size: 64, offset: 4928)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !116, file: !37, line: 534, baseType: !1915, size: 32, offset: 4992)
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !64, line: 16, baseType: !1916)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !64, line: 13, baseType: !76)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !116, file: !37, line: 535, baseType: !76, size: 32, offset: 5024)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !116, file: !37, line: 537, baseType: !137, offset: 5056)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !116, file: !37, line: 538, baseType: !124, size: 128, offset: 5056)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !116, file: !37, line: 540, baseType: !1921, size: 64, offset: 5184)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1923, line: 54, size: 960, elements: !1924)
!1923 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1924 = !{!1925, !1926, !1927, !1928, !1929, !1930, !1931, !1935, !1939, !1940, !1941, !1942, !1946, !1950, !1951}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1922, file: !1923, line: 55, baseType: !71, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1922, file: !1923, line: 56, baseType: !1679, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1922, file: !1923, line: 58, baseType: !233, size: 64, offset: 128)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1922, file: !1923, line: 59, baseType: !233, size: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1922, file: !1923, line: 60, baseType: !130, size: 64, offset: 256)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1922, file: !1923, line: 62, baseType: !1615, size: 64, offset: 320)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1922, file: !1923, line: 63, baseType: !1932, size: 64, offset: 384)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!179, !1602, !1622}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1922, file: !1923, line: 65, baseType: !1936, size: 64, offset: 448)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{null, !1921}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1922, file: !1923, line: 66, baseType: !1624, size: 64, offset: 512)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1922, file: !1923, line: 68, baseType: !1633, size: 64, offset: 576)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1922, file: !1923, line: 70, baseType: !1390, size: 64, offset: 640)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1922, file: !1923, line: 71, baseType: !1943, size: 64, offset: 704)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!112, !1602}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1922, file: !1923, line: 73, baseType: !1947, size: 64, offset: 768)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{null, !1602, !1425, !1431}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1922, file: !1923, line: 75, baseType: !1628, size: 64, offset: 832)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1922, file: !1923, line: 77, baseType: !1749, size: 64, offset: 896)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !116, file: !37, line: 541, baseType: !233, size: 64, offset: 5248)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !116, file: !37, line: 543, baseType: !1624, size: 64, offset: 5312)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !116, file: !37, line: 544, baseType: !1955, size: 64, offset: 5376)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !37, line: 45, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !116, file: !37, line: 545, baseType: !1958, size: 64, offset: 5440)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !37, line: 47, flags: DIFlagFwdDecl)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !116, file: !37, line: 547, baseType: !104, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !116, file: !37, line: 548, baseType: !104, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !116, file: !37, line: 549, baseType: !104, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !116, file: !37, line: 550, baseType: !104, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !90, file: !83, line: 116, baseType: !1965, size: 64, offset: 256)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!104, !106, !71}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !90, file: !83, line: 118, baseType: !1969, size: 64, offset: 320)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!163, !106, !71, !7, !65, !226}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !90, file: !83, line: 123, baseType: !1973, size: 64, offset: 384)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!163, !106, !71, !1976, !226}
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !90, file: !83, line: 126, baseType: !1978, size: 64, offset: 448)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!71, !106}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !90, file: !83, line: 127, baseType: !1978, size: 64, offset: 512)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !90, file: !83, line: 128, baseType: !1983, size: 64, offset: 576)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!86, !106}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !90, file: !83, line: 130, baseType: !1987, size: 64, offset: 640)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!86, !106, !86}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !90, file: !83, line: 133, baseType: !1991, size: 64, offset: 704)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!86, !106, !71}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !90, file: !83, line: 135, baseType: !1995, size: 64, offset: 768)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!163, !106, !71, !71, !7, !7, !1998}
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !83, line: 43, size: 640, elements: !2000)
!2000 = !{!2001, !2002, !2003}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1999, file: !83, line: 44, baseType: !86, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1999, file: !83, line: 45, baseType: !7, size: 32, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1999, file: !83, line: 46, baseType: !2004, size: 512, offset: 128)
!2004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 512, elements: !554)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !90, file: !83, line: 140, baseType: !1987, size: 64, offset: 832)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !90, file: !83, line: 143, baseType: !1983, size: 64, offset: 896)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !90, file: !83, line: 145, baseType: !93, size: 64, offset: 960)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !90, file: !83, line: 146, baseType: !2009, size: 64, offset: 1024)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!163, !106, !2012}
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !83, line: 29, size: 128, elements: !2014)
!2014 = !{!2015, !2016, !2017}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2013, file: !83, line: 30, baseType: !7, size: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2013, file: !83, line: 31, baseType: !7, size: 32, offset: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2013, file: !83, line: 32, baseType: !106, size: 64, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !90, file: !83, line: 148, baseType: !2019, size: 64, offset: 1088)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!163, !106, !1602}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !82, file: !83, line: 20, baseType: !1602, size: 64, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !67, file: !68, line: 57, baseType: !2024, size: 64, offset: 384)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !68, line: 31, size: 704, elements: !2026)
!2026 = !{!2027, !2028, !2029, !2030, !2031}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2025, file: !68, line: 32, baseType: !179, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2025, file: !68, line: 33, baseType: !163, size: 32, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2025, file: !68, line: 34, baseType: !65, size: 64, offset: 128)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2025, file: !68, line: 35, baseType: !2024, size: 64, offset: 192)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2025, file: !68, line: 43, baseType: !248, size: 448, offset: 256)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !67, file: !68, line: 58, baseType: !2024, size: 64, offset: 448)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !67, file: !68, line: 59, baseType: !66, size: 64, offset: 512)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !67, file: !68, line: 60, baseType: !66, size: 64, offset: 576)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !67, file: !68, line: 61, baseType: !66, size: 64, offset: 640)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !67, file: !68, line: 63, baseType: !119, size: 512, offset: 704)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !67, file: !68, line: 65, baseType: !229, size: 64, offset: 1216)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !67, file: !68, line: 66, baseType: !65, size: 64, offset: 1280)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !127)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_classdev", file: !6, line: 64, size: 2048, elements: !2044)
!2044 = !{!2045, !2046, !2047, !2048, !2049, !2050, !2054, !2058, !2062, !2067, !2076, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2093, !2094, !2095}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2043, file: !6, line: 65, baseType: !71, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !2043, file: !6, line: 66, baseType: !5, size: 32, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "max_brightness", scope: !2043, file: !6, line: 67, baseType: !5, size: 32, offset: 96)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2043, file: !6, line: 68, baseType: !163, size: 32, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "work_flags", scope: !2043, file: !6, line: 84, baseType: !229, size: 64, offset: 192)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set", scope: !2043, file: !6, line: 97, baseType: !2051, size: 64, offset: 256)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{null, !2042, !5}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set_blocking", scope: !2043, file: !6, line: 103, baseType: !2055, size: 64, offset: 320)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!163, !2042, !5}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_get", scope: !2043, file: !6, line: 106, baseType: !2059, size: 64, offset: 384)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!5, !2042}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "blink_set", scope: !2043, file: !6, line: 116, baseType: !2063, size: 64, offset: 448)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!163, !2042, !2066, !2066}
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_set", scope: !2043, file: !6, line: 120, baseType: !2068, size: 64, offset: 512)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!163, !2042, !2071, !76, !163}
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_pattern", file: !6, line: 579, size: 64, elements: !2073)
!2073 = !{!2074, !2075}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "delta_t", scope: !2072, file: !6, line: 580, baseType: !76, size: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !2072, file: !6, line: 581, baseType: !163, size: 32, offset: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_clear", scope: !2043, file: !6, line: 122, baseType: !2077, size: 64, offset: 576)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!163, !2042}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2043, file: !6, line: 124, baseType: !1602, size: 64, offset: 640)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2043, file: !6, line: 125, baseType: !233, size: 64, offset: 704)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2043, file: !6, line: 127, baseType: !124, size: 128, offset: 768)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "default_trigger", scope: !2043, file: !6, line: 128, baseType: !71, size: 64, offset: 896)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_on", scope: !2043, file: !6, line: 130, baseType: !229, size: 64, offset: 960)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_off", scope: !2043, file: !6, line: 130, baseType: !229, size: 64, offset: 1024)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "blink_timer", scope: !2043, file: !6, line: 131, baseType: !1799, size: 320, offset: 1088)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "blink_brightness", scope: !2043, file: !6, line: 132, baseType: !163, size: 32, offset: 1408)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "new_blink_brightness", scope: !2043, file: !6, line: 133, baseType: !163, size: 32, offset: 1440)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "flash_resume", scope: !2043, file: !6, line: 134, baseType: !2090, size: 64, offset: 1472)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{null, !2042}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "set_brightness_work", scope: !2043, file: !6, line: 136, baseType: !1341, size: 256, offset: 1536)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_set_value", scope: !2043, file: !6, line: 137, baseType: !163, size: 32, offset: 1792)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "led_access", scope: !2043, file: !6, line: 159, baseType: !395, size: 192, offset: 1856)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!2097 = !{!2098, !2110, !2112, !2119, !2124, !2129, !2134, !0, !2139, !2144, !2146, !2149, !2151, !2154, !2168}
!2098 = !DIGlobalVariableExpression(var: !2099, expr: !DIExpression())
!2099 = distinct !DIGlobalVariable(name: "__key", scope: !2100, file: !3, line: 370, type: !1752, isLocal: true, isDefinition: true)
!2100 = distinct !DISubprogram(name: "led_classdev_register_ext", scope: !3, file: !3, line: 340, type: !2101, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!163, !1602, !2042, !2103}
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_init_data", file: !6, line: 36, size: 256, elements: !2105)
!2105 = !{!2106, !2107, !2108, !2109}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2104, file: !6, line: 38, baseType: !86, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "default_label", scope: !2104, file: !6, line: 45, baseType: !71, size: 64, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "devicename", scope: !2104, file: !6, line: 51, baseType: !71, size: 64, offset: 128)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "devname_mandatory", scope: !2104, file: !6, line: 57, baseType: !104, size: 8, offset: 192)
!2110 = !DIGlobalVariableExpression(var: !2111, expr: !DIExpression())
!2111 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_leds_init164", scope: !2, file: !3, line: 544, type: !65, isLocal: true, isDefinition: true)
!2112 = !DIGlobalVariableExpression(var: !2113, expr: !DIExpression())
!2113 = distinct !DIGlobalVariable(name: "__exitcall_leds_exit", scope: !2, file: !3, line: 545, type: !2114, isLocal: true, isDefinition: true)
!2114 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2115, line: 117, baseType: !2116)
!2115 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{null}
!2119 = !DIGlobalVariableExpression(var: !2120, expr: !DIExpression())
!2120 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author165", scope: !2, file: !3, line: 547, type: !2121, isLocal: true, isDefinition: true, align: 8)
!2121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 344, elements: !2122)
!2122 = !{!2123}
!2123 = !DISubrange(count: 43)
!2124 = !DIGlobalVariableExpression(var: !2125, expr: !DIExpression())
!2125 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file166", scope: !2, file: !3, line: 548, type: !2126, isLocal: true, isDefinition: true, align: 8)
!2126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 304, elements: !2127)
!2127 = !{!2128}
!2128 = !DISubrange(count: 38)
!2129 = !DIGlobalVariableExpression(var: !2130, expr: !DIExpression())
!2130 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license167", scope: !2, file: !3, line: 548, type: !2131, isLocal: true, isDefinition: true, align: 8)
!2131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 176, elements: !2132)
!2132 = !{!2133}
!2133 = !DISubrange(count: 22)
!2134 = !DIGlobalVariableExpression(var: !2135, expr: !DIExpression())
!2135 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description168", scope: !2, file: !3, line: 549, type: !2136, isLocal: true, isDefinition: true, align: 8)
!2136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 336, elements: !2137)
!2137 = !{!2138}
!2138 = !DISubrange(count: 42)
!2139 = !DIGlobalVariableExpression(var: !2140, expr: !DIExpression())
!2140 = distinct !DIGlobalVariable(name: "__key", scope: !2141, file: !3, line: 531, type: !1752, isLocal: true, isDefinition: true)
!2141 = distinct !DISubprogram(name: "leds_init", scope: !3, file: !3, line: 529, type: !2142, scopeLine: 530, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!163}
!2144 = !DIGlobalVariableExpression(var: !2145, expr: !DIExpression())
!2145 = distinct !DIGlobalVariable(name: "leds_class_dev_pm_ops", scope: !2, file: !3, line: 217, type: !1629, isLocal: true, isDefinition: true)
!2146 = !DIGlobalVariableExpression(var: !2147, expr: !DIExpression())
!2147 = distinct !DIGlobalVariable(name: "led_groups", scope: !2, file: !3, line: 98, type: !2148, isLocal: true, isDefinition: true)
!2148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 128, elements: !990)
!2149 = !DIGlobalVariableExpression(var: !2150, expr: !DIExpression())
!2150 = distinct !DIGlobalVariable(name: "led_group", scope: !2, file: !3, line: 94, type: !235, isLocal: true, isDefinition: true)
!2151 = !DIGlobalVariableExpression(var: !2152, expr: !DIExpression())
!2152 = distinct !DIGlobalVariable(name: "led_class_attrs", scope: !2, file: !3, line: 88, type: !2153, isLocal: true, isDefinition: true)
!2153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 192, elements: !180)
!2154 = !DIGlobalVariableExpression(var: !2155, expr: !DIExpression())
!2155 = distinct !DIGlobalVariable(name: "dev_attr_brightness", scope: !2, file: !3, line: 66, type: !2156, isLocal: true, isDefinition: true)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !37, line: 99, size: 256, elements: !2157)
!2157 = !{!2158, !2159, !2164}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2156, file: !37, line: 100, baseType: !216, size: 128)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2156, file: !37, line: 101, baseType: !2160, size: 64, offset: 128)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!210, !1602, !2163, !179}
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2156, file: !37, line: 103, baseType: !2165, size: 64, offset: 192)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!210, !1602, !2163, !71, !226}
!2168 = !DIGlobalVariableExpression(var: !2169, expr: !DIExpression())
!2169 = distinct !DIGlobalVariable(name: "dev_attr_max_brightness", scope: !2, file: !3, line: 75, type: !2156, isLocal: true, isDefinition: true)
!2170 = !{i32 7, !"Dwarf Version", i32 4}
!2171 = !{i32 2, !"Debug Info Version", i32 3}
!2172 = !{i32 1, !"wchar_size", i32 2}
!2173 = !{i32 1, !"Code Model", i32 2}
!2174 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2175 = distinct !DISubprogram(name: "led_classdev_suspend", scope: !3, file: !3, line: 172, type: !2091, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2176 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2175, file: !3, line: 172, type: !2042)
!2177 = !DILocation(line: 172, column: 48, scope: !2175)
!2178 = !DILocation(line: 174, column: 2, scope: !2175)
!2179 = !DILocation(line: 174, column: 12, scope: !2175)
!2180 = !DILocation(line: 174, column: 18, scope: !2175)
!2181 = !DILocation(line: 175, column: 26, scope: !2175)
!2182 = !DILocation(line: 175, column: 2, scope: !2175)
!2183 = !DILocation(line: 176, column: 14, scope: !2175)
!2184 = !DILocation(line: 176, column: 24, scope: !2175)
!2185 = !DILocation(line: 176, column: 2, scope: !2175)
!2186 = !DILocation(line: 177, column: 1, scope: !2175)
!2187 = distinct !DISubprogram(name: "led_classdev_resume", scope: !3, file: !3, line: 184, type: !2091, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2188 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2187, file: !3, line: 184, type: !2042)
!2189 = !DILocation(line: 184, column: 47, scope: !2187)
!2190 = !DILocation(line: 186, column: 26, scope: !2187)
!2191 = !DILocation(line: 186, column: 36, scope: !2187)
!2192 = !DILocation(line: 186, column: 46, scope: !2187)
!2193 = !DILocation(line: 186, column: 2, scope: !2187)
!2194 = !DILocation(line: 188, column: 6, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 188, column: 6)
!2196 = !DILocation(line: 188, column: 16, scope: !2195)
!2197 = !DILocation(line: 188, column: 6, scope: !2187)
!2198 = !DILocation(line: 189, column: 3, scope: !2195)
!2199 = !DILocation(line: 189, column: 13, scope: !2195)
!2200 = !DILocation(line: 189, column: 26, scope: !2195)
!2201 = !DILocation(line: 191, column: 2, scope: !2187)
!2202 = !DILocation(line: 191, column: 12, scope: !2187)
!2203 = !DILocation(line: 191, column: 18, scope: !2187)
!2204 = !DILocation(line: 192, column: 1, scope: !2187)
!2205 = distinct !DISubprogram(name: "of_led_get", scope: !3, file: !3, line: 227, type: !2206, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!2042, !66, !163}
!2208 = !DILocalVariable(name: "np", arg: 1, scope: !2205, file: !3, line: 227, type: !66)
!2209 = !DILocation(line: 227, column: 53, scope: !2205)
!2210 = !DILocalVariable(name: "index", arg: 2, scope: !2205, file: !3, line: 227, type: !163)
!2211 = !DILocation(line: 227, column: 61, scope: !2205)
!2212 = !DILocalVariable(name: "led_dev", scope: !2205, file: !3, line: 229, type: !1602)
!2213 = !DILocation(line: 229, column: 17, scope: !2205)
!2214 = !DILocalVariable(name: "led_cdev", scope: !2205, file: !3, line: 230, type: !2042)
!2215 = !DILocation(line: 230, column: 23, scope: !2205)
!2216 = !DILocalVariable(name: "led_node", scope: !2205, file: !3, line: 231, type: !66)
!2217 = !DILocation(line: 231, column: 22, scope: !2205)
!2218 = !DILocation(line: 233, column: 30, scope: !2205)
!2219 = !DILocation(line: 233, column: 42, scope: !2205)
!2220 = !DILocation(line: 233, column: 13, scope: !2205)
!2221 = !DILocation(line: 233, column: 11, scope: !2205)
!2222 = !DILocation(line: 234, column: 7, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2205, file: !3, line: 234, column: 6)
!2224 = !DILocation(line: 234, column: 6, scope: !2205)
!2225 = !DILocation(line: 235, column: 10, scope: !2223)
!2226 = !DILocation(line: 235, column: 3, scope: !2223)
!2227 = !DILocation(line: 237, column: 41, scope: !2205)
!2228 = !DILocation(line: 237, column: 53, scope: !2205)
!2229 = !DILocation(line: 237, column: 12, scope: !2205)
!2230 = !DILocation(line: 237, column: 10, scope: !2205)
!2231 = !DILocation(line: 238, column: 14, scope: !2205)
!2232 = !DILocation(line: 238, column: 2, scope: !2205)
!2233 = !DILocation(line: 240, column: 7, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2205, file: !3, line: 240, column: 6)
!2235 = !DILocation(line: 240, column: 6, scope: !2205)
!2236 = !DILocation(line: 241, column: 10, scope: !2234)
!2237 = !DILocation(line: 241, column: 3, scope: !2234)
!2238 = !DILocation(line: 243, column: 29, scope: !2205)
!2239 = !DILocation(line: 243, column: 13, scope: !2205)
!2240 = !DILocation(line: 243, column: 11, scope: !2205)
!2241 = !DILocation(line: 245, column: 22, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2205, file: !3, line: 245, column: 6)
!2243 = !DILocation(line: 245, column: 32, scope: !2242)
!2244 = !DILocation(line: 245, column: 37, scope: !2242)
!2245 = !DILocation(line: 245, column: 45, scope: !2242)
!2246 = !DILocation(line: 245, column: 53, scope: !2242)
!2247 = !DILocation(line: 245, column: 7, scope: !2242)
!2248 = !DILocation(line: 245, column: 6, scope: !2205)
!2249 = !DILocation(line: 246, column: 10, scope: !2242)
!2250 = !DILocation(line: 246, column: 3, scope: !2242)
!2251 = !DILocation(line: 248, column: 9, scope: !2205)
!2252 = !DILocation(line: 248, column: 2, scope: !2205)
!2253 = !DILocation(line: 249, column: 1, scope: !2205)
!2254 = distinct !DISubprogram(name: "ERR_PTR", scope: !2255, file: !2255, line: 24, type: !2256, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2255 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!65, !214}
!2258 = !DILocalVariable(name: "error", arg: 1, scope: !2254, file: !2255, line: 24, type: !214)
!2259 = !DILocation(line: 24, column: 48, scope: !2254)
!2260 = !DILocation(line: 26, column: 18, scope: !2254)
!2261 = !DILocation(line: 26, column: 9, scope: !2254)
!2262 = !DILocation(line: 26, column: 2, scope: !2254)
!2263 = distinct !DISubprogram(name: "class_find_device_by_of_node", scope: !1923, file: !1923, line: 140, type: !2264, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!1602, !1921, !2266}
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!2268 = !DILocalVariable(name: "class", arg: 1, scope: !2263, file: !1923, line: 140, type: !1921)
!2269 = !DILocation(line: 140, column: 44, scope: !2263)
!2270 = !DILocalVariable(name: "np", arg: 2, scope: !2263, file: !1923, line: 140, type: !2266)
!2271 = !DILocation(line: 140, column: 77, scope: !2263)
!2272 = !DILocation(line: 142, column: 27, scope: !2263)
!2273 = !DILocation(line: 142, column: 40, scope: !2263)
!2274 = !DILocation(line: 142, column: 9, scope: !2263)
!2275 = !DILocation(line: 142, column: 2, scope: !2263)
!2276 = distinct !DISubprogram(name: "of_node_put", scope: !68, file: !68, line: 129, type: !2277, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{null, !66}
!2279 = !DILocalVariable(name: "node", arg: 1, scope: !2276, file: !68, line: 129, type: !66)
!2280 = !DILocation(line: 129, column: 52, scope: !2276)
!2281 = !DILocation(line: 129, column: 60, scope: !2276)
!2282 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !37, file: !37, line: 655, type: !2283, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!65, !114}
!2285 = !DILocalVariable(name: "dev", arg: 1, scope: !2282, file: !37, line: 655, type: !114)
!2286 = !DILocation(line: 655, column: 58, scope: !2282)
!2287 = !DILocation(line: 657, column: 9, scope: !2282)
!2288 = !DILocation(line: 657, column: 14, scope: !2282)
!2289 = !DILocation(line: 657, column: 2, scope: !2282)
!2290 = distinct !DISubprogram(name: "try_module_get", scope: !2291, file: !2291, line: 751, type: !2292, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2291 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!104, !1679}
!2294 = !DILocalVariable(name: "module", arg: 1, scope: !2290, file: !2291, line: 751, type: !1679)
!2295 = !DILocation(line: 751, column: 50, scope: !2290)
!2296 = !DILocation(line: 753, column: 2, scope: !2290)
!2297 = distinct !DISubprogram(name: "led_put", scope: !3, file: !3, line: 256, type: !2091, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2298 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2297, file: !3, line: 256, type: !2042)
!2299 = !DILocation(line: 256, column: 35, scope: !2297)
!2300 = !DILocation(line: 258, column: 13, scope: !2297)
!2301 = !DILocation(line: 258, column: 23, scope: !2297)
!2302 = !DILocation(line: 258, column: 28, scope: !2297)
!2303 = !DILocation(line: 258, column: 36, scope: !2297)
!2304 = !DILocation(line: 258, column: 44, scope: !2297)
!2305 = !DILocation(line: 258, column: 2, scope: !2297)
!2306 = !DILocation(line: 259, column: 1, scope: !2297)
!2307 = distinct !DISubprogram(name: "module_put", scope: !2291, file: !2291, line: 756, type: !2308, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{null, !1679}
!2310 = !DILocalVariable(name: "module", arg: 1, scope: !2307, file: !2291, line: 756, type: !1679)
!2311 = !DILocation(line: 756, column: 46, scope: !2307)
!2312 = !DILocation(line: 758, column: 1, scope: !2307)
!2313 = distinct !DISubprogram(name: "devm_of_led_get", scope: !3, file: !3, line: 280, type: !2314, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!2042, !1602, !163}
!2316 = !DILocalVariable(name: "dev", arg: 1, scope: !2313, file: !3, line: 280, type: !1602)
!2317 = !DILocation(line: 280, column: 66, scope: !2313)
!2318 = !DILocalVariable(name: "index", arg: 2, scope: !2313, file: !3, line: 281, type: !163)
!2319 = !DILocation(line: 281, column: 13, scope: !2313)
!2320 = !DILocalVariable(name: "led", scope: !2313, file: !3, line: 283, type: !2042)
!2321 = !DILocation(line: 283, column: 23, scope: !2313)
!2322 = !DILocalVariable(name: "dr", scope: !2313, file: !3, line: 284, type: !2041)
!2323 = !DILocation(line: 284, column: 24, scope: !2313)
!2324 = !DILocation(line: 286, column: 7, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 286, column: 6)
!2326 = !DILocation(line: 286, column: 6, scope: !2313)
!2327 = !DILocation(line: 287, column: 10, scope: !2325)
!2328 = !DILocation(line: 287, column: 3, scope: !2325)
!2329 = !DILocation(line: 290, column: 33, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 290, column: 6)
!2331 = !DILocation(line: 290, column: 38, scope: !2330)
!2332 = !DILocation(line: 290, column: 6, scope: !2313)
!2333 = !DILocation(line: 291, column: 10, scope: !2330)
!2334 = !DILocation(line: 291, column: 3, scope: !2330)
!2335 = !DILocation(line: 293, column: 19, scope: !2313)
!2336 = !DILocation(line: 293, column: 24, scope: !2313)
!2337 = !DILocation(line: 293, column: 33, scope: !2313)
!2338 = !DILocation(line: 293, column: 8, scope: !2313)
!2339 = !DILocation(line: 293, column: 6, scope: !2313)
!2340 = !DILocation(line: 294, column: 13, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 294, column: 6)
!2342 = !DILocation(line: 294, column: 6, scope: !2341)
!2343 = !DILocation(line: 294, column: 6, scope: !2313)
!2344 = !DILocation(line: 295, column: 10, scope: !2341)
!2345 = !DILocation(line: 295, column: 3, scope: !2341)
!2346 = !DILocation(line: 297, column: 7, scope: !2313)
!2347 = !DILocation(line: 297, column: 5, scope: !2313)
!2348 = !DILocation(line: 299, column: 7, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 299, column: 6)
!2350 = !DILocation(line: 299, column: 6, scope: !2313)
!2351 = !DILocation(line: 300, column: 11, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 299, column: 11)
!2353 = !DILocation(line: 300, column: 3, scope: !2352)
!2354 = !DILocation(line: 301, column: 10, scope: !2352)
!2355 = !DILocation(line: 301, column: 3, scope: !2352)
!2356 = !DILocation(line: 304, column: 8, scope: !2313)
!2357 = !DILocation(line: 304, column: 3, scope: !2313)
!2358 = !DILocation(line: 304, column: 6, scope: !2313)
!2359 = !DILocation(line: 305, column: 13, scope: !2313)
!2360 = !DILocation(line: 305, column: 18, scope: !2313)
!2361 = !DILocation(line: 305, column: 2, scope: !2313)
!2362 = !DILocation(line: 307, column: 9, scope: !2313)
!2363 = !DILocation(line: 307, column: 2, scope: !2313)
!2364 = !DILocation(line: 308, column: 1, scope: !2313)
!2365 = distinct !DISubprogram(name: "IS_ERR", scope: !2255, file: !2255, line: 34, type: !2366, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!104, !112}
!2368 = !DILocalVariable(name: "ptr", arg: 1, scope: !2365, file: !2255, line: 34, type: !112)
!2369 = !DILocation(line: 34, column: 60, scope: !2365)
!2370 = !DILocation(line: 36, column: 9, scope: !2365)
!2371 = !DILocation(line: 36, column: 2, scope: !2365)
!2372 = distinct !DISubprogram(name: "devres_alloc", scope: !37, file: !37, line: 178, type: !2373, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!65, !2375, !226, !63}
!2375 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !37, line: 165, baseType: !2376)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{null, !1602, !65}
!2379 = !DILocalVariable(name: "release", arg: 1, scope: !2372, file: !37, line: 178, type: !2375)
!2380 = !DILocation(line: 178, column: 47, scope: !2372)
!2381 = !DILocalVariable(name: "size", arg: 2, scope: !2372, file: !37, line: 178, type: !226)
!2382 = !DILocation(line: 178, column: 63, scope: !2372)
!2383 = !DILocalVariable(name: "gfp", arg: 3, scope: !2372, file: !37, line: 178, type: !63)
!2384 = !DILocation(line: 178, column: 75, scope: !2372)
!2385 = !DILocation(line: 180, column: 27, scope: !2372)
!2386 = !DILocation(line: 180, column: 36, scope: !2372)
!2387 = !DILocation(line: 180, column: 42, scope: !2372)
!2388 = !DILocation(line: 180, column: 9, scope: !2372)
!2389 = !DILocation(line: 180, column: 2, scope: !2372)
!2390 = distinct !DISubprogram(name: "devm_led_release", scope: !3, file: !3, line: 262, type: !2377, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2391 = !DILocalVariable(name: "dev", arg: 1, scope: !2390, file: !3, line: 262, type: !1602)
!2392 = !DILocation(line: 262, column: 45, scope: !2390)
!2393 = !DILocalVariable(name: "res", arg: 2, scope: !2390, file: !3, line: 262, type: !65)
!2394 = !DILocation(line: 262, column: 56, scope: !2390)
!2395 = !DILocalVariable(name: "p", scope: !2390, file: !3, line: 264, type: !2041)
!2396 = !DILocation(line: 264, column: 24, scope: !2390)
!2397 = !DILocation(line: 264, column: 28, scope: !2390)
!2398 = !DILocation(line: 266, column: 11, scope: !2390)
!2399 = !DILocation(line: 266, column: 10, scope: !2390)
!2400 = !DILocation(line: 266, column: 2, scope: !2390)
!2401 = !DILocation(line: 267, column: 1, scope: !2390)
!2402 = !DILocalVariable(name: "parent", arg: 1, scope: !2100, file: !3, line: 340, type: !1602)
!2403 = !DILocation(line: 340, column: 46, scope: !2100)
!2404 = !DILocalVariable(name: "led_cdev", arg: 2, scope: !2100, file: !3, line: 341, type: !2042)
!2405 = !DILocation(line: 341, column: 31, scope: !2100)
!2406 = !DILocalVariable(name: "init_data", arg: 3, scope: !2100, file: !3, line: 342, type: !2103)
!2407 = !DILocation(line: 342, column: 32, scope: !2100)
!2408 = !DILocalVariable(name: "composed_name", scope: !2100, file: !3, line: 344, type: !2409)
!2409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 512, elements: !184)
!2410 = !DILocation(line: 344, column: 7, scope: !2100)
!2411 = !DILocalVariable(name: "final_name", scope: !2100, file: !3, line: 345, type: !2409)
!2412 = !DILocation(line: 345, column: 7, scope: !2100)
!2413 = !DILocalVariable(name: "proposed_name", scope: !2100, file: !3, line: 346, type: !71)
!2414 = !DILocation(line: 346, column: 14, scope: !2100)
!2415 = !DILocation(line: 346, column: 30, scope: !2100)
!2416 = !DILocalVariable(name: "ret", scope: !2100, file: !3, line: 347, type: !163)
!2417 = !DILocation(line: 347, column: 6, scope: !2100)
!2418 = !DILocation(line: 349, column: 6, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 349, column: 6)
!2420 = !DILocation(line: 349, column: 6, scope: !2100)
!2421 = !DILocation(line: 350, column: 7, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 350, column: 7)
!2423 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 349, column: 17)
!2424 = !DILocation(line: 350, column: 18, scope: !2422)
!2425 = !DILocation(line: 350, column: 36, scope: !2422)
!2426 = !DILocation(line: 350, column: 40, scope: !2422)
!2427 = !DILocation(line: 350, column: 51, scope: !2422)
!2428 = !DILocation(line: 350, column: 7, scope: !2423)
!2429 = !DILocation(line: 351, column: 4, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 350, column: 63)
!2431 = !DILocation(line: 352, column: 4, scope: !2430)
!2432 = !DILocation(line: 354, column: 26, scope: !2423)
!2433 = !DILocation(line: 354, column: 34, scope: !2423)
!2434 = !DILocation(line: 354, column: 45, scope: !2423)
!2435 = !DILocation(line: 354, column: 9, scope: !2423)
!2436 = !DILocation(line: 354, column: 7, scope: !2423)
!2437 = !DILocation(line: 355, column: 7, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 355, column: 7)
!2439 = !DILocation(line: 355, column: 11, scope: !2438)
!2440 = !DILocation(line: 355, column: 7, scope: !2423)
!2441 = !DILocation(line: 356, column: 11, scope: !2438)
!2442 = !DILocation(line: 356, column: 4, scope: !2438)
!2443 = !DILocation(line: 358, column: 7, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 358, column: 7)
!2445 = !DILocation(line: 358, column: 18, scope: !2444)
!2446 = !DILocation(line: 358, column: 7, scope: !2423)
!2447 = !DILocation(line: 359, column: 32, scope: !2444)
!2448 = !DILocation(line: 359, column: 43, scope: !2444)
!2449 = !DILocation(line: 361, column: 6, scope: !2444)
!2450 = !DILocation(line: 361, column: 16, scope: !2444)
!2451 = !DILocation(line: 359, column: 4, scope: !2444)
!2452 = !DILocation(line: 362, column: 2, scope: !2423)
!2453 = !DILocation(line: 363, column: 19, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 362, column: 9)
!2455 = !DILocation(line: 363, column: 29, scope: !2454)
!2456 = !DILocation(line: 363, column: 17, scope: !2454)
!2457 = !DILocation(line: 366, column: 31, scope: !2100)
!2458 = !DILocation(line: 366, column: 46, scope: !2100)
!2459 = !DILocation(line: 366, column: 8, scope: !2100)
!2460 = !DILocation(line: 366, column: 6, scope: !2100)
!2461 = !DILocation(line: 367, column: 6, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 367, column: 6)
!2463 = !DILocation(line: 367, column: 10, scope: !2462)
!2464 = !DILocation(line: 367, column: 6, scope: !2100)
!2465 = !DILocation(line: 368, column: 10, scope: !2462)
!2466 = !DILocation(line: 368, column: 3, scope: !2462)
!2467 = !DILocation(line: 370, column: 2, scope: !2100)
!2468 = !DILocation(line: 370, column: 2, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 370, column: 2)
!2470 = !DILocation(line: 371, column: 14, scope: !2100)
!2471 = !DILocation(line: 371, column: 24, scope: !2100)
!2472 = !DILocation(line: 371, column: 2, scope: !2100)
!2473 = !DILocation(line: 372, column: 44, scope: !2100)
!2474 = !DILocation(line: 372, column: 56, scope: !2100)
!2475 = !DILocation(line: 373, column: 5, scope: !2100)
!2476 = !DILocation(line: 373, column: 15, scope: !2100)
!2477 = !DILocation(line: 373, column: 25, scope: !2100)
!2478 = !DILocation(line: 373, column: 39, scope: !2100)
!2479 = !DILocation(line: 372, column: 18, scope: !2100)
!2480 = !DILocation(line: 372, column: 2, scope: !2100)
!2481 = !DILocation(line: 372, column: 12, scope: !2100)
!2482 = !DILocation(line: 372, column: 16, scope: !2100)
!2483 = !DILocation(line: 374, column: 13, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 374, column: 6)
!2485 = !DILocation(line: 374, column: 23, scope: !2484)
!2486 = !DILocation(line: 374, column: 6, scope: !2484)
!2487 = !DILocation(line: 374, column: 6, scope: !2100)
!2488 = !DILocation(line: 375, column: 17, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 374, column: 29)
!2490 = !DILocation(line: 375, column: 27, scope: !2489)
!2491 = !DILocation(line: 375, column: 3, scope: !2489)
!2492 = !DILocation(line: 376, column: 18, scope: !2489)
!2493 = !DILocation(line: 376, column: 28, scope: !2489)
!2494 = !DILocation(line: 376, column: 10, scope: !2489)
!2495 = !DILocation(line: 376, column: 3, scope: !2489)
!2496 = !DILocation(line: 378, column: 6, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 378, column: 6)
!2498 = !DILocation(line: 378, column: 16, scope: !2497)
!2499 = !DILocation(line: 378, column: 19, scope: !2497)
!2500 = !DILocation(line: 378, column: 30, scope: !2497)
!2501 = !DILocation(line: 378, column: 6, scope: !2100)
!2502 = !DILocation(line: 379, column: 27, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 378, column: 38)
!2504 = !DILocation(line: 379, column: 38, scope: !2503)
!2505 = !DILocation(line: 379, column: 3, scope: !2503)
!2506 = !DILocation(line: 379, column: 13, scope: !2503)
!2507 = !DILocation(line: 379, column: 18, scope: !2503)
!2508 = !DILocation(line: 379, column: 25, scope: !2503)
!2509 = !DILocalVariable(name: "__to_of_node_fwnode", scope: !2510, file: !3, line: 380, type: !86)
!2510 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 380, column: 28)
!2511 = !DILocation(line: 380, column: 28, scope: !2510)
!2512 = !DILocalVariable(name: "__mptr", scope: !2513, file: !3, line: 380, type: !65)
!2513 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 380, column: 28)
!2514 = !DILocation(line: 380, column: 28, scope: !2513)
!2515 = !DILocation(line: 380, column: 28, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2513, file: !3, line: 380, column: 28)
!2517 = !DILocation(line: 380, column: 3, scope: !2503)
!2518 = !DILocation(line: 380, column: 13, scope: !2503)
!2519 = !DILocation(line: 380, column: 18, scope: !2503)
!2520 = !DILocation(line: 380, column: 26, scope: !2503)
!2521 = !DILocation(line: 381, column: 2, scope: !2503)
!2522 = !DILocation(line: 383, column: 6, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 383, column: 6)
!2524 = !DILocation(line: 383, column: 6, scope: !2100)
!2525 = !DILocation(line: 384, column: 3, scope: !2523)
!2526 = !DILocation(line: 387, column: 6, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 387, column: 6)
!2528 = !DILocation(line: 387, column: 16, scope: !2527)
!2529 = !DILocation(line: 387, column: 22, scope: !2527)
!2530 = !DILocation(line: 387, column: 6, scope: !2100)
!2531 = !DILocation(line: 388, column: 39, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 387, column: 47)
!2533 = !DILocation(line: 388, column: 9, scope: !2532)
!2534 = !DILocation(line: 388, column: 7, scope: !2532)
!2535 = !DILocation(line: 389, column: 7, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 389, column: 7)
!2537 = !DILocation(line: 389, column: 7, scope: !2532)
!2538 = !DILocation(line: 390, column: 22, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 389, column: 12)
!2540 = !DILocation(line: 390, column: 32, scope: !2539)
!2541 = !DILocation(line: 390, column: 4, scope: !2539)
!2542 = !DILocation(line: 391, column: 4, scope: !2539)
!2543 = !DILocation(line: 391, column: 14, scope: !2539)
!2544 = !DILocation(line: 391, column: 18, scope: !2539)
!2545 = !DILocation(line: 392, column: 18, scope: !2539)
!2546 = !DILocation(line: 392, column: 28, scope: !2539)
!2547 = !DILocation(line: 392, column: 4, scope: !2539)
!2548 = !DILocation(line: 393, column: 11, scope: !2539)
!2549 = !DILocation(line: 393, column: 4, scope: !2539)
!2550 = !DILocation(line: 395, column: 2, scope: !2532)
!2551 = !DILocation(line: 397, column: 2, scope: !2100)
!2552 = !DILocation(line: 397, column: 12, scope: !2100)
!2553 = !DILocation(line: 397, column: 23, scope: !2100)
!2554 = !DILocation(line: 405, column: 2, scope: !2100)
!2555 = !DILocation(line: 406, column: 17, scope: !2100)
!2556 = !DILocation(line: 406, column: 27, scope: !2100)
!2557 = !DILocation(line: 406, column: 2, scope: !2100)
!2558 = !DILocation(line: 407, column: 2, scope: !2100)
!2559 = !DILocation(line: 409, column: 7, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 409, column: 6)
!2561 = !DILocation(line: 409, column: 17, scope: !2560)
!2562 = !DILocation(line: 409, column: 6, scope: !2100)
!2563 = !DILocation(line: 410, column: 3, scope: !2560)
!2564 = !DILocation(line: 410, column: 13, scope: !2560)
!2565 = !DILocation(line: 410, column: 28, scope: !2560)
!2566 = !DILocation(line: 412, column: 24, scope: !2100)
!2567 = !DILocation(line: 412, column: 2, scope: !2100)
!2568 = !DILocation(line: 414, column: 16, scope: !2100)
!2569 = !DILocation(line: 414, column: 2, scope: !2100)
!2570 = !DILocation(line: 420, column: 16, scope: !2100)
!2571 = !DILocation(line: 420, column: 26, scope: !2100)
!2572 = !DILocation(line: 420, column: 2, scope: !2100)
!2573 = !DILocation(line: 425, column: 2, scope: !2100)
!2574 = !DILocation(line: 426, column: 1, scope: !2100)
!2575 = distinct !DISubprogram(name: "led_classdev_next_name", scope: !3, file: !3, line: 311, type: !2576, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!163, !71, !179, !226}
!2578 = !DILocalVariable(name: "init_name", arg: 1, scope: !2575, file: !3, line: 311, type: !71)
!2579 = !DILocation(line: 311, column: 47, scope: !2575)
!2580 = !DILocalVariable(name: "name", arg: 2, scope: !2575, file: !3, line: 311, type: !179)
!2581 = !DILocation(line: 311, column: 64, scope: !2575)
!2582 = !DILocalVariable(name: "len", arg: 3, scope: !2575, file: !3, line: 312, type: !226)
!2583 = !DILocation(line: 312, column: 14, scope: !2575)
!2584 = !DILocalVariable(name: "i", scope: !2575, file: !3, line: 314, type: !7)
!2585 = !DILocation(line: 314, column: 15, scope: !2575)
!2586 = !DILocalVariable(name: "ret", scope: !2575, file: !3, line: 315, type: !163)
!2587 = !DILocation(line: 315, column: 6, scope: !2575)
!2588 = !DILocalVariable(name: "dev", scope: !2575, file: !3, line: 316, type: !1602)
!2589 = !DILocation(line: 316, column: 17, scope: !2575)
!2590 = !DILocation(line: 318, column: 10, scope: !2575)
!2591 = !DILocation(line: 318, column: 16, scope: !2575)
!2592 = !DILocation(line: 318, column: 27, scope: !2575)
!2593 = !DILocation(line: 318, column: 2, scope: !2575)
!2594 = !DILocation(line: 320, column: 2, scope: !2575)
!2595 = !DILocation(line: 320, column: 10, scope: !2575)
!2596 = !DILocation(line: 320, column: 16, scope: !2575)
!2597 = !DILocation(line: 320, column: 14, scope: !2575)
!2598 = !DILocation(line: 320, column: 21, scope: !2575)
!2599 = !DILocation(line: 321, column: 42, scope: !2575)
!2600 = !DILocation(line: 321, column: 54, scope: !2575)
!2601 = !DILocation(line: 321, column: 16, scope: !2575)
!2602 = !DILocation(line: 321, column: 14, scope: !2575)
!2603 = !DILocation(line: 0, scope: !2575)
!2604 = !DILocation(line: 322, column: 14, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 321, column: 62)
!2606 = !DILocation(line: 322, column: 3, scope: !2605)
!2607 = !DILocation(line: 323, column: 18, scope: !2605)
!2608 = !DILocation(line: 323, column: 24, scope: !2605)
!2609 = !DILocation(line: 323, column: 38, scope: !2605)
!2610 = !DILocation(line: 323, column: 49, scope: !2605)
!2611 = !DILocation(line: 323, column: 9, scope: !2605)
!2612 = !DILocation(line: 323, column: 7, scope: !2605)
!2613 = distinct !{!2613, !2594, !2614}
!2614 = !DILocation(line: 324, column: 2, scope: !2575)
!2615 = !DILocation(line: 326, column: 6, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 326, column: 6)
!2617 = !DILocation(line: 326, column: 13, scope: !2616)
!2618 = !DILocation(line: 326, column: 10, scope: !2616)
!2619 = !DILocation(line: 326, column: 6, scope: !2575)
!2620 = !DILocation(line: 327, column: 3, scope: !2616)
!2621 = !DILocation(line: 329, column: 9, scope: !2575)
!2622 = !DILocation(line: 329, column: 2, scope: !2575)
!2623 = !DILocation(line: 330, column: 1, scope: !2575)
!2624 = distinct !DISubprogram(name: "PTR_ERR", scope: !2255, file: !2255, line: 29, type: !2625, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!214, !112}
!2627 = !DILocalVariable(name: "ptr", arg: 1, scope: !2624, file: !2255, line: 29, type: !112)
!2628 = !DILocation(line: 29, column: 61, scope: !2624)
!2629 = !DILocation(line: 31, column: 16, scope: !2624)
!2630 = !DILocation(line: 31, column: 9, scope: !2624)
!2631 = !DILocation(line: 31, column: 2, scope: !2624)
!2632 = distinct !DISubprogram(name: "is_of_node", scope: !68, file: !68, line: 155, type: !102, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2633 = !DILocalVariable(name: "fwnode", arg: 1, scope: !2632, file: !68, line: 155, type: !106)
!2634 = !DILocation(line: 155, column: 59, scope: !2632)
!2635 = !DILocation(line: 157, column: 25, scope: !2632)
!2636 = !DILocation(line: 157, column: 10, scope: !2632)
!2637 = !DILocation(line: 157, column: 33, scope: !2632)
!2638 = !DILocation(line: 157, column: 36, scope: !2632)
!2639 = !DILocation(line: 157, column: 44, scope: !2632)
!2640 = !DILocation(line: 157, column: 48, scope: !2632)
!2641 = !DILocation(line: 0, scope: !2632)
!2642 = !DILocation(line: 157, column: 2, scope: !2632)
!2643 = distinct !DISubprogram(name: "dev_name", scope: !37, file: !37, line: 609, type: !2644, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!71, !114}
!2646 = !DILocalVariable(name: "dev", arg: 1, scope: !2643, file: !37, line: 609, type: !114)
!2647 = !DILocation(line: 609, column: 57, scope: !2643)
!2648 = !DILocation(line: 612, column: 6, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2643, file: !37, line: 612, column: 6)
!2650 = !DILocation(line: 612, column: 11, scope: !2649)
!2651 = !DILocation(line: 612, column: 6, scope: !2643)
!2652 = !DILocation(line: 613, column: 10, scope: !2649)
!2653 = !DILocation(line: 613, column: 15, scope: !2649)
!2654 = !DILocation(line: 613, column: 3, scope: !2649)
!2655 = !DILocation(line: 615, column: 23, scope: !2643)
!2656 = !DILocation(line: 615, column: 28, scope: !2643)
!2657 = !DILocation(line: 615, column: 9, scope: !2643)
!2658 = !DILocation(line: 615, column: 2, scope: !2643)
!2659 = !DILocation(line: 616, column: 1, scope: !2643)
!2660 = distinct !DISubprogram(name: "led_add_brightness_hw_changed", scope: !3, file: !3, line: 159, type: !2078, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2661 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2660, file: !3, line: 159, type: !2042)
!2662 = !DILocation(line: 159, column: 63, scope: !2660)
!2663 = !DILocation(line: 161, column: 2, scope: !2660)
!2664 = distinct !DISubprogram(name: "list_add_tail", scope: !2665, file: !2665, line: 98, type: !2666, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2665 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!2666 = !DISubroutineType(types: !2667)
!2667 = !{null, !127, !127}
!2668 = !DILocalVariable(name: "new", arg: 1, scope: !2664, file: !2665, line: 98, type: !127)
!2669 = !DILocation(line: 98, column: 52, scope: !2664)
!2670 = !DILocalVariable(name: "head", arg: 2, scope: !2664, file: !2665, line: 98, type: !127)
!2671 = !DILocation(line: 98, column: 75, scope: !2664)
!2672 = !DILocation(line: 100, column: 13, scope: !2664)
!2673 = !DILocation(line: 100, column: 18, scope: !2664)
!2674 = !DILocation(line: 100, column: 24, scope: !2664)
!2675 = !DILocation(line: 100, column: 30, scope: !2664)
!2676 = !DILocation(line: 100, column: 2, scope: !2664)
!2677 = !DILocation(line: 101, column: 1, scope: !2664)
!2678 = distinct !DISubprogram(name: "led_classdev_unregister", scope: !3, file: !3, line: 435, type: !2091, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2679 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2678, file: !3, line: 435, type: !2042)
!2680 = !DILocation(line: 435, column: 51, scope: !2678)
!2681 = !DILocation(line: 437, column: 21, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 437, column: 6)
!2683 = !DILocation(line: 437, column: 31, scope: !2682)
!2684 = !DILocation(line: 437, column: 6, scope: !2682)
!2685 = !DILocation(line: 437, column: 6, scope: !2678)
!2686 = !DILocation(line: 438, column: 3, scope: !2682)
!2687 = !DILocation(line: 447, column: 2, scope: !2678)
!2688 = !DILocation(line: 447, column: 12, scope: !2678)
!2689 = !DILocation(line: 447, column: 18, scope: !2678)
!2690 = !DILocation(line: 450, column: 26, scope: !2678)
!2691 = !DILocation(line: 450, column: 2, scope: !2678)
!2692 = !DILocation(line: 452, column: 21, scope: !2678)
!2693 = !DILocation(line: 452, column: 2, scope: !2678)
!2694 = !DILocation(line: 454, column: 14, scope: !2678)
!2695 = !DILocation(line: 454, column: 24, scope: !2678)
!2696 = !DILocation(line: 454, column: 2, scope: !2678)
!2697 = !DILocation(line: 456, column: 6, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 456, column: 6)
!2699 = !DILocation(line: 456, column: 16, scope: !2698)
!2700 = !DILocation(line: 456, column: 22, scope: !2698)
!2701 = !DILocation(line: 456, column: 6, scope: !2678)
!2702 = !DILocation(line: 457, column: 36, scope: !2698)
!2703 = !DILocation(line: 457, column: 3, scope: !2698)
!2704 = !DILocation(line: 459, column: 20, scope: !2678)
!2705 = !DILocation(line: 459, column: 30, scope: !2678)
!2706 = !DILocation(line: 459, column: 2, scope: !2678)
!2707 = !DILocation(line: 461, column: 2, scope: !2678)
!2708 = !DILocation(line: 462, column: 12, scope: !2678)
!2709 = !DILocation(line: 462, column: 22, scope: !2678)
!2710 = !DILocation(line: 462, column: 2, scope: !2678)
!2711 = !DILocation(line: 463, column: 2, scope: !2678)
!2712 = !DILocation(line: 465, column: 17, scope: !2678)
!2713 = !DILocation(line: 465, column: 27, scope: !2678)
!2714 = !DILocation(line: 465, column: 2, scope: !2678)
!2715 = !DILocation(line: 466, column: 1, scope: !2678)
!2716 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !2255, file: !2255, line: 39, type: !2366, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2717 = !DILocalVariable(name: "ptr", arg: 1, scope: !2716, file: !2255, line: 39, type: !112)
!2718 = !DILocation(line: 39, column: 68, scope: !2716)
!2719 = !DILocation(line: 41, column: 9, scope: !2716)
!2720 = !DILocation(line: 41, column: 24, scope: !2716)
!2721 = !DILocation(line: 41, column: 27, scope: !2716)
!2722 = !DILocation(line: 41, column: 2, scope: !2716)
!2723 = distinct !DISubprogram(name: "led_remove_brightness_hw_changed", scope: !3, file: !3, line: 163, type: !2091, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2724 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2723, file: !3, line: 163, type: !2042)
!2725 = !DILocation(line: 163, column: 67, scope: !2723)
!2726 = !DILocation(line: 165, column: 1, scope: !2723)
!2727 = distinct !DISubprogram(name: "list_del", scope: !2665, file: !2665, line: 144, type: !2728, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{null, !127}
!2730 = !DILocalVariable(name: "entry", arg: 1, scope: !2727, file: !2665, line: 144, type: !127)
!2731 = !DILocation(line: 144, column: 47, scope: !2727)
!2732 = !DILocation(line: 146, column: 19, scope: !2727)
!2733 = !DILocation(line: 146, column: 2, scope: !2727)
!2734 = !DILocation(line: 147, column: 2, scope: !2727)
!2735 = !DILocation(line: 147, column: 9, scope: !2727)
!2736 = !DILocation(line: 147, column: 14, scope: !2727)
!2737 = !DILocation(line: 148, column: 2, scope: !2727)
!2738 = !DILocation(line: 148, column: 9, scope: !2727)
!2739 = !DILocation(line: 148, column: 14, scope: !2727)
!2740 = !DILocation(line: 149, column: 1, scope: !2727)
!2741 = distinct !DISubprogram(name: "mutex_destroy", scope: !396, file: !396, line: 103, type: !2742, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{null, !2744}
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!2745 = !DILocalVariable(name: "lock", arg: 1, scope: !2741, file: !396, line: 103, type: !2744)
!2746 = !DILocation(line: 103, column: 48, scope: !2741)
!2747 = !DILocation(line: 103, column: 55, scope: !2741)
!2748 = distinct !DISubprogram(name: "devm_led_classdev_register_ext", scope: !3, file: !3, line: 481, type: !2101, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2749 = !DILocalVariable(name: "parent", arg: 1, scope: !2748, file: !3, line: 481, type: !1602)
!2750 = !DILocation(line: 481, column: 51, scope: !2748)
!2751 = !DILocalVariable(name: "led_cdev", arg: 2, scope: !2748, file: !3, line: 482, type: !2042)
!2752 = !DILocation(line: 482, column: 29, scope: !2748)
!2753 = !DILocalVariable(name: "init_data", arg: 3, scope: !2748, file: !3, line: 483, type: !2103)
!2754 = !DILocation(line: 483, column: 30, scope: !2748)
!2755 = !DILocalVariable(name: "dr", scope: !2748, file: !3, line: 485, type: !2041)
!2756 = !DILocation(line: 485, column: 24, scope: !2748)
!2757 = !DILocalVariable(name: "rc", scope: !2748, file: !3, line: 486, type: !163)
!2758 = !DILocation(line: 486, column: 6, scope: !2748)
!2759 = !DILocation(line: 488, column: 7, scope: !2748)
!2760 = !DILocation(line: 488, column: 5, scope: !2748)
!2761 = !DILocation(line: 489, column: 7, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 489, column: 6)
!2763 = !DILocation(line: 489, column: 6, scope: !2748)
!2764 = !DILocation(line: 490, column: 3, scope: !2762)
!2765 = !DILocation(line: 492, column: 33, scope: !2748)
!2766 = !DILocation(line: 492, column: 41, scope: !2748)
!2767 = !DILocation(line: 492, column: 51, scope: !2748)
!2768 = !DILocation(line: 492, column: 7, scope: !2748)
!2769 = !DILocation(line: 492, column: 5, scope: !2748)
!2770 = !DILocation(line: 493, column: 6, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 493, column: 6)
!2772 = !DILocation(line: 493, column: 6, scope: !2748)
!2773 = !DILocation(line: 494, column: 15, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 493, column: 10)
!2775 = !DILocation(line: 494, column: 3, scope: !2774)
!2776 = !DILocation(line: 495, column: 10, scope: !2774)
!2777 = !DILocation(line: 495, column: 3, scope: !2774)
!2778 = !DILocation(line: 498, column: 8, scope: !2748)
!2779 = !DILocation(line: 498, column: 3, scope: !2748)
!2780 = !DILocation(line: 498, column: 6, scope: !2748)
!2781 = !DILocation(line: 499, column: 13, scope: !2748)
!2782 = !DILocation(line: 499, column: 21, scope: !2748)
!2783 = !DILocation(line: 499, column: 2, scope: !2748)
!2784 = !DILocation(line: 501, column: 2, scope: !2748)
!2785 = !DILocation(line: 502, column: 1, scope: !2748)
!2786 = distinct !DISubprogram(name: "devm_led_classdev_release", scope: !3, file: !3, line: 469, type: !2377, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2787 = !DILocalVariable(name: "dev", arg: 1, scope: !2786, file: !3, line: 469, type: !1602)
!2788 = !DILocation(line: 469, column: 54, scope: !2786)
!2789 = !DILocalVariable(name: "res", arg: 2, scope: !2786, file: !3, line: 469, type: !65)
!2790 = !DILocation(line: 469, column: 65, scope: !2786)
!2791 = !DILocation(line: 471, column: 51, scope: !2786)
!2792 = !DILocation(line: 471, column: 27, scope: !2786)
!2793 = !DILocation(line: 471, column: 26, scope: !2786)
!2794 = !DILocation(line: 471, column: 2, scope: !2786)
!2795 = !DILocation(line: 472, column: 1, scope: !2786)
!2796 = distinct !DISubprogram(name: "devm_led_classdev_unregister", scope: !3, file: !3, line: 520, type: !2797, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{null, !1602, !2042}
!2799 = !DILocalVariable(name: "dev", arg: 1, scope: !2796, file: !3, line: 520, type: !1602)
!2800 = !DILocation(line: 520, column: 50, scope: !2796)
!2801 = !DILocalVariable(name: "led_cdev", arg: 2, scope: !2796, file: !3, line: 521, type: !2042)
!2802 = !DILocation(line: 521, column: 28, scope: !2796)
!2803 = !DILocalVariable(name: "__ret_warn_on", scope: !2804, file: !3, line: 523, type: !163)
!2804 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 523, column: 2)
!2805 = !DILocation(line: 523, column: 2, scope: !2804)
!2806 = !DILocation(line: 523, column: 2, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2804, file: !3, line: 523, column: 2)
!2808 = !DILocation(line: 523, column: 2, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2807, file: !3, line: 523, column: 2)
!2810 = !DILocation(line: 523, column: 2, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2809, file: !3, line: 523, column: 2)
!2812 = !DILocation(line: 523, column: 2, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2809, file: !3, line: 523, column: 2)
!2814 = !{i32 -2143402902, i32 -2143402873, i32 -2143402827, i32 -2143402769, i32 -2143402715, i32 -2143402661, i32 -2143402606, i32 -2143402575}
!2815 = !DILocation(line: 523, column: 2, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2809, file: !3, line: 523, column: 2)
!2817 = !{i32 -2143402169, i32 -2143402162, i32 -2143402110, i32 -2143402079, i32 -2143402049}
!2818 = !DILocation(line: 523, column: 2, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2809, file: !3, line: 523, column: 2)
!2820 = !DILocation(line: 526, column: 1, scope: !2796)
!2821 = distinct !DISubprogram(name: "devm_led_classdev_match", scope: !3, file: !3, line: 505, type: !2822, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!163, !1602, !65, !65}
!2824 = !DILocalVariable(name: "dev", arg: 1, scope: !2821, file: !3, line: 505, type: !1602)
!2825 = !DILocation(line: 505, column: 51, scope: !2821)
!2826 = !DILocalVariable(name: "res", arg: 2, scope: !2821, file: !3, line: 505, type: !65)
!2827 = !DILocation(line: 505, column: 62, scope: !2821)
!2828 = !DILocalVariable(name: "data", arg: 3, scope: !2821, file: !3, line: 505, type: !65)
!2829 = !DILocation(line: 505, column: 73, scope: !2821)
!2830 = !DILocalVariable(name: "p", scope: !2821, file: !3, line: 507, type: !2041)
!2831 = !DILocation(line: 507, column: 24, scope: !2821)
!2832 = !DILocation(line: 507, column: 28, scope: !2821)
!2833 = !DILocalVariable(name: "__ret_warn_on", scope: !2834, file: !3, line: 509, type: !163)
!2834 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 509, column: 6)
!2835 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 509, column: 6)
!2836 = !DILocation(line: 509, column: 6, scope: !2834)
!2837 = !DILocation(line: 509, column: 6, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2834, file: !3, line: 509, column: 6)
!2839 = !DILocation(line: 509, column: 6, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 509, column: 6)
!2841 = !DILocation(line: 509, column: 6, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 509, column: 6)
!2843 = !DILocation(line: 509, column: 6, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 509, column: 6)
!2845 = !{i32 -2143404428, i32 -2143404399, i32 -2143404353, i32 -2143404295, i32 -2143404241, i32 -2143404187, i32 -2143404132, i32 -2143404101}
!2846 = !DILocation(line: 509, column: 6, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 509, column: 6)
!2848 = !{i32 -2143403695, i32 -2143403688, i32 -2143403636, i32 -2143403605, i32 -2143403575}
!2849 = !DILocation(line: 509, column: 6, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 509, column: 6)
!2851 = !DILocation(line: 509, column: 6, scope: !2835)
!2852 = !DILocation(line: 509, column: 6, scope: !2821)
!2853 = !DILocation(line: 510, column: 3, scope: !2835)
!2854 = !DILocation(line: 512, column: 10, scope: !2821)
!2855 = !DILocation(line: 512, column: 9, scope: !2821)
!2856 = !DILocation(line: 512, column: 15, scope: !2821)
!2857 = !DILocation(line: 512, column: 12, scope: !2821)
!2858 = !DILocation(line: 512, column: 2, scope: !2821)
!2859 = !DILocation(line: 513, column: 1, scope: !2821)
!2860 = distinct !DISubprogram(name: "leds_exit", scope: !3, file: !3, line: 539, type: !2117, scopeLine: 540, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2861 = !DILocation(line: 541, column: 16, scope: !2860)
!2862 = !DILocation(line: 541, column: 2, scope: !2860)
!2863 = !DILocation(line: 542, column: 1, scope: !2860)
!2864 = !DILocation(line: 531, column: 15, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2141, file: !3, line: 531, column: 15)
!2866 = !DILocation(line: 531, column: 13, scope: !2141)
!2867 = !DILocation(line: 532, column: 13, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2141, file: !3, line: 532, column: 6)
!2869 = !DILocation(line: 532, column: 6, scope: !2868)
!2870 = !DILocation(line: 532, column: 6, scope: !2141)
!2871 = !DILocation(line: 533, column: 18, scope: !2868)
!2872 = !DILocation(line: 533, column: 10, scope: !2868)
!2873 = !DILocation(line: 533, column: 3, scope: !2868)
!2874 = !DILocation(line: 534, column: 2, scope: !2141)
!2875 = !DILocation(line: 534, column: 14, scope: !2141)
!2876 = !DILocation(line: 534, column: 17, scope: !2141)
!2877 = !DILocation(line: 535, column: 2, scope: !2141)
!2878 = !DILocation(line: 535, column: 14, scope: !2141)
!2879 = !DILocation(line: 535, column: 25, scope: !2141)
!2880 = !DILocation(line: 536, column: 2, scope: !2141)
!2881 = !DILocation(line: 537, column: 1, scope: !2141)
!2882 = distinct !DISubprogram(name: "class_find_device_by_name", scope: !1923, file: !1923, line: 127, type: !2883, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!1602, !1921, !71}
!2885 = !DILocalVariable(name: "class", arg: 1, scope: !2882, file: !1923, line: 127, type: !1921)
!2886 = !DILocation(line: 127, column: 70, scope: !2882)
!2887 = !DILocalVariable(name: "name", arg: 2, scope: !2882, file: !1923, line: 128, type: !71)
!2888 = !DILocation(line: 128, column: 26, scope: !2882)
!2889 = !DILocation(line: 130, column: 27, scope: !2882)
!2890 = !DILocation(line: 130, column: 40, scope: !2882)
!2891 = !DILocation(line: 130, column: 9, scope: !2882)
!2892 = !DILocation(line: 130, column: 2, scope: !2882)
!2893 = distinct !DISubprogram(name: "kobject_name", scope: !120, file: !120, line: 88, type: !2894, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!71, !2896}
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!2898 = !DILocalVariable(name: "kobj", arg: 1, scope: !2893, file: !120, line: 88, type: !2896)
!2899 = !DILocation(line: 88, column: 62, scope: !2893)
!2900 = !DILocation(line: 90, column: 9, scope: !2893)
!2901 = !DILocation(line: 90, column: 15, scope: !2893)
!2902 = !DILocation(line: 90, column: 2, scope: !2893)
!2903 = distinct !DISubprogram(name: "__list_add", scope: !2665, file: !2665, line: 63, type: !2904, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{null, !127, !127, !127}
!2906 = !DILocalVariable(name: "new", arg: 1, scope: !2903, file: !2665, line: 63, type: !127)
!2907 = !DILocation(line: 63, column: 49, scope: !2903)
!2908 = !DILocalVariable(name: "prev", arg: 2, scope: !2903, file: !2665, line: 64, type: !127)
!2909 = !DILocation(line: 64, column: 28, scope: !2903)
!2910 = !DILocalVariable(name: "next", arg: 3, scope: !2903, file: !2665, line: 65, type: !127)
!2911 = !DILocation(line: 65, column: 28, scope: !2903)
!2912 = !DILocation(line: 67, column: 24, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2903, file: !2665, line: 67, column: 6)
!2914 = !DILocation(line: 67, column: 29, scope: !2913)
!2915 = !DILocation(line: 67, column: 35, scope: !2913)
!2916 = !DILocation(line: 67, column: 7, scope: !2913)
!2917 = !DILocation(line: 67, column: 6, scope: !2903)
!2918 = !DILocation(line: 68, column: 3, scope: !2913)
!2919 = !DILocation(line: 70, column: 15, scope: !2903)
!2920 = !DILocation(line: 70, column: 2, scope: !2903)
!2921 = !DILocation(line: 70, column: 8, scope: !2903)
!2922 = !DILocation(line: 70, column: 13, scope: !2903)
!2923 = !DILocation(line: 71, column: 14, scope: !2903)
!2924 = !DILocation(line: 71, column: 2, scope: !2903)
!2925 = !DILocation(line: 71, column: 7, scope: !2903)
!2926 = !DILocation(line: 71, column: 12, scope: !2903)
!2927 = !DILocation(line: 72, column: 14, scope: !2903)
!2928 = !DILocation(line: 72, column: 2, scope: !2903)
!2929 = !DILocation(line: 72, column: 7, scope: !2903)
!2930 = !DILocation(line: 72, column: 12, scope: !2903)
!2931 = !DILocation(line: 73, column: 2, scope: !2903)
!2932 = !DILocation(line: 73, column: 2, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2903, file: !2665, line: 73, column: 2)
!2934 = !DILocation(line: 73, column: 2, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2933, file: !2665, line: 73, column: 2)
!2936 = !DILocation(line: 73, column: 2, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2933, file: !2665, line: 73, column: 2)
!2938 = !DILocation(line: 74, column: 1, scope: !2903)
!2939 = distinct !DISubprogram(name: "__list_add_valid", scope: !2665, file: !2665, line: 45, type: !2940, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!104, !127, !127, !127}
!2942 = !DILocalVariable(name: "new", arg: 1, scope: !2939, file: !2665, line: 45, type: !127)
!2943 = !DILocation(line: 45, column: 55, scope: !2939)
!2944 = !DILocalVariable(name: "prev", arg: 2, scope: !2939, file: !2665, line: 46, type: !127)
!2945 = !DILocation(line: 46, column: 23, scope: !2939)
!2946 = !DILocalVariable(name: "next", arg: 3, scope: !2939, file: !2665, line: 47, type: !127)
!2947 = !DILocation(line: 47, column: 23, scope: !2939)
!2948 = !DILocation(line: 49, column: 2, scope: !2939)
!2949 = distinct !DISubprogram(name: "__list_del_entry", scope: !2665, file: !2665, line: 130, type: !2728, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2950 = !DILocalVariable(name: "entry", arg: 1, scope: !2949, file: !2665, line: 130, type: !127)
!2951 = !DILocation(line: 130, column: 55, scope: !2949)
!2952 = !DILocation(line: 132, column: 30, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2949, file: !2665, line: 132, column: 6)
!2954 = !DILocation(line: 132, column: 7, scope: !2953)
!2955 = !DILocation(line: 132, column: 6, scope: !2949)
!2956 = !DILocation(line: 133, column: 3, scope: !2953)
!2957 = !DILocation(line: 135, column: 13, scope: !2949)
!2958 = !DILocation(line: 135, column: 20, scope: !2949)
!2959 = !DILocation(line: 135, column: 26, scope: !2949)
!2960 = !DILocation(line: 135, column: 33, scope: !2949)
!2961 = !DILocation(line: 135, column: 2, scope: !2949)
!2962 = !DILocation(line: 136, column: 1, scope: !2949)
!2963 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !2665, file: !2665, line: 51, type: !2964, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!104, !127}
!2966 = !DILocalVariable(name: "entry", arg: 1, scope: !2963, file: !2665, line: 51, type: !127)
!2967 = !DILocation(line: 51, column: 61, scope: !2963)
!2968 = !DILocation(line: 53, column: 2, scope: !2963)
!2969 = distinct !DISubprogram(name: "__list_del", scope: !2665, file: !2665, line: 110, type: !2666, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2970 = !DILocalVariable(name: "prev", arg: 1, scope: !2969, file: !2665, line: 110, type: !127)
!2971 = !DILocation(line: 110, column: 50, scope: !2969)
!2972 = !DILocalVariable(name: "next", arg: 2, scope: !2969, file: !2665, line: 110, type: !127)
!2973 = !DILocation(line: 110, column: 75, scope: !2969)
!2974 = !DILocation(line: 112, column: 15, scope: !2969)
!2975 = !DILocation(line: 112, column: 2, scope: !2969)
!2976 = !DILocation(line: 112, column: 8, scope: !2969)
!2977 = !DILocation(line: 112, column: 13, scope: !2969)
!2978 = !DILocation(line: 113, column: 2, scope: !2969)
!2979 = !DILocation(line: 113, column: 2, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2969, file: !2665, line: 113, column: 2)
!2981 = !DILocation(line: 113, column: 2, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2980, file: !2665, line: 113, column: 2)
!2983 = !DILocation(line: 113, column: 2, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2980, file: !2665, line: 113, column: 2)
!2985 = !DILocation(line: 114, column: 1, scope: !2969)
!2986 = distinct !DISubprogram(name: "led_suspend", scope: !3, file: !3, line: 196, type: !1634, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2987 = !DILocalVariable(name: "dev", arg: 1, scope: !2986, file: !3, line: 196, type: !1602)
!2988 = !DILocation(line: 196, column: 39, scope: !2986)
!2989 = !DILocalVariable(name: "led_cdev", scope: !2986, file: !3, line: 198, type: !2042)
!2990 = !DILocation(line: 198, column: 23, scope: !2986)
!2991 = !DILocation(line: 198, column: 50, scope: !2986)
!2992 = !DILocation(line: 198, column: 34, scope: !2986)
!2993 = !DILocation(line: 200, column: 6, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 200, column: 6)
!2995 = !DILocation(line: 200, column: 16, scope: !2994)
!2996 = !DILocation(line: 200, column: 22, scope: !2994)
!2997 = !DILocation(line: 200, column: 6, scope: !2986)
!2998 = !DILocation(line: 201, column: 24, scope: !2994)
!2999 = !DILocation(line: 201, column: 3, scope: !2994)
!3000 = !DILocation(line: 203, column: 2, scope: !2986)
!3001 = distinct !DISubprogram(name: "led_resume", scope: !3, file: !3, line: 206, type: !1634, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3002 = !DILocalVariable(name: "dev", arg: 1, scope: !3001, file: !3, line: 206, type: !1602)
!3003 = !DILocation(line: 206, column: 38, scope: !3001)
!3004 = !DILocalVariable(name: "led_cdev", scope: !3001, file: !3, line: 208, type: !2042)
!3005 = !DILocation(line: 208, column: 23, scope: !3001)
!3006 = !DILocation(line: 208, column: 50, scope: !3001)
!3007 = !DILocation(line: 208, column: 34, scope: !3001)
!3008 = !DILocation(line: 210, column: 6, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 210, column: 6)
!3010 = !DILocation(line: 210, column: 16, scope: !3009)
!3011 = !DILocation(line: 210, column: 22, scope: !3009)
!3012 = !DILocation(line: 210, column: 6, scope: !3001)
!3013 = !DILocation(line: 211, column: 23, scope: !3009)
!3014 = !DILocation(line: 211, column: 3, scope: !3009)
!3015 = !DILocation(line: 213, column: 2, scope: !3001)
!3016 = distinct !DISubprogram(name: "brightness_show", scope: !3, file: !3, line: 27, type: !2161, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3017 = !DILocalVariable(name: "dev", arg: 1, scope: !3016, file: !3, line: 27, type: !1602)
!3018 = !DILocation(line: 27, column: 47, scope: !3016)
!3019 = !DILocalVariable(name: "attr", arg: 2, scope: !3016, file: !3, line: 28, type: !2163)
!3020 = !DILocation(line: 28, column: 28, scope: !3016)
!3021 = !DILocalVariable(name: "buf", arg: 3, scope: !3016, file: !3, line: 28, type: !179)
!3022 = !DILocation(line: 28, column: 40, scope: !3016)
!3023 = !DILocalVariable(name: "led_cdev", scope: !3016, file: !3, line: 30, type: !2042)
!3024 = !DILocation(line: 30, column: 23, scope: !3016)
!3025 = !DILocation(line: 30, column: 50, scope: !3016)
!3026 = !DILocation(line: 30, column: 34, scope: !3016)
!3027 = !DILocation(line: 33, column: 24, scope: !3016)
!3028 = !DILocation(line: 33, column: 2, scope: !3016)
!3029 = !DILocation(line: 35, column: 17, scope: !3016)
!3030 = !DILocation(line: 35, column: 30, scope: !3016)
!3031 = !DILocation(line: 35, column: 40, scope: !3016)
!3032 = !DILocation(line: 35, column: 9, scope: !3016)
!3033 = !DILocation(line: 35, column: 2, scope: !3016)
!3034 = distinct !DISubprogram(name: "brightness_store", scope: !3, file: !3, line: 38, type: !2166, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3035 = !DILocalVariable(name: "dev", arg: 1, scope: !3034, file: !3, line: 38, type: !1602)
!3036 = !DILocation(line: 38, column: 48, scope: !3034)
!3037 = !DILocalVariable(name: "attr", arg: 2, scope: !3034, file: !3, line: 39, type: !2163)
!3038 = !DILocation(line: 39, column: 28, scope: !3034)
!3039 = !DILocalVariable(name: "buf", arg: 3, scope: !3034, file: !3, line: 39, type: !71)
!3040 = !DILocation(line: 39, column: 46, scope: !3034)
!3041 = !DILocalVariable(name: "size", arg: 4, scope: !3034, file: !3, line: 39, type: !226)
!3042 = !DILocation(line: 39, column: 58, scope: !3034)
!3043 = !DILocalVariable(name: "led_cdev", scope: !3034, file: !3, line: 41, type: !2042)
!3044 = !DILocation(line: 41, column: 23, scope: !3034)
!3045 = !DILocation(line: 41, column: 50, scope: !3034)
!3046 = !DILocation(line: 41, column: 34, scope: !3034)
!3047 = !DILocalVariable(name: "state", scope: !3034, file: !3, line: 42, type: !229)
!3048 = !DILocation(line: 42, column: 16, scope: !3034)
!3049 = !DILocalVariable(name: "ret", scope: !3034, file: !3, line: 43, type: !210)
!3050 = !DILocation(line: 43, column: 10, scope: !3034)
!3051 = !DILocation(line: 45, column: 14, scope: !3034)
!3052 = !DILocation(line: 45, column: 24, scope: !3034)
!3053 = !DILocation(line: 45, column: 2, scope: !3034)
!3054 = !DILocation(line: 47, column: 28, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 47, column: 6)
!3056 = !DILocation(line: 47, column: 6, scope: !3055)
!3057 = !DILocation(line: 47, column: 6, scope: !3034)
!3058 = !DILocation(line: 48, column: 7, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3055, file: !3, line: 47, column: 39)
!3060 = !DILocation(line: 49, column: 3, scope: !3059)
!3061 = !DILocation(line: 52, column: 17, scope: !3034)
!3062 = !DILocation(line: 52, column: 8, scope: !3034)
!3063 = !DILocation(line: 52, column: 6, scope: !3034)
!3064 = !DILocation(line: 53, column: 6, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 53, column: 6)
!3066 = !DILocation(line: 53, column: 6, scope: !3034)
!3067 = !DILocation(line: 54, column: 3, scope: !3065)
!3068 = !DILocation(line: 56, column: 6, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 56, column: 6)
!3070 = !DILocation(line: 56, column: 12, scope: !3069)
!3071 = !DILocation(line: 56, column: 6, scope: !3034)
!3072 = !DILocation(line: 57, column: 22, scope: !3069)
!3073 = !DILocation(line: 57, column: 3, scope: !3069)
!3074 = !DILocation(line: 58, column: 21, scope: !3034)
!3075 = !DILocation(line: 58, column: 31, scope: !3034)
!3076 = !DILocation(line: 58, column: 2, scope: !3034)
!3077 = !DILocation(line: 59, column: 14, scope: !3034)
!3078 = !DILocation(line: 59, column: 24, scope: !3034)
!3079 = !DILocation(line: 59, column: 2, scope: !3034)
!3080 = !DILocation(line: 61, column: 8, scope: !3034)
!3081 = !DILocation(line: 61, column: 6, scope: !3034)
!3082 = !DILocation(line: 61, column: 2, scope: !3034)
!3083 = !DILabel(scope: !3034, name: "unlock", file: !3, line: 62)
!3084 = !DILocation(line: 62, column: 1, scope: !3034)
!3085 = !DILocation(line: 63, column: 16, scope: !3034)
!3086 = !DILocation(line: 63, column: 26, scope: !3034)
!3087 = !DILocation(line: 63, column: 2, scope: !3034)
!3088 = !DILocation(line: 64, column: 9, scope: !3034)
!3089 = !DILocation(line: 64, column: 2, scope: !3034)
!3090 = distinct !DISubprogram(name: "led_sysfs_is_disabled", scope: !6, file: !6, line: 333, type: !3091, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!104, !2042}
!3093 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !3090, file: !6, line: 333, type: !2042)
!3094 = !DILocation(line: 333, column: 63, scope: !3090)
!3095 = !DILocation(line: 335, column: 9, scope: !3090)
!3096 = !DILocation(line: 335, column: 19, scope: !3090)
!3097 = !DILocation(line: 335, column: 25, scope: !3090)
!3098 = !DILocation(line: 335, column: 2, scope: !3090)
!3099 = distinct !DISubprogram(name: "kstrtoul", scope: !3100, file: !3100, line: 351, type: !3101, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3100 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!163, !71, !7, !2066}
!3103 = !DILocalVariable(name: "s", arg: 1, scope: !3099, file: !3100, line: 351, type: !71)
!3104 = !DILocation(line: 351, column: 53, scope: !3099)
!3105 = !DILocalVariable(name: "base", arg: 2, scope: !3099, file: !3100, line: 351, type: !7)
!3106 = !DILocation(line: 351, column: 69, scope: !3099)
!3107 = !DILocalVariable(name: "res", arg: 3, scope: !3099, file: !3100, line: 351, type: !2066)
!3108 = !DILocation(line: 351, column: 90, scope: !3099)
!3109 = !DILocation(line: 359, column: 20, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3099, file: !3100, line: 357, column: 6)
!3111 = !DILocation(line: 359, column: 23, scope: !3110)
!3112 = !DILocation(line: 359, column: 51, scope: !3110)
!3113 = !DILocation(line: 359, column: 10, scope: !3110)
!3114 = !DILocation(line: 359, column: 3, scope: !3110)
!3115 = distinct !DISubprogram(name: "led_trigger_remove", scope: !6, file: !6, line: 454, type: !2091, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3116 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !3115, file: !6, line: 454, type: !2042)
!3117 = !DILocation(line: 454, column: 60, scope: !3115)
!3118 = !DILocation(line: 454, column: 71, scope: !3115)
!3119 = distinct !DISubprogram(name: "max_brightness_show", scope: !3, file: !3, line: 68, type: !2161, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3120 = !DILocalVariable(name: "dev", arg: 1, scope: !3119, file: !3, line: 68, type: !1602)
!3121 = !DILocation(line: 68, column: 51, scope: !3119)
!3122 = !DILocalVariable(name: "attr", arg: 2, scope: !3119, file: !3, line: 69, type: !2163)
!3123 = !DILocation(line: 69, column: 28, scope: !3119)
!3124 = !DILocalVariable(name: "buf", arg: 3, scope: !3119, file: !3, line: 69, type: !179)
!3125 = !DILocation(line: 69, column: 40, scope: !3119)
!3126 = !DILocalVariable(name: "led_cdev", scope: !3119, file: !3, line: 71, type: !2042)
!3127 = !DILocation(line: 71, column: 23, scope: !3119)
!3128 = !DILocation(line: 71, column: 50, scope: !3119)
!3129 = !DILocation(line: 71, column: 34, scope: !3119)
!3130 = !DILocation(line: 73, column: 17, scope: !3119)
!3131 = !DILocation(line: 73, column: 30, scope: !3119)
!3132 = !DILocation(line: 73, column: 40, scope: !3119)
!3133 = !DILocation(line: 73, column: 9, scope: !3119)
!3134 = !DILocation(line: 73, column: 2, scope: !3119)
