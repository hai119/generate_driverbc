; ModuleID = '../bcout/drivers/usb/roles/class.llvm.bc'
source_filename = "drivers/usb/roles/class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall4.init\22, \22a\22\09"
module asm "__initcall_usb_roles_init4:\09\09\09"
module asm ".long\09usb_roles_init - .\09\09\09"
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
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.subsys_private = type opaque
%struct.kmem_cache = type opaque
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.usb_role_switch = type { %struct.device, %struct.mutex, i32, %struct.device*, %struct.device*, %struct.device*, {}*, i32 (%struct.usb_role_switch*)*, i8 }
%struct.usb_role_switch_desc = type { %struct.fwnode_handle*, %struct.device*, %struct.device*, %struct.device*, i32 (%struct.usb_role_switch*, i32)*, i32 (%struct.usb_role_switch*)*, i8, i8*, i8* }

@.str = private unnamed_addr constant [16 x i8] c"usb-role-switch\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"drivers/usb/roles/class.c\00", align 1
@role_class = internal global %struct.class* null, align 8, !dbg !0
@usb_role_switch_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2035
@.str.2 = private unnamed_addr constant [10 x i8] c"&sw->lock\00", align 1
@usb_role_dev_type = internal constant %struct.device_type { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @usb_role_switch_groups, i32 0, i32 0), i32 (%struct.device*, %struct.kobj_uevent_env*)* @usb_role_switch_uevent, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)* null, void (%struct.device*)* @usb_role_switch_release, %struct.dev_pm_ops* null }, align 8, !dbg !2087
@.str.3 = private unnamed_addr constant [15 x i8] c"%s-role-switch\00", align 1
@__UNIQUE_ID___addressable_usb_roles_init170 = internal global i8* bitcast (i32 ()* @usb_roles_init to i8*), section ".discard.addressable", align 8, !dbg !2053
@__exitcall_usb_roles_exit = internal global void ()* @usb_roles_exit, section ".exitcall.exit", align 8, !dbg !2055
@__UNIQUE_ID_author171 = internal constant [63 x i8] c"roles.author=Heikki Krogerus <heikki.krogerus@linux.intel.com>\00", section ".modinfo", align 1, !dbg !2062
@__UNIQUE_ID_author172 = internal constant [49 x i8] c"roles.author=Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1, !dbg !2067
@__UNIQUE_ID_file173 = internal constant [35 x i8] c"roles.file=drivers/usb/roles/roles\00", section ".modinfo", align 1, !dbg !2072
@__UNIQUE_ID_license174 = internal constant [21 x i8] c"roles.license=GPL v2\00", section ".modinfo", align 1, !dbg !2077
@__UNIQUE_ID_description175 = internal constant [33 x i8] c"roles.description=USB Role Class\00", section ".modinfo", align 1, !dbg !2082
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"usb_role_switch\00", align 1
@usb_role_switch_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @usb_role_switch_group, %struct.attribute_group* null], align 16, !dbg !2089
@usb_role_switch_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* @usb_role_switch_is_visible, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([2 x %struct.attribute*], [2 x %struct.attribute*]* @usb_role_switch_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2092
@usb_role_switch_attrs = internal global [2 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_role, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2094
@dev_attr_role = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @role_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @role_store }, align 8, !dbg !2097
@.str.6 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@usb_roles = internal constant [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)], align 16, !dbg !2111
@.str.8 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"USB_ROLE_SWITCH=%s\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"failed to add uevent USB_ROLE_SWITCH\0A\00", align 1
@usb_roles_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2115
@.str.13 = private unnamed_addr constant [9 x i8] c"usb_role\00", align 1
@llvm.used = appending global [8 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_usb_roles_init170 to i8*), i8* bitcast (void ()* @usb_roles_exit to i8*), i8* bitcast (void ()** @__exitcall_usb_roles_exit to i8*), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__UNIQUE_ID_author171, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_author172, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__UNIQUE_ID_file173, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__UNIQUE_ID_license174, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__UNIQUE_ID_description175, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @usb_role_switch_set_role(%struct.usb_role_switch* %sw, i32 %role) #0 !dbg !2125 {
entry:
  %retval = alloca i32, align 4
  %sw.addr = alloca %struct.usb_role_switch*, align 8
  %role.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.usb_role_switch* %sw, %struct.usb_role_switch** %sw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_role_switch** %sw.addr, metadata !2126, metadata !DIExpression()), !dbg !2127
  store i32 %role, i32* %role.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %role.addr, metadata !2128, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2130, metadata !DIExpression()), !dbg !2131
  %0 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw.addr, align 8, !dbg !2132
  %1 = bitcast %struct.usb_role_switch* %0 to i8*, !dbg !2132
  %call = call zeroext i1 @IS_ERR_OR_NULL(i8* %1) #8, !dbg !2134
  br i1 %call, label %if.then, label %if.end, !dbg !2135

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2136
  br label %return, !dbg !2136

if.end:                                           ; preds = %entry
  %2 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw.addr, align 8, !dbg !2137
  %lock = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %2, i32 0, i32 1, !dbg !2138
  call void @mutex_lock(%struct.mutex* %lock) #8, !dbg !2139
  %3 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw.addr, align 8, !dbg !2140
  %set = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %3, i32 0, i32 6, !dbg !2141
  %set1 = bitcast {}** %set to i32 (%struct.usb_role_switch*, i32)**, !dbg !2141
  %4 = load i32 (%struct.usb_role_switch*, i32)*, i32 (%struct.usb_role_switch*, i32)** %set1, align 8, !dbg !2141
  %5 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw.addr, align 8, !dbg !2142
  %6 = load i32, i32* %role.addr, align 4, !dbg !2143
  %call2 = call i32 %4(%struct.usb_role_switch* %5, i32 %6) #8, !dbg !2140
  store i32 %call2, i32* %ret, align 4, !dbg !2144
  %7 = load i32, i32* %ret, align 4, !dbg !2145
  %tobool = icmp ne i32 %7, 0, !dbg !2145
  br i1 %tobool, label %if.end6, label %if.then3, !dbg !2147

if.then3:                                         ; preds = %if.end
  %8 = load i32, i32* %role.addr, align 4, !dbg !2148
  %9 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw.addr, align 8, !dbg !2150
  %role4 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %9, i32 0, i32 2, !dbg !2151
  store i32 %8, i32* %role4, align 8, !dbg !2152
  %10 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw.addr, align 8, !dbg !2153
  %dev = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %10, i32 0, i32 0, !dbg !2154
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 0, !dbg !2155
  %call5 = call i32 @kobject_uevent(%struct.kobject* %kobj, i32 2) #8, !dbg !2156
  br label %if.end6, !dbg !2157

if.end6:                                          ; preds = %if.then3, %if.end
  %11 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw.addr, align 8, !dbg !2158
  %lock7 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %11, i32 0, i32 1, !dbg !2159
  call void @mutex_unlock(%struct.mutex* %lock7) #8, !dbg !2160
  %12 = load i32, i32* %ret, align 4, !dbg !2161
  store i32 %12, i32* %retval, align 4, !dbg !2162
  br label %return, !dbg !2162

return:                                           ; preds = %if.end6, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !2163
  ret i32 %13, !dbg !2163
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(i8* %ptr) #0 !dbg !2164 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2168, metadata !DIExpression()), !dbg !2169
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2170
  %tobool = icmp ne i8* %0, null, !dbg !2170
  %lnot = xor i1 %tobool, true, !dbg !2170
  %lnot1 = xor i1 %lnot, true, !dbg !2170
  %lnot2 = xor i1 %lnot1, true, !dbg !2170
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2170
  %conv = sext i32 %lnot.ext to i64, !dbg !2170
  %tobool3 = icmp ne i64 %conv, 0, !dbg !2170
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !2171

lor.rhs:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !2172
  %2 = ptrtoint i8* %1 to i64, !dbg !2172
  %3 = inttoptr i64 %2 to i8*, !dbg !2172
  %4 = ptrtoint i8* %3 to i64, !dbg !2172
  %cmp = icmp uge i64 %4, -4095, !dbg !2172
  %lnot5 = xor i1 %cmp, true, !dbg !2172
  %lnot7 = xor i1 %lnot5, true, !dbg !2172
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !2172
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !2172
  %tobool10 = icmp ne i64 %conv9, 0, !dbg !2171
  br label %lor.end, !dbg !2171

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool10, %lor.rhs ]
  ret i1 %5, !dbg !2173
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local i32 @kobject_uevent(%struct.kobject*, i32) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @usb_role_switch_get_role(%struct.usb_role_switch* %sw) #0 !dbg !2174 {
entry:
  %retval = alloca i32, align 4
  %sw.addr = alloca %struct.usb_role_switch*, align 8
  %role = alloca i32, align 4
  store %struct.usb_role_switch* %sw, %struct.usb_role_switch** %sw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_role_switch** %sw.addr, metadata !2175, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.declare(metadata i32* %role, metadata !2177, metadata !DIExpression()), !dbg !2178
  %0 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw.addr, align 8, !dbg !2179
  %1 = bitcast %struct.usb_role_switch* %0 to i8*, !dbg !2179
  %call = call zeroext i1 @IS_ERR_OR_NULL(i8* %1) #8, !dbg !2181
  br i1 %call, label %if.then, label %if.end, !dbg !2182

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2183
  br label %return, !dbg !2183

if.end:                                           ; preds = %entry
  %2 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw.addr, align 8, !dbg !2184
  %lock = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %2, i32 0, i32 1, !dbg !2185
  call void @mutex_lock(%struct.mutex* %lock) #8, !dbg !2186
  %3 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw.addr, align 8, !dbg !2187
  %get = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %3, i32 0, i32 7, !dbg !2189
  %4 = load i32 (%struct.usb_role_switch*)*, i32 (%struct.usb_role_switch*)** %get, align 8, !dbg !2189
  %tobool = icmp ne i32 (%struct.usb_role_switch*)* %4, null, !dbg !2187
  br i1 %tobool, label %if.then1, label %if.else, !dbg !2190

if.then1:                                         ; preds = %if.end
  %5 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw.addr, align 8, !dbg !2191
  %get2 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %5, i32 0, i32 7, !dbg !2192
  %6 = load i32 (%struct.usb_role_switch*)*, i32 (%struct.usb_role_switch*)** %get2, align 8, !dbg !2192
  %7 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw.addr, align 8, !dbg !2193
  %call3 = call i32 %6(%struct.usb_role_switch* %7) #8, !dbg !2191
  store i32 %call3, i32* %role, align 4, !dbg !2194
  br label %if.end5, !dbg !2195

if.else:                                          ; preds = %if.end
  %8 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw.addr, align 8, !dbg !2196
  %role4 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %8, i32 0, i32 2, !dbg !2197
  %9 = load i32, i32* %role4, align 8, !dbg !2197
  store i32 %9, i32* %role, align 4, !dbg !2198
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then1
  %10 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw.addr, align 8, !dbg !2199
  %lock6 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %10, i32 0, i32 1, !dbg !2200
  call void @mutex_unlock(%struct.mutex* %lock6) #8, !dbg !2201
  %11 = load i32, i32* %role, align 4, !dbg !2202
  store i32 %11, i32* %retval, align 4, !dbg !2203
  br label %return, !dbg !2203

return:                                           ; preds = %if.end5, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !2204
  ret i32 %12, !dbg !2204
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.usb_role_switch* @usb_role_switch_get(%struct.device* %dev) #0 !dbg !2205 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %sw = alloca %struct.usb_role_switch*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2208, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.declare(metadata %struct.usb_role_switch** %sw, metadata !2210, metadata !DIExpression()), !dbg !2211
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2212
  %call = call %struct.fwnode_handle* @dev_fwnode(%struct.device* %0) #8, !dbg !2213
  %call1 = call %struct.usb_role_switch* @usb_role_switch_is_parent(%struct.fwnode_handle* %call) #8, !dbg !2214
  store %struct.usb_role_switch* %call1, %struct.usb_role_switch** %sw, align 8, !dbg !2215
  %1 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !2216
  %tobool = icmp ne %struct.usb_role_switch* %1, null, !dbg !2216
  br i1 %tobool, label %if.end, label %if.then, !dbg !2218

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2219
  %call2 = call i8* @device_connection_find_match(%struct.device* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* null, i8* (%struct.fwnode_handle*, i8*, i8*)* @usb_role_switch_match) #8, !dbg !2220
  %3 = bitcast i8* %call2 to %struct.usb_role_switch*, !dbg !2220
  store %struct.usb_role_switch* %3, %struct.usb_role_switch** %sw, align 8, !dbg !2221
  br label %if.end, !dbg !2222

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !2223
  %5 = bitcast %struct.usb_role_switch* %4 to i8*, !dbg !2223
  %call3 = call zeroext i1 @IS_ERR_OR_NULL(i8* %5) #8, !dbg !2225
  br i1 %call3, label %if.end29, label %if.then4, !dbg !2226

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2227, metadata !DIExpression()), !dbg !2229
  %6 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !2229
  %dev5 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %6, i32 0, i32 0, !dbg !2229
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev5, i32 0, i32 1, !dbg !2229
  %7 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2229
  %driver = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 6, !dbg !2229
  %8 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2229
  %owner = getelementptr inbounds %struct.device_driver, %struct.device_driver* %8, i32 0, i32 2, !dbg !2229
  %9 = load %struct.module*, %struct.module** %owner, align 8, !dbg !2229
  %call6 = call zeroext i1 @try_module_get(%struct.module* %9) #8, !dbg !2229
  %lnot = xor i1 %call6, true, !dbg !2229
  %lnot7 = xor i1 %lnot, true, !dbg !2229
  %lnot8 = xor i1 %lnot7, true, !dbg !2229
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !2229
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2229
  %10 = load i32, i32* %__ret_warn_on, align 4, !dbg !2230
  %tobool9 = icmp ne i32 %10, 0, !dbg !2230
  %lnot10 = xor i1 %tobool9, true, !dbg !2230
  %lnot12 = xor i1 %lnot10, true, !dbg !2230
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !2230
  %conv = sext i32 %lnot.ext13 to i64, !dbg !2230
  %tobool14 = icmp ne i64 %conv, 0, !dbg !2230
  br i1 %tobool14, label %if.then15, label %if.end22, !dbg !2229

if.then15:                                        ; preds = %if.then4
  br label %do.body, !dbg !2230

do.body:                                          ; preds = %if.then15
  br label %do.body16, !dbg !2232

do.body16:                                        ; preds = %do.body
  br label %do.end, !dbg !2234

do.end:                                           ; preds = %do.body16
  br label %do.body17, !dbg !2232

do.body17:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 133, i32 2305, i64 12) #9, !dbg !2236, !srcloc !2238
  br label %do.end18, !dbg !2236

do.end18:                                         ; preds = %do.body17
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 163) #9, !dbg !2239, !srcloc !2241
  br label %do.body19, !dbg !2232

do.body19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !2242

do.end20:                                         ; preds = %do.body19
  br label %do.end21, !dbg !2232

do.end21:                                         ; preds = %do.end20
  br label %if.end22, !dbg !2232

if.end22:                                         ; preds = %do.end21, %if.then4
  %11 = load i32, i32* %__ret_warn_on, align 4, !dbg !2229
  %tobool23 = icmp ne i32 %11, 0, !dbg !2229
  %lnot24 = xor i1 %tobool23, true, !dbg !2229
  %lnot26 = xor i1 %lnot24, true, !dbg !2229
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !2229
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !2229
  store i64 %conv28, i64* %tmp, align 8, !dbg !2230
  %12 = load i64, i64* %tmp, align 8, !dbg !2229
  br label %if.end29, !dbg !2244

if.end29:                                         ; preds = %if.end22, %if.end
  %13 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !2245
  ret %struct.usb_role_switch* %13, !dbg !2246
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_role_switch* @usb_role_switch_is_parent(%struct.fwnode_handle* %fwnode) #0 !dbg !2247 {
entry:
  %retval = alloca %struct.usb_role_switch*, align 8
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %parent = alloca %struct.fwnode_handle*, align 8
  %dev = alloca %struct.device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_role_switch*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !2250, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %parent, metadata !2252, metadata !DIExpression()), !dbg !2253
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !2254
  %call = call %struct.fwnode_handle* @fwnode_get_parent(%struct.fwnode_handle* %0) #8, !dbg !2255
  store %struct.fwnode_handle* %call, %struct.fwnode_handle** %parent, align 8, !dbg !2253
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2256, metadata !DIExpression()), !dbg !2257
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %parent, align 8, !dbg !2258
  %tobool = icmp ne %struct.fwnode_handle* %1, null, !dbg !2258
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2260

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %parent, align 8, !dbg !2261
  %call1 = call zeroext i1 @fwnode_property_present(%struct.fwnode_handle* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #8, !dbg !2262
  br i1 %call1, label %if.end, label %if.then, !dbg !2263

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.usb_role_switch* null, %struct.usb_role_switch** %retval, align 8, !dbg !2264
  br label %return, !dbg !2264

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.class*, %struct.class** @role_class, align 8, !dbg !2265
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %parent, align 8, !dbg !2266
  %call2 = call %struct.device* @class_find_device_by_fwnode(%struct.class* %3, %struct.fwnode_handle* %4) #8, !dbg !2267
  store %struct.device* %call2, %struct.device** %dev, align 8, !dbg !2268
  %5 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2269
  %tobool3 = icmp ne %struct.device* %5, null, !dbg !2269
  br i1 %tobool3, label %cond.true, label %cond.false, !dbg !2269

cond.true:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2270, metadata !DIExpression()), !dbg !2272
  %6 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2272
  %7 = bitcast %struct.device* %6 to i8*, !dbg !2272
  store i8* %7, i8** %__mptr, align 8, !dbg !2272
  br label %do.body, !dbg !2272

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !2273

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %__mptr, align 8, !dbg !2272
  %add.ptr = getelementptr i8, i8* %8, i64 0, !dbg !2272
  %9 = bitcast i8* %add.ptr to %struct.usb_role_switch*, !dbg !2272
  store %struct.usb_role_switch* %9, %struct.usb_role_switch** %tmp, align 8, !dbg !2273
  %10 = load %struct.usb_role_switch*, %struct.usb_role_switch** %tmp, align 8, !dbg !2272
  %11 = bitcast %struct.usb_role_switch* %10 to i8*, !dbg !2275
  br label %cond.end, !dbg !2269

cond.false:                                       ; preds = %if.end
  %call4 = call i8* @ERR_PTR(i64 -517) #8, !dbg !2276
  br label %cond.end, !dbg !2269

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi i8* [ %11, %do.end ], [ %call4, %cond.false ], !dbg !2269
  %12 = bitcast i8* %cond to %struct.usb_role_switch*, !dbg !2269
  store %struct.usb_role_switch* %12, %struct.usb_role_switch** %retval, align 8, !dbg !2277
  br label %return, !dbg !2277

return:                                           ; preds = %cond.end, %if.then
  %13 = load %struct.usb_role_switch*, %struct.usb_role_switch** %retval, align 8, !dbg !2278
  ret %struct.usb_role_switch* %13, !dbg !2278
}

; Function Attrs: noredzone
declare dso_local %struct.fwnode_handle* @dev_fwnode(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @device_connection_find_match(%struct.device* %dev, i8* %con_id, i8* %data, i8* (%struct.fwnode_handle*, i8*, i8*)* %match) #0 !dbg !2279 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %con_id.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %match.addr = alloca i8* (%struct.fwnode_handle*, i8*, i8*)*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2287, metadata !DIExpression()), !dbg !2288
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !2289, metadata !DIExpression()), !dbg !2290
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2291, metadata !DIExpression()), !dbg !2292
  store i8* (%struct.fwnode_handle*, i8*, i8*)* %match, i8* (%struct.fwnode_handle*, i8*, i8*)** %match.addr, align 8
  call void @llvm.dbg.declare(metadata i8* (%struct.fwnode_handle*, i8*, i8*)** %match.addr, metadata !2293, metadata !DIExpression()), !dbg !2294
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2295
  %call = call %struct.fwnode_handle* @dev_fwnode(%struct.device* %0) #8, !dbg !2296
  %1 = load i8*, i8** %con_id.addr, align 8, !dbg !2297
  %2 = load i8*, i8** %data.addr, align 8, !dbg !2298
  %3 = load i8* (%struct.fwnode_handle*, i8*, i8*)*, i8* (%struct.fwnode_handle*, i8*, i8*)** %match.addr, align 8, !dbg !2299
  %call1 = call i8* @fwnode_connection_find_match(%struct.fwnode_handle* %call, i8* %1, i8* %2, i8* (%struct.fwnode_handle*, i8*, i8*)* %3) #8, !dbg !2300
  ret i8* %call1, !dbg !2301
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_role_switch_match(%struct.fwnode_handle* %fwnode, i8* %id, i8* %data) #0 !dbg !2302 {
entry:
  %retval = alloca i8*, align 8
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %id.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %dev = alloca %struct.device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_role_switch*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !2303, metadata !DIExpression()), !dbg !2304
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !2305, metadata !DIExpression()), !dbg !2306
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2307, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2309, metadata !DIExpression()), !dbg !2310
  %0 = load i8*, i8** %id.addr, align 8, !dbg !2311
  %tobool = icmp ne i8* %0, null, !dbg !2311
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2313

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !2314
  %2 = load i8*, i8** %id.addr, align 8, !dbg !2315
  %call = call zeroext i1 @fwnode_property_present(%struct.fwnode_handle* %1, i8* %2) #8, !dbg !2316
  br i1 %call, label %if.end, label %if.then, !dbg !2317

if.then:                                          ; preds = %land.lhs.true
  store i8* null, i8** %retval, align 8, !dbg !2318
  br label %return, !dbg !2318

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load %struct.class*, %struct.class** @role_class, align 8, !dbg !2319
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !2320
  %call1 = call %struct.device* @class_find_device_by_fwnode(%struct.class* %3, %struct.fwnode_handle* %4) #8, !dbg !2321
  store %struct.device* %call1, %struct.device** %dev, align 8, !dbg !2322
  %5 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2323
  %tobool2 = icmp ne %struct.device* %5, null, !dbg !2323
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !2323

cond.true:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2324, metadata !DIExpression()), !dbg !2326
  %6 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2326
  %7 = bitcast %struct.device* %6 to i8*, !dbg !2326
  store i8* %7, i8** %__mptr, align 8, !dbg !2326
  br label %do.body, !dbg !2326

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !2327

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %__mptr, align 8, !dbg !2326
  %add.ptr = getelementptr i8, i8* %8, i64 0, !dbg !2326
  %9 = bitcast i8* %add.ptr to %struct.usb_role_switch*, !dbg !2326
  store %struct.usb_role_switch* %9, %struct.usb_role_switch** %tmp, align 8, !dbg !2327
  %10 = load %struct.usb_role_switch*, %struct.usb_role_switch** %tmp, align 8, !dbg !2326
  %11 = bitcast %struct.usb_role_switch* %10 to i8*, !dbg !2329
  br label %cond.end, !dbg !2323

cond.false:                                       ; preds = %if.end
  %call3 = call i8* @ERR_PTR(i64 -517) #8, !dbg !2330
  br label %cond.end, !dbg !2323

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi i8* [ %11, %do.end ], [ %call3, %cond.false ], !dbg !2323
  store i8* %cond, i8** %retval, align 8, !dbg !2331
  br label %return, !dbg !2331

return:                                           ; preds = %cond.end, %if.then
  %12 = load i8*, i8** %retval, align 8, !dbg !2332
  ret i8* %12, !dbg !2332
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @try_module_get(%struct.module* %module) #0 !dbg !2333 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !2337, metadata !DIExpression()), !dbg !2338
  ret i1 true, !dbg !2339
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.usb_role_switch* @fwnode_usb_role_switch_get(%struct.fwnode_handle* %fwnode) #0 !dbg !2340 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %sw = alloca %struct.usb_role_switch*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !2341, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.declare(metadata %struct.usb_role_switch** %sw, metadata !2343, metadata !DIExpression()), !dbg !2344
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !2345
  %call = call %struct.usb_role_switch* @usb_role_switch_is_parent(%struct.fwnode_handle* %0) #8, !dbg !2346
  store %struct.usb_role_switch* %call, %struct.usb_role_switch** %sw, align 8, !dbg !2347
  %1 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !2348
  %tobool = icmp ne %struct.usb_role_switch* %1, null, !dbg !2348
  br i1 %tobool, label %if.end, label %if.then, !dbg !2350

if.then:                                          ; preds = %entry
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !2351
  %call1 = call i8* @fwnode_connection_find_match(%struct.fwnode_handle* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* null, i8* (%struct.fwnode_handle*, i8*, i8*)* @usb_role_switch_match) #8, !dbg !2352
  %3 = bitcast i8* %call1 to %struct.usb_role_switch*, !dbg !2352
  store %struct.usb_role_switch* %3, %struct.usb_role_switch** %sw, align 8, !dbg !2353
  br label %if.end, !dbg !2354

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !2355
  %5 = bitcast %struct.usb_role_switch* %4 to i8*, !dbg !2355
  %call2 = call zeroext i1 @IS_ERR_OR_NULL(i8* %5) #8, !dbg !2357
  br i1 %call2, label %if.end27, label %if.then3, !dbg !2358

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2359, metadata !DIExpression()), !dbg !2361
  %6 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !2361
  %dev = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %6, i32 0, i32 0, !dbg !2361
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !2361
  %7 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2361
  %driver = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 6, !dbg !2361
  %8 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2361
  %owner = getelementptr inbounds %struct.device_driver, %struct.device_driver* %8, i32 0, i32 2, !dbg !2361
  %9 = load %struct.module*, %struct.module** %owner, align 8, !dbg !2361
  %call4 = call zeroext i1 @try_module_get(%struct.module* %9) #8, !dbg !2361
  %lnot = xor i1 %call4, true, !dbg !2361
  %lnot5 = xor i1 %lnot, true, !dbg !2361
  %lnot6 = xor i1 %lnot5, true, !dbg !2361
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !2361
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2361
  %10 = load i32, i32* %__ret_warn_on, align 4, !dbg !2362
  %tobool7 = icmp ne i32 %10, 0, !dbg !2362
  %lnot8 = xor i1 %tobool7, true, !dbg !2362
  %lnot10 = xor i1 %lnot8, true, !dbg !2362
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !2362
  %conv = sext i32 %lnot.ext11 to i64, !dbg !2362
  %tobool12 = icmp ne i64 %conv, 0, !dbg !2362
  br i1 %tobool12, label %if.then13, label %if.end20, !dbg !2361

if.then13:                                        ; preds = %if.then3
  br label %do.body, !dbg !2362

do.body:                                          ; preds = %if.then13
  br label %do.body14, !dbg !2364

do.body14:                                        ; preds = %do.body
  br label %do.end, !dbg !2366

do.end:                                           ; preds = %do.body14
  br label %do.body15, !dbg !2364

do.body15:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 155, i32 2305, i64 12) #9, !dbg !2368, !srcloc !2370
  br label %do.end16, !dbg !2368

do.end16:                                         ; preds = %do.body15
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 164) #9, !dbg !2371, !srcloc !2373
  br label %do.body17, !dbg !2364

do.body17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !2374

do.end18:                                         ; preds = %do.body17
  br label %do.end19, !dbg !2364

do.end19:                                         ; preds = %do.end18
  br label %if.end20, !dbg !2364

if.end20:                                         ; preds = %do.end19, %if.then3
  %11 = load i32, i32* %__ret_warn_on, align 4, !dbg !2361
  %tobool21 = icmp ne i32 %11, 0, !dbg !2361
  %lnot22 = xor i1 %tobool21, true, !dbg !2361
  %lnot24 = xor i1 %lnot22, true, !dbg !2361
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !2361
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !2361
  store i64 %conv26, i64* %tmp, align 8, !dbg !2362
  %12 = load i64, i64* %tmp, align 8, !dbg !2361
  br label %if.end27, !dbg !2376

if.end27:                                         ; preds = %if.end20, %if.end
  %13 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !2377
  ret %struct.usb_role_switch* %13, !dbg !2378
}

; Function Attrs: noredzone
declare dso_local i8* @fwnode_connection_find_match(%struct.fwnode_handle*, i8*, i8*, i8* (%struct.fwnode_handle*, i8*, i8*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_role_switch_put(%struct.usb_role_switch* %sw) #0 !dbg !2379 {
entry:
  %sw.addr = alloca %struct.usb_role_switch*, align 8
  store %struct.usb_role_switch* %sw, %struct.usb_role_switch** %sw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_role_switch** %sw.addr, metadata !2382, metadata !DIExpression()), !dbg !2383
  %0 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw.addr, align 8, !dbg !2384
  %1 = bitcast %struct.usb_role_switch* %0 to i8*, !dbg !2384
  %call = call zeroext i1 @IS_ERR_OR_NULL(i8* %1) #8, !dbg !2386
  br i1 %call, label %if.end, label %if.then, !dbg !2387

if.then:                                          ; preds = %entry
  %2 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw.addr, align 8, !dbg !2388
  %dev = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %2, i32 0, i32 0, !dbg !2390
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !2391
  %3 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2391
  %driver = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 6, !dbg !2392
  %4 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2392
  %owner = getelementptr inbounds %struct.device_driver, %struct.device_driver* %4, i32 0, i32 2, !dbg !2393
  %5 = load %struct.module*, %struct.module** %owner, align 8, !dbg !2393
  call void @module_put(%struct.module* %5) #8, !dbg !2394
  %6 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw.addr, align 8, !dbg !2395
  %dev1 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %6, i32 0, i32 0, !dbg !2396
  call void @put_device(%struct.device* %dev1) #8, !dbg !2397
  br label %if.end, !dbg !2398

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2399
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @module_put(%struct.module* %module) #0 !dbg !2400 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !2403, metadata !DIExpression()), !dbg !2404
  ret void, !dbg !2405
}

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.usb_role_switch* @usb_role_switch_find_by_fwnode(%struct.fwnode_handle* %fwnode) #0 !dbg !2406 {
entry:
  %retval = alloca %struct.usb_role_switch*, align 8
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %dev = alloca %struct.device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_role_switch*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !2409, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2411, metadata !DIExpression()), !dbg !2412
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !2413
  %tobool = icmp ne %struct.fwnode_handle* %0, null, !dbg !2413
  br i1 %tobool, label %if.end, label %if.then, !dbg !2415

if.then:                                          ; preds = %entry
  store %struct.usb_role_switch* null, %struct.usb_role_switch** %retval, align 8, !dbg !2416
  br label %return, !dbg !2416

if.end:                                           ; preds = %entry
  %1 = load %struct.class*, %struct.class** @role_class, align 8, !dbg !2417
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !2418
  %call = call %struct.device* @class_find_device_by_fwnode(%struct.class* %1, %struct.fwnode_handle* %2) #8, !dbg !2419
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !2420
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2421
  %tobool1 = icmp ne %struct.device* %3, null, !dbg !2421
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !2421

cond.true:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2422, metadata !DIExpression()), !dbg !2424
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2424
  %5 = bitcast %struct.device* %4 to i8*, !dbg !2424
  store i8* %5, i8** %__mptr, align 8, !dbg !2424
  br label %do.body, !dbg !2424

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !2425

do.end:                                           ; preds = %do.body
  %6 = load i8*, i8** %__mptr, align 8, !dbg !2424
  %add.ptr = getelementptr i8, i8* %6, i64 0, !dbg !2424
  %7 = bitcast i8* %add.ptr to %struct.usb_role_switch*, !dbg !2424
  store %struct.usb_role_switch* %7, %struct.usb_role_switch** %tmp, align 8, !dbg !2425
  %8 = load %struct.usb_role_switch*, %struct.usb_role_switch** %tmp, align 8, !dbg !2424
  br label %cond.end, !dbg !2421

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2421

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.usb_role_switch* [ %8, %do.end ], [ null, %cond.false ], !dbg !2421
  store %struct.usb_role_switch* %cond, %struct.usb_role_switch** %retval, align 8, !dbg !2427
  br label %return, !dbg !2427

