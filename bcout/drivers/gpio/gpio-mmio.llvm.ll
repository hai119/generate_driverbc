; ModuleID = '../bcout/drivers/gpio/gpio-mmio.llvm.bc'
source_filename = "drivers/gpio/gpio-mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.paravirt_patch_template = type { %struct.pv_init_ops, %struct.pv_time_ops, %struct.pv_cpu_ops, %struct.pv_irq_ops, %struct.pv_mmu_ops, %struct.pv_lock_ops }
%struct.pv_init_ops = type { i32 (i8, i8*, i64, i32)* }
%struct.pv_time_ops = type { i64 ()*, i64 (i32)* }
%struct.pv_cpu_ops = type { void ()*, i64 (i32)*, void (i32, i64)*, i64 ()*, void (i64)*, void (i64)*, void ()*, void (%struct.desc_ptr*)*, void (%struct.desc_ptr*)*, void (i8*, i32)*, i64 ()*, void (%struct.thread_struct*, i32)*, void (i32)*, void (%struct.desc_struct*, i32, i8*)*, void (%struct.desc_struct*, i32, i8*, i32)*, void (%struct.gate_struct*, i32, %struct.gate_struct*)*, void (%struct.desc_struct*, i32)*, void (%struct.desc_struct*, i32)*, void (i64)*, void ()*, void ()*, void ()*, void (i32*, i32*, i32*, i32*)*, i64 (i32)*, void (i32, i32, i32)*, i64 (i32, i32*)*, i32 (i32, i32, i32)*, i64 (i32)*, void ()*, void ()*, void ()*, void (%struct.task_struct*)*, void (%struct.task_struct*)* }
%struct.desc_ptr = type <{ i16, i64 }>
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x %struct.perf_event*], i64, i64, i64, i64, i64, %struct.io_bitmap*, i64, i8, [47 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.perf_event = type opaque
%struct.io_bitmap = type opaque
%struct.fpu = type { i32, i64, [48 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.46, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.49 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i64, i64 }
%union.anon.49 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.45, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
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
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.61, %struct.list_head, %struct.list_head, %union.anon.62 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.59 }
%union.anon.59 = type { %struct.anon.60 }
%struct.anon.60 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.page = type { i64, %union.anon.2, %union.anon.51, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.51 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.52, i32 }
%union.anon.52 = type { %struct.kuid_t }
%struct.kuid_t = type { i32 }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.block_device = type opaque
%struct.mtd_info = type opaque
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.fsnotify_mark_connector = type opaque
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.61 = type { %struct.list_head }
%union.anon.62 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.53, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.54, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.55, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.58, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.53 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.54 = type { %struct.callback_head }
%union.anon.55 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.58 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.56 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.56 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.30 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.30 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.22, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.23, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.24, %union.anon.28, %struct.key_restriction* }
%union.anon.22 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.23 = type { i64 }
%union.anon.24 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.25, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.25 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.28 = type { %union.key_payload }
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
%struct.rlimit = type { i64, i64 }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, %struct.seccomp_filter* }
%struct.seccomp_filter = type opaque
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.31, %union.anon.32, i32 }
%struct.request_queue = type opaque
%union.anon.31 = type { %struct.list_head }
%union.anon.32 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.33 }
%struct.anon.33 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.37 }
%struct.anon.37 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.44, i32, [12 x i8] }
%union.anon.44 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.45 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.pv_irq_ops = type { %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void ()*, void ()* }
%struct.paravirt_callee_save = type { i8* }
%struct.pv_mmu_ops = type { void ()*, void ()*, void (i64)*, void (%struct.cpumask*, %struct.flush_tlb_info*)*, void (%struct.mmu_gather*, i8*)*, void (%struct.mm_struct*)*, %struct.paravirt_callee_save, void (i64)*, i64 ()*, void (i64)*, void (%struct.mm_struct*, %struct.mm_struct*)*, void (%struct.mm_struct*, %struct.mm_struct*)*, i32 (%struct.mm_struct*)*, void (%struct.mm_struct*, %struct.pgd_t*)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (i64)*, void (i64)*, void (i64)*, void (i64)*, void (%struct.pte_t*, i64)*, void (%struct.pmd_t*, i64)*, i64 (%struct.vm_area_struct*, i64, %struct.pte_t*)*, void (%struct.vm_area_struct*, i64, %struct.pte_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pud_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.p4d_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pgd_t*, i64)*, %struct.pv_lazy_ops, void (i32, i64, i64)* }
%struct.flush_tlb_info = type opaque
%struct.mmu_gather = type opaque
%struct.pte_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.gpio_chip = type { i8*, %struct.gpio_device*, %struct.device*, %struct.module*, i32 (%struct.gpio_chip*, i32)*, void (%struct.gpio_chip*, i32)*, i32 (%struct.gpio_chip*, i32)*, i32 (%struct.gpio_chip*, i32)*, i32 (%struct.gpio_chip*, i32, i32)*, i32 (%struct.gpio_chip*, i32)*, i32 (%struct.gpio_chip*, i64*, i64*)*, void (%struct.gpio_chip*, i32, i32)*, void (%struct.gpio_chip*, i64*, i64*)*, i32 (%struct.gpio_chip*, i32, i64)*, i32 (%struct.gpio_chip*, i32)*, void (%struct.seq_file*, %struct.gpio_chip*)*, i32 (%struct.gpio_chip*, i64*, i32)*, i32 (%struct.gpio_chip*)*, i32, i16, i8**, i8, i64 (i8*)*, void (i8*, i64)*, i8, i8*, i8*, i8*, i8*, i8*, i8, i32, %struct.spinlock, i64, i64, %struct.gpio_irq_chip, i64*, %struct.device_node*, i32, i32 (%struct.gpio_chip*, %struct.of_phandle_args*, i32*)* }
%struct.gpio_device = type opaque
%struct.gpio_irq_chip = type { %struct.irq_chip*, %struct.irq_domain*, %struct.irq_domain_ops*, %struct.fwnode_handle*, %struct.irq_domain*, i32 (%struct.gpio_chip*, i32, i32, i32*, i32*)*, i8* (%struct.gpio_chip*, i32, i32)*, i32 (%struct.gpio_chip*, i32)*, %struct.irq_domain_ops, void (%struct.irq_desc*)*, i32, %struct.lock_class_key*, %struct.lock_class_key*, void (%struct.irq_desc*)*, i8*, i32, i32*, i32*, i8, i32 (%struct.gpio_chip*)*, void (%struct.gpio_chip*, i64*, i32)*, i64*, i32, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)* }
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, {}*, {}*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask] }
%struct.msi_desc = type opaque
%struct.msi_msg = type opaque
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, i64, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8* }
%struct.irqaction = type opaque
%struct.proc_dir_entry = type opaque
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.63, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.63 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.of_phandle_args = type { %struct.device_node*, i32, [16 x i32] }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque

@__UNIQUE_ID_description208 = internal constant [73 x i8] c"gpio_generic.description=Driver for basic memory-mapped GPIO controllers\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_author209 = internal constant [61 x i8] c"gpio_generic.author=Anton Vorontsov <cbouatmailru@gmail.com>\00", section ".modinfo", align 1, !dbg !126
@__UNIQUE_ID_file210 = internal constant [44 x i8] c"gpio_generic.file=drivers/gpio/gpio-generic\00", section ".modinfo", align 1, !dbg !133
@__UNIQUE_ID_license211 = internal constant [25 x i8] c"gpio_generic.license=GPL\00", section ".modinfo", align 1, !dbg !138
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str = private unnamed_addr constant [42 x i8] c"64 bit big endian byte order unsupported\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"unsupported data width %u bits\0A\00", align 1
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__UNIQUE_ID_description208, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__UNIQUE_ID_author209, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__UNIQUE_ID_file210, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_license211, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @bgpio_init(%struct.gpio_chip* %gc, %struct.device* %dev, i64 %sz, i8* %dat, i8* %set, i8* %clr, i8* %dirout, i8* %dirin, i64 %flags) #0 !dbg !152 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4084, metadata !DIExpression()), !dbg !4091
  %retval = alloca i32, align 4
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %sz.addr = alloca i64, align 8
  %dat.addr = alloca i8*, align 8
  %set.addr = alloca i8*, align 8
  %clr.addr = alloca i8*, align 8
  %dirout.addr = alloca i8*, align 8
  %dirin.addr = alloca i8*, align 8
  %flags.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 1
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !4094, metadata !DIExpression()), !dbg !4095
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4096, metadata !DIExpression()), !dbg !4097
  store i64 %sz, i64* %sz.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz.addr, metadata !4098, metadata !DIExpression()), !dbg !4099
  store i8* %dat, i8** %dat.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dat.addr, metadata !4100, metadata !DIExpression()), !dbg !4101
  store i8* %set, i8** %set.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %set.addr, metadata !4102, metadata !DIExpression()), !dbg !4103
  store i8* %clr, i8** %clr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %clr.addr, metadata !4104, metadata !DIExpression()), !dbg !4105
  store i8* %dirout, i8** %dirout.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dirout.addr, metadata !4106, metadata !DIExpression()), !dbg !4107
  store i8* %dirin, i8** %dirin.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dirin.addr, metadata !4108, metadata !DIExpression()), !dbg !4109
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4110, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4112, metadata !DIExpression()), !dbg !4113
  %0 = load i64, i64* %sz.addr, align 8, !dbg !4114
  %call = call zeroext i1 @is_power_of_2(i64 %0) #9, !dbg !4116
  br i1 %call, label %if.end, label %if.then, !dbg !4117

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4118
  br label %return, !dbg !4118

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %sz.addr, align 8, !dbg !4119
  %mul = mul i64 %1, 8, !dbg !4120
  %conv = trunc i64 %mul to i32, !dbg !4119
  %2 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4121
  %bgpio_bits = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %2, i32 0, i32 31, !dbg !4122
  store i32 %conv, i32* %bgpio_bits, align 4, !dbg !4123
  %3 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4124
  %bgpio_bits1 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %3, i32 0, i32 31, !dbg !4126
  %4 = load i32, i32* %bgpio_bits1, align 4, !dbg !4126
  %cmp = icmp sgt i32 %4, 64, !dbg !4127
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !4128

if.then3:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !4129
  br label %return, !dbg !4129

if.end4:                                          ; preds = %if.end
  br label %do.body, !dbg !4130

do.body:                                          ; preds = %if.end4
  %5 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4131
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %5, i32 0, i32 32, !dbg !4131
  store %struct.spinlock* %bgpio_lock, %struct.spinlock** %lock.addr.i, align 8
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4132
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !4133
  %rlock.i = bitcast %union.anon.1* %7 to %struct.raw_spinlock*, !dbg !4133
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4131
  %bgpio_lock6 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %8, i32 0, i32 32, !dbg !4131
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !4131
  %rlock = bitcast %union.anon.1* %9 to %struct.raw_spinlock*, !dbg !4131
  %10 = bitcast %struct.spinlock* %bgpio_lock6 to i8*, !dbg !4131
  %11 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !4131
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 1 %11, i64 0, i1 false), !dbg !4131
  br label %do.end, !dbg !4131

do.end:                                           ; preds = %do.body
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4134
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4135
  %parent = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %13, i32 0, i32 2, !dbg !4136
  store %struct.device* %12, %struct.device** %parent, align 8, !dbg !4137
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4138
  %call7 = call i8* @dev_name(%struct.device* %14) #10, !dbg !4139
  %15 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4140
  %label = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %15, i32 0, i32 0, !dbg !4141
  store i8* %call7, i8** %label, align 8, !dbg !4142
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4143
  %base = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %16, i32 0, i32 18, !dbg !4144
  store i32 -1, i32* %base, align 8, !dbg !4145
  %17 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4146
  %bgpio_bits8 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %17, i32 0, i32 31, !dbg !4147
  %18 = load i32, i32* %bgpio_bits8, align 4, !dbg !4147
  %conv9 = trunc i32 %18 to i16, !dbg !4146
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4148
  %ngpio = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 19, !dbg !4149
  store i16 %conv9, i16* %ngpio, align 4, !dbg !4150
  %20 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4151
  %request = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %20, i32 0, i32 4, !dbg !4152
  store i32 (%struct.gpio_chip*, i32)* @bgpio_request, i32 (%struct.gpio_chip*, i32)** %request, align 8, !dbg !4153
  %21 = load i64, i64* %flags.addr, align 8, !dbg !4154
  %and = and i64 %21, 1, !dbg !4155
  %tobool = icmp ne i64 %and, 0, !dbg !4156
  %lnot = xor i1 %tobool, true, !dbg !4156
  %lnot10 = xor i1 %lnot, true, !dbg !4157
  %22 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4158
  %be_bits = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %22, i32 0, i32 24, !dbg !4159
  %frombool = zext i1 %lnot10 to i8, !dbg !4160
  store i8 %frombool, i8* %be_bits, align 8, !dbg !4160
  %23 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4161
  %24 = load i8*, i8** %dat.addr, align 8, !dbg !4162
  %25 = load i8*, i8** %set.addr, align 8, !dbg !4163
  %26 = load i8*, i8** %clr.addr, align 8, !dbg !4164
  %27 = load i64, i64* %flags.addr, align 8, !dbg !4165
  %call11 = call i32 @bgpio_setup_io(%struct.gpio_chip* %23, i8* %24, i8* %25, i8* %26, i64 %27) #10, !dbg !4166
  store i32 %call11, i32* %ret, align 4, !dbg !4167
  %28 = load i32, i32* %ret, align 4, !dbg !4168
  %tobool12 = icmp ne i32 %28, 0, !dbg !4168
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !4170

if.then13:                                        ; preds = %do.end
  %29 = load i32, i32* %ret, align 4, !dbg !4171
  store i32 %29, i32* %retval, align 4, !dbg !4172
  br label %return, !dbg !4172

if.end14:                                         ; preds = %do.end
  %30 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4173
  %31 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4174
  %32 = load i64, i64* %flags.addr, align 8, !dbg !4175
  %and15 = and i64 %32, 8, !dbg !4176
  %tobool16 = icmp ne i64 %and15, 0, !dbg !4175
  %call17 = call i32 @bgpio_setup_accessors(%struct.device* %30, %struct.gpio_chip* %31, i1 zeroext %tobool16) #10, !dbg !4177
  store i32 %call17, i32* %ret, align 4, !dbg !4178
  %33 = load i32, i32* %ret, align 4, !dbg !4179
  %tobool18 = icmp ne i32 %33, 0, !dbg !4179
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !4181

if.then19:                                        ; preds = %if.end14
  %34 = load i32, i32* %ret, align 4, !dbg !4182
  store i32 %34, i32* %retval, align 4, !dbg !4183
  br label %return, !dbg !4183

if.end20:                                         ; preds = %if.end14
  %35 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4184
  %36 = load i8*, i8** %dirout.addr, align 8, !dbg !4185
  %37 = load i8*, i8** %dirin.addr, align 8, !dbg !4186
  %38 = load i64, i64* %flags.addr, align 8, !dbg !4187
  %call21 = call i32 @bgpio_setup_direction(%struct.gpio_chip* %35, i8* %36, i8* %37, i64 %38) #10, !dbg !4188
  store i32 %call21, i32* %ret, align 4, !dbg !4189
  %39 = load i32, i32* %ret, align 4, !dbg !4190
  %tobool22 = icmp ne i32 %39, 0, !dbg !4190
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !4192

if.then23:                                        ; preds = %if.end20
  %40 = load i32, i32* %ret, align 4, !dbg !4193
  store i32 %40, i32* %retval, align 4, !dbg !4194
  br label %return, !dbg !4194

if.end24:                                         ; preds = %if.end20
  %41 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4195
  %read_reg = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %41, i32 0, i32 22, !dbg !4196
  %42 = load i64 (i8*)*, i64 (i8*)** %read_reg, align 8, !dbg !4196
  %43 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4197
  %reg_dat = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %43, i32 0, i32 25, !dbg !4198
  %44 = load i8*, i8** %reg_dat, align 8, !dbg !4198
  %call25 = call i64 %42(i8* %44) #10, !dbg !4195
  %45 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4199
  %bgpio_data = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %45, i32 0, i32 33, !dbg !4200
  store i64 %call25, i64* %bgpio_data, align 8, !dbg !4201
  %46 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4202
  %set26 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %46, i32 0, i32 11, !dbg !4204
  %47 = load void (%struct.gpio_chip*, i32, i32)*, void (%struct.gpio_chip*, i32, i32)** %set26, align 8, !dbg !4204
  %cmp27 = icmp eq void (%struct.gpio_chip*, i32, i32)* %47, @bgpio_set_set, !dbg !4205
  br i1 %cmp27, label %land.lhs.true, label %if.end35, !dbg !4206

land.lhs.true:                                    ; preds = %if.end24
  %48 = load i64, i64* %flags.addr, align 8, !dbg !4207
  %and29 = and i64 %48, 2, !dbg !4208
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4208
  br i1 %tobool30, label %if.end35, label %if.then31, !dbg !4209

if.then31:                                        ; preds = %land.lhs.true
  %49 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4210
  %read_reg32 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %49, i32 0, i32 22, !dbg !4211
  %50 = load i64 (i8*)*, i64 (i8*)** %read_reg32, align 8, !dbg !4211
  %51 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4212
  %reg_set = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %51, i32 0, i32 26, !dbg !4213
  %52 = load i8*, i8** %reg_set, align 8, !dbg !4213
  %call33 = call i64 %50(i8* %52) #10, !dbg !4210
  %53 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4214
  %bgpio_data34 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %53, i32 0, i32 33, !dbg !4215
  store i64 %call33, i64* %bgpio_data34, align 8, !dbg !4216
  br label %if.end35, !dbg !4214

if.end35:                                         ; preds = %if.then31, %land.lhs.true, %if.end24
  %54 = load i64, i64* %flags.addr, align 8, !dbg !4217
  %and36 = and i64 %54, 4, !dbg !4219
  %tobool37 = icmp ne i64 %and36, 0, !dbg !4219
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !4220

if.then38:                                        ; preds = %if.end35
  %55 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4221
  %bgpio_dir_unreadable = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %55, i32 0, i32 30, !dbg !4222
  store i8 1, i8* %bgpio_dir_unreadable, align 8, !dbg !4223
  br label %if.end39, !dbg !4221

if.end39:                                         ; preds = %if.then38, %if.end35
  %56 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4224
  %reg_dir_out = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %56, i32 0, i32 28, !dbg !4226
  %57 = load i8*, i8** %reg_dir_out, align 8, !dbg !4226
  %tobool40 = icmp ne i8* %57, null, !dbg !4224
  br i1 %tobool40, label %land.lhs.true42, label %lor.lhs.false, !dbg !4227

lor.lhs.false:                                    ; preds = %if.end39
  %58 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4228
  %reg_dir_in = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %58, i32 0, i32 29, !dbg !4229
  %59 = load i8*, i8** %reg_dir_in, align 8, !dbg !4229
  %tobool41 = icmp ne i8* %59, null, !dbg !4228
  br i1 %tobool41, label %land.lhs.true42, label %if.end71, !dbg !4230

land.lhs.true42:                                  ; preds = %lor.lhs.false, %if.end39
  %60 = load i64, i64* %flags.addr, align 8, !dbg !4231
  %and43 = and i64 %60, 4, !dbg !4232
  %tobool44 = icmp ne i64 %and43, 0, !dbg !4232
  br i1 %tobool44, label %if.end71, label %if.then45, !dbg !4233

if.then45:                                        ; preds = %land.lhs.true42
  %61 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4234
  %reg_dir_out46 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %61, i32 0, i32 28, !dbg !4237
  %62 = load i8*, i8** %reg_dir_out46, align 8, !dbg !4237
  %tobool47 = icmp ne i8* %62, null, !dbg !4234
  br i1 %tobool47, label %if.then48, label %if.else, !dbg !4238

if.then48:                                        ; preds = %if.then45
  %63 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4239
  %read_reg49 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %63, i32 0, i32 22, !dbg !4240
  %64 = load i64 (i8*)*, i64 (i8*)** %read_reg49, align 8, !dbg !4240
  %65 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4241
  %reg_dir_out50 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %65, i32 0, i32 28, !dbg !4242
  %66 = load i8*, i8** %reg_dir_out50, align 8, !dbg !4242
  %call51 = call i64 %64(i8* %66) #10, !dbg !4239
  %67 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4243
  %bgpio_dir = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %67, i32 0, i32 34, !dbg !4244
  store i64 %call51, i64* %bgpio_dir, align 8, !dbg !4245
  br label %if.end60, !dbg !4243

if.else:                                          ; preds = %if.then45
  %68 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4246
  %reg_dir_in52 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %68, i32 0, i32 29, !dbg !4248
  %69 = load i8*, i8** %reg_dir_in52, align 8, !dbg !4248
  %tobool53 = icmp ne i8* %69, null, !dbg !4246
  br i1 %tobool53, label %if.then54, label %if.end59, !dbg !4249

if.then54:                                        ; preds = %if.else
  %70 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4250
  %read_reg55 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %70, i32 0, i32 22, !dbg !4251
  %71 = load i64 (i8*)*, i64 (i8*)** %read_reg55, align 8, !dbg !4251
  %72 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4252
  %reg_dir_in56 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %72, i32 0, i32 29, !dbg !4253
  %73 = load i8*, i8** %reg_dir_in56, align 8, !dbg !4253
  %call57 = call i64 %71(i8* %73) #10, !dbg !4250
  %neg = xor i64 %call57, -1, !dbg !4254
  %74 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4255
  %bgpio_dir58 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %74, i32 0, i32 34, !dbg !4256
  store i64 %neg, i64* %bgpio_dir58, align 8, !dbg !4257
  br label %if.end59, !dbg !4255

if.end59:                                         ; preds = %if.then54, %if.else
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then48
  %75 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4258
  %reg_dir_out61 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %75, i32 0, i32 28, !dbg !4260
  %76 = load i8*, i8** %reg_dir_out61, align 8, !dbg !4260
  %tobool62 = icmp ne i8* %76, null, !dbg !4258
  br i1 %tobool62, label %land.lhs.true63, label %if.end70, !dbg !4261

land.lhs.true63:                                  ; preds = %if.end60
  %77 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4262
  %reg_dir_in64 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %77, i32 0, i32 29, !dbg !4263
  %78 = load i8*, i8** %reg_dir_in64, align 8, !dbg !4263
  %tobool65 = icmp ne i8* %78, null, !dbg !4262
  br i1 %tobool65, label %if.then66, label %if.end70, !dbg !4264

if.then66:                                        ; preds = %land.lhs.true63
  %79 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4265
  %write_reg = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %79, i32 0, i32 23, !dbg !4266
  %80 = load void (i8*, i64)*, void (i8*, i64)** %write_reg, align 8, !dbg !4266
  %81 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4267
  %reg_dir_in67 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %81, i32 0, i32 29, !dbg !4268
  %82 = load i8*, i8** %reg_dir_in67, align 8, !dbg !4268
  %83 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4269
  %bgpio_dir68 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %83, i32 0, i32 34, !dbg !4270
  %84 = load i64, i64* %bgpio_dir68, align 8, !dbg !4270
  %neg69 = xor i64 %84, -1, !dbg !4271
  call void %80(i8* %82, i64 %neg69) #10, !dbg !4265
  br label %if.end70, !dbg !4265

if.end70:                                         ; preds = %if.then66, %land.lhs.true63, %if.end60
  br label %if.end71, !dbg !4272

if.end71:                                         ; preds = %if.end70, %land.lhs.true42, %lor.lhs.false
  %85 = load i32, i32* %ret, align 4, !dbg !4273
  store i32 %85, i32* %retval, align 4, !dbg !4274
  br label %return, !dbg !4274

return:                                           ; preds = %if.end71, %if.then23, %if.then19, %if.then13, %if.then3, %if.then
  %86 = load i32, i32* %retval, align 4, !dbg !4275
  ret i32 %86, !dbg !4275
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal zeroext i1 @is_power_of_2(i64 %n) #2 !dbg !4276 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4280, metadata !DIExpression()), !dbg !4281
  %0 = load i64, i64* %n.addr, align 8, !dbg !4282
  %cmp = icmp ne i64 %0, 0, !dbg !4283
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4284

land.rhs:                                         ; preds = %entry
  %1 = load i64, i64* %n.addr, align 8, !dbg !4285
  %2 = load i64, i64* %n.addr, align 8, !dbg !4286
  %sub = sub i64 %2, 1, !dbg !4287
  %and = and i64 %1, %sub, !dbg !4288
  %cmp1 = icmp eq i64 %and, 0, !dbg !4289
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !4290
  ret i1 %3, !dbg !4291
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !4292 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4295, metadata !DIExpression()), !dbg !4296
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4297
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !4299
  %1 = load i8*, i8** %init_name, align 8, !dbg !4299
  %tobool = icmp ne i8* %1, null, !dbg !4297
  br i1 %tobool, label %if.then, label %if.end, !dbg !4300

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4301
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !4302
  %3 = load i8*, i8** %init_name1, align 8, !dbg !4302
  store i8* %3, i8** %retval, align 8, !dbg !4303
  br label %return, !dbg !4303

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4304
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !4305
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #10, !dbg !4306
  store i8* %call, i8** %retval, align 8, !dbg !4307
  br label %return, !dbg !4307

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !4308
  ret i8* %5, !dbg !4308
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bgpio_request(%struct.gpio_chip* %chip, i32 %gpio_pin) #0 !dbg !4309 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.gpio_chip*, align 8
  %gpio_pin.addr = alloca i32, align 4
  store %struct.gpio_chip* %chip, %struct.gpio_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %chip.addr, metadata !4310, metadata !DIExpression()), !dbg !4311
  store i32 %gpio_pin, i32* %gpio_pin.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpio_pin.addr, metadata !4312, metadata !DIExpression()), !dbg !4313
  %0 = load i32, i32* %gpio_pin.addr, align 4, !dbg !4314
  %1 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !4316
  %ngpio = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %1, i32 0, i32 19, !dbg !4317
  %2 = load i16, i16* %ngpio, align 4, !dbg !4317
  %conv = zext i16 %2 to i32, !dbg !4316
  %cmp = icmp ult i32 %0, %conv, !dbg !4318
  br i1 %cmp, label %if.then, label %if.end, !dbg !4319

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4320
  br label %return, !dbg !4320

if.end:                                           ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4321
  br label %return, !dbg !4321

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !4322
  ret i32 %3, !dbg !4322
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bgpio_setup_io(%struct.gpio_chip* %gc, i8* %dat, i8* %set, i8* %clr, i64 %flags) #0 !dbg !4323 {
entry:
  %retval = alloca i32, align 4
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %dat.addr = alloca i8*, align 8
  %set.addr = alloca i8*, align 8
  %clr.addr = alloca i8*, align 8
  %flags.addr = alloca i64, align 8
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !4326, metadata !DIExpression()), !dbg !4327
  store i8* %dat, i8** %dat.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dat.addr, metadata !4328, metadata !DIExpression()), !dbg !4329
  store i8* %set, i8** %set.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %set.addr, metadata !4330, metadata !DIExpression()), !dbg !4331
  store i8* %clr, i8** %clr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %clr.addr, metadata !4332, metadata !DIExpression()), !dbg !4333
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4334, metadata !DIExpression()), !dbg !4335
  %0 = load i8*, i8** %dat.addr, align 8, !dbg !4336
  %1 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4337
  %reg_dat = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %1, i32 0, i32 25, !dbg !4338
  store i8* %0, i8** %reg_dat, align 8, !dbg !4339
  %2 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4340
  %reg_dat1 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %2, i32 0, i32 25, !dbg !4342
  %3 = load i8*, i8** %reg_dat1, align 8, !dbg !4342
  %tobool = icmp ne i8* %3, null, !dbg !4340
  br i1 %tobool, label %if.end, label %if.then, !dbg !4343

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4344
  br label %return, !dbg !4344

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %set.addr, align 8, !dbg !4345
  %tobool2 = icmp ne i8* %4, null, !dbg !4345
  br i1 %tobool2, label %land.lhs.true, label %if.else, !dbg !4347

land.lhs.true:                                    ; preds = %if.end
  %5 = load i8*, i8** %clr.addr, align 8, !dbg !4348
  %tobool3 = icmp ne i8* %5, null, !dbg !4348
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !4349

if.then4:                                         ; preds = %land.lhs.true
  %6 = load i8*, i8** %set.addr, align 8, !dbg !4350
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4352
  %reg_set = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %7, i32 0, i32 26, !dbg !4353
  store i8* %6, i8** %reg_set, align 8, !dbg !4354
  %8 = load i8*, i8** %clr.addr, align 8, !dbg !4355
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4356
  %reg_clr = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %9, i32 0, i32 27, !dbg !4357
  store i8* %8, i8** %reg_clr, align 8, !dbg !4358
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4359
  %set5 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %10, i32 0, i32 11, !dbg !4360
  store void (%struct.gpio_chip*, i32, i32)* @bgpio_set_with_clear, void (%struct.gpio_chip*, i32, i32)** %set5, align 8, !dbg !4361
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4362
  %set_multiple = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %11, i32 0, i32 12, !dbg !4363
  store void (%struct.gpio_chip*, i64*, i64*)* @bgpio_set_multiple_with_clear, void (%struct.gpio_chip*, i64*, i64*)** %set_multiple, align 8, !dbg !4364
  br label %if.end23, !dbg !4365

if.else:                                          ; preds = %land.lhs.true, %if.end
  %12 = load i8*, i8** %set.addr, align 8, !dbg !4366
  %tobool6 = icmp ne i8* %12, null, !dbg !4366
  br i1 %tobool6, label %land.lhs.true7, label %if.else13, !dbg !4368

land.lhs.true7:                                   ; preds = %if.else
  %13 = load i8*, i8** %clr.addr, align 8, !dbg !4369
  %tobool8 = icmp ne i8* %13, null, !dbg !4369
  br i1 %tobool8, label %if.else13, label %if.then9, !dbg !4370

if.then9:                                         ; preds = %land.lhs.true7
  %14 = load i8*, i8** %set.addr, align 8, !dbg !4371
  %15 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4373
  %reg_set10 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %15, i32 0, i32 26, !dbg !4374
  store i8* %14, i8** %reg_set10, align 8, !dbg !4375
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4376
  %set11 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %16, i32 0, i32 11, !dbg !4377
  store void (%struct.gpio_chip*, i32, i32)* @bgpio_set_set, void (%struct.gpio_chip*, i32, i32)** %set11, align 8, !dbg !4378
  %17 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4379
  %set_multiple12 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %17, i32 0, i32 12, !dbg !4380
  store void (%struct.gpio_chip*, i64*, i64*)* @bgpio_set_multiple_set, void (%struct.gpio_chip*, i64*, i64*)** %set_multiple12, align 8, !dbg !4381
  br label %if.end22, !dbg !4382

if.else13:                                        ; preds = %land.lhs.true7, %if.else
  %18 = load i64, i64* %flags.addr, align 8, !dbg !4383
  %and = and i64 %18, 32, !dbg !4385
  %tobool14 = icmp ne i64 %and, 0, !dbg !4385
  br i1 %tobool14, label %if.then15, label %if.else18, !dbg !4386

if.then15:                                        ; preds = %if.else13
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4387
  %set16 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 11, !dbg !4389
  store void (%struct.gpio_chip*, i32, i32)* @bgpio_set_none, void (%struct.gpio_chip*, i32, i32)** %set16, align 8, !dbg !4390
  %20 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4391
  %set_multiple17 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %20, i32 0, i32 12, !dbg !4392
  store void (%struct.gpio_chip*, i64*, i64*)* null, void (%struct.gpio_chip*, i64*, i64*)** %set_multiple17, align 8, !dbg !4393
  br label %if.end21, !dbg !4394

if.else18:                                        ; preds = %if.else13
  %21 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4395
  %set19 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %21, i32 0, i32 11, !dbg !4397
  store void (%struct.gpio_chip*, i32, i32)* @bgpio_set, void (%struct.gpio_chip*, i32, i32)** %set19, align 8, !dbg !4398
  %22 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4399
  %set_multiple20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %22, i32 0, i32 12, !dbg !4400
  store void (%struct.gpio_chip*, i64*, i64*)* @bgpio_set_multiple, void (%struct.gpio_chip*, i64*, i64*)** %set_multiple20, align 8, !dbg !4401
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.then15
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then9
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then4
  %23 = load i64, i64* %flags.addr, align 8, !dbg !4402
  %and24 = and i64 %23, 2, !dbg !4404
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4404
  br i1 %tobool25, label %if.else33, label %land.lhs.true26, !dbg !4405

land.lhs.true26:                                  ; preds = %if.end23
  %24 = load i64, i64* %flags.addr, align 8, !dbg !4406
  %and27 = and i64 %24, 16, !dbg !4407
  %tobool28 = icmp ne i64 %and27, 0, !dbg !4407
  br i1 %tobool28, label %if.then29, label %if.else33, !dbg !4408

if.then29:                                        ; preds = %land.lhs.true26
  %25 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4409
  %get = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %25, i32 0, i32 9, !dbg !4411
  store i32 (%struct.gpio_chip*, i32)* @bgpio_get_set, i32 (%struct.gpio_chip*, i32)** %get, align 8, !dbg !4412
  %26 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4413
  %be_bits = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %26, i32 0, i32 24, !dbg !4415
  %27 = load i8, i8* %be_bits, align 8, !dbg !4415
  %tobool30 = trunc i8 %27 to i1, !dbg !4415
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !4416

if.then31:                                        ; preds = %if.then29
  %28 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4417
  %get_multiple = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %28, i32 0, i32 10, !dbg !4418
  store i32 (%struct.gpio_chip*, i64*, i64*)* @bgpio_get_set_multiple, i32 (%struct.gpio_chip*, i64*, i64*)** %get_multiple, align 8, !dbg !4419
  br label %if.end32, !dbg !4417

if.end32:                                         ; preds = %if.then31, %if.then29
  br label %if.end42, !dbg !4420

if.else33:                                        ; preds = %land.lhs.true26, %if.end23
  %29 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4421
  %get34 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %29, i32 0, i32 9, !dbg !4423
  store i32 (%struct.gpio_chip*, i32)* @bgpio_get, i32 (%struct.gpio_chip*, i32)** %get34, align 8, !dbg !4424
  %30 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4425
  %be_bits35 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %30, i32 0, i32 24, !dbg !4427
  %31 = load i8, i8* %be_bits35, align 8, !dbg !4427
  %tobool36 = trunc i8 %31 to i1, !dbg !4427
  br i1 %tobool36, label %if.then37, label %if.else39, !dbg !4428

if.then37:                                        ; preds = %if.else33
  %32 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4429
  %get_multiple38 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %32, i32 0, i32 10, !dbg !4430
  store i32 (%struct.gpio_chip*, i64*, i64*)* @bgpio_get_multiple_be, i32 (%struct.gpio_chip*, i64*, i64*)** %get_multiple38, align 8, !dbg !4431
  br label %if.end41, !dbg !4429

if.else39:                                        ; preds = %if.else33
  %33 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4432
  %get_multiple40 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %33, i32 0, i32 10, !dbg !4433
  store i32 (%struct.gpio_chip*, i64*, i64*)* @bgpio_get_multiple, i32 (%struct.gpio_chip*, i64*, i64*)** %get_multiple40, align 8, !dbg !4434
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %if.then37
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end32
  store i32 0, i32* %retval, align 4, !dbg !4435
  br label %return, !dbg !4435

return:                                           ; preds = %if.end42, %if.then
  %34 = load i32, i32* %retval, align 4, !dbg !4436
  ret i32 %34, !dbg !4436
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bgpio_setup_accessors(%struct.device* %dev, %struct.gpio_chip* %gc, i1 zeroext %byte_be) #0 !dbg !4437 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %byte_be.addr = alloca i8, align 1
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4440, metadata !DIExpression()), !dbg !4441
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !4442, metadata !DIExpression()), !dbg !4443
  %frombool = zext i1 %byte_be to i8
  store i8 %frombool, i8* %byte_be.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %byte_be.addr, metadata !4444, metadata !DIExpression()), !dbg !4445
  %0 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4446
  %bgpio_bits = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %0, i32 0, i32 31, !dbg !4447
  %1 = load i32, i32* %bgpio_bits, align 4, !dbg !4447
  switch i32 %1, label %sw.default [
    i32 8, label %sw.bb
    i32 16, label %sw.bb1
    i32 32, label %sw.bb6
    i32 64, label %sw.bb15
  ], !dbg !4448

sw.bb:                                            ; preds = %entry
  %2 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4449
  %read_reg = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %2, i32 0, i32 22, !dbg !4451
  store i64 (i8*)* @bgpio_read8, i64 (i8*)** %read_reg, align 8, !dbg !4452
  %3 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4453
  %write_reg = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %3, i32 0, i32 23, !dbg !4454
  store void (i8*, i64)* @bgpio_write8, void (i8*, i64)** %write_reg, align 8, !dbg !4455
  br label %sw.epilog, !dbg !4456

sw.bb1:                                           ; preds = %entry
  %4 = load i8, i8* %byte_be.addr, align 1, !dbg !4457
  %tobool = trunc i8 %4 to i1, !dbg !4457
  br i1 %tobool, label %if.then, label %if.else, !dbg !4459

if.then:                                          ; preds = %sw.bb1
  %5 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4460
  %read_reg2 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %5, i32 0, i32 22, !dbg !4462
  store i64 (i8*)* @bgpio_read16be, i64 (i8*)** %read_reg2, align 8, !dbg !4463
  %6 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4464
  %write_reg3 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %6, i32 0, i32 23, !dbg !4465
  store void (i8*, i64)* @bgpio_write16be, void (i8*, i64)** %write_reg3, align 8, !dbg !4466
  br label %if.end, !dbg !4467

if.else:                                          ; preds = %sw.bb1
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4468
  %read_reg4 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %7, i32 0, i32 22, !dbg !4470
  store i64 (i8*)* @bgpio_read16, i64 (i8*)** %read_reg4, align 8, !dbg !4471
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4472
  %write_reg5 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %8, i32 0, i32 23, !dbg !4473
  store void (i8*, i64)* @bgpio_write16, void (i8*, i64)** %write_reg5, align 8, !dbg !4474
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog, !dbg !4475

sw.bb6:                                           ; preds = %entry
  %9 = load i8, i8* %byte_be.addr, align 1, !dbg !4476
  %tobool7 = trunc i8 %9 to i1, !dbg !4476
  br i1 %tobool7, label %if.then8, label %if.else11, !dbg !4478

if.then8:                                         ; preds = %sw.bb6
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4479
  %read_reg9 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %10, i32 0, i32 22, !dbg !4481
  store i64 (i8*)* @bgpio_read32be, i64 (i8*)** %read_reg9, align 8, !dbg !4482
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4483
  %write_reg10 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %11, i32 0, i32 23, !dbg !4484
  store void (i8*, i64)* @bgpio_write32be, void (i8*, i64)** %write_reg10, align 8, !dbg !4485
  br label %if.end14, !dbg !4486

if.else11:                                        ; preds = %sw.bb6
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4487
  %read_reg12 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %12, i32 0, i32 22, !dbg !4489
  store i64 (i8*)* @bgpio_read32, i64 (i8*)** %read_reg12, align 8, !dbg !4490
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4491
  %write_reg13 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %13, i32 0, i32 23, !dbg !4492
  store void (i8*, i64)* @bgpio_write32, void (i8*, i64)** %write_reg13, align 8, !dbg !4493
  br label %if.end14

if.end14:                                         ; preds = %if.else11, %if.then8
  br label %sw.epilog, !dbg !4494

sw.bb15:                                          ; preds = %entry
  %14 = load i8, i8* %byte_be.addr, align 1, !dbg !4495
  %tobool16 = trunc i8 %14 to i1, !dbg !4495
  br i1 %tobool16, label %if.then17, label %if.else18, !dbg !4497

if.then17:                                        ; preds = %sw.bb15
  %15 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4498
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0)) #11, !dbg !4498
  store i32 -22, i32* %retval, align 4, !dbg !4500
  br label %return, !dbg !4500

if.else18:                                        ; preds = %sw.bb15
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4501
  %read_reg19 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %16, i32 0, i32 22, !dbg !4503
  store i64 (i8*)* @bgpio_read64, i64 (i8*)** %read_reg19, align 8, !dbg !4504
  %17 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4505
  %write_reg20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %17, i32 0, i32 23, !dbg !4506
  store void (i8*, i64)* @bgpio_write64, void (i8*, i64)** %write_reg20, align 8, !dbg !4507
  br label %if.end21

if.end21:                                         ; preds = %if.else18
  br label %sw.epilog, !dbg !4508

sw.default:                                       ; preds = %entry
  %18 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4509
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4509
  %bgpio_bits22 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 31, !dbg !4509
  %20 = load i32, i32* %bgpio_bits22, align 4, !dbg !4509
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %20) #11, !dbg !4509
  store i32 -22, i32* %retval, align 4, !dbg !4510
  br label %return, !dbg !4510

sw.epilog:                                        ; preds = %if.end21, %if.end14, %if.end, %sw.bb
  store i32 0, i32* %retval, align 4, !dbg !4511
  br label %return, !dbg !4511

return:                                           ; preds = %sw.epilog, %sw.default, %if.then17
  %21 = load i32, i32* %retval, align 4, !dbg !4512
  ret i32 %21, !dbg !4512
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bgpio_setup_direction(%struct.gpio_chip* %gc, i8* %dirout, i8* %dirin, i64 %flags) #0 !dbg !4513 {
entry:
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %dirout.addr = alloca i8*, align 8
  %dirin.addr = alloca i8*, align 8
  %flags.addr = alloca i64, align 8
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !4516, metadata !DIExpression()), !dbg !4517
  store i8* %dirout, i8** %dirout.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dirout.addr, metadata !4518, metadata !DIExpression()), !dbg !4519
  store i8* %dirin, i8** %dirin.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dirin.addr, metadata !4520, metadata !DIExpression()), !dbg !4521
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4522, metadata !DIExpression()), !dbg !4523
  %0 = load i8*, i8** %dirout.addr, align 8, !dbg !4524
  %tobool = icmp ne i8* %0, null, !dbg !4524
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !4526

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %dirin.addr, align 8, !dbg !4527
  %tobool1 = icmp ne i8* %1, null, !dbg !4527
  br i1 %tobool1, label %if.then, label %if.else5, !dbg !4528

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i8*, i8** %dirout.addr, align 8, !dbg !4529
  %3 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4531
  %reg_dir_out = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %3, i32 0, i32 28, !dbg !4532
  store i8* %2, i8** %reg_dir_out, align 8, !dbg !4533
  %4 = load i8*, i8** %dirin.addr, align 8, !dbg !4534
  %5 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4535
  %reg_dir_in = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %5, i32 0, i32 29, !dbg !4536
  store i8* %4, i8** %reg_dir_in, align 8, !dbg !4537
  %6 = load i64, i64* %flags.addr, align 8, !dbg !4538
  %and = and i64 %6, 64, !dbg !4540
  %tobool2 = icmp ne i64 %and, 0, !dbg !4540
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !4541

if.then3:                                         ; preds = %if.then
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4542
  %direction_output = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %7, i32 0, i32 8, !dbg !4543
  store i32 (%struct.gpio_chip*, i32, i32)* @bgpio_dir_out_dir_first, i32 (%struct.gpio_chip*, i32, i32)** %direction_output, align 8, !dbg !4544
  br label %if.end, !dbg !4542

if.else:                                          ; preds = %if.then
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4545
  %direction_output4 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %8, i32 0, i32 8, !dbg !4546
  store i32 (%struct.gpio_chip*, i32, i32)* @bgpio_dir_out_val_first, i32 (%struct.gpio_chip*, i32, i32)** %direction_output4, align 8, !dbg !4547
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4548
  %direction_input = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %9, i32 0, i32 7, !dbg !4549
  store i32 (%struct.gpio_chip*, i32)* @bgpio_dir_in, i32 (%struct.gpio_chip*, i32)** %direction_input, align 8, !dbg !4550
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4551
  %get_direction = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %10, i32 0, i32 6, !dbg !4552
  store i32 (%struct.gpio_chip*, i32)* @bgpio_get_dir, i32 (%struct.gpio_chip*, i32)** %get_direction, align 8, !dbg !4553
  br label %if.end14, !dbg !4554

if.else5:                                         ; preds = %lor.lhs.false
  %11 = load i64, i64* %flags.addr, align 8, !dbg !4555
  %and6 = and i64 %11, 32, !dbg !4558
  %tobool7 = icmp ne i64 %and6, 0, !dbg !4558
  br i1 %tobool7, label %if.then8, label %if.else10, !dbg !4559

if.then8:                                         ; preds = %if.else5
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4560
  %direction_output9 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %12, i32 0, i32 8, !dbg !4561
  store i32 (%struct.gpio_chip*, i32, i32)* @bgpio_dir_out_err, i32 (%struct.gpio_chip*, i32, i32)** %direction_output9, align 8, !dbg !4562
  br label %if.end12, !dbg !4560

if.else10:                                        ; preds = %if.else5
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4563
  %direction_output11 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %13, i32 0, i32 8, !dbg !4564
  store i32 (%struct.gpio_chip*, i32, i32)* @bgpio_simple_dir_out, i32 (%struct.gpio_chip*, i32, i32)** %direction_output11, align 8, !dbg !4565
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.then8
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4566
  %direction_input13 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %14, i32 0, i32 7, !dbg !4567
  store i32 (%struct.gpio_chip*, i32)* @bgpio_simple_dir_in, i32 (%struct.gpio_chip*, i32)** %direction_input13, align 8, !dbg !4568
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %if.end
  ret i32 0, !dbg !4569
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bgpio_set_set(%struct.gpio_chip* %gc, i32 %gpio, i32 %val) #0 !dbg !4570 {
entry:
  %lock.addr.i23 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i23, metadata !4571, metadata !DIExpression()), !dbg !4575
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4577, metadata !DIExpression()), !dbg !4578
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4084, metadata !DIExpression()), !dbg !4579
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %gpio.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %mask = alloca i64, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !4586, metadata !DIExpression()), !dbg !4587
  store i32 %gpio, i32* %gpio.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpio.addr, metadata !4588, metadata !DIExpression()), !dbg !4589
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4590, metadata !DIExpression()), !dbg !4591
  call void @llvm.dbg.declare(metadata i64* %mask, metadata !4592, metadata !DIExpression()), !dbg !4593
  %0 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4594
  %1 = load i32, i32* %gpio.addr, align 4, !dbg !4595
  %call = call i64 @bgpio_line2mask(%struct.gpio_chip* %0, i32 %1) #10, !dbg !4596
  store i64 %call, i64* %mask, align 8, !dbg !4593
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4597, metadata !DIExpression()), !dbg !4598
  br label %do.body, !dbg !4599

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4600

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4601, metadata !DIExpression()), !dbg !4603
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4604, metadata !DIExpression()), !dbg !4603
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4603
  %conv = zext i1 %cmp to i32, !dbg !4603
  store i32 1, i32* %tmp, align 4, !dbg !4603
  %2 = load i32, i32* %tmp, align 4, !dbg !4603
  br label %do.body2, !dbg !4605

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4606

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4607

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4609, metadata !DIExpression()), !dbg !4612
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4613, metadata !DIExpression()), !dbg !4612
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4612
  %conv8 = zext i1 %cmp7 to i32, !dbg !4612
  store i32 1, i32* %tmp9, align 4, !dbg !4612
  %3 = load i32, i32* %tmp9, align 4, !dbg !4612
  %call10 = call i64 @arch_local_irq_save() #10, !dbg !4614
  store i64 %call10, i64* %flags, align 8, !dbg !4614
  br label %do.end, !dbg !4614

do.end:                                           ; preds = %do.body4
  br label %do.end11, !dbg !4607

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !4606

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4615, !srcloc !4616
  br label %do.body13, !dbg !4615

do.body13:                                        ; preds = %do.body12
  %4 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4617
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %4, i32 0, i32 32, !dbg !4617
  store %struct.spinlock* %bgpio_lock, %struct.spinlock** %lock.addr.i, align 8
  %5 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4618
  %6 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %5, i32 0, i32 0, !dbg !4619
  %rlock.i = bitcast %union.anon.1* %6 to %struct.raw_spinlock*, !dbg !4619
  br label %do.end15, !dbg !4617

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !4615

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4606

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4605

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !4600

do.end19:                                         ; preds = %do.end18
  %7 = load i32, i32* %val.addr, align 4, !dbg !4620
  %tobool = icmp ne i32 %7, 0, !dbg !4620
  br i1 %tobool, label %if.then, label %if.else, !dbg !4622

if.then:                                          ; preds = %do.end19
  %8 = load i64, i64* %mask, align 8, !dbg !4623
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4624
  %bgpio_data = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %9, i32 0, i32 33, !dbg !4625
  %10 = load i64, i64* %bgpio_data, align 8, !dbg !4626
  %or = or i64 %10, %8, !dbg !4626
  store i64 %or, i64* %bgpio_data, align 8, !dbg !4626
  br label %if.end, !dbg !4624

if.else:                                          ; preds = %do.end19
  %11 = load i64, i64* %mask, align 8, !dbg !4627
  %neg = xor i64 %11, -1, !dbg !4628
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4629
  %bgpio_data20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %12, i32 0, i32 33, !dbg !4630
  %13 = load i64, i64* %bgpio_data20, align 8, !dbg !4631
  %and = and i64 %13, %neg, !dbg !4631
  store i64 %and, i64* %bgpio_data20, align 8, !dbg !4631
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4632
  %write_reg = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %14, i32 0, i32 23, !dbg !4633
  %15 = load void (i8*, i64)*, void (i8*, i64)** %write_reg, align 8, !dbg !4633
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4634
  %reg_set = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %16, i32 0, i32 26, !dbg !4635
  %17 = load i8*, i8** %reg_set, align 8, !dbg !4635
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4636
  %bgpio_data21 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %18, i32 0, i32 33, !dbg !4637
  %19 = load i64, i64* %bgpio_data21, align 8, !dbg !4637
  call void %15(i8* %17, i64 %19) #10, !dbg !4632
  %20 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4638
  %bgpio_lock22 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %20, i32 0, i32 32, !dbg !4639
  %21 = load i64, i64* %flags, align 8, !dbg !4640
  store %struct.spinlock* %bgpio_lock22, %struct.spinlock** %lock.addr.i23, align 8
  store i64 %21, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !203, metadata !4641, metadata !DIExpression()) #7, !dbg !4644
  call void @llvm.dbg.declare(metadata !203, metadata !4645, metadata !DIExpression()) #7, !dbg !4644
  store i32 1, i32* %tmp.i, align 4, !dbg !4644
  %22 = load i32, i32* %tmp.i, align 4, !dbg !4644
  call void @llvm.dbg.declare(metadata !203, metadata !4646, metadata !DIExpression()) #7, !dbg !4651
  call void @llvm.dbg.declare(metadata !203, metadata !4652, metadata !DIExpression()) #7, !dbg !4651
  store i32 1, i32* %tmp8.i, align 4, !dbg !4651
  %23 = load i32, i32* %tmp8.i, align 4, !dbg !4651
  %24 = load i64, i64* %flags.addr.i, align 8, !dbg !4653
  call void @arch_local_irq_restore(i64 %24) #12, !dbg !4653
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4654, !srcloc !4656
  %25 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i23, align 8, !dbg !4657
  %26 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %25, i32 0, i32 0, !dbg !4657
  %rlock.i24 = bitcast %union.anon.1* %26 to %struct.raw_spinlock*, !dbg !4657
  ret void, !dbg !4659
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !4660 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4665, metadata !DIExpression()), !dbg !4666
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4667
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !4668
  %1 = load i8*, i8** %name, align 8, !dbg !4668
  ret i8* %1, !dbg !4669
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bgpio_set_with_clear(%struct.gpio_chip* %gc, i32 %gpio, i32 %val) #0 !dbg !4670 {
entry:
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %gpio.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %mask = alloca i64, align 8
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !4671, metadata !DIExpression()), !dbg !4672
  store i32 %gpio, i32* %gpio.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpio.addr, metadata !4673, metadata !DIExpression()), !dbg !4674
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4675, metadata !DIExpression()), !dbg !4676
  call void @llvm.dbg.declare(metadata i64* %mask, metadata !4677, metadata !DIExpression()), !dbg !4678
  %0 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4679
  %1 = load i32, i32* %gpio.addr, align 4, !dbg !4680
  %call = call i64 @bgpio_line2mask(%struct.gpio_chip* %0, i32 %1) #10, !dbg !4681
  store i64 %call, i64* %mask, align 8, !dbg !4678
  %2 = load i32, i32* %val.addr, align 4, !dbg !4682
  %tobool = icmp ne i32 %2, 0, !dbg !4682
  br i1 %tobool, label %if.then, label %if.else, !dbg !4684

if.then:                                          ; preds = %entry
  %3 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4685
  %write_reg = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %3, i32 0, i32 23, !dbg !4686
  %4 = load void (i8*, i64)*, void (i8*, i64)** %write_reg, align 8, !dbg !4686
  %5 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4687
  %reg_set = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %5, i32 0, i32 26, !dbg !4688
  %6 = load i8*, i8** %reg_set, align 8, !dbg !4688
  %7 = load i64, i64* %mask, align 8, !dbg !4689
  call void %4(i8* %6, i64 %7) #10, !dbg !4685
  br label %if.end, !dbg !4685

if.else:                                          ; preds = %entry
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4690
  %write_reg1 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %8, i32 0, i32 23, !dbg !4691
  %9 = load void (i8*, i64)*, void (i8*, i64)** %write_reg1, align 8, !dbg !4691
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4692
  %reg_clr = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %10, i32 0, i32 27, !dbg !4693
  %11 = load i8*, i8** %reg_clr, align 8, !dbg !4693
  %12 = load i64, i64* %mask, align 8, !dbg !4694
  call void %9(i8* %11, i64 %12) #10, !dbg !4690
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4695
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bgpio_set_multiple_with_clear(%struct.gpio_chip* %gc, i64* %mask, i64* %bits) #0 !dbg !4696 {
entry:
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %mask.addr = alloca i64*, align 8
  %bits.addr = alloca i64*, align 8
  %set_mask = alloca i64, align 8
  %clear_mask = alloca i64, align 8
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !4697, metadata !DIExpression()), !dbg !4698
  store i64* %mask, i64** %mask.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %mask.addr, metadata !4699, metadata !DIExpression()), !dbg !4700
  store i64* %bits, i64** %bits.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %bits.addr, metadata !4701, metadata !DIExpression()), !dbg !4702
  call void @llvm.dbg.declare(metadata i64* %set_mask, metadata !4703, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.declare(metadata i64* %clear_mask, metadata !4705, metadata !DIExpression()), !dbg !4706
  %0 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4707
  %1 = load i64*, i64** %mask.addr, align 8, !dbg !4708
  %2 = load i64*, i64** %bits.addr, align 8, !dbg !4709
  call void @bgpio_multiple_get_masks(%struct.gpio_chip* %0, i64* %1, i64* %2, i64* %set_mask, i64* %clear_mask) #10, !dbg !4710
  %3 = load i64, i64* %set_mask, align 8, !dbg !4711
  %tobool = icmp ne i64 %3, 0, !dbg !4711
  br i1 %tobool, label %if.then, label %if.end, !dbg !4713

if.then:                                          ; preds = %entry
  %4 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4714
  %write_reg = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %4, i32 0, i32 23, !dbg !4715
  %5 = load void (i8*, i64)*, void (i8*, i64)** %write_reg, align 8, !dbg !4715
  %6 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4716
  %reg_set = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %6, i32 0, i32 26, !dbg !4717
  %7 = load i8*, i8** %reg_set, align 8, !dbg !4717
  %8 = load i64, i64* %set_mask, align 8, !dbg !4718
  call void %5(i8* %7, i64 %8) #10, !dbg !4714
  br label %if.end, !dbg !4714

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64, i64* %clear_mask, align 8, !dbg !4719
  %tobool1 = icmp ne i64 %9, 0, !dbg !4719
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !4721

if.then2:                                         ; preds = %if.end
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4722
  %write_reg3 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %10, i32 0, i32 23, !dbg !4723
  %11 = load void (i8*, i64)*, void (i8*, i64)** %write_reg3, align 8, !dbg !4723
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4724
  %reg_clr = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %12, i32 0, i32 27, !dbg !4725
  %13 = load i8*, i8** %reg_clr, align 8, !dbg !4725
  %14 = load i64, i64* %clear_mask, align 8, !dbg !4726
  call void %11(i8* %13, i64 %14) #10, !dbg !4722
  br label %if.end4, !dbg !4722

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !4727
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bgpio_set_multiple_set(%struct.gpio_chip* %gc, i64* %mask, i64* %bits) #0 !dbg !4728 {
entry:
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %mask.addr = alloca i64*, align 8
  %bits.addr = alloca i64*, align 8
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !4729, metadata !DIExpression()), !dbg !4730
  store i64* %mask, i64** %mask.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %mask.addr, metadata !4731, metadata !DIExpression()), !dbg !4732
  store i64* %bits, i64** %bits.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %bits.addr, metadata !4733, metadata !DIExpression()), !dbg !4734
  %0 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4735
  %1 = load i64*, i64** %mask.addr, align 8, !dbg !4736
  %2 = load i64*, i64** %bits.addr, align 8, !dbg !4737
  %3 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4738
  %reg_set = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %3, i32 0, i32 26, !dbg !4739
  %4 = load i8*, i8** %reg_set, align 8, !dbg !4739
  call void @bgpio_set_multiple_single_reg(%struct.gpio_chip* %0, i64* %1, i64* %2, i8* %4) #10, !dbg !4740
  ret void, !dbg !4741
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bgpio_set_none(%struct.gpio_chip* %gc, i32 %gpio, i32 %val) #0 !dbg !4742 {
entry:
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %gpio.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !4743, metadata !DIExpression()), !dbg !4744
  store i32 %gpio, i32* %gpio.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpio.addr, metadata !4745, metadata !DIExpression()), !dbg !4746
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4747, metadata !DIExpression()), !dbg !4748
  ret void, !dbg !4749
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bgpio_set(%struct.gpio_chip* %gc, i32 %gpio, i32 %val) #0 !dbg !4750 {
entry:
  %lock.addr.i23 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i23, metadata !4571, metadata !DIExpression()), !dbg !4751
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4577, metadata !DIExpression()), !dbg !4753
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4084, metadata !DIExpression()), !dbg !4754
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %gpio.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %mask = alloca i64, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !4761, metadata !DIExpression()), !dbg !4762
  store i32 %gpio, i32* %gpio.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpio.addr, metadata !4763, metadata !DIExpression()), !dbg !4764
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4765, metadata !DIExpression()), !dbg !4766
  call void @llvm.dbg.declare(metadata i64* %mask, metadata !4767, metadata !DIExpression()), !dbg !4768
  %0 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4769
  %1 = load i32, i32* %gpio.addr, align 4, !dbg !4770
  %call = call i64 @bgpio_line2mask(%struct.gpio_chip* %0, i32 %1) #10, !dbg !4771
  store i64 %call, i64* %mask, align 8, !dbg !4768
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4772, metadata !DIExpression()), !dbg !4773
  br label %do.body, !dbg !4774

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4775

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4776, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4779, metadata !DIExpression()), !dbg !4778
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4778
  %conv = zext i1 %cmp to i32, !dbg !4778
  store i32 1, i32* %tmp, align 4, !dbg !4778
  %2 = load i32, i32* %tmp, align 4, !dbg !4778
  br label %do.body2, !dbg !4780

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4781

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4782

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4784, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4788, metadata !DIExpression()), !dbg !4787
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4787
  %conv8 = zext i1 %cmp7 to i32, !dbg !4787
  store i32 1, i32* %tmp9, align 4, !dbg !4787
  %3 = load i32, i32* %tmp9, align 4, !dbg !4787
  %call10 = call i64 @arch_local_irq_save() #10, !dbg !4789
  store i64 %call10, i64* %flags, align 8, !dbg !4789
  br label %do.end, !dbg !4789

do.end:                                           ; preds = %do.body4
  br label %do.end11, !dbg !4782

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !4781

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4790, !srcloc !4791
  br label %do.body13, !dbg !4790

do.body13:                                        ; preds = %do.body12
  %4 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4792
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %4, i32 0, i32 32, !dbg !4792
  store %struct.spinlock* %bgpio_lock, %struct.spinlock** %lock.addr.i, align 8
  %5 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4793
  %6 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %5, i32 0, i32 0, !dbg !4794
  %rlock.i = bitcast %union.anon.1* %6 to %struct.raw_spinlock*, !dbg !4794
  br label %do.end15, !dbg !4792

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !4790

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4781

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4780

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !4775

do.end19:                                         ; preds = %do.end18
  %7 = load i32, i32* %val.addr, align 4, !dbg !4795
  %tobool = icmp ne i32 %7, 0, !dbg !4795
  br i1 %tobool, label %if.then, label %if.else, !dbg !4797

if.then:                                          ; preds = %do.end19
  %8 = load i64, i64* %mask, align 8, !dbg !4798
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4799
  %bgpio_data = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %9, i32 0, i32 33, !dbg !4800
  %10 = load i64, i64* %bgpio_data, align 8, !dbg !4801
  %or = or i64 %10, %8, !dbg !4801
  store i64 %or, i64* %bgpio_data, align 8, !dbg !4801
  br label %if.end, !dbg !4799

if.else:                                          ; preds = %do.end19
  %11 = load i64, i64* %mask, align 8, !dbg !4802
  %neg = xor i64 %11, -1, !dbg !4803
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4804
  %bgpio_data20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %12, i32 0, i32 33, !dbg !4805
  %13 = load i64, i64* %bgpio_data20, align 8, !dbg !4806
  %and = and i64 %13, %neg, !dbg !4806
  store i64 %and, i64* %bgpio_data20, align 8, !dbg !4806
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4807
  %write_reg = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %14, i32 0, i32 23, !dbg !4808
  %15 = load void (i8*, i64)*, void (i8*, i64)** %write_reg, align 8, !dbg !4808
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4809
  %reg_dat = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %16, i32 0, i32 25, !dbg !4810
  %17 = load i8*, i8** %reg_dat, align 8, !dbg !4810
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4811
  %bgpio_data21 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %18, i32 0, i32 33, !dbg !4812
  %19 = load i64, i64* %bgpio_data21, align 8, !dbg !4812
  call void %15(i8* %17, i64 %19) #10, !dbg !4807
  %20 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4813
  %bgpio_lock22 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %20, i32 0, i32 32, !dbg !4814
  %21 = load i64, i64* %flags, align 8, !dbg !4815
  store %struct.spinlock* %bgpio_lock22, %struct.spinlock** %lock.addr.i23, align 8
  store i64 %21, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !203, metadata !4641, metadata !DIExpression()) #7, !dbg !4816
  call void @llvm.dbg.declare(metadata !203, metadata !4645, metadata !DIExpression()) #7, !dbg !4816
  store i32 1, i32* %tmp.i, align 4, !dbg !4816
  %22 = load i32, i32* %tmp.i, align 4, !dbg !4816
  call void @llvm.dbg.declare(metadata !203, metadata !4646, metadata !DIExpression()) #7, !dbg !4817
  call void @llvm.dbg.declare(metadata !203, metadata !4652, metadata !DIExpression()) #7, !dbg !4817
  store i32 1, i32* %tmp8.i, align 4, !dbg !4817
  %23 = load i32, i32* %tmp8.i, align 4, !dbg !4817
  %24 = load i64, i64* %flags.addr.i, align 8, !dbg !4818
  call void @arch_local_irq_restore(i64 %24) #12, !dbg !4818
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4819, !srcloc !4656
  %25 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i23, align 8, !dbg !4820
  %26 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %25, i32 0, i32 0, !dbg !4820
  %rlock.i24 = bitcast %union.anon.1* %26 to %struct.raw_spinlock*, !dbg !4820
  ret void, !dbg !4821
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bgpio_set_multiple(%struct.gpio_chip* %gc, i64* %mask, i64* %bits) #0 !dbg !4822 {
entry:
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %mask.addr = alloca i64*, align 8
  %bits.addr = alloca i64*, align 8
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !4823, metadata !DIExpression()), !dbg !4824
  store i64* %mask, i64** %mask.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %mask.addr, metadata !4825, metadata !DIExpression()), !dbg !4826
  store i64* %bits, i64** %bits.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %bits.addr, metadata !4827, metadata !DIExpression()), !dbg !4828
  %0 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4829
  %1 = load i64*, i64** %mask.addr, align 8, !dbg !4830
  %2 = load i64*, i64** %bits.addr, align 8, !dbg !4831
  %3 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4832
  %reg_dat = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %3, i32 0, i32 25, !dbg !4833
  %4 = load i8*, i8** %reg_dat, align 8, !dbg !4833
  call void @bgpio_set_multiple_single_reg(%struct.gpio_chip* %0, i64* %1, i64* %2, i8* %4) #10, !dbg !4834
  ret void, !dbg !4835
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bgpio_get_set(%struct.gpio_chip* %gc, i32 %gpio) #0 !dbg !4836 {
entry:
  %retval = alloca i32, align 4
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %gpio.addr = alloca i32, align 4
  %pinmask = alloca i64, align 8
  %dir = alloca i8, align 1
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !4837, metadata !DIExpression()), !dbg !4838
  store i32 %gpio, i32* %gpio.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpio.addr, metadata !4839, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.declare(metadata i64* %pinmask, metadata !4841, metadata !DIExpression()), !dbg !4842
  %0 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4843
  %1 = load i32, i32* %gpio.addr, align 4, !dbg !4844
  %call = call i64 @bgpio_line2mask(%struct.gpio_chip* %0, i32 %1) #10, !dbg !4845
  store i64 %call, i64* %pinmask, align 8, !dbg !4842
  call void @llvm.dbg.declare(metadata i8* %dir, metadata !4846, metadata !DIExpression()), !dbg !4847
  %2 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4848
  %bgpio_dir = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %2, i32 0, i32 34, !dbg !4849
  %3 = load i64, i64* %bgpio_dir, align 8, !dbg !4849
  %4 = load i64, i64* %pinmask, align 8, !dbg !4850
  %and = and i64 %3, %4, !dbg !4851
  %tobool = icmp ne i64 %and, 0, !dbg !4852
  %lnot = xor i1 %tobool, true, !dbg !4852
  %lnot1 = xor i1 %lnot, true, !dbg !4853
  %frombool = zext i1 %lnot1 to i8, !dbg !4847
  store i8 %frombool, i8* %dir, align 1, !dbg !4847
  %5 = load i8, i8* %dir, align 1, !dbg !4854
  %tobool2 = trunc i8 %5 to i1, !dbg !4854
  br i1 %tobool2, label %if.then, label %if.else, !dbg !4856

if.then:                                          ; preds = %entry
  %6 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4857
  %read_reg = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %6, i32 0, i32 22, !dbg !4858
  %7 = load i64 (i8*)*, i64 (i8*)** %read_reg, align 8, !dbg !4858
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4859
  %reg_set = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %8, i32 0, i32 26, !dbg !4860
  %9 = load i8*, i8** %reg_set, align 8, !dbg !4860
  %call3 = call i64 %7(i8* %9) #10, !dbg !4857
  %10 = load i64, i64* %pinmask, align 8, !dbg !4861
  %and4 = and i64 %call3, %10, !dbg !4862
  %tobool5 = icmp ne i64 %and4, 0, !dbg !4863
  %lnot6 = xor i1 %tobool5, true, !dbg !4863
  %lnot7 = xor i1 %lnot6, true, !dbg !4864
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !4864
  store i32 %lnot.ext, i32* %retval, align 4, !dbg !4865
  br label %return, !dbg !4865

if.else:                                          ; preds = %entry
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4866
  %read_reg8 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %11, i32 0, i32 22, !dbg !4867
  %12 = load i64 (i8*)*, i64 (i8*)** %read_reg8, align 8, !dbg !4867
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4868
  %reg_dat = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %13, i32 0, i32 25, !dbg !4869
  %14 = load i8*, i8** %reg_dat, align 8, !dbg !4869
  %call9 = call i64 %12(i8* %14) #10, !dbg !4866
  %15 = load i64, i64* %pinmask, align 8, !dbg !4870
  %and10 = and i64 %call9, %15, !dbg !4871
  %tobool11 = icmp ne i64 %and10, 0, !dbg !4872
  %lnot12 = xor i1 %tobool11, true, !dbg !4872
  %lnot14 = xor i1 %lnot12, true, !dbg !4873
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !4873
  store i32 %lnot.ext15, i32* %retval, align 4, !dbg !4874
  br label %return, !dbg !4874

return:                                           ; preds = %if.else, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !4875
  ret i32 %16, !dbg !4875
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bgpio_get_set_multiple(%struct.gpio_chip* %gc, i64* %mask, i64* %bits) #0 !dbg !4876 {
entry:
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %mask.addr = alloca i64*, align 8
  %bits.addr = alloca i64*, align 8
  %get_mask = alloca i64, align 8
  %set_mask = alloca i64, align 8
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !4877, metadata !DIExpression()), !dbg !4878
  store i64* %mask, i64** %mask.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %mask.addr, metadata !4879, metadata !DIExpression()), !dbg !4880
  store i64* %bits, i64** %bits.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %bits.addr, metadata !4881, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.declare(metadata i64* %get_mask, metadata !4883, metadata !DIExpression()), !dbg !4884
  store i64 0, i64* %get_mask, align 8, !dbg !4884
  call void @llvm.dbg.declare(metadata i64* %set_mask, metadata !4885, metadata !DIExpression()), !dbg !4886
  store i64 0, i64* %set_mask, align 8, !dbg !4886
  %0 = load i64*, i64** %mask.addr, align 8, !dbg !4887
  %1 = load i64, i64* %0, align 8, !dbg !4888
  %neg = xor i64 %1, -1, !dbg !4889
  %2 = load i64*, i64** %bits.addr, align 8, !dbg !4890
  %3 = load i64, i64* %2, align 8, !dbg !4891
  %and = and i64 %3, %neg, !dbg !4891
  store i64 %and, i64* %2, align 8, !dbg !4891
  %4 = load i64*, i64** %mask.addr, align 8, !dbg !4892
  %5 = load i64, i64* %4, align 8, !dbg !4893
  %6 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4894
  %bgpio_dir = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %6, i32 0, i32 34, !dbg !4895
  %7 = load i64, i64* %bgpio_dir, align 8, !dbg !4895
  %and1 = and i64 %5, %7, !dbg !4896
  store i64 %and1, i64* %set_mask, align 8, !dbg !4897
  %8 = load i64*, i64** %mask.addr, align 8, !dbg !4898
  %9 = load i64, i64* %8, align 8, !dbg !4899
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4900
  %bgpio_dir2 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %10, i32 0, i32 34, !dbg !4901
  %11 = load i64, i64* %bgpio_dir2, align 8, !dbg !4901
  %neg3 = xor i64 %11, -1, !dbg !4902
  %and4 = and i64 %9, %neg3, !dbg !4903
  store i64 %and4, i64* %get_mask, align 8, !dbg !4904
  %12 = load i64, i64* %set_mask, align 8, !dbg !4905
  %tobool = icmp ne i64 %12, 0, !dbg !4905
  br i1 %tobool, label %if.then, label %if.end, !dbg !4907

if.then:                                          ; preds = %entry
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4908
  %read_reg = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %13, i32 0, i32 22, !dbg !4909
  %14 = load i64 (i8*)*, i64 (i8*)** %read_reg, align 8, !dbg !4909
  %15 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4910
  %reg_set = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %15, i32 0, i32 26, !dbg !4911
  %16 = load i8*, i8** %reg_set, align 8, !dbg !4911
  %call = call i64 %14(i8* %16) #10, !dbg !4908
  %17 = load i64, i64* %set_mask, align 8, !dbg !4912
  %and5 = and i64 %call, %17, !dbg !4913
  %18 = load i64*, i64** %bits.addr, align 8, !dbg !4914
  %19 = load i64, i64* %18, align 8, !dbg !4915
  %or = or i64 %19, %and5, !dbg !4915
  store i64 %or, i64* %18, align 8, !dbg !4915
  br label %if.end, !dbg !4916

if.end:                                           ; preds = %if.then, %entry
  %20 = load i64, i64* %get_mask, align 8, !dbg !4917
  %tobool6 = icmp ne i64 %20, 0, !dbg !4917
  br i1 %tobool6, label %if.then7, label %if.end12, !dbg !4919

if.then7:                                         ; preds = %if.end
  %21 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4920
  %read_reg8 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %21, i32 0, i32 22, !dbg !4921
  %22 = load i64 (i8*)*, i64 (i8*)** %read_reg8, align 8, !dbg !4921
  %23 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4922
  %reg_dat = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %23, i32 0, i32 25, !dbg !4923
  %24 = load i8*, i8** %reg_dat, align 8, !dbg !4923
  %call9 = call i64 %22(i8* %24) #10, !dbg !4920
  %25 = load i64, i64* %get_mask, align 8, !dbg !4924
  %and10 = and i64 %call9, %25, !dbg !4925
  %26 = load i64*, i64** %bits.addr, align 8, !dbg !4926
  %27 = load i64, i64* %26, align 8, !dbg !4927
  %or11 = or i64 %27, %and10, !dbg !4927
  store i64 %or11, i64* %26, align 8, !dbg !4927
  br label %if.end12, !dbg !4928

if.end12:                                         ; preds = %if.then7, %if.end
  ret i32 0, !dbg !4929
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bgpio_get(%struct.gpio_chip* %gc, i32 %gpio) #0 !dbg !4930 {
entry:
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %gpio.addr = alloca i32, align 4
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !4931, metadata !DIExpression()), !dbg !4932
  store i32 %gpio, i32* %gpio.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpio.addr, metadata !4933, metadata !DIExpression()), !dbg !4934
  %0 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4935
  %read_reg = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %0, i32 0, i32 22, !dbg !4936
  %1 = load i64 (i8*)*, i64 (i8*)** %read_reg, align 8, !dbg !4936
  %2 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4937
  %reg_dat = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %2, i32 0, i32 25, !dbg !4938
  %3 = load i8*, i8** %reg_dat, align 8, !dbg !4938
  %call = call i64 %1(i8* %3) #10, !dbg !4935
  %4 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4939
  %5 = load i32, i32* %gpio.addr, align 4, !dbg !4940
  %call1 = call i64 @bgpio_line2mask(%struct.gpio_chip* %4, i32 %5) #10, !dbg !4941
  %and = and i64 %call, %call1, !dbg !4942
  %tobool = icmp ne i64 %and, 0, !dbg !4943
  %lnot = xor i1 %tobool, true, !dbg !4943
  %lnot2 = xor i1 %lnot, true, !dbg !4944
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4944
  ret i32 %lnot.ext, !dbg !4945
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bgpio_get_multiple_be(%struct.gpio_chip* %gc, i64* %mask, i64* %bits) #0 !dbg !4946 {
entry:
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %mask.addr = alloca i64*, align 8
  %bits.addr = alloca i64*, align 8
  %readmask = alloca i64, align 8
  %val = alloca i64, align 8
  %bit = alloca i32, align 4
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !4947, metadata !DIExpression()), !dbg !4948
  store i64* %mask, i64** %mask.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %mask.addr, metadata !4949, metadata !DIExpression()), !dbg !4950
  store i64* %bits, i64** %bits.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %bits.addr, metadata !4951, metadata !DIExpression()), !dbg !4952
  call void @llvm.dbg.declare(metadata i64* %readmask, metadata !4953, metadata !DIExpression()), !dbg !4954
  store i64 0, i64* %readmask, align 8, !dbg !4954
  call void @llvm.dbg.declare(metadata i64* %val, metadata !4955, metadata !DIExpression()), !dbg !4956
  call void @llvm.dbg.declare(metadata i32* %bit, metadata !4957, metadata !DIExpression()), !dbg !4958
  %0 = load i64*, i64** %mask.addr, align 8, !dbg !4959
  %1 = load i64, i64* %0, align 8, !dbg !4960
  %neg = xor i64 %1, -1, !dbg !4961
  %2 = load i64*, i64** %bits.addr, align 8, !dbg !4962
  %3 = load i64, i64* %2, align 8, !dbg !4963
  %and = and i64 %3, %neg, !dbg !4963
  store i64 %and, i64* %2, align 8, !dbg !4963
  %4 = load i64*, i64** %mask.addr, align 8, !dbg !4964
  %5 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4964
  %ngpio = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %5, i32 0, i32 19, !dbg !4964
  %6 = load i16, i16* %ngpio, align 4, !dbg !4964
  %conv = zext i16 %6 to i64, !dbg !4964
  %call = call i64 @find_first_bit(i64* %4, i64 %conv) #10, !dbg !4964
  %conv1 = trunc i64 %call to i32, !dbg !4964
  store i32 %conv1, i32* %bit, align 4, !dbg !4964
  br label %for.cond, !dbg !4964

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %bit, align 4, !dbg !4966
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4966
  %ngpio2 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %8, i32 0, i32 19, !dbg !4966
  %9 = load i16, i16* %ngpio2, align 4, !dbg !4966
  %conv3 = zext i16 %9 to i32, !dbg !4966
  %cmp = icmp slt i32 %7, %conv3, !dbg !4966
  br i1 %cmp, label %for.body, label %for.end, !dbg !4964

for.body:                                         ; preds = %for.cond
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4968
  %11 = load i32, i32* %bit, align 4, !dbg !4969
  %call5 = call i64 @bgpio_line2mask(%struct.gpio_chip* %10, i32 %11) #10, !dbg !4970
  %12 = load i64, i64* %readmask, align 8, !dbg !4971
  %or = or i64 %12, %call5, !dbg !4971
  store i64 %or, i64* %readmask, align 8, !dbg !4971
  br label %for.inc, !dbg !4972

for.inc:                                          ; preds = %for.body
  %13 = load i64*, i64** %mask.addr, align 8, !dbg !4966
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4966
  %ngpio6 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %14, i32 0, i32 19, !dbg !4966
  %15 = load i16, i16* %ngpio6, align 4, !dbg !4966
  %conv7 = zext i16 %15 to i64, !dbg !4966
  %16 = load i32, i32* %bit, align 4, !dbg !4966
  %add = add i32 %16, 1, !dbg !4966
  %conv8 = sext i32 %add to i64, !dbg !4966
  %call9 = call i64 @find_next_bit(i64* %13, i64 %conv7, i64 %conv8) #10, !dbg !4966
  %conv10 = trunc i64 %call9 to i32, !dbg !4966
  store i32 %conv10, i32* %bit, align 4, !dbg !4966
  br label %for.cond, !dbg !4966, !llvm.loop !4973

for.end:                                          ; preds = %for.cond
  %17 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4975
  %read_reg = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %17, i32 0, i32 22, !dbg !4976
  %18 = load i64 (i8*)*, i64 (i8*)** %read_reg, align 8, !dbg !4976
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4977
  %reg_dat = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 25, !dbg !4978
  %20 = load i8*, i8** %reg_dat, align 8, !dbg !4978
  %call11 = call i64 %18(i8* %20) #10, !dbg !4975
  %21 = load i64, i64* %readmask, align 8, !dbg !4979
  %and12 = and i64 %call11, %21, !dbg !4980
  store i64 %and12, i64* %val, align 8, !dbg !4981
  %22 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4982
  %ngpio13 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %22, i32 0, i32 19, !dbg !4982
  %23 = load i16, i16* %ngpio13, align 4, !dbg !4982
  %conv14 = zext i16 %23 to i64, !dbg !4982
  %call15 = call i64 @find_first_bit(i64* %val, i64 %conv14) #10, !dbg !4982
  %conv16 = trunc i64 %call15 to i32, !dbg !4982
  store i32 %conv16, i32* %bit, align 4, !dbg !4982
  br label %for.cond17, !dbg !4982

for.cond17:                                       ; preds = %for.inc25, %for.end
  %24 = load i32, i32* %bit, align 4, !dbg !4984
  %25 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4984
  %ngpio18 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %25, i32 0, i32 19, !dbg !4984
  %26 = load i16, i16* %ngpio18, align 4, !dbg !4984
  %conv19 = zext i16 %26 to i32, !dbg !4984
  %cmp20 = icmp slt i32 %24, %conv19, !dbg !4984
  br i1 %cmp20, label %for.body22, label %for.end32, !dbg !4982

for.body22:                                       ; preds = %for.cond17
  %27 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4986
  %28 = load i32, i32* %bit, align 4, !dbg !4987
  %call23 = call i64 @bgpio_line2mask(%struct.gpio_chip* %27, i32 %28) #10, !dbg !4988
  %29 = load i64*, i64** %bits.addr, align 8, !dbg !4989
  %30 = load i64, i64* %29, align 8, !dbg !4990
  %or24 = or i64 %30, %call23, !dbg !4990
  store i64 %or24, i64* %29, align 8, !dbg !4990
  br label %for.inc25, !dbg !4991

for.inc25:                                        ; preds = %for.body22
  %31 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4984
  %ngpio26 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %31, i32 0, i32 19, !dbg !4984
  %32 = load i16, i16* %ngpio26, align 4, !dbg !4984
  %conv27 = zext i16 %32 to i64, !dbg !4984
  %33 = load i32, i32* %bit, align 4, !dbg !4984
  %add28 = add i32 %33, 1, !dbg !4984
  %conv29 = sext i32 %add28 to i64, !dbg !4984
  %call30 = call i64 @find_next_bit(i64* %val, i64 %conv27, i64 %conv29) #10, !dbg !4984
  %conv31 = trunc i64 %call30 to i32, !dbg !4984
  store i32 %conv31, i32* %bit, align 4, !dbg !4984
  br label %for.cond17, !dbg !4984, !llvm.loop !4992

for.end32:                                        ; preds = %for.cond17
  ret i32 0, !dbg !4994
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bgpio_get_multiple(%struct.gpio_chip* %gc, i64* %mask, i64* %bits) #0 !dbg !4995 {
entry:
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %mask.addr = alloca i64*, align 8
  %bits.addr = alloca i64*, align 8
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !4996, metadata !DIExpression()), !dbg !4997
  store i64* %mask, i64** %mask.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %mask.addr, metadata !4998, metadata !DIExpression()), !dbg !4999
  store i64* %bits, i64** %bits.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %bits.addr, metadata !5000, metadata !DIExpression()), !dbg !5001
  %0 = load i64*, i64** %mask.addr, align 8, !dbg !5002
  %1 = load i64, i64* %0, align 8, !dbg !5003
  %neg = xor i64 %1, -1, !dbg !5004
  %2 = load i64*, i64** %bits.addr, align 8, !dbg !5005
  %3 = load i64, i64* %2, align 8, !dbg !5006
  %and = and i64 %3, %neg, !dbg !5006
  store i64 %and, i64* %2, align 8, !dbg !5006
  %4 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5007
  %read_reg = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %4, i32 0, i32 22, !dbg !5008
  %5 = load i64 (i8*)*, i64 (i8*)** %read_reg, align 8, !dbg !5008
  %6 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5009
  %reg_dat = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %6, i32 0, i32 25, !dbg !5010
  %7 = load i8*, i8** %reg_dat, align 8, !dbg !5010
  %call = call i64 %5(i8* %7) #10, !dbg !5007
  %8 = load i64*, i64** %mask.addr, align 8, !dbg !5011
  %9 = load i64, i64* %8, align 8, !dbg !5012
  %and1 = and i64 %call, %9, !dbg !5013
  %10 = load i64*, i64** %bits.addr, align 8, !dbg !5014
  %11 = load i64, i64* %10, align 8, !dbg !5015
  %or = or i64 %11, %and1, !dbg !5015
  store i64 %or, i64* %10, align 8, !dbg !5015
  ret i32 0, !dbg !5016
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @bgpio_line2mask(%struct.gpio_chip* %gc, i32 %line) #0 !dbg !5017 {
entry:
  %retval = alloca i64, align 8
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %line.addr = alloca i32, align 4
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !5020, metadata !DIExpression()), !dbg !5021
  store i32 %line, i32* %line.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %line.addr, metadata !5022, metadata !DIExpression()), !dbg !5023
  %0 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5024
  %be_bits = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %0, i32 0, i32 24, !dbg !5026
  %1 = load i8, i8* %be_bits, align 8, !dbg !5026
  %tobool = trunc i8 %1 to i1, !dbg !5026
  br i1 %tobool, label %if.then, label %if.end, !dbg !5027

if.then:                                          ; preds = %entry
  %2 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5028
  %bgpio_bits = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %2, i32 0, i32 31, !dbg !5028
  %3 = load i32, i32* %bgpio_bits, align 4, !dbg !5028
  %sub = sub i32 %3, 1, !dbg !5028
  %4 = load i32, i32* %line.addr, align 4, !dbg !5028
  %sub1 = sub i32 %sub, %4, !dbg !5028
  %sh_prom = zext i32 %sub1 to i64, !dbg !5028
  %shl = shl i64 1, %sh_prom, !dbg !5028
  store i64 %shl, i64* %retval, align 8, !dbg !5029
  br label %return, !dbg !5029

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %line.addr, align 4, !dbg !5030
  %sh_prom2 = zext i32 %5 to i64, !dbg !5030
  %shl3 = shl i64 1, %sh_prom2, !dbg !5030
  store i64 %shl3, i64* %retval, align 8, !dbg !5031
  br label %return, !dbg !5031

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, i64* %retval, align 8, !dbg !5032
  ret i64 %6, !dbg !5032
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bgpio_multiple_get_masks(%struct.gpio_chip* %gc, i64* %mask, i64* %bits, i64* %set_mask, i64* %clear_mask) #0 !dbg !5033 {
entry:
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %mask.addr = alloca i64*, align 8
  %bits.addr = alloca i64*, align 8
  %set_mask.addr = alloca i64*, align 8
  %clear_mask.addr = alloca i64*, align 8
  %i = alloca i32, align 4
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !5036, metadata !DIExpression()), !dbg !5037
  store i64* %mask, i64** %mask.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %mask.addr, metadata !5038, metadata !DIExpression()), !dbg !5039
  store i64* %bits, i64** %bits.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %bits.addr, metadata !5040, metadata !DIExpression()), !dbg !5041
  store i64* %set_mask, i64** %set_mask.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %set_mask.addr, metadata !5042, metadata !DIExpression()), !dbg !5043
  store i64* %clear_mask, i64** %clear_mask.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %clear_mask.addr, metadata !5044, metadata !DIExpression()), !dbg !5045
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5046, metadata !DIExpression()), !dbg !5047
  %0 = load i64*, i64** %set_mask.addr, align 8, !dbg !5048
  store i64 0, i64* %0, align 8, !dbg !5049
  %1 = load i64*, i64** %clear_mask.addr, align 8, !dbg !5050
  store i64 0, i64* %1, align 8, !dbg !5051
  %2 = load i64*, i64** %mask.addr, align 8, !dbg !5052
  %3 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5052
  %bgpio_bits = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %3, i32 0, i32 31, !dbg !5052
  %4 = load i32, i32* %bgpio_bits, align 4, !dbg !5052
  %conv = sext i32 %4 to i64, !dbg !5052
  %call = call i64 @find_first_bit(i64* %2, i64 %conv) #10, !dbg !5052
  %conv1 = trunc i64 %call to i32, !dbg !5052
  store i32 %conv1, i32* %i, align 4, !dbg !5052
  br label %for.cond, !dbg !5052

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !dbg !5054
  %6 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5054
  %bgpio_bits2 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %6, i32 0, i32 31, !dbg !5054
  %7 = load i32, i32* %bgpio_bits2, align 4, !dbg !5054
  %cmp = icmp slt i32 %5, %7, !dbg !5054
  br i1 %cmp, label %for.body, label %for.end, !dbg !5052

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !5056
  %conv4 = sext i32 %8 to i64, !dbg !5056
  %9 = load i64*, i64** %bits.addr, align 8, !dbg !5059
  %call5 = call zeroext i1 @test_bit(i64 %conv4, i64* %9) #10, !dbg !5060
  br i1 %call5, label %if.then, label %if.else, !dbg !5061

if.then:                                          ; preds = %for.body
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5062
  %11 = load i32, i32* %i, align 4, !dbg !5063
  %call6 = call i64 @bgpio_line2mask(%struct.gpio_chip* %10, i32 %11) #10, !dbg !5064
  %12 = load i64*, i64** %set_mask.addr, align 8, !dbg !5065
  %13 = load i64, i64* %12, align 8, !dbg !5066
  %or = or i64 %13, %call6, !dbg !5066
  store i64 %or, i64* %12, align 8, !dbg !5066
  br label %if.end, !dbg !5067

if.else:                                          ; preds = %for.body
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5068
  %15 = load i32, i32* %i, align 4, !dbg !5069
  %call7 = call i64 @bgpio_line2mask(%struct.gpio_chip* %14, i32 %15) #10, !dbg !5070
  %16 = load i64*, i64** %clear_mask.addr, align 8, !dbg !5071
  %17 = load i64, i64* %16, align 8, !dbg !5072
  %or8 = or i64 %17, %call7, !dbg !5072
  store i64 %or8, i64* %16, align 8, !dbg !5072
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc, !dbg !5073

for.inc:                                          ; preds = %if.end
  %18 = load i64*, i64** %mask.addr, align 8, !dbg !5054
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5054
  %bgpio_bits9 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 31, !dbg !5054
  %20 = load i32, i32* %bgpio_bits9, align 4, !dbg !5054
  %conv10 = sext i32 %20 to i64, !dbg !5054
  %21 = load i32, i32* %i, align 4, !dbg !5054
  %add = add i32 %21, 1, !dbg !5054
  %conv11 = sext i32 %add to i64, !dbg !5054
  %call12 = call i64 @find_next_bit(i64* %18, i64 %conv10, i64 %conv11) #10, !dbg !5054
  %conv13 = trunc i64 %call12 to i32, !dbg !5054
  store i32 %conv13, i32* %i, align 4, !dbg !5054
  br label %for.cond, !dbg !5054, !llvm.loop !5074

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5076
}

; Function Attrs: noredzone
declare dso_local i64 @find_first_bit(i64*, i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !5077 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !5084, metadata !DIExpression()), !dbg !5087
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !5089, metadata !DIExpression()), !dbg !5090
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !5091, metadata !DIExpression()), !dbg !5092
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5093, metadata !DIExpression()), !dbg !5095
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5097, metadata !DIExpression()), !dbg !5098
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5099, metadata !DIExpression()), !dbg !5107
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5109, metadata !DIExpression()), !dbg !5110
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5111, metadata !DIExpression()), !dbg !5112
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5113, metadata !DIExpression()), !dbg !5114
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5115
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5116
  %div = sdiv i64 %1, 64, !dbg !5116
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5117
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5115
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5118
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5119
  %conv.i = trunc i64 %4 to i32, !dbg !5119
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #12, !dbg !5120
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5121
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5121
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #12, !dbg !5121
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5122
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5122
  br i1 %8, label %cond.true, label %cond.false, !dbg !5122

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !5122
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !5122
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !5123
  %and.i = and i64 %11, 63, !dbg !5124
  %shl.i = shl i64 1, %and.i, !dbg !5125
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !5126
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5127
  %shr.i = ashr i64 %13, 6, !dbg !5128
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !5126
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !5126
  %and1.i = and i64 %shl.i, %14, !dbg !5129
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !5130
  %conv = zext i1 %cmp.i to i32, !dbg !5122
  br label %cond.end, !dbg !5122

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !5122
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !5122
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !5131
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !5132
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #7, !dbg !5133, !srcloc !5134
  store i8 %19, i8* %oldbit.i, align 1, !dbg !5133
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !5135
  %tobool.i = trunc i8 %20 to i1, !dbg !5135
  %conv2 = zext i1 %tobool.i to i32, !dbg !5122
  br label %cond.end, !dbg !5122

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5122
  %tobool = icmp ne i32 %cond, 0, !dbg !5122
  ret i1 %tobool, !dbg !5136
}

; Function Attrs: noredzone
declare dso_local i64 @find_next_bit(i64*, i64, i64) #4

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !5137 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5141, metadata !DIExpression()), !dbg !5142
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5143, metadata !DIExpression()), !dbg !5144
  ret i1 true, !dbg !5145
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5146 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5150, metadata !DIExpression()), !dbg !5151
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5152, metadata !DIExpression()), !dbg !5153
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5154, metadata !DIExpression()), !dbg !5155
  ret void, !dbg !5156
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bgpio_set_multiple_single_reg(%struct.gpio_chip* %gc, i64* %mask, i64* %bits, i8* %reg) #0 !dbg !5157 {
entry:
  %lock.addr.i22 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i22, metadata !4571, metadata !DIExpression()), !dbg !5160
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4577, metadata !DIExpression()), !dbg !5162
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4084, metadata !DIExpression()), !dbg !5163
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %mask.addr = alloca i64*, align 8
  %bits.addr = alloca i64*, align 8
  %reg.addr = alloca i8*, align 8
  %flags = alloca i64, align 8
  %set_mask = alloca i64, align 8
  %clear_mask = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !5170, metadata !DIExpression()), !dbg !5171
  store i64* %mask, i64** %mask.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %mask.addr, metadata !5172, metadata !DIExpression()), !dbg !5173
  store i64* %bits, i64** %bits.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %bits.addr, metadata !5174, metadata !DIExpression()), !dbg !5175
  store i8* %reg, i8** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reg.addr, metadata !5176, metadata !DIExpression()), !dbg !5177
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5178, metadata !DIExpression()), !dbg !5179
  call void @llvm.dbg.declare(metadata i64* %set_mask, metadata !5180, metadata !DIExpression()), !dbg !5181
  call void @llvm.dbg.declare(metadata i64* %clear_mask, metadata !5182, metadata !DIExpression()), !dbg !5183
  br label %do.body, !dbg !5184

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5185

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5186, metadata !DIExpression()), !dbg !5188
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5189, metadata !DIExpression()), !dbg !5188
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5188
  %conv = zext i1 %cmp to i32, !dbg !5188
  store i32 1, i32* %tmp, align 4, !dbg !5188
  %0 = load i32, i32* %tmp, align 4, !dbg !5188
  br label %do.body2, !dbg !5190

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5191

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5192

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5194, metadata !DIExpression()), !dbg !5197
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5198, metadata !DIExpression()), !dbg !5197
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5197
  %conv8 = zext i1 %cmp7 to i32, !dbg !5197
  store i32 1, i32* %tmp9, align 4, !dbg !5197
  %1 = load i32, i32* %tmp9, align 4, !dbg !5197
  %call = call i64 @arch_local_irq_save() #10, !dbg !5199
  store i64 %call, i64* %flags, align 8, !dbg !5199
  br label %do.end, !dbg !5199

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5192

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5191

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5200, !srcloc !5201
  br label %do.body12, !dbg !5200

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5202
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %2, i32 0, i32 32, !dbg !5202
  store %struct.spinlock* %bgpio_lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5203
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !5204
  %rlock.i = bitcast %union.anon.1* %4 to %struct.raw_spinlock*, !dbg !5204
  br label %do.end14, !dbg !5202

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5200

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5191

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5190

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5185

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5205
  %6 = load i64*, i64** %mask.addr, align 8, !dbg !5206
  %7 = load i64*, i64** %bits.addr, align 8, !dbg !5207
  call void @bgpio_multiple_get_masks(%struct.gpio_chip* %5, i64* %6, i64* %7, i64* %set_mask, i64* %clear_mask) #10, !dbg !5208
  %8 = load i64, i64* %set_mask, align 8, !dbg !5209
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5210
  %bgpio_data = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %9, i32 0, i32 33, !dbg !5211
  %10 = load i64, i64* %bgpio_data, align 8, !dbg !5212
  %or = or i64 %10, %8, !dbg !5212
  store i64 %or, i64* %bgpio_data, align 8, !dbg !5212
  %11 = load i64, i64* %clear_mask, align 8, !dbg !5213
  %neg = xor i64 %11, -1, !dbg !5214
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5215
  %bgpio_data19 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %12, i32 0, i32 33, !dbg !5216
  %13 = load i64, i64* %bgpio_data19, align 8, !dbg !5217
  %and = and i64 %13, %neg, !dbg !5217
  store i64 %and, i64* %bgpio_data19, align 8, !dbg !5217
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5218
  %write_reg = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %14, i32 0, i32 23, !dbg !5219
  %15 = load void (i8*, i64)*, void (i8*, i64)** %write_reg, align 8, !dbg !5219
  %16 = load i8*, i8** %reg.addr, align 8, !dbg !5220
  %17 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5221
  %bgpio_data20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %17, i32 0, i32 33, !dbg !5222
  %18 = load i64, i64* %bgpio_data20, align 8, !dbg !5222
  call void %15(i8* %16, i64 %18) #10, !dbg !5218
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5223
  %bgpio_lock21 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 32, !dbg !5224
  %20 = load i64, i64* %flags, align 8, !dbg !5225
  store %struct.spinlock* %bgpio_lock21, %struct.spinlock** %lock.addr.i22, align 8
  store i64 %20, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !203, metadata !4641, metadata !DIExpression()) #7, !dbg !5226
  call void @llvm.dbg.declare(metadata !203, metadata !4645, metadata !DIExpression()) #7, !dbg !5226
  store i32 1, i32* %tmp.i, align 4, !dbg !5226
  %21 = load i32, i32* %tmp.i, align 4, !dbg !5226
  call void @llvm.dbg.declare(metadata !203, metadata !4646, metadata !DIExpression()) #7, !dbg !5227
  call void @llvm.dbg.declare(metadata !203, metadata !4652, metadata !DIExpression()) #7, !dbg !5227
  store i32 1, i32* %tmp8.i, align 4, !dbg !5227
  %22 = load i32, i32* %tmp8.i, align 4, !dbg !5227
  %23 = load i64, i64* %flags.addr.i, align 8, !dbg !5228
  call void @arch_local_irq_restore(i64 %23) #12, !dbg !5228
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5229, !srcloc !4656
  %24 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i22, align 8, !dbg !5230
  %25 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %24, i32 0, i32 0, !dbg !5230
  %rlock.i23 = bitcast %union.anon.1* %25 to %struct.raw_spinlock*, !dbg !5230
  ret void, !dbg !5231
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !5232 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !5236, metadata !DIExpression()), !dbg !5237
  %call = call i64 @arch_local_save_flags() #10, !dbg !5238
  store i64 %call, i64* %f, align 8, !dbg !5239
  call void @arch_local_irq_disable() #10, !dbg !5240
  %0 = load i64, i64* %f, align 8, !dbg !5241
  ret i64 %0, !dbg !5242
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !5243 {
entry:
  %__ret = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5244, metadata !DIExpression()), !dbg !5246
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5247, metadata !DIExpression()), !dbg !5246
  %0 = load i64, i64* %__edi, align 8, !dbg !5246
  store i64 %0, i64* %__edi, align 8, !dbg !5246
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5248, metadata !DIExpression()), !dbg !5246
  %1 = load i64, i64* %__esi, align 8, !dbg !5246
  store i64 %1, i64* %__esi, align 8, !dbg !5246
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5249, metadata !DIExpression()), !dbg !5246
  %2 = load i64, i64* %__edx, align 8, !dbg !5246
  store i64 %2, i64* %__edx, align 8, !dbg !5246
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5250, metadata !DIExpression()), !dbg !5246
  %3 = load i64, i64* %__ecx, align 8, !dbg !5246
  store i64 %3, i64* %__ecx, align 8, !dbg !5246
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5251, metadata !DIExpression()), !dbg !5246
  %4 = load i64, i64* %__eax, align 8, !dbg !5246
  store i64 %4, i64* %__eax, align 8, !dbg !5246
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !5246
  %6 = call i64 @llvm.read_register.i64(metadata !146), !dbg !5252
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !5252, !srcloc !5255
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5252
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5252
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5252
  call void @llvm.write_register.i64(metadata !146, i64 %asmresult1), !dbg !5252
  %8 = load i64, i64* %__eax, align 8, !dbg !5252
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5256, metadata !DIExpression()), !dbg !5258
  store i64 -1, i64* %__mask, align 8, !dbg !5258
  %9 = load i64, i64* %__mask, align 8, !dbg !5258
  store i64 %9, i64* %tmp, align 8, !dbg !5258
  %10 = load i64, i64* %tmp, align 8, !dbg !5258
  %and = and i64 %8, %10, !dbg !5252
  store i64 %and, i64* %__ret, align 8, !dbg !5252
  %11 = load i64, i64* %__ret, align 8, !dbg !5246
  store i64 %11, i64* %tmp2, align 8, !dbg !5259
  %12 = load i64, i64* %tmp2, align 8, !dbg !5246
  ret i64 %12, !dbg !5260
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !5261 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5262, metadata !DIExpression()), !dbg !5264
  %0 = load i64, i64* %__edi, align 8, !dbg !5264
  store i64 %0, i64* %__edi, align 8, !dbg !5264
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5265, metadata !DIExpression()), !dbg !5264
  %1 = load i64, i64* %__esi, align 8, !dbg !5264
  store i64 %1, i64* %__esi, align 8, !dbg !5264
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5266, metadata !DIExpression()), !dbg !5264
  %2 = load i64, i64* %__edx, align 8, !dbg !5264
  store i64 %2, i64* %__edx, align 8, !dbg !5264
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5267, metadata !DIExpression()), !dbg !5264
  %3 = load i64, i64* %__ecx, align 8, !dbg !5264
  store i64 %3, i64* %__ecx, align 8, !dbg !5264
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5268, metadata !DIExpression()), !dbg !5264
  %4 = load i64, i64* %__eax, align 8, !dbg !5264
  store i64 %4, i64* %__eax, align 8, !dbg !5264
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !5264
  %6 = call i64 @llvm.read_register.i64(metadata !146), !dbg !5264
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #7, !dbg !5264, !srcloc !5269
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5264
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5264
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5264
  call void @llvm.write_register.i64(metadata !146, i64 %asmresult1), !dbg !5264
  ret void, !dbg !5270
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !5271 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !5274, metadata !DIExpression()), !dbg !5275
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5276, metadata !DIExpression()), !dbg !5278
  %0 = load i64, i64* %__edi, align 8, !dbg !5278
  store i64 %0, i64* %__edi, align 8, !dbg !5278
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5279, metadata !DIExpression()), !dbg !5278
  %1 = load i64, i64* %__esi, align 8, !dbg !5278
  store i64 %1, i64* %__esi, align 8, !dbg !5278
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5280, metadata !DIExpression()), !dbg !5278
  %2 = load i64, i64* %__edx, align 8, !dbg !5278
  store i64 %2, i64* %__edx, align 8, !dbg !5278
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5281, metadata !DIExpression()), !dbg !5278
  %3 = load i64, i64* %__ecx, align 8, !dbg !5278
  store i64 %3, i64* %__ecx, align 8, !dbg !5278
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5282, metadata !DIExpression()), !dbg !5278
  %4 = load i64, i64* %__eax, align 8, !dbg !5278
  store i64 %4, i64* %__eax, align 8, !dbg !5278
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !5278
  %6 = call i64 @llvm.read_register.i64(metadata !146), !dbg !5278
  %7 = load i64, i64* %f.addr, align 8, !dbg !5278
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #7, !dbg !5278, !srcloc !5283
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !5278
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !5278
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5278
  call void @llvm.write_register.i64(metadata !146, i64 %asmresult1), !dbg !5278
  ret void, !dbg !5284
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @bgpio_read8(i8* %reg) #0 !dbg !5285 {
entry:
  %reg.addr = alloca i8*, align 8
  store i8* %reg, i8** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reg.addr, metadata !5286, metadata !DIExpression()), !dbg !5287
  %0 = load i8*, i8** %reg.addr, align 8, !dbg !5288
  %call = call zeroext i8 @readb(i8* %0) #10, !dbg !5289
  %conv = zext i8 %call to i64, !dbg !5289
  ret i64 %conv, !dbg !5290
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bgpio_write8(i8* %reg, i64 %data) #0 !dbg !5291 {
entry:
  %reg.addr = alloca i8*, align 8
  %data.addr = alloca i64, align 8
  store i8* %reg, i8** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reg.addr, metadata !5292, metadata !DIExpression()), !dbg !5293
  store i64 %data, i64* %data.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %data.addr, metadata !5294, metadata !DIExpression()), !dbg !5295
  %0 = load i64, i64* %data.addr, align 8, !dbg !5296
  %conv = trunc i64 %0 to i8, !dbg !5296
  %1 = load i8*, i8** %reg.addr, align 8, !dbg !5297
  call void @writeb(i8 zeroext %conv, i8* %1) #10, !dbg !5298
  ret void, !dbg !5299
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @bgpio_read16be(i8* %reg) #0 !dbg !5300 {
entry:
  %reg.addr = alloca i8*, align 8
  store i8* %reg, i8** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reg.addr, metadata !5301, metadata !DIExpression()), !dbg !5302
  %0 = load i8*, i8** %reg.addr, align 8, !dbg !5303
  %call = call i32 @ioread16be(i8* %0) #10, !dbg !5304
  %conv = zext i32 %call to i64, !dbg !5304
  ret i64 %conv, !dbg !5305
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bgpio_write16be(i8* %reg, i64 %data) #0 !dbg !5306 {
entry:
  %reg.addr = alloca i8*, align 8
  %data.addr = alloca i64, align 8
  store i8* %reg, i8** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reg.addr, metadata !5307, metadata !DIExpression()), !dbg !5308
  store i64 %data, i64* %data.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %data.addr, metadata !5309, metadata !DIExpression()), !dbg !5310
  %0 = load i64, i64* %data.addr, align 8, !dbg !5311
  %conv = trunc i64 %0 to i16, !dbg !5311
  %1 = load i8*, i8** %reg.addr, align 8, !dbg !5312
  call void @iowrite16be(i16 zeroext %conv, i8* %1) #10, !dbg !5313
  ret void, !dbg !5314
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @bgpio_read16(i8* %reg) #0 !dbg !5315 {
entry:
  %reg.addr = alloca i8*, align 8
  store i8* %reg, i8** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reg.addr, metadata !5316, metadata !DIExpression()), !dbg !5317
  %0 = load i8*, i8** %reg.addr, align 8, !dbg !5318
  %call = call zeroext i16 @readw(i8* %0) #10, !dbg !5319
  %conv = zext i16 %call to i64, !dbg !5319
  ret i64 %conv, !dbg !5320
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bgpio_write16(i8* %reg, i64 %data) #0 !dbg !5321 {
entry:
  %reg.addr = alloca i8*, align 8
  %data.addr = alloca i64, align 8
  store i8* %reg, i8** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reg.addr, metadata !5322, metadata !DIExpression()), !dbg !5323
  store i64 %data, i64* %data.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %data.addr, metadata !5324, metadata !DIExpression()), !dbg !5325
  %0 = load i64, i64* %data.addr, align 8, !dbg !5326
  %conv = trunc i64 %0 to i16, !dbg !5326
  %1 = load i8*, i8** %reg.addr, align 8, !dbg !5327
  call void @writew(i16 zeroext %conv, i8* %1) #10, !dbg !5328
  ret void, !dbg !5329
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @bgpio_read32be(i8* %reg) #0 !dbg !5330 {
entry:
  %reg.addr = alloca i8*, align 8
  store i8* %reg, i8** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reg.addr, metadata !5331, metadata !DIExpression()), !dbg !5332
  %0 = load i8*, i8** %reg.addr, align 8, !dbg !5333
  %call = call i32 @ioread32be(i8* %0) #10, !dbg !5334
  %conv = zext i32 %call to i64, !dbg !5334
  ret i64 %conv, !dbg !5335
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bgpio_write32be(i8* %reg, i64 %data) #0 !dbg !5336 {
entry:
  %reg.addr = alloca i8*, align 8
  %data.addr = alloca i64, align 8
  store i8* %reg, i8** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reg.addr, metadata !5337, metadata !DIExpression()), !dbg !5338
  store i64 %data, i64* %data.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %data.addr, metadata !5339, metadata !DIExpression()), !dbg !5340
  %0 = load i64, i64* %data.addr, align 8, !dbg !5341
  %conv = trunc i64 %0 to i32, !dbg !5341
  %1 = load i8*, i8** %reg.addr, align 8, !dbg !5342
  call void @iowrite32be(i32 %conv, i8* %1) #10, !dbg !5343
  ret void, !dbg !5344
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @bgpio_read32(i8* %reg) #0 !dbg !5345 {
entry:
  %reg.addr = alloca i8*, align 8
  store i8* %reg, i8** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reg.addr, metadata !5346, metadata !DIExpression()), !dbg !5347
  %0 = load i8*, i8** %reg.addr, align 8, !dbg !5348
  %call = call i32 @readl(i8* %0) #10, !dbg !5349
  %conv = zext i32 %call to i64, !dbg !5349
  ret i64 %conv, !dbg !5350
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bgpio_write32(i8* %reg, i64 %data) #0 !dbg !5351 {
entry:
  %reg.addr = alloca i8*, align 8
  %data.addr = alloca i64, align 8
  store i8* %reg, i8** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reg.addr, metadata !5352, metadata !DIExpression()), !dbg !5353
  store i64 %data, i64* %data.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %data.addr, metadata !5354, metadata !DIExpression()), !dbg !5355
  %0 = load i64, i64* %data.addr, align 8, !dbg !5356
  %conv = trunc i64 %0 to i32, !dbg !5356
  %1 = load i8*, i8** %reg.addr, align 8, !dbg !5357
  call void @writel(i32 %conv, i8* %1) #10, !dbg !5358
  ret void, !dbg !5359
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @bgpio_read64(i8* %reg) #0 !dbg !5360 {
entry:
  %reg.addr = alloca i8*, align 8
  store i8* %reg, i8** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reg.addr, metadata !5361, metadata !DIExpression()), !dbg !5362
  %0 = load i8*, i8** %reg.addr, align 8, !dbg !5363
  %call = call i64 @readq(i8* %0) #10, !dbg !5364
  ret i64 %call, !dbg !5365
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bgpio_write64(i8* %reg, i64 %data) #0 !dbg !5366 {
entry:
  %reg.addr = alloca i8*, align 8
  %data.addr = alloca i64, align 8
  store i8* %reg, i8** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reg.addr, metadata !5367, metadata !DIExpression()), !dbg !5368
  store i64 %data, i64* %data.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %data.addr, metadata !5369, metadata !DIExpression()), !dbg !5370
  %0 = load i64, i64* %data.addr, align 8, !dbg !5371
  %1 = load i8*, i8** %reg.addr, align 8, !dbg !5372
  call void @writeq(i64 %0, i8* %1) #10, !dbg !5373
  ret void, !dbg !5374
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @readb(i8* %addr) #0 !dbg !5375 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i8, align 1
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5379, metadata !DIExpression()), !dbg !5380
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !5381, metadata !DIExpression()), !dbg !5380
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5380
  %1 = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %0) #7, !dbg !5380, !srcloc !5382
  store i8 %1, i8* %ret, align 1, !dbg !5380
  %2 = load i8, i8* %ret, align 1, !dbg !5380
  ret i8 %2, !dbg !5380
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writeb(i8 zeroext %val, i8* %addr) #0 !dbg !5383 {
entry:
  %val.addr = alloca i8, align 1
  %addr.addr = alloca i8*, align 8
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !5387, metadata !DIExpression()), !dbg !5388
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5389, metadata !DIExpression()), !dbg !5388
  %0 = load i8, i8* %val.addr, align 1, !dbg !5388
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !5388
  call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 %0, i8* %1) #7, !dbg !5388, !srcloc !5390
  ret void, !dbg !5388
}

; Function Attrs: noredzone
declare dso_local i32 @ioread16be(i8*) #4

; Function Attrs: noredzone
declare dso_local void @iowrite16be(i16 zeroext, i8*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @readw(i8* %addr) #0 !dbg !5391 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i16, align 2
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5394, metadata !DIExpression()), !dbg !5395
  call void @llvm.dbg.declare(metadata i16* %ret, metadata !5396, metadata !DIExpression()), !dbg !5395
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5395
  %1 = bitcast i8* %0 to i16*, !dbg !5395
  %2 = call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* %1) #7, !dbg !5395, !srcloc !5397
  store i16 %2, i16* %ret, align 2, !dbg !5395
  %3 = load i16, i16* %ret, align 2, !dbg !5395
  ret i16 %3, !dbg !5395
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writew(i16 zeroext %val, i8* %addr) #0 !dbg !5398 {
entry:
  %val.addr = alloca i16, align 2
  %addr.addr = alloca i8*, align 8
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !5401, metadata !DIExpression()), !dbg !5402
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5403, metadata !DIExpression()), !dbg !5402
  %0 = load i16, i16* %val.addr, align 2, !dbg !5402
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !5402
  %2 = bitcast i8* %1 to i16*, !dbg !5402
  call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %0, i16* %2) #7, !dbg !5402, !srcloc !5404
  ret void, !dbg !5402
}

; Function Attrs: noredzone
declare dso_local i32 @ioread32be(i8*) #4

; Function Attrs: noredzone
declare dso_local void @iowrite32be(i32, i8*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #0 !dbg !5405 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5408, metadata !DIExpression()), !dbg !5409
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5410, metadata !DIExpression()), !dbg !5409
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5409
  %1 = bitcast i8* %0 to i32*, !dbg !5409
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #7, !dbg !5409, !srcloc !5411
  store i32 %2, i32* %ret, align 4, !dbg !5409
  %3 = load i32, i32* %ret, align 4, !dbg !5409
  ret i32 %3, !dbg !5409
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #0 !dbg !5412 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5415, metadata !DIExpression()), !dbg !5416
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5417, metadata !DIExpression()), !dbg !5416
  %0 = load i32, i32* %val.addr, align 4, !dbg !5416
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !5416
  %2 = bitcast i8* %1 to i32*, !dbg !5416
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #7, !dbg !5416, !srcloc !5418
  ret void, !dbg !5416
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @readq(i8* %addr) #0 !dbg !5419 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i64, align 8
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5422, metadata !DIExpression()), !dbg !5423
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !5424, metadata !DIExpression()), !dbg !5423
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5423
  %1 = bitcast i8* %0 to i64*, !dbg !5423
  %2 = call i64 asm sideeffect "movq $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %1) #7, !dbg !5423, !srcloc !5425
  store i64 %2, i64* %ret, align 8, !dbg !5423
  %3 = load i64, i64* %ret, align 8, !dbg !5423
  ret i64 %3, !dbg !5423
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writeq(i64 %val, i8* %addr) #0 !dbg !5426 {
entry:
  %val.addr = alloca i64, align 8
  %addr.addr = alloca i8*, align 8
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !5429, metadata !DIExpression()), !dbg !5430
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5431, metadata !DIExpression()), !dbg !5430
  %0 = load i64, i64* %val.addr, align 8, !dbg !5430
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !5430
  %2 = bitcast i8* %1 to i64*, !dbg !5430
  call void asm sideeffect "movq $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64 %0, i64* %2) #7, !dbg !5430, !srcloc !5432
  ret void, !dbg !5430
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bgpio_dir_out_dir_first(%struct.gpio_chip* %gc, i32 %gpio, i32 %val) #0 !dbg !5433 {
entry:
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %gpio.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !5434, metadata !DIExpression()), !dbg !5435
  store i32 %gpio, i32* %gpio.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpio.addr, metadata !5436, metadata !DIExpression()), !dbg !5437
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5438, metadata !DIExpression()), !dbg !5439
  %0 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5440
  %1 = load i32, i32* %gpio.addr, align 4, !dbg !5441
  %2 = load i32, i32* %val.addr, align 4, !dbg !5442
  call void @bgpio_dir_out(%struct.gpio_chip* %0, i32 %1, i32 %2) #10, !dbg !5443
  %3 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5444
  %set = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %3, i32 0, i32 11, !dbg !5445
  %4 = load void (%struct.gpio_chip*, i32, i32)*, void (%struct.gpio_chip*, i32, i32)** %set, align 8, !dbg !5445
  %5 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5446
  %6 = load i32, i32* %gpio.addr, align 4, !dbg !5447
  %7 = load i32, i32* %val.addr, align 4, !dbg !5448
  call void %4(%struct.gpio_chip* %5, i32 %6, i32 %7) #10, !dbg !5444
  ret i32 0, !dbg !5449
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bgpio_dir_out_val_first(%struct.gpio_chip* %gc, i32 %gpio, i32 %val) #0 !dbg !5450 {
entry:
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %gpio.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !5451, metadata !DIExpression()), !dbg !5452
  store i32 %gpio, i32* %gpio.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpio.addr, metadata !5453, metadata !DIExpression()), !dbg !5454
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5455, metadata !DIExpression()), !dbg !5456
  %0 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5457
  %set = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %0, i32 0, i32 11, !dbg !5458
  %1 = load void (%struct.gpio_chip*, i32, i32)*, void (%struct.gpio_chip*, i32, i32)** %set, align 8, !dbg !5458
  %2 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5459
  %3 = load i32, i32* %gpio.addr, align 4, !dbg !5460
  %4 = load i32, i32* %val.addr, align 4, !dbg !5461
  call void %1(%struct.gpio_chip* %2, i32 %3, i32 %4) #10, !dbg !5457
  %5 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5462
  %6 = load i32, i32* %gpio.addr, align 4, !dbg !5463
  %7 = load i32, i32* %val.addr, align 4, !dbg !5464
  call void @bgpio_dir_out(%struct.gpio_chip* %5, i32 %6, i32 %7) #10, !dbg !5465
  ret i32 0, !dbg !5466
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bgpio_dir_in(%struct.gpio_chip* %gc, i32 %gpio) #0 !dbg !5467 {
entry:
  %lock.addr.i30 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i30, metadata !4571, metadata !DIExpression()), !dbg !5468
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4577, metadata !DIExpression()), !dbg !5470
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4084, metadata !DIExpression()), !dbg !5471
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %gpio.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !5478, metadata !DIExpression()), !dbg !5479
  store i32 %gpio, i32* %gpio.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpio.addr, metadata !5480, metadata !DIExpression()), !dbg !5481
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5482, metadata !DIExpression()), !dbg !5483
  br label %do.body, !dbg !5484

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5485

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5486, metadata !DIExpression()), !dbg !5488
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5489, metadata !DIExpression()), !dbg !5488
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5488
  %conv = zext i1 %cmp to i32, !dbg !5488
  store i32 1, i32* %tmp, align 4, !dbg !5488
  %0 = load i32, i32* %tmp, align 4, !dbg !5488
  br label %do.body2, !dbg !5490

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5491

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5492

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5494, metadata !DIExpression()), !dbg !5497
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5498, metadata !DIExpression()), !dbg !5497
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5497
  %conv8 = zext i1 %cmp7 to i32, !dbg !5497
  store i32 1, i32* %tmp9, align 4, !dbg !5497
  %1 = load i32, i32* %tmp9, align 4, !dbg !5497
  %call = call i64 @arch_local_irq_save() #10, !dbg !5499
  store i64 %call, i64* %flags, align 8, !dbg !5499
  br label %do.end, !dbg !5499

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5492

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5491

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5500, !srcloc !5501
  br label %do.body12, !dbg !5500

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5502
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %2, i32 0, i32 32, !dbg !5502
  store %struct.spinlock* %bgpio_lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5503
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !5504
  %rlock.i = bitcast %union.anon.1* %4 to %struct.raw_spinlock*, !dbg !5504
  br label %do.end14, !dbg !5502

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5500

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5491

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5490

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5485

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5505
  %6 = load i32, i32* %gpio.addr, align 4, !dbg !5506
  %call19 = call i64 @bgpio_line2mask(%struct.gpio_chip* %5, i32 %6) #10, !dbg !5507
  %neg = xor i64 %call19, -1, !dbg !5508
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5509
  %bgpio_dir = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %7, i32 0, i32 34, !dbg !5510
  %8 = load i64, i64* %bgpio_dir, align 8, !dbg !5511
  %and = and i64 %8, %neg, !dbg !5511
  store i64 %and, i64* %bgpio_dir, align 8, !dbg !5511
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5512
  %reg_dir_in = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %9, i32 0, i32 29, !dbg !5514
  %10 = load i8*, i8** %reg_dir_in, align 8, !dbg !5514
  %tobool = icmp ne i8* %10, null, !dbg !5512
  br i1 %tobool, label %if.then, label %if.end, !dbg !5515

if.then:                                          ; preds = %do.end18
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5516
  %write_reg = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %11, i32 0, i32 23, !dbg !5517
  %12 = load void (i8*, i64)*, void (i8*, i64)** %write_reg, align 8, !dbg !5517
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5518
  %reg_dir_in20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %13, i32 0, i32 29, !dbg !5519
  %14 = load i8*, i8** %reg_dir_in20, align 8, !dbg !5519
  %15 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5520
  %bgpio_dir21 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %15, i32 0, i32 34, !dbg !5521
  %16 = load i64, i64* %bgpio_dir21, align 8, !dbg !5521
  %neg22 = xor i64 %16, -1, !dbg !5522
  call void %12(i8* %14, i64 %neg22) #10, !dbg !5516
  br label %if.end, !dbg !5516

if.end:                                           ; preds = %if.then, %do.end18
  %17 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5523
  %reg_dir_out = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %17, i32 0, i32 28, !dbg !5525
  %18 = load i8*, i8** %reg_dir_out, align 8, !dbg !5525
  %tobool23 = icmp ne i8* %18, null, !dbg !5523
  br i1 %tobool23, label %if.then24, label %if.end28, !dbg !5526

if.then24:                                        ; preds = %if.end
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5527
  %write_reg25 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 23, !dbg !5528
  %20 = load void (i8*, i64)*, void (i8*, i64)** %write_reg25, align 8, !dbg !5528
  %21 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5529
  %reg_dir_out26 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %21, i32 0, i32 28, !dbg !5530
  %22 = load i8*, i8** %reg_dir_out26, align 8, !dbg !5530
  %23 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5531
  %bgpio_dir27 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %23, i32 0, i32 34, !dbg !5532
  %24 = load i64, i64* %bgpio_dir27, align 8, !dbg !5532
  call void %20(i8* %22, i64 %24) #10, !dbg !5527
  br label %if.end28, !dbg !5527

if.end28:                                         ; preds = %if.then24, %if.end
  %25 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5533
  %bgpio_lock29 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %25, i32 0, i32 32, !dbg !5534
  %26 = load i64, i64* %flags, align 8, !dbg !5535
  store %struct.spinlock* %bgpio_lock29, %struct.spinlock** %lock.addr.i30, align 8
  store i64 %26, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !203, metadata !4641, metadata !DIExpression()) #7, !dbg !5536
  call void @llvm.dbg.declare(metadata !203, metadata !4645, metadata !DIExpression()) #7, !dbg !5536
  store i32 1, i32* %tmp.i, align 4, !dbg !5536
  %27 = load i32, i32* %tmp.i, align 4, !dbg !5536
  call void @llvm.dbg.declare(metadata !203, metadata !4646, metadata !DIExpression()) #7, !dbg !5537
  call void @llvm.dbg.declare(metadata !203, metadata !4652, metadata !DIExpression()) #7, !dbg !5537
  store i32 1, i32* %tmp8.i, align 4, !dbg !5537
  %28 = load i32, i32* %tmp8.i, align 4, !dbg !5537
  %29 = load i64, i64* %flags.addr.i, align 8, !dbg !5538
  call void @arch_local_irq_restore(i64 %29) #12, !dbg !5538
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5539, !srcloc !4656
  %30 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i30, align 8, !dbg !5540
  %31 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %30, i32 0, i32 0, !dbg !5540
  %rlock.i31 = bitcast %union.anon.1* %31 to %struct.raw_spinlock*, !dbg !5540
  ret i32 0, !dbg !5541
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bgpio_get_dir(%struct.gpio_chip* %gc, i32 %gpio) #0 !dbg !5542 {
entry:
  %retval = alloca i32, align 4
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %gpio.addr = alloca i32, align 4
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !5543, metadata !DIExpression()), !dbg !5544
  store i32 %gpio, i32* %gpio.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpio.addr, metadata !5545, metadata !DIExpression()), !dbg !5546
  %0 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5547
  %bgpio_dir_unreadable = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %0, i32 0, i32 30, !dbg !5549
  %1 = load i8, i8* %bgpio_dir_unreadable, align 8, !dbg !5549
  %tobool = trunc i8 %1 to i1, !dbg !5549
  br i1 %tobool, label %if.then, label %if.end3, !dbg !5550

if.then:                                          ; preds = %entry
  %2 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5551
  %bgpio_dir = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %2, i32 0, i32 34, !dbg !5554
  %3 = load i64, i64* %bgpio_dir, align 8, !dbg !5554
  %4 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5555
  %5 = load i32, i32* %gpio.addr, align 4, !dbg !5556
  %call = call i64 @bgpio_line2mask(%struct.gpio_chip* %4, i32 %5) #10, !dbg !5557
  %and = and i64 %3, %call, !dbg !5558
  %tobool1 = icmp ne i64 %and, 0, !dbg !5558
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !5559

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %retval, align 4, !dbg !5560
  br label %return, !dbg !5560

if.end:                                           ; preds = %if.then
  store i32 1, i32* %retval, align 4, !dbg !5561
  br label %return, !dbg !5561

if.end3:                                          ; preds = %entry
  %6 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5562
  %reg_dir_out = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %6, i32 0, i32 28, !dbg !5564
  %7 = load i8*, i8** %reg_dir_out, align 8, !dbg !5564
  %tobool4 = icmp ne i8* %7, null, !dbg !5562
  br i1 %tobool4, label %if.then5, label %if.end13, !dbg !5565

if.then5:                                         ; preds = %if.end3
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5566
  %read_reg = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %8, i32 0, i32 22, !dbg !5569
  %9 = load i64 (i8*)*, i64 (i8*)** %read_reg, align 8, !dbg !5569
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5570
  %reg_dir_out6 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %10, i32 0, i32 28, !dbg !5571
  %11 = load i8*, i8** %reg_dir_out6, align 8, !dbg !5571
  %call7 = call i64 %9(i8* %11) #10, !dbg !5566
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5572
  %13 = load i32, i32* %gpio.addr, align 4, !dbg !5573
  %call8 = call i64 @bgpio_line2mask(%struct.gpio_chip* %12, i32 %13) #10, !dbg !5574
  %and9 = and i64 %call7, %call8, !dbg !5575
  %tobool10 = icmp ne i64 %and9, 0, !dbg !5575
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5576

if.then11:                                        ; preds = %if.then5
  store i32 0, i32* %retval, align 4, !dbg !5577
  br label %return, !dbg !5577

if.end12:                                         ; preds = %if.then5
  store i32 1, i32* %retval, align 4, !dbg !5578
  br label %return, !dbg !5578

if.end13:                                         ; preds = %if.end3
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5579
  %reg_dir_in = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %14, i32 0, i32 29, !dbg !5581
  %15 = load i8*, i8** %reg_dir_in, align 8, !dbg !5581
  %tobool14 = icmp ne i8* %15, null, !dbg !5579
  br i1 %tobool14, label %if.then15, label %if.end24, !dbg !5582

if.then15:                                        ; preds = %if.end13
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5583
  %read_reg16 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %16, i32 0, i32 22, !dbg !5585
  %17 = load i64 (i8*)*, i64 (i8*)** %read_reg16, align 8, !dbg !5585
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5586
  %reg_dir_in17 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %18, i32 0, i32 29, !dbg !5587
  %19 = load i8*, i8** %reg_dir_in17, align 8, !dbg !5587
  %call18 = call i64 %17(i8* %19) #10, !dbg !5583
  %20 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5588
  %21 = load i32, i32* %gpio.addr, align 4, !dbg !5589
  %call19 = call i64 @bgpio_line2mask(%struct.gpio_chip* %20, i32 %21) #10, !dbg !5590
  %and20 = and i64 %call18, %call19, !dbg !5591
  %tobool21 = icmp ne i64 %and20, 0, !dbg !5591
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !5592

if.then22:                                        ; preds = %if.then15
  store i32 0, i32* %retval, align 4, !dbg !5593
  br label %return, !dbg !5593

if.end23:                                         ; preds = %if.then15
  br label %if.end24, !dbg !5594

if.end24:                                         ; preds = %if.end23, %if.end13
  store i32 1, i32* %retval, align 4, !dbg !5595
  br label %return, !dbg !5595

return:                                           ; preds = %if.end24, %if.then22, %if.end12, %if.then11, %if.end, %if.then2
  %22 = load i32, i32* %retval, align 4, !dbg !5596
  ret i32 %22, !dbg !5596
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bgpio_dir_out_err(%struct.gpio_chip* %gc, i32 %gpio, i32 %val) #0 !dbg !5597 {
entry:
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %gpio.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !5598, metadata !DIExpression()), !dbg !5599
  store i32 %gpio, i32* %gpio.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpio.addr, metadata !5600, metadata !DIExpression()), !dbg !5601
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5602, metadata !DIExpression()), !dbg !5603
  ret i32 -22, !dbg !5604
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bgpio_simple_dir_out(%struct.gpio_chip* %gc, i32 %gpio, i32 %val) #0 !dbg !5605 {
entry:
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %gpio.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !5606, metadata !DIExpression()), !dbg !5607
  store i32 %gpio, i32* %gpio.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpio.addr, metadata !5608, metadata !DIExpression()), !dbg !5609
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5610, metadata !DIExpression()), !dbg !5611
  %0 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5612
  %set = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %0, i32 0, i32 11, !dbg !5613
  %1 = load void (%struct.gpio_chip*, i32, i32)*, void (%struct.gpio_chip*, i32, i32)** %set, align 8, !dbg !5613
  %2 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5614
  %3 = load i32, i32* %gpio.addr, align 4, !dbg !5615
  %4 = load i32, i32* %val.addr, align 4, !dbg !5616
  call void %1(%struct.gpio_chip* %2, i32 %3, i32 %4) #10, !dbg !5612
  ret i32 0, !dbg !5617
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bgpio_simple_dir_in(%struct.gpio_chip* %gc, i32 %gpio) #0 !dbg !5618 {
entry:
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %gpio.addr = alloca i32, align 4
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !5619, metadata !DIExpression()), !dbg !5620
  store i32 %gpio, i32* %gpio.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpio.addr, metadata !5621, metadata !DIExpression()), !dbg !5622
  ret i32 0, !dbg !5623
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bgpio_dir_out(%struct.gpio_chip* %gc, i32 %gpio, i32 %val) #0 !dbg !5624 {
entry:
  %lock.addr.i29 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i29, metadata !4571, metadata !DIExpression()), !dbg !5625
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4577, metadata !DIExpression()), !dbg !5627
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4084, metadata !DIExpression()), !dbg !5628
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %gpio.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !5635, metadata !DIExpression()), !dbg !5636
  store i32 %gpio, i32* %gpio.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpio.addr, metadata !5637, metadata !DIExpression()), !dbg !5638
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5639, metadata !DIExpression()), !dbg !5640
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5641, metadata !DIExpression()), !dbg !5642
  br label %do.body, !dbg !5643

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5644

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5645, metadata !DIExpression()), !dbg !5647
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5648, metadata !DIExpression()), !dbg !5647
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5647
  %conv = zext i1 %cmp to i32, !dbg !5647
  store i32 1, i32* %tmp, align 4, !dbg !5647
  %0 = load i32, i32* %tmp, align 4, !dbg !5647
  br label %do.body2, !dbg !5649

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5650

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5651

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5653, metadata !DIExpression()), !dbg !5656
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5657, metadata !DIExpression()), !dbg !5656
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5656
  %conv8 = zext i1 %cmp7 to i32, !dbg !5656
  store i32 1, i32* %tmp9, align 4, !dbg !5656
  %1 = load i32, i32* %tmp9, align 4, !dbg !5656
  %call = call i64 @arch_local_irq_save() #10, !dbg !5658
  store i64 %call, i64* %flags, align 8, !dbg !5658
  br label %do.end, !dbg !5658

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5651

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5650

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5659, !srcloc !5660
  br label %do.body12, !dbg !5659

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5661
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %2, i32 0, i32 32, !dbg !5661
  store %struct.spinlock* %bgpio_lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5662
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !5663
  %rlock.i = bitcast %union.anon.1* %4 to %struct.raw_spinlock*, !dbg !5663
  br label %do.end14, !dbg !5661

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5659

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5650

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5649

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5644

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5664
  %6 = load i32, i32* %gpio.addr, align 4, !dbg !5665
  %call19 = call i64 @bgpio_line2mask(%struct.gpio_chip* %5, i32 %6) #10, !dbg !5666
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5667
  %bgpio_dir = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %7, i32 0, i32 34, !dbg !5668
  %8 = load i64, i64* %bgpio_dir, align 8, !dbg !5669
  %or = or i64 %8, %call19, !dbg !5669
  store i64 %or, i64* %bgpio_dir, align 8, !dbg !5669
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5670
  %reg_dir_in = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %9, i32 0, i32 29, !dbg !5672
  %10 = load i8*, i8** %reg_dir_in, align 8, !dbg !5672
  %tobool = icmp ne i8* %10, null, !dbg !5670
  br i1 %tobool, label %if.then, label %if.end, !dbg !5673

if.then:                                          ; preds = %do.end18
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5674
  %write_reg = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %11, i32 0, i32 23, !dbg !5675
  %12 = load void (i8*, i64)*, void (i8*, i64)** %write_reg, align 8, !dbg !5675
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5676
  %reg_dir_in20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %13, i32 0, i32 29, !dbg !5677
  %14 = load i8*, i8** %reg_dir_in20, align 8, !dbg !5677
  %15 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5678
  %bgpio_dir21 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %15, i32 0, i32 34, !dbg !5679
  %16 = load i64, i64* %bgpio_dir21, align 8, !dbg !5679
  %neg = xor i64 %16, -1, !dbg !5680
  call void %12(i8* %14, i64 %neg) #10, !dbg !5674
  br label %if.end, !dbg !5674

if.end:                                           ; preds = %if.then, %do.end18
  %17 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5681
  %reg_dir_out = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %17, i32 0, i32 28, !dbg !5683
  %18 = load i8*, i8** %reg_dir_out, align 8, !dbg !5683
  %tobool22 = icmp ne i8* %18, null, !dbg !5681
  br i1 %tobool22, label %if.then23, label %if.end27, !dbg !5684

if.then23:                                        ; preds = %if.end
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5685
  %write_reg24 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 23, !dbg !5686
  %20 = load void (i8*, i64)*, void (i8*, i64)** %write_reg24, align 8, !dbg !5686
  %21 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5687
  %reg_dir_out25 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %21, i32 0, i32 28, !dbg !5688
  %22 = load i8*, i8** %reg_dir_out25, align 8, !dbg !5688
  %23 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5689
  %bgpio_dir26 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %23, i32 0, i32 34, !dbg !5690
  %24 = load i64, i64* %bgpio_dir26, align 8, !dbg !5690
  call void %20(i8* %22, i64 %24) #10, !dbg !5685
  br label %if.end27, !dbg !5685

if.end27:                                         ; preds = %if.then23, %if.end
  %25 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5691
  %bgpio_lock28 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %25, i32 0, i32 32, !dbg !5692
  %26 = load i64, i64* %flags, align 8, !dbg !5693
  store %struct.spinlock* %bgpio_lock28, %struct.spinlock** %lock.addr.i29, align 8
  store i64 %26, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !203, metadata !4641, metadata !DIExpression()) #7, !dbg !5694
  call void @llvm.dbg.declare(metadata !203, metadata !4645, metadata !DIExpression()) #7, !dbg !5694
  store i32 1, i32* %tmp.i, align 4, !dbg !5694
  %27 = load i32, i32* %tmp.i, align 4, !dbg !5694
  call void @llvm.dbg.declare(metadata !203, metadata !4646, metadata !DIExpression()) #7, !dbg !5695
  call void @llvm.dbg.declare(metadata !203, metadata !4652, metadata !DIExpression()) #7, !dbg !5695
  store i32 1, i32* %tmp8.i, align 4, !dbg !5695
  %28 = load i32, i32* %tmp8.i, align 4, !dbg !5695
  %29 = load i64, i64* %flags.addr.i, align 8, !dbg !5696
  call void @arch_local_irq_restore(i64 %29) #12, !dbg !5696
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5697, !srcloc !4656
  %30 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i29, align 8, !dbg !5698
  %31 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %30, i32 0, i32 0, !dbg !5698
  %rlock.i30 = bitcast %union.anon.1* %31 to %struct.raw_spinlock*, !dbg !5698
  ret void, !dbg !5699
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }
attributes #12 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!146}
!llvm.module.flags = !{!147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description208", scope: !2, file: !3, line: 820, type: !143, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !107, globals: !125, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpio/gpio-mmio.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18, !24, !30, !39, !47, !53, !59, !66, !74, !80, !94, !102}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !6, line: 15, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
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
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !25, line: 54, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !31, line: 296, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35, !36, !37, !38}
!33 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!34 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!35 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!36 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!37 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!38 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !40, line: 9, baseType: !7, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!41 = !{!42, !43, !44, !45, !46}
!42 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!43 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!44 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!45 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!46 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !48, line: 26, baseType: !7, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!49 = !{!50, !51, !52}
!50 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!51 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!52 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !54, line: 44, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!55 = !{!56, !57, !58}
!56 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!57 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!58 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !60, line: 343, baseType: !7, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!61 = !{!62, !63, !64, !65}
!62 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!63 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!64 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!65 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !67, line: 524, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70, !71, !72, !73}
!69 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!72 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!73 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !67, line: 502, baseType: !7, size: 32, elements: !75)
!75 = !{!76, !77, !78, !79}
!76 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!77 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!78 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!79 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !81, line: 76, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!83 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!86 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!87 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!88 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!89 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!90 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!91 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!92 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!93 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_gc_flags", file: !95, line: 1084, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/lizy2001/genbc/linux")
!96 = !{!97, !98, !99, !100, !101}
!97 = !DIEnumerator(name: "IRQ_GC_INIT_MASK_CACHE", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "IRQ_GC_INIT_NESTED_LOCK", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "IRQ_GC_MASK_CACHE_PER_TYPE", value: 4, isUnsigned: true)
!100 = !DIEnumerator(name: "IRQ_GC_NO_MASK", value: 8, isUnsigned: true)
!101 = !DIEnumerator(name: "IRQ_GC_BE_IO", value: 16, isUnsigned: true)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !103, line: 10, baseType: !7, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!104 = !{!105, !106}
!105 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!106 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!107 = !{!108, !109, !110, !113, !116, !118}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !112)
!112 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !115)
!115 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !121, line: 23, baseType: !122)
!121 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !123, line: 31, baseType: !124)
!123 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!124 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!125 = !{!0, !126, !133, !138}
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author209", scope: !2, file: !3, line: 821, type: !128, isLocal: true, isDefinition: true, align: 8)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 488, elements: !131)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!131 = !{!132}
!132 = !DISubrange(count: 61)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file210", scope: !2, file: !3, line: 822, type: !135, isLocal: true, isDefinition: true, align: 8)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 352, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 44)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license211", scope: !2, file: !3, line: 822, type: !140, isLocal: true, isDefinition: true, align: 8)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 200, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 25)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 584, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 73)
!146 = !{!"rsp"}
!147 = !{i32 7, !"Dwarf Version", i32 4}
!148 = !{i32 2, !"Debug Info Version", i32 3}
!149 = !{i32 1, !"wchar_size", i32 2}
!150 = !{i32 1, !"Code Model", i32 2}
!151 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!152 = distinct !DISubprogram(name: "bgpio_init", scope: !3, file: !3, line: 599, type: !153, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !203)
!153 = !DISubroutineType(types: !154)
!154 = !{!155, !156, !166, !109, !302, !302, !302, !302, !302, !109}
!155 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_chip", file: !158, line: 358, size: 4608, elements: !159)
!158 = !DIFile(filename: "./include/linux/gpio/driver.h", directory: "/home/lizy2001/genbc/linux")
!159 = !{!160, !162, !165, !3956, !3957, !3961, !3965, !3966, !3967, !3971, !3972, !3976, !3980, !3984, !3988, !3989, !3993, !3997, !4001, !4002, !4003, !4006, !4007, !4011, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4069, !4070, !4071, !4072}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !157, file: !158, line: 359, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "gpiodev", scope: !157, file: !158, line: 360, baseType: !163, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_device", file: !158, line: 18, flags: DIFlagFwdDecl)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !157, file: !158, line: 361, baseType: !166, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !168)
!168 = !{!169, !3208, !3209, !3212, !3213, !3264, !3355, !3356, !3357, !3358, !3359, !3368, !3473, !3486, !3883, !3884, !3888, !3890, !3891, !3892, !3896, !3902, !3903, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3944, !3945, !3946, !3949, !3952, !3953, !3954, !3955}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !167, file: !60, line: 462, baseType: !170, size: 512)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !171, line: 64, size: 512, elements: !172)
!171 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!172 = !{!173, !174, !181, !183, !243, !3071, !3198, !3203, !3204, !3205, !3206, !3207}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !170, file: !171, line: 65, baseType: !161, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !170, file: !171, line: 66, baseType: !175, size: 128, offset: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !176, line: 178, size: 128, elements: !177)
!176 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!177 = !{!178, !180}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !175, file: !176, line: 179, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !175, file: !176, line: 179, baseType: !179, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !170, file: !171, line: 67, baseType: !182, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !170, file: !171, line: 68, baseType: !184, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !171, line: 192, size: 704, elements: !186)
!186 = !{!187, !188, !204, !205}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !185, file: !171, line: 193, baseType: !175, size: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !185, file: !171, line: 194, baseType: !189, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !190, line: 83, baseType: !191)
!190 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !190, line: 71, elements: !192)
!192 = !{!193}
!193 = !DIDerivedType(tag: DW_TAG_member, scope: !191, file: !190, line: 72, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !191, file: !190, line: 72, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !194, file: !190, line: 73, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !190, line: 20, elements: !198)
!198 = !{!199}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !197, file: !190, line: 21, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !201, line: 25, baseType: !202)
!201 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !201, line: 25, elements: !203)
!203 = !{}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !185, file: !171, line: 195, baseType: !170, size: 512, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !185, file: !171, line: 196, baseType: !206, size: 64, offset: 640)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !171, line: 156, size: 192, elements: !209)
!209 = !{!210, !215, !220}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !208, file: !171, line: 157, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!155, !184, !182}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !208, file: !171, line: 158, baseType: !216, size: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!161, !184, !182}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !208, file: !171, line: 159, baseType: !221, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!155, !184, !182, !225}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !171, line: 148, size: 20736, elements: !227)
!227 = !{!228, !233, !237, !238, !242}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !226, file: !171, line: 149, baseType: !229, size: 192)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 192, elements: !231)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!231 = !{!232}
!232 = !DISubrange(count: 3)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !226, file: !171, line: 150, baseType: !234, size: 4096, offset: 192)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 4096, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !226, file: !171, line: 151, baseType: !155, size: 32, offset: 4288)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !226, file: !171, line: 152, baseType: !239, size: 16384, offset: 4320)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 16384, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 2048)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !226, file: !171, line: 153, baseType: !155, size: 32, offset: 20704)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !170, file: !171, line: 69, baseType: !244, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !171, line: 138, size: 448, elements: !246)
!246 = !{!247, !251, !279, !281, !3033, !3061, !3065}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !245, file: !171, line: 139, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !182}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !245, file: !171, line: 140, baseType: !252, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !255, line: 230, size: 128, elements: !256)
!255 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!256 = !{!257, !272}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !254, file: !255, line: 231, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!261, !182, !266, !230}
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !176, line: 60, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !263, line: 73, baseType: !264)
!263 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !263, line: 15, baseType: !265)
!265 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !255, line: 30, size: 128, elements: !268)
!268 = !{!269, !270}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !267, file: !255, line: 31, baseType: !161, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !267, file: !255, line: 32, baseType: !271, size: 16, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !176, line: 19, baseType: !115)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !254, file: !255, line: 232, baseType: !273, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!261, !182, !266, !161, !276}
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !176, line: 55, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !263, line: 72, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !263, line: 16, baseType: !109)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !245, file: !171, line: 141, baseType: !280, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !245, file: !171, line: 142, baseType: !282, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !255, line: 84, size: 320, elements: !286)
!286 = !{!287, !288, !292, !3030, !3031}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !285, file: !255, line: 85, baseType: !161, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !285, file: !255, line: 86, baseType: !289, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!271, !182, !266, !155}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !285, file: !255, line: 88, baseType: !293, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!271, !182, !296, !155}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !255, line: 168, size: 448, elements: !298)
!298 = !{!299, !300, !301, !303, !3025, !3026}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !297, file: !255, line: 169, baseType: !267, size: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !297, file: !255, line: 170, baseType: !276, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !297, file: !255, line: 171, baseType: !302, size: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !297, file: !255, line: 172, baseType: !304, size: 64, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!261, !307, !182, !296, !230, !480, !276}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !309)
!309 = !{!310, !328, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3008, !3009, !3018, !3019, !3020, !3021, !3022, !3023, !3024}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !308, file: !31, line: 920, baseType: !311, size: 128)
!311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !308, file: !31, line: 917, size: 128, elements: !312)
!312 = !{!313, !319}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !311, file: !31, line: 918, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !315, line: 58, size: 64, elements: !316)
!315 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!316 = !{!317}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !315, line: 59, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !311, file: !31, line: 919, baseType: !320, size: 128, align: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !176, line: 216, size: 128, align: 64, elements: !321)
!321 = !{!322, !324}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !176, line: 217, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !320, file: !176, line: 218, baseType: !325, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !323}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !308, file: !31, line: 921, baseType: !329, size: 128, offset: 128)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !330, line: 8, size: 128, elements: !331)
!330 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!331 = !{!332, !336}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !329, file: !330, line: 9, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !335, line: 18, flags: DIFlagFwdDecl)
!335 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!336 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !329, file: !330, line: 10, baseType: !337, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !335, line: 89, size: 1536, elements: !339)
!339 = !{!340, !341, !351, !359, !360, !377, !2958, !2960, !2972, !2973, !2974, !2975, !2976, !2982, !2983, !2984}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !338, file: !335, line: 91, baseType: !7, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !338, file: !335, line: 92, baseType: !342, size: 32, offset: 32)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !343, line: 277, baseType: !344)
!343 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !343, line: 277, size: 32, elements: !345)
!345 = !{!346}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !344, file: !343, line: 277, baseType: !347, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !343, line: 70, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !343, line: 65, size: 32, elements: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !348, file: !343, line: 66, baseType: !7, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !338, file: !335, line: 93, baseType: !352, size: 128, offset: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !353, line: 38, size: 128, elements: !354)
!353 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!354 = !{!355, !357}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !352, file: !353, line: 39, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !352, file: !353, line: 39, baseType: !358, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !338, file: !335, line: 94, baseType: !337, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !338, file: !335, line: 95, baseType: !361, size: 128, offset: 256)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !335, line: 47, size: 128, elements: !362)
!362 = !{!363, !374}
!363 = !DIDerivedType(tag: DW_TAG_member, scope: !361, file: !335, line: 48, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !361, file: !335, line: 48, size: 64, elements: !365)
!365 = !{!366, !373}
!366 = !DIDerivedType(tag: DW_TAG_member, scope: !364, file: !335, line: 49, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !364, file: !335, line: 49, size: 64, elements: !368)
!368 = !{!369, !372}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !367, file: !335, line: 50, baseType: !370, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !121, line: 21, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !123, line: 27, baseType: !7)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !367, file: !335, line: 50, baseType: !370, size: 32, offset: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !364, file: !335, line: 52, baseType: !120, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !361, file: !335, line: 54, baseType: !375, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !338, file: !335, line: 96, baseType: !378, size: 64, offset: 384)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !380)
!380 = !{!381, !382, !383, !391, !398, !399, !547, !2670, !2671, !2672, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2934, !2942, !2943, !2944, !2954, !2955, !2956, !2957}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !379, file: !31, line: 611, baseType: !271, size: 16)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !379, file: !31, line: 612, baseType: !115, size: 16, offset: 16)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !379, file: !31, line: 613, baseType: !384, size: 32, offset: 32)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !385, line: 23, baseType: !386)
!385 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !385, line: 21, size: 32, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !386, file: !385, line: 22, baseType: !389, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !176, line: 32, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !263, line: 49, baseType: !7)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !379, file: !31, line: 614, baseType: !392, size: 32, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !385, line: 28, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !385, line: 26, size: 32, elements: !394)
!394 = !{!395}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !393, file: !385, line: 27, baseType: !396, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !176, line: 33, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !263, line: 50, baseType: !7)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !379, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !379, file: !31, line: 622, baseType: !400, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !403)
!403 = !{!404, !408, !421, !425, !431, !435, !441, !445, !449, !453, !457, !458, !464, !468, !494, !523, !527, !533, !538, !542, !543}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !402, file: !31, line: 1865, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!337, !378, !337, !7}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !402, file: !31, line: 1866, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!161, !337, !378, !412}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !414, line: 10, size: 128, elements: !415)
!414 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!415 = !{!416, !420}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !413, file: !414, line: 11, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !302}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !413, file: !414, line: 12, baseType: !302, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !402, file: !31, line: 1867, baseType: !422, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!155, !378, !155}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !402, file: !31, line: 1868, baseType: !426, size: 64, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!429, !378, !155}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !402, file: !31, line: 1870, baseType: !432, size: 64, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!155, !337, !230, !155}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !402, file: !31, line: 1872, baseType: !436, size: 64, offset: 320)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!155, !378, !337, !271, !439}
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !176, line: 30, baseType: !440)
!440 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !402, file: !31, line: 1873, baseType: !442, size: 64, offset: 384)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!155, !337, !378, !337}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !402, file: !31, line: 1874, baseType: !446, size: 64, offset: 448)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!155, !378, !337}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !402, file: !31, line: 1875, baseType: !450, size: 64, offset: 512)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!155, !378, !337, !161}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !402, file: !31, line: 1876, baseType: !454, size: 64, offset: 576)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!155, !378, !337, !271}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !402, file: !31, line: 1877, baseType: !446, size: 64, offset: 640)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !402, file: !31, line: 1878, baseType: !459, size: 64, offset: 704)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!155, !378, !337, !271, !462}
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !176, line: 16, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !176, line: 13, baseType: !370)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !402, file: !31, line: 1879, baseType: !465, size: 64, offset: 768)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!155, !378, !337, !378, !337, !7}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !402, file: !31, line: 1881, baseType: !469, size: 64, offset: 832)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!155, !337, !472}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !474)
!474 = !{!475, !476, !477, !478, !479, !483, !491, !492, !493}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !473, file: !31, line: 220, baseType: !7, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !473, file: !31, line: 221, baseType: !271, size: 16, offset: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !473, file: !31, line: 222, baseType: !384, size: 32, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !473, file: !31, line: 223, baseType: !392, size: 32, offset: 96)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !473, file: !31, line: 224, baseType: !480, size: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !176, line: 46, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !263, line: 88, baseType: !482)
!482 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !473, file: !31, line: 225, baseType: !484, size: 128, offset: 192)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !485, line: 13, size: 128, elements: !486)
!485 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!486 = !{!487, !490}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !484, file: !485, line: 14, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !485, line: 8, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !123, line: 30, baseType: !482)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !484, file: !485, line: 15, baseType: !265, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !473, file: !31, line: 226, baseType: !484, size: 128, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !473, file: !31, line: 227, baseType: !484, size: 128, offset: 448)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !473, file: !31, line: 234, baseType: !307, size: 64, offset: 576)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !402, file: !31, line: 1882, baseType: !495, size: 64, offset: 896)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!155, !498, !500, !370, !7}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !502, line: 22, size: 1152, elements: !503)
!502 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!503 = !{!504, !505, !506, !507, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !501, file: !502, line: 23, baseType: !370, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !501, file: !502, line: 24, baseType: !271, size: 16, offset: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !501, file: !502, line: 25, baseType: !7, size: 32, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !501, file: !502, line: 26, baseType: !508, size: 32, offset: 96)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !176, line: 104, baseType: !370)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !501, file: !502, line: 27, baseType: !120, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !501, file: !502, line: 28, baseType: !120, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !501, file: !502, line: 37, baseType: !120, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !501, file: !502, line: 38, baseType: !462, size: 32, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !501, file: !502, line: 39, baseType: !462, size: 32, offset: 352)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !501, file: !502, line: 40, baseType: !384, size: 32, offset: 384)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !501, file: !502, line: 41, baseType: !392, size: 32, offset: 416)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !501, file: !502, line: 42, baseType: !480, size: 64, offset: 448)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !501, file: !502, line: 43, baseType: !484, size: 128, offset: 512)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !501, file: !502, line: 44, baseType: !484, size: 128, offset: 640)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !501, file: !502, line: 45, baseType: !484, size: 128, offset: 768)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !501, file: !502, line: 46, baseType: !484, size: 128, offset: 896)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !501, file: !502, line: 47, baseType: !120, size: 64, offset: 1024)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !501, file: !502, line: 48, baseType: !120, size: 64, offset: 1088)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !402, file: !31, line: 1883, baseType: !524, size: 64, offset: 960)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!261, !337, !230, !276}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !402, file: !31, line: 1884, baseType: !528, size: 64, offset: 1024)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!155, !378, !531, !120, !120}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !402, file: !31, line: 1886, baseType: !534, size: 64, offset: 1088)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!155, !378, !537, !155}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !402, file: !31, line: 1887, baseType: !539, size: 64, offset: 1152)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!155, !378, !337, !307, !7, !271}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !402, file: !31, line: 1890, baseType: !454, size: 64, offset: 1216)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !402, file: !31, line: 1891, baseType: !544, size: 64, offset: 1280)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!155, !378, !429, !155}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !379, file: !31, line: 623, baseType: !548, size: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !550)
!550 = !{!551, !552, !553, !554, !555, !556, !606, !2277, !2359, !2442, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2458, !2462, !2463, !2466, !2467, !2470, !2471, !2472, !2513, !2540, !2541, !2542, !2543, !2544, !2545, !2548, !2550, !2557, !2558, !2560, !2561, !2562, !2621, !2622, !2637, !2638, !2639, !2640, !2641, !2644, !2645, !2646, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !549, file: !31, line: 1417, baseType: !175, size: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !549, file: !31, line: 1418, baseType: !462, size: 32, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !549, file: !31, line: 1419, baseType: !112, size: 8, offset: 160)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !549, file: !31, line: 1420, baseType: !109, size: 64, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !549, file: !31, line: 1421, baseType: !480, size: 64, offset: 256)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !549, file: !31, line: 1422, baseType: !557, size: 64, offset: 320)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !559)
!559 = !{!560, !561, !562, !569, !573, !577, !581, !585, !586, !596, !599, !600, !601, !603, !604, !605}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !558, file: !31, line: 2229, baseType: !161, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !558, file: !31, line: 2230, baseType: !155, size: 32, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !558, file: !31, line: 2238, baseType: !563, size: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{!155, !566}
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !568, line: 28, flags: DIFlagFwdDecl)
!568 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!569 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !558, file: !31, line: 2239, baseType: !570, size: 64, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !572)
!572 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !558, file: !31, line: 2240, baseType: !574, size: 64, offset: 256)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!337, !557, !155, !161, !302}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !558, file: !31, line: 2242, baseType: !578, size: 64, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !548}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !558, file: !31, line: 2243, baseType: !582, size: 64, offset: 384)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !584, line: 76, flags: DIFlagFwdDecl)
!584 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!585 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !558, file: !31, line: 2244, baseType: !557, size: 64, offset: 448)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !558, file: !31, line: 2245, baseType: !587, size: 64, offset: 512)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !176, line: 182, size: 64, elements: !588)
!588 = !{!589}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !587, file: !176, line: 183, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !176, line: 186, size: 128, elements: !592)
!592 = !{!593, !594}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !591, file: !176, line: 187, baseType: !590, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !591, file: !176, line: 187, baseType: !595, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !558, file: !31, line: 2247, baseType: !597, offset: 576)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !598, line: 187, elements: !203)
!598 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!599 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !558, file: !31, line: 2248, baseType: !597, offset: 576)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !558, file: !31, line: 2249, baseType: !597, offset: 576)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !558, file: !31, line: 2250, baseType: !602, offset: 576)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !597, elements: !231)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !558, file: !31, line: 2252, baseType: !597, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !558, file: !31, line: 2253, baseType: !597, offset: 576)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !558, file: !31, line: 2254, baseType: !597, offset: 576)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !549, file: !31, line: 1423, baseType: !607, size: 64, offset: 384)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !609)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !610)
!610 = !{!611, !615, !619, !620, !624, !630, !634, !635, !636, !640, !644, !645, !646, !647, !653, !658, !659, !715, !716, !717, !718, !2261, !2276}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !609, file: !31, line: 1936, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!378, !548}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !609, file: !31, line: 1937, baseType: !616, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !378}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !609, file: !31, line: 1938, baseType: !616, size: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !609, file: !31, line: 1940, baseType: !621, size: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !378, !155}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !609, file: !31, line: 1941, baseType: !625, size: 64, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!155, !378, !628}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 289, flags: DIFlagFwdDecl)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !609, file: !31, line: 1942, baseType: !631, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!155, !378}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !609, file: !31, line: 1943, baseType: !616, size: 64, offset: 384)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !609, file: !31, line: 1944, baseType: !578, size: 64, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !609, file: !31, line: 1945, baseType: !637, size: 64, offset: 512)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!155, !548, !155}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !609, file: !31, line: 1946, baseType: !641, size: 64, offset: 576)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!155, !548}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !609, file: !31, line: 1947, baseType: !641, size: 64, offset: 640)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !609, file: !31, line: 1948, baseType: !641, size: 64, offset: 704)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !609, file: !31, line: 1949, baseType: !641, size: 64, offset: 768)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !609, file: !31, line: 1950, baseType: !648, size: 64, offset: 832)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!155, !337, !651}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !609, file: !31, line: 1951, baseType: !654, size: 64, offset: 896)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!155, !548, !657, !230}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !609, file: !31, line: 1952, baseType: !578, size: 64, offset: 960)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !609, file: !31, line: 1954, baseType: !660, size: 64, offset: 1024)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!155, !663, !337}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !665, line: 16, size: 896, elements: !666)
!665 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!666 = !{!667, !668, !669, !670, !671, !672, !673, !674, !688, !710, !711, !714}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !664, file: !665, line: 17, baseType: !230, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !664, file: !665, line: 18, baseType: !276, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !664, file: !665, line: 19, baseType: !276, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !664, file: !665, line: 20, baseType: !276, size: 64, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !664, file: !665, line: 21, baseType: !276, size: 64, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !664, file: !665, line: 22, baseType: !480, size: 64, offset: 320)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !664, file: !665, line: 23, baseType: !480, size: 64, offset: 384)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !664, file: !665, line: 24, baseType: !675, size: 192, offset: 448)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !676, line: 53, size: 192, elements: !677)
!676 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!677 = !{!678, !686, !687}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !675, file: !676, line: 54, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !680, line: 13, baseType: !681)
!680 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !176, line: 175, baseType: !682)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !176, line: 173, size: 64, elements: !683)
!683 = !{!684}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !682, file: !176, line: 174, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !121, line: 22, baseType: !489)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !675, file: !676, line: 55, baseType: !189, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !675, file: !676, line: 59, baseType: !175, size: 128, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !664, file: !665, line: 25, baseType: !689, size: 64, offset: 640)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !691)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !665, line: 31, size: 256, elements: !692)
!692 = !{!693, !698, !702, !706}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !691, file: !665, line: 32, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!302, !663, !697}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !691, file: !665, line: 33, baseType: !699, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{null, !663, !302}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !691, file: !665, line: 34, baseType: !703, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!302, !663, !302, !697}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !691, file: !665, line: 35, baseType: !707, size: 64, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!155, !663, !302}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !664, file: !665, line: 26, baseType: !155, size: 32, offset: 704)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !664, file: !665, line: 27, baseType: !712, size: 64, offset: 768)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !664, file: !665, line: 28, baseType: !302, size: 64, offset: 832)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !609, file: !31, line: 1955, baseType: !660, size: 64, offset: 1088)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !609, file: !31, line: 1956, baseType: !660, size: 64, offset: 1152)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !609, file: !31, line: 1957, baseType: !660, size: 64, offset: 1216)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !609, file: !31, line: 1963, baseType: !719, size: 64, offset: 1280)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!155, !548, !722, !745}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !724, line: 68, size: 512, align: 128, elements: !725)
!724 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!725 = !{!726, !727, !2253, !2260}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !723, file: !724, line: 69, baseType: !109, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, scope: !723, file: !724, line: 77, baseType: !728, size: 320, offset: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !723, file: !724, line: 77, size: 320, elements: !729)
!729 = !{!730, !911, !916, !944, !952, !958, !2245, !2252}
!730 = !DIDerivedType(tag: DW_TAG_member, scope: !728, file: !724, line: 78, baseType: !731, size: 320)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !728, file: !724, line: 78, size: 320, elements: !732)
!732 = !{!733, !734, !909, !910}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !731, file: !724, line: 84, baseType: !175, size: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !731, file: !724, line: 86, baseType: !735, size: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !737)
!737 = !{!738, !739, !747, !748, !753, !768, !777, !778, !779, !780, !902, !903, !906, !907, !908}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !736, file: !31, line: 452, baseType: !378, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !736, file: !31, line: 453, baseType: !740, size: 128, offset: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !741, line: 292, size: 128, elements: !742)
!741 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!742 = !{!743, !744, !746}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !740, file: !741, line: 293, baseType: !189)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !740, file: !741, line: 295, baseType: !745, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !176, line: 148, baseType: !7)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !740, file: !741, line: 296, baseType: !302, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !736, file: !31, line: 454, baseType: !745, size: 32, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !736, file: !31, line: 455, baseType: !749, size: 32, offset: 224)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !176, line: 168, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !176, line: 166, size: 32, elements: !751)
!751 = !{!752}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !750, file: !176, line: 167, baseType: !155, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !736, file: !31, line: 460, baseType: !754, size: 128, offset: 256)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !755, line: 125, size: 128, elements: !756)
!755 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!756 = !{!757, !767}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !754, file: !755, line: 126, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !755, line: 31, size: 64, elements: !759)
!759 = !{!760}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !758, file: !755, line: 32, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !755, line: 24, size: 192, align: 64, elements: !763)
!763 = !{!764, !765, !766}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !762, file: !755, line: 25, baseType: !109, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !762, file: !755, line: 26, baseType: !761, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !762, file: !755, line: 27, baseType: !761, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !754, file: !755, line: 127, baseType: !761, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !736, file: !31, line: 461, baseType: !769, size: 256, offset: 384)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !770, line: 35, size: 256, elements: !771)
!770 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!771 = !{!772, !773, !774, !776}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !769, file: !770, line: 36, baseType: !679, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !769, file: !770, line: 42, baseType: !679, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !769, file: !770, line: 46, baseType: !775, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !190, line: 29, baseType: !197)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !769, file: !770, line: 47, baseType: !175, size: 128, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !736, file: !31, line: 462, baseType: !109, size: 64, offset: 640)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !736, file: !31, line: 463, baseType: !109, size: 64, offset: 704)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !736, file: !31, line: 464, baseType: !109, size: 64, offset: 768)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !736, file: !31, line: 465, baseType: !781, size: 64, offset: 832)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !783)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !784)
!784 = !{!785, !789, !793, !797, !801, !805, !811, !817, !821, !826, !830, !834, !838, !866, !870, !876, !877, !878, !882, !887, !891, !898}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !783, file: !31, line: 368, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!155, !722, !628}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !783, file: !31, line: 369, baseType: !790, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!155, !307, !722}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !783, file: !31, line: 372, baseType: !794, size: 64, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!155, !735, !628}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !783, file: !31, line: 375, baseType: !798, size: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!155, !722}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !783, file: !31, line: 381, baseType: !802, size: 64, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!155, !307, !735, !179, !7}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !783, file: !31, line: 383, baseType: !806, size: 64, offset: 320)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{null, !809}
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !783, file: !31, line: 385, baseType: !812, size: 64, offset: 384)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!155, !307, !735, !480, !7, !7, !815, !816}
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !783, file: !31, line: 388, baseType: !818, size: 64, offset: 448)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!155, !307, !735, !480, !7, !7, !722, !302}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !783, file: !31, line: 393, baseType: !822, size: 64, offset: 512)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!825, !735, !825}
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !176, line: 125, baseType: !120)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !783, file: !31, line: 394, baseType: !827, size: 64, offset: 576)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{null, !722, !7, !7}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !783, file: !31, line: 395, baseType: !831, size: 64, offset: 640)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!155, !722, !745}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !783, file: !31, line: 396, baseType: !835, size: 64, offset: 704)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !722}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !783, file: !31, line: 397, baseType: !839, size: 64, offset: 768)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!261, !842, !864}
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !844)
!844 = !{!845, !846, !847, !851, !852, !853, !856, !857}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !843, file: !31, line: 321, baseType: !307, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !843, file: !31, line: 326, baseType: !480, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !843, file: !31, line: 327, baseType: !848, size: 64, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !842, !265, !265}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !843, file: !31, line: 328, baseType: !302, size: 64, offset: 192)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !843, file: !31, line: 329, baseType: !155, size: 32, offset: 256)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !843, file: !31, line: 330, baseType: !854, size: 16, offset: 288)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !121, line: 19, baseType: !855)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !123, line: 24, baseType: !115)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !843, file: !31, line: 331, baseType: !854, size: 16, offset: 304)
!857 = !DIDerivedType(tag: DW_TAG_member, scope: !843, file: !31, line: 332, baseType: !858, size: 64, offset: 320)
!858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !843, file: !31, line: 332, size: 64, elements: !859)
!859 = !{!860, !861}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !858, file: !31, line: 333, baseType: !7, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !858, file: !31, line: 334, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !783, file: !31, line: 402, baseType: !867, size: 64, offset: 832)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!155, !735, !722, !722, !5}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !783, file: !31, line: 404, baseType: !871, size: 64, offset: 896)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{!439, !722, !874}
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !875, line: 305, baseType: !7)
!875 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!876 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !783, file: !31, line: 405, baseType: !835, size: 64, offset: 960)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !783, file: !31, line: 406, baseType: !798, size: 64, offset: 1024)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !783, file: !31, line: 407, baseType: !879, size: 64, offset: 1088)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!155, !722, !109, !109}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !783, file: !31, line: 409, baseType: !883, size: 64, offset: 1152)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{null, !722, !886, !886}
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !783, file: !31, line: 410, baseType: !888, size: 64, offset: 1216)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{!155, !735, !722}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !783, file: !31, line: 413, baseType: !892, size: 64, offset: 1280)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!155, !895, !307, !897}
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !783, file: !31, line: 415, baseType: !899, size: 64, offset: 1344)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{null, !307}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !736, file: !31, line: 466, baseType: !109, size: 64, offset: 896)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !736, file: !31, line: 467, baseType: !904, size: 32, offset: 960)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !905, line: 8, baseType: !370)
!905 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!906 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !736, file: !31, line: 468, baseType: !189, offset: 992)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !736, file: !31, line: 469, baseType: !175, size: 128, offset: 1024)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !736, file: !31, line: 470, baseType: !302, size: 64, offset: 1152)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !731, file: !724, line: 87, baseType: !109, size: 64, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !731, file: !724, line: 94, baseType: !109, size: 64, offset: 256)
!911 = !DIDerivedType(tag: DW_TAG_member, scope: !728, file: !724, line: 96, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !728, file: !724, line: 96, size: 64, elements: !913)
!913 = !{!914}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !912, file: !724, line: 101, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !176, line: 143, baseType: !120)
!916 = !DIDerivedType(tag: DW_TAG_member, scope: !728, file: !724, line: 103, baseType: !917, size: 320)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !728, file: !724, line: 103, size: 320, elements: !918)
!918 = !{!919, !929, !932, !933}
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !724, line: 104, baseType: !920, size: 128)
!920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !917, file: !724, line: 104, size: 128, elements: !921)
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !920, file: !724, line: 105, baseType: !175, size: 128)
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !920, file: !724, line: 106, baseType: !924, size: 128)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !920, file: !724, line: 106, size: 128, elements: !925)
!925 = !{!926, !927, !928}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !924, file: !724, line: 107, baseType: !722, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !924, file: !724, line: 109, baseType: !155, size: 32, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !924, file: !724, line: 110, baseType: !155, size: 32, offset: 96)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !917, file: !724, line: 117, baseType: !930, size: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !724, line: 117, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !917, file: !724, line: 119, baseType: !302, size: 64, offset: 192)
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !724, line: 120, baseType: !934, size: 64, offset: 256)
!934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !917, file: !724, line: 120, size: 64, elements: !935)
!935 = !{!936, !937, !938}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !934, file: !724, line: 121, baseType: !302, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !934, file: !724, line: 122, baseType: !109, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !934, file: !724, line: 123, baseType: !939, size: 32)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !934, file: !724, line: 123, size: 32, elements: !940)
!940 = !{!941, !942, !943}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !939, file: !724, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !939, file: !724, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !939, file: !724, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!944 = !DIDerivedType(tag: DW_TAG_member, scope: !728, file: !724, line: 130, baseType: !945, size: 192)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !728, file: !724, line: 130, size: 192, elements: !946)
!946 = !{!947, !948, !949, !950, !951}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !945, file: !724, line: 131, baseType: !109, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !945, file: !724, line: 134, baseType: !112, size: 8, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !945, file: !724, line: 135, baseType: !112, size: 8, offset: 72)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !945, file: !724, line: 136, baseType: !749, size: 32, offset: 96)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !945, file: !724, line: 137, baseType: !7, size: 32, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, scope: !728, file: !724, line: 139, baseType: !953, size: 256)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !728, file: !724, line: 139, size: 256, elements: !954)
!954 = !{!955, !956, !957}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !953, file: !724, line: 140, baseType: !109, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !953, file: !724, line: 141, baseType: !749, size: 32, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !953, file: !724, line: 143, baseType: !175, size: 128, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, scope: !728, file: !724, line: 145, baseType: !959, size: 256)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !728, file: !724, line: 145, size: 256, elements: !960)
!960 = !{!961, !962, !965, !966, !2244}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !959, file: !724, line: 146, baseType: !109, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !959, file: !724, line: 147, baseType: !963, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !964, line: 509, baseType: !722)
!964 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !959, file: !724, line: 148, baseType: !109, size: 64, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !959, file: !724, line: 149, baseType: !967, size: 64, offset: 192)
!967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !959, file: !724, line: 149, size: 64, elements: !968)
!968 = !{!969, !2243}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !967, file: !724, line: 150, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !724, line: 388, size: 7296, elements: !972)
!972 = !{!973, !2239}
!973 = !DIDerivedType(tag: DW_TAG_member, scope: !971, file: !724, line: 389, baseType: !974, size: 7296)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !724, line: 389, size: 7296, elements: !975)
!975 = !{!976, !1014, !1015, !1016, !1020, !1021, !1022, !1023, !1024, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1063, !1071, !1074, !1114, !1115, !2223, !2224, !2227, !2228, !2229, !2232, !2233, !2234, !2237, !2238}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !974, file: !724, line: 390, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !724, line: 305, size: 1472, elements: !979)
!979 = !{!980, !981, !982, !983, !984, !985, !986, !987, !994, !995, !1000, !1001, !1004, !1008, !1009, !1010, !1011, !1012}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !978, file: !724, line: 308, baseType: !109, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !978, file: !724, line: 309, baseType: !109, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !978, file: !724, line: 313, baseType: !977, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !978, file: !724, line: 313, baseType: !977, size: 64, offset: 192)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !978, file: !724, line: 315, baseType: !762, size: 192, align: 64, offset: 256)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !978, file: !724, line: 323, baseType: !109, size: 64, offset: 448)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !978, file: !724, line: 327, baseType: !970, size: 64, offset: 512)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !978, file: !724, line: 333, baseType: !988, size: 64, offset: 576)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !964, line: 284, baseType: !989)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !964, line: 284, size: 64, elements: !990)
!990 = !{!991}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !989, file: !964, line: 284, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !993, line: 19, baseType: !109)
!993 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!994 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !978, file: !724, line: 334, baseType: !109, size: 64, offset: 640)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !978, file: !724, line: 343, baseType: !996, size: 256, offset: 704)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !978, file: !724, line: 340, size: 256, elements: !997)
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !996, file: !724, line: 341, baseType: !762, size: 192, align: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !996, file: !724, line: 342, baseType: !109, size: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !978, file: !724, line: 351, baseType: !175, size: 128, offset: 960)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !978, file: !724, line: 353, baseType: !1002, size: 64, offset: 1088)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !724, line: 353, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !978, file: !724, line: 356, baseType: !1005, size: 64, offset: 1152)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1007)
!1007 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !724, line: 356, flags: DIFlagFwdDecl)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !978, file: !724, line: 359, baseType: !109, size: 64, offset: 1216)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !978, file: !724, line: 361, baseType: !307, size: 64, offset: 1280)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !978, file: !724, line: 362, baseType: !302, size: 64, offset: 1344)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !978, file: !724, line: 365, baseType: !679, size: 64, offset: 1408)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !978, file: !724, line: 373, baseType: !1013, offset: 1472)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !724, line: 296, elements: !203)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !974, file: !724, line: 391, baseType: !758, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !974, file: !724, line: 392, baseType: !120, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !974, file: !724, line: 394, baseType: !1017, size: 64, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!109, !307, !109, !109, !109, !109}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !974, file: !724, line: 398, baseType: !109, size: 64, offset: 256)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !974, file: !724, line: 399, baseType: !109, size: 64, offset: 320)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !974, file: !724, line: 405, baseType: !109, size: 64, offset: 384)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !974, file: !724, line: 406, baseType: !109, size: 64, offset: 448)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !974, file: !724, line: 407, baseType: !1025, size: 64, offset: 512)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !964, line: 286, baseType: !1027)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !964, line: 286, size: 64, elements: !1028)
!1028 = !{!1029}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1027, file: !964, line: 286, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !993, line: 18, baseType: !109)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !974, file: !724, line: 416, baseType: !749, size: 32, offset: 576)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !974, file: !724, line: 428, baseType: !749, size: 32, offset: 608)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !974, file: !724, line: 437, baseType: !749, size: 32, offset: 640)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !974, file: !724, line: 447, baseType: !749, size: 32, offset: 672)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !974, file: !724, line: 450, baseType: !679, size: 64, offset: 704)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !974, file: !724, line: 452, baseType: !155, size: 32, offset: 768)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !974, file: !724, line: 454, baseType: !189, offset: 800)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !974, file: !724, line: 457, baseType: !769, size: 256, offset: 832)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !974, file: !724, line: 459, baseType: !175, size: 128, offset: 1088)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !974, file: !724, line: 466, baseType: !109, size: 64, offset: 1216)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !974, file: !724, line: 467, baseType: !109, size: 64, offset: 1280)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !974, file: !724, line: 469, baseType: !109, size: 64, offset: 1344)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !974, file: !724, line: 470, baseType: !109, size: 64, offset: 1408)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !974, file: !724, line: 471, baseType: !681, size: 64, offset: 1472)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !974, file: !724, line: 472, baseType: !109, size: 64, offset: 1536)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !974, file: !724, line: 473, baseType: !109, size: 64, offset: 1600)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !974, file: !724, line: 474, baseType: !109, size: 64, offset: 1664)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !974, file: !724, line: 475, baseType: !109, size: 64, offset: 1728)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !974, file: !724, line: 477, baseType: !189, offset: 1792)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !974, file: !724, line: 478, baseType: !109, size: 64, offset: 1792)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !974, file: !724, line: 478, baseType: !109, size: 64, offset: 1856)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !974, file: !724, line: 478, baseType: !109, size: 64, offset: 1920)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !974, file: !724, line: 478, baseType: !109, size: 64, offset: 1984)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !974, file: !724, line: 479, baseType: !109, size: 64, offset: 2048)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !974, file: !724, line: 479, baseType: !109, size: 64, offset: 2112)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !974, file: !724, line: 479, baseType: !109, size: 64, offset: 2176)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !974, file: !724, line: 480, baseType: !109, size: 64, offset: 2240)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !974, file: !724, line: 480, baseType: !109, size: 64, offset: 2304)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !974, file: !724, line: 480, baseType: !109, size: 64, offset: 2368)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !974, file: !724, line: 480, baseType: !109, size: 64, offset: 2432)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !974, file: !724, line: 482, baseType: !1062, size: 2816, offset: 2496)
!1062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 2816, elements: !136)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !974, file: !724, line: 488, baseType: !1064, size: 256, offset: 5312)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1065, line: 60, size: 256, elements: !1066)
!1065 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1066 = !{!1067}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1064, file: !1065, line: 61, baseType: !1068, size: 256)
!1068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !679, size: 256, elements: !1069)
!1069 = !{!1070}
!1070 = !DISubrange(count: 4)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !974, file: !724, line: 490, baseType: !1072, size: 64, offset: 5568)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !724, line: 490, flags: DIFlagFwdDecl)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !974, file: !724, line: 493, baseType: !1075, size: 896, offset: 5632)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1076, line: 53, baseType: !1077)
!1076 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1076, line: 13, size: 896, elements: !1078)
!1078 = !{!1079, !1080, !1081, !1082, !1085, !1086, !1087, !1088, !1108, !1109, !1110}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1077, file: !1076, line: 18, baseType: !120, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1077, file: !1076, line: 28, baseType: !681, size: 64, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1077, file: !1076, line: 31, baseType: !769, size: 256, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1077, file: !1076, line: 32, baseType: !1083, size: 64, offset: 384)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1076, line: 32, flags: DIFlagFwdDecl)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1077, file: !1076, line: 37, baseType: !115, size: 16, offset: 448)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1077, file: !1076, line: 40, baseType: !675, size: 192, offset: 512)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1077, file: !1076, line: 41, baseType: !302, size: 64, offset: 704)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1077, file: !1076, line: 42, baseType: !1089, size: 64, offset: 768)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1091)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1092, line: 13, size: 896, elements: !1093)
!1092 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1093 = !{!1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1091, file: !1092, line: 14, baseType: !302, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1091, file: !1092, line: 15, baseType: !109, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1091, file: !1092, line: 17, baseType: !109, size: 64, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1091, file: !1092, line: 17, baseType: !109, size: 64, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1091, file: !1092, line: 19, baseType: !265, size: 64, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1091, file: !1092, line: 21, baseType: !265, size: 64, offset: 320)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1091, file: !1092, line: 22, baseType: !265, size: 64, offset: 384)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1091, file: !1092, line: 23, baseType: !265, size: 64, offset: 448)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1091, file: !1092, line: 24, baseType: !265, size: 64, offset: 512)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1091, file: !1092, line: 25, baseType: !265, size: 64, offset: 576)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1091, file: !1092, line: 26, baseType: !265, size: 64, offset: 640)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1091, file: !1092, line: 27, baseType: !265, size: 64, offset: 704)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1091, file: !1092, line: 28, baseType: !265, size: 64, offset: 768)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1091, file: !1092, line: 29, baseType: !265, size: 64, offset: 832)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1077, file: !1076, line: 44, baseType: !749, size: 32, offset: 832)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1077, file: !1076, line: 50, baseType: !854, size: 16, offset: 864)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1077, file: !1076, line: 51, baseType: !1111, size: 16, offset: 880)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !121, line: 18, baseType: !1112)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !123, line: 23, baseType: !1113)
!1113 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !974, file: !724, line: 495, baseType: !109, size: 64, offset: 6528)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !974, file: !724, line: 497, baseType: !1116, size: 64, offset: 6592)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !724, line: 381, size: 384, elements: !1118)
!1118 = !{!1119, !1120, !2222}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1117, file: !724, line: 382, baseType: !749, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1117, file: !724, line: 383, baseType: !1121, size: 128, offset: 64)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !724, line: 376, size: 128, elements: !1122)
!1122 = !{!1123, !2220}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1121, file: !724, line: 377, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1126, line: 640, size: 48640, elements: !1127)
!1126 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1127 = !{!1128, !1134, !1136, !1137, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1154, !1172, !1183, !1268, !1269, !1270, !1281, !1282, !1284, !1285, !1286, !1287, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1366, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1404, !1406, !1407, !1408, !1420, !1421, !1422, !1423, !1424, !1425, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1449, !1454, !1638, !1639, !1640, !1641, !1645, !1648, !1651, !1654, !1657, !1661, !1762, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1808, !1809, !1810, !1811, !1812, !1817, !1818, !1819, !1822, !1823, !1826, !1829, !1832, !1835, !1878, !1881, !1882, !1961, !1962, !1965, !1966, !1969, !1970, !1971, !1975, !1976, !1977, !1990, !1991, !1992, !2002, !2007, !2010, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1125, file: !1126, line: 646, baseType: !1129, size: 128)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1130, line: 56, size: 128, elements: !1131)
!1130 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1131 = !{!1132, !1133}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1129, file: !1130, line: 57, baseType: !109, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1129, file: !1130, line: 58, baseType: !370, size: 32, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1125, file: !1126, line: 649, baseType: !1135, size: 64, offset: 128)
!1135 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !265)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1125, file: !1126, line: 657, baseType: !302, size: 64, offset: 192)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1125, file: !1126, line: 658, baseType: !1138, size: 32, offset: 256)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1139, line: 113, baseType: !1140)
!1139 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1139, line: 111, size: 32, elements: !1141)
!1141 = !{!1142}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1140, file: !1139, line: 112, baseType: !749, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1125, file: !1126, line: 660, baseType: !7, size: 32, offset: 288)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1125, file: !1126, line: 661, baseType: !7, size: 32, offset: 320)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1125, file: !1126, line: 684, baseType: !155, size: 32, offset: 352)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1125, file: !1126, line: 686, baseType: !155, size: 32, offset: 384)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1125, file: !1126, line: 687, baseType: !155, size: 32, offset: 416)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1125, file: !1126, line: 688, baseType: !155, size: 32, offset: 448)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1125, file: !1126, line: 689, baseType: !7, size: 32, offset: 480)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1125, file: !1126, line: 691, baseType: !1151, size: 64, offset: 512)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1153)
!1153 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1126, line: 691, flags: DIFlagFwdDecl)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1125, file: !1126, line: 692, baseType: !1155, size: 832, offset: 576)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1126, line: 451, size: 832, elements: !1156)
!1156 = !{!1157, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1155, file: !1126, line: 453, baseType: !1158, size: 128)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1126, line: 325, size: 128, elements: !1159)
!1159 = !{!1160, !1161}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1158, file: !1126, line: 326, baseType: !109, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1158, file: !1126, line: 327, baseType: !370, size: 32, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1155, file: !1126, line: 454, baseType: !762, size: 192, align: 64, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1155, file: !1126, line: 455, baseType: !175, size: 128, offset: 320)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1155, file: !1126, line: 456, baseType: !7, size: 32, offset: 448)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1155, file: !1126, line: 458, baseType: !120, size: 64, offset: 512)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1155, file: !1126, line: 459, baseType: !120, size: 64, offset: 576)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1155, file: !1126, line: 460, baseType: !120, size: 64, offset: 640)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1155, file: !1126, line: 461, baseType: !120, size: 64, offset: 704)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1155, file: !1126, line: 463, baseType: !120, size: 64, offset: 768)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1155, file: !1126, line: 465, baseType: !1171, offset: 832)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1126, line: 415, elements: !203)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1125, file: !1126, line: 693, baseType: !1173, size: 384, offset: 1408)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1126, line: 489, size: 384, elements: !1174)
!1174 = !{!1175, !1176, !1177, !1178, !1179, !1180, !1181}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1173, file: !1126, line: 490, baseType: !175, size: 128)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1173, file: !1126, line: 491, baseType: !109, size: 64, offset: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1173, file: !1126, line: 492, baseType: !109, size: 64, offset: 192)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1173, file: !1126, line: 493, baseType: !7, size: 32, offset: 256)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1173, file: !1126, line: 494, baseType: !115, size: 16, offset: 288)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1173, file: !1126, line: 495, baseType: !115, size: 16, offset: 304)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1173, file: !1126, line: 497, baseType: !1182, size: 64, offset: 320)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1125, file: !1126, line: 697, baseType: !1184, size: 1792, offset: 1792)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1126, line: 507, size: 1792, elements: !1185)
!1185 = !{!1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1265, !1266}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1184, file: !1126, line: 508, baseType: !762, size: 192, align: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1184, file: !1126, line: 515, baseType: !120, size: 64, offset: 192)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1184, file: !1126, line: 516, baseType: !120, size: 64, offset: 256)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1184, file: !1126, line: 517, baseType: !120, size: 64, offset: 320)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1184, file: !1126, line: 518, baseType: !120, size: 64, offset: 384)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1184, file: !1126, line: 519, baseType: !120, size: 64, offset: 448)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1184, file: !1126, line: 526, baseType: !685, size: 64, offset: 512)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1184, file: !1126, line: 527, baseType: !120, size: 64, offset: 576)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1184, file: !1126, line: 528, baseType: !7, size: 32, offset: 640)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1184, file: !1126, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1184, file: !1126, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1184, file: !1126, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1184, file: !1126, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1184, file: !1126, line: 563, baseType: !1200, size: 512, offset: 704)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !14, line: 118, size: 512, elements: !1201)
!1201 = !{!1202, !1210, !1211, !1216, !1259, !1262, !1263, !1264}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1200, file: !14, line: 119, baseType: !1203, size: 256)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1204, line: 9, size: 256, elements: !1205)
!1204 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1205 = !{!1206, !1207}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1203, file: !1204, line: 10, baseType: !762, size: 192, align: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1203, file: !1204, line: 11, baseType: !1208, size: 64, offset: 192)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1209, line: 29, baseType: !685)
!1209 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1200, file: !14, line: 120, baseType: !1208, size: 64, offset: 256)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1200, file: !14, line: 121, baseType: !1212, size: 64, offset: 320)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!13, !1215}
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1200, file: !14, line: 122, baseType: !1217, size: 64, offset: 384)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !14, line: 159, size: 512, align: 512, elements: !1219)
!1219 = !{!1220, !1240, !1241, !1244, !1249, !1250, !1254, !1258}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1218, file: !14, line: 160, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !14, line: 214, size: 4608, align: 512, elements: !1223)
!1223 = !{!1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1222, file: !14, line: 215, baseType: !775)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1222, file: !14, line: 216, baseType: !7, size: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1222, file: !14, line: 217, baseType: !7, size: 32, offset: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1222, file: !14, line: 218, baseType: !7, size: 32, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1222, file: !14, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1222, file: !14, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1222, file: !14, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1222, file: !14, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1222, file: !14, line: 233, baseType: !1208, size: 64, offset: 128)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1222, file: !14, line: 234, baseType: !1215, size: 64, offset: 192)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1222, file: !14, line: 235, baseType: !1208, size: 64, offset: 256)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1222, file: !14, line: 236, baseType: !1215, size: 64, offset: 320)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1222, file: !14, line: 237, baseType: !1237, size: 4096, offset: 512)
!1237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1218, size: 4096, elements: !1238)
!1238 = !{!1239}
!1239 = !DISubrange(count: 8)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1218, file: !14, line: 161, baseType: !7, size: 32, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1218, file: !14, line: 162, baseType: !1242, size: 32, offset: 96)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !176, line: 27, baseType: !1243)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !263, line: 96, baseType: !155)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1218, file: !14, line: 163, baseType: !1245, size: 32, offset: 128)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !343, line: 276, baseType: !1246)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !343, line: 276, size: 32, elements: !1247)
!1247 = !{!1248}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1246, file: !343, line: 276, baseType: !347, size: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1218, file: !14, line: 164, baseType: !1215, size: 64, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1218, file: !14, line: 165, baseType: !1251, size: 128, offset: 256)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1204, line: 14, size: 128, elements: !1252)
!1252 = !{!1253}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1251, file: !1204, line: 15, baseType: !754, size: 128)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1218, file: !14, line: 166, baseType: !1255, size: 64, offset: 384)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!1208}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1218, file: !14, line: 167, baseType: !1208, size: 64, offset: 448)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1200, file: !14, line: 123, baseType: !1260, size: 8, offset: 448)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !121, line: 17, baseType: !1261)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !123, line: 21, baseType: !112)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1200, file: !14, line: 124, baseType: !1260, size: 8, offset: 456)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1200, file: !14, line: 125, baseType: !1260, size: 8, offset: 464)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1200, file: !14, line: 126, baseType: !1260, size: 8, offset: 472)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1184, file: !1126, line: 572, baseType: !1200, size: 512, offset: 1216)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1184, file: !1126, line: 580, baseType: !1267, size: 64, offset: 1728)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1125, file: !1126, line: 721, baseType: !7, size: 32, offset: 3584)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1125, file: !1126, line: 722, baseType: !155, size: 32, offset: 3616)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1125, file: !1126, line: 723, baseType: !1271, size: 64, offset: 3648)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1273)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1274, line: 17, baseType: !1275)
!1274 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1274, line: 17, size: 64, elements: !1276)
!1276 = !{!1277}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1275, file: !1274, line: 17, baseType: !1278, size: 64)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 64, elements: !1279)
!1279 = !{!1280}
!1280 = !DISubrange(count: 1)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1125, file: !1126, line: 724, baseType: !1273, size: 64, offset: 3712)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1125, file: !1126, line: 749, baseType: !1283, offset: 3776)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1126, line: 290, elements: !203)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1125, file: !1126, line: 751, baseType: !175, size: 128, offset: 3776)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1125, file: !1126, line: 757, baseType: !970, size: 64, offset: 3904)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1125, file: !1126, line: 758, baseType: !970, size: 64, offset: 3968)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1125, file: !1126, line: 761, baseType: !1288, size: 320, offset: 4032)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1065, line: 34, size: 320, elements: !1289)
!1289 = !{!1290, !1291}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1288, file: !1065, line: 35, baseType: !120, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1288, file: !1065, line: 36, baseType: !1292, size: 256, offset: 64)
!1292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !977, size: 256, elements: !1069)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1125, file: !1126, line: 766, baseType: !155, size: 32, offset: 4352)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1125, file: !1126, line: 767, baseType: !155, size: 32, offset: 4384)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1125, file: !1126, line: 768, baseType: !155, size: 32, offset: 4416)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1125, file: !1126, line: 770, baseType: !155, size: 32, offset: 4448)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1125, file: !1126, line: 772, baseType: !109, size: 64, offset: 4480)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1125, file: !1126, line: 775, baseType: !7, size: 32, offset: 4544)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1125, file: !1126, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1125, file: !1126, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1125, file: !1126, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1125, file: !1126, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1125, file: !1126, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1125, file: !1126, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1125, file: !1126, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1125, file: !1126, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1125, file: !1126, line: 831, baseType: !109, size: 64, offset: 4672)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1125, file: !1126, line: 833, baseType: !1309, size: 384, offset: 4736)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !19, line: 25, size: 384, elements: !1310)
!1310 = !{!1311, !1316}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1309, file: !19, line: 26, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!265, !1315}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, scope: !1309, file: !19, line: 27, baseType: !1317, size: 320, offset: 64)
!1317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1309, file: !19, line: 27, size: 320, elements: !1318)
!1318 = !{!1319, !1329, !1356}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1317, file: !19, line: 36, baseType: !1320, size: 320)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1317, file: !19, line: 29, size: 320, elements: !1321)
!1321 = !{!1322, !1324, !1325, !1326, !1327, !1328}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1320, file: !19, line: 30, baseType: !1323, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1320, file: !19, line: 31, baseType: !370, size: 32, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1320, file: !19, line: 32, baseType: !370, size: 32, offset: 96)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1320, file: !19, line: 33, baseType: !370, size: 32, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1320, file: !19, line: 34, baseType: !120, size: 64, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1320, file: !19, line: 35, baseType: !1323, size: 64, offset: 256)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1317, file: !19, line: 46, baseType: !1330, size: 192)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1317, file: !19, line: 38, size: 192, elements: !1331)
!1331 = !{!1332, !1333, !1334, !1355}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1330, file: !19, line: 39, baseType: !1242, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1330, file: !19, line: 40, baseType: !18, size: 32, offset: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, scope: !1330, file: !19, line: 41, baseType: !1335, size: 64, offset: 64)
!1335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1330, file: !19, line: 41, size: 64, elements: !1336)
!1336 = !{!1337, !1345}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1335, file: !19, line: 42, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1340, line: 7, size: 128, elements: !1341)
!1340 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1341 = !{!1342, !1344}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1339, file: !1340, line: 8, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !263, line: 93, baseType: !482)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1339, file: !1340, line: 9, baseType: !482, size: 64, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1335, file: !19, line: 43, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1348, line: 7, size: 64, elements: !1349)
!1348 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1349 = !{!1350, !1354}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1347, file: !1348, line: 8, baseType: !1351, size: 32)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1348, line: 5, baseType: !1352)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !121, line: 20, baseType: !1353)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !123, line: 26, baseType: !155)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1347, file: !1348, line: 9, baseType: !1352, size: 32, offset: 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1330, file: !19, line: 45, baseType: !120, size: 64, offset: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1317, file: !19, line: 54, baseType: !1357, size: 256)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1317, file: !19, line: 48, size: 256, elements: !1358)
!1358 = !{!1359, !1362, !1363, !1364, !1365}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1357, file: !19, line: 49, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !19, line: 14, flags: DIFlagFwdDecl)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1357, file: !19, line: 50, baseType: !155, size: 32, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1357, file: !19, line: 51, baseType: !155, size: 32, offset: 96)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1357, file: !19, line: 52, baseType: !109, size: 64, offset: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1357, file: !19, line: 53, baseType: !109, size: 64, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1125, file: !1126, line: 835, baseType: !1367, size: 32, offset: 5120)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !176, line: 22, baseType: !1368)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !263, line: 28, baseType: !155)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1125, file: !1126, line: 836, baseType: !1367, size: 32, offset: 5152)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1125, file: !1126, line: 840, baseType: !109, size: 64, offset: 5184)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1125, file: !1126, line: 849, baseType: !1124, size: 64, offset: 5248)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1125, file: !1126, line: 852, baseType: !1124, size: 64, offset: 5312)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1125, file: !1126, line: 857, baseType: !175, size: 128, offset: 5376)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1125, file: !1126, line: 858, baseType: !175, size: 128, offset: 5504)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1125, file: !1126, line: 859, baseType: !1124, size: 64, offset: 5632)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1125, file: !1126, line: 867, baseType: !175, size: 128, offset: 5696)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1125, file: !1126, line: 868, baseType: !175, size: 128, offset: 5824)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1125, file: !1126, line: 871, baseType: !1379, size: 64, offset: 5952)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !1381)
!1381 = !{!1382, !1383, !1384, !1385, !1387, !1388, !1395, !1396}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1380, file: !40, line: 61, baseType: !1138, size: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1380, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1380, file: !40, line: 63, baseType: !189, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1380, file: !40, line: 65, baseType: !1386, size: 256, offset: 64)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 256, elements: !1069)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1380, file: !40, line: 66, baseType: !587, size: 64, offset: 320)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1380, file: !40, line: 68, baseType: !1389, size: 128, offset: 384)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1390, line: 40, baseType: !1391)
!1390 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1390, line: 36, size: 128, elements: !1392)
!1392 = !{!1393, !1394}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1391, file: !1390, line: 37, baseType: !189)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1391, file: !1390, line: 38, baseType: !175, size: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1380, file: !40, line: 69, baseType: !320, size: 128, align: 64, offset: 512)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1380, file: !40, line: 70, baseType: !1397, size: 128, offset: 640)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1398, size: 128, elements: !1279)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !1399)
!1399 = !{!1400, !1401}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1398, file: !40, line: 55, baseType: !155, size: 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1398, file: !40, line: 56, baseType: !1402, size: 64, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1125, file: !1126, line: 872, baseType: !1405, size: 512, offset: 6016)
!1405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 512, elements: !1069)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1125, file: !1126, line: 873, baseType: !175, size: 128, offset: 6528)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1125, file: !1126, line: 874, baseType: !175, size: 128, offset: 6656)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1125, file: !1126, line: 876, baseType: !1409, size: 64, offset: 6784)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1411, line: 26, size: 192, elements: !1412)
!1411 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1412 = !{!1413, !1414}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1410, file: !1411, line: 27, baseType: !7, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1410, file: !1411, line: 28, baseType: !1415, size: 128, offset: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1416, line: 43, size: 128, elements: !1417)
!1416 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1417 = !{!1418, !1419}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1415, file: !1416, line: 44, baseType: !775)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1415, file: !1416, line: 45, baseType: !175, size: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1125, file: !1126, line: 879, baseType: !657, size: 64, offset: 6848)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1125, file: !1126, line: 882, baseType: !657, size: 64, offset: 6912)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1125, file: !1126, line: 884, baseType: !120, size: 64, offset: 6976)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1125, file: !1126, line: 885, baseType: !120, size: 64, offset: 7040)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1125, file: !1126, line: 890, baseType: !120, size: 64, offset: 7104)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1125, file: !1126, line: 891, baseType: !1426, size: 128, offset: 7168)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1126, line: 242, size: 128, elements: !1427)
!1427 = !{!1428, !1429, !1430}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1426, file: !1126, line: 244, baseType: !120, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1426, file: !1126, line: 245, baseType: !120, size: 64, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1426, file: !1126, line: 246, baseType: !775, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1125, file: !1126, line: 900, baseType: !109, size: 64, offset: 7296)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1125, file: !1126, line: 901, baseType: !109, size: 64, offset: 7360)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1125, file: !1126, line: 904, baseType: !120, size: 64, offset: 7424)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1125, file: !1126, line: 907, baseType: !120, size: 64, offset: 7488)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1125, file: !1126, line: 910, baseType: !109, size: 64, offset: 7552)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1125, file: !1126, line: 911, baseType: !109, size: 64, offset: 7616)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1125, file: !1126, line: 914, baseType: !1438, size: 640, offset: 7680)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1439, line: 123, size: 640, elements: !1440)
!1439 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1440 = !{!1441, !1447, !1448}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1438, file: !1439, line: 124, baseType: !1442, size: 576)
!1442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1443, size: 576, elements: !231)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1439, line: 108, size: 192, elements: !1444)
!1444 = !{!1445, !1446}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1443, file: !1439, line: 109, baseType: !120, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1443, file: !1439, line: 110, baseType: !1251, size: 128, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1438, file: !1439, line: 125, baseType: !7, size: 32, offset: 576)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1438, file: !1439, line: 126, baseType: !7, size: 32, offset: 608)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1125, file: !1126, line: 917, baseType: !1450, size: 192, offset: 8320)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1439, line: 134, size: 192, elements: !1451)
!1451 = !{!1452, !1453}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1450, file: !1439, line: 135, baseType: !320, size: 128, align: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1450, file: !1439, line: 136, baseType: !7, size: 32, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1125, file: !1126, line: 923, baseType: !1455, size: 64, offset: 8512)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1457)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1458, line: 111, size: 1280, elements: !1459)
!1458 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1459 = !{!1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1479, !1480, !1481, !1482, !1483, !1484, !1591, !1592, !1593, !1594, !1620, !1623, !1633}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1457, file: !1458, line: 112, baseType: !749, size: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1457, file: !1458, line: 120, baseType: !384, size: 32, offset: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1457, file: !1458, line: 121, baseType: !392, size: 32, offset: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1457, file: !1458, line: 122, baseType: !384, size: 32, offset: 96)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1457, file: !1458, line: 123, baseType: !392, size: 32, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1457, file: !1458, line: 124, baseType: !384, size: 32, offset: 160)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1457, file: !1458, line: 125, baseType: !392, size: 32, offset: 192)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1457, file: !1458, line: 126, baseType: !384, size: 32, offset: 224)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1457, file: !1458, line: 127, baseType: !392, size: 32, offset: 256)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1457, file: !1458, line: 128, baseType: !7, size: 32, offset: 288)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1457, file: !1458, line: 129, baseType: !1471, size: 64, offset: 320)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1472, line: 26, baseType: !1473)
!1472 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1472, line: 24, size: 64, elements: !1474)
!1474 = !{!1475}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1473, file: !1472, line: 25, baseType: !1476, size: 64)
!1476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 64, elements: !1477)
!1477 = !{!1478}
!1478 = !DISubrange(count: 2)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1457, file: !1458, line: 130, baseType: !1471, size: 64, offset: 384)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1457, file: !1458, line: 131, baseType: !1471, size: 64, offset: 448)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1457, file: !1458, line: 132, baseType: !1471, size: 64, offset: 512)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1457, file: !1458, line: 133, baseType: !1471, size: 64, offset: 576)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1457, file: !1458, line: 135, baseType: !112, size: 8, offset: 640)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1457, file: !1458, line: 137, baseType: !1485, size: 64, offset: 704)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1487, line: 189, size: 1664, elements: !1488)
!1487 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1488 = !{!1489, !1490, !1493, !1498, !1499, !1502, !1503, !1508, !1509, !1510, !1511, !1513, !1514, !1515, !1516, !1517, !1555, !1576}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1486, file: !1487, line: 190, baseType: !1138, size: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1486, file: !1487, line: 191, baseType: !1491, size: 32, offset: 32)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1487, line: 28, baseType: !1492)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !176, line: 98, baseType: !1352)
!1493 = !DIDerivedType(tag: DW_TAG_member, scope: !1486, file: !1487, line: 192, baseType: !1494, size: 192, offset: 64)
!1494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1486, file: !1487, line: 192, size: 192, elements: !1495)
!1495 = !{!1496, !1497}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1494, file: !1487, line: 193, baseType: !175, size: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1494, file: !1487, line: 194, baseType: !762, size: 192, align: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1486, file: !1487, line: 199, baseType: !769, size: 256, offset: 256)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1486, file: !1487, line: 200, baseType: !1500, size: 64, offset: 512)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1487, line: 200, flags: DIFlagFwdDecl)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1486, file: !1487, line: 201, baseType: !302, size: 64, offset: 576)
!1503 = !DIDerivedType(tag: DW_TAG_member, scope: !1486, file: !1487, line: 202, baseType: !1504, size: 64, offset: 640)
!1504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1486, file: !1487, line: 202, size: 64, elements: !1505)
!1505 = !{!1506, !1507}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1504, file: !1487, line: 203, baseType: !488, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1504, file: !1487, line: 204, baseType: !488, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1486, file: !1487, line: 206, baseType: !488, size: 64, offset: 704)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1486, file: !1487, line: 207, baseType: !384, size: 32, offset: 768)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1486, file: !1487, line: 208, baseType: !392, size: 32, offset: 800)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1486, file: !1487, line: 209, baseType: !1512, size: 32, offset: 832)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1487, line: 31, baseType: !508)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1486, file: !1487, line: 210, baseType: !115, size: 16, offset: 864)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1486, file: !1487, line: 211, baseType: !115, size: 16, offset: 880)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1486, file: !1487, line: 215, baseType: !1113, size: 16, offset: 896)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1486, file: !1487, line: 222, baseType: !109, size: 64, offset: 960)
!1517 = !DIDerivedType(tag: DW_TAG_member, scope: !1486, file: !1487, line: 239, baseType: !1518, size: 320, offset: 1024)
!1518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1486, file: !1487, line: 239, size: 320, elements: !1519)
!1519 = !{!1520, !1547}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1518, file: !1487, line: 240, baseType: !1521, size: 320)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1487, line: 108, size: 320, elements: !1522)
!1522 = !{!1523, !1524, !1536, !1539, !1546}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1521, file: !1487, line: 110, baseType: !109, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, scope: !1521, file: !1487, line: 111, baseType: !1525, size: 64, offset: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1521, file: !1487, line: 111, size: 64, elements: !1526)
!1526 = !{!1527, !1535}
!1527 = !DIDerivedType(tag: DW_TAG_member, scope: !1525, file: !1487, line: 112, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1525, file: !1487, line: 112, size: 64, elements: !1529)
!1529 = !{!1530, !1531}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1528, file: !1487, line: 114, baseType: !854, size: 16)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1528, file: !1487, line: 115, baseType: !1532, size: 48, offset: 16)
!1532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 48, elements: !1533)
!1533 = !{!1534}
!1534 = !DISubrange(count: 6)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1525, file: !1487, line: 121, baseType: !109, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1521, file: !1487, line: 123, baseType: !1537, size: 64, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1487, line: 96, flags: DIFlagFwdDecl)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1521, file: !1487, line: 124, baseType: !1540, size: 64, offset: 192)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1487, line: 102, size: 192, elements: !1542)
!1542 = !{!1543, !1544, !1545}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1541, file: !1487, line: 103, baseType: !320, size: 128, align: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1541, file: !1487, line: 104, baseType: !1138, size: 32, offset: 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1541, file: !1487, line: 105, baseType: !439, size: 8, offset: 160)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1521, file: !1487, line: 125, baseType: !161, size: 64, offset: 256)
!1547 = !DIDerivedType(tag: DW_TAG_member, scope: !1518, file: !1487, line: 241, baseType: !1548, size: 320)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1518, file: !1487, line: 241, size: 320, elements: !1549)
!1549 = !{!1550, !1551, !1552, !1553, !1554}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1548, file: !1487, line: 242, baseType: !109, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1548, file: !1487, line: 243, baseType: !109, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1548, file: !1487, line: 244, baseType: !1537, size: 64, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1548, file: !1487, line: 245, baseType: !1540, size: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1548, file: !1487, line: 246, baseType: !230, size: 64, offset: 256)
!1555 = !DIDerivedType(tag: DW_TAG_member, scope: !1486, file: !1487, line: 254, baseType: !1556, size: 256, offset: 1344)
!1556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1486, file: !1487, line: 254, size: 256, elements: !1557)
!1557 = !{!1558, !1564}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1556, file: !1487, line: 255, baseType: !1559, size: 256)
!1559 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1487, line: 128, size: 256, elements: !1560)
!1560 = !{!1561, !1562}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1559, file: !1487, line: 129, baseType: !302, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1559, file: !1487, line: 130, baseType: !1563, size: 256)
!1563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 256, elements: !1069)
!1564 = !DIDerivedType(tag: DW_TAG_member, scope: !1556, file: !1487, line: 256, baseType: !1565, size: 256)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1556, file: !1487, line: 256, size: 256, elements: !1566)
!1566 = !{!1567, !1568}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1565, file: !1487, line: 258, baseType: !175, size: 128)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1565, file: !1487, line: 259, baseType: !1569, size: 128, offset: 128)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1570, line: 22, size: 128, elements: !1571)
!1570 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1571 = !{!1572, !1575}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1569, file: !1570, line: 23, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1570, line: 23, flags: DIFlagFwdDecl)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1569, file: !1570, line: 24, baseType: !109, size: 64, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1486, file: !1487, line: 274, baseType: !1577, size: 64, offset: 1600)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1487, line: 170, size: 192, elements: !1579)
!1579 = !{!1580, !1589, !1590}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1578, file: !1487, line: 171, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1487, line: 165, baseType: !1582)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!155, !1485, !1585, !1587, !1485}
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1538)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1559)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1578, file: !1487, line: 172, baseType: !1485, size: 64, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1578, file: !1487, line: 173, baseType: !1537, size: 64, offset: 128)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1457, file: !1458, line: 138, baseType: !1485, size: 64, offset: 768)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1457, file: !1458, line: 139, baseType: !1485, size: 64, offset: 832)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1457, file: !1458, line: 140, baseType: !1485, size: 64, offset: 896)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1457, file: !1458, line: 145, baseType: !1595, size: 64, offset: 960)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1597, line: 13, size: 896, elements: !1598)
!1597 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1598 = !{!1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1596, file: !1597, line: 14, baseType: !1138, size: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1596, file: !1597, line: 15, baseType: !749, size: 32, offset: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1596, file: !1597, line: 16, baseType: !749, size: 32, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1596, file: !1597, line: 21, baseType: !679, size: 64, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1596, file: !1597, line: 27, baseType: !109, size: 64, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1596, file: !1597, line: 28, baseType: !109, size: 64, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1596, file: !1597, line: 29, baseType: !679, size: 64, offset: 320)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1596, file: !1597, line: 32, baseType: !591, size: 128, offset: 384)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1596, file: !1597, line: 33, baseType: !384, size: 32, offset: 512)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1596, file: !1597, line: 37, baseType: !679, size: 64, offset: 576)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1596, file: !1597, line: 44, baseType: !1610, size: 256, offset: 640)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1611, line: 15, size: 256, elements: !1612)
!1611 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1612 = !{!1613, !1614, !1615, !1616, !1617, !1618, !1619}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1610, file: !1611, line: 16, baseType: !775)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1610, file: !1611, line: 18, baseType: !155, size: 32)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1610, file: !1611, line: 19, baseType: !155, size: 32, offset: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1610, file: !1611, line: 20, baseType: !155, size: 32, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1610, file: !1611, line: 21, baseType: !155, size: 32, offset: 96)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1610, file: !1611, line: 22, baseType: !109, size: 64, offset: 128)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1610, file: !1611, line: 23, baseType: !109, size: 64, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1457, file: !1458, line: 146, baseType: !1621, size: 64, offset: 1024)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !385, line: 18, flags: DIFlagFwdDecl)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1457, file: !1458, line: 147, baseType: !1624, size: 64, offset: 1088)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1458, line: 25, size: 64, elements: !1626)
!1626 = !{!1627, !1628, !1629}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1625, file: !1458, line: 26, baseType: !749, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1625, file: !1458, line: 27, baseType: !155, size: 32, offset: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1625, file: !1458, line: 28, baseType: !1630, offset: 64)
!1630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, elements: !1631)
!1631 = !{!1632}
!1632 = !DISubrange(count: 0)
!1633 = !DIDerivedType(tag: DW_TAG_member, scope: !1457, file: !1458, line: 149, baseType: !1634, size: 128, offset: 1152)
!1634 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1457, file: !1458, line: 149, size: 128, elements: !1635)
!1635 = !{!1636, !1637}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1634, file: !1458, line: 150, baseType: !155, size: 32)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1634, file: !1458, line: 151, baseType: !320, size: 128, align: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1125, file: !1126, line: 926, baseType: !1455, size: 64, offset: 8576)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1125, file: !1126, line: 929, baseType: !1455, size: 64, offset: 8640)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1125, file: !1126, line: 933, baseType: !1485, size: 64, offset: 8704)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1125, file: !1126, line: 943, baseType: !1642, size: 128, offset: 8768)
!1642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 128, elements: !1643)
!1643 = !{!1644}
!1644 = !DISubrange(count: 16)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1125, file: !1126, line: 945, baseType: !1646, size: 64, offset: 8896)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1126, line: 49, flags: DIFlagFwdDecl)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1125, file: !1126, line: 956, baseType: !1649, size: 64, offset: 8960)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1126, line: 45, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1125, file: !1126, line: 959, baseType: !1652, size: 64, offset: 9024)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1126, line: 959, flags: DIFlagFwdDecl)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1125, file: !1126, line: 962, baseType: !1655, size: 64, offset: 9088)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1126, line: 66, flags: DIFlagFwdDecl)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1125, file: !1126, line: 966, baseType: !1658, size: 64, offset: 9152)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1660, line: 35, flags: DIFlagFwdDecl)
!1660 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1125, file: !1126, line: 969, baseType: !1662, size: 64, offset: 9216)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1664, line: 82, size: 7296, elements: !1665)
!1664 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1665 = !{!1666, !1667, !1668, !1669, !1670, !1671, !1672, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1701, !1710, !1711, !1713, !1714, !1715, !1718, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1748, !1749, !1756, !1757, !1758, !1759, !1760, !1761}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1663, file: !1664, line: 83, baseType: !1138, size: 32)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1663, file: !1664, line: 84, baseType: !749, size: 32, offset: 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1663, file: !1664, line: 85, baseType: !155, size: 32, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1663, file: !1664, line: 86, baseType: !175, size: 128, offset: 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1663, file: !1664, line: 88, baseType: !1389, size: 128, offset: 256)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1663, file: !1664, line: 91, baseType: !1124, size: 64, offset: 384)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1663, file: !1664, line: 94, baseType: !1673, size: 192, offset: 448)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1674, line: 30, size: 192, elements: !1675)
!1674 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1675 = !{!1676, !1677}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1673, file: !1674, line: 31, baseType: !175, size: 128)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1673, file: !1674, line: 32, baseType: !1678, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1679, line: 25, baseType: !1680)
!1679 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1679, line: 23, size: 64, elements: !1681)
!1681 = !{!1682}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1680, file: !1679, line: 24, baseType: !1278, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1663, file: !1664, line: 97, baseType: !587, size: 64, offset: 640)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1663, file: !1664, line: 100, baseType: !155, size: 32, offset: 704)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1663, file: !1664, line: 106, baseType: !155, size: 32, offset: 736)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1663, file: !1664, line: 107, baseType: !1124, size: 64, offset: 768)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1663, file: !1664, line: 110, baseType: !155, size: 32, offset: 832)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1663, file: !1664, line: 111, baseType: !7, size: 32, offset: 864)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1663, file: !1664, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1663, file: !1664, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1663, file: !1664, line: 128, baseType: !155, size: 32, offset: 928)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1663, file: !1664, line: 129, baseType: !175, size: 128, offset: 960)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1663, file: !1664, line: 132, baseType: !1200, size: 512, offset: 1088)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1663, file: !1664, line: 133, baseType: !1208, size: 64, offset: 1600)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1663, file: !1664, line: 140, baseType: !1696, size: 256, offset: 1664)
!1696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1697, size: 256, elements: !1477)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1664, line: 38, size: 128, elements: !1698)
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1697, file: !1664, line: 39, baseType: !120, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1697, file: !1664, line: 40, baseType: !120, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1663, file: !1664, line: 146, baseType: !1702, size: 192, offset: 1920)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1664, line: 66, size: 192, elements: !1703)
!1703 = !{!1704}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1702, file: !1664, line: 67, baseType: !1705, size: 192)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1664, line: 47, size: 192, elements: !1706)
!1706 = !{!1707, !1708, !1709}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1705, file: !1664, line: 48, baseType: !681, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1705, file: !1664, line: 49, baseType: !681, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1705, file: !1664, line: 50, baseType: !681, size: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1663, file: !1664, line: 150, baseType: !1438, size: 640, offset: 2112)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1663, file: !1664, line: 153, baseType: !1712, size: 256, offset: 2752)
!1712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1379, size: 256, elements: !1069)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1663, file: !1664, line: 159, baseType: !1379, size: 64, offset: 3008)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1663, file: !1664, line: 162, baseType: !155, size: 32, offset: 3072)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1663, file: !1664, line: 164, baseType: !1716, size: 64, offset: 3136)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1664, line: 164, flags: DIFlagFwdDecl)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1663, file: !1664, line: 175, baseType: !1719, size: 32, offset: 3200)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !343, line: 805, baseType: !1720)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !343, line: 798, size: 32, elements: !1721)
!1721 = !{!1722, !1723}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1720, file: !343, line: 803, baseType: !342, size: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1720, file: !343, line: 804, baseType: !189, offset: 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1663, file: !1664, line: 176, baseType: !120, size: 64, offset: 3264)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1663, file: !1664, line: 176, baseType: !120, size: 64, offset: 3328)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1663, file: !1664, line: 176, baseType: !120, size: 64, offset: 3392)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1663, file: !1664, line: 176, baseType: !120, size: 64, offset: 3456)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1663, file: !1664, line: 177, baseType: !120, size: 64, offset: 3520)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1663, file: !1664, line: 178, baseType: !120, size: 64, offset: 3584)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1663, file: !1664, line: 179, baseType: !1426, size: 128, offset: 3648)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1663, file: !1664, line: 180, baseType: !109, size: 64, offset: 3776)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1663, file: !1664, line: 180, baseType: !109, size: 64, offset: 3840)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1663, file: !1664, line: 180, baseType: !109, size: 64, offset: 3904)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1663, file: !1664, line: 180, baseType: !109, size: 64, offset: 3968)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1663, file: !1664, line: 181, baseType: !109, size: 64, offset: 4032)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1663, file: !1664, line: 181, baseType: !109, size: 64, offset: 4096)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1663, file: !1664, line: 181, baseType: !109, size: 64, offset: 4160)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1663, file: !1664, line: 181, baseType: !109, size: 64, offset: 4224)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1663, file: !1664, line: 182, baseType: !109, size: 64, offset: 4288)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1663, file: !1664, line: 182, baseType: !109, size: 64, offset: 4352)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1663, file: !1664, line: 182, baseType: !109, size: 64, offset: 4416)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1663, file: !1664, line: 182, baseType: !109, size: 64, offset: 4480)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1663, file: !1664, line: 183, baseType: !109, size: 64, offset: 4544)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1663, file: !1664, line: 183, baseType: !109, size: 64, offset: 4608)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1663, file: !1664, line: 184, baseType: !1746, offset: 4672)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1747, line: 12, elements: !203)
!1747 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1663, file: !1664, line: 192, baseType: !124, size: 64, offset: 4672)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1663, file: !1664, line: 203, baseType: !1750, size: 2048, offset: 4736)
!1750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1751, size: 2048, elements: !1643)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1752, line: 43, size: 128, elements: !1753)
!1752 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1753 = !{!1754, !1755}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1751, file: !1752, line: 44, baseType: !278, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1751, file: !1752, line: 45, baseType: !278, size: 64, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1663, file: !1664, line: 220, baseType: !439, size: 8, offset: 6784)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1663, file: !1664, line: 221, baseType: !1113, size: 16, offset: 6800)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1663, file: !1664, line: 222, baseType: !1113, size: 16, offset: 6816)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1663, file: !1664, line: 224, baseType: !970, size: 64, offset: 6848)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1663, file: !1664, line: 227, baseType: !675, size: 192, offset: 6912)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1663, file: !1664, line: 233, baseType: !675, size: 192, offset: 7104)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1125, file: !1126, line: 970, baseType: !1763, size: 64, offset: 9280)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1664, line: 20, size: 16576, elements: !1765)
!1765 = !{!1766, !1767, !1768, !1769}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1764, file: !1664, line: 21, baseType: !189)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1764, file: !1664, line: 22, baseType: !1138, size: 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1764, file: !1664, line: 23, baseType: !1389, size: 128, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1764, file: !1664, line: 24, baseType: !1770, size: 16384, offset: 192)
!1770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1771, size: 16384, elements: !235)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1674, line: 49, size: 256, elements: !1772)
!1772 = !{!1773}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1771, file: !1674, line: 50, baseType: !1774, size: 256)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1674, line: 35, size: 256, elements: !1775)
!1775 = !{!1776, !1783, !1784, !1790}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1774, file: !1674, line: 37, baseType: !1777, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1778, line: 19, baseType: !1779)
!1778 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1778, line: 18, baseType: !1781)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{null, !155}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1774, file: !1674, line: 38, baseType: !109, size: 64, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1774, file: !1674, line: 44, baseType: !1785, size: 64, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1778, line: 22, baseType: !1786)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1778, line: 21, baseType: !1788)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{null}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1774, file: !1674, line: 46, baseType: !1678, size: 64, offset: 192)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1125, file: !1126, line: 971, baseType: !1678, size: 64, offset: 9344)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1125, file: !1126, line: 972, baseType: !1678, size: 64, offset: 9408)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1125, file: !1126, line: 974, baseType: !1678, size: 64, offset: 9472)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1125, file: !1126, line: 975, baseType: !1673, size: 192, offset: 9536)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1125, file: !1126, line: 976, baseType: !109, size: 64, offset: 9728)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1125, file: !1126, line: 977, baseType: !276, size: 64, offset: 9792)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1125, file: !1126, line: 978, baseType: !7, size: 32, offset: 9856)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1125, file: !1126, line: 980, baseType: !323, size: 64, offset: 9920)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1125, file: !1126, line: 989, baseType: !1800, size: 128, offset: 9984)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1801, line: 35, size: 128, elements: !1802)
!1801 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1802 = !{!1803, !1804, !1805}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1800, file: !1801, line: 36, baseType: !155, size: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1800, file: !1801, line: 37, baseType: !749, size: 32, offset: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1800, file: !1801, line: 38, baseType: !1806, size: 64, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1801, line: 23, flags: DIFlagFwdDecl)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1125, file: !1126, line: 992, baseType: !120, size: 64, offset: 10112)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1125, file: !1126, line: 993, baseType: !120, size: 64, offset: 10176)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1125, file: !1126, line: 996, baseType: !189, offset: 10240)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1125, file: !1126, line: 999, baseType: !775, offset: 10240)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1125, file: !1126, line: 1001, baseType: !1813, size: 64, offset: 10240)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1126, line: 636, size: 64, elements: !1814)
!1814 = !{!1815}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1813, file: !1126, line: 637, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1125, file: !1126, line: 1005, baseType: !754, size: 128, offset: 10304)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1125, file: !1126, line: 1007, baseType: !1124, size: 64, offset: 10432)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1125, file: !1126, line: 1009, baseType: !1820, size: 64, offset: 10496)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1126, line: 1009, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1125, file: !1126, line: 1043, baseType: !302, size: 64, offset: 10560)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1125, file: !1126, line: 1046, baseType: !1824, size: 64, offset: 10624)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1126, line: 41, flags: DIFlagFwdDecl)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1125, file: !1126, line: 1050, baseType: !1827, size: 64, offset: 10688)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1126, line: 42, flags: DIFlagFwdDecl)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1125, file: !1126, line: 1054, baseType: !1830, size: 64, offset: 10752)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1126, line: 55, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1125, file: !1126, line: 1056, baseType: !1833, size: 64, offset: 10816)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1126, line: 40, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1125, file: !1126, line: 1058, baseType: !1836, size: 64, offset: 10880)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1838, line: 99, size: 704, elements: !1839)
!1838 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1839 = !{!1840, !1841, !1842, !1843, !1844, !1845, !1846, !1865, !1866}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1837, file: !1838, line: 100, baseType: !679, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1837, file: !1838, line: 101, baseType: !749, size: 32, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1837, file: !1838, line: 102, baseType: !749, size: 32, offset: 96)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1837, file: !1838, line: 105, baseType: !189, offset: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1837, file: !1838, line: 107, baseType: !115, size: 16, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1837, file: !1838, line: 109, baseType: !740, size: 128, offset: 192)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1837, file: !1838, line: 110, baseType: !1847, size: 64, offset: 320)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1838, line: 73, size: 448, elements: !1849)
!1849 = !{!1850, !1853, !1854, !1859, !1864}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1848, file: !1838, line: 74, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1838, line: 74, flags: DIFlagFwdDecl)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1848, file: !1838, line: 75, baseType: !1836, size: 64, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, scope: !1848, file: !1838, line: 83, baseType: !1855, size: 128, offset: 128)
!1855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1848, file: !1838, line: 83, size: 128, elements: !1856)
!1856 = !{!1857, !1858}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1855, file: !1838, line: 84, baseType: !175, size: 128)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1855, file: !1838, line: 85, baseType: !930, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, scope: !1848, file: !1838, line: 87, baseType: !1860, size: 128, offset: 256)
!1860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1848, file: !1838, line: 87, size: 128, elements: !1861)
!1861 = !{!1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1860, file: !1838, line: 88, baseType: !591, size: 128)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1860, file: !1838, line: 89, baseType: !320, size: 128, align: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1848, file: !1838, line: 92, baseType: !7, size: 32, offset: 384)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1837, file: !1838, line: 111, baseType: !587, size: 64, offset: 384)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1837, file: !1838, line: 113, baseType: !1867, size: 256, offset: 448)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1868, line: 102, size: 256, elements: !1869)
!1868 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1869 = !{!1870, !1871, !1872}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1867, file: !1868, line: 103, baseType: !679, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1867, file: !1868, line: 104, baseType: !175, size: 128, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1867, file: !1868, line: 105, baseType: !1873, size: 64, offset: 192)
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1868, line: 21, baseType: !1874)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{null, !1877}
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1125, file: !1126, line: 1061, baseType: !1879, size: 64, offset: 10944)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1126, line: 43, flags: DIFlagFwdDecl)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1125, file: !1126, line: 1064, baseType: !109, size: 64, offset: 11008)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1125, file: !1126, line: 1065, baseType: !1883, size: 64, offset: 11072)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1674, line: 14, baseType: !1885)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1674, line: 12, size: 384, elements: !1886)
!1886 = !{!1887}
!1887 = !DIDerivedType(tag: DW_TAG_member, scope: !1885, file: !1674, line: 13, baseType: !1888, size: 384)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1885, file: !1674, line: 13, size: 384, elements: !1889)
!1889 = !{!1890, !1891, !1892, !1893}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1888, file: !1674, line: 13, baseType: !155, size: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1888, file: !1674, line: 13, baseType: !155, size: 32, offset: 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1888, file: !1674, line: 13, baseType: !155, size: 32, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1888, file: !1674, line: 13, baseType: !1894, size: 256, offset: 128)
!1894 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1895, line: 32, size: 256, elements: !1896)
!1895 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1896 = !{!1897, !1902, !1915, !1921, !1930, !1950, !1955}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1894, file: !1895, line: 37, baseType: !1898, size: 64)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1894, file: !1895, line: 34, size: 64, elements: !1899)
!1899 = !{!1900, !1901}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1898, file: !1895, line: 35, baseType: !1368, size: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1898, file: !1895, line: 36, baseType: !390, size: 32, offset: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1894, file: !1895, line: 45, baseType: !1903, size: 192)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1894, file: !1895, line: 40, size: 192, elements: !1904)
!1904 = !{!1905, !1907, !1908, !1914}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1903, file: !1895, line: 41, baseType: !1906, size: 32)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !263, line: 95, baseType: !155)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1903, file: !1895, line: 42, baseType: !155, size: 32, offset: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1903, file: !1895, line: 43, baseType: !1909, size: 64, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1895, line: 11, baseType: !1910)
!1910 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1895, line: 8, size: 64, elements: !1911)
!1911 = !{!1912, !1913}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1910, file: !1895, line: 9, baseType: !155, size: 32)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1910, file: !1895, line: 10, baseType: !302, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1903, file: !1895, line: 44, baseType: !155, size: 32, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1894, file: !1895, line: 52, baseType: !1916, size: 128)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1894, file: !1895, line: 48, size: 128, elements: !1917)
!1917 = !{!1918, !1919, !1920}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1916, file: !1895, line: 49, baseType: !1368, size: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1916, file: !1895, line: 50, baseType: !390, size: 32, offset: 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1916, file: !1895, line: 51, baseType: !1909, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1894, file: !1895, line: 61, baseType: !1922, size: 256)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1894, file: !1895, line: 55, size: 256, elements: !1923)
!1923 = !{!1924, !1925, !1926, !1927, !1929}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1922, file: !1895, line: 56, baseType: !1368, size: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1922, file: !1895, line: 57, baseType: !390, size: 32, offset: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1922, file: !1895, line: 58, baseType: !155, size: 32, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1922, file: !1895, line: 59, baseType: !1928, size: 64, offset: 128)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !263, line: 94, baseType: !264)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1922, file: !1895, line: 60, baseType: !1928, size: 64, offset: 192)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1894, file: !1895, line: 95, baseType: !1931, size: 256)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1894, file: !1895, line: 64, size: 256, elements: !1932)
!1932 = !{!1933, !1934}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1931, file: !1895, line: 65, baseType: !302, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, scope: !1931, file: !1895, line: 77, baseType: !1935, size: 192, offset: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1931, file: !1895, line: 77, size: 192, elements: !1936)
!1936 = !{!1937, !1938, !1945}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1935, file: !1895, line: 82, baseType: !1113, size: 16)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1935, file: !1895, line: 88, baseType: !1939, size: 192)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1935, file: !1895, line: 84, size: 192, elements: !1940)
!1940 = !{!1941, !1943, !1944}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1939, file: !1895, line: 85, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 64, elements: !1238)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1939, file: !1895, line: 86, baseType: !302, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1939, file: !1895, line: 87, baseType: !302, size: 64, offset: 128)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1935, file: !1895, line: 93, baseType: !1946, size: 96)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1935, file: !1895, line: 90, size: 96, elements: !1947)
!1947 = !{!1948, !1949}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1946, file: !1895, line: 91, baseType: !1942, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1946, file: !1895, line: 92, baseType: !371, size: 32, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1894, file: !1895, line: 101, baseType: !1951, size: 128)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1894, file: !1895, line: 98, size: 128, elements: !1952)
!1952 = !{!1953, !1954}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1951, file: !1895, line: 99, baseType: !265, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1951, file: !1895, line: 100, baseType: !155, size: 32, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1894, file: !1895, line: 108, baseType: !1956, size: 128)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1894, file: !1895, line: 104, size: 128, elements: !1957)
!1957 = !{!1958, !1959, !1960}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1956, file: !1895, line: 105, baseType: !302, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1956, file: !1895, line: 106, baseType: !155, size: 32, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1956, file: !1895, line: 107, baseType: !7, size: 32, offset: 96)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1125, file: !1126, line: 1067, baseType: !1746, offset: 11136)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1125, file: !1126, line: 1099, baseType: !1963, size: 64, offset: 11136)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1126, line: 56, flags: DIFlagFwdDecl)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1125, file: !1126, line: 1103, baseType: !175, size: 128, offset: 11200)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1125, file: !1126, line: 1104, baseType: !1967, size: 64, offset: 11328)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1126, line: 46, flags: DIFlagFwdDecl)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1125, file: !1126, line: 1105, baseType: !675, size: 192, offset: 11392)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1125, file: !1126, line: 1106, baseType: !7, size: 32, offset: 11584)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1125, file: !1126, line: 1109, baseType: !1972, size: 128, offset: 11648)
!1972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1973, size: 128, elements: !1477)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1126, line: 51, flags: DIFlagFwdDecl)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1125, file: !1126, line: 1110, baseType: !675, size: 192, offset: 11776)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1125, file: !1126, line: 1111, baseType: !175, size: 128, offset: 11968)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1125, file: !1126, line: 1173, baseType: !1978, size: 64, offset: 12096)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1980, line: 62, size: 256, align: 256, elements: !1981)
!1980 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1981 = !{!1982, !1983, !1984, !1989}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1979, file: !1980, line: 75, baseType: !371, size: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1979, file: !1980, line: 90, baseType: !371, size: 32, offset: 32)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1979, file: !1980, line: 124, baseType: !1985, size: 64, offset: 64)
!1985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1979, file: !1980, line: 109, size: 64, elements: !1986)
!1986 = !{!1987, !1988}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1985, file: !1980, line: 110, baseType: !122, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1985, file: !1980, line: 112, baseType: !122, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1979, file: !1980, line: 144, baseType: !371, size: 32, offset: 128)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1125, file: !1126, line: 1174, baseType: !370, size: 32, offset: 12160)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1125, file: !1126, line: 1179, baseType: !109, size: 64, offset: 12224)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1125, file: !1126, line: 1182, baseType: !1993, size: 128, offset: 12288)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1065, line: 76, size: 128, elements: !1994)
!1994 = !{!1995, !2000, !2001}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1993, file: !1065, line: 85, baseType: !1996, size: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1997, line: 7, size: 64, elements: !1998)
!1997 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1998 = !{!1999}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1996, file: !1997, line: 12, baseType: !1275, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1993, file: !1065, line: 88, baseType: !439, size: 8, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1993, file: !1065, line: 95, baseType: !439, size: 8, offset: 72)
!2002 = !DIDerivedType(tag: DW_TAG_member, scope: !1125, file: !1126, line: 1184, baseType: !2003, size: 128, offset: 12416)
!2003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1125, file: !1126, line: 1184, size: 128, elements: !2004)
!2004 = !{!2005, !2006}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2003, file: !1126, line: 1185, baseType: !1138, size: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2003, file: !1126, line: 1186, baseType: !320, size: 128, align: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1125, file: !1126, line: 1190, baseType: !2008, size: 64, offset: 12544)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1126, line: 53, flags: DIFlagFwdDecl)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1125, file: !1126, line: 1192, baseType: !2011, size: 128, offset: 12608)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1065, line: 64, size: 128, elements: !2012)
!2012 = !{!2013, !2014, !2015}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2011, file: !1065, line: 65, baseType: !722, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2011, file: !1065, line: 67, baseType: !371, size: 32, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2011, file: !1065, line: 68, baseType: !371, size: 32, offset: 96)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1125, file: !1126, line: 1206, baseType: !155, size: 32, offset: 12736)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1125, file: !1126, line: 1207, baseType: !155, size: 32, offset: 12768)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1125, file: !1126, line: 1209, baseType: !109, size: 64, offset: 12800)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1125, file: !1126, line: 1219, baseType: !120, size: 64, offset: 12864)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1125, file: !1126, line: 1220, baseType: !120, size: 64, offset: 12928)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1125, file: !1126, line: 1317, baseType: !155, size: 32, offset: 12992)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1125, file: !1126, line: 1319, baseType: !1124, size: 64, offset: 13056)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1125, file: !1126, line: 1322, baseType: !2024, size: 64, offset: 13120)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2026, line: 56, size: 512, elements: !2027)
!2026 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2027 = !{!2028, !2029, !2030, !2031, !2032, !2033, !2034, !2036}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2025, file: !2026, line: 57, baseType: !2024, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2025, file: !2026, line: 58, baseType: !302, size: 64, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2025, file: !2026, line: 59, baseType: !109, size: 64, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2025, file: !2026, line: 60, baseType: !109, size: 64, offset: 192)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2025, file: !2026, line: 61, baseType: !815, size: 64, offset: 256)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2025, file: !2026, line: 62, baseType: !7, size: 32, offset: 320)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2025, file: !2026, line: 63, baseType: !2035, size: 64, offset: 384)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !176, line: 153, baseType: !120)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2025, file: !2026, line: 64, baseType: !2037, size: 64, offset: 448)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1125, file: !1126, line: 1326, baseType: !1138, size: 32, offset: 13184)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1125, file: !1126, line: 1342, baseType: !302, size: 64, offset: 13248)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1125, file: !1126, line: 1343, baseType: !122, size: 64, offset: 13312)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1125, file: !1126, line: 1344, baseType: !120, size: 64, offset: 13376)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1125, file: !1126, line: 1345, baseType: !122, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1125, file: !1126, line: 1346, baseType: !122, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1125, file: !1126, line: 1347, baseType: !122, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1125, file: !1126, line: 1348, baseType: !320, size: 128, align: 64, offset: 13504)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1125, file: !1126, line: 1358, baseType: !2048, size: 34816, offset: 13824)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2049, line: 485, size: 34816, elements: !2050)
!2049 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2050 = !{!2051, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2080, !2081, !2082, !2083, !2084, !2085, !2088, !2089, !2090}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2048, file: !2049, line: 487, baseType: !2052, size: 192)
!2052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2053, size: 192, elements: !231)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2054, line: 16, size: 64, elements: !2055)
!2054 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2055 = !{!2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2053, file: !2054, line: 17, baseType: !854, size: 16)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2053, file: !2054, line: 18, baseType: !854, size: 16, offset: 16)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2053, file: !2054, line: 19, baseType: !854, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2053, file: !2054, line: 19, baseType: !854, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2053, file: !2054, line: 19, baseType: !854, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2053, file: !2054, line: 19, baseType: !854, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2053, file: !2054, line: 19, baseType: !854, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2053, file: !2054, line: 20, baseType: !854, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2053, file: !2054, line: 20, baseType: !854, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2053, file: !2054, line: 20, baseType: !854, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2053, file: !2054, line: 20, baseType: !854, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2053, file: !2054, line: 20, baseType: !854, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2053, file: !2054, line: 20, baseType: !854, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2048, file: !2049, line: 491, baseType: !109, size: 64, offset: 192)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2048, file: !2049, line: 495, baseType: !115, size: 16, offset: 256)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2048, file: !2049, line: 496, baseType: !115, size: 16, offset: 272)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2048, file: !2049, line: 497, baseType: !115, size: 16, offset: 288)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2048, file: !2049, line: 498, baseType: !115, size: 16, offset: 304)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2048, file: !2049, line: 502, baseType: !109, size: 64, offset: 320)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2048, file: !2049, line: 503, baseType: !109, size: 64, offset: 384)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2048, file: !2049, line: 514, baseType: !2077, size: 256, offset: 448)
!2077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2078, size: 256, elements: !1069)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2049, line: 483, flags: DIFlagFwdDecl)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2048, file: !2049, line: 516, baseType: !109, size: 64, offset: 704)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2048, file: !2049, line: 518, baseType: !109, size: 64, offset: 768)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2048, file: !2049, line: 520, baseType: !109, size: 64, offset: 832)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2048, file: !2049, line: 521, baseType: !109, size: 64, offset: 896)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2048, file: !2049, line: 522, baseType: !109, size: 64, offset: 960)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2048, file: !2049, line: 528, baseType: !2086, size: 64, offset: 1024)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2049, line: 10, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2048, file: !2049, line: 535, baseType: !109, size: 64, offset: 1088)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2048, file: !2049, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2048, file: !2049, line: 540, baseType: !2091, size: 33280, offset: 1536)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2092, line: 317, size: 33280, elements: !2093)
!2092 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2093 = !{!2094, !2095, !2096}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2091, file: !2092, line: 330, baseType: !7, size: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2091, file: !2092, line: 337, baseType: !109, size: 64, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2091, file: !2092, line: 348, baseType: !2097, size: 32768, offset: 512)
!2097 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2092, line: 304, size: 32768, elements: !2098)
!2098 = !{!2099, !2114, !2153, !2203, !2216}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2097, file: !2092, line: 305, baseType: !2100, size: 896)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2092, line: 12, size: 896, elements: !2101)
!2101 = !{!2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2113}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2100, file: !2092, line: 13, baseType: !370, size: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2100, file: !2092, line: 14, baseType: !370, size: 32, offset: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2100, file: !2092, line: 15, baseType: !370, size: 32, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2100, file: !2092, line: 16, baseType: !370, size: 32, offset: 96)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2100, file: !2092, line: 17, baseType: !370, size: 32, offset: 128)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2100, file: !2092, line: 18, baseType: !370, size: 32, offset: 160)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2100, file: !2092, line: 19, baseType: !370, size: 32, offset: 192)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2100, file: !2092, line: 22, baseType: !2110, size: 640, offset: 224)
!2110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 640, elements: !2111)
!2111 = !{!2112}
!2112 = !DISubrange(count: 20)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2100, file: !2092, line: 25, baseType: !370, size: 32, offset: 864)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2097, file: !2092, line: 306, baseType: !2115, size: 4096, align: 128)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2092, line: 34, size: 4096, align: 128, elements: !2116)
!2116 = !{!2117, !2118, !2119, !2120, !2121, !2136, !2137, !2138, !2142, !2144, !2148}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2115, file: !2092, line: 35, baseType: !854, size: 16)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2115, file: !2092, line: 36, baseType: !854, size: 16, offset: 16)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2115, file: !2092, line: 37, baseType: !854, size: 16, offset: 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2115, file: !2092, line: 38, baseType: !854, size: 16, offset: 48)
!2121 = !DIDerivedType(tag: DW_TAG_member, scope: !2115, file: !2092, line: 39, baseType: !2122, size: 128, offset: 64)
!2122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2115, file: !2092, line: 39, size: 128, elements: !2123)
!2123 = !{!2124, !2129}
!2124 = !DIDerivedType(tag: DW_TAG_member, scope: !2122, file: !2092, line: 40, baseType: !2125, size: 128)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2122, file: !2092, line: 40, size: 128, elements: !2126)
!2126 = !{!2127, !2128}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2125, file: !2092, line: 41, baseType: !120, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2125, file: !2092, line: 42, baseType: !120, size: 64, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, scope: !2122, file: !2092, line: 44, baseType: !2130, size: 128)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2122, file: !2092, line: 44, size: 128, elements: !2131)
!2131 = !{!2132, !2133, !2134, !2135}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2130, file: !2092, line: 45, baseType: !370, size: 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2130, file: !2092, line: 46, baseType: !370, size: 32, offset: 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2130, file: !2092, line: 47, baseType: !370, size: 32, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2130, file: !2092, line: 48, baseType: !370, size: 32, offset: 96)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2115, file: !2092, line: 51, baseType: !370, size: 32, offset: 192)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2115, file: !2092, line: 52, baseType: !370, size: 32, offset: 224)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2115, file: !2092, line: 55, baseType: !2139, size: 1024, offset: 256)
!2139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 1024, elements: !2140)
!2140 = !{!2141}
!2141 = !DISubrange(count: 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2115, file: !2092, line: 58, baseType: !2143, size: 2048, offset: 1280)
!2143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 2048, elements: !235)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2115, file: !2092, line: 60, baseType: !2145, size: 384, offset: 3328)
!2145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 384, elements: !2146)
!2146 = !{!2147}
!2147 = !DISubrange(count: 12)
!2148 = !DIDerivedType(tag: DW_TAG_member, scope: !2115, file: !2092, line: 62, baseType: !2149, size: 384, offset: 3712)
!2149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2115, file: !2092, line: 62, size: 384, elements: !2150)
!2150 = !{!2151, !2152}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2149, file: !2092, line: 63, baseType: !2145, size: 384)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2149, file: !2092, line: 64, baseType: !2145, size: 384)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2097, file: !2092, line: 307, baseType: !2154, size: 1088)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2092, line: 79, size: 1088, elements: !2155)
!2155 = !{!2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2202}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2154, file: !2092, line: 80, baseType: !370, size: 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2154, file: !2092, line: 81, baseType: !370, size: 32, offset: 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2154, file: !2092, line: 82, baseType: !370, size: 32, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2154, file: !2092, line: 83, baseType: !370, size: 32, offset: 96)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2154, file: !2092, line: 84, baseType: !370, size: 32, offset: 128)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2154, file: !2092, line: 85, baseType: !370, size: 32, offset: 160)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2154, file: !2092, line: 86, baseType: !370, size: 32, offset: 192)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2154, file: !2092, line: 88, baseType: !2110, size: 640, offset: 224)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2154, file: !2092, line: 89, baseType: !1260, size: 8, offset: 864)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2154, file: !2092, line: 90, baseType: !1260, size: 8, offset: 872)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2154, file: !2092, line: 91, baseType: !1260, size: 8, offset: 880)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2154, file: !2092, line: 92, baseType: !1260, size: 8, offset: 888)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2154, file: !2092, line: 93, baseType: !1260, size: 8, offset: 896)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2154, file: !2092, line: 94, baseType: !1260, size: 8, offset: 904)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2154, file: !2092, line: 95, baseType: !2171, size: 64, offset: 960)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2173, line: 11, size: 128, elements: !2174)
!2173 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2174 = !{!2175, !2176}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2172, file: !2173, line: 12, baseType: !265, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2172, file: !2173, line: 13, baseType: !2177, size: 64, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2179, line: 56, size: 1344, elements: !2180)
!2179 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2180 = !{!2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2178, file: !2179, line: 61, baseType: !109, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2178, file: !2179, line: 62, baseType: !109, size: 64, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2178, file: !2179, line: 63, baseType: !109, size: 64, offset: 128)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2178, file: !2179, line: 64, baseType: !109, size: 64, offset: 192)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2178, file: !2179, line: 65, baseType: !109, size: 64, offset: 256)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2178, file: !2179, line: 66, baseType: !109, size: 64, offset: 320)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2178, file: !2179, line: 68, baseType: !109, size: 64, offset: 384)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2178, file: !2179, line: 69, baseType: !109, size: 64, offset: 448)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2178, file: !2179, line: 70, baseType: !109, size: 64, offset: 512)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2178, file: !2179, line: 71, baseType: !109, size: 64, offset: 576)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2178, file: !2179, line: 72, baseType: !109, size: 64, offset: 640)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2178, file: !2179, line: 73, baseType: !109, size: 64, offset: 704)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2178, file: !2179, line: 74, baseType: !109, size: 64, offset: 768)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2178, file: !2179, line: 75, baseType: !109, size: 64, offset: 832)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2178, file: !2179, line: 76, baseType: !109, size: 64, offset: 896)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2178, file: !2179, line: 81, baseType: !109, size: 64, offset: 960)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2178, file: !2179, line: 83, baseType: !109, size: 64, offset: 1024)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2178, file: !2179, line: 84, baseType: !109, size: 64, offset: 1088)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2178, file: !2179, line: 85, baseType: !109, size: 64, offset: 1152)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2178, file: !2179, line: 86, baseType: !109, size: 64, offset: 1216)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2178, file: !2179, line: 87, baseType: !109, size: 64, offset: 1280)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2154, file: !2092, line: 96, baseType: !370, size: 32, offset: 1024)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2097, file: !2092, line: 308, baseType: !2204, size: 4608, align: 512)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2092, line: 289, size: 4608, align: 512, elements: !2205)
!2205 = !{!2206, !2207, !2214}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2204, file: !2092, line: 290, baseType: !2115, size: 4096, align: 128)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2204, file: !2092, line: 291, baseType: !2208, size: 512, offset: 4096)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2092, line: 268, size: 512, elements: !2209)
!2209 = !{!2210, !2211, !2212}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2208, file: !2092, line: 269, baseType: !120, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2208, file: !2092, line: 270, baseType: !120, size: 64, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2208, file: !2092, line: 271, baseType: !2213, size: 384, offset: 128)
!2213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 384, elements: !1533)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2204, file: !2092, line: 292, baseType: !2215, offset: 4608)
!2215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1260, elements: !1631)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2097, file: !2092, line: 309, baseType: !2217, size: 32768)
!2217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1260, size: 32768, elements: !2218)
!2218 = !{!2219}
!2219 = !DISubrange(count: 4096)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1121, file: !724, line: 378, baseType: !2221, size: 64, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1117, file: !724, line: 384, baseType: !1410, size: 192, offset: 192)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !974, file: !724, line: 500, baseType: !189, offset: 6656)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !974, file: !724, line: 501, baseType: !2225, size: 64, offset: 6656)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !724, line: 387, flags: DIFlagFwdDecl)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !974, file: !724, line: 516, baseType: !1621, size: 64, offset: 6720)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !974, file: !724, line: 519, baseType: !307, size: 64, offset: 6784)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !974, file: !724, line: 521, baseType: !2230, size: 64, offset: 6848)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !724, line: 521, flags: DIFlagFwdDecl)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !974, file: !724, line: 545, baseType: !749, size: 32, offset: 6912)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !974, file: !724, line: 548, baseType: !439, size: 8, offset: 6944)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !974, file: !724, line: 550, baseType: !2235, offset: 6952)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2236, line: 142, elements: !203)
!2236 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !974, file: !724, line: 554, baseType: !1867, size: 256, offset: 6976)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !974, file: !724, line: 557, baseType: !370, size: 32, offset: 7232)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !971, file: !724, line: 565, baseType: !2240, offset: 7296)
!2240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, elements: !2241)
!2241 = !{!2242}
!2242 = !DISubrange(count: -1)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !967, file: !724, line: 151, baseType: !749, size: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !959, file: !724, line: 156, baseType: !189, offset: 256)
!2245 = !DIDerivedType(tag: DW_TAG_member, scope: !728, file: !724, line: 159, baseType: !2246, size: 128)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !728, file: !724, line: 159, size: 128, elements: !2247)
!2247 = !{!2248, !2251}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2246, file: !724, line: 161, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !724, line: 161, flags: DIFlagFwdDecl)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2246, file: !724, line: 162, baseType: !302, size: 64, offset: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !728, file: !724, line: 176, baseType: !320, size: 128, align: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, scope: !723, file: !724, line: 179, baseType: !2254, size: 32, offset: 384)
!2254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !723, file: !724, line: 179, size: 32, elements: !2255)
!2255 = !{!2256, !2257, !2258, !2259}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2254, file: !724, line: 184, baseType: !749, size: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2254, file: !724, line: 192, baseType: !7, size: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2254, file: !724, line: 194, baseType: !7, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2254, file: !724, line: 195, baseType: !155, size: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !723, file: !724, line: 199, baseType: !749, size: 32, offset: 416)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !609, file: !31, line: 1964, baseType: !2262, size: 64, offset: 1344)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!265, !548, !2265}
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2267, line: 12, size: 256, elements: !2268)
!2267 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2268 = !{!2269, !2270, !2271, !2272, !2273}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2266, file: !2267, line: 13, baseType: !745, size: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2266, file: !2267, line: 16, baseType: !155, size: 32, offset: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2266, file: !2267, line: 23, baseType: !109, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2266, file: !2267, line: 30, baseType: !109, size: 64, offset: 128)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2266, file: !2267, line: 33, baseType: !2274, size: 64, offset: 192)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !724, line: 27, flags: DIFlagFwdDecl)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !609, file: !31, line: 1966, baseType: !2262, size: 64, offset: 1408)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !549, file: !31, line: 1424, baseType: !2278, size: 64, offset: 448)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2280)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 322, size: 704, elements: !2281)
!2281 = !{!2282, !2328, !2332, !2336, !2337, !2338, !2339, !2340, !2345, !2350, !2354}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2280, file: !25, line: 323, baseType: !2283, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!155, !2286}
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 294, size: 1600, elements: !2288)
!2288 = !{!2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2313, !2314, !2315}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2287, file: !25, line: 295, baseType: !591, size: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2287, file: !25, line: 296, baseType: !175, size: 128, offset: 128)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2287, file: !25, line: 297, baseType: !175, size: 128, offset: 256)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2287, file: !25, line: 298, baseType: !175, size: 128, offset: 384)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2287, file: !25, line: 299, baseType: !675, size: 192, offset: 512)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2287, file: !25, line: 300, baseType: !189, offset: 704)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2287, file: !25, line: 301, baseType: !749, size: 32, offset: 704)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2287, file: !25, line: 302, baseType: !548, size: 64, offset: 768)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2287, file: !25, line: 303, baseType: !2298, size: 64, offset: 832)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !2299)
!2299 = !{!2300, !2312}
!2300 = !DIDerivedType(tag: DW_TAG_member, scope: !2298, file: !25, line: 69, baseType: !2301, size: 32)
!2301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2298, file: !25, line: 69, size: 32, elements: !2302)
!2302 = !{!2303, !2304, !2305}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2301, file: !25, line: 70, baseType: !384, size: 32)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2301, file: !25, line: 71, baseType: !392, size: 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2301, file: !25, line: 72, baseType: !2306, size: 32)
!2306 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2307, line: 24, baseType: !2308)
!2307 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2307, line: 22, size: 32, elements: !2309)
!2309 = !{!2310}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2308, file: !2307, line: 23, baseType: !2311, size: 32)
!2311 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2307, line: 20, baseType: !390)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2298, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2287, file: !25, line: 304, baseType: !480, size: 64, offset: 896)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2287, file: !25, line: 305, baseType: !109, size: 64, offset: 960)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2287, file: !25, line: 306, baseType: !2316, size: 576, offset: 1024)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !2317)
!2317 = !{!2318, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2316, file: !25, line: 206, baseType: !2319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !482)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2316, file: !25, line: 207, baseType: !2319, size: 64, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2316, file: !25, line: 208, baseType: !2319, size: 64, offset: 128)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2316, file: !25, line: 209, baseType: !2319, size: 64, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2316, file: !25, line: 210, baseType: !2319, size: 64, offset: 256)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2316, file: !25, line: 211, baseType: !2319, size: 64, offset: 320)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2316, file: !25, line: 212, baseType: !2319, size: 64, offset: 384)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2316, file: !25, line: 213, baseType: !488, size: 64, offset: 448)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2316, file: !25, line: 214, baseType: !488, size: 64, offset: 512)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2280, file: !25, line: 324, baseType: !2329, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!2286, !548, !155}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2280, file: !25, line: 325, baseType: !2333, size: 64, offset: 128)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{null, !2286}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2280, file: !25, line: 326, baseType: !2283, size: 64, offset: 192)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2280, file: !25, line: 327, baseType: !2283, size: 64, offset: 256)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2280, file: !25, line: 328, baseType: !2283, size: 64, offset: 320)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2280, file: !25, line: 329, baseType: !637, size: 64, offset: 384)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2280, file: !25, line: 332, baseType: !2341, size: 64, offset: 448)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!2344, !378}
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2280, file: !25, line: 333, baseType: !2346, size: 64, offset: 512)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!155, !378, !2349}
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2280, file: !25, line: 335, baseType: !2351, size: 64, offset: 576)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!155, !378, !2344}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2280, file: !25, line: 337, baseType: !2355, size: 64, offset: 640)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!155, !548, !2358}
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !549, file: !31, line: 1425, baseType: !2360, size: 64, offset: 512)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2362)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 428, size: 704, elements: !2363)
!2363 = !{!2364, !2368, !2369, !2373, !2374, !2375, !2390, !2413, !2417, !2418, !2441}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2362, file: !25, line: 429, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!155, !548, !155, !155, !498}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2362, file: !25, line: 430, baseType: !637, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2362, file: !25, line: 431, baseType: !2370, size: 64, offset: 128)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!155, !548, !7}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2362, file: !25, line: 432, baseType: !2370, size: 64, offset: 192)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2362, file: !25, line: 433, baseType: !637, size: 64, offset: 256)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2362, file: !25, line: 434, baseType: !2376, size: 64, offset: 320)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!155, !548, !155, !2379}
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 415, size: 256, elements: !2381)
!2381 = !{!2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2380, file: !25, line: 416, baseType: !155, size: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2380, file: !25, line: 417, baseType: !7, size: 32, offset: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2380, file: !25, line: 418, baseType: !7, size: 32, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2380, file: !25, line: 420, baseType: !7, size: 32, offset: 96)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2380, file: !25, line: 421, baseType: !7, size: 32, offset: 128)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2380, file: !25, line: 422, baseType: !7, size: 32, offset: 160)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2380, file: !25, line: 423, baseType: !7, size: 32, offset: 192)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2380, file: !25, line: 424, baseType: !7, size: 32, offset: 224)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2362, file: !25, line: 435, baseType: !2391, size: 64, offset: 384)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!155, !548, !2298, !2394}
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 343, size: 960, elements: !2396)
!2396 = !{!2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2395, file: !25, line: 344, baseType: !155, size: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2395, file: !25, line: 345, baseType: !120, size: 64, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2395, file: !25, line: 346, baseType: !120, size: 64, offset: 128)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2395, file: !25, line: 347, baseType: !120, size: 64, offset: 192)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2395, file: !25, line: 348, baseType: !120, size: 64, offset: 256)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2395, file: !25, line: 349, baseType: !120, size: 64, offset: 320)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2395, file: !25, line: 350, baseType: !120, size: 64, offset: 384)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2395, file: !25, line: 351, baseType: !685, size: 64, offset: 448)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2395, file: !25, line: 353, baseType: !685, size: 64, offset: 512)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2395, file: !25, line: 354, baseType: !155, size: 32, offset: 576)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2395, file: !25, line: 355, baseType: !155, size: 32, offset: 608)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2395, file: !25, line: 356, baseType: !120, size: 64, offset: 640)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2395, file: !25, line: 357, baseType: !120, size: 64, offset: 704)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2395, file: !25, line: 358, baseType: !120, size: 64, offset: 768)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2395, file: !25, line: 359, baseType: !685, size: 64, offset: 832)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2395, file: !25, line: 360, baseType: !155, size: 32, offset: 896)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2362, file: !25, line: 436, baseType: !2414, size: 64, offset: 448)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!155, !548, !2358, !2394}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2362, file: !25, line: 438, baseType: !2391, size: 64, offset: 512)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2362, file: !25, line: 439, baseType: !2419, size: 64, offset: 576)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!155, !548, !2422}
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 409, size: 1408, elements: !2424)
!2424 = !{!2425, !2426}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2423, file: !25, line: 410, baseType: !7, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2423, file: !25, line: 411, baseType: !2427, size: 1344, offset: 64)
!2427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2428, size: 1344, elements: !231)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 395, size: 448, elements: !2429)
!2429 = !{!2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2440}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2428, file: !25, line: 396, baseType: !7, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2428, file: !25, line: 397, baseType: !7, size: 32, offset: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2428, file: !25, line: 399, baseType: !7, size: 32, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2428, file: !25, line: 400, baseType: !7, size: 32, offset: 96)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2428, file: !25, line: 401, baseType: !7, size: 32, offset: 128)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2428, file: !25, line: 402, baseType: !7, size: 32, offset: 160)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2428, file: !25, line: 403, baseType: !7, size: 32, offset: 192)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2428, file: !25, line: 404, baseType: !124, size: 64, offset: 256)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2428, file: !25, line: 405, baseType: !2439, size: 64, offset: 320)
!2439 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !176, line: 126, baseType: !120)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2428, file: !25, line: 406, baseType: !2439, size: 64, offset: 384)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2362, file: !25, line: 440, baseType: !2370, size: 64, offset: 640)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !549, file: !31, line: 1426, baseType: !2443, size: 64, offset: 576)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2445)
!2445 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !549, file: !31, line: 1427, baseType: !109, size: 64, offset: 640)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !549, file: !31, line: 1428, baseType: !109, size: 64, offset: 704)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !549, file: !31, line: 1429, baseType: !109, size: 64, offset: 768)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !549, file: !31, line: 1430, baseType: !337, size: 64, offset: 832)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !549, file: !31, line: 1431, baseType: !769, size: 256, offset: 896)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !549, file: !31, line: 1432, baseType: !155, size: 32, offset: 1152)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !549, file: !31, line: 1433, baseType: !749, size: 32, offset: 1184)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !549, file: !31, line: 1437, baseType: !2454, size: 64, offset: 1216)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2457)
!2457 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !549, file: !31, line: 1449, baseType: !2459, size: 64, offset: 1280)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !353, line: 34, size: 64, elements: !2460)
!2460 = !{!2461}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2459, file: !353, line: 35, baseType: !356, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !549, file: !31, line: 1450, baseType: !175, size: 128, offset: 1344)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !549, file: !31, line: 1451, baseType: !2464, size: 64, offset: 1472)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !549, file: !31, line: 1452, baseType: !1833, size: 64, offset: 1536)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !549, file: !31, line: 1453, baseType: !2468, size: 64, offset: 1600)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !549, file: !31, line: 1454, baseType: !591, size: 128, offset: 1664)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !549, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !549, file: !31, line: 1456, baseType: !2473, size: 2432, offset: 1856)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 518, size: 2432, elements: !2474)
!2474 = !{!2475, !2476, !2477, !2479, !2511}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2473, file: !25, line: 519, baseType: !7, size: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2473, file: !25, line: 520, baseType: !769, size: 256, offset: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2473, file: !25, line: 521, baseType: !2478, size: 192, offset: 320)
!2478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 192, elements: !231)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2473, file: !25, line: 522, baseType: !2480, size: 1728, offset: 512)
!2480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2481, size: 1728, elements: !231)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !2482)
!2482 = !{!2483, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2481, file: !25, line: 223, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 443, size: 256, elements: !2486)
!2486 = !{!2487, !2488, !2501, !2502}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2485, file: !25, line: 444, baseType: !155, size: 32)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2485, file: !25, line: 445, baseType: !2489, size: 64, offset: 64)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2491)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 310, size: 512, elements: !2492)
!2492 = !{!2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2491, file: !25, line: 311, baseType: !637, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2491, file: !25, line: 312, baseType: !637, size: 64, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2491, file: !25, line: 313, baseType: !637, size: 64, offset: 128)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2491, file: !25, line: 314, baseType: !637, size: 64, offset: 192)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2491, file: !25, line: 315, baseType: !2283, size: 64, offset: 256)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2491, file: !25, line: 316, baseType: !2283, size: 64, offset: 320)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2491, file: !25, line: 317, baseType: !2283, size: 64, offset: 384)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2491, file: !25, line: 318, baseType: !2355, size: 64, offset: 448)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2485, file: !25, line: 446, baseType: !582, size: 64, offset: 128)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2485, file: !25, line: 447, baseType: !2484, size: 64, offset: 192)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2481, file: !25, line: 224, baseType: !155, size: 32, offset: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2481, file: !25, line: 226, baseType: !175, size: 128, offset: 128)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2481, file: !25, line: 227, baseType: !109, size: 64, offset: 256)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2481, file: !25, line: 228, baseType: !7, size: 32, offset: 320)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2481, file: !25, line: 229, baseType: !7, size: 32, offset: 352)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2481, file: !25, line: 230, baseType: !2319, size: 64, offset: 384)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2481, file: !25, line: 231, baseType: !2319, size: 64, offset: 448)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2481, file: !25, line: 232, baseType: !302, size: 64, offset: 512)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2473, file: !25, line: 523, baseType: !2512, size: 192, offset: 2240)
!2512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2489, size: 192, elements: !231)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !549, file: !31, line: 1458, baseType: !2514, size: 2112, offset: 4288)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !2515)
!2515 = !{!2516, !2517, !2518}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2514, file: !31, line: 1411, baseType: !155, size: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2514, file: !31, line: 1412, baseType: !1389, size: 128, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2514, file: !31, line: 1413, baseType: !2519, size: 1920, offset: 192)
!2519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2520, size: 1920, elements: !231)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2521, line: 12, size: 640, elements: !2522)
!2521 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2522 = !{!2523, !2531, !2533, !2538, !2539}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2520, file: !2521, line: 13, baseType: !2524, size: 320)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2525, line: 17, size: 320, elements: !2526)
!2525 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2526 = !{!2527, !2528, !2529, !2530}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2524, file: !2525, line: 18, baseType: !155, size: 32)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2524, file: !2525, line: 19, baseType: !155, size: 32, offset: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2524, file: !2525, line: 20, baseType: !1389, size: 128, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2524, file: !2525, line: 22, baseType: !320, size: 128, align: 64, offset: 192)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2520, file: !2521, line: 14, baseType: !2532, size: 64, offset: 320)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2520, file: !2521, line: 15, baseType: !2534, size: 64, offset: 384)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2535, line: 16, size: 64, elements: !2536)
!2535 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2536 = !{!2537}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2534, file: !2535, line: 17, baseType: !1124, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2520, file: !2521, line: 16, baseType: !1389, size: 128, offset: 448)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2520, file: !2521, line: 17, baseType: !749, size: 32, offset: 576)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !549, file: !31, line: 1465, baseType: !302, size: 64, offset: 6400)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !549, file: !31, line: 1468, baseType: !370, size: 32, offset: 6464)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !549, file: !31, line: 1470, baseType: !488, size: 64, offset: 6528)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !549, file: !31, line: 1471, baseType: !488, size: 64, offset: 6592)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !549, file: !31, line: 1473, baseType: !371, size: 32, offset: 6656)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !549, file: !31, line: 1474, baseType: !2546, size: 64, offset: 6720)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !549, file: !31, line: 1477, baseType: !2549, size: 256, offset: 6784)
!2549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 256, elements: !2140)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !549, file: !31, line: 1478, baseType: !2551, size: 128, offset: 7040)
!2551 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2552, line: 18, baseType: !2553)
!2552 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2552, line: 16, size: 128, elements: !2554)
!2554 = !{!2555}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2553, file: !2552, line: 17, baseType: !2556, size: 128)
!2556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1261, size: 128, elements: !1643)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !549, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !549, file: !31, line: 1481, baseType: !2559, size: 32, offset: 7200)
!2559 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !176, line: 150, baseType: !7)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !549, file: !31, line: 1487, baseType: !675, size: 192, offset: 7232)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !549, file: !31, line: 1493, baseType: !161, size: 64, offset: 7424)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !549, file: !31, line: 1495, baseType: !2563, size: 64, offset: 7488)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2565)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !335, line: 135, size: 1024, align: 512, elements: !2566)
!2566 = !{!2567, !2571, !2572, !2579, !2585, !2589, !2593, !2597, !2598, !2602, !2606, !2611, !2615}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2565, file: !335, line: 136, baseType: !2568, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!155, !337, !7}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2565, file: !335, line: 137, baseType: !2568, size: 64, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2565, file: !335, line: 138, baseType: !2573, size: 64, offset: 128)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!155, !2576, !2578}
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2565, file: !335, line: 139, baseType: !2580, size: 64, offset: 192)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!155, !2576, !7, !161, !2583}
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2565, file: !335, line: 141, baseType: !2586, size: 64, offset: 256)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!155, !2576}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2565, file: !335, line: 142, baseType: !2590, size: 64, offset: 320)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!155, !337}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2565, file: !335, line: 143, baseType: !2594, size: 64, offset: 384)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{null, !337}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2565, file: !335, line: 144, baseType: !2594, size: 64, offset: 448)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2565, file: !335, line: 145, baseType: !2599, size: 64, offset: 512)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{null, !337, !378}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2565, file: !335, line: 146, baseType: !2603, size: 64, offset: 576)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!230, !337, !230, !155}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2565, file: !335, line: 147, baseType: !2607, size: 64, offset: 640)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!333, !2610}
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2565, file: !335, line: 148, baseType: !2612, size: 64, offset: 704)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!155, !498, !439}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2565, file: !335, line: 149, baseType: !2616, size: 64, offset: 768)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!337, !337, !2619}
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !549, file: !31, line: 1500, baseType: !155, size: 32, offset: 7552)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !549, file: !31, line: 1502, baseType: !2623, size: 448, offset: 7616)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2267, line: 60, size: 448, elements: !2624)
!2624 = !{!2625, !2630, !2631, !2632, !2633, !2634, !2635}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2623, file: !2267, line: 61, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!109, !2629, !2265}
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2623, file: !2267, line: 63, baseType: !2626, size: 64, offset: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2623, file: !2267, line: 66, baseType: !265, size: 64, offset: 128)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2623, file: !2267, line: 67, baseType: !155, size: 32, offset: 192)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2623, file: !2267, line: 68, baseType: !7, size: 32, offset: 224)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2623, file: !2267, line: 71, baseType: !175, size: 128, offset: 256)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2623, file: !2267, line: 77, baseType: !2636, size: 64, offset: 384)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !549, file: !31, line: 1505, baseType: !679, size: 64, offset: 8064)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !549, file: !31, line: 1508, baseType: !679, size: 64, offset: 8128)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !549, file: !31, line: 1511, baseType: !155, size: 32, offset: 8192)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !549, file: !31, line: 1514, baseType: !904, size: 32, offset: 8224)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !549, file: !31, line: 1517, baseType: !2642, size: 64, offset: 8256)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1868, line: 18, flags: DIFlagFwdDecl)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !549, file: !31, line: 1518, baseType: !587, size: 64, offset: 8320)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !549, file: !31, line: 1525, baseType: !1621, size: 64, offset: 8384)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !549, file: !31, line: 1532, baseType: !2647, size: 64, offset: 8448)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2648, line: 52, size: 64, elements: !2649)
!2648 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2649 = !{!2650}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2647, file: !2648, line: 53, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2648, line: 40, size: 256, elements: !2653)
!2653 = !{!2654, !2655, !2660}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2652, file: !2648, line: 42, baseType: !189)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2652, file: !2648, line: 44, baseType: !2656, size: 192)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2648, line: 28, size: 192, elements: !2657)
!2657 = !{!2658, !2659}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2656, file: !2648, line: 29, baseType: !175, size: 128)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2656, file: !2648, line: 31, baseType: !265, size: 64, offset: 128)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2652, file: !2648, line: 49, baseType: !265, size: 64, offset: 192)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !549, file: !31, line: 1533, baseType: !2647, size: 64, offset: 8512)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !549, file: !31, line: 1534, baseType: !320, size: 128, align: 64, offset: 8576)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !549, file: !31, line: 1535, baseType: !1867, size: 256, offset: 8704)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !549, file: !31, line: 1537, baseType: !675, size: 192, offset: 8960)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !549, file: !31, line: 1542, baseType: !155, size: 32, offset: 9152)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !549, file: !31, line: 1545, baseType: !189, offset: 9184)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !549, file: !31, line: 1546, baseType: !175, size: 128, offset: 9216)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !549, file: !31, line: 1548, baseType: !189, offset: 9344)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !549, file: !31, line: 1549, baseType: !175, size: 128, offset: 9344)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !379, file: !31, line: 624, baseType: !735, size: 64, offset: 256)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !379, file: !31, line: 631, baseType: !109, size: 64, offset: 320)
!2672 = !DIDerivedType(tag: DW_TAG_member, scope: !379, file: !31, line: 639, baseType: !2673, size: 32, offset: 384)
!2673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !379, file: !31, line: 639, size: 32, elements: !2674)
!2674 = !{!2675, !2677}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2673, file: !31, line: 640, baseType: !2676, size: 32)
!2676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2673, file: !31, line: 641, baseType: !7, size: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !379, file: !31, line: 643, baseType: !462, size: 32, offset: 416)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !379, file: !31, line: 644, baseType: !480, size: 64, offset: 448)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !379, file: !31, line: 645, baseType: !484, size: 128, offset: 512)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !379, file: !31, line: 646, baseType: !484, size: 128, offset: 640)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !379, file: !31, line: 647, baseType: !484, size: 128, offset: 768)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !379, file: !31, line: 648, baseType: !189, offset: 896)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !379, file: !31, line: 649, baseType: !115, size: 16, offset: 896)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !379, file: !31, line: 650, baseType: !1260, size: 8, offset: 912)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !379, file: !31, line: 651, baseType: !1260, size: 8, offset: 920)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !379, file: !31, line: 652, baseType: !2439, size: 64, offset: 960)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !379, file: !31, line: 659, baseType: !109, size: 64, offset: 1024)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !379, file: !31, line: 660, baseType: !769, size: 256, offset: 1088)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !379, file: !31, line: 662, baseType: !109, size: 64, offset: 1344)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !379, file: !31, line: 663, baseType: !109, size: 64, offset: 1408)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !379, file: !31, line: 665, baseType: !591, size: 128, offset: 1472)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !379, file: !31, line: 666, baseType: !175, size: 128, offset: 1600)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !379, file: !31, line: 675, baseType: !175, size: 128, offset: 1728)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !379, file: !31, line: 676, baseType: !175, size: 128, offset: 1856)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !379, file: !31, line: 677, baseType: !175, size: 128, offset: 1984)
!2697 = !DIDerivedType(tag: DW_TAG_member, scope: !379, file: !31, line: 678, baseType: !2698, size: 128, offset: 2112)
!2698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !379, file: !31, line: 678, size: 128, elements: !2699)
!2699 = !{!2700, !2701}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2698, file: !31, line: 679, baseType: !587, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2698, file: !31, line: 680, baseType: !320, size: 128, align: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !379, file: !31, line: 682, baseType: !681, size: 64, offset: 2240)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !379, file: !31, line: 683, baseType: !681, size: 64, offset: 2304)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !379, file: !31, line: 684, baseType: !749, size: 32, offset: 2368)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !379, file: !31, line: 685, baseType: !749, size: 32, offset: 2400)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !379, file: !31, line: 686, baseType: !749, size: 32, offset: 2432)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !379, file: !31, line: 688, baseType: !749, size: 32, offset: 2464)
!2708 = !DIDerivedType(tag: DW_TAG_member, scope: !379, file: !31, line: 690, baseType: !2709, size: 64, offset: 2496)
!2709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !379, file: !31, line: 690, size: 64, elements: !2710)
!2710 = !{!2711, !2933}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2709, file: !31, line: 691, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2714)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !2715)
!2715 = !{!2716, !2717, !2721, !2725, !2729, !2730, !2731, !2735, !2748, !2749, !2757, !2761, !2762, !2766, !2767, !2771, !2776, !2777, !2781, !2785, !2893, !2897, !2898, !2902, !2903, !2907, !2911, !2916, !2920, !2924, !2928, !2932}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2714, file: !31, line: 1823, baseType: !582, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2714, file: !31, line: 1824, baseType: !2718, size: 64, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!480, !307, !480, !155}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2714, file: !31, line: 1825, baseType: !2722, size: 64, offset: 128)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!261, !307, !230, !276, !697}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2714, file: !31, line: 1826, baseType: !2726, size: 64, offset: 192)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!261, !307, !161, !276, !697}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2714, file: !31, line: 1827, baseType: !839, size: 64, offset: 256)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2714, file: !31, line: 1828, baseType: !839, size: 64, offset: 320)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2714, file: !31, line: 1829, baseType: !2732, size: 64, offset: 384)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!155, !842, !439}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2714, file: !31, line: 1830, baseType: !2736, size: 64, offset: 448)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!155, !307, !2739}
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !2741)
!2741 = !{!2742, !2747}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2740, file: !31, line: 1777, baseType: !2743, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !2744)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!155, !2739, !161, !155, !480, !120, !7}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2740, file: !31, line: 1778, baseType: !480, size: 64, offset: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2714, file: !31, line: 1831, baseType: !2736, size: 64, offset: 512)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2714, file: !31, line: 1832, baseType: !2750, size: 64, offset: 576)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!2753, !307, !2755}
!2753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2754, line: 52, baseType: !7)
!2754 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !568, line: 27, flags: DIFlagFwdDecl)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2714, file: !31, line: 1833, baseType: !2758, size: 64, offset: 640)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!265, !307, !7, !109}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2714, file: !31, line: 1834, baseType: !2758, size: 64, offset: 704)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2714, file: !31, line: 1835, baseType: !2763, size: 64, offset: 768)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!155, !307, !977}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2714, file: !31, line: 1836, baseType: !109, size: 64, offset: 832)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2714, file: !31, line: 1837, baseType: !2768, size: 64, offset: 896)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!155, !378, !307}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2714, file: !31, line: 1838, baseType: !2772, size: 64, offset: 960)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!155, !307, !2775}
!2775 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !302)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2714, file: !31, line: 1839, baseType: !2768, size: 64, offset: 1024)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2714, file: !31, line: 1840, baseType: !2778, size: 64, offset: 1088)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!155, !307, !480, !480, !155}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2714, file: !31, line: 1841, baseType: !2782, size: 64, offset: 1152)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!155, !155, !307, !155}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2714, file: !31, line: 1842, baseType: !2786, size: 64, offset: 1216)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!155, !307, !155, !2789}
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !2791)
!2791 = !{!2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2823, !2824, !2825, !2838, !2869}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2790, file: !31, line: 1063, baseType: !2789, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2790, file: !31, line: 1064, baseType: !175, size: 128, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2790, file: !31, line: 1065, baseType: !591, size: 128, offset: 192)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2790, file: !31, line: 1066, baseType: !175, size: 128, offset: 320)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2790, file: !31, line: 1069, baseType: !175, size: 128, offset: 448)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2790, file: !31, line: 1072, baseType: !2775, size: 64, offset: 576)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2790, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2790, file: !31, line: 1074, baseType: !112, size: 8, offset: 672)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2790, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2790, file: !31, line: 1076, baseType: !155, size: 32, offset: 736)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2790, file: !31, line: 1077, baseType: !1389, size: 128, offset: 768)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2790, file: !31, line: 1078, baseType: !307, size: 64, offset: 896)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2790, file: !31, line: 1079, baseType: !480, size: 64, offset: 960)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2790, file: !31, line: 1080, baseType: !480, size: 64, offset: 1024)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2790, file: !31, line: 1082, baseType: !2807, size: 64, offset: 1088)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !2809)
!2809 = !{!2810, !2818, !2819, !2820, !2821, !2822}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2808, file: !31, line: 1315, baseType: !2811)
!2811 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2812, line: 20, baseType: !2813)
!2812 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2812, line: 11, elements: !2814)
!2814 = !{!2815}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2813, file: !2812, line: 12, baseType: !2816)
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !201, line: 33, baseType: !2817)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !201, line: 31, elements: !203)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2808, file: !31, line: 1316, baseType: !155, size: 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2808, file: !31, line: 1317, baseType: !155, size: 32, offset: 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2808, file: !31, line: 1318, baseType: !2807, size: 64, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2808, file: !31, line: 1319, baseType: !307, size: 64, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2808, file: !31, line: 1320, baseType: !320, size: 128, align: 64, offset: 192)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2790, file: !31, line: 1084, baseType: !109, size: 64, offset: 1152)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2790, file: !31, line: 1085, baseType: !109, size: 64, offset: 1216)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2790, file: !31, line: 1087, baseType: !2826, size: 64, offset: 1280)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2828)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !2829)
!2829 = !{!2830, !2834}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2828, file: !31, line: 1012, baseType: !2831, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{null, !2789, !2789}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2828, file: !31, line: 1013, baseType: !2835, size: 64, offset: 64)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{null, !2789}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2790, file: !31, line: 1088, baseType: !2839, size: 64, offset: 1344)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2841)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !2842)
!2842 = !{!2843, !2847, !2851, !2852, !2856, !2860, !2864, !2868}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2841, file: !31, line: 1017, baseType: !2844, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!2775, !2775}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2841, file: !31, line: 1018, baseType: !2848, size: 64, offset: 64)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{null, !2775}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2841, file: !31, line: 1019, baseType: !2835, size: 64, offset: 128)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2841, file: !31, line: 1020, baseType: !2853, size: 64, offset: 192)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!155, !2789, !155}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2841, file: !31, line: 1021, baseType: !2857, size: 64, offset: 256)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!439, !2789}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2841, file: !31, line: 1022, baseType: !2861, size: 64, offset: 320)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!155, !2789, !155, !179}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2841, file: !31, line: 1023, baseType: !2865, size: 64, offset: 384)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{null, !2789, !816}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2841, file: !31, line: 1024, baseType: !2857, size: 64, offset: 448)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2790, file: !31, line: 1097, baseType: !2870, size: 256, offset: 1408)
!2870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2790, file: !31, line: 1089, size: 256, elements: !2871)
!2871 = !{!2872, !2881, !2887}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2870, file: !31, line: 1090, baseType: !2873, size: 256)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2874, line: 10, size: 256, elements: !2875)
!2874 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2875 = !{!2876, !2877, !2880}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2873, file: !2874, line: 11, baseType: !370, size: 32)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2873, file: !2874, line: 12, baseType: !2878, size: 64, offset: 64)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2874, line: 5, flags: DIFlagFwdDecl)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2873, file: !2874, line: 13, baseType: !175, size: 128, offset: 128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2870, file: !31, line: 1091, baseType: !2882, size: 64)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2874, line: 17, size: 64, elements: !2883)
!2883 = !{!2884}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2882, file: !2874, line: 18, baseType: !2885, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2874, line: 16, flags: DIFlagFwdDecl)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2870, file: !31, line: 1096, baseType: !2888, size: 192)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2870, file: !31, line: 1092, size: 192, elements: !2889)
!2889 = !{!2890, !2891, !2892}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2888, file: !31, line: 1093, baseType: !175, size: 128)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2888, file: !31, line: 1094, baseType: !155, size: 32, offset: 128)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2888, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2714, file: !31, line: 1843, baseType: !2894, size: 64, offset: 1280)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!261, !307, !722, !155, !276, !697, !155}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2714, file: !31, line: 1844, baseType: !1017, size: 64, offset: 1344)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2714, file: !31, line: 1845, baseType: !2899, size: 64, offset: 1408)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!155, !155}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2714, file: !31, line: 1846, baseType: !2786, size: 64, offset: 1472)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2714, file: !31, line: 1847, baseType: !2904, size: 64, offset: 1536)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!261, !2008, !307, !697, !276, !7}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2714, file: !31, line: 1848, baseType: !2908, size: 64, offset: 1600)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!261, !307, !697, !2008, !276, !7}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2714, file: !31, line: 1849, baseType: !2912, size: 64, offset: 1664)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!155, !307, !265, !2915, !816}
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2714, file: !31, line: 1850, baseType: !2917, size: 64, offset: 1728)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!265, !307, !155, !480, !480}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2714, file: !31, line: 1852, baseType: !2921, size: 64, offset: 1792)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{null, !663, !307}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2714, file: !31, line: 1856, baseType: !2925, size: 64, offset: 1856)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!261, !307, !480, !307, !480, !276, !7}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2714, file: !31, line: 1858, baseType: !2929, size: 64, offset: 1920)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!480, !307, !480, !307, !480, !480, !7}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2714, file: !31, line: 1861, baseType: !2778, size: 64, offset: 1984)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2709, file: !31, line: 692, baseType: !616, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !379, file: !31, line: 694, baseType: !2935, size: 64, offset: 2560)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !2937)
!2937 = !{!2938, !2939, !2940, !2941}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2936, file: !31, line: 1101, baseType: !189)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2936, file: !31, line: 1102, baseType: !175, size: 128)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2936, file: !31, line: 1103, baseType: !175, size: 128, offset: 128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2936, file: !31, line: 1104, baseType: !175, size: 128, offset: 256)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !379, file: !31, line: 695, baseType: !736, size: 1216, align: 64, offset: 2624)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !379, file: !31, line: 696, baseType: !175, size: 128, offset: 3840)
!2944 = !DIDerivedType(tag: DW_TAG_member, scope: !379, file: !31, line: 697, baseType: !2945, size: 64, offset: 3968)
!2945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !379, file: !31, line: 697, size: 64, elements: !2946)
!2946 = !{!2947, !2948, !2949, !2952, !2953}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2945, file: !31, line: 698, baseType: !2008, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2945, file: !31, line: 699, baseType: !2464, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2945, file: !31, line: 700, baseType: !2950, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !31, line: 700, flags: DIFlagFwdDecl)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2945, file: !31, line: 701, baseType: !230, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2945, file: !31, line: 702, baseType: !7, size: 32)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !379, file: !31, line: 705, baseType: !371, size: 32, offset: 4032)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !379, file: !31, line: 708, baseType: !371, size: 32, offset: 4064)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !379, file: !31, line: 709, baseType: !2546, size: 64, offset: 4096)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !379, file: !31, line: 720, baseType: !302, size: 64, offset: 4160)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !338, file: !335, line: 98, baseType: !2959, size: 256, offset: 448)
!2959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 256, elements: !2140)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !338, file: !335, line: 101, baseType: !2961, size: 32, offset: 704)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2962, line: 25, size: 32, elements: !2963)
!2962 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2963 = !{!2964}
!2964 = !DIDerivedType(tag: DW_TAG_member, scope: !2961, file: !2962, line: 26, baseType: !2965, size: 32)
!2965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2961, file: !2962, line: 26, size: 32, elements: !2966)
!2966 = !{!2967}
!2967 = !DIDerivedType(tag: DW_TAG_member, scope: !2965, file: !2962, line: 30, baseType: !2968, size: 32)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2965, file: !2962, line: 30, size: 32, elements: !2969)
!2969 = !{!2970, !2971}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2968, file: !2962, line: 31, baseType: !189)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2968, file: !2962, line: 32, baseType: !155, size: 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !338, file: !335, line: 102, baseType: !2563, size: 64, offset: 768)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !338, file: !335, line: 103, baseType: !548, size: 64, offset: 832)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !338, file: !335, line: 104, baseType: !109, size: 64, offset: 896)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !338, file: !335, line: 105, baseType: !302, size: 64, offset: 960)
!2976 = !DIDerivedType(tag: DW_TAG_member, scope: !338, file: !335, line: 107, baseType: !2977, size: 128, offset: 1024)
!2977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !338, file: !335, line: 107, size: 128, elements: !2978)
!2978 = !{!2979, !2980}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2977, file: !335, line: 108, baseType: !175, size: 128)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2977, file: !335, line: 109, baseType: !2981, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !338, file: !335, line: 111, baseType: !175, size: 128, offset: 1152)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !338, file: !335, line: 112, baseType: !175, size: 128, offset: 1280)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !338, file: !335, line: 120, baseType: !2985, size: 128, offset: 1408)
!2985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !338, file: !335, line: 116, size: 128, elements: !2986)
!2986 = !{!2987, !2988, !2989}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2985, file: !335, line: 117, baseType: !591, size: 128)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2985, file: !335, line: 118, baseType: !352, size: 128)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2985, file: !335, line: 119, baseType: !320, size: 128, align: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !308, file: !31, line: 922, baseType: !378, size: 64, offset: 256)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !308, file: !31, line: 923, baseType: !2712, size: 64, offset: 320)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !308, file: !31, line: 929, baseType: !189, offset: 384)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !308, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !308, file: !31, line: 931, baseType: !679, size: 64, offset: 448)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !308, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !308, file: !31, line: 933, baseType: !2559, size: 32, offset: 544)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !308, file: !31, line: 934, baseType: !675, size: 192, offset: 576)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !308, file: !31, line: 935, baseType: !480, size: 64, offset: 768)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !308, file: !31, line: 936, baseType: !3000, size: 192, offset: 832)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !3001)
!3001 = !{!3002, !3003, !3004, !3005, !3006, !3007}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3000, file: !31, line: 886, baseType: !2811)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3000, file: !31, line: 887, baseType: !1379, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3000, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3000, file: !31, line: 889, baseType: !384, size: 32, offset: 96)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3000, file: !31, line: 889, baseType: !384, size: 32, offset: 128)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3000, file: !31, line: 890, baseType: !155, size: 32, offset: 160)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !308, file: !31, line: 937, baseType: !1455, size: 64, offset: 1024)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !308, file: !31, line: 938, baseType: !3010, size: 256, offset: 1088)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !3011)
!3011 = !{!3012, !3013, !3014, !3015, !3016, !3017}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3010, file: !31, line: 897, baseType: !109, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3010, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3010, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3010, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3010, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3010, file: !31, line: 904, baseType: !480, size: 64, offset: 192)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !308, file: !31, line: 940, baseType: !120, size: 64, offset: 1344)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !308, file: !31, line: 945, baseType: !302, size: 64, offset: 1408)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !308, file: !31, line: 949, baseType: !175, size: 128, offset: 1472)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !308, file: !31, line: 950, baseType: !175, size: 128, offset: 1600)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !308, file: !31, line: 952, baseType: !735, size: 64, offset: 1728)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !308, file: !31, line: 953, baseType: !904, size: 32, offset: 1792)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !308, file: !31, line: 954, baseType: !904, size: 32, offset: 1824)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !297, file: !255, line: 174, baseType: !304, size: 64, offset: 320)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !297, file: !255, line: 176, baseType: !3027, size: 64, offset: 384)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!155, !307, !182, !296, !977}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !285, file: !255, line: 90, baseType: !280, size: 64, offset: 192)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !285, file: !255, line: 91, baseType: !3032, size: 64, offset: 256)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !245, file: !171, line: 143, baseType: !3034, size: 64, offset: 256)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!3037, !182}
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3039)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !48, line: 39, size: 384, elements: !3040)
!3040 = !{!3041, !3042, !3046, !3050, !3056, !3060}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3039, file: !48, line: 40, baseType: !47, size: 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3039, file: !48, line: 41, baseType: !3043, size: 64, offset: 64)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!439}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3039, file: !48, line: 42, baseType: !3047, size: 64, offset: 128)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!302}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3039, file: !48, line: 43, baseType: !3051, size: 64, offset: 192)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!2037, !3054}
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !48, line: 19, flags: DIFlagFwdDecl)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3039, file: !48, line: 44, baseType: !3057, size: 64, offset: 256)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!2037}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3039, file: !48, line: 45, baseType: !417, size: 64, offset: 320)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !245, file: !171, line: 144, baseType: !3062, size: 64, offset: 320)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!2037, !182}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !245, file: !171, line: 145, baseType: !3066, size: 64, offset: 384)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{null, !182, !3069, !3070}
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !170, file: !171, line: 70, baseType: !3072, size: 64, offset: 384)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !568, line: 123, size: 1024, elements: !3074)
!3074 = !{!3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3191, !3192, !3193, !3194, !3195}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3073, file: !568, line: 124, baseType: !749, size: 32)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3073, file: !568, line: 125, baseType: !749, size: 32, offset: 32)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3073, file: !568, line: 135, baseType: !3072, size: 64, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3073, file: !568, line: 136, baseType: !161, size: 64, offset: 128)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3073, file: !568, line: 138, baseType: !762, size: 192, align: 64, offset: 192)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3073, file: !568, line: 140, baseType: !2037, size: 64, offset: 384)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3073, file: !568, line: 141, baseType: !7, size: 32, offset: 448)
!3082 = !DIDerivedType(tag: DW_TAG_member, scope: !3073, file: !568, line: 142, baseType: !3083, size: 256, offset: 512)
!3083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3073, file: !568, line: 142, size: 256, elements: !3084)
!3084 = !{!3085, !3131, !3135}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3083, file: !568, line: 143, baseType: !3086, size: 192)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !568, line: 91, size: 192, elements: !3087)
!3087 = !{!3088, !3089, !3090}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3086, file: !568, line: 92, baseType: !109, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3086, file: !568, line: 94, baseType: !758, size: 64, offset: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3086, file: !568, line: 100, baseType: !3091, size: 64, offset: 128)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !568, line: 180, size: 704, elements: !3093)
!3093 = !{!3094, !3095, !3096, !3103, !3104, !3105, !3129, !3130}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3092, file: !568, line: 182, baseType: !3072, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3092, file: !568, line: 183, baseType: !7, size: 32, offset: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3092, file: !568, line: 186, baseType: !3097, size: 192, offset: 128)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3098, line: 19, size: 192, elements: !3099)
!3098 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3099 = !{!3100, !3101, !3102}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3097, file: !3098, line: 20, baseType: !740, size: 128)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3097, file: !3098, line: 21, baseType: !7, size: 32, offset: 128)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3097, file: !3098, line: 22, baseType: !7, size: 32, offset: 160)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3092, file: !568, line: 187, baseType: !370, size: 32, offset: 320)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3092, file: !568, line: 188, baseType: !370, size: 32, offset: 352)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3092, file: !568, line: 189, baseType: !3106, size: 64, offset: 384)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !568, line: 168, size: 320, elements: !3108)
!3108 = !{!3109, !3113, !3117, !3121, !3125}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3107, file: !568, line: 169, baseType: !3110, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!155, !663, !3091}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3107, file: !568, line: 171, baseType: !3114, size: 64, offset: 64)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!155, !3072, !161, !271}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3107, file: !568, line: 173, baseType: !3118, size: 64, offset: 128)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!155, !3072}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3107, file: !568, line: 174, baseType: !3122, size: 64, offset: 192)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!155, !3072, !3072, !161}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3107, file: !568, line: 176, baseType: !3126, size: 64, offset: 256)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!155, !663, !3072, !3091}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3092, file: !568, line: 192, baseType: !175, size: 128, offset: 448)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3092, file: !568, line: 194, baseType: !1389, size: 128, offset: 576)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3083, file: !568, line: 144, baseType: !3132, size: 64)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !568, line: 103, size: 64, elements: !3133)
!3133 = !{!3134}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3132, file: !568, line: 104, baseType: !3072, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3083, file: !568, line: 145, baseType: !3136, size: 256)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !568, line: 107, size: 256, elements: !3137)
!3137 = !{!3138, !3186, !3189, !3190}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3136, file: !568, line: 108, baseType: !3139, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3141)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !568, line: 217, size: 768, elements: !3142)
!3142 = !{!3143, !3163, !3167, !3168, !3169, !3170, !3171, !3175, !3176, !3177, !3178, !3182}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3141, file: !568, line: 222, baseType: !3144, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!155, !3147}
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !568, line: 197, size: 1088, elements: !3149)
!3149 = !{!3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3148, file: !568, line: 199, baseType: !3072, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3148, file: !568, line: 200, baseType: !307, size: 64, offset: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3148, file: !568, line: 201, baseType: !663, size: 64, offset: 128)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3148, file: !568, line: 202, baseType: !302, size: 64, offset: 192)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3148, file: !568, line: 205, baseType: !675, size: 192, offset: 256)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3148, file: !568, line: 206, baseType: !675, size: 192, offset: 448)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3148, file: !568, line: 207, baseType: !155, size: 32, offset: 640)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3148, file: !568, line: 208, baseType: !175, size: 128, offset: 704)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3148, file: !568, line: 209, baseType: !230, size: 64, offset: 832)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3148, file: !568, line: 211, baseType: !276, size: 64, offset: 896)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3148, file: !568, line: 212, baseType: !439, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3148, file: !568, line: 213, baseType: !439, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3148, file: !568, line: 214, baseType: !1005, size: 64, offset: 1024)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3141, file: !568, line: 223, baseType: !3164, size: 64, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{null, !3147}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3141, file: !568, line: 236, baseType: !707, size: 64, offset: 128)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3141, file: !568, line: 238, baseType: !694, size: 64, offset: 192)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3141, file: !568, line: 239, baseType: !703, size: 64, offset: 256)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3141, file: !568, line: 240, baseType: !699, size: 64, offset: 320)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3141, file: !568, line: 242, baseType: !3172, size: 64, offset: 384)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!261, !3147, !230, !276, !480}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3141, file: !568, line: 252, baseType: !276, size: 64, offset: 448)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3141, file: !568, line: 259, baseType: !439, size: 8, offset: 512)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3141, file: !568, line: 260, baseType: !3172, size: 64, offset: 576)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3141, file: !568, line: 263, baseType: !3179, size: 64, offset: 640)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!2753, !3147, !2755}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3141, file: !568, line: 266, baseType: !3183, size: 64, offset: 704)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!155, !3147, !977}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3136, file: !568, line: 109, baseType: !3187, size: 64, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !568, line: 31, flags: DIFlagFwdDecl)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3136, file: !568, line: 110, baseType: !480, size: 64, offset: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3136, file: !568, line: 111, baseType: !3072, size: 64, offset: 192)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3073, file: !568, line: 148, baseType: !302, size: 64, offset: 768)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3073, file: !568, line: 154, baseType: !120, size: 64, offset: 832)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3073, file: !568, line: 156, baseType: !115, size: 16, offset: 896)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3073, file: !568, line: 157, baseType: !271, size: 16, offset: 912)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3073, file: !568, line: 158, baseType: !3196, size: 64, offset: 960)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !568, line: 32, flags: DIFlagFwdDecl)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !170, file: !171, line: 71, baseType: !3199, size: 32, offset: 448)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3200, line: 19, size: 32, elements: !3201)
!3200 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3201 = !{!3202}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3199, file: !3200, line: 20, baseType: !1138, size: 32)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !170, file: !171, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !170, file: !171, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !170, file: !171, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !170, file: !171, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !170, file: !171, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !167, file: !60, line: 463, baseType: !166, size: 64, offset: 512)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !167, file: !60, line: 465, baseType: !3210, size: 64, offset: 576)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !167, file: !60, line: 467, baseType: !161, size: 64, offset: 640)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !167, file: !60, line: 468, baseType: !3214, size: 64, offset: 704)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3216)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3217)
!3217 = !{!3218, !3219, !3220, !3224, !3229, !3233}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3216, file: !60, line: 88, baseType: !161, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3216, file: !60, line: 89, baseType: !282, size: 64, offset: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3216, file: !60, line: 90, baseType: !3221, size: 64, offset: 128)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!155, !166, !225}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3216, file: !60, line: 91, baseType: !3225, size: 64, offset: 192)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!230, !166, !3228, !3069, !3070}
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3216, file: !60, line: 93, baseType: !3230, size: 64, offset: 256)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{null, !166}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3216, file: !60, line: 95, baseType: !3234, size: 64, offset: 320)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3236)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3237)
!3237 = !{!3238, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3236, file: !67, line: 279, baseType: !3239, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!155, !166}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3236, file: !67, line: 280, baseType: !3230, size: 64, offset: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3236, file: !67, line: 281, baseType: !3239, size: 64, offset: 128)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3236, file: !67, line: 282, baseType: !3239, size: 64, offset: 192)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3236, file: !67, line: 283, baseType: !3239, size: 64, offset: 256)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3236, file: !67, line: 284, baseType: !3239, size: 64, offset: 320)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3236, file: !67, line: 285, baseType: !3239, size: 64, offset: 384)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3236, file: !67, line: 286, baseType: !3239, size: 64, offset: 448)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3236, file: !67, line: 287, baseType: !3239, size: 64, offset: 512)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3236, file: !67, line: 288, baseType: !3239, size: 64, offset: 576)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3236, file: !67, line: 289, baseType: !3239, size: 64, offset: 640)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3236, file: !67, line: 290, baseType: !3239, size: 64, offset: 704)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3236, file: !67, line: 291, baseType: !3239, size: 64, offset: 768)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3236, file: !67, line: 292, baseType: !3239, size: 64, offset: 832)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3236, file: !67, line: 293, baseType: !3239, size: 64, offset: 896)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3236, file: !67, line: 294, baseType: !3239, size: 64, offset: 960)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3236, file: !67, line: 295, baseType: !3239, size: 64, offset: 1024)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3236, file: !67, line: 296, baseType: !3239, size: 64, offset: 1088)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3236, file: !67, line: 297, baseType: !3239, size: 64, offset: 1152)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3236, file: !67, line: 298, baseType: !3239, size: 64, offset: 1216)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3236, file: !67, line: 299, baseType: !3239, size: 64, offset: 1280)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3236, file: !67, line: 300, baseType: !3239, size: 64, offset: 1344)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3236, file: !67, line: 301, baseType: !3239, size: 64, offset: 1408)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !167, file: !60, line: 470, baseType: !3265, size: 64, offset: 768)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3267, line: 82, size: 1408, elements: !3268)
!3267 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3268 = !{!3269, !3270, !3271, !3272, !3273, !3274, !3275, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3350, !3353, !3354}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3266, file: !3267, line: 83, baseType: !161, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3266, file: !3267, line: 84, baseType: !161, size: 64, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3266, file: !3267, line: 85, baseType: !166, size: 64, offset: 128)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3266, file: !3267, line: 86, baseType: !282, size: 64, offset: 192)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3266, file: !3267, line: 87, baseType: !282, size: 64, offset: 256)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3266, file: !3267, line: 88, baseType: !282, size: 64, offset: 320)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3266, file: !3267, line: 90, baseType: !3276, size: 64, offset: 384)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!155, !166, !3279}
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3281)
!3281 = !{!3282, !3283, !3284, !3285, !3286, !3287, !3288, !3301, !3314, !3315, !3316, !3317, !3318, !3326, !3327, !3328, !3329, !3330, !3331}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3280, file: !54, line: 96, baseType: !161, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3280, file: !54, line: 97, baseType: !3265, size: 64, offset: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3280, file: !54, line: 99, baseType: !582, size: 64, offset: 128)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3280, file: !54, line: 100, baseType: !161, size: 64, offset: 192)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3280, file: !54, line: 102, baseType: !439, size: 8, offset: 256)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3280, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3280, file: !54, line: 105, baseType: !3289, size: 64, offset: 320)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3291)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3292, line: 262, size: 1600, elements: !3293)
!3292 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3293 = !{!3294, !3295, !3296, !3300}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3291, file: !3292, line: 263, baseType: !2549, size: 256)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3291, file: !3292, line: 264, baseType: !2549, size: 256, offset: 256)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3291, file: !3292, line: 265, baseType: !3297, size: 1024, offset: 512)
!3297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 1024, elements: !3298)
!3298 = !{!3299}
!3299 = !DISubrange(count: 128)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3291, file: !3292, line: 266, baseType: !2037, size: 64, offset: 1536)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3280, file: !54, line: 106, baseType: !3302, size: 64, offset: 384)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3304)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3292, line: 210, size: 256, elements: !3305)
!3305 = !{!3306, !3310, !3312, !3313}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3304, file: !3292, line: 211, baseType: !3307, size: 72)
!3307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1261, size: 72, elements: !3308)
!3308 = !{!3309}
!3309 = !DISubrange(count: 9)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3304, file: !3292, line: 212, baseType: !3311, size: 64, offset: 128)
!3311 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3292, line: 14, baseType: !109)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3304, file: !3292, line: 213, baseType: !371, size: 32, offset: 192)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3304, file: !3292, line: 214, baseType: !371, size: 32, offset: 224)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3280, file: !54, line: 108, baseType: !3239, size: 64, offset: 448)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3280, file: !54, line: 109, baseType: !3230, size: 64, offset: 512)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3280, file: !54, line: 110, baseType: !3239, size: 64, offset: 576)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3280, file: !54, line: 111, baseType: !3230, size: 64, offset: 640)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3280, file: !54, line: 112, baseType: !3319, size: 64, offset: 704)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!155, !166, !3322}
!3322 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3323)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3324)
!3324 = !{!3325}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3323, file: !67, line: 51, baseType: !155, size: 32)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3280, file: !54, line: 113, baseType: !3239, size: 64, offset: 768)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3280, file: !54, line: 114, baseType: !282, size: 64, offset: 832)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3280, file: !54, line: 115, baseType: !282, size: 64, offset: 896)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3280, file: !54, line: 117, baseType: !3234, size: 64, offset: 960)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3280, file: !54, line: 118, baseType: !3230, size: 64, offset: 1024)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3280, file: !54, line: 120, baseType: !3332, size: 64, offset: 1088)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3266, file: !3267, line: 91, baseType: !3221, size: 64, offset: 448)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3266, file: !3267, line: 92, baseType: !3239, size: 64, offset: 512)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3266, file: !3267, line: 93, baseType: !3230, size: 64, offset: 576)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3266, file: !3267, line: 94, baseType: !3239, size: 64, offset: 640)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3266, file: !3267, line: 95, baseType: !3230, size: 64, offset: 704)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3266, file: !3267, line: 97, baseType: !3239, size: 64, offset: 768)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3266, file: !3267, line: 98, baseType: !3239, size: 64, offset: 832)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3266, file: !3267, line: 100, baseType: !3319, size: 64, offset: 896)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3266, file: !3267, line: 101, baseType: !3239, size: 64, offset: 960)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3266, file: !3267, line: 103, baseType: !3239, size: 64, offset: 1024)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3266, file: !3267, line: 105, baseType: !3239, size: 64, offset: 1088)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3266, file: !3267, line: 107, baseType: !3234, size: 64, offset: 1152)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3266, file: !3267, line: 109, baseType: !3347, size: 64, offset: 1216)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3349)
!3349 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3267, line: 109, flags: DIFlagFwdDecl)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3266, file: !3267, line: 111, baseType: !3351, size: 64, offset: 1280)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3267, line: 111, flags: DIFlagFwdDecl)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3266, file: !3267, line: 112, baseType: !597, offset: 1344)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3266, file: !3267, line: 114, baseType: !439, size: 8, offset: 1344)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !167, file: !60, line: 471, baseType: !3279, size: 64, offset: 832)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !167, file: !60, line: 473, baseType: !302, size: 64, offset: 896)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !167, file: !60, line: 475, baseType: !302, size: 64, offset: 960)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !167, file: !60, line: 480, baseType: !675, size: 192, offset: 1024)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !167, file: !60, line: 484, baseType: !3360, size: 576, offset: 1216)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3361)
!3361 = !{!3362, !3363, !3364, !3365, !3366, !3367}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3360, file: !60, line: 362, baseType: !175, size: 128)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3360, file: !60, line: 363, baseType: !175, size: 128, offset: 128)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3360, file: !60, line: 364, baseType: !175, size: 128, offset: 256)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3360, file: !60, line: 365, baseType: !175, size: 128, offset: 384)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3360, file: !60, line: 366, baseType: !439, size: 8, offset: 512)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3360, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !167, file: !60, line: 485, baseType: !3369, size: 2304, offset: 1792)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3370)
!3370 = !{!3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3466, !3470}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3369, file: !67, line: 566, baseType: !3322, size: 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3369, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3369, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3369, file: !67, line: 569, baseType: !439, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3369, file: !67, line: 570, baseType: !439, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3369, file: !67, line: 571, baseType: !439, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3369, file: !67, line: 572, baseType: !439, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3369, file: !67, line: 573, baseType: !439, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3369, file: !67, line: 574, baseType: !439, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3369, file: !67, line: 575, baseType: !439, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3369, file: !67, line: 576, baseType: !439, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3369, file: !67, line: 577, baseType: !370, size: 32, offset: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3369, file: !67, line: 578, baseType: !189, offset: 96)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3369, file: !67, line: 580, baseType: !175, size: 128, offset: 128)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3369, file: !67, line: 581, baseType: !1410, size: 192, offset: 256)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3369, file: !67, line: 582, baseType: !3387, size: 64, offset: 448)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3389, line: 43, size: 1472, elements: !3390)
!3389 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3390 = !{!3391, !3392, !3393, !3394, !3395, !3398, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3388, file: !3389, line: 44, baseType: !161, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3388, file: !3389, line: 45, baseType: !155, size: 32, offset: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3388, file: !3389, line: 46, baseType: !175, size: 128, offset: 128)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3388, file: !3389, line: 47, baseType: !189, offset: 256)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3388, file: !3389, line: 48, baseType: !3396, size: 64, offset: 256)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3388, file: !3389, line: 49, baseType: !3399, size: 320, offset: 320)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3400, line: 11, size: 320, elements: !3401)
!3400 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3401 = !{!3402, !3403, !3404, !3409}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3399, file: !3400, line: 16, baseType: !591, size: 128)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3399, file: !3400, line: 17, baseType: !109, size: 64, offset: 128)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3399, file: !3400, line: 18, baseType: !3405, size: 64, offset: 192)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{null, !3408}
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3399, file: !3400, line: 19, baseType: !370, size: 32, offset: 256)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3388, file: !3389, line: 50, baseType: !109, size: 64, offset: 640)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3388, file: !3389, line: 51, baseType: !1208, size: 64, offset: 704)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3388, file: !3389, line: 52, baseType: !1208, size: 64, offset: 768)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3388, file: !3389, line: 53, baseType: !1208, size: 64, offset: 832)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3388, file: !3389, line: 54, baseType: !1208, size: 64, offset: 896)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3388, file: !3389, line: 55, baseType: !1208, size: 64, offset: 960)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3388, file: !3389, line: 56, baseType: !109, size: 64, offset: 1024)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3388, file: !3389, line: 57, baseType: !109, size: 64, offset: 1088)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3388, file: !3389, line: 58, baseType: !109, size: 64, offset: 1152)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3388, file: !3389, line: 59, baseType: !109, size: 64, offset: 1216)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3388, file: !3389, line: 60, baseType: !109, size: 64, offset: 1280)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3388, file: !3389, line: 61, baseType: !166, size: 64, offset: 1344)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3388, file: !3389, line: 62, baseType: !439, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3388, file: !3389, line: 63, baseType: !439, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3369, file: !67, line: 583, baseType: !439, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3369, file: !67, line: 584, baseType: !439, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3369, file: !67, line: 585, baseType: !439, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3369, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3369, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3369, file: !67, line: 592, baseType: !1200, size: 512, offset: 576)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3369, file: !67, line: 593, baseType: !120, size: 64, offset: 1088)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3369, file: !67, line: 594, baseType: !1867, size: 256, offset: 1152)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3369, file: !67, line: 595, baseType: !1389, size: 128, offset: 1408)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3369, file: !67, line: 596, baseType: !3396, size: 64, offset: 1536)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3369, file: !67, line: 597, baseType: !749, size: 32, offset: 1600)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3369, file: !67, line: 598, baseType: !749, size: 32, offset: 1632)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3369, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3369, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3369, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3369, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3369, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3369, file: !67, line: 604, baseType: !439, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3369, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3369, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3369, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3369, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3369, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3369, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3369, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3369, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3369, file: !67, line: 613, baseType: !155, size: 32, offset: 1792)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3369, file: !67, line: 614, baseType: !155, size: 32, offset: 1824)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3369, file: !67, line: 615, baseType: !120, size: 64, offset: 1856)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3369, file: !67, line: 616, baseType: !120, size: 64, offset: 1920)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3369, file: !67, line: 617, baseType: !120, size: 64, offset: 1984)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3369, file: !67, line: 618, baseType: !120, size: 64, offset: 2048)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3369, file: !67, line: 620, baseType: !3457, size: 64, offset: 2112)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3459)
!3459 = !{!3460, !3461, !3462, !3463}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3458, file: !67, line: 537, baseType: !189)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3458, file: !67, line: 538, baseType: !7, size: 32)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3458, file: !67, line: 540, baseType: !175, size: 128, offset: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3458, file: !67, line: 543, baseType: !3464, size: 64, offset: 192)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3369, file: !67, line: 621, baseType: !3467, size: 64, offset: 2176)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{null, !166, !1352}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3369, file: !67, line: 622, baseType: !3471, size: 64, offset: 2240)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !167, file: !60, line: 486, baseType: !3474, size: 64, offset: 4096)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3476)
!3476 = !{!3477, !3478, !3479, !3483, !3484, !3485}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3475, file: !67, line: 643, baseType: !3236, size: 1472)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3475, file: !67, line: 644, baseType: !3239, size: 64, offset: 1472)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3475, file: !67, line: 645, baseType: !3480, size: 64, offset: 1536)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{null, !166, !439}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3475, file: !67, line: 646, baseType: !3239, size: 64, offset: 1600)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3475, file: !67, line: 647, baseType: !3230, size: 64, offset: 1664)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3475, file: !67, line: 648, baseType: !3230, size: 64, offset: 1728)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !167, file: !60, line: 493, baseType: !3487, size: 64, offset: 4160)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !81, line: 162, size: 1088, elements: !3489)
!3489 = !{!3490, !3491, !3492, !3763, !3764, !3765, !3766, !3767, !3768, !3875, !3876, !3877, !3878, !3879, !3880, !3881}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3488, file: !81, line: 163, baseType: !175, size: 128)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3488, file: !81, line: 164, baseType: !161, size: 64, offset: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3488, file: !81, line: 165, baseType: !3493, size: 64, offset: 192)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3495)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !81, line: 105, size: 640, elements: !3496)
!3496 = !{!3497, !3615, !3626, !3631, !3635, !3641, !3645, !3649, !3755, !3759}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3495, file: !81, line: 106, baseType: !3498, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!155, !3487, !3501, !80}
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3503, line: 51, size: 1344, elements: !3504)
!3503 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3504 = !{!3505, !3506, !3508, !3509, !3599, !3608, !3609, !3610, !3611, !3612, !3613, !3614}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3502, file: !3503, line: 52, baseType: !161, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3502, file: !3503, line: 53, baseType: !3507, size: 32, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3503, line: 28, baseType: !370)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3502, file: !3503, line: 54, baseType: !161, size: 64, offset: 128)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3502, file: !3503, line: 55, baseType: !3510, size: 192, offset: 192)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3511, line: 17, size: 192, elements: !3512)
!3511 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3512 = !{!3513, !3515, !3598}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3510, file: !3511, line: 18, baseType: !3514, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3510, file: !3511, line: 19, baseType: !3516, size: 64, offset: 64)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3518)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3511, line: 110, size: 1152, elements: !3519)
!3519 = !{!3520, !3524, !3528, !3534, !3540, !3544, !3548, !3553, !3557, !3558, !3562, !3566, !3570, !3581, !3582, !3583, !3584, !3594}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3518, file: !3511, line: 111, baseType: !3521, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!3514, !3514}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3518, file: !3511, line: 112, baseType: !3525, size: 64, offset: 64)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{null, !3514}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3518, file: !3511, line: 113, baseType: !3529, size: 64, offset: 128)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!439, !3532}
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3510)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3518, file: !3511, line: 114, baseType: !3535, size: 64, offset: 192)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{!2037, !3532, !3538}
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3518, file: !3511, line: 116, baseType: !3541, size: 64, offset: 256)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!439, !3532, !161}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3518, file: !3511, line: 118, baseType: !3545, size: 64, offset: 320)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!155, !3532, !161, !7, !302, !276}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3518, file: !3511, line: 123, baseType: !3549, size: 64, offset: 384)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!155, !3532, !161, !3552, !276}
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3518, file: !3511, line: 126, baseType: !3554, size: 64, offset: 448)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!161, !3532}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3518, file: !3511, line: 127, baseType: !3554, size: 64, offset: 512)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3518, file: !3511, line: 128, baseType: !3559, size: 64, offset: 576)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!3514, !3532}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3518, file: !3511, line: 130, baseType: !3563, size: 64, offset: 640)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!3514, !3532, !3514}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3518, file: !3511, line: 133, baseType: !3567, size: 64, offset: 704)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!3514, !3532, !161}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3518, file: !3511, line: 135, baseType: !3571, size: 64, offset: 768)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!155, !3532, !161, !161, !7, !7, !3574}
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3511, line: 43, size: 640, elements: !3576)
!3576 = !{!3577, !3578, !3579}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3575, file: !3511, line: 44, baseType: !3514, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3575, file: !3511, line: 45, baseType: !7, size: 32, offset: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3575, file: !3511, line: 46, baseType: !3580, size: 512, offset: 128)
!3580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 512, elements: !1238)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3518, file: !3511, line: 140, baseType: !3563, size: 64, offset: 832)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3518, file: !3511, line: 143, baseType: !3559, size: 64, offset: 896)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3518, file: !3511, line: 145, baseType: !3521, size: 64, offset: 960)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3518, file: !3511, line: 146, baseType: !3585, size: 64, offset: 1024)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!155, !3532, !3588}
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3511, line: 29, size: 128, elements: !3590)
!3590 = !{!3591, !3592, !3593}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3589, file: !3511, line: 30, baseType: !7, size: 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3589, file: !3511, line: 31, baseType: !7, size: 32, offset: 32)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3589, file: !3511, line: 32, baseType: !3532, size: 64, offset: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3518, file: !3511, line: 148, baseType: !3595, size: 64, offset: 1088)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!155, !3532, !166}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3510, file: !3511, line: 20, baseType: !166, size: 64, offset: 128)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3502, file: !3503, line: 57, baseType: !3600, size: 64, offset: 384)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3503, line: 31, size: 704, elements: !3602)
!3602 = !{!3603, !3604, !3605, !3606, !3607}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3601, file: !3503, line: 32, baseType: !230, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3601, file: !3503, line: 33, baseType: !155, size: 32, offset: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3601, file: !3503, line: 34, baseType: !302, size: 64, offset: 128)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3601, file: !3503, line: 35, baseType: !3600, size: 64, offset: 192)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3601, file: !3503, line: 43, baseType: !297, size: 448, offset: 256)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3502, file: !3503, line: 58, baseType: !3600, size: 64, offset: 448)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3502, file: !3503, line: 59, baseType: !3501, size: 64, offset: 512)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3502, file: !3503, line: 60, baseType: !3501, size: 64, offset: 576)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3502, file: !3503, line: 61, baseType: !3501, size: 64, offset: 640)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3502, file: !3503, line: 63, baseType: !170, size: 512, offset: 704)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3502, file: !3503, line: 65, baseType: !109, size: 64, offset: 1216)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3502, file: !3503, line: 66, baseType: !302, size: 64, offset: 1280)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3495, file: !81, line: 108, baseType: !3616, size: 64, offset: 64)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!155, !3487, !3619, !80}
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !81, line: 63, size: 640, elements: !3621)
!3621 = !{!3622, !3623, !3624}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3620, file: !81, line: 64, baseType: !3514, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3620, file: !81, line: 65, baseType: !155, size: 32, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3620, file: !81, line: 66, baseType: !3625, size: 512, offset: 96)
!3625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 512, elements: !1643)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3495, file: !81, line: 110, baseType: !3627, size: 64, offset: 128)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!155, !3487, !7, !3630}
!3630 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !176, line: 164, baseType: !109)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3495, file: !81, line: 111, baseType: !3632, size: 64, offset: 192)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{null, !3487, !7}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3495, file: !81, line: 112, baseType: !3636, size: 64, offset: 256)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!155, !3487, !3501, !3639, !7, !108, !2532}
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3495, file: !81, line: 117, baseType: !3642, size: 64, offset: 320)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!155, !3487, !7, !7, !302}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3495, file: !81, line: 119, baseType: !3646, size: 64, offset: 384)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{null, !3487, !7, !7}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3495, file: !81, line: 121, baseType: !3650, size: 64, offset: 448)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!155, !3487, !3653, !439}
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !95, line: 175, size: 448, elements: !3655)
!3655 = !{!3656, !3657, !3658, !3659, !3671, !3752, !3753, !3754}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3654, file: !95, line: 176, baseType: !370, size: 32)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3654, file: !95, line: 177, baseType: !7, size: 32, offset: 32)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !3654, file: !95, line: 178, baseType: !109, size: 64, offset: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !3654, file: !95, line: 179, baseType: !3660, size: 64, offset: 128)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !95, line: 145, size: 256, elements: !3662)
!3662 = !{!3663, !3664, !3665, !3668}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !3661, file: !95, line: 146, baseType: !7, size: 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !3661, file: !95, line: 150, baseType: !302, size: 64, offset: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !3661, file: !95, line: 151, baseType: !3666, size: 64, offset: 128)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !95, line: 127, flags: DIFlagFwdDecl)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !3661, file: !95, line: 152, baseType: !3669, size: 64, offset: 192)
!3669 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1274, line: 756, baseType: !3670)
!3670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1275, size: 64, elements: !1279)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !3654, file: !95, line: 180, baseType: !3672, size: 64, offset: 192)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !95, line: 503, size: 2304, elements: !3674)
!3674 = !{!3675, !3676, !3677, !3681, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3698, !3702, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3719, !3720, !3721, !3727, !3728, !3733, !3737, !3741, !3745, !3749, !3750, !3751}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "parent_device", scope: !3673, file: !95, line: 504, baseType: !166, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3673, file: !95, line: 505, baseType: !161, size: 64, offset: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !3673, file: !95, line: 506, baseType: !3678, size: 64, offset: 128)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!7, !3653}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !3673, file: !95, line: 507, baseType: !3682, size: 64, offset: 192)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{null, !3653}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !3673, file: !95, line: 508, baseType: !3682, size: 64, offset: 256)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !3673, file: !95, line: 509, baseType: !3682, size: 64, offset: 320)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !3673, file: !95, line: 511, baseType: !3682, size: 64, offset: 384)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !3673, file: !95, line: 512, baseType: !3682, size: 64, offset: 448)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !3673, file: !95, line: 513, baseType: !3682, size: 64, offset: 512)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !3673, file: !95, line: 514, baseType: !3682, size: 64, offset: 576)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !3673, file: !95, line: 515, baseType: !3682, size: 64, offset: 640)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !3673, file: !95, line: 517, baseType: !3693, size: 64, offset: 704)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!155, !3653, !3696, !439}
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1275)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !3673, file: !95, line: 518, baseType: !3699, size: 64, offset: 768)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!155, !3653}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !3673, file: !95, line: 519, baseType: !3703, size: 64, offset: 832)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!155, !3653, !7}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !3673, file: !95, line: 520, baseType: !3703, size: 64, offset: 896)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !3673, file: !95, line: 522, baseType: !3682, size: 64, offset: 960)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !3673, file: !95, line: 523, baseType: !3682, size: 64, offset: 1024)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_online", scope: !3673, file: !95, line: 525, baseType: !3682, size: 64, offset: 1088)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_offline", scope: !3673, file: !95, line: 526, baseType: !3682, size: 64, offset: 1152)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !3673, file: !95, line: 528, baseType: !3682, size: 64, offset: 1216)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !3673, file: !95, line: 529, baseType: !3682, size: 64, offset: 1280)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !3673, file: !95, line: 530, baseType: !3682, size: 64, offset: 1344)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !3673, file: !95, line: 532, baseType: !3682, size: 64, offset: 1408)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !3673, file: !95, line: 534, baseType: !3716, size: 64, offset: 1472)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{null, !3653, !663}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !3673, file: !95, line: 535, baseType: !3699, size: 64, offset: 1536)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !3673, file: !95, line: 536, baseType: !3682, size: 64, offset: 1600)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !3673, file: !95, line: 538, baseType: !3722, size: 64, offset: 1664)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{null, !3653, !3725}
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !95, line: 29, flags: DIFlagFwdDecl)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !3673, file: !95, line: 539, baseType: !3722, size: 64, offset: 1728)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !3673, file: !95, line: 541, baseType: !3729, size: 64, offset: 1792)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!155, !3653, !3732, !886}
!3732 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !95, line: 31, flags: DIFlagFwdDecl)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !3673, file: !95, line: 542, baseType: !3734, size: 64, offset: 1856)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!155, !3653, !3732, !439}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !3673, file: !95, line: 544, baseType: !3738, size: 64, offset: 1920)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!155, !3653, !302}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !3673, file: !95, line: 546, baseType: !3742, size: 64, offset: 1984)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{null, !3653, !7}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !3673, file: !95, line: 547, baseType: !3746, size: 64, offset: 2048)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{null, !3653, !3696}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !3673, file: !95, line: 549, baseType: !3699, size: 64, offset: 2112)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !3673, file: !95, line: 550, baseType: !3682, size: 64, offset: 2176)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3673, file: !95, line: 552, baseType: !109, size: 64, offset: 2240)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3654, file: !95, line: 181, baseType: !3487, size: 64, offset: 256)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !3654, file: !95, line: 183, baseType: !3653, size: 64, offset: 320)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !3654, file: !95, line: 185, baseType: !302, size: 64, offset: 384)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3495, file: !81, line: 122, baseType: !3756, size: 64, offset: 512)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{null, !3487, !3653}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3495, file: !81, line: 123, baseType: !3760, size: 64, offset: 576)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!155, !3487, !3619, !108, !2532}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3488, file: !81, line: 166, baseType: !302, size: 64, offset: 256)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3488, file: !81, line: 167, baseType: !7, size: 32, offset: 320)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3488, file: !81, line: 168, baseType: !7, size: 32, offset: 352)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3488, file: !81, line: 171, baseType: !3514, size: 64, offset: 384)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3488, file: !81, line: 172, baseType: !80, size: 32, offset: 448)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3488, file: !81, line: 173, baseType: !3769, size: 64, offset: 512)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !95, line: 1101, size: 192, elements: !3771)
!3771 = !{!3772, !3773, !3774, !3775, !3776, !3777}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !3770, file: !95, line: 1102, baseType: !7, size: 32)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !3770, file: !95, line: 1103, baseType: !7, size: 32, offset: 32)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !3770, file: !95, line: 1104, baseType: !7, size: 32, offset: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !3770, file: !95, line: 1105, baseType: !7, size: 32, offset: 96)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !3770, file: !95, line: 1106, baseType: !94, size: 32, offset: 128)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3770, file: !95, line: 1107, baseType: !3778, offset: 192)
!3778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3779, elements: !2241)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !95, line: 1051, size: 960, elements: !3781)
!3781 = !{!3782, !3783, !3784, !3788, !3792, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3780, file: !95, line: 1052, baseType: !775)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !3780, file: !95, line: 1053, baseType: !302, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !3780, file: !95, line: 1054, baseType: !3785, size: 64, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!370, !302}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !3780, file: !95, line: 1055, baseType: !3789, size: 64, offset: 128)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{null, !370, !302}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3780, file: !95, line: 1056, baseType: !3793, size: 64, offset: 192)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{null, !3779}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3780, file: !95, line: 1057, baseType: !3793, size: 64, offset: 256)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !3780, file: !95, line: 1058, baseType: !7, size: 32, offset: 320)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !3780, file: !95, line: 1059, baseType: !7, size: 32, offset: 352)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !3780, file: !95, line: 1060, baseType: !370, size: 32, offset: 384)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !3780, file: !95, line: 1061, baseType: !370, size: 32, offset: 416)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !3780, file: !95, line: 1062, baseType: !370, size: 32, offset: 448)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !3780, file: !95, line: 1063, baseType: !370, size: 32, offset: 480)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !3780, file: !95, line: 1064, baseType: !370, size: 32, offset: 512)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !3780, file: !95, line: 1065, baseType: !7, size: 32, offset: 544)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3780, file: !95, line: 1066, baseType: !302, size: 64, offset: 576)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !3780, file: !95, line: 1067, baseType: !109, size: 64, offset: 640)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3780, file: !95, line: 1068, baseType: !109, size: 64, offset: 704)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3780, file: !95, line: 1069, baseType: !3487, size: 64, offset: 768)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3780, file: !95, line: 1070, baseType: !175, size: 128, offset: 832)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !3780, file: !95, line: 1071, baseType: !3811, offset: 960)
!3811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3812, elements: !2241)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !95, line: 1009, size: 2944, elements: !3813)
!3813 = !{!3814, !3815, !3825, !3872, !3873, !3874}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !3812, file: !95, line: 1010, baseType: !3673, size: 2304)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3812, file: !95, line: 1011, baseType: !3816, size: 448, offset: 2304)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !95, line: 986, size: 448, elements: !3817)
!3817 = !{!3818, !3819, !3820, !3821, !3822, !3823, !3824}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !3816, file: !95, line: 987, baseType: !109, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !3816, file: !95, line: 988, baseType: !109, size: 64, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3816, file: !95, line: 989, baseType: !109, size: 64, offset: 128)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !3816, file: !95, line: 990, baseType: !109, size: 64, offset: 192)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !3816, file: !95, line: 991, baseType: !109, size: 64, offset: 256)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3816, file: !95, line: 992, baseType: !109, size: 64, offset: 320)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !3816, file: !95, line: 993, baseType: !109, size: 64, offset: 384)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3812, file: !95, line: 1012, baseType: !3826, size: 64, offset: 2752)
!3826 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !3827, line: 12, baseType: !3828)
!3827 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{null, !3831}
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !3833, line: 55, size: 2880, elements: !3834)
!3833 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/lizy2001/genbc/linux")
!3834 = !{!3835, !3836, !3837, !3838, !3839, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3866, !3867, !3868, !3869, !3870, !3871}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !3832, file: !3833, line: 56, baseType: !3661, size: 256)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !3832, file: !3833, line: 57, baseType: !3654, size: 448, offset: 256)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !3832, file: !3833, line: 58, baseType: !2532, size: 64, offset: 704)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !3832, file: !3833, line: 59, baseType: !3826, size: 64, offset: 768)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3832, file: !3833, line: 60, baseType: !3840, size: 64, offset: 832)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !3833, line: 60, flags: DIFlagFwdDecl)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !3832, file: !3833, line: 61, baseType: !7, size: 32, offset: 896)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !3832, file: !3833, line: 62, baseType: !7, size: 32, offset: 928)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3832, file: !3833, line: 63, baseType: !7, size: 32, offset: 960)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !3832, file: !3833, line: 64, baseType: !7, size: 32, offset: 992)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !3832, file: !3833, line: 65, baseType: !7, size: 32, offset: 1024)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !3832, file: !3833, line: 66, baseType: !7, size: 32, offset: 1056)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !3832, file: !3833, line: 67, baseType: !109, size: 64, offset: 1088)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !3832, file: !3833, line: 68, baseType: !7, size: 32, offset: 1152)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !3832, file: !3833, line: 69, baseType: !749, size: 32, offset: 1184)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !3832, file: !3833, line: 70, baseType: !155, size: 32, offset: 1216)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3832, file: !3833, line: 71, baseType: !775, offset: 1248)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !3832, file: !3833, line: 72, baseType: !3854, size: 64, offset: 1280)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !3832, file: !3833, line: 73, baseType: !3696, size: 64, offset: 1344)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !3832, file: !3833, line: 81, baseType: !109, size: 64, offset: 1408)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !3832, file: !3833, line: 82, baseType: !749, size: 32, offset: 1472)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !3832, file: !3833, line: 83, baseType: !1389, size: 128, offset: 1536)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !3832, file: !3833, line: 85, baseType: !7, size: 32, offset: 1664)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !3832, file: !3833, line: 86, baseType: !7, size: 32, offset: 1696)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !3832, file: !3833, line: 87, baseType: !7, size: 32, offset: 1728)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !3832, file: !3833, line: 88, baseType: !7, size: 32, offset: 1760)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3832, file: !3833, line: 91, baseType: !3864, size: 64, offset: 1792)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3833, line: 14, flags: DIFlagFwdDecl)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3832, file: !3833, line: 98, baseType: !320, size: 128, align: 64, offset: 1856)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3832, file: !3833, line: 99, baseType: !170, size: 512, offset: 1984)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !3832, file: !3833, line: 101, baseType: !675, size: 192, offset: 2496)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !3832, file: !3833, line: 102, baseType: !155, size: 32, offset: 2688)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3832, file: !3833, line: 103, baseType: !582, size: 64, offset: 2752)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3832, file: !3833, line: 104, baseType: !161, size: 64, offset: 2816)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3812, file: !95, line: 1013, baseType: !370, size: 32, offset: 2816)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !3812, file: !95, line: 1014, baseType: !370, size: 32, offset: 2848)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !3812, file: !95, line: 1015, baseType: !1323, size: 64, offset: 2880)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3488, file: !81, line: 175, baseType: !3487, size: 64, offset: 576)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3488, file: !81, line: 182, baseType: !3630, size: 64, offset: 640)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3488, file: !81, line: 183, baseType: !7, size: 32, offset: 704)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3488, file: !81, line: 184, baseType: !7, size: 32, offset: 736)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3488, file: !81, line: 185, baseType: !740, size: 128, offset: 768)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3488, file: !81, line: 186, baseType: !675, size: 192, offset: 896)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3488, file: !81, line: 187, baseType: !3882, offset: 1088)
!3882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2241)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !167, file: !60, line: 499, baseType: !175, size: 128, offset: 4224)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !167, file: !60, line: 502, baseType: !3885, size: 64, offset: 4352)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3887)
!3887 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !167, file: !60, line: 504, baseType: !3889, size: 64, offset: 4416)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !167, file: !60, line: 505, baseType: !120, size: 64, offset: 4480)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !167, file: !60, line: 510, baseType: !120, size: 64, offset: 4544)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !167, file: !60, line: 511, baseType: !3893, size: 64, offset: 4608)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3895)
!3895 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !167, file: !60, line: 513, baseType: !3897, size: 64, offset: 4672)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !3899)
!3899 = !{!3900, !3901}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3898, file: !60, line: 293, baseType: !7, size: 32)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3898, file: !60, line: 294, baseType: !109, size: 64, offset: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !167, file: !60, line: 515, baseType: !175, size: 128, offset: 4736)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !167, file: !60, line: 526, baseType: !3904, offset: 4864)
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3905, line: 5, elements: !203)
!3905 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !167, file: !60, line: 528, baseType: !3501, size: 64, offset: 4864)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !167, file: !60, line: 529, baseType: !3514, size: 64, offset: 4928)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !167, file: !60, line: 534, baseType: !462, size: 32, offset: 4992)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !167, file: !60, line: 535, baseType: !370, size: 32, offset: 5024)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !167, file: !60, line: 537, baseType: !189, offset: 5056)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !167, file: !60, line: 538, baseType: !175, size: 128, offset: 5056)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !167, file: !60, line: 540, baseType: !3913, size: 64, offset: 5184)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3915, line: 54, size: 960, elements: !3916)
!3915 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3916 = !{!3917, !3918, !3919, !3920, !3921, !3922, !3923, !3927, !3931, !3932, !3933, !3934, !3938, !3942, !3943}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3914, file: !3915, line: 55, baseType: !161, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3914, file: !3915, line: 56, baseType: !582, size: 64, offset: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3914, file: !3915, line: 58, baseType: !282, size: 64, offset: 128)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3914, file: !3915, line: 59, baseType: !282, size: 64, offset: 192)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3914, file: !3915, line: 60, baseType: !182, size: 64, offset: 256)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3914, file: !3915, line: 62, baseType: !3221, size: 64, offset: 320)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3914, file: !3915, line: 63, baseType: !3924, size: 64, offset: 384)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!230, !166, !3228}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3914, file: !3915, line: 65, baseType: !3928, size: 64, offset: 448)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{null, !3913}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3914, file: !3915, line: 66, baseType: !3230, size: 64, offset: 512)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3914, file: !3915, line: 68, baseType: !3239, size: 64, offset: 576)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3914, file: !3915, line: 70, baseType: !3037, size: 64, offset: 640)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3914, file: !3915, line: 71, baseType: !3935, size: 64, offset: 704)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{!2037, !166}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3914, file: !3915, line: 73, baseType: !3939, size: 64, offset: 768)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{null, !166, !3069, !3070}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3914, file: !3915, line: 75, baseType: !3234, size: 64, offset: 832)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3914, file: !3915, line: 77, baseType: !3351, size: 64, offset: 896)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !167, file: !60, line: 541, baseType: !282, size: 64, offset: 5248)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !167, file: !60, line: 543, baseType: !3230, size: 64, offset: 5312)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !167, file: !60, line: 544, baseType: !3947, size: 64, offset: 5376)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !167, file: !60, line: 545, baseType: !3950, size: 64, offset: 5440)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !167, file: !60, line: 547, baseType: !439, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !167, file: !60, line: 548, baseType: !439, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !167, file: !60, line: 549, baseType: !439, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !167, file: !60, line: 550, baseType: !439, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !157, file: !158, line: 362, baseType: !582, size: 64, offset: 192)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !157, file: !158, line: 364, baseType: !3958, size: 64, offset: 256)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!155, !156, !7}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !157, file: !158, line: 366, baseType: !3962, size: 64, offset: 320)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{null, !156, !7}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "get_direction", scope: !157, file: !158, line: 368, baseType: !3958, size: 64, offset: 384)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "direction_input", scope: !157, file: !158, line: 370, baseType: !3958, size: 64, offset: 448)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "direction_output", scope: !157, file: !158, line: 372, baseType: !3968, size: 64, offset: 512)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{!155, !156, !7, !155}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !157, file: !158, line: 374, baseType: !3958, size: 64, offset: 576)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "get_multiple", scope: !157, file: !158, line: 376, baseType: !3973, size: 64, offset: 640)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!155, !156, !108, !108}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !157, file: !158, line: 379, baseType: !3977, size: 64, offset: 704)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{null, !156, !7, !155}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "set_multiple", scope: !157, file: !158, line: 381, baseType: !3981, size: 64, offset: 768)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{null, !156, !108, !108}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !157, file: !158, line: 384, baseType: !3985, size: 64, offset: 832)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!155, !156, !7, !109}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "to_irq", scope: !157, file: !158, line: 387, baseType: !3958, size: 64, offset: 896)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "dbg_show", scope: !157, file: !158, line: 390, baseType: !3990, size: 64, offset: 960)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{null, !663, !156}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "init_valid_mask", scope: !157, file: !158, line: 393, baseType: !3994, size: 64, offset: 1024)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!155, !156, !108, !7}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "add_pin_ranges", scope: !157, file: !158, line: 397, baseType: !3998, size: 64, offset: 1088)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!155, !156}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !157, file: !158, line: 399, baseType: !155, size: 32, offset: 1152)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "ngpio", scope: !157, file: !158, line: 400, baseType: !854, size: 16, offset: 1184)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !157, file: !158, line: 401, baseType: !4004, size: 64, offset: 1216)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "can_sleep", scope: !157, file: !158, line: 402, baseType: !439, size: 8, offset: 1280)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "read_reg", scope: !157, file: !158, line: 405, baseType: !4008, size: 64, offset: 1344)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!109, !302}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "write_reg", scope: !157, file: !158, line: 406, baseType: !4012, size: 64, offset: 1408)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{null, !302, !109}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "be_bits", scope: !157, file: !158, line: 407, baseType: !439, size: 8, offset: 1472)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "reg_dat", scope: !157, file: !158, line: 408, baseType: !302, size: 64, offset: 1536)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "reg_set", scope: !157, file: !158, line: 409, baseType: !302, size: 64, offset: 1600)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "reg_clr", scope: !157, file: !158, line: 410, baseType: !302, size: 64, offset: 1664)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "reg_dir_out", scope: !157, file: !158, line: 411, baseType: !302, size: 64, offset: 1728)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "reg_dir_in", scope: !157, file: !158, line: 412, baseType: !302, size: 64, offset: 1792)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "bgpio_dir_unreadable", scope: !157, file: !158, line: 413, baseType: !439, size: 8, offset: 1856)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "bgpio_bits", scope: !157, file: !158, line: 414, baseType: !155, size: 32, offset: 1888)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "bgpio_lock", scope: !157, file: !158, line: 415, baseType: !189, offset: 1920)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "bgpio_data", scope: !157, file: !158, line: 416, baseType: !109, size: 64, offset: 1920)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "bgpio_dir", scope: !157, file: !158, line: 417, baseType: !109, size: 64, offset: 1984)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !157, file: !158, line: 432, baseType: !4027, size: 2304, offset: 2048)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_irq_chip", file: !158, line: 31, size: 2304, elements: !4028)
!4028 = !{!4029, !4030, !4031, !4032, !4033, !4034, !4038, !4042, !4046, !4047, !4048, !4049, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4063, !4064, !4065, !4066, !4067, !4068}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !4027, file: !158, line: 37, baseType: !3672, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4027, file: !158, line: 45, baseType: !3487, size: 64, offset: 64)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "domain_ops", scope: !4027, file: !158, line: 52, baseType: !3493, size: 64, offset: 128)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4027, file: !158, line: 61, baseType: !3514, size: 64, offset: 192)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "parent_domain", scope: !4027, file: !158, line: 71, baseType: !3487, size: 64, offset: 256)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "child_to_parent_hwirq", scope: !4027, file: !158, line: 90, baseType: !4035, size: 64, offset: 320)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!155, !156, !7, !7, !2532, !2532}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "populate_parent_alloc_arg", scope: !4027, file: !158, line: 105, baseType: !4039, size: 64, offset: 384)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!302, !156, !7, !7}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "child_offset_to_irq", scope: !4027, file: !158, line: 117, baseType: !4043, size: 64, offset: 448)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!7, !156, !7}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "child_irq_domain_ops", scope: !4027, file: !158, line: 128, baseType: !3495, size: 640, offset: 512)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4027, file: !158, line: 137, baseType: !3826, size: 64, offset: 1152)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "default_type", scope: !4027, file: !158, line: 145, baseType: !7, size: 32, offset: 1216)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !4027, file: !158, line: 152, baseType: !4050, size: 64, offset: 1280)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "request_key", scope: !4027, file: !158, line: 159, baseType: !4050, size: 64, offset: 1344)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "parent_handler", scope: !4027, file: !158, line: 167, baseType: !3826, size: 64, offset: 1408)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "parent_handler_data", scope: !4027, file: !158, line: 175, baseType: !302, size: 64, offset: 1472)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "num_parents", scope: !4027, file: !158, line: 182, baseType: !7, size: 32, offset: 1536)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "parents", scope: !4027, file: !158, line: 190, baseType: !2532, size: 64, offset: 1600)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4027, file: !158, line: 197, baseType: !2532, size: 64, offset: 1664)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4027, file: !158, line: 204, baseType: !439, size: 8, offset: 1728)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "init_hw", scope: !4027, file: !158, line: 212, baseType: !3998, size: 64, offset: 1792)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "init_valid_mask", scope: !4027, file: !158, line: 223, baseType: !4060, size: 64, offset: 1856)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{null, !156, !108, !7}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "valid_mask", scope: !4027, file: !158, line: 233, baseType: !108, size: 64, offset: 1920)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4027, file: !158, line: 241, baseType: !7, size: 32, offset: 1984)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !4027, file: !158, line: 248, baseType: !3682, size: 64, offset: 2048)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !4027, file: !158, line: 255, baseType: !3682, size: 64, offset: 2112)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !4027, file: !158, line: 261, baseType: !3682, size: 64, offset: 2176)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !4027, file: !158, line: 268, baseType: !3682, size: 64, offset: 2240)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "valid_mask", scope: !157, file: !158, line: 441, baseType: !108, size: 64, offset: 4352)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !157, file: !158, line: 454, baseType: !3501, size: 64, offset: 4416)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "of_gpio_n_cells", scope: !157, file: !158, line: 461, baseType: !7, size: 32, offset: 4480)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "of_xlate", scope: !157, file: !158, line: 469, baseType: !4073, size: 64, offset: 4544)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!155, !156, !4076, !1323}
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4078)
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_phandle_args", file: !3503, line: 74, size: 640, elements: !4079)
!4079 = !{!4080, !4081, !4082}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !4078, file: !3503, line: 75, baseType: !3501, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "args_count", scope: !4078, file: !3503, line: 76, baseType: !155, size: 32, offset: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4078, file: !3503, line: 77, baseType: !4083, size: 512, offset: 96)
!4083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !508, size: 512, elements: !1643)
!4084 = !DILocalVariable(name: "lock", arg: 1, scope: !4085, file: !4086, line: 327, type: !4090)
!4085 = distinct !DISubprogram(name: "spinlock_check", scope: !4086, file: !4086, line: 327, type: !4087, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4086 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!4089, !4090}
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!4091 = !DILocation(line: 327, column: 67, scope: !4085, inlinedAt: !4092)
!4092 = distinct !DILocation(line: 613, column: 2, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !152, file: !3, line: 613, column: 2)
!4094 = !DILocalVariable(name: "gc", arg: 1, scope: !152, file: !3, line: 599, type: !156)
!4095 = !DILocation(line: 599, column: 34, scope: !152)
!4096 = !DILocalVariable(name: "dev", arg: 2, scope: !152, file: !3, line: 599, type: !166)
!4097 = !DILocation(line: 599, column: 53, scope: !152)
!4098 = !DILocalVariable(name: "sz", arg: 3, scope: !152, file: !3, line: 600, type: !109)
!4099 = !DILocation(line: 600, column: 23, scope: !152)
!4100 = !DILocalVariable(name: "dat", arg: 4, scope: !152, file: !3, line: 600, type: !302)
!4101 = !DILocation(line: 600, column: 41, scope: !152)
!4102 = !DILocalVariable(name: "set", arg: 5, scope: !152, file: !3, line: 600, type: !302)
!4103 = !DILocation(line: 600, column: 60, scope: !152)
!4104 = !DILocalVariable(name: "clr", arg: 6, scope: !152, file: !3, line: 601, type: !302)
!4105 = !DILocation(line: 601, column: 23, scope: !152)
!4106 = !DILocalVariable(name: "dirout", arg: 7, scope: !152, file: !3, line: 601, type: !302)
!4107 = !DILocation(line: 601, column: 42, scope: !152)
!4108 = !DILocalVariable(name: "dirin", arg: 8, scope: !152, file: !3, line: 601, type: !302)
!4109 = !DILocation(line: 601, column: 64, scope: !152)
!4110 = !DILocalVariable(name: "flags", arg: 9, scope: !152, file: !3, line: 602, type: !109)
!4111 = !DILocation(line: 602, column: 23, scope: !152)
!4112 = !DILocalVariable(name: "ret", scope: !152, file: !3, line: 604, type: !155)
!4113 = !DILocation(line: 604, column: 6, scope: !152)
!4114 = !DILocation(line: 606, column: 21, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !152, file: !3, line: 606, column: 6)
!4116 = !DILocation(line: 606, column: 7, scope: !4115)
!4117 = !DILocation(line: 606, column: 6, scope: !152)
!4118 = !DILocation(line: 607, column: 3, scope: !4115)
!4119 = !DILocation(line: 609, column: 19, scope: !152)
!4120 = !DILocation(line: 609, column: 22, scope: !152)
!4121 = !DILocation(line: 609, column: 2, scope: !152)
!4122 = !DILocation(line: 609, column: 6, scope: !152)
!4123 = !DILocation(line: 609, column: 17, scope: !152)
!4124 = !DILocation(line: 610, column: 6, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !152, file: !3, line: 610, column: 6)
!4126 = !DILocation(line: 610, column: 10, scope: !4125)
!4127 = !DILocation(line: 610, column: 21, scope: !4125)
!4128 = !DILocation(line: 610, column: 6, scope: !152)
!4129 = !DILocation(line: 611, column: 3, scope: !4125)
!4130 = !DILocation(line: 613, column: 2, scope: !152)
!4131 = !DILocation(line: 613, column: 2, scope: !4093)
!4132 = !DILocation(line: 329, column: 10, scope: !4085, inlinedAt: !4092)
!4133 = !DILocation(line: 329, column: 16, scope: !4085, inlinedAt: !4092)
!4134 = !DILocation(line: 614, column: 15, scope: !152)
!4135 = !DILocation(line: 614, column: 2, scope: !152)
!4136 = !DILocation(line: 614, column: 6, scope: !152)
!4137 = !DILocation(line: 614, column: 13, scope: !152)
!4138 = !DILocation(line: 615, column: 23, scope: !152)
!4139 = !DILocation(line: 615, column: 14, scope: !152)
!4140 = !DILocation(line: 615, column: 2, scope: !152)
!4141 = !DILocation(line: 615, column: 6, scope: !152)
!4142 = !DILocation(line: 615, column: 12, scope: !152)
!4143 = !DILocation(line: 616, column: 2, scope: !152)
!4144 = !DILocation(line: 616, column: 6, scope: !152)
!4145 = !DILocation(line: 616, column: 11, scope: !152)
!4146 = !DILocation(line: 617, column: 14, scope: !152)
!4147 = !DILocation(line: 617, column: 18, scope: !152)
!4148 = !DILocation(line: 617, column: 2, scope: !152)
!4149 = !DILocation(line: 617, column: 6, scope: !152)
!4150 = !DILocation(line: 617, column: 12, scope: !152)
!4151 = !DILocation(line: 618, column: 2, scope: !152)
!4152 = !DILocation(line: 618, column: 6, scope: !152)
!4153 = !DILocation(line: 618, column: 14, scope: !152)
!4154 = !DILocation(line: 619, column: 19, scope: !152)
!4155 = !DILocation(line: 619, column: 25, scope: !152)
!4156 = !DILocation(line: 619, column: 17, scope: !152)
!4157 = !DILocation(line: 619, column: 16, scope: !152)
!4158 = !DILocation(line: 619, column: 2, scope: !152)
!4159 = !DILocation(line: 619, column: 6, scope: !152)
!4160 = !DILocation(line: 619, column: 14, scope: !152)
!4161 = !DILocation(line: 621, column: 23, scope: !152)
!4162 = !DILocation(line: 621, column: 27, scope: !152)
!4163 = !DILocation(line: 621, column: 32, scope: !152)
!4164 = !DILocation(line: 621, column: 37, scope: !152)
!4165 = !DILocation(line: 621, column: 42, scope: !152)
!4166 = !DILocation(line: 621, column: 8, scope: !152)
!4167 = !DILocation(line: 621, column: 6, scope: !152)
!4168 = !DILocation(line: 622, column: 6, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !152, file: !3, line: 622, column: 6)
!4170 = !DILocation(line: 622, column: 6, scope: !152)
!4171 = !DILocation(line: 623, column: 10, scope: !4169)
!4172 = !DILocation(line: 623, column: 3, scope: !4169)
!4173 = !DILocation(line: 625, column: 30, scope: !152)
!4174 = !DILocation(line: 625, column: 35, scope: !152)
!4175 = !DILocation(line: 625, column: 39, scope: !152)
!4176 = !DILocation(line: 625, column: 45, scope: !152)
!4177 = !DILocation(line: 625, column: 8, scope: !152)
!4178 = !DILocation(line: 625, column: 6, scope: !152)
!4179 = !DILocation(line: 626, column: 6, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !152, file: !3, line: 626, column: 6)
!4181 = !DILocation(line: 626, column: 6, scope: !152)
!4182 = !DILocation(line: 627, column: 10, scope: !4180)
!4183 = !DILocation(line: 627, column: 3, scope: !4180)
!4184 = !DILocation(line: 629, column: 30, scope: !152)
!4185 = !DILocation(line: 629, column: 34, scope: !152)
!4186 = !DILocation(line: 629, column: 42, scope: !152)
!4187 = !DILocation(line: 629, column: 49, scope: !152)
!4188 = !DILocation(line: 629, column: 8, scope: !152)
!4189 = !DILocation(line: 629, column: 6, scope: !152)
!4190 = !DILocation(line: 630, column: 6, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !152, file: !3, line: 630, column: 6)
!4192 = !DILocation(line: 630, column: 6, scope: !152)
!4193 = !DILocation(line: 631, column: 10, scope: !4191)
!4194 = !DILocation(line: 631, column: 3, scope: !4191)
!4195 = !DILocation(line: 633, column: 19, scope: !152)
!4196 = !DILocation(line: 633, column: 23, scope: !152)
!4197 = !DILocation(line: 633, column: 32, scope: !152)
!4198 = !DILocation(line: 633, column: 36, scope: !152)
!4199 = !DILocation(line: 633, column: 2, scope: !152)
!4200 = !DILocation(line: 633, column: 6, scope: !152)
!4201 = !DILocation(line: 633, column: 17, scope: !152)
!4202 = !DILocation(line: 634, column: 6, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !152, file: !3, line: 634, column: 6)
!4204 = !DILocation(line: 634, column: 10, scope: !4203)
!4205 = !DILocation(line: 634, column: 14, scope: !4203)
!4206 = !DILocation(line: 634, column: 31, scope: !4203)
!4207 = !DILocation(line: 635, column: 6, scope: !4203)
!4208 = !DILocation(line: 635, column: 12, scope: !4203)
!4209 = !DILocation(line: 634, column: 6, scope: !152)
!4210 = !DILocation(line: 636, column: 20, scope: !4203)
!4211 = !DILocation(line: 636, column: 24, scope: !4203)
!4212 = !DILocation(line: 636, column: 33, scope: !4203)
!4213 = !DILocation(line: 636, column: 37, scope: !4203)
!4214 = !DILocation(line: 636, column: 3, scope: !4203)
!4215 = !DILocation(line: 636, column: 7, scope: !4203)
!4216 = !DILocation(line: 636, column: 18, scope: !4203)
!4217 = !DILocation(line: 638, column: 6, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !152, file: !3, line: 638, column: 6)
!4219 = !DILocation(line: 638, column: 12, scope: !4218)
!4220 = !DILocation(line: 638, column: 6, scope: !152)
!4221 = !DILocation(line: 639, column: 3, scope: !4218)
!4222 = !DILocation(line: 639, column: 7, scope: !4218)
!4223 = !DILocation(line: 639, column: 28, scope: !4218)
!4224 = !DILocation(line: 644, column: 7, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !152, file: !3, line: 644, column: 6)
!4226 = !DILocation(line: 644, column: 11, scope: !4225)
!4227 = !DILocation(line: 644, column: 23, scope: !4225)
!4228 = !DILocation(line: 644, column: 26, scope: !4225)
!4229 = !DILocation(line: 644, column: 30, scope: !4225)
!4230 = !DILocation(line: 644, column: 42, scope: !4225)
!4231 = !DILocation(line: 645, column: 8, scope: !4225)
!4232 = !DILocation(line: 645, column: 14, scope: !4225)
!4233 = !DILocation(line: 644, column: 6, scope: !152)
!4234 = !DILocation(line: 646, column: 7, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 646, column: 7)
!4236 = distinct !DILexicalBlock(scope: !4225, file: !3, line: 645, column: 44)
!4237 = !DILocation(line: 646, column: 11, scope: !4235)
!4238 = !DILocation(line: 646, column: 7, scope: !4236)
!4239 = !DILocation(line: 647, column: 20, scope: !4235)
!4240 = !DILocation(line: 647, column: 24, scope: !4235)
!4241 = !DILocation(line: 647, column: 33, scope: !4235)
!4242 = !DILocation(line: 647, column: 37, scope: !4235)
!4243 = !DILocation(line: 647, column: 4, scope: !4235)
!4244 = !DILocation(line: 647, column: 8, scope: !4235)
!4245 = !DILocation(line: 647, column: 18, scope: !4235)
!4246 = !DILocation(line: 648, column: 12, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4235, file: !3, line: 648, column: 12)
!4248 = !DILocation(line: 648, column: 16, scope: !4247)
!4249 = !DILocation(line: 648, column: 12, scope: !4235)
!4250 = !DILocation(line: 649, column: 21, scope: !4247)
!4251 = !DILocation(line: 649, column: 25, scope: !4247)
!4252 = !DILocation(line: 649, column: 34, scope: !4247)
!4253 = !DILocation(line: 649, column: 38, scope: !4247)
!4254 = !DILocation(line: 649, column: 20, scope: !4247)
!4255 = !DILocation(line: 649, column: 4, scope: !4247)
!4256 = !DILocation(line: 649, column: 8, scope: !4247)
!4257 = !DILocation(line: 649, column: 18, scope: !4247)
!4258 = !DILocation(line: 656, column: 7, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 656, column: 7)
!4260 = !DILocation(line: 656, column: 11, scope: !4259)
!4261 = !DILocation(line: 656, column: 23, scope: !4259)
!4262 = !DILocation(line: 656, column: 26, scope: !4259)
!4263 = !DILocation(line: 656, column: 30, scope: !4259)
!4264 = !DILocation(line: 656, column: 7, scope: !4236)
!4265 = !DILocation(line: 657, column: 4, scope: !4259)
!4266 = !DILocation(line: 657, column: 8, scope: !4259)
!4267 = !DILocation(line: 657, column: 18, scope: !4259)
!4268 = !DILocation(line: 657, column: 22, scope: !4259)
!4269 = !DILocation(line: 657, column: 35, scope: !4259)
!4270 = !DILocation(line: 657, column: 39, scope: !4259)
!4271 = !DILocation(line: 657, column: 34, scope: !4259)
!4272 = !DILocation(line: 658, column: 2, scope: !4236)
!4273 = !DILocation(line: 660, column: 9, scope: !152)
!4274 = !DILocation(line: 660, column: 2, scope: !152)
!4275 = !DILocation(line: 661, column: 1, scope: !152)
!4276 = distinct !DISubprogram(name: "is_power_of_2", scope: !4277, file: !4277, line: 45, type: !4278, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4277 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!439, !109}
!4280 = !DILocalVariable(name: "n", arg: 1, scope: !4276, file: !4277, line: 45, type: !109)
!4281 = !DILocation(line: 45, column: 34, scope: !4276)
!4282 = !DILocation(line: 47, column: 10, scope: !4276)
!4283 = !DILocation(line: 47, column: 12, scope: !4276)
!4284 = !DILocation(line: 47, column: 17, scope: !4276)
!4285 = !DILocation(line: 47, column: 22, scope: !4276)
!4286 = !DILocation(line: 47, column: 27, scope: !4276)
!4287 = !DILocation(line: 47, column: 29, scope: !4276)
!4288 = !DILocation(line: 47, column: 24, scope: !4276)
!4289 = !DILocation(line: 47, column: 35, scope: !4276)
!4290 = !DILocation(line: 0, scope: !4276)
!4291 = !DILocation(line: 47, column: 2, scope: !4276)
!4292 = distinct !DISubprogram(name: "dev_name", scope: !60, file: !60, line: 609, type: !4293, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!161, !3538}
!4295 = !DILocalVariable(name: "dev", arg: 1, scope: !4292, file: !60, line: 609, type: !3538)
!4296 = !DILocation(line: 609, column: 57, scope: !4292)
!4297 = !DILocation(line: 612, column: 6, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4292, file: !60, line: 612, column: 6)
!4299 = !DILocation(line: 612, column: 11, scope: !4298)
!4300 = !DILocation(line: 612, column: 6, scope: !4292)
!4301 = !DILocation(line: 613, column: 10, scope: !4298)
!4302 = !DILocation(line: 613, column: 15, scope: !4298)
!4303 = !DILocation(line: 613, column: 3, scope: !4298)
!4304 = !DILocation(line: 615, column: 23, scope: !4292)
!4305 = !DILocation(line: 615, column: 28, scope: !4292)
!4306 = !DILocation(line: 615, column: 9, scope: !4292)
!4307 = !DILocation(line: 615, column: 2, scope: !4292)
!4308 = !DILocation(line: 616, column: 1, scope: !4292)
!4309 = distinct !DISubprogram(name: "bgpio_request", scope: !3, file: !3, line: 564, type: !3959, scopeLine: 565, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4310 = !DILocalVariable(name: "chip", arg: 1, scope: !4309, file: !3, line: 564, type: !156)
!4311 = !DILocation(line: 564, column: 44, scope: !4309)
!4312 = !DILocalVariable(name: "gpio_pin", arg: 2, scope: !4309, file: !3, line: 564, type: !7)
!4313 = !DILocation(line: 564, column: 59, scope: !4309)
!4314 = !DILocation(line: 566, column: 6, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4309, file: !3, line: 566, column: 6)
!4316 = !DILocation(line: 566, column: 17, scope: !4315)
!4317 = !DILocation(line: 566, column: 23, scope: !4315)
!4318 = !DILocation(line: 566, column: 15, scope: !4315)
!4319 = !DILocation(line: 566, column: 6, scope: !4309)
!4320 = !DILocation(line: 567, column: 3, scope: !4315)
!4321 = !DILocation(line: 569, column: 2, scope: !4309)
!4322 = !DILocation(line: 570, column: 1, scope: !4309)
!4323 = distinct !DISubprogram(name: "bgpio_setup_io", scope: !3, file: !3, line: 488, type: !4324, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!155, !156, !302, !302, !302, !109}
!4326 = !DILocalVariable(name: "gc", arg: 1, scope: !4323, file: !3, line: 488, type: !156)
!4327 = !DILocation(line: 488, column: 45, scope: !4323)
!4328 = !DILocalVariable(name: "dat", arg: 2, scope: !4323, file: !3, line: 489, type: !302)
!4329 = !DILocation(line: 489, column: 20, scope: !4323)
!4330 = !DILocalVariable(name: "set", arg: 3, scope: !4323, file: !3, line: 490, type: !302)
!4331 = !DILocation(line: 490, column: 20, scope: !4323)
!4332 = !DILocalVariable(name: "clr", arg: 4, scope: !4323, file: !3, line: 491, type: !302)
!4333 = !DILocation(line: 491, column: 20, scope: !4323)
!4334 = !DILocalVariable(name: "flags", arg: 5, scope: !4323, file: !3, line: 492, type: !109)
!4335 = !DILocation(line: 492, column: 20, scope: !4323)
!4336 = !DILocation(line: 495, column: 16, scope: !4323)
!4337 = !DILocation(line: 495, column: 2, scope: !4323)
!4338 = !DILocation(line: 495, column: 6, scope: !4323)
!4339 = !DILocation(line: 495, column: 14, scope: !4323)
!4340 = !DILocation(line: 496, column: 7, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4323, file: !3, line: 496, column: 6)
!4342 = !DILocation(line: 496, column: 11, scope: !4341)
!4343 = !DILocation(line: 496, column: 6, scope: !4323)
!4344 = !DILocation(line: 497, column: 3, scope: !4341)
!4345 = !DILocation(line: 499, column: 6, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4323, file: !3, line: 499, column: 6)
!4347 = !DILocation(line: 499, column: 10, scope: !4346)
!4348 = !DILocation(line: 499, column: 13, scope: !4346)
!4349 = !DILocation(line: 499, column: 6, scope: !4323)
!4350 = !DILocation(line: 500, column: 17, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4346, file: !3, line: 499, column: 18)
!4352 = !DILocation(line: 500, column: 3, scope: !4351)
!4353 = !DILocation(line: 500, column: 7, scope: !4351)
!4354 = !DILocation(line: 500, column: 15, scope: !4351)
!4355 = !DILocation(line: 501, column: 17, scope: !4351)
!4356 = !DILocation(line: 501, column: 3, scope: !4351)
!4357 = !DILocation(line: 501, column: 7, scope: !4351)
!4358 = !DILocation(line: 501, column: 15, scope: !4351)
!4359 = !DILocation(line: 502, column: 3, scope: !4351)
!4360 = !DILocation(line: 502, column: 7, scope: !4351)
!4361 = !DILocation(line: 502, column: 11, scope: !4351)
!4362 = !DILocation(line: 503, column: 3, scope: !4351)
!4363 = !DILocation(line: 503, column: 7, scope: !4351)
!4364 = !DILocation(line: 503, column: 20, scope: !4351)
!4365 = !DILocation(line: 504, column: 2, scope: !4351)
!4366 = !DILocation(line: 504, column: 13, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4346, file: !3, line: 504, column: 13)
!4368 = !DILocation(line: 504, column: 17, scope: !4367)
!4369 = !DILocation(line: 504, column: 21, scope: !4367)
!4370 = !DILocation(line: 504, column: 13, scope: !4346)
!4371 = !DILocation(line: 505, column: 17, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4367, file: !3, line: 504, column: 26)
!4373 = !DILocation(line: 505, column: 3, scope: !4372)
!4374 = !DILocation(line: 505, column: 7, scope: !4372)
!4375 = !DILocation(line: 505, column: 15, scope: !4372)
!4376 = !DILocation(line: 506, column: 3, scope: !4372)
!4377 = !DILocation(line: 506, column: 7, scope: !4372)
!4378 = !DILocation(line: 506, column: 11, scope: !4372)
!4379 = !DILocation(line: 507, column: 3, scope: !4372)
!4380 = !DILocation(line: 507, column: 7, scope: !4372)
!4381 = !DILocation(line: 507, column: 20, scope: !4372)
!4382 = !DILocation(line: 508, column: 2, scope: !4372)
!4383 = !DILocation(line: 508, column: 13, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4367, file: !3, line: 508, column: 13)
!4385 = !DILocation(line: 508, column: 19, scope: !4384)
!4386 = !DILocation(line: 508, column: 13, scope: !4367)
!4387 = !DILocation(line: 509, column: 3, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 508, column: 39)
!4389 = !DILocation(line: 509, column: 7, scope: !4388)
!4390 = !DILocation(line: 509, column: 11, scope: !4388)
!4391 = !DILocation(line: 510, column: 3, scope: !4388)
!4392 = !DILocation(line: 510, column: 7, scope: !4388)
!4393 = !DILocation(line: 510, column: 20, scope: !4388)
!4394 = !DILocation(line: 511, column: 2, scope: !4388)
!4395 = !DILocation(line: 512, column: 3, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 511, column: 9)
!4397 = !DILocation(line: 512, column: 7, scope: !4396)
!4398 = !DILocation(line: 512, column: 11, scope: !4396)
!4399 = !DILocation(line: 513, column: 3, scope: !4396)
!4400 = !DILocation(line: 513, column: 7, scope: !4396)
!4401 = !DILocation(line: 513, column: 20, scope: !4396)
!4402 = !DILocation(line: 516, column: 8, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4323, file: !3, line: 516, column: 6)
!4404 = !DILocation(line: 516, column: 14, scope: !4403)
!4405 = !DILocation(line: 516, column: 43, scope: !4403)
!4406 = !DILocation(line: 517, column: 7, scope: !4403)
!4407 = !DILocation(line: 517, column: 13, scope: !4403)
!4408 = !DILocation(line: 516, column: 6, scope: !4323)
!4409 = !DILocation(line: 518, column: 3, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4403, file: !3, line: 517, column: 44)
!4411 = !DILocation(line: 518, column: 7, scope: !4410)
!4412 = !DILocation(line: 518, column: 11, scope: !4410)
!4413 = !DILocation(line: 519, column: 8, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4410, file: !3, line: 519, column: 7)
!4415 = !DILocation(line: 519, column: 12, scope: !4414)
!4416 = !DILocation(line: 519, column: 7, scope: !4410)
!4417 = !DILocation(line: 520, column: 4, scope: !4414)
!4418 = !DILocation(line: 520, column: 8, scope: !4414)
!4419 = !DILocation(line: 520, column: 21, scope: !4414)
!4420 = !DILocation(line: 528, column: 2, scope: !4410)
!4421 = !DILocation(line: 529, column: 3, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4403, file: !3, line: 528, column: 9)
!4423 = !DILocation(line: 529, column: 7, scope: !4422)
!4424 = !DILocation(line: 529, column: 11, scope: !4422)
!4425 = !DILocation(line: 530, column: 7, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4422, file: !3, line: 530, column: 7)
!4427 = !DILocation(line: 530, column: 11, scope: !4426)
!4428 = !DILocation(line: 530, column: 7, scope: !4422)
!4429 = !DILocation(line: 531, column: 4, scope: !4426)
!4430 = !DILocation(line: 531, column: 8, scope: !4426)
!4431 = !DILocation(line: 531, column: 21, scope: !4426)
!4432 = !DILocation(line: 533, column: 4, scope: !4426)
!4433 = !DILocation(line: 533, column: 8, scope: !4426)
!4434 = !DILocation(line: 533, column: 21, scope: !4426)
!4435 = !DILocation(line: 536, column: 2, scope: !4323)
!4436 = !DILocation(line: 537, column: 1, scope: !4323)
!4437 = distinct !DISubprogram(name: "bgpio_setup_accessors", scope: !3, file: !3, line: 418, type: !4438, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{!155, !166, !156, !439}
!4440 = !DILocalVariable(name: "dev", arg: 1, scope: !4437, file: !3, line: 418, type: !166)
!4441 = !DILocation(line: 418, column: 49, scope: !4437)
!4442 = !DILocalVariable(name: "gc", arg: 2, scope: !4437, file: !3, line: 419, type: !156)
!4443 = !DILocation(line: 419, column: 24, scope: !4437)
!4444 = !DILocalVariable(name: "byte_be", arg: 3, scope: !4437, file: !3, line: 420, type: !439)
!4445 = !DILocation(line: 420, column: 11, scope: !4437)
!4446 = !DILocation(line: 423, column: 10, scope: !4437)
!4447 = !DILocation(line: 423, column: 14, scope: !4437)
!4448 = !DILocation(line: 423, column: 2, scope: !4437)
!4449 = !DILocation(line: 425, column: 3, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 423, column: 26)
!4451 = !DILocation(line: 425, column: 7, scope: !4450)
!4452 = !DILocation(line: 425, column: 16, scope: !4450)
!4453 = !DILocation(line: 426, column: 3, scope: !4450)
!4454 = !DILocation(line: 426, column: 7, scope: !4450)
!4455 = !DILocation(line: 426, column: 17, scope: !4450)
!4456 = !DILocation(line: 427, column: 3, scope: !4450)
!4457 = !DILocation(line: 429, column: 7, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4450, file: !3, line: 429, column: 7)
!4459 = !DILocation(line: 429, column: 7, scope: !4450)
!4460 = !DILocation(line: 430, column: 4, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 429, column: 16)
!4462 = !DILocation(line: 430, column: 8, scope: !4461)
!4463 = !DILocation(line: 430, column: 17, scope: !4461)
!4464 = !DILocation(line: 431, column: 4, scope: !4461)
!4465 = !DILocation(line: 431, column: 8, scope: !4461)
!4466 = !DILocation(line: 431, column: 18, scope: !4461)
!4467 = !DILocation(line: 432, column: 3, scope: !4461)
!4468 = !DILocation(line: 433, column: 4, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 432, column: 10)
!4470 = !DILocation(line: 433, column: 8, scope: !4469)
!4471 = !DILocation(line: 433, column: 17, scope: !4469)
!4472 = !DILocation(line: 434, column: 4, scope: !4469)
!4473 = !DILocation(line: 434, column: 8, scope: !4469)
!4474 = !DILocation(line: 434, column: 18, scope: !4469)
!4475 = !DILocation(line: 436, column: 3, scope: !4450)
!4476 = !DILocation(line: 438, column: 7, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4450, file: !3, line: 438, column: 7)
!4478 = !DILocation(line: 438, column: 7, scope: !4450)
!4479 = !DILocation(line: 439, column: 4, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4477, file: !3, line: 438, column: 16)
!4481 = !DILocation(line: 439, column: 8, scope: !4480)
!4482 = !DILocation(line: 439, column: 17, scope: !4480)
!4483 = !DILocation(line: 440, column: 4, scope: !4480)
!4484 = !DILocation(line: 440, column: 8, scope: !4480)
!4485 = !DILocation(line: 440, column: 18, scope: !4480)
!4486 = !DILocation(line: 441, column: 3, scope: !4480)
!4487 = !DILocation(line: 442, column: 4, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4477, file: !3, line: 441, column: 10)
!4489 = !DILocation(line: 442, column: 8, scope: !4488)
!4490 = !DILocation(line: 442, column: 17, scope: !4488)
!4491 = !DILocation(line: 443, column: 4, scope: !4488)
!4492 = !DILocation(line: 443, column: 8, scope: !4488)
!4493 = !DILocation(line: 443, column: 18, scope: !4488)
!4494 = !DILocation(line: 445, column: 3, scope: !4450)
!4495 = !DILocation(line: 448, column: 7, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4450, file: !3, line: 448, column: 7)
!4497 = !DILocation(line: 448, column: 7, scope: !4450)
!4498 = !DILocation(line: 449, column: 4, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4496, file: !3, line: 448, column: 16)
!4500 = !DILocation(line: 451, column: 4, scope: !4499)
!4501 = !DILocation(line: 453, column: 4, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4496, file: !3, line: 452, column: 10)
!4503 = !DILocation(line: 453, column: 8, scope: !4502)
!4504 = !DILocation(line: 453, column: 17, scope: !4502)
!4505 = !DILocation(line: 454, column: 4, scope: !4502)
!4506 = !DILocation(line: 454, column: 8, scope: !4502)
!4507 = !DILocation(line: 454, column: 18, scope: !4502)
!4508 = !DILocation(line: 456, column: 3, scope: !4450)
!4509 = !DILocation(line: 459, column: 3, scope: !4450)
!4510 = !DILocation(line: 460, column: 3, scope: !4450)
!4511 = !DILocation(line: 463, column: 2, scope: !4437)
!4512 = !DILocation(line: 464, column: 1, scope: !4437)
!4513 = distinct !DISubprogram(name: "bgpio_setup_direction", scope: !3, file: !3, line: 539, type: !4514, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4514 = !DISubroutineType(types: !4515)
!4515 = !{!155, !156, !302, !302, !109}
!4516 = !DILocalVariable(name: "gc", arg: 1, scope: !4513, file: !3, line: 539, type: !156)
!4517 = !DILocation(line: 539, column: 52, scope: !4513)
!4518 = !DILocalVariable(name: "dirout", arg: 2, scope: !4513, file: !3, line: 540, type: !302)
!4519 = !DILocation(line: 540, column: 20, scope: !4513)
!4520 = !DILocalVariable(name: "dirin", arg: 3, scope: !4513, file: !3, line: 541, type: !302)
!4521 = !DILocation(line: 541, column: 20, scope: !4513)
!4522 = !DILocalVariable(name: "flags", arg: 4, scope: !4513, file: !3, line: 542, type: !109)
!4523 = !DILocation(line: 542, column: 20, scope: !4513)
!4524 = !DILocation(line: 544, column: 6, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4513, file: !3, line: 544, column: 6)
!4526 = !DILocation(line: 544, column: 13, scope: !4525)
!4527 = !DILocation(line: 544, column: 16, scope: !4525)
!4528 = !DILocation(line: 544, column: 6, scope: !4513)
!4529 = !DILocation(line: 545, column: 21, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4525, file: !3, line: 544, column: 23)
!4531 = !DILocation(line: 545, column: 3, scope: !4530)
!4532 = !DILocation(line: 545, column: 7, scope: !4530)
!4533 = !DILocation(line: 545, column: 19, scope: !4530)
!4534 = !DILocation(line: 546, column: 20, scope: !4530)
!4535 = !DILocation(line: 546, column: 3, scope: !4530)
!4536 = !DILocation(line: 546, column: 7, scope: !4530)
!4537 = !DILocation(line: 546, column: 18, scope: !4530)
!4538 = !DILocation(line: 547, column: 7, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 547, column: 7)
!4540 = !DILocation(line: 547, column: 13, scope: !4539)
!4541 = !DILocation(line: 547, column: 7, scope: !4530)
!4542 = !DILocation(line: 548, column: 4, scope: !4539)
!4543 = !DILocation(line: 548, column: 8, scope: !4539)
!4544 = !DILocation(line: 548, column: 25, scope: !4539)
!4545 = !DILocation(line: 550, column: 4, scope: !4539)
!4546 = !DILocation(line: 550, column: 8, scope: !4539)
!4547 = !DILocation(line: 550, column: 25, scope: !4539)
!4548 = !DILocation(line: 551, column: 3, scope: !4530)
!4549 = !DILocation(line: 551, column: 7, scope: !4530)
!4550 = !DILocation(line: 551, column: 23, scope: !4530)
!4551 = !DILocation(line: 552, column: 3, scope: !4530)
!4552 = !DILocation(line: 552, column: 7, scope: !4530)
!4553 = !DILocation(line: 552, column: 21, scope: !4530)
!4554 = !DILocation(line: 553, column: 2, scope: !4530)
!4555 = !DILocation(line: 554, column: 7, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4557, file: !3, line: 554, column: 7)
!4557 = distinct !DILexicalBlock(scope: !4525, file: !3, line: 553, column: 9)
!4558 = !DILocation(line: 554, column: 13, scope: !4556)
!4559 = !DILocation(line: 554, column: 7, scope: !4557)
!4560 = !DILocation(line: 555, column: 4, scope: !4556)
!4561 = !DILocation(line: 555, column: 8, scope: !4556)
!4562 = !DILocation(line: 555, column: 25, scope: !4556)
!4563 = !DILocation(line: 557, column: 4, scope: !4556)
!4564 = !DILocation(line: 557, column: 8, scope: !4556)
!4565 = !DILocation(line: 557, column: 25, scope: !4556)
!4566 = !DILocation(line: 558, column: 3, scope: !4557)
!4567 = !DILocation(line: 558, column: 7, scope: !4557)
!4568 = !DILocation(line: 558, column: 23, scope: !4557)
!4569 = !DILocation(line: 561, column: 2, scope: !4513)
!4570 = distinct !DISubprogram(name: "bgpio_set_set", scope: !3, file: !3, line: 246, type: !3978, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4571 = !DILocalVariable(name: "lock", arg: 1, scope: !4572, file: !4086, line: 407, type: !4090)
!4572 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4086, file: !4086, line: 407, type: !4573, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{null, !4090, !109}
!4575 = !DILocation(line: 407, column: 64, scope: !4572, inlinedAt: !4576)
!4576 = distinct !DILocation(line: 260, column: 2, scope: !4570)
!4577 = !DILocalVariable(name: "flags", arg: 2, scope: !4572, file: !4086, line: 407, type: !109)
!4578 = !DILocation(line: 407, column: 84, scope: !4572, inlinedAt: !4576)
!4579 = !DILocation(line: 327, column: 67, scope: !4085, inlinedAt: !4580)
!4580 = distinct !DILocation(line: 251, column: 2, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4582, file: !3, line: 251, column: 2)
!4582 = distinct !DILexicalBlock(scope: !4583, file: !3, line: 251, column: 2)
!4583 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 251, column: 2)
!4584 = distinct !DILexicalBlock(scope: !4585, file: !3, line: 251, column: 2)
!4585 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 251, column: 2)
!4586 = !DILocalVariable(name: "gc", arg: 1, scope: !4570, file: !3, line: 246, type: !156)
!4587 = !DILocation(line: 246, column: 45, scope: !4570)
!4588 = !DILocalVariable(name: "gpio", arg: 2, scope: !4570, file: !3, line: 246, type: !7)
!4589 = !DILocation(line: 246, column: 62, scope: !4570)
!4590 = !DILocalVariable(name: "val", arg: 3, scope: !4570, file: !3, line: 246, type: !155)
!4591 = !DILocation(line: 246, column: 72, scope: !4570)
!4592 = !DILocalVariable(name: "mask", scope: !4570, file: !3, line: 248, type: !109)
!4593 = !DILocation(line: 248, column: 16, scope: !4570)
!4594 = !DILocation(line: 248, column: 39, scope: !4570)
!4595 = !DILocation(line: 248, column: 43, scope: !4570)
!4596 = !DILocation(line: 248, column: 23, scope: !4570)
!4597 = !DILocalVariable(name: "flags", scope: !4570, file: !3, line: 249, type: !109)
!4598 = !DILocation(line: 249, column: 16, scope: !4570)
!4599 = !DILocation(line: 251, column: 2, scope: !4570)
!4600 = !DILocation(line: 251, column: 2, scope: !4585)
!4601 = !DILocalVariable(name: "__dummy", scope: !4602, file: !3, line: 251, type: !109)
!4602 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 251, column: 2)
!4603 = !DILocation(line: 251, column: 2, scope: !4602)
!4604 = !DILocalVariable(name: "__dummy2", scope: !4602, file: !3, line: 251, type: !109)
!4605 = !DILocation(line: 251, column: 2, scope: !4584)
!4606 = !DILocation(line: 251, column: 2, scope: !4583)
!4607 = !DILocation(line: 251, column: 2, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4583, file: !3, line: 251, column: 2)
!4609 = !DILocalVariable(name: "__dummy", scope: !4610, file: !3, line: 251, type: !109)
!4610 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 251, column: 2)
!4611 = distinct !DILexicalBlock(scope: !4608, file: !3, line: 251, column: 2)
!4612 = !DILocation(line: 251, column: 2, scope: !4610)
!4613 = !DILocalVariable(name: "__dummy2", scope: !4610, file: !3, line: 251, type: !109)
!4614 = !DILocation(line: 251, column: 2, scope: !4611)
!4615 = !DILocation(line: 251, column: 2, scope: !4582)
!4616 = !{i32 -2142428699}
!4617 = !DILocation(line: 251, column: 2, scope: !4581)
!4618 = !DILocation(line: 329, column: 10, scope: !4085, inlinedAt: !4580)
!4619 = !DILocation(line: 329, column: 16, scope: !4085, inlinedAt: !4580)
!4620 = !DILocation(line: 253, column: 6, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 253, column: 6)
!4622 = !DILocation(line: 253, column: 6, scope: !4570)
!4623 = !DILocation(line: 254, column: 21, scope: !4621)
!4624 = !DILocation(line: 254, column: 3, scope: !4621)
!4625 = !DILocation(line: 254, column: 7, scope: !4621)
!4626 = !DILocation(line: 254, column: 18, scope: !4621)
!4627 = !DILocation(line: 256, column: 22, scope: !4621)
!4628 = !DILocation(line: 256, column: 21, scope: !4621)
!4629 = !DILocation(line: 256, column: 3, scope: !4621)
!4630 = !DILocation(line: 256, column: 7, scope: !4621)
!4631 = !DILocation(line: 256, column: 18, scope: !4621)
!4632 = !DILocation(line: 258, column: 2, scope: !4570)
!4633 = !DILocation(line: 258, column: 6, scope: !4570)
!4634 = !DILocation(line: 258, column: 16, scope: !4570)
!4635 = !DILocation(line: 258, column: 20, scope: !4570)
!4636 = !DILocation(line: 258, column: 29, scope: !4570)
!4637 = !DILocation(line: 258, column: 33, scope: !4570)
!4638 = !DILocation(line: 260, column: 26, scope: !4570)
!4639 = !DILocation(line: 260, column: 30, scope: !4570)
!4640 = !DILocation(line: 260, column: 42, scope: !4570)
!4641 = !DILocalVariable(name: "__dummy", scope: !4642, file: !4086, line: 409, type: !109)
!4642 = distinct !DILexicalBlock(scope: !4643, file: !4086, line: 409, column: 2)
!4643 = distinct !DILexicalBlock(scope: !4572, file: !4086, line: 409, column: 2)
!4644 = !DILocation(line: 409, column: 2, scope: !4642, inlinedAt: !4576)
!4645 = !DILocalVariable(name: "__dummy2", scope: !4642, file: !4086, line: 409, type: !109)
!4646 = !DILocalVariable(name: "__dummy", scope: !4647, file: !4086, line: 409, type: !109)
!4647 = distinct !DILexicalBlock(scope: !4648, file: !4086, line: 409, column: 2)
!4648 = distinct !DILexicalBlock(scope: !4649, file: !4086, line: 409, column: 2)
!4649 = distinct !DILexicalBlock(scope: !4650, file: !4086, line: 409, column: 2)
!4650 = distinct !DILexicalBlock(scope: !4643, file: !4086, line: 409, column: 2)
!4651 = !DILocation(line: 409, column: 2, scope: !4647, inlinedAt: !4576)
!4652 = !DILocalVariable(name: "__dummy2", scope: !4647, file: !4086, line: 409, type: !109)
!4653 = !DILocation(line: 409, column: 2, scope: !4648, inlinedAt: !4576)
!4654 = !DILocation(line: 409, column: 2, scope: !4655, inlinedAt: !4576)
!4655 = distinct !DILexicalBlock(scope: !4650, file: !4086, line: 409, column: 2)
!4656 = !{i32 -2145456281}
!4657 = !DILocation(line: 409, column: 2, scope: !4658, inlinedAt: !4576)
!4658 = distinct !DILexicalBlock(scope: !4655, file: !4086, line: 409, column: 2)
!4659 = !DILocation(line: 261, column: 1, scope: !4570)
!4660 = distinct !DISubprogram(name: "kobject_name", scope: !171, file: !171, line: 88, type: !4661, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!161, !4663}
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!4665 = !DILocalVariable(name: "kobj", arg: 1, scope: !4660, file: !171, line: 88, type: !4663)
!4666 = !DILocation(line: 88, column: 62, scope: !4660)
!4667 = !DILocation(line: 90, column: 9, scope: !4660)
!4668 = !DILocation(line: 90, column: 15, scope: !4660)
!4669 = !DILocation(line: 90, column: 2, scope: !4660)
!4670 = distinct !DISubprogram(name: "bgpio_set_with_clear", scope: !3, file: !3, line: 235, type: !3978, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4671 = !DILocalVariable(name: "gc", arg: 1, scope: !4670, file: !3, line: 235, type: !156)
!4672 = !DILocation(line: 235, column: 52, scope: !4670)
!4673 = !DILocalVariable(name: "gpio", arg: 2, scope: !4670, file: !3, line: 235, type: !7)
!4674 = !DILocation(line: 235, column: 69, scope: !4670)
!4675 = !DILocalVariable(name: "val", arg: 3, scope: !4670, file: !3, line: 236, type: !155)
!4676 = !DILocation(line: 236, column: 10, scope: !4670)
!4677 = !DILocalVariable(name: "mask", scope: !4670, file: !3, line: 238, type: !109)
!4678 = !DILocation(line: 238, column: 16, scope: !4670)
!4679 = !DILocation(line: 238, column: 39, scope: !4670)
!4680 = !DILocation(line: 238, column: 43, scope: !4670)
!4681 = !DILocation(line: 238, column: 23, scope: !4670)
!4682 = !DILocation(line: 240, column: 6, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 240, column: 6)
!4684 = !DILocation(line: 240, column: 6, scope: !4670)
!4685 = !DILocation(line: 241, column: 3, scope: !4683)
!4686 = !DILocation(line: 241, column: 7, scope: !4683)
!4687 = !DILocation(line: 241, column: 17, scope: !4683)
!4688 = !DILocation(line: 241, column: 21, scope: !4683)
!4689 = !DILocation(line: 241, column: 30, scope: !4683)
!4690 = !DILocation(line: 243, column: 3, scope: !4683)
!4691 = !DILocation(line: 243, column: 7, scope: !4683)
!4692 = !DILocation(line: 243, column: 17, scope: !4683)
!4693 = !DILocation(line: 243, column: 21, scope: !4683)
!4694 = !DILocation(line: 243, column: 30, scope: !4683)
!4695 = !DILocation(line: 244, column: 1, scope: !4670)
!4696 = distinct !DISubprogram(name: "bgpio_set_multiple_with_clear", scope: !3, file: !3, line: 313, type: !3982, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4697 = !DILocalVariable(name: "gc", arg: 1, scope: !4696, file: !3, line: 313, type: !156)
!4698 = !DILocation(line: 313, column: 61, scope: !4696)
!4699 = !DILocalVariable(name: "mask", arg: 2, scope: !4696, file: !3, line: 314, type: !108)
!4700 = !DILocation(line: 314, column: 23, scope: !4696)
!4701 = !DILocalVariable(name: "bits", arg: 3, scope: !4696, file: !3, line: 315, type: !108)
!4702 = !DILocation(line: 315, column: 23, scope: !4696)
!4703 = !DILocalVariable(name: "set_mask", scope: !4696, file: !3, line: 317, type: !109)
!4704 = !DILocation(line: 317, column: 16, scope: !4696)
!4705 = !DILocalVariable(name: "clear_mask", scope: !4696, file: !3, line: 317, type: !109)
!4706 = !DILocation(line: 317, column: 26, scope: !4696)
!4707 = !DILocation(line: 319, column: 27, scope: !4696)
!4708 = !DILocation(line: 319, column: 31, scope: !4696)
!4709 = !DILocation(line: 319, column: 37, scope: !4696)
!4710 = !DILocation(line: 319, column: 2, scope: !4696)
!4711 = !DILocation(line: 321, column: 6, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 321, column: 6)
!4713 = !DILocation(line: 321, column: 6, scope: !4696)
!4714 = !DILocation(line: 322, column: 3, scope: !4712)
!4715 = !DILocation(line: 322, column: 7, scope: !4712)
!4716 = !DILocation(line: 322, column: 17, scope: !4712)
!4717 = !DILocation(line: 322, column: 21, scope: !4712)
!4718 = !DILocation(line: 322, column: 30, scope: !4712)
!4719 = !DILocation(line: 323, column: 6, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 323, column: 6)
!4721 = !DILocation(line: 323, column: 6, scope: !4696)
!4722 = !DILocation(line: 324, column: 3, scope: !4720)
!4723 = !DILocation(line: 324, column: 7, scope: !4720)
!4724 = !DILocation(line: 324, column: 17, scope: !4720)
!4725 = !DILocation(line: 324, column: 21, scope: !4720)
!4726 = !DILocation(line: 324, column: 30, scope: !4720)
!4727 = !DILocation(line: 325, column: 1, scope: !4696)
!4728 = distinct !DISubprogram(name: "bgpio_set_multiple_set", scope: !3, file: !3, line: 307, type: !3982, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4729 = !DILocalVariable(name: "gc", arg: 1, scope: !4728, file: !3, line: 307, type: !156)
!4730 = !DILocation(line: 307, column: 54, scope: !4728)
!4731 = !DILocalVariable(name: "mask", arg: 2, scope: !4728, file: !3, line: 307, type: !108)
!4732 = !DILocation(line: 307, column: 73, scope: !4728)
!4733 = !DILocalVariable(name: "bits", arg: 3, scope: !4728, file: !3, line: 308, type: !108)
!4734 = !DILocation(line: 308, column: 23, scope: !4728)
!4735 = !DILocation(line: 310, column: 32, scope: !4728)
!4736 = !DILocation(line: 310, column: 36, scope: !4728)
!4737 = !DILocation(line: 310, column: 42, scope: !4728)
!4738 = !DILocation(line: 310, column: 48, scope: !4728)
!4739 = !DILocation(line: 310, column: 52, scope: !4728)
!4740 = !DILocation(line: 310, column: 2, scope: !4728)
!4741 = !DILocation(line: 311, column: 1, scope: !4728)
!4742 = distinct !DISubprogram(name: "bgpio_set_none", scope: !3, file: !3, line: 214, type: !3978, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4743 = !DILocalVariable(name: "gc", arg: 1, scope: !4742, file: !3, line: 214, type: !156)
!4744 = !DILocation(line: 214, column: 46, scope: !4742)
!4745 = !DILocalVariable(name: "gpio", arg: 2, scope: !4742, file: !3, line: 214, type: !7)
!4746 = !DILocation(line: 214, column: 63, scope: !4742)
!4747 = !DILocalVariable(name: "val", arg: 3, scope: !4742, file: !3, line: 214, type: !155)
!4748 = !DILocation(line: 214, column: 73, scope: !4742)
!4749 = !DILocation(line: 216, column: 1, scope: !4742)
!4750 = distinct !DISubprogram(name: "bgpio_set", scope: !3, file: !3, line: 218, type: !3978, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4751 = !DILocation(line: 407, column: 64, scope: !4572, inlinedAt: !4752)
!4752 = distinct !DILocation(line: 232, column: 2, scope: !4750)
!4753 = !DILocation(line: 407, column: 84, scope: !4572, inlinedAt: !4752)
!4754 = !DILocation(line: 327, column: 67, scope: !4085, inlinedAt: !4755)
!4755 = distinct !DILocation(line: 223, column: 2, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4757, file: !3, line: 223, column: 2)
!4757 = distinct !DILexicalBlock(scope: !4758, file: !3, line: 223, column: 2)
!4758 = distinct !DILexicalBlock(scope: !4759, file: !3, line: 223, column: 2)
!4759 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 223, column: 2)
!4760 = distinct !DILexicalBlock(scope: !4750, file: !3, line: 223, column: 2)
!4761 = !DILocalVariable(name: "gc", arg: 1, scope: !4750, file: !3, line: 218, type: !156)
!4762 = !DILocation(line: 218, column: 41, scope: !4750)
!4763 = !DILocalVariable(name: "gpio", arg: 2, scope: !4750, file: !3, line: 218, type: !7)
!4764 = !DILocation(line: 218, column: 58, scope: !4750)
!4765 = !DILocalVariable(name: "val", arg: 3, scope: !4750, file: !3, line: 218, type: !155)
!4766 = !DILocation(line: 218, column: 68, scope: !4750)
!4767 = !DILocalVariable(name: "mask", scope: !4750, file: !3, line: 220, type: !109)
!4768 = !DILocation(line: 220, column: 16, scope: !4750)
!4769 = !DILocation(line: 220, column: 39, scope: !4750)
!4770 = !DILocation(line: 220, column: 43, scope: !4750)
!4771 = !DILocation(line: 220, column: 23, scope: !4750)
!4772 = !DILocalVariable(name: "flags", scope: !4750, file: !3, line: 221, type: !109)
!4773 = !DILocation(line: 221, column: 16, scope: !4750)
!4774 = !DILocation(line: 223, column: 2, scope: !4750)
!4775 = !DILocation(line: 223, column: 2, scope: !4760)
!4776 = !DILocalVariable(name: "__dummy", scope: !4777, file: !3, line: 223, type: !109)
!4777 = distinct !DILexicalBlock(scope: !4759, file: !3, line: 223, column: 2)
!4778 = !DILocation(line: 223, column: 2, scope: !4777)
!4779 = !DILocalVariable(name: "__dummy2", scope: !4777, file: !3, line: 223, type: !109)
!4780 = !DILocation(line: 223, column: 2, scope: !4759)
!4781 = !DILocation(line: 223, column: 2, scope: !4758)
!4782 = !DILocation(line: 223, column: 2, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4758, file: !3, line: 223, column: 2)
!4784 = !DILocalVariable(name: "__dummy", scope: !4785, file: !3, line: 223, type: !109)
!4785 = distinct !DILexicalBlock(scope: !4786, file: !3, line: 223, column: 2)
!4786 = distinct !DILexicalBlock(scope: !4783, file: !3, line: 223, column: 2)
!4787 = !DILocation(line: 223, column: 2, scope: !4785)
!4788 = !DILocalVariable(name: "__dummy2", scope: !4785, file: !3, line: 223, type: !109)
!4789 = !DILocation(line: 223, column: 2, scope: !4786)
!4790 = !DILocation(line: 223, column: 2, scope: !4757)
!4791 = !{i32 -2142429746}
!4792 = !DILocation(line: 223, column: 2, scope: !4756)
!4793 = !DILocation(line: 329, column: 10, scope: !4085, inlinedAt: !4755)
!4794 = !DILocation(line: 329, column: 16, scope: !4085, inlinedAt: !4755)
!4795 = !DILocation(line: 225, column: 6, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4750, file: !3, line: 225, column: 6)
!4797 = !DILocation(line: 225, column: 6, scope: !4750)
!4798 = !DILocation(line: 226, column: 21, scope: !4796)
!4799 = !DILocation(line: 226, column: 3, scope: !4796)
!4800 = !DILocation(line: 226, column: 7, scope: !4796)
!4801 = !DILocation(line: 226, column: 18, scope: !4796)
!4802 = !DILocation(line: 228, column: 22, scope: !4796)
!4803 = !DILocation(line: 228, column: 21, scope: !4796)
!4804 = !DILocation(line: 228, column: 3, scope: !4796)
!4805 = !DILocation(line: 228, column: 7, scope: !4796)
!4806 = !DILocation(line: 228, column: 18, scope: !4796)
!4807 = !DILocation(line: 230, column: 2, scope: !4750)
!4808 = !DILocation(line: 230, column: 6, scope: !4750)
!4809 = !DILocation(line: 230, column: 16, scope: !4750)
!4810 = !DILocation(line: 230, column: 20, scope: !4750)
!4811 = !DILocation(line: 230, column: 29, scope: !4750)
!4812 = !DILocation(line: 230, column: 33, scope: !4750)
!4813 = !DILocation(line: 232, column: 26, scope: !4750)
!4814 = !DILocation(line: 232, column: 30, scope: !4750)
!4815 = !DILocation(line: 232, column: 42, scope: !4750)
!4816 = !DILocation(line: 409, column: 2, scope: !4642, inlinedAt: !4752)
!4817 = !DILocation(line: 409, column: 2, scope: !4647, inlinedAt: !4752)
!4818 = !DILocation(line: 409, column: 2, scope: !4648, inlinedAt: !4752)
!4819 = !DILocation(line: 409, column: 2, scope: !4655, inlinedAt: !4752)
!4820 = !DILocation(line: 409, column: 2, scope: !4658, inlinedAt: !4752)
!4821 = !DILocation(line: 233, column: 1, scope: !4750)
!4822 = distinct !DISubprogram(name: "bgpio_set_multiple", scope: !3, file: !3, line: 301, type: !3982, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4823 = !DILocalVariable(name: "gc", arg: 1, scope: !4822, file: !3, line: 301, type: !156)
!4824 = !DILocation(line: 301, column: 50, scope: !4822)
!4825 = !DILocalVariable(name: "mask", arg: 2, scope: !4822, file: !3, line: 301, type: !108)
!4826 = !DILocation(line: 301, column: 69, scope: !4822)
!4827 = !DILocalVariable(name: "bits", arg: 3, scope: !4822, file: !3, line: 302, type: !108)
!4828 = !DILocation(line: 302, column: 26, scope: !4822)
!4829 = !DILocation(line: 304, column: 32, scope: !4822)
!4830 = !DILocation(line: 304, column: 36, scope: !4822)
!4831 = !DILocation(line: 304, column: 42, scope: !4822)
!4832 = !DILocation(line: 304, column: 48, scope: !4822)
!4833 = !DILocation(line: 304, column: 52, scope: !4822)
!4834 = !DILocation(line: 304, column: 2, scope: !4822)
!4835 = !DILocation(line: 305, column: 1, scope: !4822)
!4836 = distinct !DISubprogram(name: "bgpio_get_set", scope: !3, file: !3, line: 132, type: !3959, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4837 = !DILocalVariable(name: "gc", arg: 1, scope: !4836, file: !3, line: 132, type: !156)
!4838 = !DILocation(line: 132, column: 44, scope: !4836)
!4839 = !DILocalVariable(name: "gpio", arg: 2, scope: !4836, file: !3, line: 132, type: !7)
!4840 = !DILocation(line: 132, column: 61, scope: !4836)
!4841 = !DILocalVariable(name: "pinmask", scope: !4836, file: !3, line: 134, type: !109)
!4842 = !DILocation(line: 134, column: 16, scope: !4836)
!4843 = !DILocation(line: 134, column: 42, scope: !4836)
!4844 = !DILocation(line: 134, column: 46, scope: !4836)
!4845 = !DILocation(line: 134, column: 26, scope: !4836)
!4846 = !DILocalVariable(name: "dir", scope: !4836, file: !3, line: 135, type: !439)
!4847 = !DILocation(line: 135, column: 7, scope: !4836)
!4848 = !DILocation(line: 135, column: 16, scope: !4836)
!4849 = !DILocation(line: 135, column: 20, scope: !4836)
!4850 = !DILocation(line: 135, column: 32, scope: !4836)
!4851 = !DILocation(line: 135, column: 30, scope: !4836)
!4852 = !DILocation(line: 135, column: 14, scope: !4836)
!4853 = !DILocation(line: 135, column: 13, scope: !4836)
!4854 = !DILocation(line: 137, column: 6, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4836, file: !3, line: 137, column: 6)
!4856 = !DILocation(line: 137, column: 6, scope: !4836)
!4857 = !DILocation(line: 138, column: 13, scope: !4855)
!4858 = !DILocation(line: 138, column: 17, scope: !4855)
!4859 = !DILocation(line: 138, column: 26, scope: !4855)
!4860 = !DILocation(line: 138, column: 30, scope: !4855)
!4861 = !DILocation(line: 138, column: 41, scope: !4855)
!4862 = !DILocation(line: 138, column: 39, scope: !4855)
!4863 = !DILocation(line: 138, column: 11, scope: !4855)
!4864 = !DILocation(line: 138, column: 10, scope: !4855)
!4865 = !DILocation(line: 138, column: 3, scope: !4855)
!4866 = !DILocation(line: 140, column: 13, scope: !4855)
!4867 = !DILocation(line: 140, column: 17, scope: !4855)
!4868 = !DILocation(line: 140, column: 26, scope: !4855)
!4869 = !DILocation(line: 140, column: 30, scope: !4855)
!4870 = !DILocation(line: 140, column: 41, scope: !4855)
!4871 = !DILocation(line: 140, column: 39, scope: !4855)
!4872 = !DILocation(line: 140, column: 11, scope: !4855)
!4873 = !DILocation(line: 140, column: 10, scope: !4855)
!4874 = !DILocation(line: 140, column: 3, scope: !4855)
!4875 = !DILocation(line: 141, column: 1, scope: !4836)
!4876 = distinct !DISubprogram(name: "bgpio_get_set_multiple", scope: !3, file: !3, line: 147, type: !3974, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4877 = !DILocalVariable(name: "gc", arg: 1, scope: !4876, file: !3, line: 147, type: !156)
!4878 = !DILocation(line: 147, column: 53, scope: !4876)
!4879 = !DILocalVariable(name: "mask", arg: 2, scope: !4876, file: !3, line: 147, type: !108)
!4880 = !DILocation(line: 147, column: 72, scope: !4876)
!4881 = !DILocalVariable(name: "bits", arg: 3, scope: !4876, file: !3, line: 148, type: !108)
!4882 = !DILocation(line: 148, column: 22, scope: !4876)
!4883 = !DILocalVariable(name: "get_mask", scope: !4876, file: !3, line: 150, type: !109)
!4884 = !DILocation(line: 150, column: 16, scope: !4876)
!4885 = !DILocalVariable(name: "set_mask", scope: !4876, file: !3, line: 151, type: !109)
!4886 = !DILocation(line: 151, column: 16, scope: !4876)
!4887 = !DILocation(line: 154, column: 13, scope: !4876)
!4888 = !DILocation(line: 154, column: 12, scope: !4876)
!4889 = !DILocation(line: 154, column: 11, scope: !4876)
!4890 = !DILocation(line: 154, column: 3, scope: !4876)
!4891 = !DILocation(line: 154, column: 8, scope: !4876)
!4892 = !DILocation(line: 156, column: 14, scope: !4876)
!4893 = !DILocation(line: 156, column: 13, scope: !4876)
!4894 = !DILocation(line: 156, column: 21, scope: !4876)
!4895 = !DILocation(line: 156, column: 25, scope: !4876)
!4896 = !DILocation(line: 156, column: 19, scope: !4876)
!4897 = !DILocation(line: 156, column: 11, scope: !4876)
!4898 = !DILocation(line: 157, column: 14, scope: !4876)
!4899 = !DILocation(line: 157, column: 13, scope: !4876)
!4900 = !DILocation(line: 157, column: 22, scope: !4876)
!4901 = !DILocation(line: 157, column: 26, scope: !4876)
!4902 = !DILocation(line: 157, column: 21, scope: !4876)
!4903 = !DILocation(line: 157, column: 19, scope: !4876)
!4904 = !DILocation(line: 157, column: 11, scope: !4876)
!4905 = !DILocation(line: 159, column: 6, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4876, file: !3, line: 159, column: 6)
!4907 = !DILocation(line: 159, column: 6, scope: !4876)
!4908 = !DILocation(line: 160, column: 12, scope: !4906)
!4909 = !DILocation(line: 160, column: 16, scope: !4906)
!4910 = !DILocation(line: 160, column: 25, scope: !4906)
!4911 = !DILocation(line: 160, column: 29, scope: !4906)
!4912 = !DILocation(line: 160, column: 40, scope: !4906)
!4913 = !DILocation(line: 160, column: 38, scope: !4906)
!4914 = !DILocation(line: 160, column: 4, scope: !4906)
!4915 = !DILocation(line: 160, column: 9, scope: !4906)
!4916 = !DILocation(line: 160, column: 3, scope: !4906)
!4917 = !DILocation(line: 161, column: 6, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4876, file: !3, line: 161, column: 6)
!4919 = !DILocation(line: 161, column: 6, scope: !4876)
!4920 = !DILocation(line: 162, column: 12, scope: !4918)
!4921 = !DILocation(line: 162, column: 16, scope: !4918)
!4922 = !DILocation(line: 162, column: 25, scope: !4918)
!4923 = !DILocation(line: 162, column: 29, scope: !4918)
!4924 = !DILocation(line: 162, column: 40, scope: !4918)
!4925 = !DILocation(line: 162, column: 38, scope: !4918)
!4926 = !DILocation(line: 162, column: 4, scope: !4918)
!4927 = !DILocation(line: 162, column: 9, scope: !4918)
!4928 = !DILocation(line: 162, column: 3, scope: !4918)
!4929 = !DILocation(line: 164, column: 2, scope: !4876)
!4930 = distinct !DISubprogram(name: "bgpio_get", scope: !3, file: !3, line: 167, type: !3959, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4931 = !DILocalVariable(name: "gc", arg: 1, scope: !4930, file: !3, line: 167, type: !156)
!4932 = !DILocation(line: 167, column: 40, scope: !4930)
!4933 = !DILocalVariable(name: "gpio", arg: 2, scope: !4930, file: !3, line: 167, type: !7)
!4934 = !DILocation(line: 167, column: 57, scope: !4930)
!4935 = !DILocation(line: 169, column: 12, scope: !4930)
!4936 = !DILocation(line: 169, column: 16, scope: !4930)
!4937 = !DILocation(line: 169, column: 25, scope: !4930)
!4938 = !DILocation(line: 169, column: 29, scope: !4930)
!4939 = !DILocation(line: 169, column: 56, scope: !4930)
!4940 = !DILocation(line: 169, column: 60, scope: !4930)
!4941 = !DILocation(line: 169, column: 40, scope: !4930)
!4942 = !DILocation(line: 169, column: 38, scope: !4930)
!4943 = !DILocation(line: 169, column: 10, scope: !4930)
!4944 = !DILocation(line: 169, column: 9, scope: !4930)
!4945 = !DILocation(line: 169, column: 2, scope: !4930)
!4946 = distinct !DISubprogram(name: "bgpio_get_multiple_be", scope: !3, file: !3, line: 187, type: !3974, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4947 = !DILocalVariable(name: "gc", arg: 1, scope: !4946, file: !3, line: 187, type: !156)
!4948 = !DILocation(line: 187, column: 52, scope: !4946)
!4949 = !DILocalVariable(name: "mask", arg: 2, scope: !4946, file: !3, line: 187, type: !108)
!4950 = !DILocation(line: 187, column: 71, scope: !4946)
!4951 = !DILocalVariable(name: "bits", arg: 3, scope: !4946, file: !3, line: 188, type: !108)
!4952 = !DILocation(line: 188, column: 21, scope: !4946)
!4953 = !DILocalVariable(name: "readmask", scope: !4946, file: !3, line: 190, type: !109)
!4954 = !DILocation(line: 190, column: 16, scope: !4946)
!4955 = !DILocalVariable(name: "val", scope: !4946, file: !3, line: 191, type: !109)
!4956 = !DILocation(line: 191, column: 16, scope: !4946)
!4957 = !DILocalVariable(name: "bit", scope: !4946, file: !3, line: 192, type: !155)
!4958 = !DILocation(line: 192, column: 6, scope: !4946)
!4959 = !DILocation(line: 195, column: 13, scope: !4946)
!4960 = !DILocation(line: 195, column: 12, scope: !4946)
!4961 = !DILocation(line: 195, column: 11, scope: !4946)
!4962 = !DILocation(line: 195, column: 3, scope: !4946)
!4963 = !DILocation(line: 195, column: 8, scope: !4946)
!4964 = !DILocation(line: 198, column: 2, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4946, file: !3, line: 198, column: 2)
!4966 = !DILocation(line: 198, column: 2, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4965, file: !3, line: 198, column: 2)
!4968 = !DILocation(line: 199, column: 31, scope: !4967)
!4969 = !DILocation(line: 199, column: 35, scope: !4967)
!4970 = !DILocation(line: 199, column: 15, scope: !4967)
!4971 = !DILocation(line: 199, column: 12, scope: !4967)
!4972 = !DILocation(line: 199, column: 3, scope: !4967)
!4973 = distinct !{!4973, !4964, !4974}
!4974 = !DILocation(line: 199, column: 38, scope: !4965)
!4975 = !DILocation(line: 202, column: 8, scope: !4946)
!4976 = !DILocation(line: 202, column: 12, scope: !4946)
!4977 = !DILocation(line: 202, column: 21, scope: !4946)
!4978 = !DILocation(line: 202, column: 25, scope: !4946)
!4979 = !DILocation(line: 202, column: 36, scope: !4946)
!4980 = !DILocation(line: 202, column: 34, scope: !4946)
!4981 = !DILocation(line: 202, column: 6, scope: !4946)
!4982 = !DILocation(line: 208, column: 2, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4946, file: !3, line: 208, column: 2)
!4984 = !DILocation(line: 208, column: 2, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4983, file: !3, line: 208, column: 2)
!4986 = !DILocation(line: 209, column: 28, scope: !4985)
!4987 = !DILocation(line: 209, column: 32, scope: !4985)
!4988 = !DILocation(line: 209, column: 12, scope: !4985)
!4989 = !DILocation(line: 209, column: 4, scope: !4985)
!4990 = !DILocation(line: 209, column: 9, scope: !4985)
!4991 = !DILocation(line: 209, column: 3, scope: !4985)
!4992 = distinct !{!4992, !4982, !4993}
!4993 = !DILocation(line: 209, column: 35, scope: !4983)
!4994 = !DILocation(line: 211, column: 2, scope: !4946)
!4995 = distinct !DISubprogram(name: "bgpio_get_multiple", scope: !3, file: !3, line: 175, type: !3974, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4996 = !DILocalVariable(name: "gc", arg: 1, scope: !4995, file: !3, line: 175, type: !156)
!4997 = !DILocation(line: 175, column: 49, scope: !4995)
!4998 = !DILocalVariable(name: "mask", arg: 2, scope: !4995, file: !3, line: 175, type: !108)
!4999 = !DILocation(line: 175, column: 68, scope: !4995)
!5000 = !DILocalVariable(name: "bits", arg: 3, scope: !4995, file: !3, line: 176, type: !108)
!5001 = !DILocation(line: 176, column: 25, scope: !4995)
!5002 = !DILocation(line: 179, column: 13, scope: !4995)
!5003 = !DILocation(line: 179, column: 12, scope: !4995)
!5004 = !DILocation(line: 179, column: 11, scope: !4995)
!5005 = !DILocation(line: 179, column: 3, scope: !4995)
!5006 = !DILocation(line: 179, column: 8, scope: !4995)
!5007 = !DILocation(line: 180, column: 11, scope: !4995)
!5008 = !DILocation(line: 180, column: 15, scope: !4995)
!5009 = !DILocation(line: 180, column: 24, scope: !4995)
!5010 = !DILocation(line: 180, column: 28, scope: !4995)
!5011 = !DILocation(line: 180, column: 40, scope: !4995)
!5012 = !DILocation(line: 180, column: 39, scope: !4995)
!5013 = !DILocation(line: 180, column: 37, scope: !4995)
!5014 = !DILocation(line: 180, column: 3, scope: !4995)
!5015 = !DILocation(line: 180, column: 8, scope: !4995)
!5016 = !DILocation(line: 181, column: 2, scope: !4995)
!5017 = distinct !DISubprogram(name: "bgpio_line2mask", scope: !3, file: !3, line: 125, type: !5018, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5018 = !DISubroutineType(types: !5019)
!5019 = !{!109, !156, !7}
!5020 = !DILocalVariable(name: "gc", arg: 1, scope: !5017, file: !3, line: 125, type: !156)
!5021 = !DILocation(line: 125, column: 56, scope: !5017)
!5022 = !DILocalVariable(name: "line", arg: 2, scope: !5017, file: !3, line: 125, type: !7)
!5023 = !DILocation(line: 125, column: 73, scope: !5017)
!5024 = !DILocation(line: 127, column: 6, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 127, column: 6)
!5026 = !DILocation(line: 127, column: 10, scope: !5025)
!5027 = !DILocation(line: 127, column: 6, scope: !5017)
!5028 = !DILocation(line: 128, column: 10, scope: !5025)
!5029 = !DILocation(line: 128, column: 3, scope: !5025)
!5030 = !DILocation(line: 129, column: 9, scope: !5017)
!5031 = !DILocation(line: 129, column: 2, scope: !5017)
!5032 = !DILocation(line: 130, column: 1, scope: !5017)
!5033 = distinct !DISubprogram(name: "bgpio_multiple_get_masks", scope: !3, file: !3, line: 263, type: !5034, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5034 = !DISubroutineType(types: !5035)
!5035 = !{null, !156, !108, !108, !108, !108}
!5036 = !DILocalVariable(name: "gc", arg: 1, scope: !5033, file: !3, line: 263, type: !156)
!5037 = !DILocation(line: 263, column: 56, scope: !5033)
!5038 = !DILocalVariable(name: "mask", arg: 2, scope: !5033, file: !3, line: 264, type: !108)
!5039 = !DILocation(line: 264, column: 25, scope: !5033)
!5040 = !DILocalVariable(name: "bits", arg: 3, scope: !5033, file: !3, line: 264, type: !108)
!5041 = !DILocation(line: 264, column: 46, scope: !5033)
!5042 = !DILocalVariable(name: "set_mask", arg: 4, scope: !5033, file: !3, line: 265, type: !108)
!5043 = !DILocation(line: 265, column: 25, scope: !5033)
!5044 = !DILocalVariable(name: "clear_mask", arg: 5, scope: !5033, file: !3, line: 266, type: !108)
!5045 = !DILocation(line: 266, column: 25, scope: !5033)
!5046 = !DILocalVariable(name: "i", scope: !5033, file: !3, line: 268, type: !155)
!5047 = !DILocation(line: 268, column: 6, scope: !5033)
!5048 = !DILocation(line: 270, column: 3, scope: !5033)
!5049 = !DILocation(line: 270, column: 12, scope: !5033)
!5050 = !DILocation(line: 271, column: 3, scope: !5033)
!5051 = !DILocation(line: 271, column: 14, scope: !5033)
!5052 = !DILocation(line: 273, column: 2, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 273, column: 2)
!5054 = !DILocation(line: 273, column: 2, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5053, file: !3, line: 273, column: 2)
!5056 = !DILocation(line: 274, column: 16, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5058, file: !3, line: 274, column: 7)
!5058 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 273, column: 44)
!5059 = !DILocation(line: 274, column: 19, scope: !5057)
!5060 = !DILocation(line: 274, column: 7, scope: !5057)
!5061 = !DILocation(line: 274, column: 7, scope: !5058)
!5062 = !DILocation(line: 275, column: 33, scope: !5057)
!5063 = !DILocation(line: 275, column: 37, scope: !5057)
!5064 = !DILocation(line: 275, column: 17, scope: !5057)
!5065 = !DILocation(line: 275, column: 5, scope: !5057)
!5066 = !DILocation(line: 275, column: 14, scope: !5057)
!5067 = !DILocation(line: 275, column: 4, scope: !5057)
!5068 = !DILocation(line: 277, column: 35, scope: !5057)
!5069 = !DILocation(line: 277, column: 39, scope: !5057)
!5070 = !DILocation(line: 277, column: 19, scope: !5057)
!5071 = !DILocation(line: 277, column: 5, scope: !5057)
!5072 = !DILocation(line: 277, column: 16, scope: !5057)
!5073 = !DILocation(line: 278, column: 2, scope: !5058)
!5074 = distinct !{!5074, !5052, !5075}
!5075 = !DILocation(line: 278, column: 2, scope: !5053)
!5076 = !DILocation(line: 279, column: 1, scope: !5033)
!5077 = distinct !DISubprogram(name: "test_bit", scope: !5078, file: !5078, line: 132, type: !5079, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5078 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!439, !265, !5081}
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5083)
!5083 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !109)
!5084 = !DILocalVariable(name: "nr", arg: 1, scope: !5085, file: !5086, line: 210, type: !265)
!5085 = distinct !DISubprogram(name: "variable_test_bit", scope: !5086, file: !5086, line: 210, type: !5079, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5086 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5087 = !DILocation(line: 210, column: 52, scope: !5085, inlinedAt: !5088)
!5088 = distinct !DILocation(line: 135, column: 9, scope: !5077)
!5089 = !DILocalVariable(name: "addr", arg: 2, scope: !5085, file: !5086, line: 210, type: !5081)
!5090 = !DILocation(line: 210, column: 86, scope: !5085, inlinedAt: !5088)
!5091 = !DILocalVariable(name: "oldbit", scope: !5085, file: !5086, line: 212, type: !439)
!5092 = !DILocation(line: 212, column: 7, scope: !5085, inlinedAt: !5088)
!5093 = !DILocalVariable(name: "nr", arg: 1, scope: !5094, file: !5086, line: 204, type: !265)
!5094 = distinct !DISubprogram(name: "constant_test_bit", scope: !5086, file: !5086, line: 204, type: !5079, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5095 = !DILocation(line: 204, column: 52, scope: !5094, inlinedAt: !5096)
!5096 = distinct !DILocation(line: 135, column: 9, scope: !5077)
!5097 = !DILocalVariable(name: "addr", arg: 2, scope: !5094, file: !5086, line: 204, type: !5081)
!5098 = !DILocation(line: 204, column: 86, scope: !5094, inlinedAt: !5096)
!5099 = !DILocalVariable(name: "v", arg: 1, scope: !5100, file: !5101, line: 69, type: !5104)
!5100 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5101, file: !5101, line: 69, type: !5102, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5101 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5102 = !DISubroutineType(types: !5103)
!5103 = !{null, !5104, !276}
!5104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 64)
!5105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5106)
!5106 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5107 = !DILocation(line: 69, column: 73, scope: !5100, inlinedAt: !5108)
!5108 = distinct !DILocation(line: 134, column: 2, scope: !5077)
!5109 = !DILocalVariable(name: "size", arg: 2, scope: !5100, file: !5101, line: 69, type: !276)
!5110 = !DILocation(line: 69, column: 83, scope: !5100, inlinedAt: !5108)
!5111 = !DILocalVariable(name: "nr", arg: 1, scope: !5077, file: !5078, line: 132, type: !265)
!5112 = !DILocation(line: 132, column: 34, scope: !5077)
!5113 = !DILocalVariable(name: "addr", arg: 2, scope: !5077, file: !5078, line: 132, type: !5081)
!5114 = !DILocation(line: 132, column: 68, scope: !5077)
!5115 = !DILocation(line: 134, column: 25, scope: !5077)
!5116 = !DILocation(line: 134, column: 32, scope: !5077)
!5117 = !DILocation(line: 134, column: 30, scope: !5077)
!5118 = !DILocation(line: 71, column: 19, scope: !5100, inlinedAt: !5108)
!5119 = !DILocation(line: 71, column: 22, scope: !5100, inlinedAt: !5108)
!5120 = !DILocation(line: 71, column: 2, scope: !5100, inlinedAt: !5108)
!5121 = !DILocation(line: 72, column: 2, scope: !5100, inlinedAt: !5108)
!5122 = !DILocation(line: 135, column: 9, scope: !5077)
!5123 = !DILocation(line: 206, column: 19, scope: !5094, inlinedAt: !5096)
!5124 = !DILocation(line: 206, column: 22, scope: !5094, inlinedAt: !5096)
!5125 = !DILocation(line: 206, column: 15, scope: !5094, inlinedAt: !5096)
!5126 = !DILocation(line: 207, column: 4, scope: !5094, inlinedAt: !5096)
!5127 = !DILocation(line: 207, column: 9, scope: !5094, inlinedAt: !5096)
!5128 = !DILocation(line: 207, column: 12, scope: !5094, inlinedAt: !5096)
!5129 = !DILocation(line: 206, column: 44, scope: !5094, inlinedAt: !5096)
!5130 = !DILocation(line: 207, column: 37, scope: !5094, inlinedAt: !5096)
!5131 = !DILocation(line: 217, column: 33, scope: !5085, inlinedAt: !5088)
!5132 = !DILocation(line: 217, column: 46, scope: !5085, inlinedAt: !5088)
!5133 = !DILocation(line: 214, column: 2, scope: !5085, inlinedAt: !5088)
!5134 = !{i32 -2147148297, i32 -2147148237}
!5135 = !DILocation(line: 219, column: 9, scope: !5085, inlinedAt: !5088)
!5136 = !DILocation(line: 135, column: 2, scope: !5077)
!5137 = distinct !DISubprogram(name: "kasan_check_read", scope: !5138, file: !5138, line: 34, type: !5139, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5138 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5139 = !DISubroutineType(types: !5140)
!5140 = !{!439, !5104, !7}
!5141 = !DILocalVariable(name: "p", arg: 1, scope: !5137, file: !5138, line: 34, type: !5104)
!5142 = !DILocation(line: 34, column: 58, scope: !5137)
!5143 = !DILocalVariable(name: "size", arg: 2, scope: !5137, file: !5138, line: 34, type: !7)
!5144 = !DILocation(line: 34, column: 74, scope: !5137)
!5145 = !DILocation(line: 36, column: 2, scope: !5137)
!5146 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5147, file: !5147, line: 178, type: !5148, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5147 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5148 = !DISubroutineType(types: !5149)
!5149 = !{null, !5104, !276, !155}
!5150 = !DILocalVariable(name: "ptr", arg: 1, scope: !5146, file: !5147, line: 178, type: !5104)
!5151 = !DILocation(line: 178, column: 60, scope: !5146)
!5152 = !DILocalVariable(name: "size", arg: 2, scope: !5146, file: !5147, line: 178, type: !276)
!5153 = !DILocation(line: 178, column: 72, scope: !5146)
!5154 = !DILocalVariable(name: "type", arg: 3, scope: !5146, file: !5147, line: 179, type: !155)
!5155 = !DILocation(line: 179, column: 15, scope: !5146)
!5156 = !DILocation(line: 179, column: 23, scope: !5146)
!5157 = distinct !DISubprogram(name: "bgpio_set_multiple_single_reg", scope: !3, file: !3, line: 281, type: !5158, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5158 = !DISubroutineType(types: !5159)
!5159 = !{null, !156, !108, !108, !302}
!5160 = !DILocation(line: 407, column: 64, scope: !4572, inlinedAt: !5161)
!5161 = distinct !DILocation(line: 298, column: 2, scope: !5157)
!5162 = !DILocation(line: 407, column: 84, scope: !4572, inlinedAt: !5161)
!5163 = !DILocation(line: 327, column: 67, scope: !4085, inlinedAt: !5164)
!5164 = distinct !DILocation(line: 289, column: 2, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 289, column: 2)
!5166 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 289, column: 2)
!5167 = distinct !DILexicalBlock(scope: !5168, file: !3, line: 289, column: 2)
!5168 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 289, column: 2)
!5169 = distinct !DILexicalBlock(scope: !5157, file: !3, line: 289, column: 2)
!5170 = !DILocalVariable(name: "gc", arg: 1, scope: !5157, file: !3, line: 281, type: !156)
!5171 = !DILocation(line: 281, column: 61, scope: !5157)
!5172 = !DILocalVariable(name: "mask", arg: 2, scope: !5157, file: !3, line: 282, type: !108)
!5173 = !DILocation(line: 282, column: 23, scope: !5157)
!5174 = !DILocalVariable(name: "bits", arg: 3, scope: !5157, file: !3, line: 283, type: !108)
!5175 = !DILocation(line: 283, column: 23, scope: !5157)
!5176 = !DILocalVariable(name: "reg", arg: 4, scope: !5157, file: !3, line: 284, type: !302)
!5177 = !DILocation(line: 284, column: 22, scope: !5157)
!5178 = !DILocalVariable(name: "flags", scope: !5157, file: !3, line: 286, type: !109)
!5179 = !DILocation(line: 286, column: 16, scope: !5157)
!5180 = !DILocalVariable(name: "set_mask", scope: !5157, file: !3, line: 287, type: !109)
!5181 = !DILocation(line: 287, column: 16, scope: !5157)
!5182 = !DILocalVariable(name: "clear_mask", scope: !5157, file: !3, line: 287, type: !109)
!5183 = !DILocation(line: 287, column: 26, scope: !5157)
!5184 = !DILocation(line: 289, column: 2, scope: !5157)
!5185 = !DILocation(line: 289, column: 2, scope: !5169)
!5186 = !DILocalVariable(name: "__dummy", scope: !5187, file: !3, line: 289, type: !109)
!5187 = distinct !DILexicalBlock(scope: !5168, file: !3, line: 289, column: 2)
!5188 = !DILocation(line: 289, column: 2, scope: !5187)
!5189 = !DILocalVariable(name: "__dummy2", scope: !5187, file: !3, line: 289, type: !109)
!5190 = !DILocation(line: 289, column: 2, scope: !5168)
!5191 = !DILocation(line: 289, column: 2, scope: !5167)
!5192 = !DILocation(line: 289, column: 2, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 289, column: 2)
!5194 = !DILocalVariable(name: "__dummy", scope: !5195, file: !3, line: 289, type: !109)
!5195 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 289, column: 2)
!5196 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 289, column: 2)
!5197 = !DILocation(line: 289, column: 2, scope: !5195)
!5198 = !DILocalVariable(name: "__dummy2", scope: !5195, file: !3, line: 289, type: !109)
!5199 = !DILocation(line: 289, column: 2, scope: !5196)
!5200 = !DILocation(line: 289, column: 2, scope: !5166)
!5201 = !{i32 -2142427457}
!5202 = !DILocation(line: 289, column: 2, scope: !5165)
!5203 = !DILocation(line: 329, column: 10, scope: !4085, inlinedAt: !5164)
!5204 = !DILocation(line: 329, column: 16, scope: !4085, inlinedAt: !5164)
!5205 = !DILocation(line: 291, column: 27, scope: !5157)
!5206 = !DILocation(line: 291, column: 31, scope: !5157)
!5207 = !DILocation(line: 291, column: 37, scope: !5157)
!5208 = !DILocation(line: 291, column: 2, scope: !5157)
!5209 = !DILocation(line: 293, column: 20, scope: !5157)
!5210 = !DILocation(line: 293, column: 2, scope: !5157)
!5211 = !DILocation(line: 293, column: 6, scope: !5157)
!5212 = !DILocation(line: 293, column: 17, scope: !5157)
!5213 = !DILocation(line: 294, column: 21, scope: !5157)
!5214 = !DILocation(line: 294, column: 20, scope: !5157)
!5215 = !DILocation(line: 294, column: 2, scope: !5157)
!5216 = !DILocation(line: 294, column: 6, scope: !5157)
!5217 = !DILocation(line: 294, column: 17, scope: !5157)
!5218 = !DILocation(line: 296, column: 2, scope: !5157)
!5219 = !DILocation(line: 296, column: 6, scope: !5157)
!5220 = !DILocation(line: 296, column: 16, scope: !5157)
!5221 = !DILocation(line: 296, column: 21, scope: !5157)
!5222 = !DILocation(line: 296, column: 25, scope: !5157)
!5223 = !DILocation(line: 298, column: 26, scope: !5157)
!5224 = !DILocation(line: 298, column: 30, scope: !5157)
!5225 = !DILocation(line: 298, column: 42, scope: !5157)
!5226 = !DILocation(line: 409, column: 2, scope: !4642, inlinedAt: !5161)
!5227 = !DILocation(line: 409, column: 2, scope: !4647, inlinedAt: !5161)
!5228 = !DILocation(line: 409, column: 2, scope: !4648, inlinedAt: !5161)
!5229 = !DILocation(line: 409, column: 2, scope: !4655, inlinedAt: !5161)
!5230 = !DILocation(line: 409, column: 2, scope: !4658, inlinedAt: !5161)
!5231 = !DILocation(line: 299, column: 1, scope: !5157)
!5232 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !5233, file: !5233, line: 666, type: !5234, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5233 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5234 = !DISubroutineType(types: !5235)
!5235 = !{!109}
!5236 = !DILocalVariable(name: "f", scope: !5232, file: !5233, line: 668, type: !109)
!5237 = !DILocation(line: 668, column: 16, scope: !5232)
!5238 = !DILocation(line: 670, column: 6, scope: !5232)
!5239 = !DILocation(line: 670, column: 4, scope: !5232)
!5240 = !DILocation(line: 671, column: 2, scope: !5232)
!5241 = !DILocation(line: 672, column: 9, scope: !5232)
!5242 = !DILocation(line: 672, column: 2, scope: !5232)
!5243 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !5233, file: !5233, line: 646, type: !5234, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5244 = !DILocalVariable(name: "__ret", scope: !5245, file: !5233, line: 648, type: !109)
!5245 = distinct !DILexicalBlock(scope: !5243, file: !5233, line: 648, column: 9)
!5246 = !DILocation(line: 648, column: 9, scope: !5245)
!5247 = !DILocalVariable(name: "__edi", scope: !5245, file: !5233, line: 648, type: !109)
!5248 = !DILocalVariable(name: "__esi", scope: !5245, file: !5233, line: 648, type: !109)
!5249 = !DILocalVariable(name: "__edx", scope: !5245, file: !5233, line: 648, type: !109)
!5250 = !DILocalVariable(name: "__ecx", scope: !5245, file: !5233, line: 648, type: !109)
!5251 = !DILocalVariable(name: "__eax", scope: !5245, file: !5233, line: 648, type: !109)
!5252 = !DILocation(line: 648, column: 9, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5254, file: !5233, line: 648, column: 9)
!5254 = distinct !DILexicalBlock(scope: !5245, file: !5233, line: 648, column: 9)
!5255 = !{i32 -2145766652, i32 -2145764337, i32 -2145764103, i32 -2145764052, i32 -2145764024, i32 -2145763999, i32 -2145764315, i32 -2145764302, i32 -2145763864, i32 -2145763745, i32 -2145764210, i32 -2145764183, i32 -2145764155, i32 -2145764125}
!5256 = !DILocalVariable(name: "__mask", scope: !5257, file: !5233, line: 648, type: !109)
!5257 = distinct !DILexicalBlock(scope: !5253, file: !5233, line: 648, column: 9)
!5258 = !DILocation(line: 648, column: 9, scope: !5257)
!5259 = !DILocation(line: 648, column: 9, scope: !5254)
!5260 = !DILocation(line: 648, column: 2, scope: !5243)
!5261 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5233, file: !5233, line: 656, type: !1788, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5262 = !DILocalVariable(name: "__edi", scope: !5263, file: !5233, line: 658, type: !109)
!5263 = distinct !DILexicalBlock(scope: !5261, file: !5233, line: 658, column: 2)
!5264 = !DILocation(line: 658, column: 2, scope: !5263)
!5265 = !DILocalVariable(name: "__esi", scope: !5263, file: !5233, line: 658, type: !109)
!5266 = !DILocalVariable(name: "__edx", scope: !5263, file: !5233, line: 658, type: !109)
!5267 = !DILocalVariable(name: "__ecx", scope: !5263, file: !5233, line: 658, type: !109)
!5268 = !DILocalVariable(name: "__eax", scope: !5263, file: !5233, line: 658, type: !109)
!5269 = !{i32 -2145759558, i32 -2145758826, i32 -2145758592, i32 -2145758541, i32 -2145758513, i32 -2145758488, i32 -2145758804, i32 -2145758791, i32 -2145758353, i32 -2145758234, i32 -2145758699, i32 -2145758672, i32 -2145758644, i32 -2145758614}
!5270 = !DILocation(line: 659, column: 1, scope: !5261)
!5271 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !5233, file: !5233, line: 651, type: !5272, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5272 = !DISubroutineType(types: !5273)
!5273 = !{null, !109}
!5274 = !DILocalVariable(name: "f", arg: 1, scope: !5271, file: !5233, line: 651, type: !109)
!5275 = !DILocation(line: 651, column: 65, scope: !5271)
!5276 = !DILocalVariable(name: "__edi", scope: !5277, file: !5233, line: 653, type: !109)
!5277 = distinct !DILexicalBlock(scope: !5271, file: !5233, line: 653, column: 2)
!5278 = !DILocation(line: 653, column: 2, scope: !5277)
!5279 = !DILocalVariable(name: "__esi", scope: !5277, file: !5233, line: 653, type: !109)
!5280 = !DILocalVariable(name: "__edx", scope: !5277, file: !5233, line: 653, type: !109)
!5281 = !DILocalVariable(name: "__ecx", scope: !5277, file: !5233, line: 653, type: !109)
!5282 = !DILocalVariable(name: "__eax", scope: !5277, file: !5233, line: 653, type: !109)
!5283 = !{i32 -2145762185, i32 -2145761435, i32 -2145761201, i32 -2145761150, i32 -2145761122, i32 -2145761097, i32 -2145761413, i32 -2145761400, i32 -2145760962, i32 -2145760843, i32 -2145761308, i32 -2145761281, i32 -2145761253, i32 -2145761223}
!5284 = !DILocation(line: 654, column: 1, scope: !5271)
!5285 = distinct !DISubprogram(name: "bgpio_read8", scope: !3, file: !3, line: 68, type: !4009, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5286 = !DILocalVariable(name: "reg", arg: 1, scope: !5285, file: !3, line: 68, type: !302)
!5287 = !DILocation(line: 68, column: 48, scope: !5285)
!5288 = !DILocation(line: 70, column: 15, scope: !5285)
!5289 = !DILocation(line: 70, column: 9, scope: !5285)
!5290 = !DILocation(line: 70, column: 2, scope: !5285)
!5291 = distinct !DISubprogram(name: "bgpio_write8", scope: !3, file: !3, line: 63, type: !4013, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5292 = !DILocalVariable(name: "reg", arg: 1, scope: !5291, file: !3, line: 63, type: !302)
!5293 = !DILocation(line: 63, column: 40, scope: !5291)
!5294 = !DILocalVariable(name: "data", arg: 2, scope: !5291, file: !3, line: 63, type: !109)
!5295 = !DILocation(line: 63, column: 59, scope: !5291)
!5296 = !DILocation(line: 65, column: 9, scope: !5291)
!5297 = !DILocation(line: 65, column: 15, scope: !5291)
!5298 = !DILocation(line: 65, column: 2, scope: !5291)
!5299 = !DILocation(line: 66, column: 1, scope: !5291)
!5300 = distinct !DISubprogram(name: "bgpio_read16be", scope: !3, file: !3, line: 110, type: !4009, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5301 = !DILocalVariable(name: "reg", arg: 1, scope: !5300, file: !3, line: 110, type: !302)
!5302 = !DILocation(line: 110, column: 51, scope: !5300)
!5303 = !DILocation(line: 112, column: 20, scope: !5300)
!5304 = !DILocation(line: 112, column: 9, scope: !5300)
!5305 = !DILocation(line: 112, column: 2, scope: !5300)
!5306 = distinct !DISubprogram(name: "bgpio_write16be", scope: !3, file: !3, line: 105, type: !4013, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5307 = !DILocalVariable(name: "reg", arg: 1, scope: !5306, file: !3, line: 105, type: !302)
!5308 = !DILocation(line: 105, column: 43, scope: !5306)
!5309 = !DILocalVariable(name: "data", arg: 2, scope: !5306, file: !3, line: 105, type: !109)
!5310 = !DILocation(line: 105, column: 62, scope: !5306)
!5311 = !DILocation(line: 107, column: 14, scope: !5306)
!5312 = !DILocation(line: 107, column: 20, scope: !5306)
!5313 = !DILocation(line: 107, column: 2, scope: !5306)
!5314 = !DILocation(line: 108, column: 1, scope: !5306)
!5315 = distinct !DISubprogram(name: "bgpio_read16", scope: !3, file: !3, line: 78, type: !4009, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5316 = !DILocalVariable(name: "reg", arg: 1, scope: !5315, file: !3, line: 78, type: !302)
!5317 = !DILocation(line: 78, column: 49, scope: !5315)
!5318 = !DILocation(line: 80, column: 15, scope: !5315)
!5319 = !DILocation(line: 80, column: 9, scope: !5315)
!5320 = !DILocation(line: 80, column: 2, scope: !5315)
!5321 = distinct !DISubprogram(name: "bgpio_write16", scope: !3, file: !3, line: 73, type: !4013, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5322 = !DILocalVariable(name: "reg", arg: 1, scope: !5321, file: !3, line: 73, type: !302)
!5323 = !DILocation(line: 73, column: 41, scope: !5321)
!5324 = !DILocalVariable(name: "data", arg: 2, scope: !5321, file: !3, line: 73, type: !109)
!5325 = !DILocation(line: 73, column: 60, scope: !5321)
!5326 = !DILocation(line: 75, column: 9, scope: !5321)
!5327 = !DILocation(line: 75, column: 15, scope: !5321)
!5328 = !DILocation(line: 75, column: 2, scope: !5321)
!5329 = !DILocation(line: 76, column: 1, scope: !5321)
!5330 = distinct !DISubprogram(name: "bgpio_read32be", scope: !3, file: !3, line: 120, type: !4009, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5331 = !DILocalVariable(name: "reg", arg: 1, scope: !5330, file: !3, line: 120, type: !302)
!5332 = !DILocation(line: 120, column: 51, scope: !5330)
!5333 = !DILocation(line: 122, column: 20, scope: !5330)
!5334 = !DILocation(line: 122, column: 9, scope: !5330)
!5335 = !DILocation(line: 122, column: 2, scope: !5330)
!5336 = distinct !DISubprogram(name: "bgpio_write32be", scope: !3, file: !3, line: 115, type: !4013, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5337 = !DILocalVariable(name: "reg", arg: 1, scope: !5336, file: !3, line: 115, type: !302)
!5338 = !DILocation(line: 115, column: 43, scope: !5336)
!5339 = !DILocalVariable(name: "data", arg: 2, scope: !5336, file: !3, line: 115, type: !109)
!5340 = !DILocation(line: 115, column: 62, scope: !5336)
!5341 = !DILocation(line: 117, column: 14, scope: !5336)
!5342 = !DILocation(line: 117, column: 20, scope: !5336)
!5343 = !DILocation(line: 117, column: 2, scope: !5336)
!5344 = !DILocation(line: 118, column: 1, scope: !5336)
!5345 = distinct !DISubprogram(name: "bgpio_read32", scope: !3, file: !3, line: 88, type: !4009, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5346 = !DILocalVariable(name: "reg", arg: 1, scope: !5345, file: !3, line: 88, type: !302)
!5347 = !DILocation(line: 88, column: 49, scope: !5345)
!5348 = !DILocation(line: 90, column: 15, scope: !5345)
!5349 = !DILocation(line: 90, column: 9, scope: !5345)
!5350 = !DILocation(line: 90, column: 2, scope: !5345)
!5351 = distinct !DISubprogram(name: "bgpio_write32", scope: !3, file: !3, line: 83, type: !4013, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5352 = !DILocalVariable(name: "reg", arg: 1, scope: !5351, file: !3, line: 83, type: !302)
!5353 = !DILocation(line: 83, column: 41, scope: !5351)
!5354 = !DILocalVariable(name: "data", arg: 2, scope: !5351, file: !3, line: 83, type: !109)
!5355 = !DILocation(line: 83, column: 60, scope: !5351)
!5356 = !DILocation(line: 85, column: 9, scope: !5351)
!5357 = !DILocation(line: 85, column: 15, scope: !5351)
!5358 = !DILocation(line: 85, column: 2, scope: !5351)
!5359 = !DILocation(line: 86, column: 1, scope: !5351)
!5360 = distinct !DISubprogram(name: "bgpio_read64", scope: !3, file: !3, line: 99, type: !4009, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5361 = !DILocalVariable(name: "reg", arg: 1, scope: !5360, file: !3, line: 99, type: !302)
!5362 = !DILocation(line: 99, column: 49, scope: !5360)
!5363 = !DILocation(line: 101, column: 15, scope: !5360)
!5364 = !DILocation(line: 101, column: 9, scope: !5360)
!5365 = !DILocation(line: 101, column: 2, scope: !5360)
!5366 = distinct !DISubprogram(name: "bgpio_write64", scope: !3, file: !3, line: 94, type: !4013, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5367 = !DILocalVariable(name: "reg", arg: 1, scope: !5366, file: !3, line: 94, type: !302)
!5368 = !DILocation(line: 94, column: 41, scope: !5366)
!5369 = !DILocalVariable(name: "data", arg: 2, scope: !5366, file: !3, line: 94, type: !109)
!5370 = !DILocation(line: 94, column: 60, scope: !5366)
!5371 = !DILocation(line: 96, column: 9, scope: !5366)
!5372 = !DILocation(line: 96, column: 15, scope: !5366)
!5373 = !DILocation(line: 96, column: 2, scope: !5366)
!5374 = !DILocation(line: 97, column: 1, scope: !5366)
!5375 = distinct !DISubprogram(name: "readb", scope: !5376, file: !5376, line: 57, type: !5377, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5376 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!5377 = !DISubroutineType(types: !5378)
!5378 = !{!112, !5104}
!5379 = !DILocalVariable(name: "addr", arg: 1, scope: !5375, file: !5376, line: 57, type: !5104)
!5380 = !DILocation(line: 57, column: 1, scope: !5375)
!5381 = !DILocalVariable(name: "ret", scope: !5375, file: !5376, line: 57, type: !112)
!5382 = !{i32 -2144293384}
!5383 = distinct !DISubprogram(name: "writeb", scope: !5376, file: !5376, line: 65, type: !5384, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5384 = !DISubroutineType(types: !5385)
!5385 = !{null, !112, !5386}
!5386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5387 = !DILocalVariable(name: "val", arg: 1, scope: !5383, file: !5376, line: 65, type: !112)
!5388 = !DILocation(line: 65, column: 1, scope: !5383)
!5389 = !DILocalVariable(name: "addr", arg: 2, scope: !5383, file: !5376, line: 65, type: !5386)
!5390 = !{i32 -2144290930}
!5391 = distinct !DISubprogram(name: "readw", scope: !5376, file: !5376, line: 58, type: !5392, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5392 = !DISubroutineType(types: !5393)
!5393 = !{!115, !5104}
!5394 = !DILocalVariable(name: "addr", arg: 1, scope: !5391, file: !5376, line: 58, type: !5104)
!5395 = !DILocation(line: 58, column: 1, scope: !5391)
!5396 = !DILocalVariable(name: "ret", scope: !5391, file: !5376, line: 58, type: !115)
!5397 = !{i32 -2144292970}
!5398 = distinct !DISubprogram(name: "writew", scope: !5376, file: !5376, line: 66, type: !5399, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5399 = !DISubroutineType(types: !5400)
!5400 = !{null, !115, !5386}
!5401 = !DILocalVariable(name: "val", arg: 1, scope: !5398, file: !5376, line: 66, type: !115)
!5402 = !DILocation(line: 66, column: 1, scope: !5398)
!5403 = !DILocalVariable(name: "addr", arg: 2, scope: !5398, file: !5376, line: 66, type: !5386)
!5404 = !{i32 -2144290546}
!5405 = distinct !DISubprogram(name: "readl", scope: !5376, file: !5376, line: 59, type: !5406, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5406 = !DISubroutineType(types: !5407)
!5407 = !{!7, !5104}
!5408 = !DILocalVariable(name: "addr", arg: 1, scope: !5405, file: !5376, line: 59, type: !5104)
!5409 = !DILocation(line: 59, column: 1, scope: !5405)
!5410 = !DILocalVariable(name: "ret", scope: !5405, file: !5376, line: 59, type: !7)
!5411 = !{i32 -2144292553}
!5412 = distinct !DISubprogram(name: "writel", scope: !5376, file: !5376, line: 67, type: !5413, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5413 = !DISubroutineType(types: !5414)
!5414 = !{null, !7, !5386}
!5415 = !DILocalVariable(name: "val", arg: 1, scope: !5412, file: !5376, line: 67, type: !7)
!5416 = !DILocation(line: 67, column: 1, scope: !5412)
!5417 = !DILocalVariable(name: "addr", arg: 2, scope: !5412, file: !5376, line: 67, type: !5386)
!5418 = !{i32 -2144290160}
!5419 = distinct !DISubprogram(name: "readq", scope: !5376, file: !5376, line: 95, type: !5420, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5420 = !DISubroutineType(types: !5421)
!5421 = !{!120, !5104}
!5422 = !DILocalVariable(name: "addr", arg: 1, scope: !5419, file: !5376, line: 95, type: !5104)
!5423 = !DILocation(line: 95, column: 1, scope: !5419)
!5424 = !DILocalVariable(name: "ret", scope: !5419, file: !5376, line: 95, type: !120)
!5425 = !{i32 -2144288644}
!5426 = distinct !DISubprogram(name: "writeq", scope: !5376, file: !5376, line: 97, type: !5427, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5427 = !DISubroutineType(types: !5428)
!5428 = !{null, !120, !5386}
!5429 = !DILocalVariable(name: "val", arg: 1, scope: !5426, file: !5376, line: 97, type: !120)
!5430 = !DILocation(line: 97, column: 1, scope: !5426)
!5431 = !DILocalVariable(name: "addr", arg: 2, scope: !5426, file: !5376, line: 97, type: !5386)
!5432 = !{i32 -2144287890}
!5433 = distinct !DISubprogram(name: "bgpio_dir_out_dir_first", scope: !3, file: !3, line: 402, type: !3969, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5434 = !DILocalVariable(name: "gc", arg: 1, scope: !5433, file: !3, line: 402, type: !156)
!5435 = !DILocation(line: 402, column: 54, scope: !5433)
!5436 = !DILocalVariable(name: "gpio", arg: 2, scope: !5433, file: !3, line: 402, type: !7)
!5437 = !DILocation(line: 402, column: 71, scope: !5433)
!5438 = !DILocalVariable(name: "val", arg: 3, scope: !5433, file: !3, line: 403, type: !155)
!5439 = !DILocation(line: 403, column: 12, scope: !5433)
!5440 = !DILocation(line: 405, column: 16, scope: !5433)
!5441 = !DILocation(line: 405, column: 20, scope: !5433)
!5442 = !DILocation(line: 405, column: 26, scope: !5433)
!5443 = !DILocation(line: 405, column: 2, scope: !5433)
!5444 = !DILocation(line: 406, column: 2, scope: !5433)
!5445 = !DILocation(line: 406, column: 6, scope: !5433)
!5446 = !DILocation(line: 406, column: 10, scope: !5433)
!5447 = !DILocation(line: 406, column: 14, scope: !5433)
!5448 = !DILocation(line: 406, column: 20, scope: !5433)
!5449 = !DILocation(line: 407, column: 2, scope: !5433)
!5450 = distinct !DISubprogram(name: "bgpio_dir_out_val_first", scope: !3, file: !3, line: 410, type: !3969, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5451 = !DILocalVariable(name: "gc", arg: 1, scope: !5450, file: !3, line: 410, type: !156)
!5452 = !DILocation(line: 410, column: 54, scope: !5450)
!5453 = !DILocalVariable(name: "gpio", arg: 2, scope: !5450, file: !3, line: 410, type: !7)
!5454 = !DILocation(line: 410, column: 71, scope: !5450)
!5455 = !DILocalVariable(name: "val", arg: 3, scope: !5450, file: !3, line: 411, type: !155)
!5456 = !DILocation(line: 411, column: 12, scope: !5450)
!5457 = !DILocation(line: 413, column: 2, scope: !5450)
!5458 = !DILocation(line: 413, column: 6, scope: !5450)
!5459 = !DILocation(line: 413, column: 10, scope: !5450)
!5460 = !DILocation(line: 413, column: 14, scope: !5450)
!5461 = !DILocation(line: 413, column: 20, scope: !5450)
!5462 = !DILocation(line: 414, column: 16, scope: !5450)
!5463 = !DILocation(line: 414, column: 20, scope: !5450)
!5464 = !DILocation(line: 414, column: 26, scope: !5450)
!5465 = !DILocation(line: 414, column: 2, scope: !5450)
!5466 = !DILocation(line: 415, column: 2, scope: !5450)
!5467 = distinct !DISubprogram(name: "bgpio_dir_in", scope: !3, file: !3, line: 346, type: !3959, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5468 = !DILocation(line: 407, column: 64, scope: !4572, inlinedAt: !5469)
!5469 = distinct !DILocation(line: 359, column: 2, scope: !5467)
!5470 = !DILocation(line: 407, column: 84, scope: !4572, inlinedAt: !5469)
!5471 = !DILocation(line: 327, column: 67, scope: !4085, inlinedAt: !5472)
!5472 = distinct !DILocation(line: 350, column: 2, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5474, file: !3, line: 350, column: 2)
!5474 = distinct !DILexicalBlock(scope: !5475, file: !3, line: 350, column: 2)
!5475 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 350, column: 2)
!5476 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 350, column: 2)
!5477 = distinct !DILexicalBlock(scope: !5467, file: !3, line: 350, column: 2)
!5478 = !DILocalVariable(name: "gc", arg: 1, scope: !5467, file: !3, line: 346, type: !156)
!5479 = !DILocation(line: 346, column: 43, scope: !5467)
!5480 = !DILocalVariable(name: "gpio", arg: 2, scope: !5467, file: !3, line: 346, type: !7)
!5481 = !DILocation(line: 346, column: 60, scope: !5467)
!5482 = !DILocalVariable(name: "flags", scope: !5467, file: !3, line: 348, type: !109)
!5483 = !DILocation(line: 348, column: 16, scope: !5467)
!5484 = !DILocation(line: 350, column: 2, scope: !5467)
!5485 = !DILocation(line: 350, column: 2, scope: !5477)
!5486 = !DILocalVariable(name: "__dummy", scope: !5487, file: !3, line: 350, type: !109)
!5487 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 350, column: 2)
!5488 = !DILocation(line: 350, column: 2, scope: !5487)
!5489 = !DILocalVariable(name: "__dummy2", scope: !5487, file: !3, line: 350, type: !109)
!5490 = !DILocation(line: 350, column: 2, scope: !5476)
!5491 = !DILocation(line: 350, column: 2, scope: !5475)
!5492 = !DILocation(line: 350, column: 2, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !5475, file: !3, line: 350, column: 2)
!5494 = !DILocalVariable(name: "__dummy", scope: !5495, file: !3, line: 350, type: !109)
!5495 = distinct !DILexicalBlock(scope: !5496, file: !3, line: 350, column: 2)
!5496 = distinct !DILexicalBlock(scope: !5493, file: !3, line: 350, column: 2)
!5497 = !DILocation(line: 350, column: 2, scope: !5495)
!5498 = !DILocalVariable(name: "__dummy2", scope: !5495, file: !3, line: 350, type: !109)
!5499 = !DILocation(line: 350, column: 2, scope: !5496)
!5500 = !DILocation(line: 350, column: 2, scope: !5474)
!5501 = !{i32 -2142426407}
!5502 = !DILocation(line: 350, column: 2, scope: !5473)
!5503 = !DILocation(line: 329, column: 10, scope: !4085, inlinedAt: !5472)
!5504 = !DILocation(line: 329, column: 16, scope: !4085, inlinedAt: !5472)
!5505 = !DILocation(line: 352, column: 36, scope: !5467)
!5506 = !DILocation(line: 352, column: 40, scope: !5467)
!5507 = !DILocation(line: 352, column: 20, scope: !5467)
!5508 = !DILocation(line: 352, column: 19, scope: !5467)
!5509 = !DILocation(line: 352, column: 2, scope: !5467)
!5510 = !DILocation(line: 352, column: 6, scope: !5467)
!5511 = !DILocation(line: 352, column: 16, scope: !5467)
!5512 = !DILocation(line: 354, column: 6, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5467, file: !3, line: 354, column: 6)
!5514 = !DILocation(line: 354, column: 10, scope: !5513)
!5515 = !DILocation(line: 354, column: 6, scope: !5467)
!5516 = !DILocation(line: 355, column: 3, scope: !5513)
!5517 = !DILocation(line: 355, column: 7, scope: !5513)
!5518 = !DILocation(line: 355, column: 17, scope: !5513)
!5519 = !DILocation(line: 355, column: 21, scope: !5513)
!5520 = !DILocation(line: 355, column: 34, scope: !5513)
!5521 = !DILocation(line: 355, column: 38, scope: !5513)
!5522 = !DILocation(line: 355, column: 33, scope: !5513)
!5523 = !DILocation(line: 356, column: 6, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5467, file: !3, line: 356, column: 6)
!5525 = !DILocation(line: 356, column: 10, scope: !5524)
!5526 = !DILocation(line: 356, column: 6, scope: !5467)
!5527 = !DILocation(line: 357, column: 3, scope: !5524)
!5528 = !DILocation(line: 357, column: 7, scope: !5524)
!5529 = !DILocation(line: 357, column: 17, scope: !5524)
!5530 = !DILocation(line: 357, column: 21, scope: !5524)
!5531 = !DILocation(line: 357, column: 34, scope: !5524)
!5532 = !DILocation(line: 357, column: 38, scope: !5524)
!5533 = !DILocation(line: 359, column: 26, scope: !5467)
!5534 = !DILocation(line: 359, column: 30, scope: !5467)
!5535 = !DILocation(line: 359, column: 42, scope: !5467)
!5536 = !DILocation(line: 409, column: 2, scope: !4642, inlinedAt: !5469)
!5537 = !DILocation(line: 409, column: 2, scope: !4647, inlinedAt: !5469)
!5538 = !DILocation(line: 409, column: 2, scope: !4648, inlinedAt: !5469)
!5539 = !DILocation(line: 409, column: 2, scope: !4655, inlinedAt: !5469)
!5540 = !DILocation(line: 409, column: 2, scope: !4658, inlinedAt: !5469)
!5541 = !DILocation(line: 361, column: 2, scope: !5467)
!5542 = distinct !DISubprogram(name: "bgpio_get_dir", scope: !3, file: !3, line: 364, type: !3959, scopeLine: 365, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5543 = !DILocalVariable(name: "gc", arg: 1, scope: !5542, file: !3, line: 364, type: !156)
!5544 = !DILocation(line: 364, column: 44, scope: !5542)
!5545 = !DILocalVariable(name: "gpio", arg: 2, scope: !5542, file: !3, line: 364, type: !7)
!5546 = !DILocation(line: 364, column: 61, scope: !5542)
!5547 = !DILocation(line: 367, column: 6, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 367, column: 6)
!5549 = !DILocation(line: 367, column: 10, scope: !5548)
!5550 = !DILocation(line: 367, column: 6, scope: !5542)
!5551 = !DILocation(line: 368, column: 7, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !5553, file: !3, line: 368, column: 7)
!5553 = distinct !DILexicalBlock(scope: !5548, file: !3, line: 367, column: 32)
!5554 = !DILocation(line: 368, column: 11, scope: !5552)
!5555 = !DILocation(line: 368, column: 39, scope: !5552)
!5556 = !DILocation(line: 368, column: 43, scope: !5552)
!5557 = !DILocation(line: 368, column: 23, scope: !5552)
!5558 = !DILocation(line: 368, column: 21, scope: !5552)
!5559 = !DILocation(line: 368, column: 7, scope: !5553)
!5560 = !DILocation(line: 369, column: 4, scope: !5552)
!5561 = !DILocation(line: 370, column: 3, scope: !5553)
!5562 = !DILocation(line: 373, column: 6, scope: !5563)
!5563 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 373, column: 6)
!5564 = !DILocation(line: 373, column: 10, scope: !5563)
!5565 = !DILocation(line: 373, column: 6, scope: !5542)
!5566 = !DILocation(line: 374, column: 7, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5568, file: !3, line: 374, column: 7)
!5568 = distinct !DILexicalBlock(scope: !5563, file: !3, line: 373, column: 23)
!5569 = !DILocation(line: 374, column: 11, scope: !5567)
!5570 = !DILocation(line: 374, column: 20, scope: !5567)
!5571 = !DILocation(line: 374, column: 24, scope: !5567)
!5572 = !DILocation(line: 374, column: 55, scope: !5567)
!5573 = !DILocation(line: 374, column: 59, scope: !5567)
!5574 = !DILocation(line: 374, column: 39, scope: !5567)
!5575 = !DILocation(line: 374, column: 37, scope: !5567)
!5576 = !DILocation(line: 374, column: 7, scope: !5568)
!5577 = !DILocation(line: 375, column: 4, scope: !5567)
!5578 = !DILocation(line: 376, column: 3, scope: !5568)
!5579 = !DILocation(line: 379, column: 6, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 379, column: 6)
!5581 = !DILocation(line: 379, column: 10, scope: !5580)
!5582 = !DILocation(line: 379, column: 6, scope: !5542)
!5583 = !DILocation(line: 380, column: 9, scope: !5584)
!5584 = distinct !DILexicalBlock(scope: !5580, file: !3, line: 380, column: 7)
!5585 = !DILocation(line: 380, column: 13, scope: !5584)
!5586 = !DILocation(line: 380, column: 22, scope: !5584)
!5587 = !DILocation(line: 380, column: 26, scope: !5584)
!5588 = !DILocation(line: 380, column: 56, scope: !5584)
!5589 = !DILocation(line: 380, column: 60, scope: !5584)
!5590 = !DILocation(line: 380, column: 40, scope: !5584)
!5591 = !DILocation(line: 380, column: 38, scope: !5584)
!5592 = !DILocation(line: 380, column: 7, scope: !5580)
!5593 = !DILocation(line: 381, column: 4, scope: !5584)
!5594 = !DILocation(line: 380, column: 65, scope: !5584)
!5595 = !DILocation(line: 383, column: 2, scope: !5542)
!5596 = !DILocation(line: 384, column: 1, scope: !5542)
!5597 = distinct !DISubprogram(name: "bgpio_dir_out_err", scope: !3, file: !3, line: 332, type: !3969, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5598 = !DILocalVariable(name: "gc", arg: 1, scope: !5597, file: !3, line: 332, type: !156)
!5599 = !DILocation(line: 332, column: 48, scope: !5597)
!5600 = !DILocalVariable(name: "gpio", arg: 2, scope: !5597, file: !3, line: 332, type: !7)
!5601 = !DILocation(line: 332, column: 65, scope: !5597)
!5602 = !DILocalVariable(name: "val", arg: 3, scope: !5597, file: !3, line: 333, type: !155)
!5603 = !DILocation(line: 333, column: 9, scope: !5597)
!5604 = !DILocation(line: 335, column: 2, scope: !5597)
!5605 = distinct !DISubprogram(name: "bgpio_simple_dir_out", scope: !3, file: !3, line: 338, type: !3969, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5606 = !DILocalVariable(name: "gc", arg: 1, scope: !5605, file: !3, line: 338, type: !156)
!5607 = !DILocation(line: 338, column: 51, scope: !5605)
!5608 = !DILocalVariable(name: "gpio", arg: 2, scope: !5605, file: !3, line: 338, type: !7)
!5609 = !DILocation(line: 338, column: 68, scope: !5605)
!5610 = !DILocalVariable(name: "val", arg: 3, scope: !5605, file: !3, line: 339, type: !155)
!5611 = !DILocation(line: 339, column: 9, scope: !5605)
!5612 = !DILocation(line: 341, column: 2, scope: !5605)
!5613 = !DILocation(line: 341, column: 6, scope: !5605)
!5614 = !DILocation(line: 341, column: 10, scope: !5605)
!5615 = !DILocation(line: 341, column: 14, scope: !5605)
!5616 = !DILocation(line: 341, column: 20, scope: !5605)
!5617 = !DILocation(line: 343, column: 2, scope: !5605)
!5618 = distinct !DISubprogram(name: "bgpio_simple_dir_in", scope: !3, file: !3, line: 327, type: !3959, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5619 = !DILocalVariable(name: "gc", arg: 1, scope: !5618, file: !3, line: 327, type: !156)
!5620 = !DILocation(line: 327, column: 50, scope: !5618)
!5621 = !DILocalVariable(name: "gpio", arg: 2, scope: !5618, file: !3, line: 327, type: !7)
!5622 = !DILocation(line: 327, column: 67, scope: !5618)
!5623 = !DILocation(line: 329, column: 2, scope: !5618)
!5624 = distinct !DISubprogram(name: "bgpio_dir_out", scope: !3, file: !3, line: 386, type: !3978, scopeLine: 387, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5625 = !DILocation(line: 407, column: 64, scope: !4572, inlinedAt: !5626)
!5626 = distinct !DILocation(line: 399, column: 2, scope: !5624)
!5627 = !DILocation(line: 407, column: 84, scope: !4572, inlinedAt: !5626)
!5628 = !DILocation(line: 327, column: 67, scope: !4085, inlinedAt: !5629)
!5629 = distinct !DILocation(line: 390, column: 2, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5631, file: !3, line: 390, column: 2)
!5631 = distinct !DILexicalBlock(scope: !5632, file: !3, line: 390, column: 2)
!5632 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 390, column: 2)
!5633 = distinct !DILexicalBlock(scope: !5634, file: !3, line: 390, column: 2)
!5634 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 390, column: 2)
!5635 = !DILocalVariable(name: "gc", arg: 1, scope: !5624, file: !3, line: 386, type: !156)
!5636 = !DILocation(line: 386, column: 45, scope: !5624)
!5637 = !DILocalVariable(name: "gpio", arg: 2, scope: !5624, file: !3, line: 386, type: !7)
!5638 = !DILocation(line: 386, column: 62, scope: !5624)
!5639 = !DILocalVariable(name: "val", arg: 3, scope: !5624, file: !3, line: 386, type: !155)
!5640 = !DILocation(line: 386, column: 72, scope: !5624)
!5641 = !DILocalVariable(name: "flags", scope: !5624, file: !3, line: 388, type: !109)
!5642 = !DILocation(line: 388, column: 16, scope: !5624)
!5643 = !DILocation(line: 390, column: 2, scope: !5624)
!5644 = !DILocation(line: 390, column: 2, scope: !5634)
!5645 = !DILocalVariable(name: "__dummy", scope: !5646, file: !3, line: 390, type: !109)
!5646 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 390, column: 2)
!5647 = !DILocation(line: 390, column: 2, scope: !5646)
!5648 = !DILocalVariable(name: "__dummy2", scope: !5646, file: !3, line: 390, type: !109)
!5649 = !DILocation(line: 390, column: 2, scope: !5633)
!5650 = !DILocation(line: 390, column: 2, scope: !5632)
!5651 = !DILocation(line: 390, column: 2, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5632, file: !3, line: 390, column: 2)
!5653 = !DILocalVariable(name: "__dummy", scope: !5654, file: !3, line: 390, type: !109)
!5654 = distinct !DILexicalBlock(scope: !5655, file: !3, line: 390, column: 2)
!5655 = distinct !DILexicalBlock(scope: !5652, file: !3, line: 390, column: 2)
!5656 = !DILocation(line: 390, column: 2, scope: !5654)
!5657 = !DILocalVariable(name: "__dummy2", scope: !5654, file: !3, line: 390, type: !109)
!5658 = !DILocation(line: 390, column: 2, scope: !5655)
!5659 = !DILocation(line: 390, column: 2, scope: !5631)
!5660 = !{i32 -2142425348}
!5661 = !DILocation(line: 390, column: 2, scope: !5630)
!5662 = !DILocation(line: 329, column: 10, scope: !4085, inlinedAt: !5629)
!5663 = !DILocation(line: 329, column: 16, scope: !4085, inlinedAt: !5629)
!5664 = !DILocation(line: 392, column: 35, scope: !5624)
!5665 = !DILocation(line: 392, column: 39, scope: !5624)
!5666 = !DILocation(line: 392, column: 19, scope: !5624)
!5667 = !DILocation(line: 392, column: 2, scope: !5624)
!5668 = !DILocation(line: 392, column: 6, scope: !5624)
!5669 = !DILocation(line: 392, column: 16, scope: !5624)
!5670 = !DILocation(line: 394, column: 6, scope: !5671)
!5671 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 394, column: 6)
!5672 = !DILocation(line: 394, column: 10, scope: !5671)
!5673 = !DILocation(line: 394, column: 6, scope: !5624)
!5674 = !DILocation(line: 395, column: 3, scope: !5671)
!5675 = !DILocation(line: 395, column: 7, scope: !5671)
!5676 = !DILocation(line: 395, column: 17, scope: !5671)
!5677 = !DILocation(line: 395, column: 21, scope: !5671)
!5678 = !DILocation(line: 395, column: 34, scope: !5671)
!5679 = !DILocation(line: 395, column: 38, scope: !5671)
!5680 = !DILocation(line: 395, column: 33, scope: !5671)
!5681 = !DILocation(line: 396, column: 6, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 396, column: 6)
!5683 = !DILocation(line: 396, column: 10, scope: !5682)
!5684 = !DILocation(line: 396, column: 6, scope: !5624)
!5685 = !DILocation(line: 397, column: 3, scope: !5682)
!5686 = !DILocation(line: 397, column: 7, scope: !5682)
!5687 = !DILocation(line: 397, column: 17, scope: !5682)
!5688 = !DILocation(line: 397, column: 21, scope: !5682)
!5689 = !DILocation(line: 397, column: 34, scope: !5682)
!5690 = !DILocation(line: 397, column: 38, scope: !5682)
!5691 = !DILocation(line: 399, column: 26, scope: !5624)
!5692 = !DILocation(line: 399, column: 30, scope: !5624)
!5693 = !DILocation(line: 399, column: 42, scope: !5624)
!5694 = !DILocation(line: 409, column: 2, scope: !4642, inlinedAt: !5626)
!5695 = !DILocation(line: 409, column: 2, scope: !4647, inlinedAt: !5626)
!5696 = !DILocation(line: 409, column: 2, scope: !4648, inlinedAt: !5626)
!5697 = !DILocation(line: 409, column: 2, scope: !4655, inlinedAt: !5626)
!5698 = !DILocation(line: 409, column: 2, scope: !4658, inlinedAt: !5626)
!5699 = !DILocation(line: 400, column: 1, scope: !5624)
