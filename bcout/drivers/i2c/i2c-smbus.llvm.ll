; ModuleID = '../bcout/drivers/i2c/i2c-smbus.llvm.bc'
source_filename = "drivers/i2c/i2c-smbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_smbalert_driver_init6:\09\09\09"
module asm ".long\09smbalert_driver_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.i2c_driver = type { i32, i32 (%struct.i2c_client*, %struct.i2c_device_id*)*, i32 (%struct.i2c_client*)*, i32 (%struct.i2c_client*)*, void (%struct.i2c_client*)*, void (%struct.i2c_client*, i32, i32)*, i32 (%struct.i2c_client*, i32, i8*)*, %struct.device_driver, %struct.i2c_device_id*, i32 (%struct.i2c_client*, %struct.i2c_board_info*)*, i16*, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], %struct.i2c_adapter*, %struct.device, i32, i32, %struct.list_head }
%struct.i2c_adapter = type { %struct.module*, i32, %struct.i2c_algorithm*, i8*, %struct.i2c_lock_operations*, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i64, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, %struct.i2c_bus_recovery_info*, %struct.i2c_adapter_quirks*, %struct.irq_domain* }
%struct.module = type opaque
%struct.i2c_algorithm = type { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*)* }
%struct.i2c_msg = type { i16, i16, i16, i8* }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.i2c_lock_operations = type { void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)* }
%struct.rt_mutex = type { %struct.raw_spinlock, %struct.rb_root_cached, %struct.task_struct* }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wake_q_node = type { %struct.wake_q_node* }
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
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.i2c_bus_recovery_info = type { i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, %struct.gpio_desc*, %struct.gpio_desc*, %struct.pinctrl*, %struct.pinctrl_state*, %struct.pinctrl_state* }
%struct.gpio_desc = type opaque
%struct.pinctrl = type opaque
%struct.pinctrl_state = type opaque
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.attribute = type { i8*, i16 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
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
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask] }
%struct.msi_desc = type opaque
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.msi_msg = type opaque
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, i64, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8* }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry* }
%struct.proc_dir_entry = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.i2c_device_id = type { [20 x i8], i64 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, i8*, i8*, %struct.device_node*, %struct.fwnode_handle*, %struct.property_entry*, %struct.resource*, i32, i32 }
%struct.property_entry = type { i8*, i64, i8, i32, %union.anon.38 }
%union.anon.38 = type { i8* }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.workqueue_struct = type opaque
%struct.i2c_smbus_alert = type { %struct.work_struct, %struct.i2c_client* }
%struct.i2c_smbus_alert_setup = type { i32 }
%struct.alert_data = type { i16, i32, i32 }

@__UNIQUE_ID___addressable_smbalert_driver_init175 = internal global i8* bitcast (i32 ()* @smbalert_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@smbalert_driver = internal global %struct.i2c_driver { i32 0, i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @smbalert_probe, i32 (%struct.i2c_client*)* @smbalert_remove, i32 (%struct.i2c_client*)* null, void (%struct.i2c_client*)* null, void (%struct.i2c_client*, i32, i32)* null, i32 (%struct.i2c_client*, i32, i8*)* null, %struct.device_driver { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.i2c_device_id* getelementptr inbounds ([2 x %struct.i2c_device_id], [2 x %struct.i2c_device_id]* @smbalert_ids, i32 0, i32 0), i32 (%struct.i2c_client*, %struct.i2c_board_info*)* null, i16* null, %struct.list_head zeroinitializer }, align 8, !dbg !2684
@__exitcall_smbalert_driver_exit = internal global void ()* @smbalert_driver_exit, section ".exitcall.exit", align 8, !dbg !2657
@.str = private unnamed_addr constant [53 x i8] c"Different memory types mixed, not instantiating SPD\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%d/%d memory slots populated (from DMI)\0A\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"Systems with more than 4 memory slots not supported yet, not instantiating SPD\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"spd\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ee1004\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"Memory type 0x%02x not supported yet, not instantiating SPD\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Successfully instantiated SPD at 0x%hx\0A\00", align 1
@__UNIQUE_ID_author176 = internal constant [49 x i8] c"i2c_smbus.author=Jean Delvare <jdelvare@suse.de>\00", section ".modinfo", align 1, !dbg !2664
@__UNIQUE_ID_description177 = internal constant [56 x i8] c"i2c_smbus.description=SMBus protocol extensions support\00", section ".modinfo", align 1, !dbg !2669
@__UNIQUE_ID_file178 = internal constant [37 x i8] c"i2c_smbus.file=drivers/i2c/i2c-smbus\00", section ".modinfo", align 1, !dbg !2674
@__UNIQUE_ID_license179 = internal constant [22 x i8] c"i2c_smbus.license=GPL\00", section ".modinfo", align 1, !dbg !2679
@system_wq = external dso_local global %struct.workqueue_struct*, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"smbus_alert\00", align 1
@smbalert_ids = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"smbus_alert\00\00\00\00\00\00\00\00\00", i64 0 }, %struct.i2c_device_id zeroinitializer], align 16, !dbg !2686
@.str.8 = private unnamed_addr constant [20 x i8] c"supports SMBALERT#\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"no driver alert()!\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_smbalert_driver_init175 to i8*), i8* bitcast (void ()* @smbalert_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_smbalert_driver_exit to i8*), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_author176, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__UNIQUE_ID_description177, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__UNIQUE_ID_file178, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__UNIQUE_ID_license179, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @i2c_handle_smbus_alert(%struct.i2c_client* %ara) #0 !dbg !2694 {
entry:
  %ara.addr = alloca %struct.i2c_client*, align 8
  %alert = alloca %struct.i2c_smbus_alert*, align 8
  store %struct.i2c_client* %ara, %struct.i2c_client** %ara.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %ara.addr, metadata !2695, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.declare(metadata %struct.i2c_smbus_alert** %alert, metadata !2697, metadata !DIExpression()), !dbg !2698
  %0 = load %struct.i2c_client*, %struct.i2c_client** %ara.addr, align 8, !dbg !2699
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %0) #6, !dbg !2700
  %1 = bitcast i8* %call to %struct.i2c_smbus_alert*, !dbg !2700
  store %struct.i2c_smbus_alert* %1, %struct.i2c_smbus_alert** %alert, align 8, !dbg !2698
  %2 = load %struct.i2c_smbus_alert*, %struct.i2c_smbus_alert** %alert, align 8, !dbg !2701
  %alert1 = getelementptr inbounds %struct.i2c_smbus_alert, %struct.i2c_smbus_alert* %2, i32 0, i32 0, !dbg !2702
  %call2 = call zeroext i1 @schedule_work(%struct.work_struct* %alert1) #6, !dbg !2703
  %conv = zext i1 %call2 to i32, !dbg !2703
  ret i32 %conv, !dbg !2704
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @i2c_get_clientdata(%struct.i2c_client* %client) #0 !dbg !2705 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !2710, metadata !DIExpression()), !dbg !2711
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2712
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 4, !dbg !2713
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #6, !dbg !2714
  ret i8* %call, !dbg !2715
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @schedule_work(%struct.work_struct* %work) #0 !dbg !2716 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !2719, metadata !DIExpression()), !dbg !2720
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8, !dbg !2721
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !2722
  %call = call zeroext i1 @queue_work(%struct.workqueue_struct* %0, %struct.work_struct* %1) #6, !dbg !2723
  ret i1 %call, !dbg !2724
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @smbalert_driver_init() #2 section ".init.text" !dbg !2725 {
entry:
  %call = call i32 @i2c_register_driver(%struct.module* null, %struct.i2c_driver* @smbalert_driver) #6, !dbg !2728
  ret i32 %call, !dbg !2728
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @smbalert_driver_exit() #2 section ".exit.text" !dbg !2729 {
entry:
  call void @i2c_del_driver(%struct.i2c_driver* @smbalert_driver) #6, !dbg !2730
  ret void, !dbg !2730
}

; Function Attrs: noredzone
declare dso_local void @i2c_del_driver(%struct.i2c_driver*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @i2c_register_spd(%struct.i2c_adapter* %adap) #0 !dbg !2731 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %n = alloca i32, align 4
  %slot_count = alloca i32, align 4
  %dimm_count = alloca i32, align 4
  %handle = alloca i16, align 2
  %common_mem_type = alloca i8, align 1
  %mem_type = alloca i8, align 1
  %mem_size = alloca i64, align 8
  %name = alloca i8*, align 8
  %info = alloca %struct.i2c_board_info, align 8
  %addr_list = alloca [2 x i16], align 2
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !2732, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.declare(metadata i32* %n, metadata !2734, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.declare(metadata i32* %slot_count, metadata !2736, metadata !DIExpression()), !dbg !2737
  store i32 0, i32* %slot_count, align 4, !dbg !2737
  call void @llvm.dbg.declare(metadata i32* %dimm_count, metadata !2738, metadata !DIExpression()), !dbg !2739
  store i32 0, i32* %dimm_count, align 4, !dbg !2739
  call void @llvm.dbg.declare(metadata i16* %handle, metadata !2740, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.declare(metadata i8* %common_mem_type, metadata !2742, metadata !DIExpression()), !dbg !2743
  store i8 0, i8* %common_mem_type, align 1, !dbg !2743
  call void @llvm.dbg.declare(metadata i8* %mem_type, metadata !2744, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.declare(metadata i64* %mem_size, metadata !2746, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.declare(metadata i8** %name, metadata !2748, metadata !DIExpression()), !dbg !2749
  br label %while.cond, !dbg !2750

while.cond:                                       ; preds = %if.end17, %if.then7, %if.then, %entry
  %0 = load i32, i32* %slot_count, align 4, !dbg !2751
  %call = call zeroext i16 @dmi_memdev_handle(i32 %0) #6, !dbg !2752
  store i16 %call, i16* %handle, align 2, !dbg !2753
  %conv = zext i16 %call to i32, !dbg !2754
  %cmp = icmp ne i32 %conv, 65535, !dbg !2755
  br i1 %cmp, label %while.body, label %while.end, !dbg !2750

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %slot_count, align 4, !dbg !2756
  %inc = add i32 %1, 1, !dbg !2756
  store i32 %inc, i32* %slot_count, align 4, !dbg !2756
  %2 = load i16, i16* %handle, align 2, !dbg !2758
  %call2 = call i64 @dmi_memdev_size(i16 zeroext %2) #6, !dbg !2759
  store i64 %call2, i64* %mem_size, align 8, !dbg !2760
  %3 = load i64, i64* %mem_size, align 8, !dbg !2761
  %tobool = icmp ne i64 %3, 0, !dbg !2761
  br i1 %tobool, label %if.end, label %if.then, !dbg !2763

if.then:                                          ; preds = %while.body
  br label %while.cond, !dbg !2764, !llvm.loop !2765

if.end:                                           ; preds = %while.body
  %4 = load i16, i16* %handle, align 2, !dbg !2767
  %call3 = call zeroext i8 @dmi_memdev_type(i16 zeroext %4) #6, !dbg !2768
  store i8 %call3, i8* %mem_type, align 1, !dbg !2769
  %5 = load i8, i8* %mem_type, align 1, !dbg !2770
  %conv4 = zext i8 %5 to i32, !dbg !2770
  %cmp5 = icmp sle i32 %conv4, 2, !dbg !2772
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !2773

if.then7:                                         ; preds = %if.end
  br label %while.cond, !dbg !2774, !llvm.loop !2765

if.end8:                                          ; preds = %if.end
  %6 = load i8, i8* %common_mem_type, align 1, !dbg !2775
  %tobool9 = icmp ne i8 %6, 0, !dbg !2775
  br i1 %tobool9, label %if.else, label %if.then10, !dbg !2777

if.then10:                                        ; preds = %if.end8
  %7 = load i8, i8* %mem_type, align 1, !dbg !2778
  store i8 %7, i8* %common_mem_type, align 1, !dbg !2780
  br label %if.end17, !dbg !2781

if.else:                                          ; preds = %if.end8
  %8 = load i8, i8* %mem_type, align 1, !dbg !2782
  %conv11 = zext i8 %8 to i32, !dbg !2782
  %9 = load i8, i8* %common_mem_type, align 1, !dbg !2785
  %conv12 = zext i8 %9 to i32, !dbg !2785
  %cmp13 = icmp ne i32 %conv11, %conv12, !dbg !2786
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !2787

if.then15:                                        ; preds = %if.else
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2788
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %10, i32 0, i32 9, !dbg !2788
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0)) #7, !dbg !2788
  br label %for.end, !dbg !2790

if.end16:                                         ; preds = %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then10
  %11 = load i32, i32* %dimm_count, align 4, !dbg !2791
  %inc18 = add i32 %11, 1, !dbg !2791
  store i32 %inc18, i32* %dimm_count, align 4, !dbg !2791
  br label %while.cond, !dbg !2750, !llvm.loop !2765

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* %dimm_count, align 4, !dbg !2792
  %tobool19 = icmp ne i32 %12, 0, !dbg !2792
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !2794

if.then20:                                        ; preds = %while.end
  br label %for.end, !dbg !2795

if.end21:                                         ; preds = %while.end
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2796
  %dev22 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %13, i32 0, i32 9, !dbg !2796
  %14 = load i32, i32* %dimm_count, align 4, !dbg !2796
  %15 = load i32, i32* %slot_count, align 4, !dbg !2796
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %15) #7, !dbg !2796
  %16 = load i32, i32* %slot_count, align 4, !dbg !2797
  %cmp23 = icmp sgt i32 %16, 4, !dbg !2799
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !2800

if.then25:                                        ; preds = %if.end21
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2801
  %dev26 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %17, i32 0, i32 9, !dbg !2801
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev26, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2801
  br label %for.end, !dbg !2803

if.end27:                                         ; preds = %if.end21
  %18 = load i8, i8* %common_mem_type, align 1, !dbg !2804
  %conv28 = zext i8 %18 to i32, !dbg !2804
  switch i32 %conv28, label %sw.default [
    i32 19, label %sw.bb
    i32 24, label %sw.bb
    i32 28, label %sw.bb
    i32 29, label %sw.bb
    i32 26, label %sw.bb29
    i32 30, label %sw.bb29
  ], !dbg !2805

sw.bb:                                            ; preds = %if.end27, %if.end27, %if.end27, %if.end27
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %name, align 8, !dbg !2806
  br label %sw.epilog, !dbg !2808

sw.bb29:                                          ; preds = %if.end27, %if.end27
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %name, align 8, !dbg !2809
  br label %sw.epilog, !dbg !2810

sw.default:                                       ; preds = %if.end27
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2811
  %dev30 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %19, i32 0, i32 9, !dbg !2811
  %20 = load i8, i8* %common_mem_type, align 1, !dbg !2811
  %conv31 = zext i8 %20 to i32, !dbg !2811
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev30, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i32 %conv31) #7, !dbg !2811
  br label %for.end, !dbg !2812

sw.epilog:                                        ; preds = %sw.bb29, %sw.bb
  store i32 0, i32* %n, align 4, !dbg !2813
  br label %for.cond, !dbg !2815

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %21 = load i32, i32* %n, align 4, !dbg !2816
  %22 = load i32, i32* %slot_count, align 4, !dbg !2818
  %cmp32 = icmp slt i32 %21, %22, !dbg !2819
  br i1 %cmp32, label %land.rhs, label %land.end, !dbg !2820

land.rhs:                                         ; preds = %for.cond
  %23 = load i32, i32* %dimm_count, align 4, !dbg !2821
  %tobool34 = icmp ne i32 %23, 0, !dbg !2820
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %24 = phi i1 [ false, %for.cond ], [ %tobool34, %land.rhs ], !dbg !2822
  br i1 %24, label %for.body, label %for.end, !dbg !2823

for.body:                                         ; preds = %land.end
  call void @llvm.dbg.declare(metadata %struct.i2c_board_info* %info, metadata !2824, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.declare(metadata [2 x i16]* %addr_list, metadata !2827, metadata !DIExpression()), !dbg !2829
  %25 = bitcast %struct.i2c_board_info* %info to i8*, !dbg !2830
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 80, i1 false), !dbg !2830
  %type = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %info, i32 0, i32 0, !dbg !2831
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %type, i64 0, i64 0, !dbg !2832
  %26 = load i8*, i8** %name, align 8, !dbg !2833
  %call35 = call i64 @strlcpy(i8* %arraydecay, i8* %26, i64 20) #6, !dbg !2834
  %27 = load i32, i32* %n, align 4, !dbg !2835
  %add = add i32 80, %27, !dbg !2836
  %conv36 = trunc i32 %add to i16, !dbg !2837
  %arrayidx = getelementptr [2 x i16], [2 x i16]* %addr_list, i64 0, i64 0, !dbg !2838
  store i16 %conv36, i16* %arrayidx, align 2, !dbg !2839
  %arrayidx37 = getelementptr [2 x i16], [2 x i16]* %addr_list, i64 0, i64 1, !dbg !2840
  store i16 -2, i16* %arrayidx37, align 2, !dbg !2841
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2842
  %arraydecay38 = getelementptr inbounds [2 x i16], [2 x i16]* %addr_list, i64 0, i64 0, !dbg !2844
  %call39 = call %struct.i2c_client* @i2c_new_scanned_device(%struct.i2c_adapter* %28, %struct.i2c_board_info* %info, i16* %arraydecay38, i32 (%struct.i2c_adapter*, i16)* null) #6, !dbg !2845
  %29 = bitcast %struct.i2c_client* %call39 to i8*, !dbg !2845
  %call40 = call zeroext i1 @IS_ERR(i8* %29) #6, !dbg !2846
  br i1 %call40, label %if.end45, label %if.then41, !dbg !2847

if.then41:                                        ; preds = %for.body
  %30 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2848
  %dev42 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %30, i32 0, i32 9, !dbg !2848
  %arrayidx43 = getelementptr [2 x i16], [2 x i16]* %addr_list, i64 0, i64 0, !dbg !2848
  %31 = load i16, i16* %arrayidx43, align 2, !dbg !2848
  %conv44 = zext i16 %31 to i32, !dbg !2848
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %conv44) #7, !dbg !2848
  %32 = load i32, i32* %dimm_count, align 4, !dbg !2850
  %dec = add i32 %32, -1, !dbg !2850
  store i32 %dec, i32* %dimm_count, align 4, !dbg !2850
  br label %if.end45, !dbg !2851

if.end45:                                         ; preds = %if.then41, %for.body
  br label %for.inc, !dbg !2852

for.inc:                                          ; preds = %if.end45
  %33 = load i32, i32* %n, align 4, !dbg !2853
  %inc46 = add i32 %33, 1, !dbg !2853
  store i32 %inc46, i32* %n, align 4, !dbg !2853
  br label %for.cond, !dbg !2854, !llvm.loop !2855

for.end:                                          ; preds = %if.then15, %if.then20, %if.then25, %sw.default, %land.end
  ret void, !dbg !2857
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @dmi_memdev_handle(i32) #3

; Function Attrs: noredzone
declare dso_local i64 @dmi_memdev_size(i16 zeroext) #3

; Function Attrs: noredzone
declare dso_local zeroext i8 @dmi_memdev_type(i16 zeroext) #3

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noredzone
declare dso_local i64 @strlcpy(i8*, i8*, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !2858 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2862, metadata !DIExpression()), !dbg !2863
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2864
  %1 = ptrtoint i8* %0 to i64, !dbg !2864
  %2 = inttoptr i64 %1 to i8*, !dbg !2864
  %3 = ptrtoint i8* %2 to i64, !dbg !2864
  %cmp = icmp uge i64 %3, -4095, !dbg !2864
  %lnot = xor i1 %cmp, true, !dbg !2864
  %lnot1 = xor i1 %lnot, true, !dbg !2864
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2864
  %conv = sext i32 %lnot.ext to i64, !dbg !2864
  %tobool = icmp ne i64 %conv, 0, !dbg !2864
  ret i1 %tobool, !dbg !2865
}

; Function Attrs: noredzone
declare dso_local %struct.i2c_client* @i2c_new_scanned_device(%struct.i2c_adapter*, %struct.i2c_board_info*, i16*, i32 (%struct.i2c_adapter*, i16)*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !2866 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2869, metadata !DIExpression()), !dbg !2870
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2871
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !2872
  %1 = load i8*, i8** %driver_data, align 8, !dbg !2872
  ret i8* %1, !dbg !2873
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_work(%struct.workqueue_struct* %wq, %struct.work_struct* %work) #0 !dbg !2874 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !2879, metadata !DIExpression()), !dbg !2880
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !2881, metadata !DIExpression()), !dbg !2882
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !2883
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !2884
  %call = call zeroext i1 @queue_work_on(i32 1, %struct.workqueue_struct* %0, %struct.work_struct* %1) #6, !dbg !2885
  ret i1 %call, !dbg !2886
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_work_on(i32, %struct.workqueue_struct*, %struct.work_struct*) #3