return:                                           ; preds = %cond.end, %if.then
  %9 = load %struct.usb_role_switch*, %struct.usb_role_switch** %retval, align 8, !dbg !2428
  ret %struct.usb_role_switch* %9, !dbg !2428
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device* @class_find_device_by_fwnode(%struct.class* %class, %struct.fwnode_handle* %fwnode) #0 !dbg !2429 {
entry:
  %class.addr = alloca %struct.class*, align 8
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  store %struct.class* %class, %struct.class** %class.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class** %class.addr, metadata !2432, metadata !DIExpression()), !dbg !2433
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !2434, metadata !DIExpression()), !dbg !2435
  %0 = load %struct.class*, %struct.class** %class.addr, align 8, !dbg !2436
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !2437
  %2 = bitcast %struct.fwnode_handle* %1 to i8*, !dbg !2437
  %call = call %struct.device* @class_find_device(%struct.class* %0, %struct.device* null, i8* %2, i32 (%struct.device*, i8*)* @device_match_fwnode) #8, !dbg !2438
  ret %struct.device* %call, !dbg !2439
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.usb_role_switch* @usb_role_switch_register(%struct.device* %parent, %struct.usb_role_switch_desc* %desc) #0 !dbg !2037 {
entry:
  %retval = alloca %struct.usb_role_switch*, align 8
  %parent.addr = alloca %struct.device*, align 8
  %desc.addr = alloca %struct.usb_role_switch_desc*, align 8
  %sw = alloca %struct.usb_role_switch*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !2440, metadata !DIExpression()), !dbg !2441
  store %struct.usb_role_switch_desc* %desc, %struct.usb_role_switch_desc** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_role_switch_desc** %desc.addr, metadata !2442, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.declare(metadata %struct.usb_role_switch** %sw, metadata !2444, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2446, metadata !DIExpression()), !dbg !2447
  %0 = load %struct.usb_role_switch_desc*, %struct.usb_role_switch_desc** %desc.addr, align 8, !dbg !2448
  %tobool = icmp ne %struct.usb_role_switch_desc* %0, null, !dbg !2448
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2450

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.usb_role_switch_desc*, %struct.usb_role_switch_desc** %desc.addr, align 8, !dbg !2451
  %set = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %1, i32 0, i32 4, !dbg !2452
  %2 = load i32 (%struct.usb_role_switch*, i32)*, i32 (%struct.usb_role_switch*, i32)** %set, align 8, !dbg !2452
  %tobool1 = icmp ne i32 (%struct.usb_role_switch*, i32)* %2, null, !dbg !2451
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2453

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i8* @ERR_PTR(i64 -22) #8, !dbg !2454
  %3 = bitcast i8* %call to %struct.usb_role_switch*, !dbg !2454
  store %struct.usb_role_switch* %3, %struct.usb_role_switch** %retval, align 8, !dbg !2455
  br label %return, !dbg !2455

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call i8* @kzalloc(i64 776, i32 3264) #8, !dbg !2456
  %4 = bitcast i8* %call2 to %struct.usb_role_switch*, !dbg !2456
  store %struct.usb_role_switch* %4, %struct.usb_role_switch** %sw, align 8, !dbg !2457
  %5 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !2458
  %tobool3 = icmp ne %struct.usb_role_switch* %5, null, !dbg !2458
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !2460

if.then4:                                         ; preds = %if.end
  %call5 = call i8* @ERR_PTR(i64 -12) #8, !dbg !2461
  %6 = bitcast i8* %call5 to %struct.usb_role_switch*, !dbg !2461
  store %struct.usb_role_switch* %6, %struct.usb_role_switch** %retval, align 8, !dbg !2462
  br label %return, !dbg !2462

if.end6:                                          ; preds = %if.end
  br label %do.body, !dbg !2463

do.body:                                          ; preds = %if.end6
  %7 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !2464
  %lock = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %7, i32 0, i32 1, !dbg !2464
  call void @__mutex_init(%struct.mutex* %lock, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* @usb_role_switch_register.__key) #8, !dbg !2464
  br label %do.end, !dbg !2464

do.end:                                           ; preds = %do.body
  %8 = load %struct.usb_role_switch_desc*, %struct.usb_role_switch_desc** %desc.addr, align 8, !dbg !2466
  %allow_userspace_control = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %8, i32 0, i32 6, !dbg !2467
  %9 = load i8, i8* %allow_userspace_control, align 8, !dbg !2467
  %tobool7 = trunc i8 %9 to i1, !dbg !2467
  %10 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !2468
  %allow_userspace_control8 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %10, i32 0, i32 8, !dbg !2469
  %frombool = zext i1 %tobool7 to i8, !dbg !2470
  store i8 %frombool, i8* %allow_userspace_control8, align 8, !dbg !2470
  %11 = load %struct.usb_role_switch_desc*, %struct.usb_role_switch_desc** %desc.addr, align 8, !dbg !2471
  %usb2_port = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %11, i32 0, i32 1, !dbg !2472
  %12 = load %struct.device*, %struct.device** %usb2_port, align 8, !dbg !2472
  %13 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !2473
  %usb2_port9 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %13, i32 0, i32 3, !dbg !2474
  store %struct.device* %12, %struct.device** %usb2_port9, align 8, !dbg !2475
  %14 = load %struct.usb_role_switch_desc*, %struct.usb_role_switch_desc** %desc.addr, align 8, !dbg !2476
  %usb3_port = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %14, i32 0, i32 2, !dbg !2477
  %15 = load %struct.device*, %struct.device** %usb3_port, align 8, !dbg !2477
  %16 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !2478
  %usb3_port10 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %16, i32 0, i32 4, !dbg !2479
  store %struct.device* %15, %struct.device** %usb3_port10, align 8, !dbg !2480
  %17 = load %struct.usb_role_switch_desc*, %struct.usb_role_switch_desc** %desc.addr, align 8, !dbg !2481
  %udc = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %17, i32 0, i32 3, !dbg !2482
  %18 = load %struct.device*, %struct.device** %udc, align 8, !dbg !2482
  %19 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !2483
  %udc11 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %19, i32 0, i32 5, !dbg !2484
  store %struct.device* %18, %struct.device** %udc11, align 8, !dbg !2485
  %20 = load %struct.usb_role_switch_desc*, %struct.usb_role_switch_desc** %desc.addr, align 8, !dbg !2486
  %set12 = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %20, i32 0, i32 4, !dbg !2487
  %21 = load i32 (%struct.usb_role_switch*, i32)*, i32 (%struct.usb_role_switch*, i32)** %set12, align 8, !dbg !2487
  %22 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !2488
  %set13 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %22, i32 0, i32 6, !dbg !2489
  %set14 = bitcast {}** %set13 to i32 (%struct.usb_role_switch*, i32)**, !dbg !2489
  store i32 (%struct.usb_role_switch*, i32)* %21, i32 (%struct.usb_role_switch*, i32)** %set14, align 8, !dbg !2490
  %23 = load %struct.usb_role_switch_desc*, %struct.usb_role_switch_desc** %desc.addr, align 8, !dbg !2491
  %get = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %23, i32 0, i32 5, !dbg !2492
  %24 = load i32 (%struct.usb_role_switch*)*, i32 (%struct.usb_role_switch*)** %get, align 8, !dbg !2492
  %25 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !2493
  %get15 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %25, i32 0, i32 7, !dbg !2494
  store i32 (%struct.usb_role_switch*)* %24, i32 (%struct.usb_role_switch*)** %get15, align 8, !dbg !2495
  %26 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !2496
  %27 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !2497
  %dev = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %27, i32 0, i32 0, !dbg !2498
  %parent16 = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !2499
  store %struct.device* %26, %struct.device** %parent16, align 8, !dbg !2500
  %28 = load %struct.usb_role_switch_desc*, %struct.usb_role_switch_desc** %desc.addr, align 8, !dbg !2501
  %fwnode = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %28, i32 0, i32 0, !dbg !2502
  %29 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !2502
  %30 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !2503
  %dev17 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %30, i32 0, i32 0, !dbg !2504
  %fwnode18 = getelementptr inbounds %struct.device, %struct.device* %dev17, i32 0, i32 24, !dbg !2505
  store %struct.fwnode_handle* %29, %struct.fwnode_handle** %fwnode18, align 8, !dbg !2506
  %31 = load %struct.class*, %struct.class** @role_class, align 8, !dbg !2507
  %32 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !2508
  %dev19 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %32, i32 0, i32 0, !dbg !2509
  %class = getelementptr inbounds %struct.device, %struct.device* %dev19, i32 0, i32 29, !dbg !2510
  store %struct.class* %31, %struct.class** %class, align 8, !dbg !2511
  %33 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !2512
  %dev20 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %33, i32 0, i32 0, !dbg !2513
  %type = getelementptr inbounds %struct.device, %struct.device* %dev20, i32 0, i32 4, !dbg !2514
  store %struct.device_type* @usb_role_dev_type, %struct.device_type** %type, align 8, !dbg !2515
  %34 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !2516
  %dev21 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %34, i32 0, i32 0, !dbg !2517
  %35 = load %struct.usb_role_switch_desc*, %struct.usb_role_switch_desc** %desc.addr, align 8, !dbg !2518
  %driver_data = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %35, i32 0, i32 7, !dbg !2519
  %36 = load i8*, i8** %driver_data, align 8, !dbg !2519
  call void @dev_set_drvdata(%struct.device* %dev21, i8* %36) #8, !dbg !2520
  %37 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !2521
  %dev22 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %37, i32 0, i32 0, !dbg !2522
  %38 = load %struct.usb_role_switch_desc*, %struct.usb_role_switch_desc** %desc.addr, align 8, !dbg !2523
  %name = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %38, i32 0, i32 8, !dbg !2524
  %39 = load i8*, i8** %name, align 8, !dbg !2524
  %tobool23 = icmp ne i8* %39, null, !dbg !2523
  br i1 %tobool23, label %cond.true, label %cond.false, !dbg !2523

cond.true:                                        ; preds = %do.end
  %40 = load %struct.usb_role_switch_desc*, %struct.usb_role_switch_desc** %desc.addr, align 8, !dbg !2525
  %name24 = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %40, i32 0, i32 8, !dbg !2526
  %41 = load i8*, i8** %name24, align 8, !dbg !2526
  br label %cond.end, !dbg !2523

cond.false:                                       ; preds = %do.end
  %42 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !2527
  %call25 = call i8* @dev_name(%struct.device* %42) #8, !dbg !2528
  br label %cond.end, !dbg !2523

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %41, %cond.true ], [ %call25, %cond.false ], !dbg !2523
  %call26 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %cond) #8, !dbg !2529
  %43 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !2530
  %dev27 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %43, i32 0, i32 0, !dbg !2531
  %call28 = call i32 @device_register(%struct.device* %dev27) #8, !dbg !2532
  store i32 %call28, i32* %ret, align 4, !dbg !2533
  %44 = load i32, i32* %ret, align 4, !dbg !2534
  %tobool29 = icmp ne i32 %44, 0, !dbg !2534
  br i1 %tobool29, label %if.then30, label %if.end33, !dbg !2536

if.then30:                                        ; preds = %cond.end
  %45 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !2537
  %dev31 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %45, i32 0, i32 0, !dbg !2539
  call void @put_device(%struct.device* %dev31) #8, !dbg !2540
  %46 = load i32, i32* %ret, align 4, !dbg !2541
  %conv = sext i32 %46 to i64, !dbg !2541
  %call32 = call i8* @ERR_PTR(i64 %conv) #8, !dbg !2542
  %47 = bitcast i8* %call32 to %struct.usb_role_switch*, !dbg !2542
  store %struct.usb_role_switch* %47, %struct.usb_role_switch** %retval, align 8, !dbg !2543
  br label %return, !dbg !2543

if.end33:                                         ; preds = %cond.end
  %48 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !2544
  store %struct.usb_role_switch* %48, %struct.usb_role_switch** %retval, align 8, !dbg !2545
  br label %return, !dbg !2545

return:                                           ; preds = %if.end33, %if.then30, %if.then4, %if.then
  %49 = load %struct.usb_role_switch*, %struct.usb_role_switch** %retval, align 8, !dbg !2546
  ret %struct.usb_role_switch* %49, !dbg !2546
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !2547 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !2550, metadata !DIExpression()), !dbg !2551
  %0 = load i64, i64* %error.addr, align 8, !dbg !2552
  %1 = inttoptr i64 %0 to i8*, !dbg !2553
  ret i8* %1, !dbg !2554
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2555 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2558, metadata !DIExpression()), !dbg !2562
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2568, metadata !DIExpression()), !dbg !2569
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2570, metadata !DIExpression()), !dbg !2571
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2572, metadata !DIExpression()), !dbg !2573
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2574, metadata !DIExpression()), !dbg !2578
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2580, metadata !DIExpression()), !dbg !2584
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2586, metadata !DIExpression()), !dbg !2590
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2595, metadata !DIExpression()), !dbg !2596
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2597, metadata !DIExpression()), !dbg !2598
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2599, metadata !DIExpression()), !dbg !2600
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2601, metadata !DIExpression()), !dbg !2602
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2603, metadata !DIExpression()), !dbg !2604
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2605, metadata !DIExpression()), !dbg !2606
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2607, metadata !DIExpression()), !dbg !2608
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2609, metadata !DIExpression()), !dbg !2610
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2611, metadata !DIExpression()), !dbg !2612
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2613, metadata !DIExpression()), !dbg !2614
  %0 = load i64, i64* %size.addr, align 8, !dbg !2615
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2616
  %or = or i32 %1, 256, !dbg !2617
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2618
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !2619
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2620

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2621
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2622
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2623

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2624
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2625
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2626
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !2627
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2604
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2628
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2629
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2630
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2631
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2632
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2633
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !2634
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2634
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2634
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2634
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !2634
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2635
  br label %kmalloc.exit, !dbg !2635

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2636
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2637
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2637
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2639

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2640
  br label %kmalloc_index.exit.i, !dbg !2640

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2641
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2643
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2644

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2645
  br label %kmalloc_index.exit.i, !dbg !2645

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2646
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2648
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2649

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2650
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2651
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2652

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2653
  br label %kmalloc_index.exit.i, !dbg !2653

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2654
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2656
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2657

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2658
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2659
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2660

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2661
  br label %kmalloc_index.exit.i, !dbg !2661

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2662
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2664
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2665

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2666
  br label %kmalloc_index.exit.i, !dbg !2666

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2667
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2669
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2670

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2671
  br label %kmalloc_index.exit.i, !dbg !2671

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2672
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2674
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2675

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2676
  br label %kmalloc_index.exit.i, !dbg !2676

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2677
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2679
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2680

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2681
  br label %kmalloc_index.exit.i, !dbg !2681

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2682
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2684
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2685

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2686
  br label %kmalloc_index.exit.i, !dbg !2686

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2687
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !2689
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2690

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2691
  br label %kmalloc_index.exit.i, !dbg !2691

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2692
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !2694
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2695

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2696
  br label %kmalloc_index.exit.i, !dbg !2696

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2697
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !2699
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2700

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2701
  br label %kmalloc_index.exit.i, !dbg !2701

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2702
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !2704
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2705

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2706
  br label %kmalloc_index.exit.i, !dbg !2706

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2707
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !2709
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2710

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2711
  br label %kmalloc_index.exit.i, !dbg !2711

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2712
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2714
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2715

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2716
  br label %kmalloc_index.exit.i, !dbg !2716

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2717
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2719
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2720

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2721
  br label %kmalloc_index.exit.i, !dbg !2721

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2722
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2724
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2725

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2726
  br label %kmalloc_index.exit.i, !dbg !2726

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2727
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2729
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2730

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2731
  br label %kmalloc_index.exit.i, !dbg !2731

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2732
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2734
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2735

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2736
  br label %kmalloc_index.exit.i, !dbg !2736

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2737
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2739
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2740

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2741
  br label %kmalloc_index.exit.i, !dbg !2741

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2742
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2744
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2745

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2746
  br label %kmalloc_index.exit.i, !dbg !2746

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2747
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2749
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2750

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2751
  br label %kmalloc_index.exit.i, !dbg !2751

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2752
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !2754
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2755

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2756
  br label %kmalloc_index.exit.i, !dbg !2756

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2757
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !2759
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2760

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2761
  br label %kmalloc_index.exit.i, !dbg !2761

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2762
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !2764
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2765

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2766
  br label %kmalloc_index.exit.i, !dbg !2766

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2767
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !2769
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2770

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2771
  br label %kmalloc_index.exit.i, !dbg !2771

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2772
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !2774
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2775

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2776
  br label %kmalloc_index.exit.i, !dbg !2776

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2777
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2779
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2780

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2781
  br label %kmalloc_index.exit.i, !dbg !2781

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !2782, !srcloc !2785
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #9, !dbg !2786, !srcloc !2789
  unreachable, !dbg !2790

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2791
  store i32 %45, i32* %index.i, align 4, !dbg !2792
  %46 = load i32, i32* %index.i, align 4, !dbg !2793
  %tobool.i = icmp ne i32 %46, 0, !dbg !2793
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2795

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2796
  br label %kmalloc.exit, !dbg !2796

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2797
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2798
  %and.i.i = and i32 %48, 17, !dbg !2798
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2798
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2798
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2798
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2798
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2800

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2801
  br label %kmalloc_type.exit.i, !dbg !2801

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2802
  %and2.i.i = and i32 %49, 1, !dbg !2803
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2802
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2802
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2802
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2804
  br label %kmalloc_type.exit.i, !dbg !2804

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2805
  %idxprom.i = zext i32 %51 to i64, !dbg !2806
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2806
  %52 = load i32, i32* %index.i, align 4, !dbg !2807
  %idxprom6.i = zext i32 %52 to i64, !dbg !2806
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2806
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2806
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2808
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2809
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2810
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2811
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !2812
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2812
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2812
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2812
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !2812
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2573
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2813
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2814
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2815
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2816
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !2817
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2818
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2819
  store i8* %62, i8** %retval.i, align 8, !dbg !2820
  br label %kmalloc.exit, !dbg !2820

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2821
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2822
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !2823
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2823
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2823
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2823
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !2823
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2824
  br label %kmalloc.exit, !dbg !2824

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2825
  ret i8* %65, !dbg !2826
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !2827 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2830, metadata !DIExpression()), !dbg !2831
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2832, metadata !DIExpression()), !dbg !2833
  %0 = load i8*, i8** %data.addr, align 8, !dbg !2834
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2835
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !2836
  store i8* %0, i8** %driver_data, align 8, !dbg !2837
  ret void, !dbg !2838
}

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !2839 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2842, metadata !DIExpression()), !dbg !2843
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2844
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !2846
  %1 = load i8*, i8** %init_name, align 8, !dbg !2846
  %tobool = icmp ne i8* %1, null, !dbg !2844
  br i1 %tobool, label %if.then, label %if.end, !dbg !2847

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2848
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !2849
  %3 = load i8*, i8** %init_name1, align 8, !dbg !2849
  store i8* %3, i8** %retval, align 8, !dbg !2850
  br label %return, !dbg !2850

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2851
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !2852
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #8, !dbg !2853
  store i8* %call, i8** %retval, align 8, !dbg !2854
  br label %return, !dbg !2854

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !2855
  ret i8* %5, !dbg !2855
}

; Function Attrs: noredzone
declare dso_local i32 @device_register(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_role_switch_unregister(%struct.usb_role_switch* %sw) #0 !dbg !2856 {
entry:
  %sw.addr = alloca %struct.usb_role_switch*, align 8
  store %struct.usb_role_switch* %sw, %struct.usb_role_switch** %sw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_role_switch** %sw.addr, metadata !2857, metadata !DIExpression()), !dbg !2858
  %0 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw.addr, align 8, !dbg !2859
  %1 = bitcast %struct.usb_role_switch* %0 to i8*, !dbg !2859
  %call = call zeroext i1 @IS_ERR_OR_NULL(i8* %1) #8, !dbg !2861
  br i1 %call, label %if.end, label %if.then, !dbg !2862

if.then:                                          ; preds = %entry
  %2 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw.addr, align 8, !dbg !2863
  %dev = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %2, i32 0, i32 0, !dbg !2864
  call void @device_unregister(%struct.device* %dev) #8, !dbg !2865
  br label %if.end, !dbg !2865

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2866
}

; Function Attrs: noredzone
declare dso_local void @device_unregister(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_role_switch_set_drvdata(%struct.usb_role_switch* %sw, i8* %data) #0 !dbg !2867 {
entry:
  %sw.addr = alloca %struct.usb_role_switch*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.usb_role_switch* %sw, %struct.usb_role_switch** %sw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_role_switch** %sw.addr, metadata !2870, metadata !DIExpression()), !dbg !2871
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2872, metadata !DIExpression()), !dbg !2873
  %0 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw.addr, align 8, !dbg !2874
  %dev = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %0, i32 0, i32 0, !dbg !2875
  %1 = load i8*, i8** %data.addr, align 8, !dbg !2876
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #8, !dbg !2877
  ret void, !dbg !2878
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @usb_role_switch_get_drvdata(%struct.usb_role_switch* %sw) #0 !dbg !2879 {
entry:
  %sw.addr = alloca %struct.usb_role_switch*, align 8
  store %struct.usb_role_switch* %sw, %struct.usb_role_switch** %sw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_role_switch** %sw.addr, metadata !2882, metadata !DIExpression()), !dbg !2883
  %0 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw.addr, align 8, !dbg !2884
  %dev = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %0, i32 0, i32 0, !dbg !2885
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #8, !dbg !2886
  ret i8* %call, !dbg !2887
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !2888 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2891, metadata !DIExpression()), !dbg !2892
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2893
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !2894
  %1 = load i8*, i8** %driver_data, align 8, !dbg !2894
  ret i8* %1, !dbg !2895
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_roles_init() #3 section ".init.text" !dbg !2117 {
entry:
  %tmp = alloca %struct.class*, align 8
  %call = call %struct.class* @__class_create(%struct.module* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), %struct.lock_class_key* @usb_roles_init.__key) #8, !dbg !2896
  store %struct.class* %call, %struct.class** %tmp, align 8, !dbg !2896
  %0 = load %struct.class*, %struct.class** %tmp, align 8, !dbg !2896
  store %struct.class* %0, %struct.class** @role_class, align 8, !dbg !2898
  %1 = load %struct.class*, %struct.class** @role_class, align 8, !dbg !2899
  %2 = bitcast %struct.class* %1 to i8*, !dbg !2899
  %call1 = call i32 @PTR_ERR_OR_ZERO(i8* %2) #8, !dbg !2900
  ret i32 %call1, !dbg !2901
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @usb_roles_exit() #3 section ".exit.text" !dbg !2902 {
entry:
  %0 = load %struct.class*, %struct.class** @role_class, align 8, !dbg !2903
  call void @class_destroy(%struct.class* %0) #8, !dbg !2904
  ret void, !dbg !2905
}

; Function Attrs: noredzone
declare dso_local void @class_destroy(%struct.class*) #2

; Function Attrs: noredzone
declare dso_local %struct.fwnode_handle* @fwnode_get_parent(%struct.fwnode_handle*) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @fwnode_property_present(%struct.fwnode_handle*, i8*) #2

; Function Attrs: noredzone
declare dso_local %struct.device* @class_find_device(%struct.class*, %struct.device*, i8*, i32 (%struct.device*, i8*)*) #2

; Function Attrs: noredzone
declare dso_local i32 @device_match_fwnode(%struct.device*, i8*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !2906 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2910, metadata !DIExpression()), !dbg !2915
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2917, metadata !DIExpression()), !dbg !2918
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2919, metadata !DIExpression()), !dbg !2920
  %0 = load i64, i64* %size.addr, align 8, !dbg !2921
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2923
  br i1 %1, label %if.then, label %if.end447, !dbg !2924

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !2925
  %tobool = icmp ne i64 %2, 0, !dbg !2925
  br i1 %tobool, label %if.end, label %if.then1, !dbg !2928

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !2929
  br label %return, !dbg !2929

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !2930
  %cmp = icmp ult i64 %3, 4096, !dbg !2932
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2933

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2934
  br label %return, !dbg !2934

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub = sub i64 %4, 1, !dbg !2935
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !2935
  br i1 %5, label %cond.true, label %cond.false442, !dbg !2935

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub4 = sub i64 %6, 1, !dbg !2935
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !2935
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !2935

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub6 = sub i64 %8, 1, !dbg !2935
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !2935
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !2935

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !2935

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub9 = sub i64 %9, 1, !dbg !2935
  %and = and i64 %sub9, -9223372036854775808, !dbg !2935
  %tobool10 = icmp ne i64 %and, 0, !dbg !2935
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !2935

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !2935

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub13 = sub i64 %10, 1, !dbg !2935
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !2935
  %tobool15 = icmp ne i64 %and14, 0, !dbg !2935
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !2935

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !2935

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub18 = sub i64 %11, 1, !dbg !2935
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !2935
  %tobool20 = icmp ne i64 %and19, 0, !dbg !2935
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !2935

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !2935

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub23 = sub i64 %12, 1, !dbg !2935
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !2935
  %tobool25 = icmp ne i64 %and24, 0, !dbg !2935
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !2935

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !2935

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub28 = sub i64 %13, 1, !dbg !2935
  %and29 = and i64 %sub28, 576460752303423488, !dbg !2935
  %tobool30 = icmp ne i64 %and29, 0, !dbg !2935
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !2935

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !2935

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub33 = sub i64 %14, 1, !dbg !2935
  %and34 = and i64 %sub33, 288230376151711744, !dbg !2935
  %tobool35 = icmp ne i64 %and34, 0, !dbg !2935
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !2935

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !2935

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub38 = sub i64 %15, 1, !dbg !2935
  %and39 = and i64 %sub38, 144115188075855872, !dbg !2935
  %tobool40 = icmp ne i64 %and39, 0, !dbg !2935
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !2935

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !2935

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub43 = sub i64 %16, 1, !dbg !2935
  %and44 = and i64 %sub43, 72057594037927936, !dbg !2935
  %tobool45 = icmp ne i64 %and44, 0, !dbg !2935
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !2935

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !2935

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub48 = sub i64 %17, 1, !dbg !2935
  %and49 = and i64 %sub48, 36028797018963968, !dbg !2935
  %tobool50 = icmp ne i64 %and49, 0, !dbg !2935
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !2935

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !2935

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub53 = sub i64 %18, 1, !dbg !2935
  %and54 = and i64 %sub53, 18014398509481984, !dbg !2935
  %tobool55 = icmp ne i64 %and54, 0, !dbg !2935
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !2935

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !2935

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub58 = sub i64 %19, 1, !dbg !2935
  %and59 = and i64 %sub58, 9007199254740992, !dbg !2935
  %tobool60 = icmp ne i64 %and59, 0, !dbg !2935
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !2935

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !2935

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub63 = sub i64 %20, 1, !dbg !2935
  %and64 = and i64 %sub63, 4503599627370496, !dbg !2935
  %tobool65 = icmp ne i64 %and64, 0, !dbg !2935
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !2935

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !2935

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub68 = sub i64 %21, 1, !dbg !2935
  %and69 = and i64 %sub68, 2251799813685248, !dbg !2935
  %tobool70 = icmp ne i64 %and69, 0, !dbg !2935
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !2935

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !2935

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub73 = sub i64 %22, 1, !dbg !2935
  %and74 = and i64 %sub73, 1125899906842624, !dbg !2935
  %tobool75 = icmp ne i64 %and74, 0, !dbg !2935
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !2935

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !2935

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub78 = sub i64 %23, 1, !dbg !2935
  %and79 = and i64 %sub78, 562949953421312, !dbg !2935
  %tobool80 = icmp ne i64 %and79, 0, !dbg !2935
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !2935

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !2935

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub83 = sub i64 %24, 1, !dbg !2935
  %and84 = and i64 %sub83, 281474976710656, !dbg !2935
  %tobool85 = icmp ne i64 %and84, 0, !dbg !2935
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !2935

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !2935

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub88 = sub i64 %25, 1, !dbg !2935
  %and89 = and i64 %sub88, 140737488355328, !dbg !2935
  %tobool90 = icmp ne i64 %and89, 0, !dbg !2935
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !2935

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !2935

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub93 = sub i64 %26, 1, !dbg !2935
  %and94 = and i64 %sub93, 70368744177664, !dbg !2935
  %tobool95 = icmp ne i64 %and94, 0, !dbg !2935
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !2935

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !2935

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub98 = sub i64 %27, 1, !dbg !2935
  %and99 = and i64 %sub98, 35184372088832, !dbg !2935
  %tobool100 = icmp ne i64 %and99, 0, !dbg !2935
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !2935

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !2935

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub103 = sub i64 %28, 1, !dbg !2935
  %and104 = and i64 %sub103, 17592186044416, !dbg !2935
  %tobool105 = icmp ne i64 %and104, 0, !dbg !2935
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !2935

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !2935

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub108 = sub i64 %29, 1, !dbg !2935
  %and109 = and i64 %sub108, 8796093022208, !dbg !2935
  %tobool110 = icmp ne i64 %and109, 0, !dbg !2935
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !2935

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !2935

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub113 = sub i64 %30, 1, !dbg !2935
  %and114 = and i64 %sub113, 4398046511104, !dbg !2935
  %tobool115 = icmp ne i64 %and114, 0, !dbg !2935
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !2935

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !2935

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub118 = sub i64 %31, 1, !dbg !2935
  %and119 = and i64 %sub118, 2199023255552, !dbg !2935
  %tobool120 = icmp ne i64 %and119, 0, !dbg !2935
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !2935

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !2935

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub123 = sub i64 %32, 1, !dbg !2935
  %and124 = and i64 %sub123, 1099511627776, !dbg !2935
  %tobool125 = icmp ne i64 %and124, 0, !dbg !2935
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !2935

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !2935

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub128 = sub i64 %33, 1, !dbg !2935
  %and129 = and i64 %sub128, 549755813888, !dbg !2935
  %tobool130 = icmp ne i64 %and129, 0, !dbg !2935
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !2935

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !2935

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub133 = sub i64 %34, 1, !dbg !2935
  %and134 = and i64 %sub133, 274877906944, !dbg !2935
  %tobool135 = icmp ne i64 %and134, 0, !dbg !2935
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !2935

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !2935

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub138 = sub i64 %35, 1, !dbg !2935
  %and139 = and i64 %sub138, 137438953472, !dbg !2935
  %tobool140 = icmp ne i64 %and139, 0, !dbg !2935
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !2935

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !2935

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub143 = sub i64 %36, 1, !dbg !2935
  %and144 = and i64 %sub143, 68719476736, !dbg !2935
  %tobool145 = icmp ne i64 %and144, 0, !dbg !2935
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !2935

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !2935

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub148 = sub i64 %37, 1, !dbg !2935
  %and149 = and i64 %sub148, 34359738368, !dbg !2935
  %tobool150 = icmp ne i64 %and149, 0, !dbg !2935
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !2935

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !2935

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub153 = sub i64 %38, 1, !dbg !2935
  %and154 = and i64 %sub153, 17179869184, !dbg !2935
  %tobool155 = icmp ne i64 %and154, 0, !dbg !2935
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !2935

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !2935

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub158 = sub i64 %39, 1, !dbg !2935
  %and159 = and i64 %sub158, 8589934592, !dbg !2935
  %tobool160 = icmp ne i64 %and159, 0, !dbg !2935
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !2935

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !2935

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub163 = sub i64 %40, 1, !dbg !2935
  %and164 = and i64 %sub163, 4294967296, !dbg !2935
  %tobool165 = icmp ne i64 %and164, 0, !dbg !2935
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !2935

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !2935

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub168 = sub i64 %41, 1, !dbg !2935
  %and169 = and i64 %sub168, 2147483648, !dbg !2935
  %tobool170 = icmp ne i64 %and169, 0, !dbg !2935
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !2935

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !2935

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub173 = sub i64 %42, 1, !dbg !2935
  %and174 = and i64 %sub173, 1073741824, !dbg !2935
  %tobool175 = icmp ne i64 %and174, 0, !dbg !2935
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !2935

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !2935

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub178 = sub i64 %43, 1, !dbg !2935
  %and179 = and i64 %sub178, 536870912, !dbg !2935
  %tobool180 = icmp ne i64 %and179, 0, !dbg !2935
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !2935

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !2935

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub183 = sub i64 %44, 1, !dbg !2935
  %and184 = and i64 %sub183, 268435456, !dbg !2935
  %tobool185 = icmp ne i64 %and184, 0, !dbg !2935
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !2935

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !2935

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub188 = sub i64 %45, 1, !dbg !2935
  %and189 = and i64 %sub188, 134217728, !dbg !2935
  %tobool190 = icmp ne i64 %and189, 0, !dbg !2935
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !2935

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !2935

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub193 = sub i64 %46, 1, !dbg !2935
  %and194 = and i64 %sub193, 67108864, !dbg !2935
  %tobool195 = icmp ne i64 %and194, 0, !dbg !2935
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !2935

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !2935

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub198 = sub i64 %47, 1, !dbg !2935
  %and199 = and i64 %sub198, 33554432, !dbg !2935
  %tobool200 = icmp ne i64 %and199, 0, !dbg !2935
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !2935

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !2935

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub203 = sub i64 %48, 1, !dbg !2935
  %and204 = and i64 %sub203, 16777216, !dbg !2935
  %tobool205 = icmp ne i64 %and204, 0, !dbg !2935
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !2935

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !2935

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub208 = sub i64 %49, 1, !dbg !2935
  %and209 = and i64 %sub208, 8388608, !dbg !2935
  %tobool210 = icmp ne i64 %and209, 0, !dbg !2935
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !2935

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !2935

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub213 = sub i64 %50, 1, !dbg !2935
  %and214 = and i64 %sub213, 4194304, !dbg !2935
  %tobool215 = icmp ne i64 %and214, 0, !dbg !2935
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !2935

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !2935

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub218 = sub i64 %51, 1, !dbg !2935
  %and219 = and i64 %sub218, 2097152, !dbg !2935
  %tobool220 = icmp ne i64 %and219, 0, !dbg !2935
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !2935

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !2935

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub223 = sub i64 %52, 1, !dbg !2935
  %and224 = and i64 %sub223, 1048576, !dbg !2935
  %tobool225 = icmp ne i64 %and224, 0, !dbg !2935
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !2935

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !2935

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub228 = sub i64 %53, 1, !dbg !2935
  %and229 = and i64 %sub228, 524288, !dbg !2935
  %tobool230 = icmp ne i64 %and229, 0, !dbg !2935
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !2935

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !2935

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub233 = sub i64 %54, 1, !dbg !2935
  %and234 = and i64 %sub233, 262144, !dbg !2935
  %tobool235 = icmp ne i64 %and234, 0, !dbg !2935
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !2935

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !2935

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub238 = sub i64 %55, 1, !dbg !2935
  %and239 = and i64 %sub238, 131072, !dbg !2935
  %tobool240 = icmp ne i64 %and239, 0, !dbg !2935
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !2935

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !2935

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub243 = sub i64 %56, 1, !dbg !2935
  %and244 = and i64 %sub243, 65536, !dbg !2935
  %tobool245 = icmp ne i64 %and244, 0, !dbg !2935
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !2935

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !2935

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub248 = sub i64 %57, 1, !dbg !2935
  %and249 = and i64 %sub248, 32768, !dbg !2935
  %tobool250 = icmp ne i64 %and249, 0, !dbg !2935
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !2935

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !2935

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub253 = sub i64 %58, 1, !dbg !2935
  %and254 = and i64 %sub253, 16384, !dbg !2935
  %tobool255 = icmp ne i64 %and254, 0, !dbg !2935
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !2935

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !2935

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub258 = sub i64 %59, 1, !dbg !2935
  %and259 = and i64 %sub258, 8192, !dbg !2935
  %tobool260 = icmp ne i64 %and259, 0, !dbg !2935
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !2935

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !2935

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub263 = sub i64 %60, 1, !dbg !2935
  %and264 = and i64 %sub263, 4096, !dbg !2935
  %tobool265 = icmp ne i64 %and264, 0, !dbg !2935
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !2935

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !2935

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub268 = sub i64 %61, 1, !dbg !2935
  %and269 = and i64 %sub268, 2048, !dbg !2935
  %tobool270 = icmp ne i64 %and269, 0, !dbg !2935
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !2935

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !2935

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub273 = sub i64 %62, 1, !dbg !2935
  %and274 = and i64 %sub273, 1024, !dbg !2935
  %tobool275 = icmp ne i64 %and274, 0, !dbg !2935
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !2935

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !2935

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub278 = sub i64 %63, 1, !dbg !2935
  %and279 = and i64 %sub278, 512, !dbg !2935
  %tobool280 = icmp ne i64 %and279, 0, !dbg !2935
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !2935

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !2935

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub283 = sub i64 %64, 1, !dbg !2935
  %and284 = and i64 %sub283, 256, !dbg !2935
  %tobool285 = icmp ne i64 %and284, 0, !dbg !2935
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !2935

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !2935

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub288 = sub i64 %65, 1, !dbg !2935
  %and289 = and i64 %sub288, 128, !dbg !2935
  %tobool290 = icmp ne i64 %and289, 0, !dbg !2935
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !2935

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !2935

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub293 = sub i64 %66, 1, !dbg !2935
  %and294 = and i64 %sub293, 64, !dbg !2935
  %tobool295 = icmp ne i64 %and294, 0, !dbg !2935
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !2935

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !2935

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub298 = sub i64 %67, 1, !dbg !2935
  %and299 = and i64 %sub298, 32, !dbg !2935
  %tobool300 = icmp ne i64 %and299, 0, !dbg !2935
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !2935

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !2935

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub303 = sub i64 %68, 1, !dbg !2935
  %and304 = and i64 %sub303, 16, !dbg !2935
  %tobool305 = icmp ne i64 %and304, 0, !dbg !2935
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !2935

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !2935

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub308 = sub i64 %69, 1, !dbg !2935
  %and309 = and i64 %sub308, 8, !dbg !2935
  %tobool310 = icmp ne i64 %and309, 0, !dbg !2935
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !2935

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !2935

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub313 = sub i64 %70, 1, !dbg !2935
  %and314 = and i64 %sub313, 4, !dbg !2935
  %tobool315 = icmp ne i64 %and314, 0, !dbg !2935
  %71 = zext i1 %tobool315 to i64, !dbg !2935
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !2935
  br label %cond.end, !dbg !2935

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !2935
  br label %cond.end317, !dbg !2935

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !2935
  br label %cond.end319, !dbg !2935

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !2935
  br label %cond.end321, !dbg !2935

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !2935
  br label %cond.end323, !dbg !2935

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !2935
  br label %cond.end325, !dbg !2935

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !2935
  br label %cond.end327, !dbg !2935

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !2935
  br label %cond.end329, !dbg !2935

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !2935
  br label %cond.end331, !dbg !2935

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !2935
  br label %cond.end333, !dbg !2935

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !2935
  br label %cond.end335, !dbg !2935

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !2935
  br label %cond.end337, !dbg !2935

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !2935
  br label %cond.end339, !dbg !2935

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !2935
  br label %cond.end341, !dbg !2935

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !2935
  br label %cond.end343, !dbg !2935

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !2935
  br label %cond.end345, !dbg !2935

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !2935
  br label %cond.end347, !dbg !2935

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !2935
  br label %cond.end349, !dbg !2935

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !2935
  br label %cond.end351, !dbg !2935

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !2935
  br label %cond.end353, !dbg !2935

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !2935
  br label %cond.end355, !dbg !2935

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !2935
  br label %cond.end357, !dbg !2935

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !2935
  br label %cond.end359, !dbg !2935

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !2935
  br label %cond.end361, !dbg !2935

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !2935
  br label %cond.end363, !dbg !2935

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !2935
  br label %cond.end365, !dbg !2935

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !2935
  br label %cond.end367, !dbg !2935

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !2935
  br label %cond.end369, !dbg !2935

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !2935
  br label %cond.end371, !dbg !2935

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !2935
  br label %cond.end373, !dbg !2935

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !2935
  br label %cond.end375, !dbg !2935

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !2935
  br label %cond.end377, !dbg !2935

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !2935
  br label %cond.end379, !dbg !2935

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !2935
  br label %cond.end381, !dbg !2935

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !2935
  br label %cond.end383, !dbg !2935

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !2935
  br label %cond.end385, !dbg !2935

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !2935
  br label %cond.end387, !dbg !2935

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !2935
  br label %cond.end389, !dbg !2935

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !2935
  br label %cond.end391, !dbg !2935

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !2935
  br label %cond.end393, !dbg !2935

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !2935
  br label %cond.end395, !dbg !2935

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !2935
  br label %cond.end397, !dbg !2935

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !2935
  br label %cond.end399, !dbg !2935

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !2935
  br label %cond.end401, !dbg !2935

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !2935
  br label %cond.end403, !dbg !2935

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !2935
  br label %cond.end405, !dbg !2935

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !2935
  br label %cond.end407, !dbg !2935

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !2935
  br label %cond.end409, !dbg !2935

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !2935
  br label %cond.end411, !dbg !2935

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !2935
  br label %cond.end413, !dbg !2935

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !2935
  br label %cond.end415, !dbg !2935

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !2935
  br label %cond.end417, !dbg !2935

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !2935
  br label %cond.end419, !dbg !2935

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !2935
  br label %cond.end421, !dbg !2935

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !2935
  br label %cond.end423, !dbg !2935

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !2935
  br label %cond.end425, !dbg !2935

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !2935
  br label %cond.end427, !dbg !2935

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !2935
  br label %cond.end429, !dbg !2935

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !2935
  br label %cond.end431, !dbg !2935

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !2935
  br label %cond.end433, !dbg !2935

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !2935
  br label %cond.end435, !dbg !2935

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !2935
  br label %cond.end437, !dbg !2935

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !2935
  br label %cond.end440, !dbg !2935

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !2935

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !2935
  br label %cond.end444, !dbg !2935

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !2935
  %sub443 = sub i64 %72, 1, !dbg !2935
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !2935
  br label %cond.end444, !dbg !2935

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !2935
  %sub446 = sub i32 %cond445, 12, !dbg !2936
  %add = add i32 %sub446, 1, !dbg !2937
  store i32 %add, i32* %retval, align 4, !dbg !2938
  br label %return, !dbg !2938

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !2939
  %dec = add i64 %73, -1, !dbg !2939
  store i64 %dec, i64* %size.addr, align 8, !dbg !2939
  %74 = load i64, i64* %size.addr, align 8, !dbg !2940
  %shr = lshr i64 %74, 12, !dbg !2940
  store i64 %shr, i64* %size.addr, align 8, !dbg !2940
  %75 = load i64, i64* %size.addr, align 8, !dbg !2941
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2918
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !2942
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !2943
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !2942, !srcloc !2944
  store i32 %78, i32* %bitpos.i, align 4, !dbg !2942
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !2945
  %add.i = add i32 %79, 1, !dbg !2946
  store i32 %add.i, i32* %retval, align 4, !dbg !2947
  br label %return, !dbg !2947

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !2948
  ret i32 %80, !dbg !2948
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !2949 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2910, metadata !DIExpression()), !dbg !2953
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2917, metadata !DIExpression()), !dbg !2955
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2956, metadata !DIExpression()), !dbg !2957
  %0 = load i64, i64* %n.addr, align 8, !dbg !2958
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2955
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !2959
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !2960
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !2959, !srcloc !2944
  store i32 %3, i32* %bitpos.i, align 4, !dbg !2959
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !2961
  %add.i = add i32 %4, 1, !dbg !2962
  %sub = sub i32 %add.i, 1, !dbg !2963
  ret i32 %sub, !dbg !2964
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !2965 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !2969, metadata !DIExpression()), !dbg !2970
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2971, metadata !DIExpression()), !dbg !2972
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2973, metadata !DIExpression()), !dbg !2974
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2975, metadata !DIExpression()), !dbg !2976
  %0 = load i8*, i8** %object.addr, align 8, !dbg !2977
  ret i8* %0, !dbg !2978
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_role_switch_uevent(%struct.device* %dev, %struct.kobj_uevent_env* %env) #0 !dbg !2979 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %env.addr = alloca %struct.kobj_uevent_env*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2980, metadata !DIExpression()), !dbg !2981
  store %struct.kobj_uevent_env* %env, %struct.kobj_uevent_env** %env.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_uevent_env** %env.addr, metadata !2982, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2984, metadata !DIExpression()), !dbg !2985
  %0 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !2986
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2987
  %call = call i8* @dev_name(%struct.device* %1) #8, !dbg !2988
  %call1 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %call) #8, !dbg !2989
  store i32 %call1, i32* %ret, align 4, !dbg !2990
  %2 = load i32, i32* %ret, align 4, !dbg !2991
  %tobool = icmp ne i32 %2, 0, !dbg !2991
  br i1 %tobool, label %if.then, label %if.end, !dbg !2993

if.then:                                          ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2994
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0)) #13, !dbg !2994
  br label %if.end, !dbg !2994

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %ret, align 4, !dbg !2995
  ret i32 %4, !dbg !2996
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_role_switch_release(%struct.device* %dev) #0 !dbg !2997 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %sw = alloca %struct.usb_role_switch*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_role_switch*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2998, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.declare(metadata %struct.usb_role_switch** %sw, metadata !3000, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3002, metadata !DIExpression()), !dbg !3004
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3004
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3004
  store i8* %1, i8** %__mptr, align 8, !dbg !3004
  br label %do.body, !dbg !3004

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3005

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3004
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !3004
  %3 = bitcast i8* %add.ptr to %struct.usb_role_switch*, !dbg !3004
  store %struct.usb_role_switch* %3, %struct.usb_role_switch** %tmp, align 8, !dbg !3005
  %4 = load %struct.usb_role_switch*, %struct.usb_role_switch** %tmp, align 8, !dbg !3004
  store %struct.usb_role_switch* %4, %struct.usb_role_switch** %sw, align 8, !dbg !3001
  %5 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !3007
  %6 = bitcast %struct.usb_role_switch* %5 to i8*, !dbg !3007
  call void @kfree(i8* %6) #8, !dbg !3008
  ret void, !dbg !3009
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @usb_role_switch_is_visible(%struct.kobject* %kobj, %struct.attribute* %attr, i32 %n) #0 !dbg !3010 {
entry:
  %retval = alloca i16, align 2
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  %n.addr = alloca i32, align 4
  %dev = alloca %struct.device*, align 8
  %sw = alloca %struct.usb_role_switch*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_role_switch*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3011, metadata !DIExpression()), !dbg !3012
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !3013, metadata !DIExpression()), !dbg !3014
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !3015, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !3017, metadata !DIExpression()), !dbg !3018
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !3019
  %call = call %struct.device* @kobj_to_dev(%struct.kobject* %0) #8, !dbg !3020
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !3018
  call void @llvm.dbg.declare(metadata %struct.usb_role_switch** %sw, metadata !3021, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3023, metadata !DIExpression()), !dbg !3025
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3025
  %2 = bitcast %struct.device* %1 to i8*, !dbg !3025
  store i8* %2, i8** %__mptr, align 8, !dbg !3025
  br label %do.body, !dbg !3025

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3026

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3025
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !3025
  %4 = bitcast i8* %add.ptr to %struct.usb_role_switch*, !dbg !3025
  store %struct.usb_role_switch* %4, %struct.usb_role_switch** %tmp, align 8, !dbg !3026
  %5 = load %struct.usb_role_switch*, %struct.usb_role_switch** %tmp, align 8, !dbg !3025
  store %struct.usb_role_switch* %5, %struct.usb_role_switch** %sw, align 8, !dbg !3022
  %6 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !3028
  %allow_userspace_control = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %6, i32 0, i32 8, !dbg !3030
  %7 = load i8, i8* %allow_userspace_control, align 8, !dbg !3030
  %tobool = trunc i8 %7 to i1, !dbg !3030
  br i1 %tobool, label %if.then, label %if.end, !dbg !3031

if.then:                                          ; preds = %do.end
  %8 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !3032
  %mode = getelementptr inbounds %struct.attribute, %struct.attribute* %8, i32 0, i32 1, !dbg !3033
  %9 = load i16, i16* %mode, align 8, !dbg !3033
  store i16 %9, i16* %retval, align 2, !dbg !3034
  br label %return, !dbg !3034

if.end:                                           ; preds = %do.end
  store i16 0, i16* %retval, align 2, !dbg !3035
  br label %return, !dbg !3035

return:                                           ; preds = %if.end, %if.then
  %10 = load i16, i16* %retval, align 2, !dbg !3036
  ret i16 %10, !dbg !3036
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device* @kobj_to_dev(%struct.kobject* %kobj) #0 !dbg !3037 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.device*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3040, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3042, metadata !DIExpression()), !dbg !3044
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !3044
  %1 = bitcast %struct.kobject* %0 to i8*, !dbg !3044
  store i8* %1, i8** %__mptr, align 8, !dbg !3044
  br label %do.body, !dbg !3044

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3045

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3044
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !3044
  %3 = bitcast i8* %add.ptr to %struct.device*, !dbg !3044
  store %struct.device* %3, %struct.device** %tmp, align 8, !dbg !3045
  %4 = load %struct.device*, %struct.device** %tmp, align 8, !dbg !3044
  ret %struct.device* %4, !dbg !3047
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @role_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3048 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %sw = alloca %struct.usb_role_switch*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_role_switch*, align 8
  %role = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3049, metadata !DIExpression()), !dbg !3050
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3051, metadata !DIExpression()), !dbg !3052
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3053, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.declare(metadata %struct.usb_role_switch** %sw, metadata !3055, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3057, metadata !DIExpression()), !dbg !3059
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3059
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3059
  store i8* %1, i8** %__mptr, align 8, !dbg !3059
  br label %do.body, !dbg !3059

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3060

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3059
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !3059
  %3 = bitcast i8* %add.ptr to %struct.usb_role_switch*, !dbg !3059
  store %struct.usb_role_switch* %3, %struct.usb_role_switch** %tmp, align 8, !dbg !3060
  %4 = load %struct.usb_role_switch*, %struct.usb_role_switch** %tmp, align 8, !dbg !3059
  store %struct.usb_role_switch* %4, %struct.usb_role_switch** %sw, align 8, !dbg !3056
  call void @llvm.dbg.declare(metadata i32* %role, metadata !3062, metadata !DIExpression()), !dbg !3063
  %5 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !3064
  %call = call i32 @usb_role_switch_get_role(%struct.usb_role_switch* %5) #8, !dbg !3065
  store i32 %call, i32* %role, align 4, !dbg !3063
  %6 = load i8*, i8** %buf.addr, align 8, !dbg !3066
  %7 = load i32, i32* %role, align 4, !dbg !3067
  %idxprom = zext i32 %7 to i64, !dbg !3068
  %arrayidx = getelementptr [3 x i8*], [3 x i8*]* @usb_roles, i64 0, i64 %idxprom, !dbg !3068
  %8 = load i8*, i8** %arrayidx, align 8, !dbg !3068
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %8) #8, !dbg !3069
  %conv = sext i32 %call1 to i64, !dbg !3069
  ret i64 %conv, !dbg !3070
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @role_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %size) #0 !dbg !3071 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %sw = alloca %struct.usb_role_switch*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_role_switch*, align 8
  %ret = alloca i32, align 4
  %res = alloca i8, align 1
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3072, metadata !DIExpression()), !dbg !3073
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3074, metadata !DIExpression()), !dbg !3075
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3076, metadata !DIExpression()), !dbg !3077
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3078, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.declare(metadata %struct.usb_role_switch** %sw, metadata !3080, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3082, metadata !DIExpression()), !dbg !3084
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3084
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3084
  store i8* %1, i8** %__mptr, align 8, !dbg !3084
  br label %do.body, !dbg !3084

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3085

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3084
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !3084
  %3 = bitcast i8* %add.ptr to %struct.usb_role_switch*, !dbg !3084
  store %struct.usb_role_switch* %3, %struct.usb_role_switch** %tmp, align 8, !dbg !3085
  %4 = load %struct.usb_role_switch*, %struct.usb_role_switch** %tmp, align 8, !dbg !3084
  store %struct.usb_role_switch* %4, %struct.usb_role_switch** %sw, align 8, !dbg !3081
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3087, metadata !DIExpression()), !dbg !3088
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !3089
  %call = call i32 @__sysfs_match_string(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @usb_roles, i64 0, i64 0), i64 3, i8* %5) #8, !dbg !3089
  store i32 %call, i32* %ret, align 4, !dbg !3090
  %6 = load i32, i32* %ret, align 4, !dbg !3091
  %cmp = icmp slt i32 %6, 0, !dbg !3093
  br i1 %cmp, label %if.then, label %if.end4, !dbg !3094

if.then:                                          ; preds = %do.end
  call void @llvm.dbg.declare(metadata i8* %res, metadata !3095, metadata !DIExpression()), !dbg !3097
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !3098
  %call1 = call i32 @kstrtobool(i8* %7, i8* %res) #8, !dbg !3099
  store i32 %call1, i32* %ret, align 4, !dbg !3100
  %8 = load i32, i32* %ret, align 4, !dbg !3101
  %tobool = icmp ne i32 %8, 0, !dbg !3101
  br i1 %tobool, label %if.then3, label %lor.lhs.false, !dbg !3103

lor.lhs.false:                                    ; preds = %if.then
  %9 = load i8, i8* %res, align 1, !dbg !3104
  %tobool2 = trunc i8 %9 to i1, !dbg !3104
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !3105

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  store i64 -22, i64* %retval, align 8, !dbg !3106
  br label %return, !dbg !3106

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end4, !dbg !3107

if.end4:                                          ; preds = %if.end, %do.end
  %10 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw, align 8, !dbg !3108
  %11 = load i32, i32* %ret, align 4, !dbg !3109
  %call5 = call i32 @usb_role_switch_set_role(%struct.usb_role_switch* %10, i32 %11) #8, !dbg !3110
  store i32 %call5, i32* %ret, align 4, !dbg !3111
  %12 = load i32, i32* %ret, align 4, !dbg !3112
  %tobool6 = icmp ne i32 %12, 0, !dbg !3112
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !3114

if.then7:                                         ; preds = %if.end4
  %13 = load i32, i32* %ret, align 4, !dbg !3115
  %conv = sext i32 %13 to i64, !dbg !3115
  store i64 %conv, i64* %retval, align 8, !dbg !3116
  br label %return, !dbg !3116

if.end8:                                          ; preds = %if.end4
  %14 = load i64, i64* %size.addr, align 8, !dbg !3117
  store i64 %14, i64* %retval, align 8, !dbg !3118
  br label %return, !dbg !3118

return:                                           ; preds = %if.end8, %if.then7, %if.then3
  %15 = load i64, i64* %retval, align 8, !dbg !3119
  ret i64 %15, !dbg !3119
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @__sysfs_match_string(i8**, i64, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @kstrtobool(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, ...) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #7

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !3120 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3125, metadata !DIExpression()), !dbg !3126
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !3127
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !3128
  %1 = load i8*, i8** %name, align 8, !dbg !3128
  ret i8* %1, !dbg !3129
}