; Function Attrs: noredzone
declare dso_local i32 @i2c_register_driver(%struct.module*, %struct.i2c_driver*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @smbalert_probe(%struct.i2c_client* %ara, %struct.i2c_device_id* %id) #0 !dbg !2887 {
entry:
  %retval = alloca i32, align 4
  %ara.addr = alloca %struct.i2c_client*, align 8
  %id.addr = alloca %struct.i2c_device_id*, align 8
  %setup = alloca %struct.i2c_smbus_alert_setup*, align 8
  %alert = alloca %struct.i2c_smbus_alert*, align 8
  %adapter = alloca %struct.i2c_adapter*, align 8
  %res = alloca i32, align 4
  %irq = alloca i32, align 4
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  store %struct.i2c_client* %ara, %struct.i2c_client** %ara.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %ara.addr, metadata !2888, metadata !DIExpression()), !dbg !2889
  store %struct.i2c_device_id* %id, %struct.i2c_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_device_id** %id.addr, metadata !2890, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.declare(metadata %struct.i2c_smbus_alert_setup** %setup, metadata !2892, metadata !DIExpression()), !dbg !2898
  %0 = load %struct.i2c_client*, %struct.i2c_client** %ara.addr, align 8, !dbg !2899
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 4, !dbg !2900
  %call = call i8* @dev_get_platdata(%struct.device* %dev) #6, !dbg !2901
  %1 = bitcast i8* %call to %struct.i2c_smbus_alert_setup*, !dbg !2901
  store %struct.i2c_smbus_alert_setup* %1, %struct.i2c_smbus_alert_setup** %setup, align 8, !dbg !2898
  call void @llvm.dbg.declare(metadata %struct.i2c_smbus_alert** %alert, metadata !2902, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter, metadata !2904, metadata !DIExpression()), !dbg !2905
  %2 = load %struct.i2c_client*, %struct.i2c_client** %ara.addr, align 8, !dbg !2906
  %adapter1 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %2, i32 0, i32 3, !dbg !2907
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter1, align 8, !dbg !2907
  store %struct.i2c_adapter* %3, %struct.i2c_adapter** %adapter, align 8, !dbg !2905
  call void @llvm.dbg.declare(metadata i32* %res, metadata !2908, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.declare(metadata i32* %irq, metadata !2910, metadata !DIExpression()), !dbg !2911
  %4 = load %struct.i2c_client*, %struct.i2c_client** %ara.addr, align 8, !dbg !2912
  %dev2 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %4, i32 0, i32 4, !dbg !2913
  %call3 = call i8* @devm_kzalloc(%struct.device* %dev2, i64 40, i32 3264) #6, !dbg !2914
  %5 = bitcast i8* %call3 to %struct.i2c_smbus_alert*, !dbg !2914
  store %struct.i2c_smbus_alert* %5, %struct.i2c_smbus_alert** %alert, align 8, !dbg !2915
  %6 = load %struct.i2c_smbus_alert*, %struct.i2c_smbus_alert** %alert, align 8, !dbg !2916
  %tobool = icmp ne %struct.i2c_smbus_alert* %6, null, !dbg !2916
  br i1 %tobool, label %if.end, label %if.then, !dbg !2918

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2919
  br label %return, !dbg !2919

if.end:                                           ; preds = %entry
  %7 = load %struct.i2c_smbus_alert_setup*, %struct.i2c_smbus_alert_setup** %setup, align 8, !dbg !2920
  %tobool4 = icmp ne %struct.i2c_smbus_alert_setup* %7, null, !dbg !2920
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !2922

if.then5:                                         ; preds = %if.end
  %8 = load %struct.i2c_smbus_alert_setup*, %struct.i2c_smbus_alert_setup** %setup, align 8, !dbg !2923
  %irq6 = getelementptr inbounds %struct.i2c_smbus_alert_setup, %struct.i2c_smbus_alert_setup* %8, i32 0, i32 0, !dbg !2925
  %9 = load i32, i32* %irq6, align 4, !dbg !2925
  store i32 %9, i32* %irq, align 4, !dbg !2926
  br label %if.end11, !dbg !2927

if.else:                                          ; preds = %if.end
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !2928
  %dev7 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %10, i32 0, i32 9, !dbg !2930
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev7, i32 0, i32 23, !dbg !2931
  %11 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2931
  %call8 = call i32 @of_irq_get_byname(%struct.device_node* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2932
  store i32 %call8, i32* %irq, align 4, !dbg !2933
  %12 = load i32, i32* %irq, align 4, !dbg !2934
  %cmp = icmp sle i32 %12, 0, !dbg !2936
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !2937

if.then9:                                         ; preds = %if.else
  %13 = load i32, i32* %irq, align 4, !dbg !2938
  store i32 %13, i32* %retval, align 4, !dbg !2939
  br label %return, !dbg !2939

if.end10:                                         ; preds = %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then5
  br label %do.body, !dbg !2940

do.body:                                          ; preds = %if.end11
  %14 = load %struct.i2c_smbus_alert*, %struct.i2c_smbus_alert** %alert, align 8, !dbg !2941
  %alert12 = getelementptr inbounds %struct.i2c_smbus_alert, %struct.i2c_smbus_alert* %14, i32 0, i32 0, !dbg !2941
  call void @__init_work(%struct.work_struct* %alert12, i32 0) #6, !dbg !2941
  %15 = load %struct.i2c_smbus_alert*, %struct.i2c_smbus_alert** %alert, align 8, !dbg !2941
  %alert13 = getelementptr inbounds %struct.i2c_smbus_alert, %struct.i2c_smbus_alert* %15, i32 0, i32 0, !dbg !2941
  %data = getelementptr inbounds %struct.work_struct, %struct.work_struct* %alert13, i32 0, i32 0, !dbg !2941
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %.compoundliteral, i32 0, i32 0, !dbg !2941
  store i64 68719476704, i64* %counter, align 8, !dbg !2941
  %16 = bitcast %struct.atomic64_t* %data to i8*, !dbg !2941
  %17 = bitcast %struct.atomic64_t* %.compoundliteral to i8*, !dbg !2941
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false), !dbg !2941
  %18 = load %struct.i2c_smbus_alert*, %struct.i2c_smbus_alert** %alert, align 8, !dbg !2941
  %alert14 = getelementptr inbounds %struct.i2c_smbus_alert, %struct.i2c_smbus_alert* %18, i32 0, i32 0, !dbg !2941
  %entry15 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %alert14, i32 0, i32 1, !dbg !2941
  call void @INIT_LIST_HEAD(%struct.list_head* %entry15) #6, !dbg !2941
  %19 = load %struct.i2c_smbus_alert*, %struct.i2c_smbus_alert** %alert, align 8, !dbg !2941
  %alert16 = getelementptr inbounds %struct.i2c_smbus_alert, %struct.i2c_smbus_alert* %19, i32 0, i32 0, !dbg !2941
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %alert16, i32 0, i32 2, !dbg !2941
  store void (%struct.work_struct*)* @smbalert_work, void (%struct.work_struct*)** %func, align 8, !dbg !2941
  br label %do.end, !dbg !2941

do.end:                                           ; preds = %do.body
  %20 = load %struct.i2c_client*, %struct.i2c_client** %ara.addr, align 8, !dbg !2943
  %21 = load %struct.i2c_smbus_alert*, %struct.i2c_smbus_alert** %alert, align 8, !dbg !2944
  %ara17 = getelementptr inbounds %struct.i2c_smbus_alert, %struct.i2c_smbus_alert* %21, i32 0, i32 1, !dbg !2945
  store %struct.i2c_client* %20, %struct.i2c_client** %ara17, align 8, !dbg !2946
  %22 = load i32, i32* %irq, align 4, !dbg !2947
  %cmp18 = icmp sgt i32 %22, 0, !dbg !2949
  br i1 %cmp18, label %if.then19, label %if.end25, !dbg !2950

if.then19:                                        ; preds = %do.end
  %23 = load %struct.i2c_client*, %struct.i2c_client** %ara.addr, align 8, !dbg !2951
  %dev20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 4, !dbg !2953
  %24 = load i32, i32* %irq, align 4, !dbg !2954
  %25 = load %struct.i2c_smbus_alert*, %struct.i2c_smbus_alert** %alert, align 8, !dbg !2955
  %26 = bitcast %struct.i2c_smbus_alert* %25 to i8*, !dbg !2955
  %call21 = call i32 @devm_request_threaded_irq(%struct.device* %dev20, i32 %24, i32 (i32, i8*)* null, i32 (i32, i8*)* @smbus_alert, i64 8320, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %26) #6, !dbg !2956
  store i32 %call21, i32* %res, align 4, !dbg !2957
  %27 = load i32, i32* %res, align 4, !dbg !2958
  %tobool22 = icmp ne i32 %27, 0, !dbg !2958
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !2960

if.then23:                                        ; preds = %if.then19
  %28 = load i32, i32* %res, align 4, !dbg !2961
  store i32 %28, i32* %retval, align 4, !dbg !2962
  br label %return, !dbg !2962

if.end24:                                         ; preds = %if.then19
  br label %if.end25, !dbg !2963

if.end25:                                         ; preds = %if.end24, %do.end
  %29 = load %struct.i2c_client*, %struct.i2c_client** %ara.addr, align 8, !dbg !2964
  %30 = load %struct.i2c_smbus_alert*, %struct.i2c_smbus_alert** %alert, align 8, !dbg !2965
  %31 = bitcast %struct.i2c_smbus_alert* %30 to i8*, !dbg !2965
  call void @i2c_set_clientdata(%struct.i2c_client* %29, i8* %31) #6, !dbg !2966
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !2967
  %dev26 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %32, i32 0, i32 9, !dbg !2967
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !2967
  store i32 0, i32* %retval, align 4, !dbg !2968
  br label %return, !dbg !2968

return:                                           ; preds = %if.end25, %if.then23, %if.then9, %if.then
  %33 = load i32, i32* %retval, align 4, !dbg !2969
  ret i32 %33, !dbg !2969
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @smbalert_remove(%struct.i2c_client* %ara) #0 !dbg !2970 {
entry:
  %ara.addr = alloca %struct.i2c_client*, align 8
  %alert = alloca %struct.i2c_smbus_alert*, align 8
  store %struct.i2c_client* %ara, %struct.i2c_client** %ara.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %ara.addr, metadata !2971, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.declare(metadata %struct.i2c_smbus_alert** %alert, metadata !2973, metadata !DIExpression()), !dbg !2974
  %0 = load %struct.i2c_client*, %struct.i2c_client** %ara.addr, align 8, !dbg !2975
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %0) #6, !dbg !2976
  %1 = bitcast i8* %call to %struct.i2c_smbus_alert*, !dbg !2976
  store %struct.i2c_smbus_alert* %1, %struct.i2c_smbus_alert** %alert, align 8, !dbg !2974
  %2 = load %struct.i2c_smbus_alert*, %struct.i2c_smbus_alert** %alert, align 8, !dbg !2977
  %alert1 = getelementptr inbounds %struct.i2c_smbus_alert, %struct.i2c_smbus_alert* %2, i32 0, i32 0, !dbg !2978
  %call2 = call zeroext i1 @cancel_work_sync(%struct.work_struct* %alert1) #6, !dbg !2979
  ret i32 0, !dbg !2980
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_platdata(%struct.device* %dev) #0 !dbg !2981 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2982, metadata !DIExpression()), !dbg !2983
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2984
  %platform_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 7, !dbg !2985
  %1 = load i8*, i8** %platform_data, align 8, !dbg !2985
  ret i8* %1, !dbg !2986
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #0 !dbg !2987 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2990, metadata !DIExpression()), !dbg !2991
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2992, metadata !DIExpression()), !dbg !2993
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2994, metadata !DIExpression()), !dbg !2995
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2996
  %1 = load i64, i64* %size.addr, align 8, !dbg !2997
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2998
  %or = or i32 %2, 256, !dbg !2999
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #6, !dbg !3000
  ret i8* %call, !dbg !3001
}

; Function Attrs: noredzone
declare dso_local i32 @of_irq_get_byname(%struct.device_node*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_work(%struct.work_struct* %work, i32 %onstack) #0 !dbg !3002 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %onstack.addr = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !3005, metadata !DIExpression()), !dbg !3006
  store i32 %onstack, i32* %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %onstack.addr, metadata !3007, metadata !DIExpression()), !dbg !3008
  ret void, !dbg !3009
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !3010 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !3014, metadata !DIExpression()), !dbg !3015
  br label %do.body, !dbg !3016

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3017

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3019

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !3017

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3021
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3021
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !3021
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !3021
  br label %do.end3, !dbg !3021

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !3017

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3023
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3024
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !3025
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !3026
  ret void, !dbg !3027
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @smbalert_work(%struct.work_struct* %work) #0 !dbg !3028 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %alert = alloca %struct.i2c_smbus_alert*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.i2c_smbus_alert*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !3029, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.declare(metadata %struct.i2c_smbus_alert** %alert, metadata !3031, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3033, metadata !DIExpression()), !dbg !3035
  %0 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !3035
  %1 = bitcast %struct.work_struct* %0 to i8*, !dbg !3035
  store i8* %1, i8** %__mptr, align 8, !dbg !3035
  br label %do.body, !dbg !3035

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3036

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3035
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !3035
  %3 = bitcast i8* %add.ptr to %struct.i2c_smbus_alert*, !dbg !3035
  store %struct.i2c_smbus_alert* %3, %struct.i2c_smbus_alert** %tmp, align 8, !dbg !3036
  %4 = load %struct.i2c_smbus_alert*, %struct.i2c_smbus_alert** %tmp, align 8, !dbg !3035
  store %struct.i2c_smbus_alert* %4, %struct.i2c_smbus_alert** %alert, align 8, !dbg !3038
  %5 = load %struct.i2c_smbus_alert*, %struct.i2c_smbus_alert** %alert, align 8, !dbg !3039
  %6 = bitcast %struct.i2c_smbus_alert* %5 to i8*, !dbg !3039
  %call = call i32 @smbus_alert(i32 0, i8* %6) #6, !dbg !3040
  ret void, !dbg !3041
}

; Function Attrs: noredzone
declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @smbus_alert(i32 %irq, i8* %d) #0 !dbg !3042 {
entry:
  %irq.addr = alloca i32, align 4
  %d.addr = alloca i8*, align 8
  %alert = alloca %struct.i2c_smbus_alert*, align 8
  %ara = alloca %struct.i2c_client*, align 8
  %status = alloca i32, align 4
  %data = alloca %struct.alert_data, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !3043, metadata !DIExpression()), !dbg !3044
  store i8* %d, i8** %d.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %d.addr, metadata !3045, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.declare(metadata %struct.i2c_smbus_alert** %alert, metadata !3047, metadata !DIExpression()), !dbg !3048
  %0 = load i8*, i8** %d.addr, align 8, !dbg !3049
  %1 = bitcast i8* %0 to %struct.i2c_smbus_alert*, !dbg !3049
  store %struct.i2c_smbus_alert* %1, %struct.i2c_smbus_alert** %alert, align 8, !dbg !3048
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %ara, metadata !3050, metadata !DIExpression()), !dbg !3051
  %2 = load %struct.i2c_smbus_alert*, %struct.i2c_smbus_alert** %alert, align 8, !dbg !3052
  %ara1 = getelementptr inbounds %struct.i2c_smbus_alert, %struct.i2c_smbus_alert* %2, i32 0, i32 1, !dbg !3053
  %3 = load %struct.i2c_client*, %struct.i2c_client** %ara1, align 8, !dbg !3053
  store %struct.i2c_client* %3, %struct.i2c_client** %ara, align 8, !dbg !3054
  br label %for.cond, !dbg !3055

for.cond:                                         ; preds = %if.end, %entry
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3056, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.declare(metadata %struct.alert_data* %data, metadata !3061, metadata !DIExpression()), !dbg !3067
  %4 = load %struct.i2c_client*, %struct.i2c_client** %ara, align 8, !dbg !3068
  %call = call i32 @i2c_smbus_read_byte(%struct.i2c_client* %4) #6, !dbg !3069
  store i32 %call, i32* %status, align 4, !dbg !3070
  %5 = load i32, i32* %status, align 4, !dbg !3071
  %cmp = icmp slt i32 %5, 0, !dbg !3073
  br i1 %cmp, label %if.then, label %if.end, !dbg !3074

if.then:                                          ; preds = %for.cond
  br label %for.end, !dbg !3075

if.end:                                           ; preds = %for.cond
  %6 = load i32, i32* %status, align 4, !dbg !3076
  %and = and i32 %6, 1, !dbg !3077
  %data2 = getelementptr inbounds %struct.alert_data, %struct.alert_data* %data, i32 0, i32 2, !dbg !3078
  store i32 %and, i32* %data2, align 4, !dbg !3079
  %7 = load i32, i32* %status, align 4, !dbg !3080
  %shr = ashr i32 %7, 1, !dbg !3081
  %conv = trunc i32 %shr to i16, !dbg !3080
  %addr = getelementptr inbounds %struct.alert_data, %struct.alert_data* %data, i32 0, i32 0, !dbg !3082
  store i16 %conv, i16* %addr, align 4, !dbg !3083
  %type = getelementptr inbounds %struct.alert_data, %struct.alert_data* %data, i32 0, i32 1, !dbg !3084
  store i32 0, i32* %type, align 4, !dbg !3085
  %8 = load %struct.i2c_client*, %struct.i2c_client** %ara, align 8, !dbg !3086
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 3, !dbg !3087
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !3087
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %9, i32 0, i32 9, !dbg !3088
  %10 = bitcast %struct.alert_data* %data to i8*, !dbg !3089
  %call3 = call i32 @device_for_each_child(%struct.device* %dev, i8* %10, i32 (%struct.device*, i8*)* @smbus_do_alert) #6, !dbg !3090
  br label %for.cond, !dbg !3091, !llvm.loop !3092

for.end:                                          ; preds = %if.then
  ret i32 1, !dbg !3095
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_set_clientdata(%struct.i2c_client* %client, i8* %data) #0 !dbg !3096 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !3099, metadata !DIExpression()), !dbg !3100
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3101, metadata !DIExpression()), !dbg !3102
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !3103
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 4, !dbg !3104
  %1 = load i8*, i8** %data.addr, align 8, !dbg !3105
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #6, !dbg !3106
  ret void, !dbg !3107
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #3

; Function Attrs: noredzone
declare dso_local i32 @i2c_smbus_read_byte(%struct.i2c_client*) #3

; Function Attrs: noredzone
declare dso_local i32 @device_for_each_child(%struct.device*, i8*, i32 (%struct.device*, i8*)*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @smbus_do_alert(%struct.device* %dev, i8* %addrp) #0 !dbg !3108 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %addrp.addr = alloca i8*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %data = alloca %struct.alert_data*, align 8
  %driver = alloca %struct.i2c_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.i2c_driver*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3111, metadata !DIExpression()), !dbg !3112
  store i8* %addrp, i8** %addrp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addrp.addr, metadata !3113, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !3115, metadata !DIExpression()), !dbg !3116
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3117
  %call = call %struct.i2c_client* @i2c_verify_client(%struct.device* %0) #6, !dbg !3118
  store %struct.i2c_client* %call, %struct.i2c_client** %client, align 8, !dbg !3116
  call void @llvm.dbg.declare(metadata %struct.alert_data** %data, metadata !3119, metadata !DIExpression()), !dbg !3121
  %1 = load i8*, i8** %addrp.addr, align 8, !dbg !3122
  %2 = bitcast i8* %1 to %struct.alert_data*, !dbg !3122
  store %struct.alert_data* %2, %struct.alert_data** %data, align 8, !dbg !3121
  call void @llvm.dbg.declare(metadata %struct.i2c_driver** %driver, metadata !3123, metadata !DIExpression()), !dbg !3124
  %3 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !3125
  %tobool = icmp ne %struct.i2c_client* %3, null, !dbg !3125
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3127

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !3128
  %addr = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %4, i32 0, i32 1, !dbg !3129
  %5 = load i16, i16* %addr, align 2, !dbg !3129
  %conv = zext i16 %5 to i32, !dbg !3128
  %6 = load %struct.alert_data*, %struct.alert_data** %data, align 8, !dbg !3130
  %addr1 = getelementptr inbounds %struct.alert_data, %struct.alert_data* %6, i32 0, i32 0, !dbg !3131
  %7 = load i16, i16* %addr1, align 4, !dbg !3131
  %conv2 = zext i16 %7 to i32, !dbg !3130
  %cmp = icmp ne i32 %conv, %conv2, !dbg !3132
  br i1 %cmp, label %if.then, label %if.end, !dbg !3133

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !3134
  br label %return, !dbg !3134

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !3135
  %flags = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0, !dbg !3137
  %9 = load i16, i16* %flags, align 8, !dbg !3137
  %conv4 = zext i16 %9 to i32, !dbg !3135
  %and = and i32 %conv4, 16, !dbg !3138
  %tobool5 = icmp ne i32 %and, 0, !dbg !3138
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !3139

if.then6:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3140
  br label %return, !dbg !3140

if.end7:                                          ; preds = %if.end
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3141
  call void @device_lock(%struct.device* %10) #6, !dbg !3142
  %11 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !3143
  %dev8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 4, !dbg !3145
  %driver9 = getelementptr inbounds %struct.device, %struct.device* %dev8, i32 0, i32 6, !dbg !3146
  %12 = load %struct.device_driver*, %struct.device_driver** %driver9, align 8, !dbg !3146
  %tobool10 = icmp ne %struct.device_driver* %12, null, !dbg !3143
  br i1 %tobool10, label %if.then11, label %if.else20, !dbg !3147

if.then11:                                        ; preds = %if.end7
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3148, metadata !DIExpression()), !dbg !3151
  %13 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !3151
  %dev12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 4, !dbg !3151
  %driver13 = getelementptr inbounds %struct.device, %struct.device* %dev12, i32 0, i32 6, !dbg !3151
  %14 = load %struct.device_driver*, %struct.device_driver** %driver13, align 8, !dbg !3151
  %15 = bitcast %struct.device_driver* %14 to i8*, !dbg !3151
  store i8* %15, i8** %__mptr, align 8, !dbg !3151
  br label %do.body, !dbg !3151

do.body:                                          ; preds = %if.then11
  br label %do.end, !dbg !3152

do.end:                                           ; preds = %do.body
  %16 = load i8*, i8** %__mptr, align 8, !dbg !3151
  %add.ptr = getelementptr i8, i8* %16, i64 -56, !dbg !3151
  %17 = bitcast i8* %add.ptr to %struct.i2c_driver*, !dbg !3151
  store %struct.i2c_driver* %17, %struct.i2c_driver** %tmp, align 8, !dbg !3152
  %18 = load %struct.i2c_driver*, %struct.i2c_driver** %tmp, align 8, !dbg !3151
  store %struct.i2c_driver* %18, %struct.i2c_driver** %driver, align 8, !dbg !3154
  %19 = load %struct.i2c_driver*, %struct.i2c_driver** %driver, align 8, !dbg !3155
  %alert = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %19, i32 0, i32 5, !dbg !3157
  %20 = load void (%struct.i2c_client*, i32, i32)*, void (%struct.i2c_client*, i32, i32)** %alert, align 8, !dbg !3157
  %tobool14 = icmp ne void (%struct.i2c_client*, i32, i32)* %20, null, !dbg !3155
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !3158

if.then15:                                        ; preds = %do.end
  %21 = load %struct.i2c_driver*, %struct.i2c_driver** %driver, align 8, !dbg !3159
  %alert16 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %21, i32 0, i32 5, !dbg !3160
  %22 = load void (%struct.i2c_client*, i32, i32)*, void (%struct.i2c_client*, i32, i32)** %alert16, align 8, !dbg !3160
  %23 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !3161
  %24 = load %struct.alert_data*, %struct.alert_data** %data, align 8, !dbg !3162
  %type = getelementptr inbounds %struct.alert_data, %struct.alert_data* %24, i32 0, i32 1, !dbg !3163
  %25 = load i32, i32* %type, align 4, !dbg !3163
  %26 = load %struct.alert_data*, %struct.alert_data** %data, align 8, !dbg !3164
  %data17 = getelementptr inbounds %struct.alert_data, %struct.alert_data* %26, i32 0, i32 2, !dbg !3165
  %27 = load i32, i32* %data17, align 4, !dbg !3165
  call void %22(%struct.i2c_client* %23, i32 %25, i32 %27) #6, !dbg !3159
  br label %if.end19, !dbg !3159

if.else:                                          ; preds = %do.end
  %28 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !3166
  %dev18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 4, !dbg !3166
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !3166
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then15
  br label %if.end21, !dbg !3167

if.else20:                                        ; preds = %if.end7
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %if.end19
  %29 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3168
  call void @device_unlock(%struct.device* %29) #6, !dbg !3169
  store i32 -16, i32* %retval, align 4, !dbg !3170
  br label %return, !dbg !3170

return:                                           ; preds = %if.end21, %if.then6, %if.then
  %30 = load i32, i32* %retval, align 4, !dbg !3171
  ret i32 %30, !dbg !3171
}