; Function Attrs: noredzone
declare dso_local %struct.class* @__class_create(%struct.module*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @PTR_ERR_OR_ZERO(i8* %ptr) #0 !dbg !3130 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3133, metadata !DIExpression()), !dbg !3134
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3135
  %call = call zeroext i1 @IS_ERR(i8* %0) #8, !dbg !3137
  br i1 %call, label %if.then, label %if.else, !dbg !3138

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !3139
  %call1 = call i64 @PTR_ERR(i8* %1) #8, !dbg !3140
  %conv = trunc i64 %call1 to i32, !dbg !3140
  store i32 %conv, i32* %retval, align 4, !dbg !3141
  br label %return, !dbg !3141

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3142
  br label %return, !dbg !3142

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !3143
  ret i32 %2, !dbg !3143
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !3144 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3145, metadata !DIExpression()), !dbg !3146
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3147
  %1 = ptrtoint i8* %0 to i64, !dbg !3147
  %2 = inttoptr i64 %1 to i8*, !dbg !3147
  %3 = ptrtoint i8* %2 to i64, !dbg !3147
  %cmp = icmp uge i64 %3, -4095, !dbg !3147
  %lnot = xor i1 %cmp, true, !dbg !3147
  %lnot1 = xor i1 %lnot, true, !dbg !3147
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3147
  %conv = sext i32 %lnot.ext to i64, !dbg !3147
  %tobool = icmp ne i64 %conv, 0, !dbg !3147
  ret i1 %tobool, !dbg !3148
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !3149 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3152, metadata !DIExpression()), !dbg !3153
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3154
  %1 = ptrtoint i8* %0 to i64, !dbg !3155
  ret i64 %1, !dbg !3156
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind readonly }
attributes #13 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2120, !2121, !2122, !2123}
!llvm.ident = !{!2124}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "role_class", scope: !2, file: !3, line: 17, type: !1975, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !79, globals: !2034, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/roles/class.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !56, !67, !72}
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_role", file: !51, line: 10, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/usb/role.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "USB_ROLE_NONE", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "USB_ROLE_HOST", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "USB_ROLE_DEVICE", value: 2, isUnsigned: true)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !57, line: 53, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66}
!59 = !DIEnumerator(name: "KOBJ_ADD", value: 0, isUnsigned: true)
!60 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1, isUnsigned: true)
!61 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2, isUnsigned: true)
!62 = !DIEnumerator(name: "KOBJ_MOVE", value: 3, isUnsigned: true)
!63 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4, isUnsigned: true)
!64 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5, isUnsigned: true)
!65 = !DIEnumerator(name: "KOBJ_BIND", value: 6, isUnsigned: true)
!66 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7, isUnsigned: true)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !68, line: 10, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!69 = !{!70, !71}
!70 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!71 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !73, line: 305, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75, !76, !77, !78}
!75 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!76 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!78 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!79 = !{!80, !81, !1454, !201, !1583, !135, !1660, !186}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_role_switch", file: !3, line: 19, size: 6208, elements: !83)
!83 = !{!84, !2018, !2019, !2020, !2021, !2022, !2023, !2028, !2033}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !82, file: !3, line: 20, baseType: !85, size: 5568)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !86)
!86 = !{!87, !1582, !1584, !1587, !1588, !1639, !1717, !1718, !1719, !1720, !1721, !1730, !1835, !1848, !1851, !1852, !1856, !1858, !1859, !1860, !1864, !1870, !1871, !1874, !1878, !1968, !1971, !1972, !1973, !1974, !2006, !2007, !2008, !2011, !2014, !2015, !2016, !2017}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !85, file: !30, line: 462, baseType: !88, size: 512)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !57, line: 64, size: 512, elements: !89)
!89 = !{!90, !94, !101, !103, !164, !1418, !1572, !1577, !1578, !1579, !1580, !1581}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !88, file: !57, line: 65, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !88, file: !57, line: 66, baseType: !95, size: 128, offset: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !96, line: 178, size: 128, elements: !97)
!96 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!97 = !{!98, !100}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !95, file: !96, line: 179, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !95, file: !96, line: 179, baseType: !99, size: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !88, file: !57, line: 67, baseType: !102, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !88, file: !57, line: 68, baseType: !104, size: 64, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !57, line: 192, size: 704, elements: !106)
!106 = !{!107, !108, !124, !125}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !105, file: !57, line: 193, baseType: !95, size: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !105, file: !57, line: 194, baseType: !109, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !110, line: 83, baseType: !111)
!110 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !110, line: 71, elements: !112)
!112 = !{!113}
!113 = !DIDerivedType(tag: DW_TAG_member, scope: !111, file: !110, line: 72, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !111, file: !110, line: 72, elements: !115)
!115 = !{!116}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !114, file: !110, line: 73, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !110, line: 20, elements: !118)
!118 = !{!119}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !117, file: !110, line: 21, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !121, line: 25, baseType: !122)
!121 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !121, line: 25, elements: !123)
!123 = !{}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !105, file: !57, line: 195, baseType: !88, size: 512, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !105, file: !57, line: 196, baseType: !126, size: 64, offset: 640)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !57, line: 156, size: 192, elements: !129)
!129 = !{!130, !136, !141}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !128, file: !57, line: 157, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!135, !104, !102}
!135 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !128, file: !57, line: 158, baseType: !137, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!91, !104, !102}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !128, file: !57, line: 159, baseType: !142, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!135, !104, !102, !146}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !57, line: 148, size: 20736, elements: !148)
!148 = !{!149, !154, !158, !159, !163}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !147, file: !57, line: 149, baseType: !150, size: 192)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 192, elements: !152)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!152 = !{!153}
!153 = !DISubrange(count: 3)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !147, file: !57, line: 150, baseType: !155, size: 4096, offset: 192)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 4096, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !147, file: !57, line: 151, baseType: !135, size: 32, offset: 4288)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !147, file: !57, line: 152, baseType: !160, size: 16384, offset: 4320)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 16384, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 2048)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !147, file: !57, line: 153, baseType: !135, size: 32, offset: 20704)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !88, file: !57, line: 69, baseType: !165, size: 64, offset: 320)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !57, line: 138, size: 448, elements: !167)
!167 = !{!168, !172, !202, !204, !1364, !1397, !1401}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !166, file: !57, line: 139, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !102}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !166, file: !57, line: 140, baseType: !173, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !176, line: 230, size: 128, elements: !177)
!176 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!177 = !{!178, !194}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !175, file: !176, line: 231, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!182, !102, !187, !151}
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !96, line: 60, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !184, line: 73, baseType: !185)
!184 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !184, line: 15, baseType: !186)
!186 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !176, line: 30, size: 128, elements: !189)
!189 = !{!190, !191}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !188, file: !176, line: 31, baseType: !91, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !188, file: !176, line: 32, baseType: !192, size: 16, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !96, line: 19, baseType: !193)
!193 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !175, file: !176, line: 232, baseType: !195, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!182, !102, !187, !91, !198}
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !96, line: 55, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !184, line: 72, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !184, line: 16, baseType: !201)
!201 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !166, file: !57, line: 141, baseType: !203, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !166, file: !57, line: 142, baseType: !205, size: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !176, line: 84, size: 320, elements: !209)
!209 = !{!210, !211, !215, !1361, !1362}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !208, file: !176, line: 85, baseType: !91, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !208, file: !176, line: 86, baseType: !212, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!192, !102, !187, !135}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !208, file: !176, line: 88, baseType: !216, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!192, !102, !219, !135}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !176, line: 168, size: 448, elements: !221)
!221 = !{!222, !223, !224, !225, !235, !236}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !220, file: !176, line: 169, baseType: !188, size: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !220, file: !176, line: 170, baseType: !198, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !220, file: !176, line: 171, baseType: !80, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !220, file: !176, line: 172, baseType: !226, size: 64, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!182, !229, !102, !219, !151, !232, !198}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !231, line: 526, flags: DIFlagFwdDecl)
!231 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !96, line: 46, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !184, line: 88, baseType: !234)
!234 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !220, file: !176, line: 174, baseType: !226, size: 64, offset: 320)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !220, file: !176, line: 176, baseType: !237, size: 64, offset: 384)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!135, !229, !102, !219, !240}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !242, line: 305, size: 1472, elements: !243)
!242 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!243 = !{!244, !245, !246, !247, !248, !256, !257, !1335, !1341, !1342, !1347, !1348, !1351, !1355, !1356, !1357, !1358, !1359}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !241, file: !242, line: 308, baseType: !201, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !241, file: !242, line: 309, baseType: !201, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !241, file: !242, line: 313, baseType: !240, size: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !241, file: !242, line: 313, baseType: !240, size: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !241, file: !242, line: 315, baseType: !249, size: 192, align: 64, offset: 256)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !250, line: 24, size: 192, align: 64, elements: !251)
!250 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!251 = !{!252, !253, !255}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !249, file: !250, line: 25, baseType: !201, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !249, file: !250, line: 26, baseType: !254, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !249, file: !250, line: 27, baseType: !254, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !241, file: !242, line: 323, baseType: !201, size: 64, offset: 448)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !241, file: !242, line: 327, baseType: !258, size: 64, offset: 512)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !242, line: 388, size: 7296, elements: !260)
!260 = !{!261, !1331}
!261 = !DIDerivedType(tag: DW_TAG_member, scope: !259, file: !242, line: 389, baseType: !262, size: 7296)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !259, file: !242, line: 389, size: 7296, elements: !263)
!263 = !{!264, !265, !269, !275, !279, !280, !281, !282, !283, !291, !296, !297, !298, !299, !308, !309, !310, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !345, !353, !356, !404, !405, !1301, !1302, !1305, !1309, !1310, !1313, !1314, !1315, !1318, !1330}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !262, file: !242, line: 390, baseType: !240, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !262, file: !242, line: 391, baseType: !266, size: 64, offset: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !250, line: 31, size: 64, elements: !267)
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !266, file: !250, line: 32, baseType: !254, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !262, file: !242, line: 392, baseType: !270, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !271, line: 23, baseType: !272)
!271 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !273, line: 31, baseType: !274)
!273 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!274 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !262, file: !242, line: 394, baseType: !276, size: 64, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!201, !229, !201, !201, !201, !201}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !262, file: !242, line: 398, baseType: !201, size: 64, offset: 256)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !262, file: !242, line: 399, baseType: !201, size: 64, offset: 320)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !262, file: !242, line: 405, baseType: !201, size: 64, offset: 384)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !262, file: !242, line: 406, baseType: !201, size: 64, offset: 448)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !262, file: !242, line: 407, baseType: !284, size: 64, offset: 512)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !231, line: 286, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !231, line: 286, size: 64, elements: !287)
!287 = !{!288}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !286, file: !231, line: 286, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !290, line: 18, baseType: !201)
!290 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!291 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !262, file: !242, line: 416, baseType: !292, size: 32, offset: 576)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !96, line: 168, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !96, line: 166, size: 32, elements: !294)
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !293, file: !96, line: 167, baseType: !135, size: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !262, file: !242, line: 428, baseType: !292, size: 32, offset: 608)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !262, file: !242, line: 437, baseType: !292, size: 32, offset: 640)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !262, file: !242, line: 447, baseType: !292, size: 32, offset: 672)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !262, file: !242, line: 450, baseType: !300, size: 64, offset: 704)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !301, line: 13, baseType: !302)
!301 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !96, line: 175, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !96, line: 173, size: 64, elements: !304)
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !303, file: !96, line: 174, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !271, line: 22, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !273, line: 30, baseType: !234)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !262, file: !242, line: 452, baseType: !135, size: 32, offset: 768)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !262, file: !242, line: 454, baseType: !109, offset: 800)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !262, file: !242, line: 457, baseType: !311, size: 256, offset: 832)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !312, line: 35, size: 256, elements: !313)
!312 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!313 = !{!314, !315, !316, !318}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !311, file: !312, line: 36, baseType: !300, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !311, file: !312, line: 42, baseType: !300, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !311, file: !312, line: 46, baseType: !317, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !110, line: 29, baseType: !117)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !311, file: !312, line: 47, baseType: !95, size: 128, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !262, file: !242, line: 459, baseType: !95, size: 128, offset: 1088)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !262, file: !242, line: 466, baseType: !201, size: 64, offset: 1216)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !262, file: !242, line: 467, baseType: !201, size: 64, offset: 1280)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !262, file: !242, line: 469, baseType: !201, size: 64, offset: 1344)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !262, file: !242, line: 470, baseType: !201, size: 64, offset: 1408)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !262, file: !242, line: 471, baseType: !302, size: 64, offset: 1472)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !262, file: !242, line: 472, baseType: !201, size: 64, offset: 1536)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !262, file: !242, line: 473, baseType: !201, size: 64, offset: 1600)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !262, file: !242, line: 474, baseType: !201, size: 64, offset: 1664)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !262, file: !242, line: 475, baseType: !201, size: 64, offset: 1728)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !262, file: !242, line: 477, baseType: !109, offset: 1792)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !262, file: !242, line: 478, baseType: !201, size: 64, offset: 1792)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !262, file: !242, line: 478, baseType: !201, size: 64, offset: 1856)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !262, file: !242, line: 478, baseType: !201, size: 64, offset: 1920)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !262, file: !242, line: 478, baseType: !201, size: 64, offset: 1984)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !262, file: !242, line: 479, baseType: !201, size: 64, offset: 2048)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !262, file: !242, line: 479, baseType: !201, size: 64, offset: 2112)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !262, file: !242, line: 479, baseType: !201, size: 64, offset: 2176)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !262, file: !242, line: 480, baseType: !201, size: 64, offset: 2240)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !262, file: !242, line: 480, baseType: !201, size: 64, offset: 2304)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !262, file: !242, line: 480, baseType: !201, size: 64, offset: 2368)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !262, file: !242, line: 480, baseType: !201, size: 64, offset: 2432)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !262, file: !242, line: 482, baseType: !342, size: 2816, offset: 2496)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 2816, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 44)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !262, file: !242, line: 488, baseType: !346, size: 256, offset: 5312)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !347, line: 60, size: 256, elements: !348)
!347 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !346, file: !347, line: 61, baseType: !350, size: 256)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 256, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 4)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !262, file: !242, line: 490, baseType: !354, size: 64, offset: 5568)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !242, line: 490, flags: DIFlagFwdDecl)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !262, file: !242, line: 493, baseType: !357, size: 896, offset: 5632)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !358, line: 53, baseType: !359)
!358 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !358, line: 13, size: 896, elements: !360)
!360 = !{!361, !362, !363, !364, !367, !368, !375, !376, !396, !397, !400}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !359, file: !358, line: 18, baseType: !270, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !359, file: !358, line: 28, baseType: !302, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !359, file: !358, line: 31, baseType: !311, size: 256, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !359, file: !358, line: 32, baseType: !365, size: 64, offset: 384)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !358, line: 32, flags: DIFlagFwdDecl)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !359, file: !358, line: 37, baseType: !193, size: 16, offset: 448)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !359, file: !358, line: 40, baseType: !369, size: 192, offset: 512)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !370, line: 53, size: 192, elements: !371)
!370 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!371 = !{!372, !373, !374}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !369, file: !370, line: 54, baseType: !300, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !369, file: !370, line: 55, baseType: !109, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !369, file: !370, line: 59, baseType: !95, size: 128, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !359, file: !358, line: 41, baseType: !80, size: 64, offset: 704)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !359, file: !358, line: 42, baseType: !377, size: 64, offset: 768)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !380, line: 13, size: 896, elements: !381)
!380 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!381 = !{!382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !379, file: !380, line: 14, baseType: !80, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !379, file: !380, line: 15, baseType: !201, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !379, file: !380, line: 17, baseType: !201, size: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !379, file: !380, line: 17, baseType: !201, size: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !379, file: !380, line: 19, baseType: !186, size: 64, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !379, file: !380, line: 21, baseType: !186, size: 64, offset: 320)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !379, file: !380, line: 22, baseType: !186, size: 64, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !379, file: !380, line: 23, baseType: !186, size: 64, offset: 448)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !379, file: !380, line: 24, baseType: !186, size: 64, offset: 512)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !379, file: !380, line: 25, baseType: !186, size: 64, offset: 576)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !379, file: !380, line: 26, baseType: !186, size: 64, offset: 640)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !379, file: !380, line: 27, baseType: !186, size: 64, offset: 704)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !379, file: !380, line: 28, baseType: !186, size: 64, offset: 768)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !379, file: !380, line: 29, baseType: !186, size: 64, offset: 832)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !359, file: !358, line: 44, baseType: !292, size: 32, offset: 832)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !359, file: !358, line: 50, baseType: !398, size: 16, offset: 864)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !271, line: 19, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !273, line: 24, baseType: !193)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !359, file: !358, line: 51, baseType: !401, size: 16, offset: 880)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !271, line: 18, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !273, line: 23, baseType: !403)
!403 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !262, file: !242, line: 495, baseType: !201, size: 64, offset: 6528)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !262, file: !242, line: 497, baseType: !406, size: 64, offset: 6592)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !242, line: 381, size: 384, elements: !408)
!408 = !{!409, !410, !1300}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !407, file: !242, line: 382, baseType: !292, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !407, file: !242, line: 383, baseType: !411, size: 128, offset: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !242, line: 376, size: 128, elements: !412)
!412 = !{!413, !1298}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !411, file: !242, line: 377, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !416, line: 640, size: 48640, elements: !417)
!416 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!417 = !{!418, !426, !428, !429, !435, !436, !437, !438, !439, !440, !441, !442, !446, !464, !475, !570, !571, !572, !583, !584, !586, !587, !588, !589, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !668, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !724, !726, !727, !728, !740, !742, !743, !744, !745, !746, !752, !753, !754, !755, !756, !757, !758, !770, !775, !779, !780, !781, !784, !788, !791, !794, !797, !800, !803, !806, !809, !815, !816, !817, !823, !824, !825, !826, !827, !836, !837, !838, !839, !840, !845, !846, !847, !850, !851, !854, !857, !860, !863, !866, !869, !870, !950, !953, !956, !957, !960, !961, !962, !968, !969, !970, !983, !984, !985, !997, !1002, !1005, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !415, file: !416, line: 646, baseType: !419, size: 128)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !420, line: 56, size: 128, elements: !421)
!420 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!421 = !{!422, !423}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !419, file: !420, line: 57, baseType: !201, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !419, file: !420, line: 58, baseType: !424, size: 32, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !271, line: 21, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !273, line: 27, baseType: !7)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !415, file: !416, line: 649, baseType: !427, size: 64, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !186)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !415, file: !416, line: 657, baseType: !80, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !415, file: !416, line: 658, baseType: !430, size: 32, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !431, line: 113, baseType: !432)
!431 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !431, line: 111, size: 32, elements: !433)
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !432, file: !431, line: 112, baseType: !292, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !415, file: !416, line: 660, baseType: !7, size: 32, offset: 288)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !415, file: !416, line: 661, baseType: !7, size: 32, offset: 320)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !415, file: !416, line: 684, baseType: !135, size: 32, offset: 352)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !415, file: !416, line: 686, baseType: !135, size: 32, offset: 384)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !415, file: !416, line: 687, baseType: !135, size: 32, offset: 416)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !415, file: !416, line: 688, baseType: !135, size: 32, offset: 448)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !415, file: !416, line: 689, baseType: !7, size: 32, offset: 480)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !415, file: !416, line: 691, baseType: !443, size: 64, offset: 512)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!445 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !416, line: 691, flags: DIFlagFwdDecl)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !415, file: !416, line: 692, baseType: !447, size: 832, offset: 576)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !416, line: 451, size: 832, elements: !448)
!448 = !{!449, !454, !455, !456, !457, !458, !459, !460, !461, !462}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !447, file: !416, line: 453, baseType: !450, size: 128)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !416, line: 325, size: 128, elements: !451)
!451 = !{!452, !453}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !450, file: !416, line: 326, baseType: !201, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !450, file: !416, line: 327, baseType: !424, size: 32, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !447, file: !416, line: 454, baseType: !249, size: 192, align: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !447, file: !416, line: 455, baseType: !95, size: 128, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !447, file: !416, line: 456, baseType: !7, size: 32, offset: 448)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !447, file: !416, line: 458, baseType: !270, size: 64, offset: 512)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !447, file: !416, line: 459, baseType: !270, size: 64, offset: 576)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !447, file: !416, line: 460, baseType: !270, size: 64, offset: 640)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !447, file: !416, line: 461, baseType: !270, size: 64, offset: 704)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !447, file: !416, line: 463, baseType: !270, size: 64, offset: 768)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !447, file: !416, line: 465, baseType: !463, offset: 832)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !416, line: 415, elements: !123)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !415, file: !416, line: 693, baseType: !465, size: 384, offset: 1408)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !416, line: 489, size: 384, elements: !466)
!466 = !{!467, !468, !469, !470, !471, !472, !473}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !465, file: !416, line: 490, baseType: !95, size: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !465, file: !416, line: 491, baseType: !201, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !465, file: !416, line: 492, baseType: !201, size: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !465, file: !416, line: 493, baseType: !7, size: 32, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !465, file: !416, line: 494, baseType: !193, size: 16, offset: 288)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !465, file: !416, line: 495, baseType: !193, size: 16, offset: 304)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !465, file: !416, line: 497, baseType: !474, size: 64, offset: 320)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !415, file: !416, line: 697, baseType: !476, size: 1792, offset: 1792)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !416, line: 507, size: 1792, elements: !477)
!477 = !{!478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !567, !568}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !476, file: !416, line: 508, baseType: !249, size: 192, align: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !476, file: !416, line: 515, baseType: !270, size: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !476, file: !416, line: 516, baseType: !270, size: 64, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !476, file: !416, line: 517, baseType: !270, size: 64, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !476, file: !416, line: 518, baseType: !270, size: 64, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !476, file: !416, line: 519, baseType: !270, size: 64, offset: 448)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !476, file: !416, line: 526, baseType: !306, size: 64, offset: 512)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !476, file: !416, line: 527, baseType: !270, size: 64, offset: 576)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !476, file: !416, line: 528, baseType: !7, size: 32, offset: 640)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !476, file: !416, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !476, file: !416, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !476, file: !416, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !476, file: !416, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !476, file: !416, line: 563, baseType: !492, size: 512, offset: 704)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !493)
!493 = !{!494, !502, !503, !508, !560, !564, !565, !566}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !492, file: !6, line: 119, baseType: !495, size: 256)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !496, line: 9, size: 256, elements: !497)
!496 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !495, file: !496, line: 10, baseType: !249, size: 192, align: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !495, file: !496, line: 11, baseType: !500, size: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !501, line: 29, baseType: !306)
!501 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !492, file: !6, line: 120, baseType: !500, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !492, file: !6, line: 121, baseType: !504, size: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!5, !507}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !492, file: !6, line: 122, baseType: !509, size: 64, offset: 384)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !511)
!511 = !{!512, !532, !533, !536, !546, !547, !555, !559}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !510, file: !6, line: 160, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !515)
!515 = !{!516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !514, file: !6, line: 215, baseType: !317)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !514, file: !6, line: 216, baseType: !7, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !514, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !514, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !514, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !514, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !514, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !514, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !514, file: !6, line: 233, baseType: !500, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !514, file: !6, line: 234, baseType: !507, size: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !514, file: !6, line: 235, baseType: !500, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !514, file: !6, line: 236, baseType: !507, size: 64, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !514, file: !6, line: 237, baseType: !529, size: 4096, offset: 512)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, size: 4096, elements: !530)
!530 = !{!531}
!531 = !DISubrange(count: 8)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !510, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !510, file: !6, line: 162, baseType: !534, size: 32, offset: 96)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !96, line: 27, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !184, line: 96, baseType: !135)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !510, file: !6, line: 163, baseType: !537, size: 32, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !538, line: 276, baseType: !539)
!538 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !538, line: 276, size: 32, elements: !540)
!540 = !{!541}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !539, file: !538, line: 276, baseType: !542, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !538, line: 70, baseType: !543)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !538, line: 65, size: 32, elements: !544)
!544 = !{!545}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !543, file: !538, line: 66, baseType: !7, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !510, file: !6, line: 164, baseType: !507, size: 64, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !510, file: !6, line: 165, baseType: !548, size: 128, offset: 256)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !496, line: 14, size: 128, elements: !549)
!549 = !{!550}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !548, file: !496, line: 15, baseType: !551, size: 128)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !250, line: 125, size: 128, elements: !552)
!552 = !{!553, !554}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !551, file: !250, line: 126, baseType: !266, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !551, file: !250, line: 127, baseType: !254, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !510, file: !6, line: 166, baseType: !556, size: 64, offset: 384)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!500}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !510, file: !6, line: 167, baseType: !500, size: 64, offset: 448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !492, file: !6, line: 123, baseType: !561, size: 8, offset: 448)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !271, line: 17, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !273, line: 21, baseType: !563)
!563 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !492, file: !6, line: 124, baseType: !561, size: 8, offset: 456)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !492, file: !6, line: 125, baseType: !561, size: 8, offset: 464)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !492, file: !6, line: 126, baseType: !561, size: 8, offset: 472)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !476, file: !416, line: 572, baseType: !492, size: 512, offset: 1216)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !476, file: !416, line: 580, baseType: !569, size: 64, offset: 1728)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !415, file: !416, line: 721, baseType: !7, size: 32, offset: 3584)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !415, file: !416, line: 722, baseType: !135, size: 32, offset: 3616)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !415, file: !416, line: 723, baseType: !573, size: 64, offset: 3648)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !576, line: 17, baseType: !577)
!576 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !576, line: 17, size: 64, elements: !578)
!578 = !{!579}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !577, file: !576, line: 17, baseType: !580, size: 64)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 64, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: 1)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !415, file: !416, line: 724, baseType: !575, size: 64, offset: 3712)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !415, file: !416, line: 749, baseType: !585, offset: 3776)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !416, line: 290, elements: !123)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !415, file: !416, line: 751, baseType: !95, size: 128, offset: 3776)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !415, file: !416, line: 757, baseType: !258, size: 64, offset: 3904)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !415, file: !416, line: 758, baseType: !258, size: 64, offset: 3968)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !415, file: !416, line: 761, baseType: !590, size: 320, offset: 4032)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !347, line: 34, size: 320, elements: !591)
!591 = !{!592, !593}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !590, file: !347, line: 35, baseType: !270, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !590, file: !347, line: 36, baseType: !594, size: 256, offset: 64)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 256, elements: !351)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !415, file: !416, line: 766, baseType: !135, size: 32, offset: 4352)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !415, file: !416, line: 767, baseType: !135, size: 32, offset: 4384)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !415, file: !416, line: 768, baseType: !135, size: 32, offset: 4416)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !415, file: !416, line: 770, baseType: !135, size: 32, offset: 4448)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !415, file: !416, line: 772, baseType: !201, size: 64, offset: 4480)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !415, file: !416, line: 775, baseType: !7, size: 32, offset: 4544)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !415, file: !416, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !415, file: !416, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !415, file: !416, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !415, file: !416, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !415, file: !416, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !415, file: !416, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !415, file: !416, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !415, file: !416, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !415, file: !416, line: 831, baseType: !201, size: 64, offset: 4672)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !415, file: !416, line: 833, baseType: !611, size: 384, offset: 4736)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !612)
!612 = !{!613, !618}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !611, file: !12, line: 26, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!186, !617}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, scope: !611, file: !12, line: 27, baseType: !619, size: 320, offset: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !611, file: !12, line: 27, size: 320, elements: !620)
!620 = !{!621, !631, !658}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !619, file: !12, line: 36, baseType: !622, size: 320)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !619, file: !12, line: 29, size: 320, elements: !623)
!623 = !{!624, !626, !627, !628, !629, !630}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !622, file: !12, line: 30, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !622, file: !12, line: 31, baseType: !424, size: 32, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !622, file: !12, line: 32, baseType: !424, size: 32, offset: 96)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !622, file: !12, line: 33, baseType: !424, size: 32, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !622, file: !12, line: 34, baseType: !270, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !622, file: !12, line: 35, baseType: !625, size: 64, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !619, file: !12, line: 46, baseType: !632, size: 192)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !619, file: !12, line: 38, size: 192, elements: !633)
!633 = !{!634, !635, !636, !657}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !632, file: !12, line: 39, baseType: !534, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !632, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, scope: !632, file: !12, line: 41, baseType: !637, size: 64, offset: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !632, file: !12, line: 41, size: 64, elements: !638)
!638 = !{!639, !647}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !637, file: !12, line: 42, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !642, line: 7, size: 128, elements: !643)
!642 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!643 = !{!644, !646}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !641, file: !642, line: 8, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !184, line: 93, baseType: !234)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !641, file: !642, line: 9, baseType: !234, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !637, file: !12, line: 43, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !650, line: 7, size: 64, elements: !651)
!650 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!651 = !{!652, !656}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !649, file: !650, line: 8, baseType: !653, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !650, line: 5, baseType: !654)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !271, line: 20, baseType: !655)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !273, line: 26, baseType: !135)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !649, file: !650, line: 9, baseType: !654, size: 32, offset: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !632, file: !12, line: 45, baseType: !270, size: 64, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !619, file: !12, line: 54, baseType: !659, size: 256)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !619, file: !12, line: 48, size: 256, elements: !660)
!660 = !{!661, !664, !665, !666, !667}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !659, file: !12, line: 49, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !659, file: !12, line: 50, baseType: !135, size: 32, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !659, file: !12, line: 51, baseType: !135, size: 32, offset: 96)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !659, file: !12, line: 52, baseType: !201, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !659, file: !12, line: 53, baseType: !201, size: 64, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !415, file: !416, line: 835, baseType: !669, size: 32, offset: 5120)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !96, line: 22, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !184, line: 28, baseType: !135)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !415, file: !416, line: 836, baseType: !669, size: 32, offset: 5152)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !415, file: !416, line: 840, baseType: !201, size: 64, offset: 5184)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !415, file: !416, line: 849, baseType: !414, size: 64, offset: 5248)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !415, file: !416, line: 852, baseType: !414, size: 64, offset: 5312)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !415, file: !416, line: 857, baseType: !95, size: 128, offset: 5376)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !415, file: !416, line: 858, baseType: !95, size: 128, offset: 5504)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !415, file: !416, line: 859, baseType: !414, size: 64, offset: 5632)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !415, file: !416, line: 867, baseType: !95, size: 128, offset: 5696)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !415, file: !416, line: 868, baseType: !95, size: 128, offset: 5824)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !415, file: !416, line: 871, baseType: !681, size: 64, offset: 5952)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !683, line: 59, size: 768, elements: !684)
!683 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!684 = !{!685, !686, !687, !688, !699, !700, !707, !716}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !682, file: !683, line: 61, baseType: !430, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !682, file: !683, line: 62, baseType: !7, size: 32, offset: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !682, file: !683, line: 63, baseType: !109, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !682, file: !683, line: 65, baseType: !689, size: 256, offset: 64)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, size: 256, elements: !351)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !96, line: 182, size: 64, elements: !691)
!691 = !{!692}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !690, file: !96, line: 183, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !96, line: 186, size: 128, elements: !695)
!695 = !{!696, !697}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !694, file: !96, line: 187, baseType: !693, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !694, file: !96, line: 187, baseType: !698, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !682, file: !683, line: 66, baseType: !690, size: 64, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !682, file: !683, line: 68, baseType: !701, size: 128, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !702, line: 40, baseType: !703)
!702 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !702, line: 36, size: 128, elements: !704)
!704 = !{!705, !706}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !703, file: !702, line: 37, baseType: !109)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !703, file: !702, line: 38, baseType: !95, size: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !682, file: !683, line: 69, baseType: !708, size: 128, align: 64, offset: 512)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !96, line: 216, size: 128, align: 64, elements: !709)
!709 = !{!710, !712}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !708, file: !96, line: 217, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !708, file: !96, line: 218, baseType: !713, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !711}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !682, file: !683, line: 70, baseType: !717, size: 128, offset: 640)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, size: 128, elements: !581)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !683, line: 54, size: 128, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !718, file: !683, line: 55, baseType: !135, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !718, file: !683, line: 56, baseType: !722, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !683, line: 56, flags: DIFlagFwdDecl)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !415, file: !416, line: 872, baseType: !725, size: 512, offset: 6016)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !694, size: 512, elements: !351)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !415, file: !416, line: 873, baseType: !95, size: 128, offset: 6528)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !415, file: !416, line: 874, baseType: !95, size: 128, offset: 6656)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !415, file: !416, line: 876, baseType: !729, size: 64, offset: 6784)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !731, line: 26, size: 192, elements: !732)
!731 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!732 = !{!733, !734}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !730, file: !731, line: 27, baseType: !7, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !730, file: !731, line: 28, baseType: !735, size: 128, offset: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !736, line: 43, size: 128, elements: !737)
!736 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !735, file: !736, line: 44, baseType: !317)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !735, file: !736, line: 45, baseType: !95, size: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !415, file: !416, line: 879, baseType: !741, size: 64, offset: 6848)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !415, file: !416, line: 882, baseType: !741, size: 64, offset: 6912)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !415, file: !416, line: 884, baseType: !270, size: 64, offset: 6976)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !415, file: !416, line: 885, baseType: !270, size: 64, offset: 7040)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !415, file: !416, line: 890, baseType: !270, size: 64, offset: 7104)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !415, file: !416, line: 891, baseType: !747, size: 128, offset: 7168)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !416, line: 242, size: 128, elements: !748)
!748 = !{!749, !750, !751}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !747, file: !416, line: 244, baseType: !270, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !747, file: !416, line: 245, baseType: !270, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !747, file: !416, line: 246, baseType: !317, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !415, file: !416, line: 900, baseType: !201, size: 64, offset: 7296)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !415, file: !416, line: 901, baseType: !201, size: 64, offset: 7360)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !415, file: !416, line: 904, baseType: !270, size: 64, offset: 7424)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !415, file: !416, line: 907, baseType: !270, size: 64, offset: 7488)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !415, file: !416, line: 910, baseType: !201, size: 64, offset: 7552)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !415, file: !416, line: 911, baseType: !201, size: 64, offset: 7616)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !415, file: !416, line: 914, baseType: !759, size: 640, offset: 7680)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !760, line: 123, size: 640, elements: !761)
!760 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!761 = !{!762, !768, !769}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !759, file: !760, line: 124, baseType: !763, size: 576)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !764, size: 576, elements: !152)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !760, line: 108, size: 192, elements: !765)
!765 = !{!766, !767}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !764, file: !760, line: 109, baseType: !270, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !764, file: !760, line: 110, baseType: !548, size: 128, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !759, file: !760, line: 125, baseType: !7, size: 32, offset: 576)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !759, file: !760, line: 126, baseType: !7, size: 32, offset: 608)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !415, file: !416, line: 917, baseType: !771, size: 192, offset: 8320)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !760, line: 134, size: 192, elements: !772)
!772 = !{!773, !774}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !771, file: !760, line: 135, baseType: !708, size: 128, align: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !771, file: !760, line: 136, baseType: !7, size: 32, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !415, file: !416, line: 923, baseType: !776, size: 64, offset: 8512)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !778)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !416, line: 923, flags: DIFlagFwdDecl)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !415, file: !416, line: 926, baseType: !776, size: 64, offset: 8576)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !415, file: !416, line: 929, baseType: !776, size: 64, offset: 8640)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !415, file: !416, line: 933, baseType: !782, size: 64, offset: 8704)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !416, line: 933, flags: DIFlagFwdDecl)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !415, file: !416, line: 943, baseType: !785, size: 128, offset: 8768)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 128, elements: !786)
!786 = !{!787}
!787 = !DISubrange(count: 16)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !415, file: !416, line: 945, baseType: !789, size: 64, offset: 8896)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !416, line: 49, flags: DIFlagFwdDecl)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !415, file: !416, line: 956, baseType: !792, size: 64, offset: 8960)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !416, line: 45, flags: DIFlagFwdDecl)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !415, file: !416, line: 959, baseType: !795, size: 64, offset: 9024)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !416, line: 959, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !415, file: !416, line: 962, baseType: !798, size: 64, offset: 9088)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !416, line: 66, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !415, file: !416, line: 966, baseType: !801, size: 64, offset: 9152)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !416, line: 50, flags: DIFlagFwdDecl)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !415, file: !416, line: 969, baseType: !804, size: 64, offset: 9216)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !760, line: 223, flags: DIFlagFwdDecl)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !415, file: !416, line: 970, baseType: !807, size: 64, offset: 9280)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !416, line: 62, flags: DIFlagFwdDecl)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !415, file: !416, line: 971, baseType: !810, size: 64, offset: 9344)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !811, line: 25, baseType: !812)
!811 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !811, line: 23, size: 64, elements: !813)
!813 = !{!814}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !812, file: !811, line: 24, baseType: !580, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !415, file: !416, line: 972, baseType: !810, size: 64, offset: 9408)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !415, file: !416, line: 974, baseType: !810, size: 64, offset: 9472)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !415, file: !416, line: 975, baseType: !818, size: 192, offset: 9536)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !819, line: 30, size: 192, elements: !820)
!819 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!820 = !{!821, !822}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !818, file: !819, line: 31, baseType: !95, size: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !818, file: !819, line: 32, baseType: !810, size: 64, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !415, file: !416, line: 976, baseType: !201, size: 64, offset: 9728)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !415, file: !416, line: 977, baseType: !198, size: 64, offset: 9792)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !415, file: !416, line: 978, baseType: !7, size: 32, offset: 9856)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !415, file: !416, line: 980, baseType: !711, size: 64, offset: 9920)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !415, file: !416, line: 989, baseType: !828, size: 128, offset: 9984)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !829, line: 35, size: 128, elements: !830)
!829 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!830 = !{!831, !832, !833}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !828, file: !829, line: 36, baseType: !135, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !828, file: !829, line: 37, baseType: !292, size: 32, offset: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !828, file: !829, line: 38, baseType: !834, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !829, line: 23, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !415, file: !416, line: 992, baseType: !270, size: 64, offset: 10112)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !415, file: !416, line: 993, baseType: !270, size: 64, offset: 10176)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !415, file: !416, line: 996, baseType: !109, offset: 10240)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !415, file: !416, line: 999, baseType: !317, offset: 10240)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !415, file: !416, line: 1001, baseType: !841, size: 64, offset: 10240)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !416, line: 636, size: 64, elements: !842)
!842 = !{!843}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !841, file: !416, line: 637, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !415, file: !416, line: 1005, baseType: !551, size: 128, offset: 10304)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !415, file: !416, line: 1007, baseType: !414, size: 64, offset: 10432)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !415, file: !416, line: 1009, baseType: !848, size: 64, offset: 10496)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !416, line: 1009, flags: DIFlagFwdDecl)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !415, file: !416, line: 1043, baseType: !80, size: 64, offset: 10560)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !415, file: !416, line: 1046, baseType: !852, size: 64, offset: 10624)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !416, line: 41, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !415, file: !416, line: 1050, baseType: !855, size: 64, offset: 10688)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !416, line: 42, flags: DIFlagFwdDecl)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !415, file: !416, line: 1054, baseType: !858, size: 64, offset: 10752)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !416, line: 55, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !415, file: !416, line: 1056, baseType: !861, size: 64, offset: 10816)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !416, line: 40, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !415, file: !416, line: 1058, baseType: !864, size: 64, offset: 10880)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !416, line: 47, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !415, file: !416, line: 1061, baseType: !867, size: 64, offset: 10944)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !416, line: 43, flags: DIFlagFwdDecl)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !415, file: !416, line: 1064, baseType: !201, size: 64, offset: 11008)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !415, file: !416, line: 1065, baseType: !871, size: 64, offset: 11072)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !819, line: 14, baseType: !873)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !819, line: 12, size: 384, elements: !874)
!874 = !{!875}
!875 = !DIDerivedType(tag: DW_TAG_member, scope: !873, file: !819, line: 13, baseType: !876, size: 384)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !873, file: !819, line: 13, size: 384, elements: !877)
!877 = !{!878, !879, !880, !881}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !876, file: !819, line: 13, baseType: !135, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !876, file: !819, line: 13, baseType: !135, size: 32, offset: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !876, file: !819, line: 13, baseType: !135, size: 32, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !876, file: !819, line: 13, baseType: !882, size: 256, offset: 128)
!882 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !883, line: 32, size: 256, elements: !884)
!883 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!884 = !{!885, !891, !904, !910, !919, !939, !944}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !882, file: !883, line: 37, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !882, file: !883, line: 34, size: 64, elements: !887)
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !886, file: !883, line: 35, baseType: !670, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !886, file: !883, line: 36, baseType: !890, size: 32, offset: 32)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !184, line: 49, baseType: !7)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !882, file: !883, line: 45, baseType: !892, size: 192)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !882, file: !883, line: 40, size: 192, elements: !893)
!893 = !{!894, !896, !897, !903}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !892, file: !883, line: 41, baseType: !895, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !184, line: 95, baseType: !135)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !892, file: !883, line: 42, baseType: !135, size: 32, offset: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !892, file: !883, line: 43, baseType: !898, size: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !883, line: 11, baseType: !899)
!899 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !883, line: 8, size: 64, elements: !900)
!900 = !{!901, !902}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !899, file: !883, line: 9, baseType: !135, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !899, file: !883, line: 10, baseType: !80, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !892, file: !883, line: 44, baseType: !135, size: 32, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !882, file: !883, line: 52, baseType: !905, size: 128)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !882, file: !883, line: 48, size: 128, elements: !906)
!906 = !{!907, !908, !909}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !905, file: !883, line: 49, baseType: !670, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !905, file: !883, line: 50, baseType: !890, size: 32, offset: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !905, file: !883, line: 51, baseType: !898, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !882, file: !883, line: 61, baseType: !911, size: 256)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !882, file: !883, line: 55, size: 256, elements: !912)
!912 = !{!913, !914, !915, !916, !918}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !911, file: !883, line: 56, baseType: !670, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !911, file: !883, line: 57, baseType: !890, size: 32, offset: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !911, file: !883, line: 58, baseType: !135, size: 32, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !911, file: !883, line: 59, baseType: !917, size: 64, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !184, line: 94, baseType: !185)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !911, file: !883, line: 60, baseType: !917, size: 64, offset: 192)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !882, file: !883, line: 95, baseType: !920, size: 256)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !882, file: !883, line: 64, size: 256, elements: !921)
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !920, file: !883, line: 65, baseType: !80, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !920, file: !883, line: 77, baseType: !924, size: 192, offset: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !920, file: !883, line: 77, size: 192, elements: !925)
!925 = !{!926, !927, !934}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !924, file: !883, line: 82, baseType: !403, size: 16)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !924, file: !883, line: 88, baseType: !928, size: 192)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !924, file: !883, line: 84, size: 192, elements: !929)
!929 = !{!930, !932, !933}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !928, file: !883, line: 85, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 64, elements: !530)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !928, file: !883, line: 86, baseType: !80, size: 64, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !928, file: !883, line: 87, baseType: !80, size: 64, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !924, file: !883, line: 93, baseType: !935, size: 96)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !924, file: !883, line: 90, size: 96, elements: !936)
!936 = !{!937, !938}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !935, file: !883, line: 91, baseType: !931, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !935, file: !883, line: 92, baseType: !425, size: 32, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !882, file: !883, line: 101, baseType: !940, size: 128)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !882, file: !883, line: 98, size: 128, elements: !941)
!941 = !{!942, !943}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !940, file: !883, line: 99, baseType: !186, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !940, file: !883, line: 100, baseType: !135, size: 32, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !882, file: !883, line: 108, baseType: !945, size: 128)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !882, file: !883, line: 104, size: 128, elements: !946)
!946 = !{!947, !948, !949}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !945, file: !883, line: 105, baseType: !80, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !945, file: !883, line: 106, baseType: !135, size: 32, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !945, file: !883, line: 107, baseType: !7, size: 32, offset: 96)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !415, file: !416, line: 1067, baseType: !951, offset: 11136)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !952, line: 12, elements: !123)
!952 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!953 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !415, file: !416, line: 1099, baseType: !954, size: 64, offset: 11136)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !416, line: 56, flags: DIFlagFwdDecl)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !415, file: !416, line: 1103, baseType: !95, size: 128, offset: 11200)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !415, file: !416, line: 1104, baseType: !958, size: 64, offset: 11328)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !416, line: 46, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !415, file: !416, line: 1105, baseType: !369, size: 192, offset: 11392)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !415, file: !416, line: 1106, baseType: !7, size: 32, offset: 11584)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !415, file: !416, line: 1109, baseType: !963, size: 128, offset: 11648)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !964, size: 128, elements: !966)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !416, line: 51, flags: DIFlagFwdDecl)
!966 = !{!967}
!967 = !DISubrange(count: 2)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !415, file: !416, line: 1110, baseType: !369, size: 192, offset: 11776)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !415, file: !416, line: 1111, baseType: !95, size: 128, offset: 11968)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !415, file: !416, line: 1173, baseType: !971, size: 64, offset: 12096)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !973, line: 62, size: 256, align: 256, elements: !974)
!973 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!974 = !{!975, !976, !977, !982}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !972, file: !973, line: 75, baseType: !425, size: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !972, file: !973, line: 90, baseType: !425, size: 32, offset: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !972, file: !973, line: 124, baseType: !978, size: 64, offset: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !972, file: !973, line: 109, size: 64, elements: !979)
!979 = !{!980, !981}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !978, file: !973, line: 110, baseType: !272, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !978, file: !973, line: 112, baseType: !272, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !972, file: !973, line: 144, baseType: !425, size: 32, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !415, file: !416, line: 1174, baseType: !424, size: 32, offset: 12160)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !415, file: !416, line: 1179, baseType: !201, size: 64, offset: 12224)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !415, file: !416, line: 1182, baseType: !986, size: 128, offset: 12288)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !347, line: 76, size: 128, elements: !987)
!987 = !{!988, !993, !996}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !986, file: !347, line: 85, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !990, line: 7, size: 64, elements: !991)
!990 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!991 = !{!992}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !989, file: !990, line: 12, baseType: !577, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !986, file: !347, line: 88, baseType: !994, size: 8, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !96, line: 30, baseType: !995)
!995 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !986, file: !347, line: 95, baseType: !994, size: 8, offset: 72)
!997 = !DIDerivedType(tag: DW_TAG_member, scope: !415, file: !416, line: 1184, baseType: !998, size: 128, offset: 12416)
!998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !415, file: !416, line: 1184, size: 128, elements: !999)
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !998, file: !416, line: 1185, baseType: !430, size: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !998, file: !416, line: 1186, baseType: !708, size: 128, align: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !415, file: !416, line: 1190, baseType: !1003, size: 64, offset: 12544)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !416, line: 53, flags: DIFlagFwdDecl)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !415, file: !416, line: 1192, baseType: !1006, size: 128, offset: 12608)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !347, line: 64, size: 128, elements: !1007)
!1007 = !{!1008, !1101, !1102}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1006, file: !347, line: 65, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !242, line: 68, size: 512, align: 128, elements: !1011)
!1011 = !{!1012, !1013, !1093, !1100}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1010, file: !242, line: 69, baseType: !201, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, scope: !1010, file: !242, line: 77, baseType: !1014, size: 320, offset: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1010, file: !242, line: 77, size: 320, elements: !1015)
!1015 = !{!1016, !1025, !1030, !1058, !1066, !1072, !1085, !1092}
!1016 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !242, line: 78, baseType: !1017, size: 320)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1014, file: !242, line: 78, size: 320, elements: !1018)
!1018 = !{!1019, !1020, !1023, !1024}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1017, file: !242, line: 84, baseType: !95, size: 128)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1017, file: !242, line: 86, baseType: !1021, size: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !242, line: 26, flags: DIFlagFwdDecl)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1017, file: !242, line: 87, baseType: !201, size: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1017, file: !242, line: 94, baseType: !201, size: 64, offset: 256)
!1025 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !242, line: 96, baseType: !1026, size: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1014, file: !242, line: 96, size: 64, elements: !1027)
!1027 = !{!1028}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1026, file: !242, line: 101, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !96, line: 143, baseType: !270)
!1030 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !242, line: 103, baseType: !1031, size: 320)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1014, file: !242, line: 103, size: 320, elements: !1032)
!1032 = !{!1033, !1043, !1046, !1047}
!1033 = !DIDerivedType(tag: DW_TAG_member, scope: !1031, file: !242, line: 104, baseType: !1034, size: 128)
!1034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1031, file: !242, line: 104, size: 128, elements: !1035)
!1035 = !{!1036, !1037}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1034, file: !242, line: 105, baseType: !95, size: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, scope: !1034, file: !242, line: 106, baseType: !1038, size: 128)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1034, file: !242, line: 106, size: 128, elements: !1039)
!1039 = !{!1040, !1041, !1042}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1038, file: !242, line: 107, baseType: !1009, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1038, file: !242, line: 109, baseType: !135, size: 32, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1038, file: !242, line: 110, baseType: !135, size: 32, offset: 96)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1031, file: !242, line: 117, baseType: !1044, size: 64, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !242, line: 117, flags: DIFlagFwdDecl)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1031, file: !242, line: 119, baseType: !80, size: 64, offset: 192)
!1047 = !DIDerivedType(tag: DW_TAG_member, scope: !1031, file: !242, line: 120, baseType: !1048, size: 64, offset: 256)
!1048 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1031, file: !242, line: 120, size: 64, elements: !1049)
!1049 = !{!1050, !1051, !1052}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1048, file: !242, line: 121, baseType: !80, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1048, file: !242, line: 122, baseType: !201, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !1048, file: !242, line: 123, baseType: !1053, size: 32)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1048, file: !242, line: 123, size: 32, elements: !1054)
!1054 = !{!1055, !1056, !1057}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1053, file: !242, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1053, file: !242, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1053, file: !242, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1058 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !242, line: 130, baseType: !1059, size: 192)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1014, file: !242, line: 130, size: 192, elements: !1060)
!1060 = !{!1061, !1062, !1063, !1064, !1065}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1059, file: !242, line: 131, baseType: !201, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1059, file: !242, line: 134, baseType: !563, size: 8, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1059, file: !242, line: 135, baseType: !563, size: 8, offset: 72)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1059, file: !242, line: 136, baseType: !292, size: 32, offset: 96)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1059, file: !242, line: 137, baseType: !7, size: 32, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !242, line: 139, baseType: !1067, size: 256)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1014, file: !242, line: 139, size: 256, elements: !1068)
!1068 = !{!1069, !1070, !1071}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1067, file: !242, line: 140, baseType: !201, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1067, file: !242, line: 141, baseType: !292, size: 32, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1067, file: !242, line: 143, baseType: !95, size: 128, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !242, line: 145, baseType: !1073, size: 256)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1014, file: !242, line: 145, size: 256, elements: !1074)
!1074 = !{!1075, !1076, !1078, !1079, !1084}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1073, file: !242, line: 146, baseType: !201, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1073, file: !242, line: 147, baseType: !1077, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !231, line: 509, baseType: !1009)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1073, file: !242, line: 148, baseType: !201, size: 64, offset: 128)
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !242, line: 149, baseType: !1080, size: 64, offset: 192)
!1080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1073, file: !242, line: 149, size: 64, elements: !1081)
!1081 = !{!1082, !1083}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1080, file: !242, line: 150, baseType: !258, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1080, file: !242, line: 151, baseType: !292, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1073, file: !242, line: 156, baseType: !109, offset: 256)
!1085 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !242, line: 159, baseType: !1086, size: 128)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1014, file: !242, line: 159, size: 128, elements: !1087)
!1087 = !{!1088, !1091}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1086, file: !242, line: 161, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !242, line: 161, flags: DIFlagFwdDecl)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1086, file: !242, line: 162, baseType: !80, size: 64, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1014, file: !242, line: 176, baseType: !708, size: 128, align: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, scope: !1010, file: !242, line: 179, baseType: !1094, size: 32, offset: 384)
!1094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1010, file: !242, line: 179, size: 32, elements: !1095)
!1095 = !{!1096, !1097, !1098, !1099}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1094, file: !242, line: 184, baseType: !292, size: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1094, file: !242, line: 192, baseType: !7, size: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1094, file: !242, line: 194, baseType: !7, size: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1094, file: !242, line: 195, baseType: !135, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1010, file: !242, line: 199, baseType: !292, size: 32, offset: 416)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1006, file: !347, line: 67, baseType: !425, size: 32, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1006, file: !347, line: 68, baseType: !425, size: 32, offset: 96)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !415, file: !416, line: 1206, baseType: !135, size: 32, offset: 12736)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !415, file: !416, line: 1207, baseType: !135, size: 32, offset: 12768)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !415, file: !416, line: 1209, baseType: !201, size: 64, offset: 12800)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !415, file: !416, line: 1219, baseType: !270, size: 64, offset: 12864)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !415, file: !416, line: 1220, baseType: !270, size: 64, offset: 12928)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !415, file: !416, line: 1317, baseType: !135, size: 32, offset: 12992)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !415, file: !416, line: 1319, baseType: !414, size: 64, offset: 13056)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !415, file: !416, line: 1322, baseType: !1111, size: 64, offset: 13120)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !416, line: 1322, flags: DIFlagFwdDecl)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !415, file: !416, line: 1326, baseType: !430, size: 32, offset: 13184)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !415, file: !416, line: 1342, baseType: !80, size: 64, offset: 13248)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !415, file: !416, line: 1343, baseType: !272, size: 64, offset: 13312)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !415, file: !416, line: 1344, baseType: !270, size: 64, offset: 13376)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !415, file: !416, line: 1345, baseType: !272, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !415, file: !416, line: 1346, baseType: !272, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !415, file: !416, line: 1347, baseType: !272, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !415, file: !416, line: 1348, baseType: !708, size: 128, align: 64, offset: 13504)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !415, file: !416, line: 1358, baseType: !1122, size: 34816, offset: 13824)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1123, line: 485, size: 34816, elements: !1124)
!1123 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1124 = !{!1125, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1154, !1155, !1156, !1157, !1158, !1159, !1162, !1163, !1164}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1122, file: !1123, line: 487, baseType: !1126, size: 192)
!1126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1127, size: 192, elements: !152)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1128, line: 16, size: 64, elements: !1129)
!1128 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1129 = !{!1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1127, file: !1128, line: 17, baseType: !398, size: 16)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1127, file: !1128, line: 18, baseType: !398, size: 16, offset: 16)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1127, file: !1128, line: 19, baseType: !398, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1127, file: !1128, line: 19, baseType: !398, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1127, file: !1128, line: 19, baseType: !398, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1127, file: !1128, line: 19, baseType: !398, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1127, file: !1128, line: 19, baseType: !398, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1127, file: !1128, line: 20, baseType: !398, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1127, file: !1128, line: 20, baseType: !398, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1127, file: !1128, line: 20, baseType: !398, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1127, file: !1128, line: 20, baseType: !398, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1127, file: !1128, line: 20, baseType: !398, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1127, file: !1128, line: 20, baseType: !398, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1122, file: !1123, line: 491, baseType: !201, size: 64, offset: 192)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1122, file: !1123, line: 495, baseType: !193, size: 16, offset: 256)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1122, file: !1123, line: 496, baseType: !193, size: 16, offset: 272)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1122, file: !1123, line: 497, baseType: !193, size: 16, offset: 288)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1122, file: !1123, line: 498, baseType: !193, size: 16, offset: 304)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1122, file: !1123, line: 502, baseType: !201, size: 64, offset: 320)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1122, file: !1123, line: 503, baseType: !201, size: 64, offset: 384)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1122, file: !1123, line: 514, baseType: !1151, size: 256, offset: 448)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1152, size: 256, elements: !351)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1123, line: 483, flags: DIFlagFwdDecl)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1122, file: !1123, line: 516, baseType: !201, size: 64, offset: 704)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1122, file: !1123, line: 518, baseType: !201, size: 64, offset: 768)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1122, file: !1123, line: 520, baseType: !201, size: 64, offset: 832)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1122, file: !1123, line: 521, baseType: !201, size: 64, offset: 896)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1122, file: !1123, line: 522, baseType: !201, size: 64, offset: 960)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1122, file: !1123, line: 528, baseType: !1160, size: 64, offset: 1024)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1123, line: 10, flags: DIFlagFwdDecl)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1122, file: !1123, line: 535, baseType: !201, size: 64, offset: 1088)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1122, file: !1123, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1122, file: !1123, line: 540, baseType: !1165, size: 33280, offset: 1536)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1166, line: 317, size: 33280, elements: !1167)
!1166 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1167 = !{!1168, !1169, !1170}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1165, file: !1166, line: 330, baseType: !7, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1165, file: !1166, line: 337, baseType: !201, size: 64, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1165, file: !1166, line: 348, baseType: !1171, size: 32768, offset: 512)
!1171 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1166, line: 304, size: 32768, elements: !1172)
!1172 = !{!1173, !1188, !1227, !1277, !1294}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1171, file: !1166, line: 305, baseType: !1174, size: 896)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1166, line: 12, size: 896, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1187}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1174, file: !1166, line: 13, baseType: !424, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1174, file: !1166, line: 14, baseType: !424, size: 32, offset: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1174, file: !1166, line: 15, baseType: !424, size: 32, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1174, file: !1166, line: 16, baseType: !424, size: 32, offset: 96)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1174, file: !1166, line: 17, baseType: !424, size: 32, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1174, file: !1166, line: 18, baseType: !424, size: 32, offset: 160)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1174, file: !1166, line: 19, baseType: !424, size: 32, offset: 192)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1174, file: !1166, line: 22, baseType: !1184, size: 640, offset: 224)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 640, elements: !1185)
!1185 = !{!1186}
!1186 = !DISubrange(count: 20)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1174, file: !1166, line: 25, baseType: !424, size: 32, offset: 864)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1171, file: !1166, line: 306, baseType: !1189, size: 4096, align: 128)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1166, line: 34, size: 4096, align: 128, elements: !1190)
!1190 = !{!1191, !1192, !1193, !1194, !1195, !1210, !1211, !1212, !1216, !1218, !1222}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1189, file: !1166, line: 35, baseType: !398, size: 16)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1189, file: !1166, line: 36, baseType: !398, size: 16, offset: 16)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1189, file: !1166, line: 37, baseType: !398, size: 16, offset: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1189, file: !1166, line: 38, baseType: !398, size: 16, offset: 48)
!1195 = !DIDerivedType(tag: DW_TAG_member, scope: !1189, file: !1166, line: 39, baseType: !1196, size: 128, offset: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1189, file: !1166, line: 39, size: 128, elements: !1197)
!1197 = !{!1198, !1203}
!1198 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !1166, line: 40, baseType: !1199, size: 128)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1196, file: !1166, line: 40, size: 128, elements: !1200)
!1200 = !{!1201, !1202}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1199, file: !1166, line: 41, baseType: !270, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1199, file: !1166, line: 42, baseType: !270, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !1166, line: 44, baseType: !1204, size: 128)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1196, file: !1166, line: 44, size: 128, elements: !1205)
!1205 = !{!1206, !1207, !1208, !1209}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1204, file: !1166, line: 45, baseType: !424, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1204, file: !1166, line: 46, baseType: !424, size: 32, offset: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1204, file: !1166, line: 47, baseType: !424, size: 32, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1204, file: !1166, line: 48, baseType: !424, size: 32, offset: 96)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1189, file: !1166, line: 51, baseType: !424, size: 32, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1189, file: !1166, line: 52, baseType: !424, size: 32, offset: 224)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1189, file: !1166, line: 55, baseType: !1213, size: 1024, offset: 256)
!1213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 1024, elements: !1214)
!1214 = !{!1215}
!1215 = !DISubrange(count: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1189, file: !1166, line: 58, baseType: !1217, size: 2048, offset: 1280)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 2048, elements: !156)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1189, file: !1166, line: 60, baseType: !1219, size: 384, offset: 3328)
!1219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 384, elements: !1220)
!1220 = !{!1221}
!1221 = !DISubrange(count: 12)
!1222 = !DIDerivedType(tag: DW_TAG_member, scope: !1189, file: !1166, line: 62, baseType: !1223, size: 384, offset: 3712)
!1223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1189, file: !1166, line: 62, size: 384, elements: !1224)
!1224 = !{!1225, !1226}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1223, file: !1166, line: 63, baseType: !1219, size: 384)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1223, file: !1166, line: 64, baseType: !1219, size: 384)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1171, file: !1166, line: 307, baseType: !1228, size: 1088)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1166, line: 79, size: 1088, elements: !1229)
!1229 = !{!1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1276}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1228, file: !1166, line: 80, baseType: !424, size: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1228, file: !1166, line: 81, baseType: !424, size: 32, offset: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1228, file: !1166, line: 82, baseType: !424, size: 32, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1228, file: !1166, line: 83, baseType: !424, size: 32, offset: 96)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1228, file: !1166, line: 84, baseType: !424, size: 32, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1228, file: !1166, line: 85, baseType: !424, size: 32, offset: 160)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1228, file: !1166, line: 86, baseType: !424, size: 32, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1228, file: !1166, line: 88, baseType: !1184, size: 640, offset: 224)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1228, file: !1166, line: 89, baseType: !561, size: 8, offset: 864)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1228, file: !1166, line: 90, baseType: !561, size: 8, offset: 872)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1228, file: !1166, line: 91, baseType: !561, size: 8, offset: 880)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1228, file: !1166, line: 92, baseType: !561, size: 8, offset: 888)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1228, file: !1166, line: 93, baseType: !561, size: 8, offset: 896)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1228, file: !1166, line: 94, baseType: !561, size: 8, offset: 904)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1228, file: !1166, line: 95, baseType: !1245, size: 64, offset: 960)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1247, line: 11, size: 128, elements: !1248)
!1247 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1248 = !{!1249, !1250}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1246, file: !1247, line: 12, baseType: !186, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1246, file: !1247, line: 13, baseType: !1251, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1253, line: 56, size: 1344, elements: !1254)
!1253 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1254 = !{!1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1252, file: !1253, line: 61, baseType: !201, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1252, file: !1253, line: 62, baseType: !201, size: 64, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1252, file: !1253, line: 63, baseType: !201, size: 64, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1252, file: !1253, line: 64, baseType: !201, size: 64, offset: 192)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1252, file: !1253, line: 65, baseType: !201, size: 64, offset: 256)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1252, file: !1253, line: 66, baseType: !201, size: 64, offset: 320)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1252, file: !1253, line: 68, baseType: !201, size: 64, offset: 384)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1252, file: !1253, line: 69, baseType: !201, size: 64, offset: 448)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1252, file: !1253, line: 70, baseType: !201, size: 64, offset: 512)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1252, file: !1253, line: 71, baseType: !201, size: 64, offset: 576)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1252, file: !1253, line: 72, baseType: !201, size: 64, offset: 640)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1252, file: !1253, line: 73, baseType: !201, size: 64, offset: 704)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1252, file: !1253, line: 74, baseType: !201, size: 64, offset: 768)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1252, file: !1253, line: 75, baseType: !201, size: 64, offset: 832)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1252, file: !1253, line: 76, baseType: !201, size: 64, offset: 896)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1252, file: !1253, line: 81, baseType: !201, size: 64, offset: 960)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1252, file: !1253, line: 83, baseType: !201, size: 64, offset: 1024)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1252, file: !1253, line: 84, baseType: !201, size: 64, offset: 1088)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1252, file: !1253, line: 85, baseType: !201, size: 64, offset: 1152)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1252, file: !1253, line: 86, baseType: !201, size: 64, offset: 1216)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1252, file: !1253, line: 87, baseType: !201, size: 64, offset: 1280)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1228, file: !1166, line: 96, baseType: !424, size: 32, offset: 1024)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1171, file: !1166, line: 308, baseType: !1278, size: 4608, align: 512)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1166, line: 289, size: 4608, align: 512, elements: !1279)
!1279 = !{!1280, !1281, !1290}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1278, file: !1166, line: 290, baseType: !1189, size: 4096, align: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1278, file: !1166, line: 291, baseType: !1282, size: 512, offset: 4096)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1166, line: 268, size: 512, elements: !1283)
!1283 = !{!1284, !1285, !1286}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1282, file: !1166, line: 269, baseType: !270, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1282, file: !1166, line: 270, baseType: !270, size: 64, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1282, file: !1166, line: 271, baseType: !1287, size: 384, offset: 128)
!1287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 384, elements: !1288)
!1288 = !{!1289}
!1289 = !DISubrange(count: 6)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1278, file: !1166, line: 292, baseType: !1291, offset: 4608)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, elements: !1292)
!1292 = !{!1293}
!1293 = !DISubrange(count: 0)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1171, file: !1166, line: 309, baseType: !1295, size: 32768)
!1295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 32768, elements: !1296)
!1296 = !{!1297}
!1297 = !DISubrange(count: 4096)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !411, file: !242, line: 378, baseType: !1299, size: 64, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !407, file: !242, line: 384, baseType: !730, size: 192, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !262, file: !242, line: 500, baseType: !109, offset: 6656)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !262, file: !242, line: 501, baseType: !1303, size: 64, offset: 6656)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !242, line: 387, flags: DIFlagFwdDecl)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !262, file: !242, line: 516, baseType: !1306, size: 64, offset: 6720)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1308, line: 18, flags: DIFlagFwdDecl)
!1308 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !262, file: !242, line: 519, baseType: !229, size: 64, offset: 6784)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !262, file: !242, line: 521, baseType: !1311, size: 64, offset: 6848)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !242, line: 521, flags: DIFlagFwdDecl)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !262, file: !242, line: 545, baseType: !292, size: 32, offset: 6912)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !262, file: !242, line: 548, baseType: !994, size: 8, offset: 6944)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !262, file: !242, line: 550, baseType: !1316, offset: 6952)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1317, line: 142, elements: !123)
!1317 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !262, file: !242, line: 554, baseType: !1319, size: 256, offset: 6976)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1320, line: 102, size: 256, elements: !1321)
!1320 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1321 = !{!1322, !1323, !1324}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1319, file: !1320, line: 103, baseType: !300, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1319, file: !1320, line: 104, baseType: !95, size: 128, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1319, file: !1320, line: 105, baseType: !1325, size: 64, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1320, line: 21, baseType: !1326)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{null, !1329}
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !262, file: !242, line: 557, baseType: !424, size: 32, offset: 7232)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !259, file: !242, line: 565, baseType: !1332, offset: 7296)
!1332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, elements: !1333)
!1333 = !{!1334}
!1334 = !DISubrange(count: -1)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !241, file: !242, line: 333, baseType: !1336, size: 64, offset: 576)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !231, line: 284, baseType: !1337)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !231, line: 284, size: 64, elements: !1338)
!1338 = !{!1339}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1337, file: !231, line: 284, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !290, line: 19, baseType: !201)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !241, file: !242, line: 334, baseType: !201, size: 64, offset: 640)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !241, file: !242, line: 343, baseType: !1343, size: 256, offset: 704)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !241, file: !242, line: 340, size: 256, elements: !1344)
!1344 = !{!1345, !1346}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1343, file: !242, line: 341, baseType: !249, size: 192, align: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1343, file: !242, line: 342, baseType: !201, size: 64, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !241, file: !242, line: 351, baseType: !95, size: 128, offset: 960)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !241, file: !242, line: 353, baseType: !1349, size: 64, offset: 1088)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !242, line: 353, flags: DIFlagFwdDecl)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !241, file: !242, line: 356, baseType: !1352, size: 64, offset: 1152)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1354)
!1354 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !242, line: 356, flags: DIFlagFwdDecl)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !241, file: !242, line: 359, baseType: !201, size: 64, offset: 1216)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !241, file: !242, line: 361, baseType: !229, size: 64, offset: 1280)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !241, file: !242, line: 362, baseType: !80, size: 64, offset: 1344)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !241, file: !242, line: 365, baseType: !300, size: 64, offset: 1408)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !241, file: !242, line: 373, baseType: !1360, offset: 1472)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !242, line: 296, elements: !123)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !208, file: !176, line: 90, baseType: !203, size: 64, offset: 192)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !208, file: !176, line: 91, baseType: !1363, size: 64, offset: 256)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !166, file: !57, line: 143, baseType: !1365, size: 64, offset: 256)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!1368, !102}
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1370)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1371)
!1371 = !{!1372, !1373, !1377, !1381, !1389, !1393}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1370, file: !18, line: 40, baseType: !17, size: 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1370, file: !18, line: 41, baseType: !1374, size: 64, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!994}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1370, file: !18, line: 42, baseType: !1378, size: 64, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!80}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1370, file: !18, line: 43, baseType: !1382, size: 64, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!1385, !1387}
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1370, file: !18, line: 44, baseType: !1390, size: 64, offset: 256)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!1385}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1370, file: !18, line: 45, baseType: !1394, size: 64, offset: 320)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{null, !80}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !166, file: !57, line: 144, baseType: !1398, size: 64, offset: 320)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!1385, !102}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !166, file: !57, line: 145, baseType: !1402, size: 64, offset: 384)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{null, !102, !1405, !1411}
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1308, line: 23, baseType: !1407)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1308, line: 21, size: 32, elements: !1408)
!1408 = !{!1409}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1407, file: !1308, line: 22, baseType: !1410, size: 32)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !96, line: 32, baseType: !890)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1308, line: 28, baseType: !1413)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1308, line: 26, size: 32, elements: !1414)
!1414 = !{!1415}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1413, file: !1308, line: 27, baseType: !1416, size: 32)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !96, line: 33, baseType: !1417)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !184, line: 50, baseType: !7)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !88, file: !57, line: 70, baseType: !1419, size: 64, offset: 384)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1421, line: 123, size: 1024, elements: !1422)
!1421 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1422 = !{!1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1565, !1566, !1567, !1568, !1569}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1420, file: !1421, line: 124, baseType: !292, size: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1420, file: !1421, line: 125, baseType: !292, size: 32, offset: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1420, file: !1421, line: 135, baseType: !1419, size: 64, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1420, file: !1421, line: 136, baseType: !91, size: 64, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1420, file: !1421, line: 138, baseType: !249, size: 192, align: 64, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1420, file: !1421, line: 140, baseType: !1385, size: 64, offset: 384)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1420, file: !1421, line: 141, baseType: !7, size: 32, offset: 448)
!1430 = !DIDerivedType(tag: DW_TAG_member, scope: !1420, file: !1421, line: 142, baseType: !1431, size: 256, offset: 512)
!1431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1420, file: !1421, line: 142, size: 256, elements: !1432)
!1432 = !{!1433, !1488, !1492}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1431, file: !1421, line: 143, baseType: !1434, size: 192)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1421, line: 91, size: 192, elements: !1435)
!1435 = !{!1436, !1437, !1438}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1434, file: !1421, line: 92, baseType: !201, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1434, file: !1421, line: 94, baseType: !266, size: 64, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1434, file: !1421, line: 100, baseType: !1439, size: 64, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1421, line: 180, size: 704, elements: !1441)
!1441 = !{!1442, !1443, !1444, !1458, !1459, !1460, !1486, !1487}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1440, file: !1421, line: 182, baseType: !1419, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1440, file: !1421, line: 183, baseType: !7, size: 32, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1440, file: !1421, line: 186, baseType: !1445, size: 192, offset: 128)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1446, line: 19, size: 192, elements: !1447)
!1446 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1447 = !{!1448, !1456, !1457}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1445, file: !1446, line: 20, baseType: !1449, size: 128)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1450, line: 292, size: 128, elements: !1451)
!1450 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1451 = !{!1452, !1453, !1455}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1449, file: !1450, line: 293, baseType: !109)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1449, file: !1450, line: 295, baseType: !1454, size: 32)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !96, line: 148, baseType: !7)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1449, file: !1450, line: 296, baseType: !80, size: 64, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1445, file: !1446, line: 21, baseType: !7, size: 32, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1445, file: !1446, line: 22, baseType: !7, size: 32, offset: 160)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1440, file: !1421, line: 187, baseType: !424, size: 32, offset: 320)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1440, file: !1421, line: 188, baseType: !424, size: 32, offset: 352)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1440, file: !1421, line: 189, baseType: !1461, size: 64, offset: 384)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1421, line: 168, size: 320, elements: !1463)
!1463 = !{!1464, !1470, !1474, !1478, !1482}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1462, file: !1421, line: 169, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!135, !1468, !1439}
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !231, line: 539, flags: DIFlagFwdDecl)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1462, file: !1421, line: 171, baseType: !1471, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!135, !1419, !91, !192}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1462, file: !1421, line: 173, baseType: !1475, size: 64, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!135, !1419}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1462, file: !1421, line: 174, baseType: !1479, size: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!135, !1419, !1419, !91}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1462, file: !1421, line: 176, baseType: !1483, size: 64, offset: 256)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!135, !1468, !1419, !1439}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1440, file: !1421, line: 192, baseType: !95, size: 128, offset: 448)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1440, file: !1421, line: 194, baseType: !701, size: 128, offset: 576)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1431, file: !1421, line: 144, baseType: !1489, size: 64)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1421, line: 103, size: 64, elements: !1490)
!1490 = !{!1491}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1489, file: !1421, line: 104, baseType: !1419, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1431, file: !1421, line: 145, baseType: !1493, size: 256)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1421, line: 107, size: 256, elements: !1494)
!1494 = !{!1495, !1560, !1563, !1564}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1493, file: !1421, line: 108, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1498)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1421, line: 217, size: 768, elements: !1499)
!1499 = !{!1500, !1520, !1524, !1528, !1533, !1537, !1541, !1545, !1546, !1547, !1548, !1556}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1498, file: !1421, line: 222, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!135, !1504}
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1421, line: 197, size: 1088, elements: !1506)
!1506 = !{!1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1505, file: !1421, line: 199, baseType: !1419, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1505, file: !1421, line: 200, baseType: !229, size: 64, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1505, file: !1421, line: 201, baseType: !1468, size: 64, offset: 128)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1505, file: !1421, line: 202, baseType: !80, size: 64, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1505, file: !1421, line: 205, baseType: !369, size: 192, offset: 256)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1505, file: !1421, line: 206, baseType: !369, size: 192, offset: 448)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1505, file: !1421, line: 207, baseType: !135, size: 32, offset: 640)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1505, file: !1421, line: 208, baseType: !95, size: 128, offset: 704)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1505, file: !1421, line: 209, baseType: !151, size: 64, offset: 832)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1505, file: !1421, line: 211, baseType: !198, size: 64, offset: 896)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1505, file: !1421, line: 212, baseType: !994, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1505, file: !1421, line: 213, baseType: !994, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1505, file: !1421, line: 214, baseType: !1352, size: 64, offset: 1024)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1498, file: !1421, line: 223, baseType: !1521, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{null, !1504}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1498, file: !1421, line: 236, baseType: !1525, size: 64, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!135, !1468, !80}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1498, file: !1421, line: 238, baseType: !1529, size: 64, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!80, !1468, !1532}
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1498, file: !1421, line: 239, baseType: !1534, size: 64, offset: 256)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!80, !1468, !80, !1532}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1498, file: !1421, line: 240, baseType: !1538, size: 64, offset: 320)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{null, !1468, !80}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1498, file: !1421, line: 242, baseType: !1542, size: 64, offset: 384)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!182, !1504, !151, !198, !232}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1498, file: !1421, line: 252, baseType: !198, size: 64, offset: 448)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1498, file: !1421, line: 259, baseType: !994, size: 8, offset: 512)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1498, file: !1421, line: 260, baseType: !1542, size: 64, offset: 576)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1498, file: !1421, line: 263, baseType: !1549, size: 64, offset: 640)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!1552, !1504, !1554}
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1553, line: 52, baseType: !7)
!1553 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1421, line: 27, flags: DIFlagFwdDecl)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1498, file: !1421, line: 266, baseType: !1557, size: 64, offset: 704)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!135, !1504, !240}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1493, file: !1421, line: 109, baseType: !1561, size: 64, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1421, line: 31, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1493, file: !1421, line: 110, baseType: !232, size: 64, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1493, file: !1421, line: 111, baseType: !1419, size: 64, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1420, file: !1421, line: 148, baseType: !80, size: 64, offset: 768)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1420, file: !1421, line: 154, baseType: !270, size: 64, offset: 832)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1420, file: !1421, line: 156, baseType: !193, size: 16, offset: 896)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1420, file: !1421, line: 157, baseType: !192, size: 16, offset: 912)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1420, file: !1421, line: 158, baseType: !1570, size: 64, offset: 960)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1421, line: 32, flags: DIFlagFwdDecl)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !88, file: !57, line: 71, baseType: !1573, size: 32, offset: 448)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1574, line: 19, size: 32, elements: !1575)
!1574 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1575 = !{!1576}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1573, file: !1574, line: 20, baseType: !430, size: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !88, file: !57, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !88, file: !57, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !88, file: !57, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !88, file: !57, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !88, file: !57, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !85, file: !30, line: 463, baseType: !1583, size: 64, offset: 512)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !85, file: !30, line: 465, baseType: !1585, size: 64, offset: 576)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !85, file: !30, line: 467, baseType: !91, size: 64, offset: 640)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !85, file: !30, line: 468, baseType: !1589, size: 64, offset: 704)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1591)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1592)
!1592 = !{!1593, !1594, !1595, !1599, !1604, !1608}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1591, file: !30, line: 88, baseType: !91, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1591, file: !30, line: 89, baseType: !205, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1591, file: !30, line: 90, baseType: !1596, size: 64, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!135, !1583, !146}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1591, file: !30, line: 91, baseType: !1600, size: 64, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!151, !1583, !1603, !1405, !1411}
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1591, file: !30, line: 93, baseType: !1605, size: 64, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{null, !1583}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1591, file: !30, line: 95, baseType: !1609, size: 64, offset: 320)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1611)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1612)
!1612 = !{!1613, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1611, file: !37, line: 279, baseType: !1614, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!135, !1583}
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
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !85, file: !30, line: 470, baseType: !1640, size: 64, offset: 768)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1642, line: 82, size: 1408, elements: !1643)
!1642 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1643 = !{!1644, !1645, !1646, !1647, !1648, !1649, !1650, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1710, !1713, !1716}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1641, file: !1642, line: 83, baseType: !91, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1641, file: !1642, line: 84, baseType: !91, size: 64, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1641, file: !1642, line: 85, baseType: !1583, size: 64, offset: 128)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1641, file: !1642, line: 86, baseType: !205, size: 64, offset: 192)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1641, file: !1642, line: 87, baseType: !205, size: 64, offset: 256)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1641, file: !1642, line: 88, baseType: !205, size: 64, offset: 320)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1641, file: !1642, line: 90, baseType: !1651, size: 64, offset: 384)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!135, !1583, !1654}
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1656)
!1656 = !{!1657, !1658, !1659, !1663, !1664, !1665, !1666, !1670, !1674, !1675, !1676, !1677, !1678, !1686, !1687, !1688, !1689, !1690, !1691}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1655, file: !24, line: 96, baseType: !91, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1655, file: !24, line: 97, baseType: !1640, size: 64, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1655, file: !24, line: 99, baseType: !1660, size: 64, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1662, line: 76, flags: DIFlagFwdDecl)
!1662 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1655, file: !24, line: 100, baseType: !91, size: 64, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1655, file: !24, line: 102, baseType: !994, size: 8, offset: 256)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1655, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1655, file: !24, line: 105, baseType: !1667, size: 64, offset: 320)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1669)
!1669 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !24, line: 105, flags: DIFlagFwdDecl)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1655, file: !24, line: 106, baseType: !1671, size: 64, offset: 384)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1673)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !24, line: 106, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1655, file: !24, line: 108, baseType: !1614, size: 64, offset: 448)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1655, file: !24, line: 109, baseType: !1605, size: 64, offset: 512)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1655, file: !24, line: 110, baseType: !1614, size: 64, offset: 576)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1655, file: !24, line: 111, baseType: !1605, size: 64, offset: 640)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1655, file: !24, line: 112, baseType: !1679, size: 64, offset: 704)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!135, !1583, !1682}
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1683)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1684)
!1684 = !{!1685}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1683, file: !37, line: 51, baseType: !135, size: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1655, file: !24, line: 113, baseType: !1614, size: 64, offset: 768)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1655, file: !24, line: 114, baseType: !205, size: 64, offset: 832)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1655, file: !24, line: 115, baseType: !205, size: 64, offset: 896)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1655, file: !24, line: 117, baseType: !1609, size: 64, offset: 960)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1655, file: !24, line: 118, baseType: !1605, size: 64, offset: 1024)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1655, file: !24, line: 120, baseType: !1692, size: 64, offset: 1088)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1641, file: !1642, line: 91, baseType: !1596, size: 64, offset: 448)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1641, file: !1642, line: 92, baseType: !1614, size: 64, offset: 512)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1641, file: !1642, line: 93, baseType: !1605, size: 64, offset: 576)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1641, file: !1642, line: 94, baseType: !1614, size: 64, offset: 640)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1641, file: !1642, line: 95, baseType: !1605, size: 64, offset: 704)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1641, file: !1642, line: 97, baseType: !1614, size: 64, offset: 768)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1641, file: !1642, line: 98, baseType: !1614, size: 64, offset: 832)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1641, file: !1642, line: 100, baseType: !1679, size: 64, offset: 896)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1641, file: !1642, line: 101, baseType: !1614, size: 64, offset: 960)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1641, file: !1642, line: 103, baseType: !1614, size: 64, offset: 1024)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1641, file: !1642, line: 105, baseType: !1614, size: 64, offset: 1088)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1641, file: !1642, line: 107, baseType: !1609, size: 64, offset: 1152)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1641, file: !1642, line: 109, baseType: !1707, size: 64, offset: 1216)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1709)
!1709 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1642, line: 109, flags: DIFlagFwdDecl)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1641, file: !1642, line: 111, baseType: !1711, size: 64, offset: 1280)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1642, line: 111, flags: DIFlagFwdDecl)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1641, file: !1642, line: 112, baseType: !1714, offset: 1344)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1715, line: 187, elements: !123)
!1715 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1641, file: !1642, line: 114, baseType: !994, size: 8, offset: 1344)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !85, file: !30, line: 471, baseType: !1654, size: 64, offset: 832)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !85, file: !30, line: 473, baseType: !80, size: 64, offset: 896)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !85, file: !30, line: 475, baseType: !80, size: 64, offset: 960)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !85, file: !30, line: 480, baseType: !369, size: 192, offset: 1024)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !85, file: !30, line: 484, baseType: !1722, size: 576, offset: 1216)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1723)
!1723 = !{!1724, !1725, !1726, !1727, !1728, !1729}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1722, file: !30, line: 362, baseType: !95, size: 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1722, file: !30, line: 363, baseType: !95, size: 128, offset: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1722, file: !30, line: 364, baseType: !95, size: 128, offset: 256)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1722, file: !30, line: 365, baseType: !95, size: 128, offset: 384)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1722, file: !30, line: 366, baseType: !994, size: 8, offset: 512)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1722, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !85, file: !30, line: 485, baseType: !1731, size: 2304, offset: 1792)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1732)
!1732 = !{!1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1828, !1832}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1731, file: !37, line: 566, baseType: !1682, size: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1731, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1731, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1731, file: !37, line: 569, baseType: !994, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1731, file: !37, line: 570, baseType: !994, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1731, file: !37, line: 571, baseType: !994, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1731, file: !37, line: 572, baseType: !994, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1731, file: !37, line: 573, baseType: !994, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1731, file: !37, line: 574, baseType: !994, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1731, file: !37, line: 575, baseType: !994, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1731, file: !37, line: 576, baseType: !994, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1731, file: !37, line: 577, baseType: !424, size: 32, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1731, file: !37, line: 578, baseType: !109, offset: 96)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1731, file: !37, line: 580, baseType: !95, size: 128, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1731, file: !37, line: 581, baseType: !730, size: 192, offset: 256)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1731, file: !37, line: 582, baseType: !1749, size: 64, offset: 448)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1751, line: 43, size: 1472, elements: !1752)
!1751 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1752 = !{!1753, !1754, !1755, !1756, !1757, !1760, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1750, file: !1751, line: 44, baseType: !91, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1750, file: !1751, line: 45, baseType: !135, size: 32, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1750, file: !1751, line: 46, baseType: !95, size: 128, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1750, file: !1751, line: 47, baseType: !109, offset: 256)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1750, file: !1751, line: 48, baseType: !1758, size: 64, offset: 256)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1750, file: !1751, line: 49, baseType: !1761, size: 320, offset: 320)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1762, line: 11, size: 320, elements: !1763)
!1762 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1763 = !{!1764, !1765, !1766, !1771}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1761, file: !1762, line: 16, baseType: !694, size: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1761, file: !1762, line: 17, baseType: !201, size: 64, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1761, file: !1762, line: 18, baseType: !1767, size: 64, offset: 192)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{null, !1770}
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1761, file: !1762, line: 19, baseType: !424, size: 32, offset: 256)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1750, file: !1751, line: 50, baseType: !201, size: 64, offset: 640)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1750, file: !1751, line: 51, baseType: !500, size: 64, offset: 704)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1750, file: !1751, line: 52, baseType: !500, size: 64, offset: 768)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1750, file: !1751, line: 53, baseType: !500, size: 64, offset: 832)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1750, file: !1751, line: 54, baseType: !500, size: 64, offset: 896)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1750, file: !1751, line: 55, baseType: !500, size: 64, offset: 960)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1750, file: !1751, line: 56, baseType: !201, size: 64, offset: 1024)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1750, file: !1751, line: 57, baseType: !201, size: 64, offset: 1088)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1750, file: !1751, line: 58, baseType: !201, size: 64, offset: 1152)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1750, file: !1751, line: 59, baseType: !201, size: 64, offset: 1216)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1750, file: !1751, line: 60, baseType: !201, size: 64, offset: 1280)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1750, file: !1751, line: 61, baseType: !1583, size: 64, offset: 1344)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1750, file: !1751, line: 62, baseType: !994, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1750, file: !1751, line: 63, baseType: !994, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1731, file: !37, line: 583, baseType: !994, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1731, file: !37, line: 584, baseType: !994, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1731, file: !37, line: 585, baseType: !994, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1731, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1731, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1731, file: !37, line: 592, baseType: !492, size: 512, offset: 576)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1731, file: !37, line: 593, baseType: !270, size: 64, offset: 1088)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1731, file: !37, line: 594, baseType: !1319, size: 256, offset: 1152)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1731, file: !37, line: 595, baseType: !701, size: 128, offset: 1408)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1731, file: !37, line: 596, baseType: !1758, size: 64, offset: 1536)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1731, file: !37, line: 597, baseType: !292, size: 32, offset: 1600)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1731, file: !37, line: 598, baseType: !292, size: 32, offset: 1632)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1731, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1731, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1731, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1731, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1731, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1731, file: !37, line: 604, baseType: !994, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1731, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1731, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1731, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1731, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1731, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1731, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1731, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1731, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1731, file: !37, line: 613, baseType: !135, size: 32, offset: 1792)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1731, file: !37, line: 614, baseType: !135, size: 32, offset: 1824)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1731, file: !37, line: 615, baseType: !270, size: 64, offset: 1856)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1731, file: !37, line: 616, baseType: !270, size: 64, offset: 1920)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1731, file: !37, line: 617, baseType: !270, size: 64, offset: 1984)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1731, file: !37, line: 618, baseType: !270, size: 64, offset: 2048)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1731, file: !37, line: 620, baseType: !1819, size: 64, offset: 2112)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1821)
!1821 = !{!1822, !1823, !1824, !1825}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1820, file: !37, line: 537, baseType: !109)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1820, file: !37, line: 538, baseType: !7, size: 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1820, file: !37, line: 540, baseType: !95, size: 128, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1820, file: !37, line: 543, baseType: !1826, size: 64, offset: 192)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1731, file: !37, line: 621, baseType: !1829, size: 64, offset: 2176)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{null, !1583, !654}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1731, file: !37, line: 622, baseType: !1833, size: 64, offset: 2240)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !85, file: !30, line: 486, baseType: !1836, size: 64, offset: 4096)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1838)
!1838 = !{!1839, !1840, !1841, !1845, !1846, !1847}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1837, file: !37, line: 643, baseType: !1611, size: 1472)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1837, file: !37, line: 644, baseType: !1614, size: 64, offset: 1472)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1837, file: !37, line: 645, baseType: !1842, size: 64, offset: 1536)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{null, !1583, !994}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1837, file: !37, line: 646, baseType: !1614, size: 64, offset: 1600)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1837, file: !37, line: 647, baseType: !1605, size: 64, offset: 1664)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1837, file: !37, line: 648, baseType: !1605, size: 64, offset: 1728)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !85, file: !30, line: 493, baseType: !1849, size: 64, offset: 4160)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !85, file: !30, line: 499, baseType: !95, size: 128, offset: 4224)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !85, file: !30, line: 502, baseType: !1853, size: 64, offset: 4352)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1855)
!1855 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !85, file: !30, line: 504, baseType: !1857, size: 64, offset: 4416)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !85, file: !30, line: 505, baseType: !270, size: 64, offset: 4480)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !85, file: !30, line: 510, baseType: !270, size: 64, offset: 4544)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !85, file: !30, line: 511, baseType: !1861, size: 64, offset: 4608)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1863)
!1863 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !85, file: !30, line: 513, baseType: !1865, size: 64, offset: 4672)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1867)
!1867 = !{!1868, !1869}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1866, file: !30, line: 293, baseType: !7, size: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1866, file: !30, line: 294, baseType: !201, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !85, file: !30, line: 515, baseType: !95, size: 128, offset: 4736)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !85, file: !30, line: 526, baseType: !1872, offset: 4864)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1873, line: 5, elements: !123)
!1873 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !85, file: !30, line: 528, baseType: !1875, size: 64, offset: 4864)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1877, line: 14, flags: DIFlagFwdDecl)
!1877 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !85, file: !30, line: 529, baseType: !1879, size: 64, offset: 4928)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1881, line: 17, size: 192, elements: !1882)
!1881 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1882 = !{!1883, !1884, !1967}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1880, file: !1881, line: 18, baseType: !1879, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1880, file: !1881, line: 19, baseType: !1885, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1887)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1881, line: 110, size: 1152, elements: !1888)
!1888 = !{!1889, !1893, !1897, !1903, !1909, !1913, !1917, !1922, !1926, !1927, !1931, !1935, !1939, !1950, !1951, !1952, !1953, !1963}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1887, file: !1881, line: 111, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!1879, !1879}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1887, file: !1881, line: 112, baseType: !1894, size: 64, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{null, !1879}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1887, file: !1881, line: 113, baseType: !1898, size: 64, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!994, !1901}
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1880)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1887, file: !1881, line: 114, baseType: !1904, size: 64, offset: 192)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!1385, !1901, !1907}
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1887, file: !1881, line: 116, baseType: !1910, size: 64, offset: 256)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!994, !1901, !91}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1887, file: !1881, line: 118, baseType: !1914, size: 64, offset: 320)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!135, !1901, !91, !7, !80, !198}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1887, file: !1881, line: 123, baseType: !1918, size: 64, offset: 384)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!135, !1901, !91, !1921, !198}
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1887, file: !1881, line: 126, baseType: !1923, size: 64, offset: 448)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!91, !1901}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1887, file: !1881, line: 127, baseType: !1923, size: 64, offset: 512)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1887, file: !1881, line: 128, baseType: !1928, size: 64, offset: 576)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!1879, !1901}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1887, file: !1881, line: 130, baseType: !1932, size: 64, offset: 640)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!1879, !1901, !1879}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1887, file: !1881, line: 133, baseType: !1936, size: 64, offset: 704)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!1879, !1901, !91}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1887, file: !1881, line: 135, baseType: !1940, size: 64, offset: 768)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!135, !1901, !91, !91, !7, !7, !1943}
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1881, line: 43, size: 640, elements: !1945)
!1945 = !{!1946, !1947, !1948}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1944, file: !1881, line: 44, baseType: !1879, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1944, file: !1881, line: 45, baseType: !7, size: 32, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1944, file: !1881, line: 46, baseType: !1949, size: 512, offset: 128)
!1949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 512, elements: !530)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1887, file: !1881, line: 140, baseType: !1932, size: 64, offset: 832)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1887, file: !1881, line: 143, baseType: !1928, size: 64, offset: 896)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1887, file: !1881, line: 145, baseType: !1890, size: 64, offset: 960)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1887, file: !1881, line: 146, baseType: !1954, size: 64, offset: 1024)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!135, !1901, !1957}
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1881, line: 29, size: 128, elements: !1959)
!1959 = !{!1960, !1961, !1962}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1958, file: !1881, line: 30, baseType: !7, size: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1958, file: !1881, line: 31, baseType: !7, size: 32, offset: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1958, file: !1881, line: 32, baseType: !1901, size: 64, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1887, file: !1881, line: 148, baseType: !1964, size: 64, offset: 1088)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!135, !1901, !1583}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1880, file: !1881, line: 20, baseType: !1583, size: 64, offset: 128)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !85, file: !30, line: 534, baseType: !1969, size: 32, offset: 4992)
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !96, line: 16, baseType: !1970)
!1970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !96, line: 13, baseType: !424)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !85, file: !30, line: 535, baseType: !424, size: 32, offset: 5024)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !85, file: !30, line: 537, baseType: !109, offset: 5056)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !85, file: !30, line: 538, baseType: !95, size: 128, offset: 5056)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !85, file: !30, line: 540, baseType: !1975, size: 64, offset: 5184)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1977, line: 54, size: 960, elements: !1978)
!1977 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1978 = !{!1979, !1980, !1981, !1982, !1983, !1984, !1985, !1989, !1993, !1994, !1995, !1996, !2000, !2004, !2005}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1976, file: !1977, line: 55, baseType: !91, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1976, file: !1977, line: 56, baseType: !1660, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1976, file: !1977, line: 58, baseType: !205, size: 64, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1976, file: !1977, line: 59, baseType: !205, size: 64, offset: 192)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1976, file: !1977, line: 60, baseType: !102, size: 64, offset: 256)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1976, file: !1977, line: 62, baseType: !1596, size: 64, offset: 320)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1976, file: !1977, line: 63, baseType: !1986, size: 64, offset: 384)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!151, !1583, !1603}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1976, file: !1977, line: 65, baseType: !1990, size: 64, offset: 448)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{null, !1975}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1976, file: !1977, line: 66, baseType: !1605, size: 64, offset: 512)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1976, file: !1977, line: 68, baseType: !1614, size: 64, offset: 576)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1976, file: !1977, line: 70, baseType: !1368, size: 64, offset: 640)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1976, file: !1977, line: 71, baseType: !1997, size: 64, offset: 704)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!1385, !1583}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1976, file: !1977, line: 73, baseType: !2001, size: 64, offset: 768)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{null, !1583, !1405, !1411}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1976, file: !1977, line: 75, baseType: !1609, size: 64, offset: 832)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1976, file: !1977, line: 77, baseType: !1711, size: 64, offset: 896)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !85, file: !30, line: 541, baseType: !205, size: 64, offset: 5248)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !85, file: !30, line: 543, baseType: !1605, size: 64, offset: 5312)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !85, file: !30, line: 544, baseType: !2009, size: 64, offset: 5376)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !85, file: !30, line: 545, baseType: !2012, size: 64, offset: 5440)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !85, file: !30, line: 547, baseType: !994, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !85, file: !30, line: 548, baseType: !994, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !85, file: !30, line: 549, baseType: !994, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !85, file: !30, line: 550, baseType: !994, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !82, file: !3, line: 21, baseType: !369, size: 192, offset: 5568)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !82, file: !3, line: 22, baseType: !50, size: 32, offset: 5760)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_port", scope: !82, file: !3, line: 25, baseType: !1583, size: 64, offset: 5824)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_port", scope: !82, file: !3, line: 26, baseType: !1583, size: 64, offset: 5888)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "udc", scope: !82, file: !3, line: 27, baseType: !1583, size: 64, offset: 5952)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !82, file: !3, line: 28, baseType: !2024, size: 64, offset: 6016)
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_role_switch_set_t", file: !51, line: 16, baseType: !2025)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!135, !81, !50}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !82, file: !3, line: 29, baseType: !2029, size: 64, offset: 6080)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_role_switch_get_t", file: !51, line: 18, baseType: !2030)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!50, !81}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "allow_userspace_control", scope: !82, file: !3, line: 30, baseType: !994, size: 8, offset: 6144)
!2034 = !{!2035, !2053, !2055, !2062, !2067, !2072, !2077, !2082, !0, !2087, !2089, !2092, !2094, !2097, !2111, !2115}
!2035 = !DIGlobalVariableExpression(var: !2036, expr: !DIExpression())
!2036 = distinct !DIGlobalVariable(name: "__key", scope: !2037, file: !3, line: 317, type: !1714, isLocal: true, isDefinition: true)
!2037 = distinct !DISubprogram(name: "usb_role_switch_register", scope: !3, file: !3, line: 304, type: !2038, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!81, !1583, !2040}
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2042)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_role_switch_desc", file: !51, line: 38, size: 576, elements: !2043)
!2043 = !{!2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2042, file: !51, line: 39, baseType: !1879, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_port", scope: !2042, file: !51, line: 40, baseType: !1583, size: 64, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_port", scope: !2042, file: !51, line: 41, baseType: !1583, size: 64, offset: 128)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "udc", scope: !2042, file: !51, line: 42, baseType: !1583, size: 64, offset: 192)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2042, file: !51, line: 43, baseType: !2024, size: 64, offset: 256)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2042, file: !51, line: 44, baseType: !2029, size: 64, offset: 320)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "allow_userspace_control", scope: !2042, file: !51, line: 45, baseType: !994, size: 8, offset: 384)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2042, file: !51, line: 46, baseType: !80, size: 64, offset: 448)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2042, file: !51, line: 47, baseType: !91, size: 64, offset: 512)
!2053 = !DIGlobalVariableExpression(var: !2054, expr: !DIExpression())
!2054 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_usb_roles_init170", scope: !2, file: !3, line: 385, type: !80, isLocal: true, isDefinition: true)
!2055 = !DIGlobalVariableExpression(var: !2056, expr: !DIExpression())
!2056 = distinct !DIGlobalVariable(name: "__exitcall_usb_roles_exit", scope: !2, file: !3, line: 391, type: !2057, isLocal: true, isDefinition: true)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2058, line: 117, baseType: !2059)
!2058 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{null}
!2062 = !DIGlobalVariableExpression(var: !2063, expr: !DIExpression())
!2063 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author171", scope: !2, file: !3, line: 393, type: !2064, isLocal: true, isDefinition: true, align: 8)
!2064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 504, elements: !2065)
!2065 = !{!2066}
!2066 = !DISubrange(count: 63)
!2067 = !DIGlobalVariableExpression(var: !2068, expr: !DIExpression())
!2068 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author172", scope: !2, file: !3, line: 394, type: !2069, isLocal: true, isDefinition: true, align: 8)
!2069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 392, elements: !2070)
!2070 = !{!2071}
!2071 = !DISubrange(count: 49)
!2072 = !DIGlobalVariableExpression(var: !2073, expr: !DIExpression())
!2073 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file173", scope: !2, file: !3, line: 395, type: !2074, isLocal: true, isDefinition: true, align: 8)
!2074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 280, elements: !2075)
!2075 = !{!2076}
!2076 = !DISubrange(count: 35)
!2077 = !DIGlobalVariableExpression(var: !2078, expr: !DIExpression())
!2078 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license174", scope: !2, file: !3, line: 395, type: !2079, isLocal: true, isDefinition: true, align: 8)
!2079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 168, elements: !2080)
!2080 = !{!2081}
!2081 = !DISubrange(count: 21)
!2082 = !DIGlobalVariableExpression(var: !2083, expr: !DIExpression())
!2083 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description175", scope: !2, file: !3, line: 396, type: !2084, isLocal: true, isDefinition: true, align: 8)
!2084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 264, elements: !2085)
!2085 = !{!2086}
!2086 = !DISubrange(count: 33)
!2087 = !DIGlobalVariableExpression(var: !2088, expr: !DIExpression())
!2088 = distinct !DIGlobalVariable(name: "usb_role_dev_type", scope: !2, file: !3, line: 282, type: !1590, isLocal: true, isDefinition: true)
!2089 = !DIGlobalVariableExpression(var: !2090, expr: !DIExpression())
!2090 = distinct !DIGlobalVariable(name: "usb_role_switch_groups", scope: !2, file: !3, line: 258, type: !2091, isLocal: true, isDefinition: true)
!2091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 128, elements: !966)
!2092 = !DIGlobalVariableExpression(var: !2093, expr: !DIExpression())
!2093 = distinct !DIGlobalVariable(name: "usb_role_switch_group", scope: !2, file: !3, line: 253, type: !207, isLocal: true, isDefinition: true)
!2094 = !DIGlobalVariableExpression(var: !2095, expr: !DIExpression())
!2095 = distinct !DIGlobalVariable(name: "usb_role_switch_attrs", scope: !2, file: !3, line: 248, type: !2096, isLocal: true, isDefinition: true)
!2096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 128, elements: !966)
!2097 = !DIGlobalVariableExpression(var: !2098, expr: !DIExpression())
!2098 = distinct !DIGlobalVariable(name: "dev_attr_role", scope: !2, file: !3, line: 246, type: !2099, isLocal: true, isDefinition: true)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !30, line: 99, size: 256, elements: !2100)
!2100 = !{!2101, !2102, !2107}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2099, file: !30, line: 100, baseType: !188, size: 128)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2099, file: !30, line: 101, baseType: !2103, size: 64, offset: 128)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!182, !1583, !2106, !151}
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2099, file: !30, line: 103, baseType: !2108, size: 64, offset: 192)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!182, !1583, !2106, !91, !198}
!2111 = !DIGlobalVariableExpression(var: !2112, expr: !DIExpression())
!2112 = distinct !DIGlobalVariable(name: "usb_roles", scope: !2, file: !3, line: 209, type: !2113, isLocal: true, isDefinition: true)
!2113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2114, size: 192, elements: !152)
!2114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!2115 = !DIGlobalVariableExpression(var: !2116, expr: !DIExpression())
!2116 = distinct !DIGlobalVariable(name: "__key", scope: !2117, file: !3, line: 382, type: !1714, isLocal: true, isDefinition: true)
!2117 = distinct !DISubprogram(name: "usb_roles_init", scope: !3, file: !3, line: 380, type: !2118, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!135}
!2120 = !{i32 7, !"Dwarf Version", i32 4}
!2121 = !{i32 2, !"Debug Info Version", i32 3}
!2122 = !{i32 1, !"wchar_size", i32 2}
!2123 = !{i32 1, !"Code Model", i32 2}
!2124 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2125 = distinct !DISubprogram(name: "usb_role_switch_set_role", scope: !3, file: !3, line: 42, type: !2026, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2126 = !DILocalVariable(name: "sw", arg: 1, scope: !2125, file: !3, line: 42, type: !81)
!2127 = !DILocation(line: 42, column: 54, scope: !2125)
!2128 = !DILocalVariable(name: "role", arg: 2, scope: !2125, file: !3, line: 42, type: !50)
!2129 = !DILocation(line: 42, column: 72, scope: !2125)
!2130 = !DILocalVariable(name: "ret", scope: !2125, file: !3, line: 44, type: !135)
!2131 = !DILocation(line: 44, column: 6, scope: !2125)
!2132 = !DILocation(line: 46, column: 21, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2125, file: !3, line: 46, column: 6)
!2134 = !DILocation(line: 46, column: 6, scope: !2133)
!2135 = !DILocation(line: 46, column: 6, scope: !2125)
!2136 = !DILocation(line: 47, column: 3, scope: !2133)
!2137 = !DILocation(line: 49, column: 14, scope: !2125)
!2138 = !DILocation(line: 49, column: 18, scope: !2125)
!2139 = !DILocation(line: 49, column: 2, scope: !2125)
!2140 = !DILocation(line: 51, column: 8, scope: !2125)
!2141 = !DILocation(line: 51, column: 12, scope: !2125)
!2142 = !DILocation(line: 51, column: 16, scope: !2125)
!2143 = !DILocation(line: 51, column: 20, scope: !2125)
!2144 = !DILocation(line: 51, column: 6, scope: !2125)
!2145 = !DILocation(line: 52, column: 7, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2125, file: !3, line: 52, column: 6)
!2147 = !DILocation(line: 52, column: 6, scope: !2125)
!2148 = !DILocation(line: 53, column: 14, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 52, column: 12)
!2150 = !DILocation(line: 53, column: 3, scope: !2149)
!2151 = !DILocation(line: 53, column: 7, scope: !2149)
!2152 = !DILocation(line: 53, column: 12, scope: !2149)
!2153 = !DILocation(line: 54, column: 19, scope: !2149)
!2154 = !DILocation(line: 54, column: 23, scope: !2149)
!2155 = !DILocation(line: 54, column: 27, scope: !2149)
!2156 = !DILocation(line: 54, column: 3, scope: !2149)
!2157 = !DILocation(line: 55, column: 2, scope: !2149)
!2158 = !DILocation(line: 57, column: 16, scope: !2125)
!2159 = !DILocation(line: 57, column: 20, scope: !2125)
!2160 = !DILocation(line: 57, column: 2, scope: !2125)
!2161 = !DILocation(line: 59, column: 9, scope: !2125)
!2162 = !DILocation(line: 59, column: 2, scope: !2125)
!2163 = !DILocation(line: 60, column: 1, scope: !2125)
!2164 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !2165, file: !2165, line: 39, type: !2166, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2165 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!994, !1385}
!2168 = !DILocalVariable(name: "ptr", arg: 1, scope: !2164, file: !2165, line: 39, type: !1385)
!2169 = !DILocation(line: 39, column: 68, scope: !2164)
!2170 = !DILocation(line: 41, column: 9, scope: !2164)
!2171 = !DILocation(line: 41, column: 24, scope: !2164)
!2172 = !DILocation(line: 41, column: 27, scope: !2164)
!2173 = !DILocation(line: 41, column: 2, scope: !2164)
!2174 = distinct !DISubprogram(name: "usb_role_switch_get_role", scope: !3, file: !3, line: 70, type: !2031, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2175 = !DILocalVariable(name: "sw", arg: 1, scope: !2174, file: !3, line: 70, type: !81)
!2176 = !DILocation(line: 70, column: 64, scope: !2174)
!2177 = !DILocalVariable(name: "role", scope: !2174, file: !3, line: 72, type: !50)
!2178 = !DILocation(line: 72, column: 16, scope: !2174)
!2179 = !DILocation(line: 74, column: 21, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 74, column: 6)
!2181 = !DILocation(line: 74, column: 6, scope: !2180)
!2182 = !DILocation(line: 74, column: 6, scope: !2174)
!2183 = !DILocation(line: 75, column: 3, scope: !2180)
!2184 = !DILocation(line: 77, column: 14, scope: !2174)
!2185 = !DILocation(line: 77, column: 18, scope: !2174)
!2186 = !DILocation(line: 77, column: 2, scope: !2174)
!2187 = !DILocation(line: 79, column: 6, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 79, column: 6)
!2189 = !DILocation(line: 79, column: 10, scope: !2188)
!2190 = !DILocation(line: 79, column: 6, scope: !2174)
!2191 = !DILocation(line: 80, column: 10, scope: !2188)
!2192 = !DILocation(line: 80, column: 14, scope: !2188)
!2193 = !DILocation(line: 80, column: 18, scope: !2188)
!2194 = !DILocation(line: 80, column: 8, scope: !2188)
!2195 = !DILocation(line: 80, column: 3, scope: !2188)
!2196 = !DILocation(line: 82, column: 10, scope: !2188)
!2197 = !DILocation(line: 82, column: 14, scope: !2188)
!2198 = !DILocation(line: 82, column: 8, scope: !2188)
!2199 = !DILocation(line: 84, column: 16, scope: !2174)
!2200 = !DILocation(line: 84, column: 20, scope: !2174)
!2201 = !DILocation(line: 84, column: 2, scope: !2174)
!2202 = !DILocation(line: 86, column: 9, scope: !2174)
!2203 = !DILocation(line: 86, column: 2, scope: !2174)
!2204 = !DILocation(line: 87, column: 1, scope: !2174)
!2205 = distinct !DISubprogram(name: "usb_role_switch_get", scope: !3, file: !3, line: 123, type: !2206, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!81, !1583}
!2208 = !DILocalVariable(name: "dev", arg: 1, scope: !2205, file: !3, line: 123, type: !1583)
!2209 = !DILocation(line: 123, column: 60, scope: !2205)
!2210 = !DILocalVariable(name: "sw", scope: !2205, file: !3, line: 125, type: !81)
!2211 = !DILocation(line: 125, column: 26, scope: !2205)
!2212 = !DILocation(line: 127, column: 44, scope: !2205)
!2213 = !DILocation(line: 127, column: 33, scope: !2205)
!2214 = !DILocation(line: 127, column: 7, scope: !2205)
!2215 = !DILocation(line: 127, column: 5, scope: !2205)
!2216 = !DILocation(line: 128, column: 7, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2205, file: !3, line: 128, column: 6)
!2218 = !DILocation(line: 128, column: 6, scope: !2205)
!2219 = !DILocation(line: 129, column: 37, scope: !2217)
!2220 = !DILocation(line: 129, column: 8, scope: !2217)
!2221 = !DILocation(line: 129, column: 6, scope: !2217)
!2222 = !DILocation(line: 129, column: 3, scope: !2217)
!2223 = !DILocation(line: 132, column: 22, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2205, file: !3, line: 132, column: 6)
!2225 = !DILocation(line: 132, column: 7, scope: !2224)
!2226 = !DILocation(line: 132, column: 6, scope: !2205)
!2227 = !DILocalVariable(name: "__ret_warn_on", scope: !2228, file: !3, line: 133, type: !135)
!2228 = distinct !DILexicalBlock(scope: !2224, file: !3, line: 133, column: 3)
!2229 = !DILocation(line: 133, column: 3, scope: !2228)
!2230 = !DILocation(line: 133, column: 3, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2228, file: !3, line: 133, column: 3)
!2232 = !DILocation(line: 133, column: 3, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 133, column: 3)
!2234 = !DILocation(line: 133, column: 3, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 133, column: 3)
!2236 = !DILocation(line: 133, column: 3, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 133, column: 3)
!2238 = !{i32 -2143519923, i32 -2143519894, i32 -2143519848, i32 -2143519790, i32 -2143519736, i32 -2143519682, i32 -2143519627, i32 -2143519596}
!2239 = !DILocation(line: 133, column: 3, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 133, column: 3)
!2241 = !{i32 -2143519189, i32 -2143519182, i32 -2143519130, i32 -2143519099, i32 -2143519069}
!2242 = !DILocation(line: 133, column: 3, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 133, column: 3)
!2244 = !DILocation(line: 133, column: 3, scope: !2224)
!2245 = !DILocation(line: 135, column: 9, scope: !2205)
!2246 = !DILocation(line: 135, column: 2, scope: !2205)
!2247 = distinct !DISubprogram(name: "usb_role_switch_is_parent", scope: !3, file: !3, line: 104, type: !2248, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!81, !1879}
!2250 = !DILocalVariable(name: "fwnode", arg: 1, scope: !2247, file: !3, line: 104, type: !1879)
!2251 = !DILocation(line: 104, column: 49, scope: !2247)
!2252 = !DILocalVariable(name: "parent", scope: !2247, file: !3, line: 106, type: !1879)
!2253 = !DILocation(line: 106, column: 24, scope: !2247)
!2254 = !DILocation(line: 106, column: 51, scope: !2247)
!2255 = !DILocation(line: 106, column: 33, scope: !2247)
!2256 = !DILocalVariable(name: "dev", scope: !2247, file: !3, line: 107, type: !1583)
!2257 = !DILocation(line: 107, column: 17, scope: !2247)
!2258 = !DILocation(line: 109, column: 7, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 109, column: 6)
!2260 = !DILocation(line: 109, column: 14, scope: !2259)
!2261 = !DILocation(line: 109, column: 42, scope: !2259)
!2262 = !DILocation(line: 109, column: 18, scope: !2259)
!2263 = !DILocation(line: 109, column: 6, scope: !2247)
!2264 = !DILocation(line: 110, column: 3, scope: !2259)
!2265 = !DILocation(line: 112, column: 36, scope: !2247)
!2266 = !DILocation(line: 112, column: 48, scope: !2247)
!2267 = !DILocation(line: 112, column: 8, scope: !2247)
!2268 = !DILocation(line: 112, column: 6, scope: !2247)
!2269 = !DILocation(line: 113, column: 9, scope: !2247)
!2270 = !DILocalVariable(name: "__mptr", scope: !2271, file: !3, line: 113, type: !80)
!2271 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 113, column: 15)
!2272 = !DILocation(line: 113, column: 15, scope: !2271)
!2273 = !DILocation(line: 113, column: 15, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 113, column: 15)
!2275 = !DILocation(line: 113, column: 15, scope: !2247)
!2276 = !DILocation(line: 113, column: 37, scope: !2247)
!2277 = !DILocation(line: 113, column: 2, scope: !2247)
!2278 = !DILocation(line: 114, column: 1, scope: !2247)
!2279 = distinct !DISubprogram(name: "device_connection_find_match", scope: !2280, file: !2280, line: 441, type: !2281, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2280 = !DIFile(filename: "./include/linux/property.h", directory: "/home/lizy2001/genbc/linux")
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!80, !1583, !91, !80, !2283}
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "devcon_match_fn_t", file: !2280, line: 434, baseType: !2284)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!80, !1879, !91, !80}
!2287 = !DILocalVariable(name: "dev", arg: 1, scope: !2279, file: !2280, line: 441, type: !1583)
!2288 = !DILocation(line: 441, column: 65, scope: !2279)
!2289 = !DILocalVariable(name: "con_id", arg: 2, scope: !2279, file: !2280, line: 442, type: !91)
!2290 = !DILocation(line: 442, column: 20, scope: !2279)
!2291 = !DILocalVariable(name: "data", arg: 3, scope: !2279, file: !2280, line: 442, type: !80)
!2292 = !DILocation(line: 442, column: 34, scope: !2279)
!2293 = !DILocalVariable(name: "match", arg: 4, scope: !2279, file: !2280, line: 443, type: !2283)
!2294 = !DILocation(line: 443, column: 26, scope: !2279)
!2295 = !DILocation(line: 445, column: 49, scope: !2279)
!2296 = !DILocation(line: 445, column: 38, scope: !2279)
!2297 = !DILocation(line: 445, column: 55, scope: !2279)
!2298 = !DILocation(line: 445, column: 63, scope: !2279)
!2299 = !DILocation(line: 445, column: 69, scope: !2279)
!2300 = !DILocation(line: 445, column: 9, scope: !2279)
!2301 = !DILocation(line: 445, column: 2, scope: !2279)
!2302 = distinct !DISubprogram(name: "usb_role_switch_match", scope: !3, file: !3, line: 90, type: !2285, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2303 = !DILocalVariable(name: "fwnode", arg: 1, scope: !2302, file: !3, line: 90, type: !1879)
!2304 = !DILocation(line: 90, column: 58, scope: !2302)
!2305 = !DILocalVariable(name: "id", arg: 2, scope: !2302, file: !3, line: 90, type: !91)
!2306 = !DILocation(line: 90, column: 78, scope: !2302)
!2307 = !DILocalVariable(name: "data", arg: 3, scope: !2302, file: !3, line: 91, type: !80)
!2308 = !DILocation(line: 91, column: 14, scope: !2302)
!2309 = !DILocalVariable(name: "dev", scope: !2302, file: !3, line: 93, type: !1583)
!2310 = !DILocation(line: 93, column: 17, scope: !2302)
!2311 = !DILocation(line: 95, column: 6, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 95, column: 6)
!2313 = !DILocation(line: 95, column: 9, scope: !2312)
!2314 = !DILocation(line: 95, column: 37, scope: !2312)
!2315 = !DILocation(line: 95, column: 45, scope: !2312)
!2316 = !DILocation(line: 95, column: 13, scope: !2312)
!2317 = !DILocation(line: 95, column: 6, scope: !2302)
!2318 = !DILocation(line: 96, column: 3, scope: !2312)
!2319 = !DILocation(line: 98, column: 36, scope: !2302)
!2320 = !DILocation(line: 98, column: 48, scope: !2302)
!2321 = !DILocation(line: 98, column: 8, scope: !2302)
!2322 = !DILocation(line: 98, column: 6, scope: !2302)
!2323 = !DILocation(line: 100, column: 9, scope: !2302)
!2324 = !DILocalVariable(name: "__mptr", scope: !2325, file: !3, line: 100, type: !80)
!2325 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 100, column: 15)
!2326 = !DILocation(line: 100, column: 15, scope: !2325)
!2327 = !DILocation(line: 100, column: 15, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2325, file: !3, line: 100, column: 15)
!2329 = !DILocation(line: 100, column: 15, scope: !2302)
!2330 = !DILocation(line: 100, column: 37, scope: !2302)
!2331 = !DILocation(line: 100, column: 2, scope: !2302)
!2332 = !DILocation(line: 101, column: 1, scope: !2302)
!2333 = distinct !DISubprogram(name: "try_module_get", scope: !2334, file: !2334, line: 751, type: !2335, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2334 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!994, !1660}
!2337 = !DILocalVariable(name: "module", arg: 1, scope: !2333, file: !2334, line: 751, type: !1660)
!2338 = !DILocation(line: 751, column: 50, scope: !2333)
!2339 = !DILocation(line: 753, column: 2, scope: !2333)
!2340 = distinct !DISubprogram(name: "fwnode_usb_role_switch_get", scope: !3, file: !3, line: 146, type: !2248, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2341 = !DILocalVariable(name: "fwnode", arg: 1, scope: !2340, file: !3, line: 146, type: !1879)
!2342 = !DILocation(line: 146, column: 74, scope: !2340)
!2343 = !DILocalVariable(name: "sw", scope: !2340, file: !3, line: 148, type: !81)
!2344 = !DILocation(line: 148, column: 26, scope: !2340)
!2345 = !DILocation(line: 150, column: 33, scope: !2340)
!2346 = !DILocation(line: 150, column: 7, scope: !2340)
!2347 = !DILocation(line: 150, column: 5, scope: !2340)
!2348 = !DILocation(line: 151, column: 7, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 151, column: 6)
!2350 = !DILocation(line: 151, column: 6, scope: !2340)
!2351 = !DILocation(line: 152, column: 37, scope: !2349)
!2352 = !DILocation(line: 152, column: 8, scope: !2349)
!2353 = !DILocation(line: 152, column: 6, scope: !2349)
!2354 = !DILocation(line: 152, column: 3, scope: !2349)
!2355 = !DILocation(line: 154, column: 22, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 154, column: 6)
!2357 = !DILocation(line: 154, column: 7, scope: !2356)
!2358 = !DILocation(line: 154, column: 6, scope: !2340)
!2359 = !DILocalVariable(name: "__ret_warn_on", scope: !2360, file: !3, line: 155, type: !135)
!2360 = distinct !DILexicalBlock(scope: !2356, file: !3, line: 155, column: 3)
!2361 = !DILocation(line: 155, column: 3, scope: !2360)
!2362 = !DILocation(line: 155, column: 3, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 155, column: 3)
!2364 = !DILocation(line: 155, column: 3, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 155, column: 3)
!2366 = !DILocation(line: 155, column: 3, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 155, column: 3)
!2368 = !DILocation(line: 155, column: 3, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 155, column: 3)
!2370 = !{i32 -2143518334, i32 -2143518305, i32 -2143518259, i32 -2143518201, i32 -2143518147, i32 -2143518093, i32 -2143518038, i32 -2143518007}
!2371 = !DILocation(line: 155, column: 3, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 155, column: 3)
!2373 = !{i32 -2143517600, i32 -2143517593, i32 -2143517541, i32 -2143517510, i32 -2143517480}
!2374 = !DILocation(line: 155, column: 3, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 155, column: 3)
!2376 = !DILocation(line: 155, column: 3, scope: !2356)
!2377 = !DILocation(line: 157, column: 9, scope: !2340)
!2378 = !DILocation(line: 157, column: 2, scope: !2340)
!2379 = distinct !DISubprogram(name: "usb_role_switch_put", scope: !3, file: !3, line: 167, type: !2380, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{null, !81}
!2382 = !DILocalVariable(name: "sw", arg: 1, scope: !2379, file: !3, line: 167, type: !81)
!2383 = !DILocation(line: 167, column: 50, scope: !2379)
!2384 = !DILocation(line: 169, column: 22, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2379, file: !3, line: 169, column: 6)
!2386 = !DILocation(line: 169, column: 7, scope: !2385)
!2387 = !DILocation(line: 169, column: 6, scope: !2379)
!2388 = !DILocation(line: 170, column: 14, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2385, file: !3, line: 169, column: 27)
!2390 = !DILocation(line: 170, column: 18, scope: !2389)
!2391 = !DILocation(line: 170, column: 22, scope: !2389)
!2392 = !DILocation(line: 170, column: 30, scope: !2389)
!2393 = !DILocation(line: 170, column: 38, scope: !2389)
!2394 = !DILocation(line: 170, column: 3, scope: !2389)
!2395 = !DILocation(line: 171, column: 15, scope: !2389)
!2396 = !DILocation(line: 171, column: 19, scope: !2389)
!2397 = !DILocation(line: 171, column: 3, scope: !2389)
!2398 = !DILocation(line: 172, column: 2, scope: !2389)
!2399 = !DILocation(line: 173, column: 1, scope: !2379)
!2400 = distinct !DISubprogram(name: "module_put", scope: !2334, file: !2334, line: 756, type: !2401, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{null, !1660}
!2403 = !DILocalVariable(name: "module", arg: 1, scope: !2400, file: !2334, line: 756, type: !1660)
!2404 = !DILocation(line: 756, column: 46, scope: !2400)
!2405 = !DILocation(line: 758, column: 1, scope: !2400)
!2406 = distinct !DISubprogram(name: "usb_role_switch_find_by_fwnode", scope: !3, file: !3, line: 184, type: !2407, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!81, !1901}
!2409 = !DILocalVariable(name: "fwnode", arg: 1, scope: !2406, file: !3, line: 184, type: !1901)
!2410 = !DILocation(line: 184, column: 60, scope: !2406)
!2411 = !DILocalVariable(name: "dev", scope: !2406, file: !3, line: 186, type: !1583)
!2412 = !DILocation(line: 186, column: 17, scope: !2406)
!2413 = !DILocation(line: 188, column: 7, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2406, file: !3, line: 188, column: 6)
!2415 = !DILocation(line: 188, column: 6, scope: !2406)
!2416 = !DILocation(line: 189, column: 3, scope: !2414)
!2417 = !DILocation(line: 191, column: 36, scope: !2406)
!2418 = !DILocation(line: 191, column: 48, scope: !2406)
!2419 = !DILocation(line: 191, column: 8, scope: !2406)
!2420 = !DILocation(line: 191, column: 6, scope: !2406)
!2421 = !DILocation(line: 193, column: 9, scope: !2406)
!2422 = !DILocalVariable(name: "__mptr", scope: !2423, file: !3, line: 193, type: !80)
!2423 = distinct !DILexicalBlock(scope: !2406, file: !3, line: 193, column: 15)
!2424 = !DILocation(line: 193, column: 15, scope: !2423)
!2425 = !DILocation(line: 193, column: 15, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 193, column: 15)
!2427 = !DILocation(line: 193, column: 2, scope: !2406)
!2428 = !DILocation(line: 194, column: 1, scope: !2406)
!2429 = distinct !DISubprogram(name: "class_find_device_by_fwnode", scope: !1977, file: !1977, line: 152, type: !2430, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!1583, !1975, !1901}
!2432 = !DILocalVariable(name: "class", arg: 1, scope: !2429, file: !1977, line: 152, type: !1975)
!2433 = !DILocation(line: 152, column: 43, scope: !2429)
!2434 = !DILocalVariable(name: "fwnode", arg: 2, scope: !2429, file: !1977, line: 153, type: !1901)
!2435 = !DILocation(line: 153, column: 36, scope: !2429)
!2436 = !DILocation(line: 155, column: 27, scope: !2429)
!2437 = !DILocation(line: 155, column: 40, scope: !2429)
!2438 = !DILocation(line: 155, column: 9, scope: !2429)
!2439 = !DILocation(line: 155, column: 2, scope: !2429)
!2440 = !DILocalVariable(name: "parent", arg: 1, scope: !2037, file: !3, line: 304, type: !1583)
!2441 = !DILocation(line: 304, column: 41, scope: !2037)
!2442 = !DILocalVariable(name: "desc", arg: 2, scope: !2037, file: !3, line: 305, type: !2040)
!2443 = !DILocation(line: 305, column: 40, scope: !2037)
!2444 = !DILocalVariable(name: "sw", scope: !2037, file: !3, line: 307, type: !81)
!2445 = !DILocation(line: 307, column: 26, scope: !2037)
!2446 = !DILocalVariable(name: "ret", scope: !2037, file: !3, line: 308, type: !135)
!2447 = !DILocation(line: 308, column: 6, scope: !2037)
!2448 = !DILocation(line: 310, column: 7, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 310, column: 6)
!2450 = !DILocation(line: 310, column: 12, scope: !2449)
!2451 = !DILocation(line: 310, column: 16, scope: !2449)
!2452 = !DILocation(line: 310, column: 22, scope: !2449)
!2453 = !DILocation(line: 310, column: 6, scope: !2037)
!2454 = !DILocation(line: 311, column: 10, scope: !2449)
!2455 = !DILocation(line: 311, column: 3, scope: !2449)
!2456 = !DILocation(line: 313, column: 7, scope: !2037)
!2457 = !DILocation(line: 313, column: 5, scope: !2037)
!2458 = !DILocation(line: 314, column: 7, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 314, column: 6)
!2460 = !DILocation(line: 314, column: 6, scope: !2037)
!2461 = !DILocation(line: 315, column: 10, scope: !2459)
!2462 = !DILocation(line: 315, column: 3, scope: !2459)
!2463 = !DILocation(line: 317, column: 2, scope: !2037)
!2464 = !DILocation(line: 317, column: 2, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 317, column: 2)
!2466 = !DILocation(line: 319, column: 32, scope: !2037)
!2467 = !DILocation(line: 319, column: 38, scope: !2037)
!2468 = !DILocation(line: 319, column: 2, scope: !2037)
!2469 = !DILocation(line: 319, column: 6, scope: !2037)
!2470 = !DILocation(line: 319, column: 30, scope: !2037)
!2471 = !DILocation(line: 320, column: 18, scope: !2037)
!2472 = !DILocation(line: 320, column: 24, scope: !2037)
!2473 = !DILocation(line: 320, column: 2, scope: !2037)
!2474 = !DILocation(line: 320, column: 6, scope: !2037)
!2475 = !DILocation(line: 320, column: 16, scope: !2037)
!2476 = !DILocation(line: 321, column: 18, scope: !2037)
!2477 = !DILocation(line: 321, column: 24, scope: !2037)
!2478 = !DILocation(line: 321, column: 2, scope: !2037)
!2479 = !DILocation(line: 321, column: 6, scope: !2037)
!2480 = !DILocation(line: 321, column: 16, scope: !2037)
!2481 = !DILocation(line: 322, column: 12, scope: !2037)
!2482 = !DILocation(line: 322, column: 18, scope: !2037)
!2483 = !DILocation(line: 322, column: 2, scope: !2037)
!2484 = !DILocation(line: 322, column: 6, scope: !2037)
!2485 = !DILocation(line: 322, column: 10, scope: !2037)
!2486 = !DILocation(line: 323, column: 12, scope: !2037)
!2487 = !DILocation(line: 323, column: 18, scope: !2037)
!2488 = !DILocation(line: 323, column: 2, scope: !2037)
!2489 = !DILocation(line: 323, column: 6, scope: !2037)
!2490 = !DILocation(line: 323, column: 10, scope: !2037)
!2491 = !DILocation(line: 324, column: 12, scope: !2037)
!2492 = !DILocation(line: 324, column: 18, scope: !2037)
!2493 = !DILocation(line: 324, column: 2, scope: !2037)
!2494 = !DILocation(line: 324, column: 6, scope: !2037)
!2495 = !DILocation(line: 324, column: 10, scope: !2037)
!2496 = !DILocation(line: 326, column: 19, scope: !2037)
!2497 = !DILocation(line: 326, column: 2, scope: !2037)
!2498 = !DILocation(line: 326, column: 6, scope: !2037)
!2499 = !DILocation(line: 326, column: 10, scope: !2037)
!2500 = !DILocation(line: 326, column: 17, scope: !2037)
!2501 = !DILocation(line: 327, column: 19, scope: !2037)
!2502 = !DILocation(line: 327, column: 25, scope: !2037)
!2503 = !DILocation(line: 327, column: 2, scope: !2037)
!2504 = !DILocation(line: 327, column: 6, scope: !2037)
!2505 = !DILocation(line: 327, column: 10, scope: !2037)
!2506 = !DILocation(line: 327, column: 17, scope: !2037)
!2507 = !DILocation(line: 328, column: 18, scope: !2037)
!2508 = !DILocation(line: 328, column: 2, scope: !2037)
!2509 = !DILocation(line: 328, column: 6, scope: !2037)
!2510 = !DILocation(line: 328, column: 10, scope: !2037)
!2511 = !DILocation(line: 328, column: 16, scope: !2037)
!2512 = !DILocation(line: 329, column: 2, scope: !2037)
!2513 = !DILocation(line: 329, column: 6, scope: !2037)
!2514 = !DILocation(line: 329, column: 10, scope: !2037)
!2515 = !DILocation(line: 329, column: 15, scope: !2037)
!2516 = !DILocation(line: 330, column: 19, scope: !2037)
!2517 = !DILocation(line: 330, column: 23, scope: !2037)
!2518 = !DILocation(line: 330, column: 28, scope: !2037)
!2519 = !DILocation(line: 330, column: 34, scope: !2037)
!2520 = !DILocation(line: 330, column: 2, scope: !2037)
!2521 = !DILocation(line: 331, column: 16, scope: !2037)
!2522 = !DILocation(line: 331, column: 20, scope: !2037)
!2523 = !DILocation(line: 332, column: 8, scope: !2037)
!2524 = !DILocation(line: 332, column: 14, scope: !2037)
!2525 = !DILocation(line: 332, column: 21, scope: !2037)
!2526 = !DILocation(line: 332, column: 27, scope: !2037)
!2527 = !DILocation(line: 332, column: 43, scope: !2037)
!2528 = !DILocation(line: 332, column: 34, scope: !2037)
!2529 = !DILocation(line: 331, column: 2, scope: !2037)
!2530 = !DILocation(line: 334, column: 25, scope: !2037)
!2531 = !DILocation(line: 334, column: 29, scope: !2037)
!2532 = !DILocation(line: 334, column: 8, scope: !2037)
!2533 = !DILocation(line: 334, column: 6, scope: !2037)
!2534 = !DILocation(line: 335, column: 6, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 335, column: 6)
!2536 = !DILocation(line: 335, column: 6, scope: !2037)
!2537 = !DILocation(line: 336, column: 15, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 335, column: 11)
!2539 = !DILocation(line: 336, column: 19, scope: !2538)
!2540 = !DILocation(line: 336, column: 3, scope: !2538)
!2541 = !DILocation(line: 337, column: 18, scope: !2538)
!2542 = !DILocation(line: 337, column: 10, scope: !2538)
!2543 = !DILocation(line: 337, column: 3, scope: !2538)
!2544 = !DILocation(line: 342, column: 9, scope: !2037)
!2545 = !DILocation(line: 342, column: 2, scope: !2037)
!2546 = !DILocation(line: 343, column: 1, scope: !2037)
!2547 = distinct !DISubprogram(name: "ERR_PTR", scope: !2165, file: !2165, line: 24, type: !2548, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!80, !186}
!2550 = !DILocalVariable(name: "error", arg: 1, scope: !2547, file: !2165, line: 24, type: !186)
!2551 = !DILocation(line: 24, column: 48, scope: !2547)
!2552 = !DILocation(line: 26, column: 18, scope: !2547)
!2553 = !DILocation(line: 26, column: 9, scope: !2547)
!2554 = !DILocation(line: 26, column: 2, scope: !2547)
!2555 = distinct !DISubprogram(name: "kzalloc", scope: !73, file: !73, line: 662, type: !2556, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!80, !198, !1454}
!2558 = !DILocalVariable(name: "s", arg: 1, scope: !2559, file: !73, line: 445, type: !1044)
!2559 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !73, file: !73, line: 445, type: !2560, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!80, !1044, !1454, !198}
!2562 = !DILocation(line: 445, column: 72, scope: !2559, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 552, column: 10, scope: !2564, inlinedAt: !2567)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !73, line: 540, column: 34)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !73, line: 540, column: 6)
!2566 = distinct !DISubprogram(name: "kmalloc", scope: !73, file: !73, line: 538, type: !2556, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2567 = distinct !DILocation(line: 664, column: 9, scope: !2555)
!2568 = !DILocalVariable(name: "flags", arg: 2, scope: !2559, file: !73, line: 446, type: !1454)
!2569 = !DILocation(line: 446, column: 9, scope: !2559, inlinedAt: !2563)
!2570 = !DILocalVariable(name: "size", arg: 3, scope: !2559, file: !73, line: 446, type: !198)
!2571 = !DILocation(line: 446, column: 23, scope: !2559, inlinedAt: !2563)
!2572 = !DILocalVariable(name: "ret", scope: !2559, file: !73, line: 448, type: !80)
!2573 = !DILocation(line: 448, column: 8, scope: !2559, inlinedAt: !2563)
!2574 = !DILocalVariable(name: "flags", arg: 1, scope: !2575, file: !73, line: 318, type: !1454)
!2575 = distinct !DISubprogram(name: "kmalloc_type", scope: !73, file: !73, line: 318, type: !2576, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!72, !1454}
!2578 = !DILocation(line: 318, column: 67, scope: !2575, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 553, column: 20, scope: !2564, inlinedAt: !2567)
!2580 = !DILocalVariable(name: "size", arg: 1, scope: !2581, file: !73, line: 346, type: !198)
!2581 = distinct !DISubprogram(name: "kmalloc_index", scope: !73, file: !73, line: 346, type: !2582, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!7, !198}
!2584 = !DILocation(line: 346, column: 58, scope: !2581, inlinedAt: !2585)
!2585 = distinct !DILocation(line: 547, column: 11, scope: !2564, inlinedAt: !2567)
!2586 = !DILocalVariable(name: "size", arg: 1, scope: !2587, file: !73, line: 472, type: !198)
!2587 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !73, file: !73, line: 472, type: !2588, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!80, !198, !1454, !7}
!2590 = !DILocation(line: 472, column: 28, scope: !2587, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 481, column: 9, scope: !2592, inlinedAt: !2593)
!2592 = distinct !DISubprogram(name: "kmalloc_large", scope: !73, file: !73, line: 478, type: !2556, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2593 = distinct !DILocation(line: 545, column: 11, scope: !2594, inlinedAt: !2567)
!2594 = distinct !DILexicalBlock(scope: !2564, file: !73, line: 544, column: 7)
!2595 = !DILocalVariable(name: "flags", arg: 2, scope: !2587, file: !73, line: 472, type: !1454)
!2596 = !DILocation(line: 472, column: 40, scope: !2587, inlinedAt: !2591)
!2597 = !DILocalVariable(name: "order", arg: 3, scope: !2587, file: !73, line: 472, type: !7)
!2598 = !DILocation(line: 472, column: 60, scope: !2587, inlinedAt: !2591)
!2599 = !DILocalVariable(name: "size", arg: 1, scope: !2592, file: !73, line: 478, type: !198)
!2600 = !DILocation(line: 478, column: 51, scope: !2592, inlinedAt: !2593)
!2601 = !DILocalVariable(name: "flags", arg: 2, scope: !2592, file: !73, line: 478, type: !1454)
!2602 = !DILocation(line: 478, column: 63, scope: !2592, inlinedAt: !2593)
!2603 = !DILocalVariable(name: "order", scope: !2592, file: !73, line: 480, type: !7)
!2604 = !DILocation(line: 480, column: 15, scope: !2592, inlinedAt: !2593)
!2605 = !DILocalVariable(name: "size", arg: 1, scope: !2566, file: !73, line: 538, type: !198)
!2606 = !DILocation(line: 538, column: 45, scope: !2566, inlinedAt: !2567)
!2607 = !DILocalVariable(name: "flags", arg: 2, scope: !2566, file: !73, line: 538, type: !1454)
!2608 = !DILocation(line: 538, column: 57, scope: !2566, inlinedAt: !2567)
!2609 = !DILocalVariable(name: "index", scope: !2564, file: !73, line: 542, type: !7)
!2610 = !DILocation(line: 542, column: 16, scope: !2564, inlinedAt: !2567)
!2611 = !DILocalVariable(name: "size", arg: 1, scope: !2555, file: !73, line: 662, type: !198)
!2612 = !DILocation(line: 662, column: 36, scope: !2555)
!2613 = !DILocalVariable(name: "flags", arg: 2, scope: !2555, file: !73, line: 662, type: !1454)
!2614 = !DILocation(line: 662, column: 48, scope: !2555)
!2615 = !DILocation(line: 664, column: 17, scope: !2555)
!2616 = !DILocation(line: 664, column: 23, scope: !2555)
!2617 = !DILocation(line: 664, column: 29, scope: !2555)
!2618 = !DILocation(line: 540, column: 27, scope: !2565, inlinedAt: !2567)
!2619 = !DILocation(line: 540, column: 6, scope: !2565, inlinedAt: !2567)
!2620 = !DILocation(line: 540, column: 6, scope: !2566, inlinedAt: !2567)
!2621 = !DILocation(line: 544, column: 7, scope: !2594, inlinedAt: !2567)
!2622 = !DILocation(line: 544, column: 12, scope: !2594, inlinedAt: !2567)
!2623 = !DILocation(line: 544, column: 7, scope: !2564, inlinedAt: !2567)
!2624 = !DILocation(line: 545, column: 25, scope: !2594, inlinedAt: !2567)
!2625 = !DILocation(line: 545, column: 31, scope: !2594, inlinedAt: !2567)
!2626 = !DILocation(line: 480, column: 33, scope: !2592, inlinedAt: !2593)
!2627 = !DILocation(line: 480, column: 23, scope: !2592, inlinedAt: !2593)
!2628 = !DILocation(line: 481, column: 29, scope: !2592, inlinedAt: !2593)
!2629 = !DILocation(line: 481, column: 35, scope: !2592, inlinedAt: !2593)
!2630 = !DILocation(line: 481, column: 42, scope: !2592, inlinedAt: !2593)
!2631 = !DILocation(line: 474, column: 23, scope: !2587, inlinedAt: !2591)
!2632 = !DILocation(line: 474, column: 29, scope: !2587, inlinedAt: !2591)
!2633 = !DILocation(line: 474, column: 36, scope: !2587, inlinedAt: !2591)
!2634 = !DILocation(line: 474, column: 9, scope: !2587, inlinedAt: !2591)
!2635 = !DILocation(line: 545, column: 4, scope: !2594, inlinedAt: !2567)
!2636 = !DILocation(line: 547, column: 25, scope: !2564, inlinedAt: !2567)
!2637 = !DILocation(line: 348, column: 7, scope: !2638, inlinedAt: !2585)
!2638 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 348, column: 6)
!2639 = !DILocation(line: 348, column: 6, scope: !2581, inlinedAt: !2585)
!2640 = !DILocation(line: 349, column: 3, scope: !2638, inlinedAt: !2585)
!2641 = !DILocation(line: 351, column: 6, scope: !2642, inlinedAt: !2585)
!2642 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 351, column: 6)
!2643 = !DILocation(line: 351, column: 11, scope: !2642, inlinedAt: !2585)
!2644 = !DILocation(line: 351, column: 6, scope: !2581, inlinedAt: !2585)
!2645 = !DILocation(line: 352, column: 3, scope: !2642, inlinedAt: !2585)
!2646 = !DILocation(line: 354, column: 32, scope: !2647, inlinedAt: !2585)
!2647 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 354, column: 6)
!2648 = !DILocation(line: 354, column: 37, scope: !2647, inlinedAt: !2585)
!2649 = !DILocation(line: 354, column: 42, scope: !2647, inlinedAt: !2585)
!2650 = !DILocation(line: 354, column: 45, scope: !2647, inlinedAt: !2585)
!2651 = !DILocation(line: 354, column: 50, scope: !2647, inlinedAt: !2585)
!2652 = !DILocation(line: 354, column: 6, scope: !2581, inlinedAt: !2585)
!2653 = !DILocation(line: 355, column: 3, scope: !2647, inlinedAt: !2585)
!2654 = !DILocation(line: 356, column: 32, scope: !2655, inlinedAt: !2585)
!2655 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 356, column: 6)
!2656 = !DILocation(line: 356, column: 37, scope: !2655, inlinedAt: !2585)
!2657 = !DILocation(line: 356, column: 43, scope: !2655, inlinedAt: !2585)
!2658 = !DILocation(line: 356, column: 46, scope: !2655, inlinedAt: !2585)
!2659 = !DILocation(line: 356, column: 51, scope: !2655, inlinedAt: !2585)
!2660 = !DILocation(line: 356, column: 6, scope: !2581, inlinedAt: !2585)
!2661 = !DILocation(line: 357, column: 3, scope: !2655, inlinedAt: !2585)
!2662 = !DILocation(line: 358, column: 6, scope: !2663, inlinedAt: !2585)
!2663 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 358, column: 6)
!2664 = !DILocation(line: 358, column: 11, scope: !2663, inlinedAt: !2585)
!2665 = !DILocation(line: 358, column: 6, scope: !2581, inlinedAt: !2585)
!2666 = !DILocation(line: 358, column: 26, scope: !2663, inlinedAt: !2585)
!2667 = !DILocation(line: 359, column: 6, scope: !2668, inlinedAt: !2585)
!2668 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 359, column: 6)
!2669 = !DILocation(line: 359, column: 11, scope: !2668, inlinedAt: !2585)
!2670 = !DILocation(line: 359, column: 6, scope: !2581, inlinedAt: !2585)
!2671 = !DILocation(line: 359, column: 26, scope: !2668, inlinedAt: !2585)
!2672 = !DILocation(line: 360, column: 6, scope: !2673, inlinedAt: !2585)
!2673 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 360, column: 6)
!2674 = !DILocation(line: 360, column: 11, scope: !2673, inlinedAt: !2585)
!2675 = !DILocation(line: 360, column: 6, scope: !2581, inlinedAt: !2585)
!2676 = !DILocation(line: 360, column: 26, scope: !2673, inlinedAt: !2585)
!2677 = !DILocation(line: 361, column: 6, scope: !2678, inlinedAt: !2585)
!2678 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 361, column: 6)
!2679 = !DILocation(line: 361, column: 11, scope: !2678, inlinedAt: !2585)
!2680 = !DILocation(line: 361, column: 6, scope: !2581, inlinedAt: !2585)
!2681 = !DILocation(line: 361, column: 26, scope: !2678, inlinedAt: !2585)
!2682 = !DILocation(line: 362, column: 6, scope: !2683, inlinedAt: !2585)
!2683 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 362, column: 6)
!2684 = !DILocation(line: 362, column: 11, scope: !2683, inlinedAt: !2585)
!2685 = !DILocation(line: 362, column: 6, scope: !2581, inlinedAt: !2585)
!2686 = !DILocation(line: 362, column: 26, scope: !2683, inlinedAt: !2585)
!2687 = !DILocation(line: 363, column: 6, scope: !2688, inlinedAt: !2585)
!2688 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 363, column: 6)
!2689 = !DILocation(line: 363, column: 11, scope: !2688, inlinedAt: !2585)
!2690 = !DILocation(line: 363, column: 6, scope: !2581, inlinedAt: !2585)
!2691 = !DILocation(line: 363, column: 26, scope: !2688, inlinedAt: !2585)
!2692 = !DILocation(line: 364, column: 6, scope: !2693, inlinedAt: !2585)
!2693 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 364, column: 6)
!2694 = !DILocation(line: 364, column: 11, scope: !2693, inlinedAt: !2585)
!2695 = !DILocation(line: 364, column: 6, scope: !2581, inlinedAt: !2585)
!2696 = !DILocation(line: 364, column: 26, scope: !2693, inlinedAt: !2585)
!2697 = !DILocation(line: 365, column: 6, scope: !2698, inlinedAt: !2585)
!2698 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 365, column: 6)
!2699 = !DILocation(line: 365, column: 11, scope: !2698, inlinedAt: !2585)
!2700 = !DILocation(line: 365, column: 6, scope: !2581, inlinedAt: !2585)
!2701 = !DILocation(line: 365, column: 26, scope: !2698, inlinedAt: !2585)
!2702 = !DILocation(line: 366, column: 6, scope: !2703, inlinedAt: !2585)
!2703 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 366, column: 6)
!2704 = !DILocation(line: 366, column: 11, scope: !2703, inlinedAt: !2585)
!2705 = !DILocation(line: 366, column: 6, scope: !2581, inlinedAt: !2585)
!2706 = !DILocation(line: 366, column: 26, scope: !2703, inlinedAt: !2585)
!2707 = !DILocation(line: 367, column: 6, scope: !2708, inlinedAt: !2585)
!2708 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 367, column: 6)
!2709 = !DILocation(line: 367, column: 11, scope: !2708, inlinedAt: !2585)
!2710 = !DILocation(line: 367, column: 6, scope: !2581, inlinedAt: !2585)
!2711 = !DILocation(line: 367, column: 26, scope: !2708, inlinedAt: !2585)
!2712 = !DILocation(line: 368, column: 6, scope: !2713, inlinedAt: !2585)
!2713 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 368, column: 6)
!2714 = !DILocation(line: 368, column: 11, scope: !2713, inlinedAt: !2585)
!2715 = !DILocation(line: 368, column: 6, scope: !2581, inlinedAt: !2585)
!2716 = !DILocation(line: 368, column: 26, scope: !2713, inlinedAt: !2585)
!2717 = !DILocation(line: 369, column: 6, scope: !2718, inlinedAt: !2585)
!2718 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 369, column: 6)
!2719 = !DILocation(line: 369, column: 11, scope: !2718, inlinedAt: !2585)
!2720 = !DILocation(line: 369, column: 6, scope: !2581, inlinedAt: !2585)
!2721 = !DILocation(line: 369, column: 26, scope: !2718, inlinedAt: !2585)
!2722 = !DILocation(line: 370, column: 6, scope: !2723, inlinedAt: !2585)
!2723 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 370, column: 6)
!2724 = !DILocation(line: 370, column: 11, scope: !2723, inlinedAt: !2585)
!2725 = !DILocation(line: 370, column: 6, scope: !2581, inlinedAt: !2585)
!2726 = !DILocation(line: 370, column: 26, scope: !2723, inlinedAt: !2585)
!2727 = !DILocation(line: 371, column: 6, scope: !2728, inlinedAt: !2585)
!2728 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 371, column: 6)
!2729 = !DILocation(line: 371, column: 11, scope: !2728, inlinedAt: !2585)
!2730 = !DILocation(line: 371, column: 6, scope: !2581, inlinedAt: !2585)
!2731 = !DILocation(line: 371, column: 26, scope: !2728, inlinedAt: !2585)
!2732 = !DILocation(line: 372, column: 6, scope: !2733, inlinedAt: !2585)
!2733 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 372, column: 6)
!2734 = !DILocation(line: 372, column: 11, scope: !2733, inlinedAt: !2585)
!2735 = !DILocation(line: 372, column: 6, scope: !2581, inlinedAt: !2585)
!2736 = !DILocation(line: 372, column: 26, scope: !2733, inlinedAt: !2585)
!2737 = !DILocation(line: 373, column: 6, scope: !2738, inlinedAt: !2585)
!2738 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 373, column: 6)
!2739 = !DILocation(line: 373, column: 11, scope: !2738, inlinedAt: !2585)
!2740 = !DILocation(line: 373, column: 6, scope: !2581, inlinedAt: !2585)
!2741 = !DILocation(line: 373, column: 26, scope: !2738, inlinedAt: !2585)
!2742 = !DILocation(line: 374, column: 6, scope: !2743, inlinedAt: !2585)
!2743 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 374, column: 6)
!2744 = !DILocation(line: 374, column: 11, scope: !2743, inlinedAt: !2585)
!2745 = !DILocation(line: 374, column: 6, scope: !2581, inlinedAt: !2585)
!2746 = !DILocation(line: 374, column: 26, scope: !2743, inlinedAt: !2585)
!2747 = !DILocation(line: 375, column: 6, scope: !2748, inlinedAt: !2585)
!2748 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 375, column: 6)
!2749 = !DILocation(line: 375, column: 11, scope: !2748, inlinedAt: !2585)
!2750 = !DILocation(line: 375, column: 6, scope: !2581, inlinedAt: !2585)
!2751 = !DILocation(line: 375, column: 27, scope: !2748, inlinedAt: !2585)
!2752 = !DILocation(line: 376, column: 6, scope: !2753, inlinedAt: !2585)
!2753 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 376, column: 6)
!2754 = !DILocation(line: 376, column: 11, scope: !2753, inlinedAt: !2585)
!2755 = !DILocation(line: 376, column: 6, scope: !2581, inlinedAt: !2585)
!2756 = !DILocation(line: 376, column: 32, scope: !2753, inlinedAt: !2585)
!2757 = !DILocation(line: 377, column: 6, scope: !2758, inlinedAt: !2585)
!2758 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 377, column: 6)
!2759 = !DILocation(line: 377, column: 11, scope: !2758, inlinedAt: !2585)
!2760 = !DILocation(line: 377, column: 6, scope: !2581, inlinedAt: !2585)
!2761 = !DILocation(line: 377, column: 32, scope: !2758, inlinedAt: !2585)
!2762 = !DILocation(line: 378, column: 6, scope: !2763, inlinedAt: !2585)
!2763 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 378, column: 6)
!2764 = !DILocation(line: 378, column: 11, scope: !2763, inlinedAt: !2585)
!2765 = !DILocation(line: 378, column: 6, scope: !2581, inlinedAt: !2585)
!2766 = !DILocation(line: 378, column: 32, scope: !2763, inlinedAt: !2585)
!2767 = !DILocation(line: 379, column: 6, scope: !2768, inlinedAt: !2585)
!2768 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 379, column: 6)
!2769 = !DILocation(line: 379, column: 11, scope: !2768, inlinedAt: !2585)
!2770 = !DILocation(line: 379, column: 6, scope: !2581, inlinedAt: !2585)
!2771 = !DILocation(line: 379, column: 33, scope: !2768, inlinedAt: !2585)
!2772 = !DILocation(line: 380, column: 6, scope: !2773, inlinedAt: !2585)
!2773 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 380, column: 6)
!2774 = !DILocation(line: 380, column: 11, scope: !2773, inlinedAt: !2585)
!2775 = !DILocation(line: 380, column: 6, scope: !2581, inlinedAt: !2585)
!2776 = !DILocation(line: 380, column: 33, scope: !2773, inlinedAt: !2585)
!2777 = !DILocation(line: 381, column: 6, scope: !2778, inlinedAt: !2585)
!2778 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 381, column: 6)
!2779 = !DILocation(line: 381, column: 11, scope: !2778, inlinedAt: !2585)
!2780 = !DILocation(line: 381, column: 6, scope: !2581, inlinedAt: !2585)
!2781 = !DILocation(line: 381, column: 33, scope: !2778, inlinedAt: !2585)
!2782 = !DILocation(line: 382, column: 2, scope: !2783, inlinedAt: !2585)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !73, line: 382, column: 2)
!2784 = distinct !DILexicalBlock(scope: !2581, file: !73, line: 382, column: 2)
!2785 = !{i32 -2143529748, i32 -2143529719, i32 -2143529673, i32 -2143529615, i32 -2143529561, i32 -2143529507, i32 -2143529452, i32 -2143529421}
!2786 = !DILocation(line: 382, column: 2, scope: !2787, inlinedAt: !2585)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !73, line: 382, column: 2)
!2788 = distinct !DILexicalBlock(scope: !2784, file: !73, line: 382, column: 2)
!2789 = !{i32 -2143528978, i32 -2143528971, i32 -2143528917, i32 -2143528886, i32 -2143528856}
!2790 = !DILocation(line: 382, column: 2, scope: !2788, inlinedAt: !2585)
!2791 = !DILocation(line: 386, column: 1, scope: !2581, inlinedAt: !2585)
!2792 = !DILocation(line: 547, column: 9, scope: !2564, inlinedAt: !2567)
!2793 = !DILocation(line: 549, column: 8, scope: !2794, inlinedAt: !2567)
!2794 = distinct !DILexicalBlock(scope: !2564, file: !73, line: 549, column: 7)
!2795 = !DILocation(line: 549, column: 7, scope: !2564, inlinedAt: !2567)
!2796 = !DILocation(line: 550, column: 4, scope: !2794, inlinedAt: !2567)
!2797 = !DILocation(line: 553, column: 33, scope: !2564, inlinedAt: !2567)
!2798 = !DILocation(line: 325, column: 6, scope: !2799, inlinedAt: !2579)
!2799 = distinct !DILexicalBlock(scope: !2575, file: !73, line: 325, column: 6)
!2800 = !DILocation(line: 325, column: 6, scope: !2575, inlinedAt: !2579)
!2801 = !DILocation(line: 326, column: 3, scope: !2799, inlinedAt: !2579)
!2802 = !DILocation(line: 332, column: 9, scope: !2575, inlinedAt: !2579)
!2803 = !DILocation(line: 332, column: 15, scope: !2575, inlinedAt: !2579)
!2804 = !DILocation(line: 332, column: 2, scope: !2575, inlinedAt: !2579)
!2805 = !DILocation(line: 336, column: 1, scope: !2575, inlinedAt: !2579)
!2806 = !DILocation(line: 553, column: 5, scope: !2564, inlinedAt: !2567)
!2807 = !DILocation(line: 553, column: 41, scope: !2564, inlinedAt: !2567)
!2808 = !DILocation(line: 554, column: 5, scope: !2564, inlinedAt: !2567)
!2809 = !DILocation(line: 554, column: 12, scope: !2564, inlinedAt: !2567)
!2810 = !DILocation(line: 448, column: 31, scope: !2559, inlinedAt: !2563)
!2811 = !DILocation(line: 448, column: 34, scope: !2559, inlinedAt: !2563)
!2812 = !DILocation(line: 448, column: 14, scope: !2559, inlinedAt: !2563)
!2813 = !DILocation(line: 450, column: 22, scope: !2559, inlinedAt: !2563)
!2814 = !DILocation(line: 450, column: 25, scope: !2559, inlinedAt: !2563)
!2815 = !DILocation(line: 450, column: 30, scope: !2559, inlinedAt: !2563)
!2816 = !DILocation(line: 450, column: 36, scope: !2559, inlinedAt: !2563)
!2817 = !DILocation(line: 450, column: 8, scope: !2559, inlinedAt: !2563)
!2818 = !DILocation(line: 450, column: 6, scope: !2559, inlinedAt: !2563)
!2819 = !DILocation(line: 451, column: 9, scope: !2559, inlinedAt: !2563)
!2820 = !DILocation(line: 552, column: 3, scope: !2564, inlinedAt: !2567)
!2821 = !DILocation(line: 557, column: 19, scope: !2566, inlinedAt: !2567)
!2822 = !DILocation(line: 557, column: 25, scope: !2566, inlinedAt: !2567)
!2823 = !DILocation(line: 557, column: 9, scope: !2566, inlinedAt: !2567)
!2824 = !DILocation(line: 557, column: 2, scope: !2566, inlinedAt: !2567)
!2825 = !DILocation(line: 558, column: 1, scope: !2566, inlinedAt: !2567)
!2826 = !DILocation(line: 664, column: 2, scope: !2555)
!2827 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !30, file: !30, line: 660, type: !2828, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{null, !1583, !80}
!2830 = !DILocalVariable(name: "dev", arg: 1, scope: !2827, file: !30, line: 660, type: !1583)
!2831 = !DILocation(line: 660, column: 51, scope: !2827)
!2832 = !DILocalVariable(name: "data", arg: 2, scope: !2827, file: !30, line: 660, type: !80)
!2833 = !DILocation(line: 660, column: 62, scope: !2827)
!2834 = !DILocation(line: 662, column: 21, scope: !2827)
!2835 = !DILocation(line: 662, column: 2, scope: !2827)
!2836 = !DILocation(line: 662, column: 7, scope: !2827)
!2837 = !DILocation(line: 662, column: 19, scope: !2827)
!2838 = !DILocation(line: 663, column: 1, scope: !2827)
!2839 = distinct !DISubprogram(name: "dev_name", scope: !30, file: !30, line: 609, type: !2840, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!91, !1907}
!2842 = !DILocalVariable(name: "dev", arg: 1, scope: !2839, file: !30, line: 609, type: !1907)
!2843 = !DILocation(line: 609, column: 57, scope: !2839)
!2844 = !DILocation(line: 612, column: 6, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2839, file: !30, line: 612, column: 6)
!2846 = !DILocation(line: 612, column: 11, scope: !2845)
!2847 = !DILocation(line: 612, column: 6, scope: !2839)
!2848 = !DILocation(line: 613, column: 10, scope: !2845)
!2849 = !DILocation(line: 613, column: 15, scope: !2845)
!2850 = !DILocation(line: 613, column: 3, scope: !2845)
!2851 = !DILocation(line: 615, column: 23, scope: !2839)
!2852 = !DILocation(line: 615, column: 28, scope: !2839)
!2853 = !DILocation(line: 615, column: 9, scope: !2839)
!2854 = !DILocation(line: 615, column: 2, scope: !2839)
!2855 = !DILocation(line: 616, column: 1, scope: !2839)
!2856 = distinct !DISubprogram(name: "usb_role_switch_unregister", scope: !3, file: !3, line: 352, type: !2380, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2857 = !DILocalVariable(name: "sw", arg: 1, scope: !2856, file: !3, line: 352, type: !81)
!2858 = !DILocation(line: 352, column: 57, scope: !2856)
!2859 = !DILocation(line: 354, column: 22, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 354, column: 6)
!2861 = !DILocation(line: 354, column: 7, scope: !2860)
!2862 = !DILocation(line: 354, column: 6, scope: !2856)
!2863 = !DILocation(line: 355, column: 22, scope: !2860)
!2864 = !DILocation(line: 355, column: 26, scope: !2860)
!2865 = !DILocation(line: 355, column: 3, scope: !2860)
!2866 = !DILocation(line: 356, column: 1, scope: !2856)
!2867 = distinct !DISubprogram(name: "usb_role_switch_set_drvdata", scope: !3, file: !3, line: 364, type: !2868, scopeLine: 365, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{null, !81, !80}
!2870 = !DILocalVariable(name: "sw", arg: 1, scope: !2867, file: !3, line: 364, type: !81)
!2871 = !DILocation(line: 364, column: 58, scope: !2867)
!2872 = !DILocalVariable(name: "data", arg: 2, scope: !2867, file: !3, line: 364, type: !80)
!2873 = !DILocation(line: 364, column: 68, scope: !2867)
!2874 = !DILocation(line: 366, column: 19, scope: !2867)
!2875 = !DILocation(line: 366, column: 23, scope: !2867)
!2876 = !DILocation(line: 366, column: 28, scope: !2867)
!2877 = !DILocation(line: 366, column: 2, scope: !2867)
!2878 = !DILocation(line: 367, column: 1, scope: !2867)
!2879 = distinct !DISubprogram(name: "usb_role_switch_get_drvdata", scope: !3, file: !3, line: 374, type: !2880, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!80, !81}
!2882 = !DILocalVariable(name: "sw", arg: 1, scope: !2879, file: !3, line: 374, type: !81)
!2883 = !DILocation(line: 374, column: 59, scope: !2879)
!2884 = !DILocation(line: 376, column: 26, scope: !2879)
!2885 = !DILocation(line: 376, column: 30, scope: !2879)
!2886 = !DILocation(line: 376, column: 9, scope: !2879)
!2887 = !DILocation(line: 376, column: 2, scope: !2879)
!2888 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !2889, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!80, !1907}
!2891 = !DILocalVariable(name: "dev", arg: 1, scope: !2888, file: !30, line: 655, type: !1907)
!2892 = !DILocation(line: 655, column: 58, scope: !2888)
!2893 = !DILocation(line: 657, column: 9, scope: !2888)
!2894 = !DILocation(line: 657, column: 14, scope: !2888)
!2895 = !DILocation(line: 657, column: 2, scope: !2888)
!2896 = !DILocation(line: 382, column: 15, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 382, column: 15)
!2898 = !DILocation(line: 382, column: 13, scope: !2117)
!2899 = !DILocation(line: 383, column: 25, scope: !2117)
!2900 = !DILocation(line: 383, column: 9, scope: !2117)
!2901 = !DILocation(line: 383, column: 2, scope: !2117)
!2902 = distinct !DISubprogram(name: "usb_roles_exit", scope: !3, file: !3, line: 387, type: !2060, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2903 = !DILocation(line: 389, column: 16, scope: !2902)
!2904 = !DILocation(line: 389, column: 2, scope: !2902)
!2905 = !DILocation(line: 390, column: 1, scope: !2902)
!2906 = distinct !DISubprogram(name: "get_order", scope: !2907, file: !2907, line: 29, type: !2908, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2907 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!135, !201}
!2910 = !DILocalVariable(name: "x", arg: 1, scope: !2911, file: !2912, line: 366, type: !272)
!2911 = distinct !DISubprogram(name: "fls64", scope: !2912, file: !2912, line: 366, type: !2913, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2912 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!135, !272}
!2915 = !DILocation(line: 366, column: 40, scope: !2911, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 46, column: 9, scope: !2906)
!2917 = !DILocalVariable(name: "bitpos", scope: !2911, file: !2912, line: 368, type: !135)
!2918 = !DILocation(line: 368, column: 6, scope: !2911, inlinedAt: !2916)
!2919 = !DILocalVariable(name: "size", arg: 1, scope: !2906, file: !2907, line: 29, type: !201)
!2920 = !DILocation(line: 29, column: 63, scope: !2906)
!2921 = !DILocation(line: 31, column: 27, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2906, file: !2907, line: 31, column: 6)
!2923 = !DILocation(line: 31, column: 6, scope: !2922)
!2924 = !DILocation(line: 31, column: 6, scope: !2906)
!2925 = !DILocation(line: 32, column: 8, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !2907, line: 32, column: 7)
!2927 = distinct !DILexicalBlock(scope: !2922, file: !2907, line: 31, column: 34)
!2928 = !DILocation(line: 32, column: 7, scope: !2927)
!2929 = !DILocation(line: 33, column: 4, scope: !2926)
!2930 = !DILocation(line: 35, column: 7, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2927, file: !2907, line: 35, column: 7)
!2932 = !DILocation(line: 35, column: 12, scope: !2931)
!2933 = !DILocation(line: 35, column: 7, scope: !2927)
!2934 = !DILocation(line: 36, column: 4, scope: !2931)
!2935 = !DILocation(line: 38, column: 10, scope: !2927)
!2936 = !DILocation(line: 38, column: 28, scope: !2927)
!2937 = !DILocation(line: 38, column: 41, scope: !2927)
!2938 = !DILocation(line: 38, column: 3, scope: !2927)
!2939 = !DILocation(line: 41, column: 6, scope: !2906)
!2940 = !DILocation(line: 42, column: 7, scope: !2906)
!2941 = !DILocation(line: 46, column: 15, scope: !2906)
!2942 = !DILocation(line: 374, column: 2, scope: !2911, inlinedAt: !2916)
!2943 = !DILocation(line: 376, column: 14, scope: !2911, inlinedAt: !2916)
!2944 = !{i32 388307}
!2945 = !DILocation(line: 377, column: 9, scope: !2911, inlinedAt: !2916)
!2946 = !DILocation(line: 377, column: 16, scope: !2911, inlinedAt: !2916)
!2947 = !DILocation(line: 46, column: 2, scope: !2906)
!2948 = !DILocation(line: 48, column: 1, scope: !2906)
!2949 = distinct !DISubprogram(name: "__ilog2_u64", scope: !2950, file: !2950, line: 30, type: !2951, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2950 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!135, !270}
!2953 = !DILocation(line: 366, column: 40, scope: !2911, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 32, column: 9, scope: !2949)
!2955 = !DILocation(line: 368, column: 6, scope: !2911, inlinedAt: !2954)
!2956 = !DILocalVariable(name: "n", arg: 1, scope: !2949, file: !2950, line: 30, type: !270)
!2957 = !DILocation(line: 30, column: 21, scope: !2949)
!2958 = !DILocation(line: 32, column: 15, scope: !2949)
!2959 = !DILocation(line: 374, column: 2, scope: !2911, inlinedAt: !2954)
!2960 = !DILocation(line: 376, column: 14, scope: !2911, inlinedAt: !2954)
!2961 = !DILocation(line: 377, column: 9, scope: !2911, inlinedAt: !2954)
!2962 = !DILocation(line: 377, column: 16, scope: !2911, inlinedAt: !2954)
!2963 = !DILocation(line: 32, column: 18, scope: !2949)
!2964 = !DILocation(line: 32, column: 2, scope: !2949)
!2965 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2966, file: !2966, line: 137, type: !2967, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2966 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!80, !1044, !1385, !198, !1454}
!2969 = !DILocalVariable(name: "s", arg: 1, scope: !2965, file: !2966, line: 137, type: !1044)
!2970 = !DILocation(line: 137, column: 54, scope: !2965)
!2971 = !DILocalVariable(name: "object", arg: 2, scope: !2965, file: !2966, line: 137, type: !1385)
!2972 = !DILocation(line: 137, column: 69, scope: !2965)
!2973 = !DILocalVariable(name: "size", arg: 3, scope: !2965, file: !2966, line: 138, type: !198)
!2974 = !DILocation(line: 138, column: 12, scope: !2965)
!2975 = !DILocalVariable(name: "flags", arg: 4, scope: !2965, file: !2966, line: 138, type: !1454)
!2976 = !DILocation(line: 138, column: 24, scope: !2965)
!2977 = !DILocation(line: 140, column: 17, scope: !2965)
!2978 = !DILocation(line: 140, column: 2, scope: !2965)
!2979 = distinct !DISubprogram(name: "usb_role_switch_uevent", scope: !3, file: !3, line: 264, type: !1597, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2980 = !DILocalVariable(name: "dev", arg: 1, scope: !2979, file: !3, line: 264, type: !1583)
!2981 = !DILocation(line: 264, column: 39, scope: !2979)
!2982 = !DILocalVariable(name: "env", arg: 2, scope: !2979, file: !3, line: 264, type: !146)
!2983 = !DILocation(line: 264, column: 68, scope: !2979)
!2984 = !DILocalVariable(name: "ret", scope: !2979, file: !3, line: 266, type: !135)
!2985 = !DILocation(line: 266, column: 6, scope: !2979)
!2986 = !DILocation(line: 268, column: 23, scope: !2979)
!2987 = !DILocation(line: 268, column: 59, scope: !2979)
!2988 = !DILocation(line: 268, column: 50, scope: !2979)
!2989 = !DILocation(line: 268, column: 8, scope: !2979)
!2990 = !DILocation(line: 268, column: 6, scope: !2979)
!2991 = !DILocation(line: 269, column: 6, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 269, column: 6)
!2993 = !DILocation(line: 269, column: 6, scope: !2979)
!2994 = !DILocation(line: 270, column: 3, scope: !2992)
!2995 = !DILocation(line: 272, column: 9, scope: !2979)
!2996 = !DILocation(line: 272, column: 2, scope: !2979)
!2997 = distinct !DISubprogram(name: "usb_role_switch_release", scope: !3, file: !3, line: 275, type: !1606, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2998 = !DILocalVariable(name: "dev", arg: 1, scope: !2997, file: !3, line: 275, type: !1583)
!2999 = !DILocation(line: 275, column: 52, scope: !2997)
!3000 = !DILocalVariable(name: "sw", scope: !2997, file: !3, line: 277, type: !81)
!3001 = !DILocation(line: 277, column: 26, scope: !2997)
!3002 = !DILocalVariable(name: "__mptr", scope: !3003, file: !3, line: 277, type: !80)
!3003 = distinct !DILexicalBlock(scope: !2997, file: !3, line: 277, column: 31)
!3004 = !DILocation(line: 277, column: 31, scope: !3003)
!3005 = !DILocation(line: 277, column: 31, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 277, column: 31)
!3007 = !DILocation(line: 279, column: 8, scope: !2997)
!3008 = !DILocation(line: 279, column: 2, scope: !2997)
!3009 = !DILocation(line: 280, column: 1, scope: !2997)
!3010 = distinct !DISubprogram(name: "usb_role_switch_is_visible", scope: !3, file: !3, line: 198, type: !213, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3011 = !DILocalVariable(name: "kobj", arg: 1, scope: !3010, file: !3, line: 198, type: !102)
!3012 = !DILocation(line: 198, column: 44, scope: !3010)
!3013 = !DILocalVariable(name: "attr", arg: 2, scope: !3010, file: !3, line: 198, type: !187)
!3014 = !DILocation(line: 198, column: 68, scope: !3010)
!3015 = !DILocalVariable(name: "n", arg: 3, scope: !3010, file: !3, line: 198, type: !135)
!3016 = !DILocation(line: 198, column: 78, scope: !3010)
!3017 = !DILocalVariable(name: "dev", scope: !3010, file: !3, line: 200, type: !1583)
!3018 = !DILocation(line: 200, column: 17, scope: !3010)
!3019 = !DILocation(line: 200, column: 35, scope: !3010)
!3020 = !DILocation(line: 200, column: 23, scope: !3010)
!3021 = !DILocalVariable(name: "sw", scope: !3010, file: !3, line: 201, type: !81)
!3022 = !DILocation(line: 201, column: 26, scope: !3010)
!3023 = !DILocalVariable(name: "__mptr", scope: !3024, file: !3, line: 201, type: !80)
!3024 = distinct !DILexicalBlock(scope: !3010, file: !3, line: 201, column: 31)
!3025 = !DILocation(line: 201, column: 31, scope: !3024)
!3026 = !DILocation(line: 201, column: 31, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 201, column: 31)
!3028 = !DILocation(line: 203, column: 6, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3010, file: !3, line: 203, column: 6)
!3030 = !DILocation(line: 203, column: 10, scope: !3029)
!3031 = !DILocation(line: 203, column: 6, scope: !3010)
!3032 = !DILocation(line: 204, column: 10, scope: !3029)
!3033 = !DILocation(line: 204, column: 16, scope: !3029)
!3034 = !DILocation(line: 204, column: 3, scope: !3029)
!3035 = !DILocation(line: 206, column: 2, scope: !3010)
!3036 = !DILocation(line: 207, column: 1, scope: !3010)
!3037 = distinct !DISubprogram(name: "kobj_to_dev", scope: !30, file: !30, line: 591, type: !3038, scopeLine: 592, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!1583, !102}
!3040 = !DILocalVariable(name: "kobj", arg: 1, scope: !3037, file: !30, line: 591, type: !102)
!3041 = !DILocation(line: 591, column: 58, scope: !3037)
!3042 = !DILocalVariable(name: "__mptr", scope: !3043, file: !30, line: 593, type: !80)
!3043 = distinct !DILexicalBlock(scope: !3037, file: !30, line: 593, column: 9)
!3044 = !DILocation(line: 593, column: 9, scope: !3043)
!3045 = !DILocation(line: 593, column: 9, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3043, file: !30, line: 593, column: 9)
!3047 = !DILocation(line: 593, column: 2, scope: !3037)
!3048 = distinct !DISubprogram(name: "role_show", scope: !3, file: !3, line: 216, type: !2104, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3049 = !DILocalVariable(name: "dev", arg: 1, scope: !3048, file: !3, line: 216, type: !1583)
!3050 = !DILocation(line: 216, column: 26, scope: !3048)
!3051 = !DILocalVariable(name: "attr", arg: 2, scope: !3048, file: !3, line: 216, type: !2106)
!3052 = !DILocation(line: 216, column: 56, scope: !3048)
!3053 = !DILocalVariable(name: "buf", arg: 3, scope: !3048, file: !3, line: 216, type: !151)
!3054 = !DILocation(line: 216, column: 68, scope: !3048)
!3055 = !DILocalVariable(name: "sw", scope: !3048, file: !3, line: 218, type: !81)
!3056 = !DILocation(line: 218, column: 26, scope: !3048)
!3057 = !DILocalVariable(name: "__mptr", scope: !3058, file: !3, line: 218, type: !80)
!3058 = distinct !DILexicalBlock(scope: !3048, file: !3, line: 218, column: 31)
!3059 = !DILocation(line: 218, column: 31, scope: !3058)
!3060 = !DILocation(line: 218, column: 31, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 218, column: 31)
!3062 = !DILocalVariable(name: "role", scope: !3048, file: !3, line: 219, type: !50)
!3063 = !DILocation(line: 219, column: 16, scope: !3048)
!3064 = !DILocation(line: 219, column: 48, scope: !3048)
!3065 = !DILocation(line: 219, column: 23, scope: !3048)
!3066 = !DILocation(line: 221, column: 17, scope: !3048)
!3067 = !DILocation(line: 221, column: 40, scope: !3048)
!3068 = !DILocation(line: 221, column: 30, scope: !3048)
!3069 = !DILocation(line: 221, column: 9, scope: !3048)
!3070 = !DILocation(line: 221, column: 2, scope: !3048)
!3071 = distinct !DISubprogram(name: "role_store", scope: !3, file: !3, line: 224, type: !2109, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3072 = !DILocalVariable(name: "dev", arg: 1, scope: !3071, file: !3, line: 224, type: !1583)
!3073 = !DILocation(line: 224, column: 42, scope: !3071)
!3074 = !DILocalVariable(name: "attr", arg: 2, scope: !3071, file: !3, line: 224, type: !2106)
!3075 = !DILocation(line: 224, column: 72, scope: !3071)
!3076 = !DILocalVariable(name: "buf", arg: 3, scope: !3071, file: !3, line: 225, type: !91)
!3077 = !DILocation(line: 225, column: 18, scope: !3071)
!3078 = !DILocalVariable(name: "size", arg: 4, scope: !3071, file: !3, line: 225, type: !198)
!3079 = !DILocation(line: 225, column: 30, scope: !3071)
!3080 = !DILocalVariable(name: "sw", scope: !3071, file: !3, line: 227, type: !81)
!3081 = !DILocation(line: 227, column: 26, scope: !3071)
!3082 = !DILocalVariable(name: "__mptr", scope: !3083, file: !3, line: 227, type: !80)
!3083 = distinct !DILexicalBlock(scope: !3071, file: !3, line: 227, column: 31)
!3084 = !DILocation(line: 227, column: 31, scope: !3083)
!3085 = !DILocation(line: 227, column: 31, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3083, file: !3, line: 227, column: 31)
!3087 = !DILocalVariable(name: "ret", scope: !3071, file: !3, line: 228, type: !135)
!3088 = !DILocation(line: 228, column: 6, scope: !3071)
!3089 = !DILocation(line: 230, column: 8, scope: !3071)
!3090 = !DILocation(line: 230, column: 6, scope: !3071)
!3091 = !DILocation(line: 231, column: 6, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3071, file: !3, line: 231, column: 6)
!3093 = !DILocation(line: 231, column: 10, scope: !3092)
!3094 = !DILocation(line: 231, column: 6, scope: !3071)
!3095 = !DILocalVariable(name: "res", scope: !3096, file: !3, line: 232, type: !994)
!3096 = distinct !DILexicalBlock(scope: !3092, file: !3, line: 231, column: 15)
!3097 = !DILocation(line: 232, column: 8, scope: !3096)
!3098 = !DILocation(line: 235, column: 20, scope: !3096)
!3099 = !DILocation(line: 235, column: 9, scope: !3096)
!3100 = !DILocation(line: 235, column: 7, scope: !3096)
!3101 = !DILocation(line: 236, column: 7, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 236, column: 7)
!3103 = !DILocation(line: 236, column: 11, scope: !3102)
!3104 = !DILocation(line: 236, column: 14, scope: !3102)
!3105 = !DILocation(line: 236, column: 7, scope: !3096)
!3106 = !DILocation(line: 237, column: 4, scope: !3102)
!3107 = !DILocation(line: 238, column: 2, scope: !3096)
!3108 = !DILocation(line: 240, column: 33, scope: !3071)
!3109 = !DILocation(line: 240, column: 37, scope: !3071)
!3110 = !DILocation(line: 240, column: 8, scope: !3071)
!3111 = !DILocation(line: 240, column: 6, scope: !3071)
!3112 = !DILocation(line: 241, column: 6, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3071, file: !3, line: 241, column: 6)
!3114 = !DILocation(line: 241, column: 6, scope: !3071)
!3115 = !DILocation(line: 242, column: 10, scope: !3113)
!3116 = !DILocation(line: 242, column: 3, scope: !3113)
!3117 = !DILocation(line: 244, column: 9, scope: !3071)
!3118 = !DILocation(line: 244, column: 2, scope: !3071)
!3119 = !DILocation(line: 245, column: 1, scope: !3071)
!3120 = distinct !DISubprogram(name: "kobject_name", scope: !57, file: !57, line: 88, type: !3121, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!91, !3123}
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!3125 = !DILocalVariable(name: "kobj", arg: 1, scope: !3120, file: !57, line: 88, type: !3123)
!3126 = !DILocation(line: 88, column: 62, scope: !3120)
!3127 = !DILocation(line: 90, column: 9, scope: !3120)
!3128 = !DILocation(line: 90, column: 15, scope: !3120)
!3129 = !DILocation(line: 90, column: 2, scope: !3120)
!3130 = distinct !DISubprogram(name: "PTR_ERR_OR_ZERO", scope: !2165, file: !2165, line: 57, type: !3131, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!135, !1385}
!3133 = !DILocalVariable(name: "ptr", arg: 1, scope: !3130, file: !2165, line: 57, type: !1385)
!3134 = !DILocation(line: 57, column: 68, scope: !3130)
!3135 = !DILocation(line: 59, column: 13, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3130, file: !2165, line: 59, column: 6)
!3137 = !DILocation(line: 59, column: 6, scope: !3136)
!3138 = !DILocation(line: 59, column: 6, scope: !3130)
!3139 = !DILocation(line: 60, column: 18, scope: !3136)
!3140 = !DILocation(line: 60, column: 10, scope: !3136)
!3141 = !DILocation(line: 60, column: 3, scope: !3136)
!3142 = !DILocation(line: 62, column: 3, scope: !3136)
!3143 = !DILocation(line: 63, column: 1, scope: !3130)
!3144 = distinct !DISubprogram(name: "IS_ERR", scope: !2165, file: !2165, line: 34, type: !2166, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3145 = !DILocalVariable(name: "ptr", arg: 1, scope: !3144, file: !2165, line: 34, type: !1385)
!3146 = !DILocation(line: 34, column: 60, scope: !3144)
!3147 = !DILocation(line: 36, column: 9, scope: !3144)
!3148 = !DILocation(line: 36, column: 2, scope: !3144)
!3149 = distinct !DISubprogram(name: "PTR_ERR", scope: !2165, file: !2165, line: 29, type: !3150, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!186, !1385}
!3152 = !DILocalVariable(name: "ptr", arg: 1, scope: !3149, file: !2165, line: 29, type: !1385)
!3153 = !DILocation(line: 29, column: 61, scope: !3149)
!3154 = !DILocation(line: 31, column: 16, scope: !3149)
!3155 = !DILocation(line: 31, column: 9, scope: !3149)
!3156 = !DILocation(line: 31, column: 2, scope: !3149)