; Function Attrs: noredzone
declare dso_local %struct.i2c_client* @i2c_verify_client(%struct.device*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @device_lock(%struct.device* %dev) #0 !dbg !3172 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3173, metadata !DIExpression()), !dbg !3174
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3175
  %mutex = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 9, !dbg !3176
  call void @mutex_lock(%struct.mutex* %mutex) #6, !dbg !3177
  ret void, !dbg !3178
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @device_unlock(%struct.device* %dev) #0 !dbg !3179 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3180, metadata !DIExpression()), !dbg !3181
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3182
  %mutex = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 9, !dbg !3183
  call void @mutex_unlock(%struct.mutex* %mutex) #6, !dbg !3184
  ret void, !dbg !3185
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #3

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !3186 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3189, metadata !DIExpression()), !dbg !3190
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3191, metadata !DIExpression()), !dbg !3192
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3193
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3194
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !3195
  store i8* %0, i8** %driver_data, align 8, !dbg !3196
  ret void, !dbg !3197
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @cancel_work_sync(%struct.work_struct*) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2689, !2690, !2691, !2692}
!llvm.ident = !{!2693}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_smbalert_driver_init175", scope: !2, file: !3, line: 198, type: !146, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !132, globals: !2656, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/i2c/i2c-smbus.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !64, !71, !79, !85, !94, !127}
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
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !65, line: 478, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69, !70}
!67 = !DIEnumerator(name: "IRQCHIP_STATE_PENDING", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "IRQCHIP_STATE_ACTIVE", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "IRQCHIP_STATE_MASKED", value: 2, isUnsigned: true)
!70 = !DIEnumerator(name: "IRQCHIP_STATE_LINE_LEVEL", value: 3, isUnsigned: true)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_gc_flags", file: !72, line: 1084, baseType: !7, size: 32, elements: !73)
!72 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/lizy2001/genbc/linux")
!73 = !{!74, !75, !76, !77, !78}
!74 = !DIEnumerator(name: "IRQ_GC_INIT_MASK_CACHE", value: 1, isUnsigned: true)
!75 = !DIEnumerator(name: "IRQ_GC_INIT_NESTED_LOCK", value: 2, isUnsigned: true)
!76 = !DIEnumerator(name: "IRQ_GC_MASK_CACHE_PER_TYPE", value: 4, isUnsigned: true)
!77 = !DIEnumerator(name: "IRQ_GC_NO_MASK", value: 8, isUnsigned: true)
!78 = !DIEnumerator(name: "IRQ_GC_BE_IO", value: 16, isUnsigned: true)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !80, line: 11, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !83, !84}
!82 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!83 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_prop_type", file: !86, line: 19, baseType: !7, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/property.h", directory: "/home/lizy2001/genbc/linux")
!87 = !{!88, !89, !90, !91, !92, !93}
!88 = !DIEnumerator(name: "DEV_PROP_U8", value: 0, isUnsigned: true)
!89 = !DIEnumerator(name: "DEV_PROP_U16", value: 1, isUnsigned: true)
!90 = !DIEnumerator(name: "DEV_PROP_U32", value: 2, isUnsigned: true)
!91 = !DIEnumerator(name: "DEV_PROP_U64", value: 3, isUnsigned: true)
!92 = !DIEnumerator(name: "DEV_PROP_STRING", value: 4, isUnsigned: true)
!93 = !DIEnumerator(name: "DEV_PROP_REF", value: 5, isUnsigned: true)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !95, line: 30, baseType: !96, size: 64, elements: !97)
!95 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!96 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!97 = !{!98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126}
!98 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!99 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!100 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!101 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!102 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!103 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!104 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!105 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!106 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!107 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!108 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!109 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!110 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!111 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!112 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!113 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!114 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!115 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!116 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!117 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!118 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!119 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!120 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!121 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!122 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!123 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!124 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!125 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!126 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "i2c_alert_protocol", file: !128, line: 215, baseType: !7, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!129 = !{!130, !131}
!130 = !DIEnumerator(name: "I2C_PROTOCOL_SMBUS_ALERT", value: 0, isUnsigned: true)
!131 = !DIEnumerator(name: "I2C_PROTOCOL_SMBUS_HOST_NOTIFY", value: 1, isUnsigned: true)
!132 = !{!133, !136, !138, !139, !146, !147, !2561}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !135, line: 76, flags: DIFlagFwdDecl)
!135 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !137, line: 148, baseType: !7)
!137 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!138 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !137, line: 178, size: 128, elements: !143)
!143 = !{!144, !145}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !142, file: !137, line: 179, baseType: !141, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !142, file: !137, line: 179, baseType: !141, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_smbus_alert", file: !3, line: 20, size: 320, elements: !149)
!149 = !{!150, !172}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "alert", scope: !148, file: !3, line: 21, baseType: !151, size: 256)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !95, line: 102, size: 256, elements: !152)
!152 = !{!153, !165, !166}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !151, file: !95, line: 103, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !155, line: 13, baseType: !156)
!155 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !137, line: 175, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !137, line: 173, size: 64, elements: !158)
!158 = !{!159}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !157, file: !137, line: 174, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !161, line: 22, baseType: !162)
!161 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !163, line: 30, baseType: !164)
!163 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!164 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !151, file: !95, line: 104, baseType: !142, size: 128, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !151, file: !95, line: 105, baseType: !167, size: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !95, line: 21, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !171}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ara", scope: !148, file: !3, line: 22, baseType: !173, size: 64, offset: 256)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_client", file: !128, line: 314, size: 6016, elements: !175)
!175 = !{!176, !178, !179, !184, !2557, !2558, !2559, !2560}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !174, file: !128, line: 315, baseType: !177, size: 16)
!177 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !174, file: !128, line: 325, baseType: !177, size: 16, offset: 16)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !174, file: !128, line: 328, baseType: !180, size: 160, offset: 32)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 160, elements: !182)
!181 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!182 = !{!183}
!183 = !DISubrange(count: 20)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !174, file: !128, line: 329, baseType: !185, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !128, line: 695, size: 7552, elements: !187)
!187 = !{!188, !189, !190, !235, !236, !250, !1389, !1390, !1391, !1392, !2504, !2505, !2506, !2510, !2511, !2512, !2513, !2545, !2556}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !186, file: !128, line: 696, baseType: !133, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !186, file: !128, line: 697, baseType: !7, size: 32, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !186, file: !128, line: 698, baseType: !191, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !128, line: 519, size: 320, elements: !194)
!194 = !{!195, !212, !213, !228, !229}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !193, file: !128, line: 529, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!199, !185, !200, !199}
!199 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !202, line: 69, size: 128, elements: !203)
!202 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!203 = !{!204, !206, !207, !208}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !201, file: !202, line: 70, baseType: !205, size: 16)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !163, line: 24, baseType: !177)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !201, file: !202, line: 71, baseType: !205, size: 16, offset: 16)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !201, file: !202, line: 84, baseType: !205, size: 16, offset: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !201, file: !202, line: 85, baseType: !209, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !163, line: 21, baseType: !211)
!211 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !193, file: !128, line: 531, baseType: !196, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !193, file: !128, line: 533, baseType: !214, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!199, !185, !217, !177, !181, !218, !199, !219}
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !161, line: 19, baseType: !205)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !161, line: 17, baseType: !210)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !202, line: 135, size: 272, elements: !221)
!221 = !{!222, !223, !224}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !220, file: !202, line: 136, baseType: !210, size: 8)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !220, file: !202, line: 137, baseType: !205, size: 16)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !220, file: !202, line: 138, baseType: !225, size: 272)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 272, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 34)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !193, file: !128, line: 536, baseType: !214, size: 64, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !193, file: !128, line: 541, baseType: !230, size: 64, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!233, !185}
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !161, line: 21, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !163, line: 27, baseType: !7)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !186, file: !128, line: 699, baseType: !146, size: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !186, file: !128, line: 702, baseType: !237, size: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !128, line: 557, size: 192, elements: !240)
!240 = !{!241, !245, !249}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !239, file: !128, line: 558, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !185, !7}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !239, file: !128, line: 559, baseType: !246, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!199, !185, !7}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !239, file: !128, line: 560, baseType: !242, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !186, file: !128, line: 703, baseType: !251, size: 192, offset: 320)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !252, line: 30, size: 192, elements: !253)
!252 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!253 = !{!254, !264, !279}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !251, file: !252, line: 31, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !256, line: 29, baseType: !257)
!256 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !256, line: 20, elements: !258)
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !257, file: !256, line: 21, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !261, line: 25, baseType: !262)
!261 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !261, line: 25, elements: !263)
!263 = !{}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !251, file: !252, line: 32, baseType: !265, size: 128)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !266, line: 125, size: 128, elements: !267)
!266 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!267 = !{!268, !278}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !265, file: !266, line: 126, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !266, line: 31, size: 64, elements: !270)
!270 = !{!271}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !269, file: !266, line: 32, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !266, line: 24, size: 192, align: 64, elements: !274)
!274 = !{!275, !276, !277}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !273, file: !266, line: 25, baseType: !138, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !273, file: !266, line: 26, baseType: !272, size: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !273, file: !266, line: 27, baseType: !272, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !265, file: !266, line: 127, baseType: !272, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !251, file: !252, line: 33, baseType: !280, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !282, line: 640, size: 48640, elements: !283)
!282 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!283 = !{!284, !290, !292, !293, !303, !304, !305, !306, !307, !308, !309, !310, !314, !335, !346, !435, !436, !437, !448, !449, !451, !452, !671, !672, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !751, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !807, !809, !810, !811, !813, !815, !816, !817, !818, !819, !825, !826, !827, !828, !829, !830, !831, !845, !850, !854, !855, !856, !859, !863, !866, !869, !872, !875, !878, !881, !884, !890, !891, !892, !898, !899, !903, !904, !905, !914, !915, !916, !917, !918, !923, !924, !925, !928, !929, !932, !935, !938, !941, !944, !947, !948, !1029, !1032, !1035, !1036, !1039, !1040, !1041, !1047, !1048, !1049, !1062, !1063, !1064, !1074, !1079, !1082, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !281, file: !282, line: 646, baseType: !285, size: 128)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !286, line: 56, size: 128, elements: !287)
!286 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!287 = !{!288, !289}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !285, file: !286, line: 57, baseType: !138, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !285, file: !286, line: 58, baseType: !233, size: 32, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !281, file: !282, line: 649, baseType: !291, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !96)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !281, file: !282, line: 657, baseType: !146, size: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !281, file: !282, line: 658, baseType: !294, size: 32, offset: 256)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !295, line: 113, baseType: !296)
!295 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !295, line: 111, size: 32, elements: !297)
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !296, file: !295, line: 112, baseType: !299, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !137, line: 168, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !137, line: 166, size: 32, elements: !301)
!301 = !{!302}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !300, file: !137, line: 167, baseType: !199, size: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !281, file: !282, line: 660, baseType: !7, size: 32, offset: 288)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !281, file: !282, line: 661, baseType: !7, size: 32, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !281, file: !282, line: 684, baseType: !199, size: 32, offset: 352)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !281, file: !282, line: 686, baseType: !199, size: 32, offset: 384)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !281, file: !282, line: 687, baseType: !199, size: 32, offset: 416)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !281, file: !282, line: 688, baseType: !199, size: 32, offset: 448)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !281, file: !282, line: 689, baseType: !7, size: 32, offset: 480)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !281, file: !282, line: 691, baseType: !311, size: 64, offset: 512)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!313 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !282, line: 691, flags: DIFlagFwdDecl)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !281, file: !282, line: 692, baseType: !315, size: 832, offset: 576)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !282, line: 451, size: 832, elements: !316)
!316 = !{!317, !322, !323, !324, !325, !329, !330, !331, !332, !333}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !315, file: !282, line: 453, baseType: !318, size: 128)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !282, line: 325, size: 128, elements: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !318, file: !282, line: 326, baseType: !138, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !318, file: !282, line: 327, baseType: !233, size: 32, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !315, file: !282, line: 454, baseType: !273, size: 192, align: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !315, file: !282, line: 455, baseType: !142, size: 128, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !315, file: !282, line: 456, baseType: !7, size: 32, offset: 448)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !315, file: !282, line: 458, baseType: !326, size: 64, offset: 512)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !161, line: 23, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !163, line: 31, baseType: !328)
!328 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !315, file: !282, line: 459, baseType: !326, size: 64, offset: 576)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !315, file: !282, line: 460, baseType: !326, size: 64, offset: 640)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !315, file: !282, line: 461, baseType: !326, size: 64, offset: 704)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !315, file: !282, line: 463, baseType: !326, size: 64, offset: 768)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !315, file: !282, line: 465, baseType: !334, offset: 832)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !282, line: 415, elements: !263)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !281, file: !282, line: 693, baseType: !336, size: 384, offset: 1408)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !282, line: 489, size: 384, elements: !337)
!337 = !{!338, !339, !340, !341, !342, !343, !344}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !336, file: !282, line: 490, baseType: !142, size: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !336, file: !282, line: 491, baseType: !138, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !336, file: !282, line: 492, baseType: !138, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !336, file: !282, line: 493, baseType: !7, size: 32, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !336, file: !282, line: 494, baseType: !177, size: 16, offset: 288)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !336, file: !282, line: 495, baseType: !177, size: 16, offset: 304)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !336, file: !282, line: 497, baseType: !345, size: 64, offset: 320)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !281, file: !282, line: 697, baseType: !347, size: 1792, offset: 1792)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !282, line: 507, size: 1792, elements: !348)
!348 = !{!349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !432, !433}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !347, file: !282, line: 508, baseType: !273, size: 192, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !347, file: !282, line: 515, baseType: !326, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !347, file: !282, line: 516, baseType: !326, size: 64, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !347, file: !282, line: 517, baseType: !326, size: 64, offset: 320)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !347, file: !282, line: 518, baseType: !326, size: 64, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !347, file: !282, line: 519, baseType: !326, size: 64, offset: 448)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !347, file: !282, line: 526, baseType: !160, size: 64, offset: 512)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !347, file: !282, line: 527, baseType: !326, size: 64, offset: 576)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !347, file: !282, line: 528, baseType: !7, size: 32, offset: 640)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !347, file: !282, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !347, file: !282, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !347, file: !282, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !347, file: !282, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !347, file: !282, line: 563, baseType: !363, size: 512, offset: 704)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !364)
!364 = !{!365, !373, !374, !379, !428, !429, !430, !431}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !363, file: !6, line: 119, baseType: !366, size: 256)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !367, line: 9, size: 256, elements: !368)
!367 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!368 = !{!369, !370}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !366, file: !367, line: 10, baseType: !273, size: 192, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !366, file: !367, line: 11, baseType: !371, size: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !372, line: 29, baseType: !160)
!372 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !363, file: !6, line: 120, baseType: !371, size: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !363, file: !6, line: 121, baseType: !375, size: 64, offset: 320)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{!5, !378}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !363, file: !6, line: 122, baseType: !380, size: 64, offset: 384)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !382)
!382 = !{!383, !403, !404, !408, !418, !419, !423, !427}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !381, file: !6, line: 160, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !386)
!386 = !{!387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !385, file: !6, line: 215, baseType: !255)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !385, file: !6, line: 216, baseType: !7, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !385, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !385, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !385, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !385, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !385, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !385, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !385, file: !6, line: 233, baseType: !371, size: 64, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !385, file: !6, line: 234, baseType: !378, size: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !385, file: !6, line: 235, baseType: !371, size: 64, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !385, file: !6, line: 236, baseType: !378, size: 64, offset: 320)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !385, file: !6, line: 237, baseType: !400, size: 4096, offset: 512)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 4096, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 8)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !381, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !381, file: !6, line: 162, baseType: !405, size: 32, offset: 96)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !137, line: 27, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !407, line: 96, baseType: !199)
!407 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!408 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !381, file: !6, line: 163, baseType: !409, size: 32, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !410, line: 276, baseType: !411)
!410 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !410, line: 276, size: 32, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !411, file: !410, line: 276, baseType: !414, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !410, line: 70, baseType: !415)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !410, line: 65, size: 32, elements: !416)
!416 = !{!417}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !415, file: !410, line: 66, baseType: !7, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !381, file: !6, line: 164, baseType: !378, size: 64, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !381, file: !6, line: 165, baseType: !420, size: 128, offset: 256)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !367, line: 14, size: 128, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !420, file: !367, line: 15, baseType: !265, size: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !381, file: !6, line: 166, baseType: !424, size: 64, offset: 384)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!371}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !381, file: !6, line: 167, baseType: !371, size: 64, offset: 448)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !363, file: !6, line: 123, baseType: !218, size: 8, offset: 448)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !363, file: !6, line: 124, baseType: !218, size: 8, offset: 456)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !363, file: !6, line: 125, baseType: !218, size: 8, offset: 464)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !363, file: !6, line: 126, baseType: !218, size: 8, offset: 472)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !347, file: !282, line: 572, baseType: !363, size: 512, offset: 1216)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !347, file: !282, line: 580, baseType: !434, size: 64, offset: 1728)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !281, file: !282, line: 721, baseType: !7, size: 32, offset: 3584)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !281, file: !282, line: 722, baseType: !199, size: 32, offset: 3616)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !281, file: !282, line: 723, baseType: !438, size: 64, offset: 3648)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !441, line: 17, baseType: !442)
!441 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !441, line: 17, size: 64, elements: !443)
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !442, file: !441, line: 17, baseType: !445, size: 64)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !446)
!446 = !{!447}
!447 = !DISubrange(count: 1)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !281, file: !282, line: 724, baseType: !440, size: 64, offset: 3712)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !281, file: !282, line: 749, baseType: !450, offset: 3776)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !282, line: 290, elements: !263)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !281, file: !282, line: 751, baseType: !142, size: 128, offset: 3776)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !281, file: !282, line: 757, baseType: !453, size: 64, offset: 3904)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !455, line: 388, size: 7296, elements: !456)
!455 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!456 = !{!457, !667}
!457 = !DIDerivedType(tag: DW_TAG_member, scope: !454, file: !455, line: 389, baseType: !458, size: 7296)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !454, file: !455, line: 389, size: 7296, elements: !459)
!459 = !{!460, !501, !502, !503, !507, !508, !509, !510, !511, !518, !519, !520, !521, !522, !523, !524, !532, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !566, !574, !577, !623, !624, !646, !647, !650, !654, !655, !658, !659, !662, !665, !666}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !458, file: !455, line: 390, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !455, line: 305, size: 1472, elements: !463)
!463 = !{!464, !465, !466, !467, !468, !469, !470, !471, !479, !480, !485, !486, !489, !493, !494, !497, !498, !499}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !462, file: !455, line: 308, baseType: !138, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !462, file: !455, line: 309, baseType: !138, size: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !462, file: !455, line: 313, baseType: !461, size: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !462, file: !455, line: 313, baseType: !461, size: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !462, file: !455, line: 315, baseType: !273, size: 192, align: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !462, file: !455, line: 323, baseType: !138, size: 64, offset: 448)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !462, file: !455, line: 327, baseType: !453, size: 64, offset: 512)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !462, file: !455, line: 333, baseType: !472, size: 64, offset: 576)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !473, line: 284, baseType: !474)
!473 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !473, line: 284, size: 64, elements: !475)
!475 = !{!476}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !474, file: !473, line: 284, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !478, line: 19, baseType: !138)
!478 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!479 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !462, file: !455, line: 334, baseType: !138, size: 64, offset: 640)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !462, file: !455, line: 343, baseType: !481, size: 256, offset: 704)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !462, file: !455, line: 340, size: 256, elements: !482)
!482 = !{!483, !484}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !481, file: !455, line: 341, baseType: !273, size: 192, align: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !481, file: !455, line: 342, baseType: !138, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !462, file: !455, line: 351, baseType: !142, size: 128, offset: 960)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !462, file: !455, line: 353, baseType: !487, size: 64, offset: 1088)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !455, line: 353, flags: DIFlagFwdDecl)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !462, file: !455, line: 356, baseType: !490, size: 64, offset: 1152)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!492 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !455, line: 356, flags: DIFlagFwdDecl)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !462, file: !455, line: 359, baseType: !138, size: 64, offset: 1216)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !462, file: !455, line: 361, baseType: !495, size: 64, offset: 1280)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !473, line: 526, flags: DIFlagFwdDecl)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !462, file: !455, line: 362, baseType: !146, size: 64, offset: 1344)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !462, file: !455, line: 365, baseType: !154, size: 64, offset: 1408)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !462, file: !455, line: 373, baseType: !500, offset: 1472)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !455, line: 296, elements: !263)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !458, file: !455, line: 391, baseType: !269, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !458, file: !455, line: 392, baseType: !326, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !458, file: !455, line: 394, baseType: !504, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!138, !495, !138, !138, !138, !138}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !458, file: !455, line: 398, baseType: !138, size: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !458, file: !455, line: 399, baseType: !138, size: 64, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !458, file: !455, line: 405, baseType: !138, size: 64, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !458, file: !455, line: 406, baseType: !138, size: 64, offset: 448)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !458, file: !455, line: 407, baseType: !512, size: 64, offset: 512)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !473, line: 286, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !473, line: 286, size: 64, elements: !515)
!515 = !{!516}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !514, file: !473, line: 286, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !478, line: 18, baseType: !138)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !458, file: !455, line: 416, baseType: !299, size: 32, offset: 576)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !458, file: !455, line: 428, baseType: !299, size: 32, offset: 608)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !458, file: !455, line: 437, baseType: !299, size: 32, offset: 640)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !458, file: !455, line: 447, baseType: !299, size: 32, offset: 672)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !458, file: !455, line: 450, baseType: !154, size: 64, offset: 704)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !458, file: !455, line: 452, baseType: !199, size: 32, offset: 768)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !458, file: !455, line: 454, baseType: !525, offset: 800)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !256, line: 83, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !256, line: 71, elements: !527)
!527 = !{!528}
!528 = !DIDerivedType(tag: DW_TAG_member, scope: !526, file: !256, line: 72, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !526, file: !256, line: 72, elements: !530)
!530 = !{!531}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !529, file: !256, line: 73, baseType: !257)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !458, file: !455, line: 457, baseType: !533, size: 256, offset: 832)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !534, line: 35, size: 256, elements: !535)
!534 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!535 = !{!536, !537, !538, !539}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !533, file: !534, line: 36, baseType: !154, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !533, file: !534, line: 42, baseType: !154, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !533, file: !534, line: 46, baseType: !255, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !533, file: !534, line: 47, baseType: !142, size: 128, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !458, file: !455, line: 459, baseType: !142, size: 128, offset: 1088)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !458, file: !455, line: 466, baseType: !138, size: 64, offset: 1216)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !458, file: !455, line: 467, baseType: !138, size: 64, offset: 1280)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !458, file: !455, line: 469, baseType: !138, size: 64, offset: 1344)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !458, file: !455, line: 470, baseType: !138, size: 64, offset: 1408)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !458, file: !455, line: 471, baseType: !156, size: 64, offset: 1472)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !458, file: !455, line: 472, baseType: !138, size: 64, offset: 1536)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !458, file: !455, line: 473, baseType: !138, size: 64, offset: 1600)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !458, file: !455, line: 474, baseType: !138, size: 64, offset: 1664)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !458, file: !455, line: 475, baseType: !138, size: 64, offset: 1728)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !458, file: !455, line: 477, baseType: !525, offset: 1792)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !458, file: !455, line: 478, baseType: !138, size: 64, offset: 1792)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !458, file: !455, line: 478, baseType: !138, size: 64, offset: 1856)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !458, file: !455, line: 478, baseType: !138, size: 64, offset: 1920)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !458, file: !455, line: 478, baseType: !138, size: 64, offset: 1984)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !458, file: !455, line: 479, baseType: !138, size: 64, offset: 2048)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !458, file: !455, line: 479, baseType: !138, size: 64, offset: 2112)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !458, file: !455, line: 479, baseType: !138, size: 64, offset: 2176)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !458, file: !455, line: 480, baseType: !138, size: 64, offset: 2240)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !458, file: !455, line: 480, baseType: !138, size: 64, offset: 2304)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !458, file: !455, line: 480, baseType: !138, size: 64, offset: 2368)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !458, file: !455, line: 480, baseType: !138, size: 64, offset: 2432)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !458, file: !455, line: 482, baseType: !563, size: 2816, offset: 2496)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 2816, elements: !564)
!564 = !{!565}
!565 = !DISubrange(count: 44)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !458, file: !455, line: 488, baseType: !567, size: 256, offset: 5312)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !568, line: 60, size: 256, elements: !569)
!568 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!569 = !{!570}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !567, file: !568, line: 61, baseType: !571, size: 256)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 256, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 4)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !458, file: !455, line: 490, baseType: !575, size: 64, offset: 5568)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !455, line: 490, flags: DIFlagFwdDecl)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !458, file: !455, line: 493, baseType: !578, size: 896, offset: 5632)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !579, line: 53, baseType: !580)
!579 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !579, line: 13, size: 896, elements: !581)
!581 = !{!582, !583, !584, !585, !588, !589, !596, !597, !617, !618, !619}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !580, file: !579, line: 18, baseType: !326, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !580, file: !579, line: 28, baseType: !156, size: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !580, file: !579, line: 31, baseType: !533, size: 256, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !580, file: !579, line: 32, baseType: !586, size: 64, offset: 384)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !579, line: 32, flags: DIFlagFwdDecl)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !580, file: !579, line: 37, baseType: !177, size: 16, offset: 448)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !580, file: !579, line: 40, baseType: !590, size: 192, offset: 512)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !591, line: 53, size: 192, elements: !592)
!591 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!592 = !{!593, !594, !595}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !590, file: !591, line: 54, baseType: !154, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !590, file: !591, line: 55, baseType: !525, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !590, file: !591, line: 59, baseType: !142, size: 128, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !580, file: !579, line: 41, baseType: !146, size: 64, offset: 704)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !580, file: !579, line: 42, baseType: !598, size: 64, offset: 768)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !600)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !601, line: 13, size: 896, elements: !602)
!601 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!602 = !{!603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !600, file: !601, line: 14, baseType: !146, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !600, file: !601, line: 15, baseType: !138, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !600, file: !601, line: 17, baseType: !138, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !600, file: !601, line: 17, baseType: !138, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !600, file: !601, line: 19, baseType: !96, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !600, file: !601, line: 21, baseType: !96, size: 64, offset: 320)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !600, file: !601, line: 22, baseType: !96, size: 64, offset: 384)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !600, file: !601, line: 23, baseType: !96, size: 64, offset: 448)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !600, file: !601, line: 24, baseType: !96, size: 64, offset: 512)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !600, file: !601, line: 25, baseType: !96, size: 64, offset: 576)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !600, file: !601, line: 26, baseType: !96, size: 64, offset: 640)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !600, file: !601, line: 27, baseType: !96, size: 64, offset: 704)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !600, file: !601, line: 28, baseType: !96, size: 64, offset: 768)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !600, file: !601, line: 29, baseType: !96, size: 64, offset: 832)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !580, file: !579, line: 44, baseType: !299, size: 32, offset: 832)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !580, file: !579, line: 50, baseType: !217, size: 16, offset: 864)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !580, file: !579, line: 51, baseType: !620, size: 16, offset: 880)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !161, line: 18, baseType: !621)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !163, line: 23, baseType: !622)
!622 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !458, file: !455, line: 495, baseType: !138, size: 64, offset: 6528)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !458, file: !455, line: 497, baseType: !625, size: 64, offset: 6592)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !455, line: 381, size: 384, elements: !627)
!627 = !{!628, !629, !635}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !626, file: !455, line: 382, baseType: !299, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !626, file: !455, line: 383, baseType: !630, size: 128, offset: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !455, line: 376, size: 128, elements: !631)
!631 = !{!632, !633}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !630, file: !455, line: 377, baseType: !280, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !630, file: !455, line: 378, baseType: !634, size: 64, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !626, file: !455, line: 384, baseType: !636, size: 192, offset: 192)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !637, line: 26, size: 192, elements: !638)
!637 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!638 = !{!639, !640}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !636, file: !637, line: 27, baseType: !7, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !636, file: !637, line: 28, baseType: !641, size: 128, offset: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !642, line: 43, size: 128, elements: !643)
!642 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!643 = !{!644, !645}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !641, file: !642, line: 44, baseType: !255)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !641, file: !642, line: 45, baseType: !142, size: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !458, file: !455, line: 500, baseType: !525, offset: 6656)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !458, file: !455, line: 501, baseType: !648, size: 64, offset: 6656)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !455, line: 387, flags: DIFlagFwdDecl)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !458, file: !455, line: 516, baseType: !651, size: 64, offset: 6720)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !653, line: 18, flags: DIFlagFwdDecl)
!653 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!654 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !458, file: !455, line: 519, baseType: !495, size: 64, offset: 6784)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !458, file: !455, line: 521, baseType: !656, size: 64, offset: 6848)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !455, line: 521, flags: DIFlagFwdDecl)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !458, file: !455, line: 545, baseType: !299, size: 32, offset: 6912)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !458, file: !455, line: 548, baseType: !660, size: 8, offset: 6944)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !137, line: 30, baseType: !661)
!661 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !458, file: !455, line: 550, baseType: !663, offset: 6952)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !664, line: 142, elements: !263)
!664 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!665 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !458, file: !455, line: 554, baseType: !151, size: 256, offset: 6976)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !458, file: !455, line: 557, baseType: !233, size: 32, offset: 7232)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !454, file: !455, line: 565, baseType: !668, offset: 7296)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, elements: !669)
!669 = !{!670}
!670 = !DISubrange(count: -1)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !281, file: !282, line: 758, baseType: !453, size: 64, offset: 3968)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !281, file: !282, line: 761, baseType: !673, size: 320, offset: 4032)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !568, line: 34, size: 320, elements: !674)
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !673, file: !568, line: 35, baseType: !326, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !673, file: !568, line: 36, baseType: !677, size: 256, offset: 64)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 256, elements: !572)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !281, file: !282, line: 766, baseType: !199, size: 32, offset: 4352)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !281, file: !282, line: 767, baseType: !199, size: 32, offset: 4384)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !281, file: !282, line: 768, baseType: !199, size: 32, offset: 4416)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !281, file: !282, line: 770, baseType: !199, size: 32, offset: 4448)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !281, file: !282, line: 772, baseType: !138, size: 64, offset: 4480)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !281, file: !282, line: 775, baseType: !7, size: 32, offset: 4544)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !281, file: !282, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !281, file: !282, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !281, file: !282, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !281, file: !282, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !281, file: !282, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !281, file: !282, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !281, file: !282, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !281, file: !282, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !281, file: !282, line: 831, baseType: !138, size: 64, offset: 4672)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !281, file: !282, line: 833, baseType: !694, size: 384, offset: 4736)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !695)
!695 = !{!696, !701}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !694, file: !12, line: 26, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!96, !700}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, scope: !694, file: !12, line: 27, baseType: !702, size: 320, offset: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !694, file: !12, line: 27, size: 320, elements: !703)
!703 = !{!704, !714, !741}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !702, file: !12, line: 36, baseType: !705, size: 320)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !702, file: !12, line: 29, size: 320, elements: !706)
!706 = !{!707, !709, !710, !711, !712, !713}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !705, file: !12, line: 30, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !705, file: !12, line: 31, baseType: !233, size: 32, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !705, file: !12, line: 32, baseType: !233, size: 32, offset: 96)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !705, file: !12, line: 33, baseType: !233, size: 32, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !705, file: !12, line: 34, baseType: !326, size: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !705, file: !12, line: 35, baseType: !708, size: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !702, file: !12, line: 46, baseType: !715, size: 192)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !702, file: !12, line: 38, size: 192, elements: !716)
!716 = !{!717, !718, !719, !740}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !715, file: !12, line: 39, baseType: !405, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !715, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, scope: !715, file: !12, line: 41, baseType: !720, size: 64, offset: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !715, file: !12, line: 41, size: 64, elements: !721)
!721 = !{!722, !730}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !720, file: !12, line: 42, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !725, line: 7, size: 128, elements: !726)
!725 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!726 = !{!727, !729}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !724, file: !725, line: 8, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !407, line: 93, baseType: !164)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !724, file: !725, line: 9, baseType: !164, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !720, file: !12, line: 43, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !733, line: 7, size: 64, elements: !734)
!733 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!734 = !{!735, !739}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !732, file: !733, line: 8, baseType: !736, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !733, line: 5, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !161, line: 20, baseType: !738)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !163, line: 26, baseType: !199)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !732, file: !733, line: 9, baseType: !737, size: 32, offset: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !715, file: !12, line: 45, baseType: !326, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !702, file: !12, line: 54, baseType: !742, size: 256)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !702, file: !12, line: 48, size: 256, elements: !743)
!743 = !{!744, !747, !748, !749, !750}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !742, file: !12, line: 49, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !742, file: !12, line: 50, baseType: !199, size: 32, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !742, file: !12, line: 51, baseType: !199, size: 32, offset: 96)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !742, file: !12, line: 52, baseType: !138, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !742, file: !12, line: 53, baseType: !138, size: 64, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !281, file: !282, line: 835, baseType: !752, size: 32, offset: 5120)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !137, line: 22, baseType: !753)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !407, line: 28, baseType: !199)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !281, file: !282, line: 836, baseType: !752, size: 32, offset: 5152)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !281, file: !282, line: 840, baseType: !138, size: 64, offset: 5184)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !281, file: !282, line: 849, baseType: !280, size: 64, offset: 5248)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !281, file: !282, line: 852, baseType: !280, size: 64, offset: 5312)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !281, file: !282, line: 857, baseType: !142, size: 128, offset: 5376)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !281, file: !282, line: 858, baseType: !142, size: 128, offset: 5504)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !281, file: !282, line: 859, baseType: !280, size: 64, offset: 5632)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !281, file: !282, line: 867, baseType: !142, size: 128, offset: 5696)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !281, file: !282, line: 868, baseType: !142, size: 128, offset: 5824)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !281, file: !282, line: 871, baseType: !764, size: 64, offset: 5952)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !766, line: 59, size: 768, elements: !767)
!766 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!767 = !{!768, !769, !770, !771, !782, !783, !790, !799}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !765, file: !766, line: 61, baseType: !294, size: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !765, file: !766, line: 62, baseType: !7, size: 32, offset: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !765, file: !766, line: 63, baseType: !525, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !765, file: !766, line: 65, baseType: !772, size: 256, offset: 64)
!772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !773, size: 256, elements: !572)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !137, line: 182, size: 64, elements: !774)
!774 = !{!775}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !773, file: !137, line: 183, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !137, line: 186, size: 128, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !777, file: !137, line: 187, baseType: !776, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !777, file: !137, line: 187, baseType: !781, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !765, file: !766, line: 66, baseType: !773, size: 64, offset: 320)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !765, file: !766, line: 68, baseType: !784, size: 128, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !785, line: 40, baseType: !786)
!785 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !785, line: 36, size: 128, elements: !787)
!787 = !{!788, !789}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !786, file: !785, line: 37, baseType: !525)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !786, file: !785, line: 38, baseType: !142, size: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !765, file: !766, line: 69, baseType: !791, size: 128, align: 64, offset: 512)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !137, line: 216, size: 128, align: 64, elements: !792)
!792 = !{!793, !795}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !791, file: !137, line: 217, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !791, file: !137, line: 218, baseType: !796, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{null, !794}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !765, file: !766, line: 70, baseType: !800, size: 128, offset: 640)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !801, size: 128, elements: !446)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !766, line: 54, size: 128, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !801, file: !766, line: 55, baseType: !199, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !801, file: !766, line: 56, baseType: !805, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !766, line: 56, flags: DIFlagFwdDecl)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !281, file: !282, line: 872, baseType: !808, size: 512, offset: 6016)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 512, elements: !572)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !281, file: !282, line: 873, baseType: !142, size: 128, offset: 6528)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !281, file: !282, line: 874, baseType: !142, size: 128, offset: 6656)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !281, file: !282, line: 876, baseType: !812, size: 64, offset: 6784)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !281, file: !282, line: 879, baseType: !814, size: 64, offset: 6848)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !281, file: !282, line: 882, baseType: !814, size: 64, offset: 6912)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !281, file: !282, line: 884, baseType: !326, size: 64, offset: 6976)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !281, file: !282, line: 885, baseType: !326, size: 64, offset: 7040)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !281, file: !282, line: 890, baseType: !326, size: 64, offset: 7104)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !281, file: !282, line: 891, baseType: !820, size: 128, offset: 7168)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !282, line: 242, size: 128, elements: !821)
!821 = !{!822, !823, !824}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !820, file: !282, line: 244, baseType: !326, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !820, file: !282, line: 245, baseType: !326, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !820, file: !282, line: 246, baseType: !255, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !281, file: !282, line: 900, baseType: !138, size: 64, offset: 7296)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !281, file: !282, line: 901, baseType: !138, size: 64, offset: 7360)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !281, file: !282, line: 904, baseType: !326, size: 64, offset: 7424)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !281, file: !282, line: 907, baseType: !326, size: 64, offset: 7488)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !281, file: !282, line: 910, baseType: !138, size: 64, offset: 7552)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !281, file: !282, line: 911, baseType: !138, size: 64, offset: 7616)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !281, file: !282, line: 914, baseType: !832, size: 640, offset: 7680)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !833, line: 123, size: 640, elements: !834)
!833 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!834 = !{!835, !843, !844}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !832, file: !833, line: 124, baseType: !836, size: 576)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !837, size: 576, elements: !841)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !833, line: 108, size: 192, elements: !838)
!838 = !{!839, !840}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !837, file: !833, line: 109, baseType: !326, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !837, file: !833, line: 110, baseType: !420, size: 128, offset: 64)
!841 = !{!842}
!842 = !DISubrange(count: 3)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !832, file: !833, line: 125, baseType: !7, size: 32, offset: 576)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !832, file: !833, line: 126, baseType: !7, size: 32, offset: 608)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !281, file: !282, line: 917, baseType: !846, size: 192, offset: 8320)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !833, line: 134, size: 192, elements: !847)
!847 = !{!848, !849}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !846, file: !833, line: 135, baseType: !791, size: 128, align: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !846, file: !833, line: 136, baseType: !7, size: 32, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !281, file: !282, line: 923, baseType: !851, size: 64, offset: 8512)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !853)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !282, line: 923, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !281, file: !282, line: 926, baseType: !851, size: 64, offset: 8576)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !281, file: !282, line: 929, baseType: !851, size: 64, offset: 8640)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !281, file: !282, line: 933, baseType: !857, size: 64, offset: 8704)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !282, line: 933, flags: DIFlagFwdDecl)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !281, file: !282, line: 943, baseType: !860, size: 128, offset: 8768)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 128, elements: !861)
!861 = !{!862}
!862 = !DISubrange(count: 16)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !281, file: !282, line: 945, baseType: !864, size: 64, offset: 8896)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !282, line: 49, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !281, file: !282, line: 956, baseType: !867, size: 64, offset: 8960)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !282, line: 45, flags: DIFlagFwdDecl)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !281, file: !282, line: 959, baseType: !870, size: 64, offset: 9024)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !282, line: 959, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !281, file: !282, line: 962, baseType: !873, size: 64, offset: 9088)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !282, line: 66, flags: DIFlagFwdDecl)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !281, file: !282, line: 966, baseType: !876, size: 64, offset: 9152)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !282, line: 50, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !281, file: !282, line: 969, baseType: !879, size: 64, offset: 9216)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !833, line: 223, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !281, file: !282, line: 970, baseType: !882, size: 64, offset: 9280)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !282, line: 62, flags: DIFlagFwdDecl)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !281, file: !282, line: 971, baseType: !885, size: 64, offset: 9344)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !886, line: 25, baseType: !887)
!886 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !886, line: 23, size: 64, elements: !888)
!888 = !{!889}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !887, file: !886, line: 24, baseType: !445, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !281, file: !282, line: 972, baseType: !885, size: 64, offset: 9408)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !281, file: !282, line: 974, baseType: !885, size: 64, offset: 9472)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !281, file: !282, line: 975, baseType: !893, size: 192, offset: 9536)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !894, line: 30, size: 192, elements: !895)
!894 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!895 = !{!896, !897}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !893, file: !894, line: 31, baseType: !142, size: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !893, file: !894, line: 32, baseType: !885, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !281, file: !282, line: 976, baseType: !138, size: 64, offset: 9728)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !281, file: !282, line: 977, baseType: !900, size: 64, offset: 9792)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !137, line: 55, baseType: !901)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !407, line: 72, baseType: !902)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !407, line: 16, baseType: !138)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !281, file: !282, line: 978, baseType: !7, size: 32, offset: 9856)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !281, file: !282, line: 980, baseType: !794, size: 64, offset: 9920)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !281, file: !282, line: 989, baseType: !906, size: 128, offset: 9984)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !907, line: 35, size: 128, elements: !908)
!907 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!908 = !{!909, !910, !911}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !906, file: !907, line: 36, baseType: !199, size: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !906, file: !907, line: 37, baseType: !299, size: 32, offset: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !906, file: !907, line: 38, baseType: !912, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !907, line: 23, flags: DIFlagFwdDecl)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !281, file: !282, line: 992, baseType: !326, size: 64, offset: 10112)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !281, file: !282, line: 993, baseType: !326, size: 64, offset: 10176)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !281, file: !282, line: 996, baseType: !525, offset: 10240)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !281, file: !282, line: 999, baseType: !255, offset: 10240)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !281, file: !282, line: 1001, baseType: !919, size: 64, offset: 10240)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !282, line: 636, size: 64, elements: !920)
!920 = !{!921}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !919, file: !282, line: 637, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !281, file: !282, line: 1005, baseType: !265, size: 128, offset: 10304)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !281, file: !282, line: 1007, baseType: !280, size: 64, offset: 10432)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !281, file: !282, line: 1009, baseType: !926, size: 64, offset: 10496)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !282, line: 1009, flags: DIFlagFwdDecl)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !281, file: !282, line: 1043, baseType: !146, size: 64, offset: 10560)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !281, file: !282, line: 1046, baseType: !930, size: 64, offset: 10624)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !282, line: 41, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !281, file: !282, line: 1050, baseType: !933, size: 64, offset: 10688)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !282, line: 42, flags: DIFlagFwdDecl)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !281, file: !282, line: 1054, baseType: !936, size: 64, offset: 10752)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !282, line: 55, flags: DIFlagFwdDecl)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !281, file: !282, line: 1056, baseType: !939, size: 64, offset: 10816)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !282, line: 40, flags: DIFlagFwdDecl)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !281, file: !282, line: 1058, baseType: !942, size: 64, offset: 10880)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !282, line: 47, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !281, file: !282, line: 1061, baseType: !945, size: 64, offset: 10944)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !282, line: 43, flags: DIFlagFwdDecl)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !281, file: !282, line: 1064, baseType: !138, size: 64, offset: 11008)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !281, file: !282, line: 1065, baseType: !949, size: 64, offset: 11072)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !894, line: 14, baseType: !951)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !894, line: 12, size: 384, elements: !952)
!952 = !{!953}
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !951, file: !894, line: 13, baseType: !954, size: 384)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !951, file: !894, line: 13, size: 384, elements: !955)
!955 = !{!956, !957, !958, !959}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !954, file: !894, line: 13, baseType: !199, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !954, file: !894, line: 13, baseType: !199, size: 32, offset: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !954, file: !894, line: 13, baseType: !199, size: 32, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !954, file: !894, line: 13, baseType: !960, size: 256, offset: 128)
!960 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !961, line: 32, size: 256, elements: !962)
!961 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!962 = !{!963, !969, !982, !988, !998, !1018, !1023}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !960, file: !961, line: 37, baseType: !964, size: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !960, file: !961, line: 34, size: 64, elements: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !964, file: !961, line: 35, baseType: !753, size: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !964, file: !961, line: 36, baseType: !968, size: 32, offset: 32)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !407, line: 49, baseType: !7)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !960, file: !961, line: 45, baseType: !970, size: 192)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !960, file: !961, line: 40, size: 192, elements: !971)
!971 = !{!972, !974, !975, !981}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !970, file: !961, line: 41, baseType: !973, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !407, line: 95, baseType: !199)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !970, file: !961, line: 42, baseType: !199, size: 32, offset: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !970, file: !961, line: 43, baseType: !976, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !961, line: 11, baseType: !977)
!977 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !961, line: 8, size: 64, elements: !978)
!978 = !{!979, !980}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !977, file: !961, line: 9, baseType: !199, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !977, file: !961, line: 10, baseType: !146, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !970, file: !961, line: 44, baseType: !199, size: 32, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !960, file: !961, line: 52, baseType: !983, size: 128)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !960, file: !961, line: 48, size: 128, elements: !984)
!984 = !{!985, !986, !987}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !983, file: !961, line: 49, baseType: !753, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !983, file: !961, line: 50, baseType: !968, size: 32, offset: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !983, file: !961, line: 51, baseType: !976, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !960, file: !961, line: 61, baseType: !989, size: 256)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !960, file: !961, line: 55, size: 256, elements: !990)
!990 = !{!991, !992, !993, !994, !997}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !989, file: !961, line: 56, baseType: !753, size: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !989, file: !961, line: 57, baseType: !968, size: 32, offset: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !989, file: !961, line: 58, baseType: !199, size: 32, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !989, file: !961, line: 59, baseType: !995, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !407, line: 94, baseType: !996)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !407, line: 15, baseType: !96)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !989, file: !961, line: 60, baseType: !995, size: 64, offset: 192)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !960, file: !961, line: 95, baseType: !999, size: 256)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !960, file: !961, line: 64, size: 256, elements: !1000)
!1000 = !{!1001, !1002}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !999, file: !961, line: 65, baseType: !146, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, scope: !999, file: !961, line: 77, baseType: !1003, size: 192, offset: 64)
!1003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !999, file: !961, line: 77, size: 192, elements: !1004)
!1004 = !{!1005, !1006, !1013}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1003, file: !961, line: 82, baseType: !622, size: 16)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1003, file: !961, line: 88, baseType: !1007, size: 192)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1003, file: !961, line: 84, size: 192, elements: !1008)
!1008 = !{!1009, !1011, !1012}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1007, file: !961, line: 85, baseType: !1010, size: 64)
!1010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 64, elements: !401)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1007, file: !961, line: 86, baseType: !146, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1007, file: !961, line: 87, baseType: !146, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1003, file: !961, line: 93, baseType: !1014, size: 96)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1003, file: !961, line: 90, size: 96, elements: !1015)
!1015 = !{!1016, !1017}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1014, file: !961, line: 91, baseType: !1010, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1014, file: !961, line: 92, baseType: !234, size: 32, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !960, file: !961, line: 101, baseType: !1019, size: 128)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !960, file: !961, line: 98, size: 128, elements: !1020)
!1020 = !{!1021, !1022}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1019, file: !961, line: 99, baseType: !96, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1019, file: !961, line: 100, baseType: !199, size: 32, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !960, file: !961, line: 108, baseType: !1024, size: 128)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !960, file: !961, line: 104, size: 128, elements: !1025)
!1025 = !{!1026, !1027, !1028}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1024, file: !961, line: 105, baseType: !146, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1024, file: !961, line: 106, baseType: !199, size: 32, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1024, file: !961, line: 107, baseType: !7, size: 32, offset: 96)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !281, file: !282, line: 1067, baseType: !1030, offset: 11136)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1031, line: 12, elements: !263)
!1031 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !281, file: !282, line: 1099, baseType: !1033, size: 64, offset: 11136)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !282, line: 56, flags: DIFlagFwdDecl)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !281, file: !282, line: 1103, baseType: !142, size: 128, offset: 11200)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !281, file: !282, line: 1104, baseType: !1037, size: 64, offset: 11328)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !282, line: 46, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !281, file: !282, line: 1105, baseType: !590, size: 192, offset: 11392)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !281, file: !282, line: 1106, baseType: !7, size: 32, offset: 11584)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !281, file: !282, line: 1109, baseType: !1042, size: 128, offset: 11648)
!1042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1043, size: 128, elements: !1045)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !282, line: 51, flags: DIFlagFwdDecl)
!1045 = !{!1046}
!1046 = !DISubrange(count: 2)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !281, file: !282, line: 1110, baseType: !590, size: 192, offset: 11776)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !281, file: !282, line: 1111, baseType: !142, size: 128, offset: 11968)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !281, file: !282, line: 1173, baseType: !1050, size: 64, offset: 12096)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1052, line: 62, size: 256, align: 256, elements: !1053)
!1052 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1053 = !{!1054, !1055, !1056, !1061}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1051, file: !1052, line: 75, baseType: !234, size: 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1051, file: !1052, line: 90, baseType: !234, size: 32, offset: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1051, file: !1052, line: 124, baseType: !1057, size: 64, offset: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1051, file: !1052, line: 109, size: 64, elements: !1058)
!1058 = !{!1059, !1060}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1057, file: !1052, line: 110, baseType: !327, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1057, file: !1052, line: 112, baseType: !327, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1051, file: !1052, line: 144, baseType: !234, size: 32, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !281, file: !282, line: 1174, baseType: !233, size: 32, offset: 12160)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !281, file: !282, line: 1179, baseType: !138, size: 64, offset: 12224)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !281, file: !282, line: 1182, baseType: !1065, size: 128, offset: 12288)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !568, line: 76, size: 128, elements: !1066)
!1066 = !{!1067, !1072, !1073}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1065, file: !568, line: 85, baseType: !1068, size: 64)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1069, line: 7, size: 64, elements: !1070)
!1069 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1070 = !{!1071}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1068, file: !1069, line: 12, baseType: !442, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1065, file: !568, line: 88, baseType: !660, size: 8, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1065, file: !568, line: 95, baseType: !660, size: 8, offset: 72)
!1074 = !DIDerivedType(tag: DW_TAG_member, scope: !281, file: !282, line: 1184, baseType: !1075, size: 128, offset: 12416)
!1075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !281, file: !282, line: 1184, size: 128, elements: !1076)
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1075, file: !282, line: 1185, baseType: !294, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1075, file: !282, line: 1186, baseType: !791, size: 128, align: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !281, file: !282, line: 1190, baseType: !1080, size: 64, offset: 12544)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !282, line: 53, flags: DIFlagFwdDecl)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !281, file: !282, line: 1192, baseType: !1083, size: 128, offset: 12608)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !568, line: 64, size: 128, elements: !1084)
!1084 = !{!1085, !1178, !1179}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1083, file: !568, line: 65, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !455, line: 68, size: 512, align: 128, elements: !1088)
!1088 = !{!1089, !1090, !1170, !1177}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1087, file: !455, line: 69, baseType: !138, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, scope: !1087, file: !455, line: 77, baseType: !1091, size: 320, offset: 64)
!1091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1087, file: !455, line: 77, size: 320, elements: !1092)
!1092 = !{!1093, !1102, !1107, !1135, !1143, !1149, !1162, !1169}
!1093 = !DIDerivedType(tag: DW_TAG_member, scope: !1091, file: !455, line: 78, baseType: !1094, size: 320)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1091, file: !455, line: 78, size: 320, elements: !1095)
!1095 = !{!1096, !1097, !1100, !1101}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1094, file: !455, line: 84, baseType: !142, size: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1094, file: !455, line: 86, baseType: !1098, size: 64, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !455, line: 26, flags: DIFlagFwdDecl)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1094, file: !455, line: 87, baseType: !138, size: 64, offset: 192)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1094, file: !455, line: 94, baseType: !138, size: 64, offset: 256)
!1102 = !DIDerivedType(tag: DW_TAG_member, scope: !1091, file: !455, line: 96, baseType: !1103, size: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1091, file: !455, line: 96, size: 64, elements: !1104)
!1104 = !{!1105}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1103, file: !455, line: 101, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !137, line: 143, baseType: !326)
!1107 = !DIDerivedType(tag: DW_TAG_member, scope: !1091, file: !455, line: 103, baseType: !1108, size: 320)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1091, file: !455, line: 103, size: 320, elements: !1109)
!1109 = !{!1110, !1120, !1123, !1124}
!1110 = !DIDerivedType(tag: DW_TAG_member, scope: !1108, file: !455, line: 104, baseType: !1111, size: 128)
!1111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1108, file: !455, line: 104, size: 128, elements: !1112)
!1112 = !{!1113, !1114}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1111, file: !455, line: 105, baseType: !142, size: 128)
!1114 = !DIDerivedType(tag: DW_TAG_member, scope: !1111, file: !455, line: 106, baseType: !1115, size: 128)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1111, file: !455, line: 106, size: 128, elements: !1116)
!1116 = !{!1117, !1118, !1119}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1115, file: !455, line: 107, baseType: !1086, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1115, file: !455, line: 109, baseType: !199, size: 32, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1115, file: !455, line: 110, baseType: !199, size: 32, offset: 96)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1108, file: !455, line: 117, baseType: !1121, size: 64, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !455, line: 117, flags: DIFlagFwdDecl)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1108, file: !455, line: 119, baseType: !146, size: 64, offset: 192)
!1124 = !DIDerivedType(tag: DW_TAG_member, scope: !1108, file: !455, line: 120, baseType: !1125, size: 64, offset: 256)
!1125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1108, file: !455, line: 120, size: 64, elements: !1126)
!1126 = !{!1127, !1128, !1129}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1125, file: !455, line: 121, baseType: !146, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1125, file: !455, line: 122, baseType: !138, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, scope: !1125, file: !455, line: 123, baseType: !1130, size: 32)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1125, file: !455, line: 123, size: 32, elements: !1131)
!1131 = !{!1132, !1133, !1134}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1130, file: !455, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1130, file: !455, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1130, file: !455, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1135 = !DIDerivedType(tag: DW_TAG_member, scope: !1091, file: !455, line: 130, baseType: !1136, size: 192)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1091, file: !455, line: 130, size: 192, elements: !1137)
!1137 = !{!1138, !1139, !1140, !1141, !1142}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1136, file: !455, line: 131, baseType: !138, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1136, file: !455, line: 134, baseType: !211, size: 8, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1136, file: !455, line: 135, baseType: !211, size: 8, offset: 72)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1136, file: !455, line: 136, baseType: !299, size: 32, offset: 96)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1136, file: !455, line: 137, baseType: !7, size: 32, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, scope: !1091, file: !455, line: 139, baseType: !1144, size: 256)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1091, file: !455, line: 139, size: 256, elements: !1145)
!1145 = !{!1146, !1147, !1148}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1144, file: !455, line: 140, baseType: !138, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1144, file: !455, line: 141, baseType: !299, size: 32, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1144, file: !455, line: 143, baseType: !142, size: 128, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_member, scope: !1091, file: !455, line: 145, baseType: !1150, size: 256)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1091, file: !455, line: 145, size: 256, elements: !1151)
!1151 = !{!1152, !1153, !1155, !1156, !1161}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1150, file: !455, line: 146, baseType: !138, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1150, file: !455, line: 147, baseType: !1154, size: 64, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !473, line: 509, baseType: !1086)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1150, file: !455, line: 148, baseType: !138, size: 64, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, scope: !1150, file: !455, line: 149, baseType: !1157, size: 64, offset: 192)
!1157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1150, file: !455, line: 149, size: 64, elements: !1158)
!1158 = !{!1159, !1160}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1157, file: !455, line: 150, baseType: !453, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1157, file: !455, line: 151, baseType: !299, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1150, file: !455, line: 156, baseType: !525, offset: 256)
!1162 = !DIDerivedType(tag: DW_TAG_member, scope: !1091, file: !455, line: 159, baseType: !1163, size: 128)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1091, file: !455, line: 159, size: 128, elements: !1164)
!1164 = !{!1165, !1168}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1163, file: !455, line: 161, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !455, line: 161, flags: DIFlagFwdDecl)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1163, file: !455, line: 162, baseType: !146, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1091, file: !455, line: 176, baseType: !791, size: 128, align: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, scope: !1087, file: !455, line: 179, baseType: !1171, size: 32, offset: 384)
!1171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1087, file: !455, line: 179, size: 32, elements: !1172)
!1172 = !{!1173, !1174, !1175, !1176}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1171, file: !455, line: 184, baseType: !299, size: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1171, file: !455, line: 192, baseType: !7, size: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1171, file: !455, line: 194, baseType: !7, size: 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1171, file: !455, line: 195, baseType: !199, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1087, file: !455, line: 199, baseType: !299, size: 32, offset: 416)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1083, file: !568, line: 67, baseType: !234, size: 32, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1083, file: !568, line: 68, baseType: !234, size: 32, offset: 96)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !281, file: !282, line: 1206, baseType: !199, size: 32, offset: 12736)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !281, file: !282, line: 1207, baseType: !199, size: 32, offset: 12768)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !281, file: !282, line: 1209, baseType: !138, size: 64, offset: 12800)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !281, file: !282, line: 1219, baseType: !326, size: 64, offset: 12864)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !281, file: !282, line: 1220, baseType: !326, size: 64, offset: 12928)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !281, file: !282, line: 1317, baseType: !199, size: 32, offset: 12992)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !281, file: !282, line: 1319, baseType: !280, size: 64, offset: 13056)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !281, file: !282, line: 1322, baseType: !1188, size: 64, offset: 13120)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1190, line: 56, size: 512, elements: !1191)
!1190 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1198, !1199, !1201}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1189, file: !1190, line: 57, baseType: !1188, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1189, file: !1190, line: 58, baseType: !146, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1189, file: !1190, line: 59, baseType: !138, size: 64, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1189, file: !1190, line: 60, baseType: !138, size: 64, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1189, file: !1190, line: 61, baseType: !1197, size: 64, offset: 256)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1189, file: !1190, line: 62, baseType: !7, size: 32, offset: 320)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1189, file: !1190, line: 63, baseType: !1200, size: 64, offset: 384)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !137, line: 153, baseType: !326)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1189, file: !1190, line: 64, baseType: !1202, size: 64, offset: 448)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !281, file: !282, line: 1326, baseType: !294, size: 32, offset: 13184)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !281, file: !282, line: 1342, baseType: !146, size: 64, offset: 13248)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !281, file: !282, line: 1343, baseType: !327, size: 64, offset: 13312)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !281, file: !282, line: 1344, baseType: !326, size: 64, offset: 13376)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !281, file: !282, line: 1345, baseType: !327, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !281, file: !282, line: 1346, baseType: !327, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !281, file: !282, line: 1347, baseType: !327, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !281, file: !282, line: 1348, baseType: !791, size: 128, align: 64, offset: 13504)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !281, file: !282, line: 1358, baseType: !1213, size: 34816, offset: 13824)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1214, line: 485, size: 34816, elements: !1215)
!1214 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1215 = !{!1216, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1245, !1246, !1247, !1248, !1249, !1250, !1253, !1254, !1255}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1213, file: !1214, line: 487, baseType: !1217, size: 192)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1218, size: 192, elements: !841)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1219, line: 16, size: 64, elements: !1220)
!1219 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1220 = !{!1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1218, file: !1219, line: 17, baseType: !217, size: 16)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1218, file: !1219, line: 18, baseType: !217, size: 16, offset: 16)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1218, file: !1219, line: 19, baseType: !217, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1218, file: !1219, line: 19, baseType: !217, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1218, file: !1219, line: 19, baseType: !217, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1218, file: !1219, line: 19, baseType: !217, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1218, file: !1219, line: 19, baseType: !217, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1218, file: !1219, line: 20, baseType: !217, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1218, file: !1219, line: 20, baseType: !217, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1218, file: !1219, line: 20, baseType: !217, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1218, file: !1219, line: 20, baseType: !217, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1218, file: !1219, line: 20, baseType: !217, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1218, file: !1219, line: 20, baseType: !217, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1213, file: !1214, line: 491, baseType: !138, size: 64, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1213, file: !1214, line: 495, baseType: !177, size: 16, offset: 256)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1213, file: !1214, line: 496, baseType: !177, size: 16, offset: 272)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1213, file: !1214, line: 497, baseType: !177, size: 16, offset: 288)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1213, file: !1214, line: 498, baseType: !177, size: 16, offset: 304)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1213, file: !1214, line: 502, baseType: !138, size: 64, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1213, file: !1214, line: 503, baseType: !138, size: 64, offset: 384)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1213, file: !1214, line: 514, baseType: !1242, size: 256, offset: 448)
!1242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1243, size: 256, elements: !572)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1214, line: 483, flags: DIFlagFwdDecl)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1213, file: !1214, line: 516, baseType: !138, size: 64, offset: 704)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1213, file: !1214, line: 518, baseType: !138, size: 64, offset: 768)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1213, file: !1214, line: 520, baseType: !138, size: 64, offset: 832)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1213, file: !1214, line: 521, baseType: !138, size: 64, offset: 896)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1213, file: !1214, line: 522, baseType: !138, size: 64, offset: 960)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1213, file: !1214, line: 528, baseType: !1251, size: 64, offset: 1024)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1214, line: 10, flags: DIFlagFwdDecl)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1213, file: !1214, line: 535, baseType: !138, size: 64, offset: 1088)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1213, file: !1214, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1213, file: !1214, line: 540, baseType: !1256, size: 33280, offset: 1536)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1257, line: 317, size: 33280, elements: !1258)
!1257 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1258 = !{!1259, !1260, !1261}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1256, file: !1257, line: 330, baseType: !7, size: 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1256, file: !1257, line: 337, baseType: !138, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1256, file: !1257, line: 348, baseType: !1262, size: 32768, offset: 512)
!1262 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1257, line: 304, size: 32768, elements: !1263)
!1263 = !{!1264, !1277, !1318, !1368, !1385}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1262, file: !1257, line: 305, baseType: !1265, size: 896)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1257, line: 12, size: 896, elements: !1266)
!1266 = !{!1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1276}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1265, file: !1257, line: 13, baseType: !233, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1265, file: !1257, line: 14, baseType: !233, size: 32, offset: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1265, file: !1257, line: 15, baseType: !233, size: 32, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1265, file: !1257, line: 16, baseType: !233, size: 32, offset: 96)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1265, file: !1257, line: 17, baseType: !233, size: 32, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1265, file: !1257, line: 18, baseType: !233, size: 32, offset: 160)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1265, file: !1257, line: 19, baseType: !233, size: 32, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1265, file: !1257, line: 22, baseType: !1275, size: 640, offset: 224)
!1275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 640, elements: !182)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1265, file: !1257, line: 25, baseType: !233, size: 32, offset: 864)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1262, file: !1257, line: 306, baseType: !1278, size: 4096, align: 128)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1257, line: 34, size: 4096, align: 128, elements: !1279)
!1279 = !{!1280, !1281, !1282, !1283, !1284, !1299, !1300, !1301, !1305, !1309, !1313}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1278, file: !1257, line: 35, baseType: !217, size: 16)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1278, file: !1257, line: 36, baseType: !217, size: 16, offset: 16)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1278, file: !1257, line: 37, baseType: !217, size: 16, offset: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1278, file: !1257, line: 38, baseType: !217, size: 16, offset: 48)
!1284 = !DIDerivedType(tag: DW_TAG_member, scope: !1278, file: !1257, line: 39, baseType: !1285, size: 128, offset: 64)
!1285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1278, file: !1257, line: 39, size: 128, elements: !1286)
!1286 = !{!1287, !1292}
!1287 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !1257, line: 40, baseType: !1288, size: 128)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1285, file: !1257, line: 40, size: 128, elements: !1289)
!1289 = !{!1290, !1291}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1288, file: !1257, line: 41, baseType: !326, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1288, file: !1257, line: 42, baseType: !326, size: 64, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !1257, line: 44, baseType: !1293, size: 128)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1285, file: !1257, line: 44, size: 128, elements: !1294)
!1294 = !{!1295, !1296, !1297, !1298}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1293, file: !1257, line: 45, baseType: !233, size: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1293, file: !1257, line: 46, baseType: !233, size: 32, offset: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1293, file: !1257, line: 47, baseType: !233, size: 32, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1293, file: !1257, line: 48, baseType: !233, size: 32, offset: 96)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1278, file: !1257, line: 51, baseType: !233, size: 32, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1278, file: !1257, line: 52, baseType: !233, size: 32, offset: 224)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1278, file: !1257, line: 55, baseType: !1302, size: 1024, offset: 256)
!1302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 1024, elements: !1303)
!1303 = !{!1304}
!1304 = !DISubrange(count: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1278, file: !1257, line: 58, baseType: !1306, size: 2048, offset: 1280)
!1306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 2048, elements: !1307)
!1307 = !{!1308}
!1308 = !DISubrange(count: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1278, file: !1257, line: 60, baseType: !1310, size: 384, offset: 3328)
!1310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 384, elements: !1311)
!1311 = !{!1312}
!1312 = !DISubrange(count: 12)
!1313 = !DIDerivedType(tag: DW_TAG_member, scope: !1278, file: !1257, line: 62, baseType: !1314, size: 384, offset: 3712)
!1314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1278, file: !1257, line: 62, size: 384, elements: !1315)
!1315 = !{!1316, !1317}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1314, file: !1257, line: 63, baseType: !1310, size: 384)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1314, file: !1257, line: 64, baseType: !1310, size: 384)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1262, file: !1257, line: 307, baseType: !1319, size: 1088)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1257, line: 79, size: 1088, elements: !1320)
!1320 = !{!1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1367}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1319, file: !1257, line: 80, baseType: !233, size: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1319, file: !1257, line: 81, baseType: !233, size: 32, offset: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1319, file: !1257, line: 82, baseType: !233, size: 32, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1319, file: !1257, line: 83, baseType: !233, size: 32, offset: 96)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1319, file: !1257, line: 84, baseType: !233, size: 32, offset: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1319, file: !1257, line: 85, baseType: !233, size: 32, offset: 160)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1319, file: !1257, line: 86, baseType: !233, size: 32, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1319, file: !1257, line: 88, baseType: !1275, size: 640, offset: 224)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1319, file: !1257, line: 89, baseType: !218, size: 8, offset: 864)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1319, file: !1257, line: 90, baseType: !218, size: 8, offset: 872)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1319, file: !1257, line: 91, baseType: !218, size: 8, offset: 880)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1319, file: !1257, line: 92, baseType: !218, size: 8, offset: 888)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1319, file: !1257, line: 93, baseType: !218, size: 8, offset: 896)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1319, file: !1257, line: 94, baseType: !218, size: 8, offset: 904)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1319, file: !1257, line: 95, baseType: !1336, size: 64, offset: 960)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1338, line: 11, size: 128, elements: !1339)
!1338 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1339 = !{!1340, !1341}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1337, file: !1338, line: 12, baseType: !96, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1337, file: !1338, line: 13, baseType: !1342, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1344, line: 56, size: 1344, elements: !1345)
!1344 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1345 = !{!1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1343, file: !1344, line: 61, baseType: !138, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1343, file: !1344, line: 62, baseType: !138, size: 64, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1343, file: !1344, line: 63, baseType: !138, size: 64, offset: 128)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1343, file: !1344, line: 64, baseType: !138, size: 64, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1343, file: !1344, line: 65, baseType: !138, size: 64, offset: 256)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1343, file: !1344, line: 66, baseType: !138, size: 64, offset: 320)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1343, file: !1344, line: 68, baseType: !138, size: 64, offset: 384)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1343, file: !1344, line: 69, baseType: !138, size: 64, offset: 448)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1343, file: !1344, line: 70, baseType: !138, size: 64, offset: 512)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1343, file: !1344, line: 71, baseType: !138, size: 64, offset: 576)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1343, file: !1344, line: 72, baseType: !138, size: 64, offset: 640)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1343, file: !1344, line: 73, baseType: !138, size: 64, offset: 704)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1343, file: !1344, line: 74, baseType: !138, size: 64, offset: 768)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1343, file: !1344, line: 75, baseType: !138, size: 64, offset: 832)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1343, file: !1344, line: 76, baseType: !138, size: 64, offset: 896)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1343, file: !1344, line: 81, baseType: !138, size: 64, offset: 960)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1343, file: !1344, line: 83, baseType: !138, size: 64, offset: 1024)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1343, file: !1344, line: 84, baseType: !138, size: 64, offset: 1088)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1343, file: !1344, line: 85, baseType: !138, size: 64, offset: 1152)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1343, file: !1344, line: 86, baseType: !138, size: 64, offset: 1216)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1343, file: !1344, line: 87, baseType: !138, size: 64, offset: 1280)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1319, file: !1257, line: 96, baseType: !233, size: 32, offset: 1024)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1262, file: !1257, line: 308, baseType: !1369, size: 4608, align: 512)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1257, line: 289, size: 4608, align: 512, elements: !1370)
!1370 = !{!1371, !1372, !1381}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1369, file: !1257, line: 290, baseType: !1278, size: 4096, align: 128)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1369, file: !1257, line: 291, baseType: !1373, size: 512, offset: 4096)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1257, line: 268, size: 512, elements: !1374)
!1374 = !{!1375, !1376, !1377}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1373, file: !1257, line: 269, baseType: !326, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1373, file: !1257, line: 270, baseType: !326, size: 64, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1373, file: !1257, line: 271, baseType: !1378, size: 384, offset: 128)
!1378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 384, elements: !1379)
!1379 = !{!1380}
!1380 = !DISubrange(count: 6)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1369, file: !1257, line: 292, baseType: !1382, offset: 4608)
!1382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, elements: !1383)
!1383 = !{!1384}
!1384 = !DISubrange(count: 0)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1262, file: !1257, line: 309, baseType: !1386, size: 32768)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 32768, elements: !1387)
!1387 = !{!1388}
!1388 = !DISubrange(count: 4096)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !186, file: !128, line: 704, baseType: !251, size: 192, offset: 512)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !186, file: !128, line: 706, baseType: !199, size: 32, offset: 704)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !186, file: !128, line: 707, baseType: !199, size: 32, offset: 736)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !186, file: !128, line: 708, baseType: !1393, size: 5568, offset: 768)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !1394)
!1394 = !{!1395, !1728, !1730, !1733, !1734, !1785, !1879, !1880, !1881, !1882, !1883, !1892, !1997, !2010, !2429, !2430, !2434, !2436, !2437, !2438, !2442, !2448, !2449, !2452, !2453, !2454, !2457, !2458, !2459, !2460, !2492, !2493, !2494, !2497, !2500, !2501, !2502, !2503}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1393, file: !30, line: 462, baseType: !1396, size: 512)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1397, line: 64, size: 512, elements: !1398)
!1397 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!1398 = !{!1399, !1402, !1403, !1405, !1446, !1565, !1718, !1723, !1724, !1725, !1726, !1727}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1396, file: !1397, line: 65, baseType: !1400, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1396, file: !1397, line: 66, baseType: !142, size: 128, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1396, file: !1397, line: 67, baseType: !1404, size: 64, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1396, file: !1397, line: 68, baseType: !1406, size: 64, offset: 256)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1397, line: 192, size: 704, elements: !1408)
!1408 = !{!1409, !1410, !1411, !1412}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1407, file: !1397, line: 193, baseType: !142, size: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1407, file: !1397, line: 194, baseType: !525, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1407, file: !1397, line: 195, baseType: !1396, size: 512, offset: 128)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1407, file: !1397, line: 196, baseType: !1413, size: 64, offset: 640)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1415)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1397, line: 156, size: 192, elements: !1416)
!1416 = !{!1417, !1422, !1427}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1415, file: !1397, line: 157, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1419)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!199, !1406, !1404}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1415, file: !1397, line: 158, baseType: !1423, size: 64, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1424)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!1400, !1406, !1404}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1415, file: !1397, line: 159, baseType: !1428, size: 64, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1429)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!199, !1406, !1404, !1432}
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1397, line: 148, size: 20736, elements: !1434)
!1434 = !{!1435, !1438, !1440, !1441, !1445}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1433, file: !1397, line: 149, baseType: !1436, size: 192)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1437, size: 192, elements: !841)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1433, file: !1397, line: 150, baseType: !1439, size: 4096, offset: 192)
!1439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1437, size: 4096, elements: !1307)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1433, file: !1397, line: 151, baseType: !199, size: 32, offset: 4288)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1433, file: !1397, line: 152, baseType: !1442, size: 16384, offset: 4320)
!1442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 16384, elements: !1443)
!1443 = !{!1444}
!1444 = !DISubrange(count: 2048)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1433, file: !1397, line: 153, baseType: !199, size: 32, offset: 20704)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1396, file: !1397, line: 69, baseType: !1447, size: 64, offset: 320)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1397, line: 138, size: 448, elements: !1449)
!1449 = !{!1450, !1454, !1476, !1478, !1513, !1544, !1548}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1448, file: !1397, line: 139, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{null, !1404}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1448, file: !1397, line: 140, baseType: !1455, size: 64, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1457)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1458, line: 230, size: 128, elements: !1459)
!1458 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!1459 = !{!1460, !1472}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1457, file: !1458, line: 231, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!1464, !1404, !1466, !1437}
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !137, line: 60, baseType: !1465)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !407, line: 73, baseType: !996)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1458, line: 30, size: 128, elements: !1468)
!1468 = !{!1469, !1470}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1467, file: !1458, line: 31, baseType: !1400, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1467, file: !1458, line: 32, baseType: !1471, size: 16, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !137, line: 19, baseType: !177)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1457, file: !1458, line: 232, baseType: !1473, size: 64, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!1464, !1404, !1466, !1400, !900}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !1448, file: !1397, line: 141, baseType: !1477, size: 64, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1448, file: !1397, line: 142, baseType: !1479, size: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1482)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1458, line: 84, size: 320, elements: !1483)
!1483 = !{!1484, !1485, !1489, !1510, !1511}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1482, file: !1458, line: 85, baseType: !1400, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1482, file: !1458, line: 86, baseType: !1486, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!1471, !1404, !1466, !199}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1482, file: !1458, line: 88, baseType: !1490, size: 64, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!1471, !1404, !1493, !199}
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1458, line: 168, size: 448, elements: !1495)
!1495 = !{!1496, !1497, !1498, !1499, !1505, !1506}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1494, file: !1458, line: 169, baseType: !1467, size: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1494, file: !1458, line: 170, baseType: !900, size: 64, offset: 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1494, file: !1458, line: 171, baseType: !146, size: 64, offset: 192)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1494, file: !1458, line: 172, baseType: !1500, size: 64, offset: 256)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!1464, !495, !1404, !1493, !1437, !1503, !900}
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !137, line: 46, baseType: !1504)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !407, line: 88, baseType: !164)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1494, file: !1458, line: 174, baseType: !1500, size: 64, offset: 320)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1494, file: !1458, line: 176, baseType: !1507, size: 64, offset: 384)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!199, !495, !1404, !1493, !461}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1482, file: !1458, line: 90, baseType: !1477, size: 64, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1482, file: !1458, line: 91, baseType: !1512, size: 64, offset: 256)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1448, file: !1397, line: 143, baseType: !1514, size: 64, offset: 256)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!1517, !1404}
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1519)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1520)
!1520 = !{!1521, !1522, !1526, !1530, !1536, !1540}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1519, file: !18, line: 40, baseType: !17, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1519, file: !18, line: 41, baseType: !1523, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!660}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1519, file: !18, line: 42, baseType: !1527, size: 64, offset: 128)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!146}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1519, file: !18, line: 43, baseType: !1531, size: 64, offset: 192)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!1202, !1534}
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1519, file: !18, line: 44, baseType: !1537, size: 64, offset: 256)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!1202}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1519, file: !18, line: 45, baseType: !1541, size: 64, offset: 320)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{null, !146}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1448, file: !1397, line: 144, baseType: !1545, size: 64, offset: 320)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!1202, !1404}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1448, file: !1397, line: 145, baseType: !1549, size: 64, offset: 384)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{null, !1404, !1552, !1558}
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !653, line: 23, baseType: !1554)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !653, line: 21, size: 32, elements: !1555)
!1555 = !{!1556}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1554, file: !653, line: 22, baseType: !1557, size: 32)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !137, line: 32, baseType: !968)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !653, line: 28, baseType: !1560)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !653, line: 26, size: 32, elements: !1561)
!1561 = !{!1562}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1560, file: !653, line: 27, baseType: !1563, size: 32)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !137, line: 33, baseType: !1564)
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !407, line: 50, baseType: !7)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1396, file: !1397, line: 70, baseType: !1566, size: 64, offset: 384)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1568, line: 123, size: 1024, elements: !1569)
!1568 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1569 = !{!1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1711, !1712, !1713, !1714, !1715}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1567, file: !1568, line: 124, baseType: !299, size: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1567, file: !1568, line: 125, baseType: !299, size: 32, offset: 32)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1567, file: !1568, line: 135, baseType: !1566, size: 64, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1567, file: !1568, line: 136, baseType: !1400, size: 64, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1567, file: !1568, line: 138, baseType: !273, size: 192, align: 64, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1567, file: !1568, line: 140, baseType: !1202, size: 64, offset: 384)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1567, file: !1568, line: 141, baseType: !7, size: 32, offset: 448)
!1577 = !DIDerivedType(tag: DW_TAG_member, scope: !1567, file: !1568, line: 142, baseType: !1578, size: 256, offset: 512)
!1578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1567, file: !1568, line: 142, size: 256, elements: !1579)
!1579 = !{!1580, !1634, !1638}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1578, file: !1568, line: 143, baseType: !1581, size: 192)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1568, line: 91, size: 192, elements: !1582)
!1582 = !{!1583, !1584, !1585}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1581, file: !1568, line: 92, baseType: !138, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1581, file: !1568, line: 94, baseType: !269, size: 64, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1581, file: !1568, line: 100, baseType: !1586, size: 64, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1568, line: 180, size: 704, elements: !1588)
!1588 = !{!1589, !1590, !1591, !1604, !1605, !1606, !1632, !1633}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1587, file: !1568, line: 182, baseType: !1566, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1587, file: !1568, line: 183, baseType: !7, size: 32, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1587, file: !1568, line: 186, baseType: !1592, size: 192, offset: 128)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1593, line: 19, size: 192, elements: !1594)
!1593 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1594 = !{!1595, !1602, !1603}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1592, file: !1593, line: 20, baseType: !1596, size: 128)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1597, line: 292, size: 128, elements: !1598)
!1597 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1598 = !{!1599, !1600, !1601}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1596, file: !1597, line: 293, baseType: !525)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1596, file: !1597, line: 295, baseType: !136, size: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1596, file: !1597, line: 296, baseType: !146, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1592, file: !1593, line: 21, baseType: !7, size: 32, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1592, file: !1593, line: 22, baseType: !7, size: 32, offset: 160)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1587, file: !1568, line: 187, baseType: !233, size: 32, offset: 320)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1587, file: !1568, line: 188, baseType: !233, size: 32, offset: 352)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1587, file: !1568, line: 189, baseType: !1607, size: 64, offset: 384)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1568, line: 168, size: 320, elements: !1609)
!1609 = !{!1610, !1616, !1620, !1624, !1628}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1608, file: !1568, line: 169, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!199, !1614, !1586}
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !473, line: 539, flags: DIFlagFwdDecl)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1608, file: !1568, line: 171, baseType: !1617, size: 64, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!199, !1566, !1400, !1471}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1608, file: !1568, line: 173, baseType: !1621, size: 64, offset: 128)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!199, !1566}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1608, file: !1568, line: 174, baseType: !1625, size: 64, offset: 192)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!199, !1566, !1566, !1400}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1608, file: !1568, line: 176, baseType: !1629, size: 64, offset: 256)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!199, !1614, !1566, !1586}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1587, file: !1568, line: 192, baseType: !142, size: 128, offset: 448)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1587, file: !1568, line: 194, baseType: !784, size: 128, offset: 576)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1578, file: !1568, line: 144, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1568, line: 103, size: 64, elements: !1636)
!1636 = !{!1637}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1635, file: !1568, line: 104, baseType: !1566, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1578, file: !1568, line: 145, baseType: !1639, size: 256)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1568, line: 107, size: 256, elements: !1640)
!1640 = !{!1641, !1706, !1709, !1710}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1639, file: !1568, line: 108, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1644)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1568, line: 217, size: 768, elements: !1645)
!1645 = !{!1646, !1666, !1670, !1674, !1679, !1683, !1687, !1691, !1692, !1693, !1694, !1702}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1644, file: !1568, line: 222, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!199, !1650}
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1568, line: 197, size: 1088, elements: !1652)
!1652 = !{!1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1651, file: !1568, line: 199, baseType: !1566, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1651, file: !1568, line: 200, baseType: !495, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1651, file: !1568, line: 201, baseType: !1614, size: 64, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1651, file: !1568, line: 202, baseType: !146, size: 64, offset: 192)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1651, file: !1568, line: 205, baseType: !590, size: 192, offset: 256)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1651, file: !1568, line: 206, baseType: !590, size: 192, offset: 448)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1651, file: !1568, line: 207, baseType: !199, size: 32, offset: 640)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1651, file: !1568, line: 208, baseType: !142, size: 128, offset: 704)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1651, file: !1568, line: 209, baseType: !1437, size: 64, offset: 832)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1651, file: !1568, line: 211, baseType: !900, size: 64, offset: 896)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1651, file: !1568, line: 212, baseType: !660, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1651, file: !1568, line: 213, baseType: !660, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1651, file: !1568, line: 214, baseType: !490, size: 64, offset: 1024)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1644, file: !1568, line: 223, baseType: !1667, size: 64, offset: 64)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{null, !1650}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1644, file: !1568, line: 236, baseType: !1671, size: 64, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!199, !1614, !146}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1644, file: !1568, line: 238, baseType: !1675, size: 64, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!146, !1614, !1678}
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1644, file: !1568, line: 239, baseType: !1680, size: 64, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!146, !1614, !146, !1678}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1644, file: !1568, line: 240, baseType: !1684, size: 64, offset: 320)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{null, !1614, !146}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1644, file: !1568, line: 242, baseType: !1688, size: 64, offset: 384)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!1464, !1650, !1437, !900, !1503}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1644, file: !1568, line: 252, baseType: !900, size: 64, offset: 448)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1644, file: !1568, line: 259, baseType: !660, size: 8, offset: 512)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1644, file: !1568, line: 260, baseType: !1688, size: 64, offset: 576)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1644, file: !1568, line: 263, baseType: !1695, size: 64, offset: 640)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!1698, !1650, !1700}
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1699, line: 52, baseType: !7)
!1699 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1568, line: 27, flags: DIFlagFwdDecl)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1644, file: !1568, line: 266, baseType: !1703, size: 64, offset: 704)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!199, !1650, !461}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1639, file: !1568, line: 109, baseType: !1707, size: 64, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1568, line: 31, flags: DIFlagFwdDecl)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1639, file: !1568, line: 110, baseType: !1503, size: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1639, file: !1568, line: 111, baseType: !1566, size: 64, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1567, file: !1568, line: 148, baseType: !146, size: 64, offset: 768)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1567, file: !1568, line: 154, baseType: !326, size: 64, offset: 832)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1567, file: !1568, line: 156, baseType: !177, size: 16, offset: 896)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1567, file: !1568, line: 157, baseType: !1471, size: 16, offset: 912)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1567, file: !1568, line: 158, baseType: !1716, size: 64, offset: 960)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1568, line: 32, flags: DIFlagFwdDecl)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1396, file: !1397, line: 71, baseType: !1719, size: 32, offset: 448)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1720, line: 19, size: 32, elements: !1721)
!1720 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1721 = !{!1722}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1719, file: !1720, line: 20, baseType: !294, size: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1396, file: !1397, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1396, file: !1397, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1396, file: !1397, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1396, file: !1397, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1396, file: !1397, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1393, file: !30, line: 463, baseType: !1729, size: 64, offset: 512)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1393, file: !30, line: 465, baseType: !1731, size: 64, offset: 576)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1393, file: !30, line: 467, baseType: !1400, size: 64, offset: 640)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1393, file: !30, line: 468, baseType: !1735, size: 64, offset: 704)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1737)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1738)
!1738 = !{!1739, !1740, !1741, !1745, !1750, !1754}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1737, file: !30, line: 88, baseType: !1400, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1737, file: !30, line: 89, baseType: !1479, size: 64, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1737, file: !30, line: 90, baseType: !1742, size: 64, offset: 128)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!199, !1729, !1432}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1737, file: !30, line: 91, baseType: !1746, size: 64, offset: 192)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!1437, !1729, !1749, !1552, !1558}
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
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
!1762 = !{!199, !1729}
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
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1393, file: !30, line: 470, baseType: !1786, size: 64, offset: 768)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1788, line: 82, size: 1408, elements: !1789)
!1788 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1789 = !{!1790, !1791, !1792, !1793, !1794, !1795, !1796, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1872, !1875, !1878}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1787, file: !1788, line: 83, baseType: !1400, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1787, file: !1788, line: 84, baseType: !1400, size: 64, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1787, file: !1788, line: 85, baseType: !1729, size: 64, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1787, file: !1788, line: 86, baseType: !1479, size: 64, offset: 192)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1787, file: !1788, line: 87, baseType: !1479, size: 64, offset: 256)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1787, file: !1788, line: 88, baseType: !1479, size: 64, offset: 320)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1787, file: !1788, line: 90, baseType: !1797, size: 64, offset: 384)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!199, !1729, !1800}
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1802)
!1802 = !{!1803, !1804, !1805, !1806, !1807, !1808, !1809, !1823, !1836, !1837, !1838, !1839, !1840, !1848, !1849, !1850, !1851, !1852, !1853}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1801, file: !24, line: 96, baseType: !1400, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1801, file: !24, line: 97, baseType: !1786, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1801, file: !24, line: 99, baseType: !133, size: 64, offset: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1801, file: !24, line: 100, baseType: !1400, size: 64, offset: 192)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1801, file: !24, line: 102, baseType: !660, size: 8, offset: 256)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1801, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1801, file: !24, line: 105, baseType: !1810, size: 64, offset: 320)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1812)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1813, line: 262, size: 1600, elements: !1814)
!1813 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1814 = !{!1815, !1817, !1818, !1822}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1812, file: !1813, line: 263, baseType: !1816, size: 256)
!1816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 256, elements: !1303)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1812, file: !1813, line: 264, baseType: !1816, size: 256, offset: 256)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1812, file: !1813, line: 265, baseType: !1819, size: 1024, offset: 512)
!1819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 1024, elements: !1820)
!1820 = !{!1821}
!1821 = !DISubrange(count: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1812, file: !1813, line: 266, baseType: !1202, size: 64, offset: 1536)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1801, file: !24, line: 106, baseType: !1824, size: 64, offset: 384)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1826)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1813, line: 210, size: 256, elements: !1827)
!1827 = !{!1828, !1832, !1834, !1835}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1826, file: !1813, line: 211, baseType: !1829, size: 72)
!1829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 72, elements: !1830)
!1830 = !{!1831}
!1831 = !DISubrange(count: 9)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1826, file: !1813, line: 212, baseType: !1833, size: 64, offset: 128)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1813, line: 14, baseType: !138)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1826, file: !1813, line: 213, baseType: !234, size: 32, offset: 192)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1826, file: !1813, line: 214, baseType: !234, size: 32, offset: 224)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1801, file: !24, line: 108, baseType: !1760, size: 64, offset: 448)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1801, file: !24, line: 109, baseType: !1751, size: 64, offset: 512)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1801, file: !24, line: 110, baseType: !1760, size: 64, offset: 576)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1801, file: !24, line: 111, baseType: !1751, size: 64, offset: 640)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1801, file: !24, line: 112, baseType: !1841, size: 64, offset: 704)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!199, !1729, !1844}
!1844 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1845)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1846)
!1846 = !{!1847}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1845, file: !37, line: 51, baseType: !199, size: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1801, file: !24, line: 113, baseType: !1760, size: 64, offset: 768)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1801, file: !24, line: 114, baseType: !1479, size: 64, offset: 832)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1801, file: !24, line: 115, baseType: !1479, size: 64, offset: 896)
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
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1877, line: 187, elements: !263)
!1877 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1787, file: !1788, line: 114, baseType: !660, size: 8, offset: 1344)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1393, file: !30, line: 471, baseType: !1800, size: 64, offset: 832)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1393, file: !30, line: 473, baseType: !146, size: 64, offset: 896)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1393, file: !30, line: 475, baseType: !146, size: 64, offset: 960)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1393, file: !30, line: 480, baseType: !590, size: 192, offset: 1024)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1393, file: !30, line: 484, baseType: !1884, size: 576, offset: 1216)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1885)
!1885 = !{!1886, !1887, !1888, !1889, !1890, !1891}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1884, file: !30, line: 362, baseType: !142, size: 128)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1884, file: !30, line: 363, baseType: !142, size: 128, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1884, file: !30, line: 364, baseType: !142, size: 128, offset: 256)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1884, file: !30, line: 365, baseType: !142, size: 128, offset: 384)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1884, file: !30, line: 366, baseType: !660, size: 8, offset: 512)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1884, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1393, file: !30, line: 485, baseType: !1893, size: 2304, offset: 1792)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1894)
!1894 = !{!1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1990, !1994}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1893, file: !37, line: 566, baseType: !1844, size: 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1893, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1893, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1893, file: !37, line: 569, baseType: !660, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1893, file: !37, line: 570, baseType: !660, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1893, file: !37, line: 571, baseType: !660, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1893, file: !37, line: 572, baseType: !660, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1893, file: !37, line: 573, baseType: !660, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1893, file: !37, line: 574, baseType: !660, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1893, file: !37, line: 575, baseType: !660, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1893, file: !37, line: 576, baseType: !660, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1893, file: !37, line: 577, baseType: !233, size: 32, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1893, file: !37, line: 578, baseType: !525, offset: 96)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1893, file: !37, line: 580, baseType: !142, size: 128, offset: 128)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1893, file: !37, line: 581, baseType: !636, size: 192, offset: 256)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1893, file: !37, line: 582, baseType: !1911, size: 64, offset: 448)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1913, line: 43, size: 1472, elements: !1914)
!1913 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1914 = !{!1915, !1916, !1917, !1918, !1919, !1922, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1912, file: !1913, line: 44, baseType: !1400, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1912, file: !1913, line: 45, baseType: !199, size: 32, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1912, file: !1913, line: 46, baseType: !142, size: 128, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1912, file: !1913, line: 47, baseType: !525, offset: 256)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1912, file: !1913, line: 48, baseType: !1920, size: 64, offset: 256)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1912, file: !1913, line: 49, baseType: !1923, size: 320, offset: 320)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1924, line: 11, size: 320, elements: !1925)
!1924 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1925 = !{!1926, !1927, !1928, !1933}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1923, file: !1924, line: 16, baseType: !777, size: 128)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1923, file: !1924, line: 17, baseType: !138, size: 64, offset: 128)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1923, file: !1924, line: 18, baseType: !1929, size: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{null, !1932}
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1923, file: !1924, line: 19, baseType: !233, size: 32, offset: 256)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1912, file: !1913, line: 50, baseType: !138, size: 64, offset: 640)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1912, file: !1913, line: 51, baseType: !371, size: 64, offset: 704)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1912, file: !1913, line: 52, baseType: !371, size: 64, offset: 768)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1912, file: !1913, line: 53, baseType: !371, size: 64, offset: 832)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1912, file: !1913, line: 54, baseType: !371, size: 64, offset: 896)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1912, file: !1913, line: 55, baseType: !371, size: 64, offset: 960)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1912, file: !1913, line: 56, baseType: !138, size: 64, offset: 1024)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1912, file: !1913, line: 57, baseType: !138, size: 64, offset: 1088)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1912, file: !1913, line: 58, baseType: !138, size: 64, offset: 1152)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1912, file: !1913, line: 59, baseType: !138, size: 64, offset: 1216)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1912, file: !1913, line: 60, baseType: !138, size: 64, offset: 1280)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1912, file: !1913, line: 61, baseType: !1729, size: 64, offset: 1344)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1912, file: !1913, line: 62, baseType: !660, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1912, file: !1913, line: 63, baseType: !660, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1893, file: !37, line: 583, baseType: !660, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1893, file: !37, line: 584, baseType: !660, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1893, file: !37, line: 585, baseType: !660, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1893, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1893, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1893, file: !37, line: 592, baseType: !363, size: 512, offset: 576)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1893, file: !37, line: 593, baseType: !326, size: 64, offset: 1088)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1893, file: !37, line: 594, baseType: !151, size: 256, offset: 1152)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1893, file: !37, line: 595, baseType: !784, size: 128, offset: 1408)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1893, file: !37, line: 596, baseType: !1920, size: 64, offset: 1536)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1893, file: !37, line: 597, baseType: !299, size: 32, offset: 1600)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1893, file: !37, line: 598, baseType: !299, size: 32, offset: 1632)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1893, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1893, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1893, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1893, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1893, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1893, file: !37, line: 604, baseType: !660, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1893, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1893, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1893, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1893, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1893, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1893, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1893, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1893, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1893, file: !37, line: 613, baseType: !199, size: 32, offset: 1792)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1893, file: !37, line: 614, baseType: !199, size: 32, offset: 1824)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1893, file: !37, line: 615, baseType: !326, size: 64, offset: 1856)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1893, file: !37, line: 616, baseType: !326, size: 64, offset: 1920)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1893, file: !37, line: 617, baseType: !326, size: 64, offset: 1984)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1893, file: !37, line: 618, baseType: !326, size: 64, offset: 2048)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1893, file: !37, line: 620, baseType: !1981, size: 64, offset: 2112)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1983)
!1983 = !{!1984, !1985, !1986, !1987}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1982, file: !37, line: 537, baseType: !525)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1982, file: !37, line: 538, baseType: !7, size: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1982, file: !37, line: 540, baseType: !142, size: 128, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1982, file: !37, line: 543, baseType: !1988, size: 64, offset: 192)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1893, file: !37, line: 621, baseType: !1991, size: 64, offset: 2176)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{null, !1729, !737}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1893, file: !37, line: 622, baseType: !1995, size: 64, offset: 2240)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1393, file: !30, line: 486, baseType: !1998, size: 64, offset: 4096)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !2000)
!2000 = !{!2001, !2002, !2003, !2007, !2008, !2009}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1999, file: !37, line: 643, baseType: !1757, size: 1472)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1999, file: !37, line: 644, baseType: !1760, size: 64, offset: 1472)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1999, file: !37, line: 645, baseType: !2004, size: 64, offset: 1536)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{null, !1729, !660}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1999, file: !37, line: 646, baseType: !1760, size: 64, offset: 1600)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1999, file: !37, line: 647, baseType: !1751, size: 64, offset: 1664)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1999, file: !37, line: 648, baseType: !1751, size: 64, offset: 1728)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !1393, file: !30, line: 493, baseType: !2011, size: 64, offset: 4160)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !51, line: 162, size: 1088, elements: !2013)
!2013 = !{!2014, !2015, !2016, !2289, !2290, !2291, !2292, !2293, !2294, !2421, !2422, !2423, !2424, !2425, !2426, !2427}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2012, file: !51, line: 163, baseType: !142, size: 128)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2012, file: !51, line: 164, baseType: !1400, size: 64, offset: 128)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2012, file: !51, line: 165, baseType: !2017, size: 64, offset: 192)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2019)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !51, line: 105, size: 640, elements: !2020)
!2020 = !{!2021, !2139, !2150, !2155, !2159, !2167, !2171, !2175, !2281, !2285}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2019, file: !51, line: 106, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!199, !2011, !2025, !50}
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2027, line: 51, size: 1344, elements: !2028)
!2027 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2028 = !{!2029, !2030, !2032, !2033, !2123, !2132, !2133, !2134, !2135, !2136, !2137, !2138}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2026, file: !2027, line: 52, baseType: !1400, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2026, file: !2027, line: 53, baseType: !2031, size: 32, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2027, line: 28, baseType: !233)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2026, file: !2027, line: 54, baseType: !1400, size: 64, offset: 128)
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
!2055 = !{!660, !2056}
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2034)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2042, file: !2035, line: 114, baseType: !2059, size: 64, offset: 192)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!1202, !2056, !2062}
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1393)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2042, file: !2035, line: 116, baseType: !2065, size: 64, offset: 256)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!660, !2056, !1400}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2042, file: !2035, line: 118, baseType: !2069, size: 64, offset: 320)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!199, !2056, !1400, !7, !146, !900}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2042, file: !2035, line: 123, baseType: !2073, size: 64, offset: 384)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!199, !2056, !1400, !2076, !900}
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2042, file: !2035, line: 126, baseType: !2078, size: 64, offset: 448)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!1400, !2056}
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
!2093 = !{!2038, !2056, !1400}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2042, file: !2035, line: 135, baseType: !2095, size: 64, offset: 768)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!199, !2056, !1400, !1400, !7, !7, !2098}
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2035, line: 43, size: 640, elements: !2100)
!2100 = !{!2101, !2102, !2103}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2099, file: !2035, line: 44, baseType: !2038, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2099, file: !2035, line: 45, baseType: !7, size: 32, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2099, file: !2035, line: 46, baseType: !2104, size: 512, offset: 128)
!2104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 512, elements: !401)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2042, file: !2035, line: 140, baseType: !2087, size: 64, offset: 832)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2042, file: !2035, line: 143, baseType: !2083, size: 64, offset: 896)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2042, file: !2035, line: 145, baseType: !2045, size: 64, offset: 960)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2042, file: !2035, line: 146, baseType: !2109, size: 64, offset: 1024)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!199, !2056, !2112}
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2035, line: 29, size: 128, elements: !2114)
!2114 = !{!2115, !2116, !2117}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2113, file: !2035, line: 30, baseType: !7, size: 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2113, file: !2035, line: 31, baseType: !7, size: 32, offset: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2113, file: !2035, line: 32, baseType: !2056, size: 64, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2042, file: !2035, line: 148, baseType: !2119, size: 64, offset: 1088)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!199, !2056, !1729}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2034, file: !2035, line: 20, baseType: !1729, size: 64, offset: 128)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2026, file: !2027, line: 57, baseType: !2124, size: 64, offset: 384)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2027, line: 31, size: 704, elements: !2126)
!2126 = !{!2127, !2128, !2129, !2130, !2131}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2125, file: !2027, line: 32, baseType: !1437, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2125, file: !2027, line: 33, baseType: !199, size: 32, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2125, file: !2027, line: 34, baseType: !146, size: 64, offset: 128)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2125, file: !2027, line: 35, baseType: !2124, size: 64, offset: 192)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2125, file: !2027, line: 43, baseType: !1494, size: 448, offset: 256)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2026, file: !2027, line: 58, baseType: !2124, size: 64, offset: 448)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2026, file: !2027, line: 59, baseType: !2025, size: 64, offset: 512)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2026, file: !2027, line: 60, baseType: !2025, size: 64, offset: 576)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2026, file: !2027, line: 61, baseType: !2025, size: 64, offset: 640)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2026, file: !2027, line: 63, baseType: !1396, size: 512, offset: 704)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2026, file: !2027, line: 65, baseType: !138, size: 64, offset: 1216)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2026, file: !2027, line: 66, baseType: !146, size: 64, offset: 1280)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !2019, file: !51, line: 108, baseType: !2140, size: 64, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!199, !2011, !2143, !50}
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !51, line: 63, size: 640, elements: !2145)
!2145 = !{!2146, !2147, !2148}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2144, file: !51, line: 64, baseType: !2038, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2144, file: !51, line: 65, baseType: !199, size: 32, offset: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2144, file: !51, line: 66, baseType: !2149, size: 512, offset: 96)
!2149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 512, elements: !861)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2019, file: !51, line: 110, baseType: !2151, size: 64, offset: 128)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!199, !2011, !7, !2154}
!2154 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !137, line: 164, baseType: !138)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !2019, file: !51, line: 111, baseType: !2156, size: 64, offset: 192)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{null, !2011, !7}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !2019, file: !51, line: 112, baseType: !2160, size: 64, offset: 256)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!199, !2011, !2025, !2163, !7, !2165, !2166}
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2019, file: !51, line: 117, baseType: !2168, size: 64, offset: 320)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!199, !2011, !7, !7, !146}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2019, file: !51, line: 119, baseType: !2172, size: 64, offset: 384)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{null, !2011, !7, !7}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2019, file: !51, line: 121, baseType: !2176, size: 64, offset: 448)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!199, !2011, !2179, !660}
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !72, line: 175, size: 448, elements: !2181)
!2181 = !{!2182, !2183, !2184, !2185, !2197, !2278, !2279, !2280}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !2180, file: !72, line: 176, baseType: !233, size: 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2180, file: !72, line: 177, baseType: !7, size: 32, offset: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !2180, file: !72, line: 178, baseType: !138, size: 64, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2180, file: !72, line: 179, baseType: !2186, size: 64, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !72, line: 145, size: 256, elements: !2188)
!2188 = !{!2189, !2190, !2191, !2194}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !2187, file: !72, line: 146, baseType: !7, size: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !2187, file: !72, line: 150, baseType: !146, size: 64, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !2187, file: !72, line: 151, baseType: !2192, size: 64, offset: 128)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !72, line: 127, flags: DIFlagFwdDecl)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !2187, file: !72, line: 152, baseType: !2195, size: 64, offset: 192)
!2195 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !441, line: 756, baseType: !2196)
!2196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 64, elements: !446)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !2180, file: !72, line: 180, baseType: !2198, size: 64, offset: 192)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !72, line: 503, size: 2304, elements: !2200)
!2200 = !{!2201, !2202, !2203, !2207, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2224, !2228, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2245, !2246, !2247, !2253, !2254, !2259, !2263, !2267, !2271, !2275, !2276, !2277}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "parent_device", scope: !2199, file: !72, line: 504, baseType: !1729, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2199, file: !72, line: 505, baseType: !1400, size: 64, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !2199, file: !72, line: 506, baseType: !2204, size: 64, offset: 128)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!7, !2179}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !2199, file: !72, line: 507, baseType: !2208, size: 64, offset: 192)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{null, !2179}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !2199, file: !72, line: 508, baseType: !2208, size: 64, offset: 256)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !2199, file: !72, line: 509, baseType: !2208, size: 64, offset: 320)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !2199, file: !72, line: 511, baseType: !2208, size: 64, offset: 384)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !2199, file: !72, line: 512, baseType: !2208, size: 64, offset: 448)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !2199, file: !72, line: 513, baseType: !2208, size: 64, offset: 512)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !2199, file: !72, line: 514, baseType: !2208, size: 64, offset: 576)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !2199, file: !72, line: 515, baseType: !2208, size: 64, offset: 640)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !2199, file: !72, line: 517, baseType: !2219, size: 64, offset: 704)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!199, !2179, !2222, !660}
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !2199, file: !72, line: 518, baseType: !2225, size: 64, offset: 768)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!199, !2179}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !2199, file: !72, line: 519, baseType: !2229, size: 64, offset: 832)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!199, !2179, !7}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !2199, file: !72, line: 520, baseType: !2229, size: 64, offset: 896)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !2199, file: !72, line: 522, baseType: !2208, size: 64, offset: 960)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !2199, file: !72, line: 523, baseType: !2208, size: 64, offset: 1024)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_online", scope: !2199, file: !72, line: 525, baseType: !2208, size: 64, offset: 1088)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_offline", scope: !2199, file: !72, line: 526, baseType: !2208, size: 64, offset: 1152)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !2199, file: !72, line: 528, baseType: !2208, size: 64, offset: 1216)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !2199, file: !72, line: 529, baseType: !2208, size: 64, offset: 1280)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !2199, file: !72, line: 530, baseType: !2208, size: 64, offset: 1344)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !2199, file: !72, line: 532, baseType: !2208, size: 64, offset: 1408)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !2199, file: !72, line: 534, baseType: !2242, size: 64, offset: 1472)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{null, !2179, !1614}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !2199, file: !72, line: 535, baseType: !2225, size: 64, offset: 1536)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !2199, file: !72, line: 536, baseType: !2208, size: 64, offset: 1600)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !2199, file: !72, line: 538, baseType: !2248, size: 64, offset: 1664)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{null, !2179, !2251}
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !72, line: 29, flags: DIFlagFwdDecl)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !2199, file: !72, line: 539, baseType: !2248, size: 64, offset: 1728)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !2199, file: !72, line: 541, baseType: !2255, size: 64, offset: 1792)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!199, !2179, !64, !2258}
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !2199, file: !72, line: 542, baseType: !2260, size: 64, offset: 1856)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!199, !2179, !64, !660}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !2199, file: !72, line: 544, baseType: !2264, size: 64, offset: 1920)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!199, !2179, !146}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !2199, file: !72, line: 546, baseType: !2268, size: 64, offset: 1984)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{null, !2179, !7}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !2199, file: !72, line: 547, baseType: !2272, size: 64, offset: 2048)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{null, !2179, !2222}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !2199, file: !72, line: 549, baseType: !2225, size: 64, offset: 2112)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !2199, file: !72, line: 550, baseType: !2208, size: 64, offset: 2176)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2199, file: !72, line: 552, baseType: !138, size: 64, offset: 2240)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2180, file: !72, line: 181, baseType: !2011, size: 64, offset: 256)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !2180, file: !72, line: 183, baseType: !2179, size: 64, offset: 320)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !2180, file: !72, line: 185, baseType: !146, size: 64, offset: 384)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !2019, file: !51, line: 122, baseType: !2282, size: 64, offset: 512)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{null, !2011, !2179}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !2019, file: !51, line: 123, baseType: !2286, size: 64, offset: 576)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!199, !2011, !2143, !2165, !2166}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !2012, file: !51, line: 166, baseType: !146, size: 64, offset: 256)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2012, file: !51, line: 167, baseType: !7, size: 32, offset: 320)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !2012, file: !51, line: 168, baseType: !7, size: 32, offset: 352)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2012, file: !51, line: 171, baseType: !2038, size: 64, offset: 384)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !2012, file: !51, line: 172, baseType: !50, size: 32, offset: 448)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !2012, file: !51, line: 173, baseType: !2295, size: 64, offset: 512)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !72, line: 1101, size: 192, elements: !2297)
!2297 = !{!2298, !2299, !2300, !2301, !2302, !2303}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !2296, file: !72, line: 1102, baseType: !7, size: 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !2296, file: !72, line: 1103, baseType: !7, size: 32, offset: 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !2296, file: !72, line: 1104, baseType: !7, size: 32, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !2296, file: !72, line: 1105, baseType: !7, size: 32, offset: 96)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !2296, file: !72, line: 1106, baseType: !71, size: 32, offset: 128)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !2296, file: !72, line: 1107, baseType: !2304, offset: 192)
!2304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2305, elements: !669)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !72, line: 1051, size: 960, elements: !2307)
!2307 = !{!2308, !2309, !2310, !2314, !2318, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2306, file: !72, line: 1052, baseType: !255)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !2306, file: !72, line: 1053, baseType: !146, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !2306, file: !72, line: 1054, baseType: !2311, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!233, !146}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !2306, file: !72, line: 1055, baseType: !2315, size: 64, offset: 128)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{null, !233, !146}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2306, file: !72, line: 1056, baseType: !2319, size: 64, offset: 192)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{null, !2305}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2306, file: !72, line: 1057, baseType: !2319, size: 64, offset: 256)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !2306, file: !72, line: 1058, baseType: !7, size: 32, offset: 320)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !2306, file: !72, line: 1059, baseType: !7, size: 32, offset: 352)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !2306, file: !72, line: 1060, baseType: !233, size: 32, offset: 384)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !2306, file: !72, line: 1061, baseType: !233, size: 32, offset: 416)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !2306, file: !72, line: 1062, baseType: !233, size: 32, offset: 448)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !2306, file: !72, line: 1063, baseType: !233, size: 32, offset: 480)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !2306, file: !72, line: 1064, baseType: !233, size: 32, offset: 512)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !2306, file: !72, line: 1065, baseType: !7, size: 32, offset: 544)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2306, file: !72, line: 1066, baseType: !146, size: 64, offset: 576)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !2306, file: !72, line: 1067, baseType: !138, size: 64, offset: 640)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !2306, file: !72, line: 1068, baseType: !138, size: 64, offset: 704)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2306, file: !72, line: 1069, baseType: !2011, size: 64, offset: 768)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2306, file: !72, line: 1070, baseType: !142, size: 128, offset: 832)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !2306, file: !72, line: 1071, baseType: !2337, offset: 960)
!2337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2338, elements: !669)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !72, line: 1009, size: 2944, elements: !2339)
!2339 = !{!2340, !2341, !2351, !2418, !2419, !2420}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !2338, file: !72, line: 1010, baseType: !2199, size: 2304)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2338, file: !72, line: 1011, baseType: !2342, size: 448, offset: 2304)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !72, line: 986, size: 448, elements: !2343)
!2343 = !{!2344, !2345, !2346, !2347, !2348, !2349, !2350}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !2342, file: !72, line: 987, baseType: !138, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !2342, file: !72, line: 988, baseType: !138, size: 64, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !2342, file: !72, line: 989, baseType: !138, size: 64, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !2342, file: !72, line: 990, baseType: !138, size: 64, offset: 192)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !2342, file: !72, line: 991, baseType: !138, size: 64, offset: 256)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2342, file: !72, line: 992, baseType: !138, size: 64, offset: 320)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2342, file: !72, line: 993, baseType: !138, size: 64, offset: 384)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2338, file: !72, line: 1012, baseType: !2352, size: 64, offset: 2752)
!2352 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !2353, line: 12, baseType: !2354)
!2353 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{null, !2357}
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !2359, line: 55, size: 2880, elements: !2360)
!2359 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/lizy2001/genbc/linux")
!2360 = !{!2361, !2362, !2363, !2364, !2365, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !2358, file: !2359, line: 56, baseType: !2187, size: 256)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !2358, file: !2359, line: 57, baseType: !2180, size: 448, offset: 256)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !2358, file: !2359, line: 58, baseType: !2166, size: 64, offset: 704)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !2358, file: !2359, line: 59, baseType: !2352, size: 64, offset: 768)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2358, file: !2359, line: 60, baseType: !2366, size: 64, offset: 832)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !65, line: 110, size: 768, elements: !2368)
!2368 = !{!2369, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2367, file: !65, line: 111, baseType: !2370, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !65, line: 92, baseType: !2371)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!2374, !199, !146}
!2374 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !80, line: 17, baseType: !79)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !2367, file: !65, line: 112, baseType: !146, size: 64, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dev_id", scope: !2367, file: !65, line: 113, baseType: !146, size: 64, offset: 128)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2367, file: !65, line: 114, baseType: !2366, size: 64, offset: 192)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !2367, file: !65, line: 115, baseType: !2370, size: 64, offset: 256)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2367, file: !65, line: 116, baseType: !280, size: 64, offset: 320)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2367, file: !65, line: 117, baseType: !2366, size: 64, offset: 384)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2367, file: !65, line: 118, baseType: !7, size: 32, offset: 448)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2367, file: !65, line: 119, baseType: !7, size: 32, offset: 480)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "thread_flags", scope: !2367, file: !65, line: 120, baseType: !138, size: 64, offset: 512)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "thread_mask", scope: !2367, file: !65, line: 121, baseType: !138, size: 64, offset: 576)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2367, file: !65, line: 122, baseType: !1400, size: 64, offset: 640)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2367, file: !65, line: 123, baseType: !2387, size: 64, offset: 704)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !2389, line: 84, flags: DIFlagFwdDecl)
!2389 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !2358, file: !2359, line: 61, baseType: !7, size: 32, offset: 896)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !2358, file: !2359, line: 62, baseType: !7, size: 32, offset: 928)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2358, file: !2359, line: 63, baseType: !7, size: 32, offset: 960)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !2358, file: !2359, line: 64, baseType: !7, size: 32, offset: 992)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !2358, file: !2359, line: 65, baseType: !7, size: 32, offset: 1024)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2358, file: !2359, line: 66, baseType: !7, size: 32, offset: 1056)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !2358, file: !2359, line: 67, baseType: !138, size: 64, offset: 1088)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !2358, file: !2359, line: 68, baseType: !7, size: 32, offset: 1152)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !2358, file: !2359, line: 69, baseType: !299, size: 32, offset: 1184)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !2358, file: !2359, line: 70, baseType: !199, size: 32, offset: 1216)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2358, file: !2359, line: 71, baseType: !255, offset: 1248)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !2358, file: !2359, line: 72, baseType: !2402, size: 64, offset: 1280)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !2358, file: !2359, line: 73, baseType: !2222, size: 64, offset: 1344)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !2358, file: !2359, line: 81, baseType: !138, size: 64, offset: 1408)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !2358, file: !2359, line: 82, baseType: !299, size: 32, offset: 1472)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !2358, file: !2359, line: 83, baseType: !784, size: 128, offset: 1536)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !2358, file: !2359, line: 85, baseType: !7, size: 32, offset: 1664)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !2358, file: !2359, line: 86, baseType: !7, size: 32, offset: 1696)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !2358, file: !2359, line: 87, baseType: !7, size: 32, offset: 1728)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !2358, file: !2359, line: 88, baseType: !7, size: 32, offset: 1760)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2358, file: !2359, line: 91, baseType: !2387, size: 64, offset: 1792)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2358, file: !2359, line: 98, baseType: !791, size: 128, align: 64, offset: 1856)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2358, file: !2359, line: 99, baseType: !1396, size: 512, offset: 1984)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !2358, file: !2359, line: 101, baseType: !590, size: 192, offset: 2496)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !2358, file: !2359, line: 102, baseType: !199, size: 32, offset: 2688)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2358, file: !2359, line: 103, baseType: !133, size: 64, offset: 2752)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2358, file: !2359, line: 104, baseType: !1400, size: 64, offset: 2816)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2338, file: !72, line: 1013, baseType: !233, size: 32, offset: 2816)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !2338, file: !72, line: 1014, baseType: !233, size: 32, offset: 2848)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !2338, file: !72, line: 1015, baseType: !708, size: 64, offset: 2880)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2012, file: !51, line: 175, baseType: !2011, size: 64, offset: 576)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !2012, file: !51, line: 182, baseType: !2154, size: 64, offset: 640)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !2012, file: !51, line: 183, baseType: !7, size: 32, offset: 704)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !2012, file: !51, line: 184, baseType: !7, size: 32, offset: 736)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !2012, file: !51, line: 185, baseType: !1596, size: 128, offset: 768)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !2012, file: !51, line: 186, baseType: !590, size: 192, offset: 896)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !2012, file: !51, line: 187, baseType: !2428, offset: 1088)
!2428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !669)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !1393, file: !30, line: 499, baseType: !142, size: 128, offset: 4224)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1393, file: !30, line: 502, baseType: !2431, size: 64, offset: 4352)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2433)
!2433 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1393, file: !30, line: 504, baseType: !2435, size: 64, offset: 4416)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1393, file: !30, line: 505, baseType: !326, size: 64, offset: 4480)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1393, file: !30, line: 510, baseType: !326, size: 64, offset: 4544)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1393, file: !30, line: 511, baseType: !2439, size: 64, offset: 4608)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2441)
!2441 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1393, file: !30, line: 513, baseType: !2443, size: 64, offset: 4672)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2445)
!2445 = !{!2446, !2447}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2444, file: !30, line: 293, baseType: !7, size: 32)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2444, file: !30, line: 294, baseType: !138, size: 64, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1393, file: !30, line: 515, baseType: !142, size: 128, offset: 4736)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1393, file: !30, line: 526, baseType: !2450, offset: 4864)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2451, line: 5, elements: !263)
!2451 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1393, file: !30, line: 528, baseType: !2025, size: 64, offset: 4864)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1393, file: !30, line: 529, baseType: !2038, size: 64, offset: 4928)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1393, file: !30, line: 534, baseType: !2455, size: 32, offset: 4992)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !137, line: 16, baseType: !2456)
!2456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !137, line: 13, baseType: !233)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1393, file: !30, line: 535, baseType: !233, size: 32, offset: 5024)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1393, file: !30, line: 537, baseType: !525, offset: 5056)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1393, file: !30, line: 538, baseType: !142, size: 128, offset: 5056)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1393, file: !30, line: 540, baseType: !2461, size: 64, offset: 5184)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2463, line: 54, size: 960, elements: !2464)
!2463 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2464 = !{!2465, !2466, !2467, !2468, !2469, !2470, !2471, !2475, !2479, !2480, !2481, !2482, !2486, !2490, !2491}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2462, file: !2463, line: 55, baseType: !1400, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2462, file: !2463, line: 56, baseType: !133, size: 64, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2462, file: !2463, line: 58, baseType: !1479, size: 64, offset: 128)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2462, file: !2463, line: 59, baseType: !1479, size: 64, offset: 192)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2462, file: !2463, line: 60, baseType: !1404, size: 64, offset: 256)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2462, file: !2463, line: 62, baseType: !1742, size: 64, offset: 320)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2462, file: !2463, line: 63, baseType: !2472, size: 64, offset: 384)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!1437, !1729, !1749}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2462, file: !2463, line: 65, baseType: !2476, size: 64, offset: 448)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{null, !2461}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2462, file: !2463, line: 66, baseType: !1751, size: 64, offset: 512)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2462, file: !2463, line: 68, baseType: !1760, size: 64, offset: 576)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2462, file: !2463, line: 70, baseType: !1517, size: 64, offset: 640)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2462, file: !2463, line: 71, baseType: !2483, size: 64, offset: 704)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!1202, !1729}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2462, file: !2463, line: 73, baseType: !2487, size: 64, offset: 768)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{null, !1729, !1552, !1558}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2462, file: !2463, line: 75, baseType: !1755, size: 64, offset: 832)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2462, file: !2463, line: 77, baseType: !1873, size: 64, offset: 896)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1393, file: !30, line: 541, baseType: !1479, size: 64, offset: 5248)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1393, file: !30, line: 543, baseType: !1751, size: 64, offset: 5312)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1393, file: !30, line: 544, baseType: !2495, size: 64, offset: 5376)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1393, file: !30, line: 545, baseType: !2498, size: 64, offset: 5440)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1393, file: !30, line: 547, baseType: !660, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1393, file: !30, line: 548, baseType: !660, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1393, file: !30, line: 549, baseType: !660, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1393, file: !30, line: 550, baseType: !660, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !186, file: !128, line: 709, baseType: !138, size: 64, offset: 6336)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !186, file: !128, line: 713, baseType: !199, size: 32, offset: 6400)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !186, file: !128, line: 714, baseType: !2507, size: 384, offset: 6432)
!2507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 384, elements: !2508)
!2508 = !{!2509}
!2509 = !DISubrange(count: 48)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !186, file: !128, line: 715, baseType: !636, size: 192, offset: 6848)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !186, file: !128, line: 717, baseType: !590, size: 192, offset: 7040)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !186, file: !128, line: 718, baseType: !142, size: 128, offset: 7232)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !186, file: !128, line: 720, baseType: !2514, size: 64, offset: 7360)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !128, line: 618, size: 832, elements: !2516)
!2516 = !{!2517, !2521, !2522, !2526, !2527, !2528, !2529, !2533, !2534, !2537, !2538, !2541, !2544}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !2515, file: !128, line: 619, baseType: !2518, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!199, !185}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !2515, file: !128, line: 621, baseType: !2518, size: 64, offset: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !2515, file: !128, line: 622, baseType: !2523, size: 64, offset: 128)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{null, !185, !199}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !2515, file: !128, line: 623, baseType: !2518, size: 64, offset: 192)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !2515, file: !128, line: 624, baseType: !2523, size: 64, offset: 256)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !2515, file: !128, line: 625, baseType: !2518, size: 64, offset: 320)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !2515, file: !128, line: 627, baseType: !2530, size: 64, offset: 384)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{null, !185}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !2515, file: !128, line: 628, baseType: !2530, size: 64, offset: 448)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !2515, file: !128, line: 631, baseType: !2535, size: 64, offset: 512)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !128, line: 631, flags: DIFlagFwdDecl)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !2515, file: !128, line: 632, baseType: !2535, size: 64, offset: 576)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !2515, file: !128, line: 633, baseType: !2539, size: 64, offset: 640)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !128, line: 633, flags: DIFlagFwdDecl)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !2515, file: !128, line: 634, baseType: !2542, size: 64, offset: 704)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !128, line: 634, flags: DIFlagFwdDecl)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !2515, file: !128, line: 635, baseType: !2542, size: 64, offset: 768)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !186, file: !128, line: 721, baseType: !2546, size: 64, offset: 7424)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2548)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !128, line: 664, size: 192, elements: !2549)
!2549 = !{!2550, !2551, !2552, !2553, !2554, !2555}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2548, file: !128, line: 665, baseType: !326, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !2548, file: !128, line: 666, baseType: !199, size: 32, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !2548, file: !128, line: 667, baseType: !217, size: 16, offset: 96)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !2548, file: !128, line: 668, baseType: !217, size: 16, offset: 112)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !2548, file: !128, line: 669, baseType: !217, size: 16, offset: 128)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !2548, file: !128, line: 670, baseType: !217, size: 16, offset: 144)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !186, file: !128, line: 723, baseType: !2011, size: 64, offset: 7488)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !174, file: !128, line: 330, baseType: !1393, size: 5568, offset: 256)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "init_irq", scope: !174, file: !128, line: 331, baseType: !199, size: 32, offset: 5824)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !174, file: !128, line: 332, baseType: !199, size: 32, offset: 5856)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "detected", scope: !174, file: !128, line: 333, baseType: !142, size: 128, offset: 5888)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_driver", file: !128, line: 255, size: 1920, elements: !2563)
!2563 = !{!2564, !2565, !2575, !2579, !2580, !2584, !2588, !2592, !2593, !2594, !2652, !2655}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2562, file: !128, line: 256, baseType: !7, size: 32)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2562, file: !128, line: 259, baseType: !2566, size: 64, offset: 64)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!199, !173, !2569}
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2571)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_device_id", file: !1813, line: 457, size: 256, elements: !2572)
!2572 = !{!2573, !2574}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2571, file: !1813, line: 458, baseType: !180, size: 160)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2571, file: !1813, line: 459, baseType: !1833, size: 64, offset: 192)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2562, file: !128, line: 260, baseType: !2576, size: 64, offset: 128)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!199, !173}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "probe_new", scope: !2562, file: !128, line: 265, baseType: !2576, size: 64, offset: 192)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2562, file: !128, line: 268, baseType: !2581, size: 64, offset: 256)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{null, !173}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "alert", scope: !2562, file: !128, line: 277, baseType: !2585, size: 64, offset: 320)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{null, !173, !127, !7}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !2562, file: !128, line: 283, baseType: !2589, size: 64, offset: 384)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!199, !173, !7, !146}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2562, file: !128, line: 285, baseType: !1801, size: 1152, offset: 448)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2562, file: !128, line: 286, baseType: !2569, size: 64, offset: 1600)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !2562, file: !128, line: 289, baseType: !2595, size: 64, offset: 1664)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!199, !173, !2598}
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_board_info", file: !128, line: 410, size: 640, elements: !2600)
!2600 = !{!2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2634, !2650, !2651}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2599, file: !128, line: 411, baseType: !180, size: 160)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2599, file: !128, line: 412, baseType: !177, size: 16, offset: 160)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2599, file: !128, line: 413, baseType: !177, size: 16, offset: 176)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2599, file: !128, line: 414, baseType: !1400, size: 64, offset: 192)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2599, file: !128, line: 415, baseType: !146, size: 64, offset: 256)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2599, file: !128, line: 416, baseType: !2025, size: 64, offset: 320)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2599, file: !128, line: 417, baseType: !2038, size: 64, offset: 384)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2599, file: !128, line: 418, baseType: !2609, size: 64, offset: 448)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2611)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property_entry", file: !86, line: 263, size: 256, elements: !2612)
!2612 = !{!2613, !2614, !2615, !2616, !2617}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2611, file: !86, line: 264, baseType: !1400, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2611, file: !86, line: 265, baseType: !900, size: 64, offset: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "is_inline", scope: !2611, file: !86, line: 266, baseType: !660, size: 8, offset: 128)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2611, file: !86, line: 267, baseType: !85, size: 32, offset: 160)
!2617 = !DIDerivedType(tag: DW_TAG_member, scope: !2611, file: !86, line: 268, baseType: !2618, size: 64, offset: 192)
!2618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2611, file: !86, line: 268, size: 64, elements: !2619)
!2619 = !{!2620, !2621}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2618, file: !86, line: 269, baseType: !1202, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2618, file: !86, line: 276, baseType: !2622, size: 64)
!2622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2618, file: !86, line: 270, size: 64, elements: !2623)
!2623 = !{!2624, !2626, !2628, !2630, !2632}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "u8_data", scope: !2622, file: !86, line: 271, baseType: !2625, size: 64)
!2625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 64, elements: !401)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "u16_data", scope: !2622, file: !86, line: 272, baseType: !2627, size: 64)
!2627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 64, elements: !572)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "u32_data", scope: !2622, file: !86, line: 273, baseType: !2629, size: 64)
!2629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 64, elements: !1045)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "u64_data", scope: !2622, file: !86, line: 274, baseType: !2631, size: 64)
!2631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 64, elements: !446)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2622, file: !86, line: 275, baseType: !2633, size: 64)
!2633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1400, size: 64, elements: !446)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2599, file: !128, line: 419, baseType: !2635, size: 64, offset: 512)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2637)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2638, line: 20, size: 512, elements: !2639)
!2638 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2639 = !{!2640, !2642, !2643, !2644, !2645, !2646, !2648, !2649}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2637, file: !2638, line: 21, baseType: !2641, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !137, line: 158, baseType: !1200)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2637, file: !2638, line: 22, baseType: !2641, size: 64, offset: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2637, file: !2638, line: 23, baseType: !1400, size: 64, offset: 128)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2637, file: !2638, line: 24, baseType: !138, size: 64, offset: 192)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2637, file: !2638, line: 25, baseType: !138, size: 64, offset: 256)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2637, file: !2638, line: 26, baseType: !2647, size: 64, offset: 320)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2637, file: !2638, line: 26, baseType: !2647, size: 64, offset: 384)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2637, file: !2638, line: 26, baseType: !2647, size: 64, offset: 448)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !2599, file: !128, line: 420, baseType: !7, size: 32, offset: 576)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2599, file: !128, line: 421, baseType: !199, size: 32, offset: 608)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "address_list", scope: !2562, file: !128, line: 290, baseType: !2653, size: 64, offset: 1728)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !2562, file: !128, line: 291, baseType: !142, size: 128, offset: 1792)
!2656 = !{!0, !2657, !2664, !2669, !2674, !2679, !2684, !2686}
!2657 = !DIGlobalVariableExpression(var: !2658, expr: !DIExpression())
!2658 = distinct !DIGlobalVariable(name: "__exitcall_smbalert_driver_exit", scope: !2, file: !3, line: 198, type: !2659, isLocal: true, isDefinition: true)
!2659 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2660, line: 117, baseType: !2661)
!2660 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{null}
!2664 = !DIGlobalVariableExpression(var: !2665, expr: !DIExpression())
!2665 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author176", scope: !2, file: !3, line: 408, type: !2666, isLocal: true, isDefinition: true, align: 8)
!2666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1401, size: 392, elements: !2667)
!2667 = !{!2668}
!2668 = !DISubrange(count: 49)
!2669 = !DIGlobalVariableExpression(var: !2670, expr: !DIExpression())
!2670 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description177", scope: !2, file: !3, line: 409, type: !2671, isLocal: true, isDefinition: true, align: 8)
!2671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1401, size: 448, elements: !2672)
!2672 = !{!2673}
!2673 = !DISubrange(count: 56)
!2674 = !DIGlobalVariableExpression(var: !2675, expr: !DIExpression())
!2675 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file178", scope: !2, file: !3, line: 410, type: !2676, isLocal: true, isDefinition: true, align: 8)
!2676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1401, size: 296, elements: !2677)
!2677 = !{!2678}
!2678 = !DISubrange(count: 37)
!2679 = !DIGlobalVariableExpression(var: !2680, expr: !DIExpression())
!2680 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license179", scope: !2, file: !3, line: 410, type: !2681, isLocal: true, isDefinition: true, align: 8)
!2681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1401, size: 176, elements: !2682)
!2682 = !{!2683}
!2683 = !DISubrange(count: 22)
!2684 = !DIGlobalVariableExpression(var: !2685, expr: !DIExpression())
!2685 = distinct !DIGlobalVariable(name: "smbalert_driver", scope: !2, file: !3, line: 169, type: !2562, isLocal: true, isDefinition: true)
!2686 = !DIGlobalVariableExpression(var: !2687, expr: !DIExpression())
!2687 = distinct !DIGlobalVariable(name: "smbalert_ids", scope: !2, file: !3, line: 163, type: !2688, isLocal: true, isDefinition: true)
!2688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2570, size: 512, elements: !1045)
!2689 = !{i32 7, !"Dwarf Version", i32 4}
!2690 = !{i32 2, !"Debug Info Version", i32 3}
!2691 = !{i32 1, !"wchar_size", i32 2}
!2692 = !{i32 1, !"Code Model", i32 2}
!2693 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2694 = distinct !DISubprogram(name: "i2c_handle_smbus_alert", scope: !3, file: !3, line: 190, type: !2577, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!2695 = !DILocalVariable(name: "ara", arg: 1, scope: !2694, file: !3, line: 190, type: !173)
!2696 = !DILocation(line: 190, column: 47, scope: !2694)
!2697 = !DILocalVariable(name: "alert", scope: !2694, file: !3, line: 192, type: !147)
!2698 = !DILocation(line: 192, column: 26, scope: !2694)
!2699 = !DILocation(line: 192, column: 53, scope: !2694)
!2700 = !DILocation(line: 192, column: 34, scope: !2694)
!2701 = !DILocation(line: 194, column: 24, scope: !2694)
!2702 = !DILocation(line: 194, column: 31, scope: !2694)
!2703 = !DILocation(line: 194, column: 9, scope: !2694)
!2704 = !DILocation(line: 194, column: 2, scope: !2694)
!2705 = distinct !DISubprogram(name: "i2c_get_clientdata", scope: !128, file: !128, line: 351, type: !2706, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!146, !2708}
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!2710 = !DILocalVariable(name: "client", arg: 1, scope: !2705, file: !128, line: 351, type: !2708)
!2711 = !DILocation(line: 351, column: 65, scope: !2705)
!2712 = !DILocation(line: 353, column: 26, scope: !2705)
!2713 = !DILocation(line: 353, column: 34, scope: !2705)
!2714 = !DILocation(line: 353, column: 9, scope: !2705)
!2715 = !DILocation(line: 353, column: 2, scope: !2705)
!2716 = distinct !DISubprogram(name: "schedule_work", scope: !95, file: !95, line: 566, type: !2717, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!660, !171}
!2719 = !DILocalVariable(name: "work", arg: 1, scope: !2716, file: !95, line: 566, type: !171)
!2720 = !DILocation(line: 566, column: 54, scope: !2716)
!2721 = !DILocation(line: 568, column: 20, scope: !2716)
!2722 = !DILocation(line: 568, column: 31, scope: !2716)
!2723 = !DILocation(line: 568, column: 9, scope: !2716)
!2724 = !DILocation(line: 568, column: 2, scope: !2716)
!2725 = distinct !DISubprogram(name: "smbalert_driver_init", scope: !3, file: !3, line: 198, type: !2726, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!199}
!2728 = !DILocation(line: 198, column: 1, scope: !2725)
!2729 = distinct !DISubprogram(name: "smbalert_driver_exit", scope: !3, file: !3, line: 198, type: !2662, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!2730 = !DILocation(line: 198, column: 1, scope: !2729)
!2731 = distinct !DISubprogram(name: "i2c_register_spd", scope: !3, file: !3, line: 316, type: !2531, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!2732 = !DILocalVariable(name: "adap", arg: 1, scope: !2731, file: !3, line: 316, type: !185)
!2733 = !DILocation(line: 316, column: 43, scope: !2731)
!2734 = !DILocalVariable(name: "n", scope: !2731, file: !3, line: 318, type: !199)
!2735 = !DILocation(line: 318, column: 6, scope: !2731)
!2736 = !DILocalVariable(name: "slot_count", scope: !2731, file: !3, line: 318, type: !199)
!2737 = !DILocation(line: 318, column: 9, scope: !2731)
!2738 = !DILocalVariable(name: "dimm_count", scope: !2731, file: !3, line: 318, type: !199)
!2739 = !DILocation(line: 318, column: 25, scope: !2731)
!2740 = !DILocalVariable(name: "handle", scope: !2731, file: !3, line: 319, type: !217)
!2741 = !DILocation(line: 319, column: 6, scope: !2731)
!2742 = !DILocalVariable(name: "common_mem_type", scope: !2731, file: !3, line: 320, type: !218)
!2743 = !DILocation(line: 320, column: 5, scope: !2731)
!2744 = !DILocalVariable(name: "mem_type", scope: !2731, file: !3, line: 320, type: !218)
!2745 = !DILocation(line: 320, column: 28, scope: !2731)
!2746 = !DILocalVariable(name: "mem_size", scope: !2731, file: !3, line: 321, type: !326)
!2747 = !DILocation(line: 321, column: 6, scope: !2731)
!2748 = !DILocalVariable(name: "name", scope: !2731, file: !3, line: 322, type: !1400)
!2749 = !DILocation(line: 322, column: 14, scope: !2731)
!2750 = !DILocation(line: 324, column: 2, scope: !2731)
!2751 = !DILocation(line: 324, column: 37, scope: !2731)
!2752 = !DILocation(line: 324, column: 19, scope: !2731)
!2753 = !DILocation(line: 324, column: 17, scope: !2731)
!2754 = !DILocation(line: 324, column: 9, scope: !2731)
!2755 = !DILocation(line: 324, column: 50, scope: !2731)
!2756 = !DILocation(line: 325, column: 13, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 324, column: 61)
!2758 = !DILocation(line: 328, column: 30, scope: !2757)
!2759 = !DILocation(line: 328, column: 14, scope: !2757)
!2760 = !DILocation(line: 328, column: 12, scope: !2757)
!2761 = !DILocation(line: 329, column: 8, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 329, column: 7)
!2763 = !DILocation(line: 329, column: 7, scope: !2757)
!2764 = !DILocation(line: 330, column: 4, scope: !2762)
!2765 = distinct !{!2765, !2750, !2766}
!2766 = !DILocation(line: 349, column: 2, scope: !2731)
!2767 = !DILocation(line: 333, column: 30, scope: !2757)
!2768 = !DILocation(line: 333, column: 14, scope: !2757)
!2769 = !DILocation(line: 333, column: 12, scope: !2757)
!2770 = !DILocation(line: 334, column: 7, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 334, column: 7)
!2772 = !DILocation(line: 334, column: 16, scope: !2771)
!2773 = !DILocation(line: 334, column: 7, scope: !2757)
!2774 = !DILocation(line: 335, column: 4, scope: !2771)
!2775 = !DILocation(line: 337, column: 8, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 337, column: 7)
!2777 = !DILocation(line: 337, column: 7, scope: !2757)
!2778 = !DILocation(line: 339, column: 22, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 337, column: 25)
!2780 = !DILocation(line: 339, column: 20, scope: !2779)
!2781 = !DILocation(line: 340, column: 3, scope: !2779)
!2782 = !DILocation(line: 342, column: 8, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 342, column: 8)
!2784 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 340, column: 10)
!2785 = !DILocation(line: 342, column: 20, scope: !2783)
!2786 = !DILocation(line: 342, column: 17, scope: !2783)
!2787 = !DILocation(line: 342, column: 8, scope: !2784)
!2788 = !DILocation(line: 343, column: 5, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 342, column: 37)
!2790 = !DILocation(line: 345, column: 5, scope: !2789)
!2791 = !DILocation(line: 348, column: 13, scope: !2757)
!2792 = !DILocation(line: 352, column: 7, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 352, column: 6)
!2794 = !DILocation(line: 352, column: 6, scope: !2731)
!2795 = !DILocation(line: 353, column: 3, scope: !2793)
!2796 = !DILocation(line: 355, column: 2, scope: !2731)
!2797 = !DILocation(line: 358, column: 6, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 358, column: 6)
!2799 = !DILocation(line: 358, column: 17, scope: !2798)
!2800 = !DILocation(line: 358, column: 6, scope: !2731)
!2801 = !DILocation(line: 359, column: 3, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2798, file: !3, line: 358, column: 22)
!2803 = !DILocation(line: 361, column: 3, scope: !2802)
!2804 = !DILocation(line: 364, column: 10, scope: !2731)
!2805 = !DILocation(line: 364, column: 2, scope: !2731)
!2806 = !DILocation(line: 369, column: 8, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 364, column: 27)
!2808 = !DILocation(line: 370, column: 3, scope: !2807)
!2809 = !DILocation(line: 373, column: 8, scope: !2807)
!2810 = !DILocation(line: 374, column: 3, scope: !2807)
!2811 = !DILocation(line: 376, column: 3, scope: !2807)
!2812 = !DILocation(line: 379, column: 3, scope: !2807)
!2813 = !DILocation(line: 388, column: 9, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 388, column: 2)
!2815 = !DILocation(line: 388, column: 7, scope: !2814)
!2816 = !DILocation(line: 388, column: 14, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2814, file: !3, line: 388, column: 2)
!2818 = !DILocation(line: 388, column: 18, scope: !2817)
!2819 = !DILocation(line: 388, column: 16, scope: !2817)
!2820 = !DILocation(line: 388, column: 29, scope: !2817)
!2821 = !DILocation(line: 388, column: 32, scope: !2817)
!2822 = !DILocation(line: 0, scope: !2817)
!2823 = !DILocation(line: 388, column: 2, scope: !2814)
!2824 = !DILocalVariable(name: "info", scope: !2825, file: !3, line: 389, type: !2599)
!2825 = distinct !DILexicalBlock(scope: !2817, file: !3, line: 388, column: 49)
!2826 = !DILocation(line: 389, column: 25, scope: !2825)
!2827 = !DILocalVariable(name: "addr_list", scope: !2825, file: !3, line: 390, type: !2828)
!2828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 32, elements: !1045)
!2829 = !DILocation(line: 390, column: 18, scope: !2825)
!2830 = !DILocation(line: 392, column: 3, scope: !2825)
!2831 = !DILocation(line: 393, column: 16, scope: !2825)
!2832 = !DILocation(line: 393, column: 11, scope: !2825)
!2833 = !DILocation(line: 393, column: 22, scope: !2825)
!2834 = !DILocation(line: 393, column: 3, scope: !2825)
!2835 = !DILocation(line: 394, column: 25, scope: !2825)
!2836 = !DILocation(line: 394, column: 23, scope: !2825)
!2837 = !DILocation(line: 394, column: 18, scope: !2825)
!2838 = !DILocation(line: 394, column: 3, scope: !2825)
!2839 = !DILocation(line: 394, column: 16, scope: !2825)
!2840 = !DILocation(line: 395, column: 3, scope: !2825)
!2841 = !DILocation(line: 395, column: 16, scope: !2825)
!2842 = !DILocation(line: 397, column: 38, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2825, file: !3, line: 397, column: 7)
!2844 = !DILocation(line: 397, column: 51, scope: !2843)
!2845 = !DILocation(line: 397, column: 15, scope: !2843)
!2846 = !DILocation(line: 397, column: 8, scope: !2843)
!2847 = !DILocation(line: 397, column: 7, scope: !2825)
!2848 = !DILocation(line: 398, column: 4, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2843, file: !3, line: 397, column: 70)
!2850 = !DILocation(line: 401, column: 14, scope: !2849)
!2851 = !DILocation(line: 402, column: 3, scope: !2849)
!2852 = !DILocation(line: 403, column: 2, scope: !2825)
!2853 = !DILocation(line: 388, column: 45, scope: !2817)
!2854 = !DILocation(line: 388, column: 2, scope: !2817)
!2855 = distinct !{!2855, !2823, !2856}
!2856 = !DILocation(line: 403, column: 2, scope: !2814)
!2857 = !DILocation(line: 404, column: 1, scope: !2731)
!2858 = distinct !DISubprogram(name: "IS_ERR", scope: !2859, file: !2859, line: 34, type: !2860, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!2859 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!660, !1202}
!2862 = !DILocalVariable(name: "ptr", arg: 1, scope: !2858, file: !2859, line: 34, type: !1202)
!2863 = !DILocation(line: 34, column: 60, scope: !2858)
!2864 = !DILocation(line: 36, column: 9, scope: !2858)
!2865 = !DILocation(line: 36, column: 2, scope: !2858)
!2866 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !2867, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!146, !2062}
!2869 = !DILocalVariable(name: "dev", arg: 1, scope: !2866, file: !30, line: 655, type: !2062)
!2870 = !DILocation(line: 655, column: 58, scope: !2866)
!2871 = !DILocation(line: 657, column: 9, scope: !2866)
!2872 = !DILocation(line: 657, column: 14, scope: !2866)
!2873 = !DILocation(line: 657, column: 2, scope: !2866)
!2874 = distinct !DISubprogram(name: "queue_work", scope: !95, file: !95, line: 504, type: !2875, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!660, !2877, !171}
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !95, line: 18, flags: DIFlagFwdDecl)
!2879 = !DILocalVariable(name: "wq", arg: 1, scope: !2874, file: !95, line: 504, type: !2877)
!2880 = !DILocation(line: 504, column: 56, scope: !2874)
!2881 = !DILocalVariable(name: "work", arg: 2, scope: !2874, file: !95, line: 505, type: !171)
!2882 = !DILocation(line: 505, column: 30, scope: !2874)
!2883 = !DILocation(line: 507, column: 41, scope: !2874)
!2884 = !DILocation(line: 507, column: 45, scope: !2874)
!2885 = !DILocation(line: 507, column: 9, scope: !2874)
!2886 = !DILocation(line: 507, column: 2, scope: !2874)
!2887 = distinct !DISubprogram(name: "smbalert_probe", scope: !3, file: !3, line: 115, type: !2567, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!2888 = !DILocalVariable(name: "ara", arg: 1, scope: !2887, file: !3, line: 115, type: !173)
!2889 = !DILocation(line: 115, column: 46, scope: !2887)
!2890 = !DILocalVariable(name: "id", arg: 2, scope: !2887, file: !3, line: 116, type: !2569)
!2891 = !DILocation(line: 116, column: 34, scope: !2887)
!2892 = !DILocalVariable(name: "setup", scope: !2887, file: !3, line: 118, type: !2893)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_smbus_alert_setup", file: !2895, line: 25, size: 32, elements: !2896)
!2895 = !DIFile(filename: "./include/linux/i2c-smbus.h", directory: "/home/lizy2001/genbc/linux")
!2896 = !{!2897}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2894, file: !2895, line: 26, baseType: !199, size: 32)
!2898 = !DILocation(line: 118, column: 32, scope: !2887)
!2899 = !DILocation(line: 118, column: 58, scope: !2887)
!2900 = !DILocation(line: 118, column: 63, scope: !2887)
!2901 = !DILocation(line: 118, column: 40, scope: !2887)
!2902 = !DILocalVariable(name: "alert", scope: !2887, file: !3, line: 119, type: !147)
!2903 = !DILocation(line: 119, column: 26, scope: !2887)
!2904 = !DILocalVariable(name: "adapter", scope: !2887, file: !3, line: 120, type: !185)
!2905 = !DILocation(line: 120, column: 22, scope: !2887)
!2906 = !DILocation(line: 120, column: 32, scope: !2887)
!2907 = !DILocation(line: 120, column: 37, scope: !2887)
!2908 = !DILocalVariable(name: "res", scope: !2887, file: !3, line: 121, type: !199)
!2909 = !DILocation(line: 121, column: 6, scope: !2887)
!2910 = !DILocalVariable(name: "irq", scope: !2887, file: !3, line: 121, type: !199)
!2911 = !DILocation(line: 121, column: 11, scope: !2887)
!2912 = !DILocation(line: 123, column: 24, scope: !2887)
!2913 = !DILocation(line: 123, column: 29, scope: !2887)
!2914 = !DILocation(line: 123, column: 10, scope: !2887)
!2915 = !DILocation(line: 123, column: 8, scope: !2887)
!2916 = !DILocation(line: 125, column: 7, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 125, column: 6)
!2918 = !DILocation(line: 125, column: 6, scope: !2887)
!2919 = !DILocation(line: 126, column: 3, scope: !2917)
!2920 = !DILocation(line: 128, column: 6, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 128, column: 6)
!2922 = !DILocation(line: 128, column: 6, scope: !2887)
!2923 = !DILocation(line: 129, column: 9, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 128, column: 13)
!2925 = !DILocation(line: 129, column: 16, scope: !2924)
!2926 = !DILocation(line: 129, column: 7, scope: !2924)
!2927 = !DILocation(line: 130, column: 2, scope: !2924)
!2928 = !DILocation(line: 131, column: 27, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 130, column: 9)
!2930 = !DILocation(line: 131, column: 36, scope: !2929)
!2931 = !DILocation(line: 131, column: 40, scope: !2929)
!2932 = !DILocation(line: 131, column: 9, scope: !2929)
!2933 = !DILocation(line: 131, column: 7, scope: !2929)
!2934 = !DILocation(line: 132, column: 7, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2929, file: !3, line: 132, column: 7)
!2936 = !DILocation(line: 132, column: 11, scope: !2935)
!2937 = !DILocation(line: 132, column: 7, scope: !2929)
!2938 = !DILocation(line: 133, column: 11, scope: !2935)
!2939 = !DILocation(line: 133, column: 4, scope: !2935)
!2940 = !DILocation(line: 136, column: 2, scope: !2887)
!2941 = !DILocation(line: 136, column: 2, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 136, column: 2)
!2943 = !DILocation(line: 137, column: 15, scope: !2887)
!2944 = !DILocation(line: 137, column: 2, scope: !2887)
!2945 = !DILocation(line: 137, column: 9, scope: !2887)
!2946 = !DILocation(line: 137, column: 13, scope: !2887)
!2947 = !DILocation(line: 139, column: 6, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 139, column: 6)
!2949 = !DILocation(line: 139, column: 10, scope: !2948)
!2950 = !DILocation(line: 139, column: 6, scope: !2887)
!2951 = !DILocation(line: 140, column: 36, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2948, file: !3, line: 139, column: 15)
!2953 = !DILocation(line: 140, column: 41, scope: !2952)
!2954 = !DILocation(line: 140, column: 46, scope: !2952)
!2955 = !DILocation(line: 143, column: 22, scope: !2952)
!2956 = !DILocation(line: 140, column: 9, scope: !2952)
!2957 = !DILocation(line: 140, column: 7, scope: !2952)
!2958 = !DILocation(line: 144, column: 7, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 144, column: 7)
!2960 = !DILocation(line: 144, column: 7, scope: !2952)
!2961 = !DILocation(line: 145, column: 11, scope: !2959)
!2962 = !DILocation(line: 145, column: 4, scope: !2959)
!2963 = !DILocation(line: 146, column: 2, scope: !2952)
!2964 = !DILocation(line: 148, column: 21, scope: !2887)
!2965 = !DILocation(line: 148, column: 26, scope: !2887)
!2966 = !DILocation(line: 148, column: 2, scope: !2887)
!2967 = !DILocation(line: 149, column: 2, scope: !2887)
!2968 = !DILocation(line: 151, column: 2, scope: !2887)
!2969 = !DILocation(line: 152, column: 1, scope: !2887)
!2970 = distinct !DISubprogram(name: "smbalert_remove", scope: !3, file: !3, line: 155, type: !2577, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!2971 = !DILocalVariable(name: "ara", arg: 1, scope: !2970, file: !3, line: 155, type: !173)
!2972 = !DILocation(line: 155, column: 47, scope: !2970)
!2973 = !DILocalVariable(name: "alert", scope: !2970, file: !3, line: 157, type: !147)
!2974 = !DILocation(line: 157, column: 26, scope: !2970)
!2975 = !DILocation(line: 157, column: 53, scope: !2970)
!2976 = !DILocation(line: 157, column: 34, scope: !2970)
!2977 = !DILocation(line: 159, column: 20, scope: !2970)
!2978 = !DILocation(line: 159, column: 27, scope: !2970)
!2979 = !DILocation(line: 159, column: 2, scope: !2970)
!2980 = !DILocation(line: 160, column: 2, scope: !2970)
!2981 = distinct !DISubprogram(name: "dev_get_platdata", scope: !30, file: !30, line: 828, type: !2867, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!2982 = !DILocalVariable(name: "dev", arg: 1, scope: !2981, file: !30, line: 828, type: !2062)
!2983 = !DILocation(line: 828, column: 59, scope: !2981)
!2984 = !DILocation(line: 830, column: 9, scope: !2981)
!2985 = !DILocation(line: 830, column: 14, scope: !2981)
!2986 = !DILocation(line: 830, column: 2, scope: !2981)
!2987 = distinct !DISubprogram(name: "devm_kzalloc", scope: !30, file: !30, line: 215, type: !2988, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!146, !1729, !900, !136}
!2990 = !DILocalVariable(name: "dev", arg: 1, scope: !2987, file: !30, line: 215, type: !1729)
!2991 = !DILocation(line: 215, column: 49, scope: !2987)
!2992 = !DILocalVariable(name: "size", arg: 2, scope: !2987, file: !30, line: 215, type: !900)
!2993 = !DILocation(line: 215, column: 61, scope: !2987)
!2994 = !DILocalVariable(name: "gfp", arg: 3, scope: !2987, file: !30, line: 215, type: !136)
!2995 = !DILocation(line: 215, column: 73, scope: !2987)
!2996 = !DILocation(line: 217, column: 22, scope: !2987)
!2997 = !DILocation(line: 217, column: 27, scope: !2987)
!2998 = !DILocation(line: 217, column: 33, scope: !2987)
!2999 = !DILocation(line: 217, column: 37, scope: !2987)
!3000 = !DILocation(line: 217, column: 9, scope: !2987)
!3001 = !DILocation(line: 217, column: 2, scope: !2987)
!3002 = distinct !DISubprogram(name: "__init_work", scope: !95, file: !95, line: 215, type: !3003, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{null, !171, !199}
!3005 = !DILocalVariable(name: "work", arg: 1, scope: !3002, file: !95, line: 215, type: !171)
!3006 = !DILocation(line: 215, column: 52, scope: !3002)
!3007 = !DILocalVariable(name: "onstack", arg: 2, scope: !3002, file: !95, line: 215, type: !199)
!3008 = !DILocation(line: 215, column: 62, scope: !3002)
!3009 = !DILocation(line: 215, column: 73, scope: !3002)
!3010 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !3011, file: !3011, line: 33, type: !3012, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!3011 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!3012 = !DISubroutineType(types: !3013)
!3013 = !{null, !141}
!3014 = !DILocalVariable(name: "list", arg: 1, scope: !3010, file: !3011, line: 33, type: !141)
!3015 = !DILocation(line: 33, column: 53, scope: !3010)
!3016 = !DILocation(line: 35, column: 2, scope: !3010)
!3017 = !DILocation(line: 35, column: 2, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3010, file: !3011, line: 35, column: 2)
!3019 = !DILocation(line: 35, column: 2, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3018, file: !3011, line: 35, column: 2)
!3021 = !DILocation(line: 35, column: 2, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3018, file: !3011, line: 35, column: 2)
!3023 = !DILocation(line: 36, column: 15, scope: !3010)
!3024 = !DILocation(line: 36, column: 2, scope: !3010)
!3025 = !DILocation(line: 36, column: 8, scope: !3010)
!3026 = !DILocation(line: 36, column: 13, scope: !3010)
!3027 = !DILocation(line: 37, column: 1, scope: !3010)
!3028 = distinct !DISubprogram(name: "smbalert_work", scope: !3, file: !3, line: 104, type: !169, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!3029 = !DILocalVariable(name: "work", arg: 1, scope: !3028, file: !3, line: 104, type: !171)
!3030 = !DILocation(line: 104, column: 47, scope: !3028)
!3031 = !DILocalVariable(name: "alert", scope: !3028, file: !3, line: 106, type: !147)
!3032 = !DILocation(line: 106, column: 26, scope: !3028)
!3033 = !DILocalVariable(name: "__mptr", scope: !3034, file: !3, line: 108, type: !146)
!3034 = distinct !DILexicalBlock(scope: !3028, file: !3, line: 108, column: 10)
!3035 = !DILocation(line: 108, column: 10, scope: !3034)
!3036 = !DILocation(line: 108, column: 10, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 108, column: 10)
!3038 = !DILocation(line: 108, column: 8, scope: !3028)
!3039 = !DILocation(line: 110, column: 17, scope: !3028)
!3040 = !DILocation(line: 110, column: 2, scope: !3028)
!3041 = !DILocation(line: 112, column: 1, scope: !3028)
!3042 = distinct !DISubprogram(name: "smbus_alert", scope: !3, file: !3, line: 66, type: !2372, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!3043 = !DILocalVariable(name: "irq", arg: 1, scope: !3042, file: !3, line: 66, type: !199)
!3044 = !DILocation(line: 66, column: 36, scope: !3042)
!3045 = !DILocalVariable(name: "d", arg: 2, scope: !3042, file: !3, line: 66, type: !146)
!3046 = !DILocation(line: 66, column: 47, scope: !3042)
!3047 = !DILocalVariable(name: "alert", scope: !3042, file: !3, line: 68, type: !147)
!3048 = !DILocation(line: 68, column: 26, scope: !3042)
!3049 = !DILocation(line: 68, column: 34, scope: !3042)
!3050 = !DILocalVariable(name: "ara", scope: !3042, file: !3, line: 69, type: !173)
!3051 = !DILocation(line: 69, column: 21, scope: !3042)
!3052 = !DILocation(line: 71, column: 8, scope: !3042)
!3053 = !DILocation(line: 71, column: 15, scope: !3042)
!3054 = !DILocation(line: 71, column: 6, scope: !3042)
!3055 = !DILocation(line: 73, column: 2, scope: !3042)
!3056 = !DILocalVariable(name: "status", scope: !3057, file: !3, line: 74, type: !737)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 73, column: 11)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !3, line: 73, column: 2)
!3059 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 73, column: 2)
!3060 = !DILocation(line: 74, column: 7, scope: !3057)
!3061 = !DILocalVariable(name: "data", scope: !3057, file: !3, line: 75, type: !3062)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alert_data", file: !3, line: 25, size: 96, elements: !3063)
!3063 = !{!3064, !3065, !3066}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3062, file: !3, line: 26, baseType: !177, size: 16)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3062, file: !3, line: 27, baseType: !127, size: 32, offset: 32)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3062, file: !3, line: 28, baseType: !7, size: 32, offset: 64)
!3067 = !DILocation(line: 75, column: 21, scope: !3057)
!3068 = !DILocation(line: 85, column: 32, scope: !3057)
!3069 = !DILocation(line: 85, column: 12, scope: !3057)
!3070 = !DILocation(line: 85, column: 10, scope: !3057)
!3071 = !DILocation(line: 86, column: 7, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3057, file: !3, line: 86, column: 7)
!3073 = !DILocation(line: 86, column: 14, scope: !3072)
!3074 = !DILocation(line: 86, column: 7, scope: !3057)
!3075 = !DILocation(line: 87, column: 4, scope: !3072)
!3076 = !DILocation(line: 89, column: 15, scope: !3057)
!3077 = !DILocation(line: 89, column: 22, scope: !3057)
!3078 = !DILocation(line: 89, column: 8, scope: !3057)
!3079 = !DILocation(line: 89, column: 13, scope: !3057)
!3080 = !DILocation(line: 90, column: 15, scope: !3057)
!3081 = !DILocation(line: 90, column: 22, scope: !3057)
!3082 = !DILocation(line: 90, column: 8, scope: !3057)
!3083 = !DILocation(line: 90, column: 13, scope: !3057)
!3084 = !DILocation(line: 91, column: 8, scope: !3057)
!3085 = !DILocation(line: 91, column: 13, scope: !3057)
!3086 = !DILocation(line: 97, column: 26, scope: !3057)
!3087 = !DILocation(line: 97, column: 31, scope: !3057)
!3088 = !DILocation(line: 97, column: 40, scope: !3057)
!3089 = !DILocation(line: 97, column: 45, scope: !3057)
!3090 = !DILocation(line: 97, column: 3, scope: !3057)
!3091 = !DILocation(line: 73, column: 2, scope: !3058)
!3092 = distinct !{!3092, !3093, !3094}
!3093 = !DILocation(line: 73, column: 2, scope: !3059)
!3094 = !DILocation(line: 99, column: 2, scope: !3059)
!3095 = !DILocation(line: 101, column: 2, scope: !3042)
!3096 = distinct !DISubprogram(name: "i2c_set_clientdata", scope: !128, file: !128, line: 356, type: !3097, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{null, !173, !146}
!3099 = !DILocalVariable(name: "client", arg: 1, scope: !3096, file: !128, line: 356, type: !173)
!3100 = !DILocation(line: 356, column: 58, scope: !3096)
!3101 = !DILocalVariable(name: "data", arg: 2, scope: !3096, file: !128, line: 356, type: !146)
!3102 = !DILocation(line: 356, column: 72, scope: !3096)
!3103 = !DILocation(line: 358, column: 19, scope: !3096)
!3104 = !DILocation(line: 358, column: 27, scope: !3096)
!3105 = !DILocation(line: 358, column: 32, scope: !3096)
!3106 = !DILocation(line: 358, column: 2, scope: !3096)
!3107 = !DILocation(line: 359, column: 1, scope: !3096)
!3108 = distinct !DISubprogram(name: "smbus_do_alert", scope: !3, file: !3, line: 32, type: !3109, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!199, !1729, !146}
!3111 = !DILocalVariable(name: "dev", arg: 1, scope: !3108, file: !3, line: 32, type: !1729)
!3112 = !DILocation(line: 32, column: 42, scope: !3108)
!3113 = !DILocalVariable(name: "addrp", arg: 2, scope: !3108, file: !3, line: 32, type: !146)
!3114 = !DILocation(line: 32, column: 53, scope: !3108)
!3115 = !DILocalVariable(name: "client", scope: !3108, file: !3, line: 34, type: !173)
!3116 = !DILocation(line: 34, column: 21, scope: !3108)
!3117 = !DILocation(line: 34, column: 48, scope: !3108)
!3118 = !DILocation(line: 34, column: 30, scope: !3108)
!3119 = !DILocalVariable(name: "data", scope: !3108, file: !3, line: 35, type: !3120)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3121 = !DILocation(line: 35, column: 21, scope: !3108)
!3122 = !DILocation(line: 35, column: 28, scope: !3108)
!3123 = !DILocalVariable(name: "driver", scope: !3108, file: !3, line: 36, type: !2561)
!3124 = !DILocation(line: 36, column: 21, scope: !3108)
!3125 = !DILocation(line: 38, column: 7, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 38, column: 6)
!3127 = !DILocation(line: 38, column: 14, scope: !3126)
!3128 = !DILocation(line: 38, column: 17, scope: !3126)
!3129 = !DILocation(line: 38, column: 25, scope: !3126)
!3130 = !DILocation(line: 38, column: 33, scope: !3126)
!3131 = !DILocation(line: 38, column: 39, scope: !3126)
!3132 = !DILocation(line: 38, column: 30, scope: !3126)
!3133 = !DILocation(line: 38, column: 6, scope: !3108)
!3134 = !DILocation(line: 39, column: 3, scope: !3126)
!3135 = !DILocation(line: 40, column: 6, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 40, column: 6)
!3137 = !DILocation(line: 40, column: 14, scope: !3136)
!3138 = !DILocation(line: 40, column: 20, scope: !3136)
!3139 = !DILocation(line: 40, column: 6, scope: !3108)
!3140 = !DILocation(line: 41, column: 3, scope: !3136)
!3141 = !DILocation(line: 47, column: 14, scope: !3108)
!3142 = !DILocation(line: 47, column: 2, scope: !3108)
!3143 = !DILocation(line: 48, column: 6, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 48, column: 6)
!3145 = !DILocation(line: 48, column: 14, scope: !3144)
!3146 = !DILocation(line: 48, column: 18, scope: !3144)
!3147 = !DILocation(line: 48, column: 6, scope: !3108)
!3148 = !DILocalVariable(name: "__mptr", scope: !3149, file: !3, line: 49, type: !146)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 49, column: 12)
!3150 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 48, column: 26)
!3151 = !DILocation(line: 49, column: 12, scope: !3149)
!3152 = !DILocation(line: 49, column: 12, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 49, column: 12)
!3154 = !DILocation(line: 49, column: 10, scope: !3150)
!3155 = !DILocation(line: 50, column: 7, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 50, column: 7)
!3157 = !DILocation(line: 50, column: 15, scope: !3156)
!3158 = !DILocation(line: 50, column: 7, scope: !3150)
!3159 = !DILocation(line: 51, column: 4, scope: !3156)
!3160 = !DILocation(line: 51, column: 12, scope: !3156)
!3161 = !DILocation(line: 51, column: 18, scope: !3156)
!3162 = !DILocation(line: 51, column: 26, scope: !3156)
!3163 = !DILocation(line: 51, column: 32, scope: !3156)
!3164 = !DILocation(line: 51, column: 38, scope: !3156)
!3165 = !DILocation(line: 51, column: 44, scope: !3156)
!3166 = !DILocation(line: 53, column: 4, scope: !3156)
!3167 = !DILocation(line: 54, column: 2, scope: !3150)
!3168 = !DILocation(line: 56, column: 16, scope: !3108)
!3169 = !DILocation(line: 56, column: 2, scope: !3108)
!3170 = !DILocation(line: 59, column: 2, scope: !3108)
!3171 = !DILocation(line: 60, column: 1, scope: !3108)
!3172 = distinct !DISubprogram(name: "device_lock", scope: !30, file: !30, line: 729, type: !1752, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!3173 = !DILocalVariable(name: "dev", arg: 1, scope: !3172, file: !30, line: 729, type: !1729)
!3174 = !DILocation(line: 729, column: 47, scope: !3172)
!3175 = !DILocation(line: 731, column: 14, scope: !3172)
!3176 = !DILocation(line: 731, column: 19, scope: !3172)
!3177 = !DILocation(line: 731, column: 2, scope: !3172)
!3178 = !DILocation(line: 732, column: 1, scope: !3172)
!3179 = distinct !DISubprogram(name: "device_unlock", scope: !30, file: !30, line: 744, type: !1752, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!3180 = !DILocalVariable(name: "dev", arg: 1, scope: !3179, file: !30, line: 744, type: !1729)
!3181 = !DILocation(line: 744, column: 49, scope: !3179)
!3182 = !DILocation(line: 746, column: 16, scope: !3179)
!3183 = !DILocation(line: 746, column: 21, scope: !3179)
!3184 = !DILocation(line: 746, column: 2, scope: !3179)
!3185 = !DILocation(line: 747, column: 1, scope: !3179)
!3186 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !30, file: !30, line: 660, type: !3187, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{null, !1729, !146}
!3189 = !DILocalVariable(name: "dev", arg: 1, scope: !3186, file: !30, line: 660, type: !1729)
!3190 = !DILocation(line: 660, column: 51, scope: !3186)
!3191 = !DILocalVariable(name: "data", arg: 2, scope: !3186, file: !30, line: 660, type: !146)
!3192 = !DILocation(line: 660, column: 62, scope: !3186)
!3193 = !DILocation(line: 662, column: 21, scope: !3186)
!3194 = !DILocation(line: 662, column: 2, scope: !3186)
!3195 = !DILocation(line: 662, column: 7, scope: !3186)
!3196 = !DILocation(line: 662, column: 19, scope: !3186)
!3197 = !DILocation(line: 663, column: 1, scope: !3186)
