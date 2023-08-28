; ModuleID = '../bcout/drivers/input/joystick/iforce/iforce-packets.llvm.bc'
source_filename = "drivers/input/joystick/iforce/iforce-packets.c"
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.47, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.50 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i64, i64 }
%union.anon.50 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.46, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.16, [0 x i64] }
%struct.anon.16 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.17, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.17 = type { %struct.rb_node, i64 }
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
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.60 }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { %struct.spinlock, i32 }
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
%struct.seq_file = type opaque
%struct.page = type { i64, %union.anon.3, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.52 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.53, i32 }
%union.anon.53 = type { %struct.kuid_t }
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
%union.anon.62 = type { %struct.list_head }
%union.anon.63 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.54, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.55, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.56, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.59, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.54 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.55 = type { %struct.callback_head }
%union.anon.56 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.5 }
%union.anon.5 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.59 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.57 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.57 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.23, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.24, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.25, %union.anon.29, %struct.key_restriction* }
%union.anon.23 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.24 = type { i64 }
%union.anon.25 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.26, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.26 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.29 = type { %union.key_payload }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.32, %union.anon.33, i32 }
%struct.request_queue = type opaque
%union.anon.32 = type { %struct.list_head }
%union.anon.33 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.34 }
%struct.anon.34 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.38 }
%struct.anon.38 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.45, i32, [12 x i8] }
%union.anon.45 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.46 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.vm_struct = type opaque
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
%struct.anon.65 = type { i32, i32 }
%struct.iforce = type { %struct.input_dev*, %struct.iforce_device*, %struct.iforce_xport_ops*, %struct.spinlock, %struct.circ_buf, [256 x i8], [1 x i64], %struct.wait_queue_head, %struct.resource, [32 x %struct.iforce_core_effect], %struct.mutex }
%struct.input_dev = type { i8*, i8*, i8*, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, i8*, i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)*, i32 (%struct.input_dev*, %struct.input_keymap_entry*)*, %struct.ff_device*, %struct.input_dev_poller*, i32, %struct.timer_list, [2 x i32], %struct.input_mt*, %struct.input_absinfo*, [12 x i64], [1 x i64], [1 x i64], [1 x i64], i32 (%struct.input_dev*)*, void (%struct.input_dev*)*, i32 (%struct.input_dev*, %struct.file*)*, i32 (%struct.input_dev*, i32, i32, i32)*, %struct.input_handle*, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, %struct.input_value*, i8, [3 x i64] }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }
%struct.ff_device = type { i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)*, i32 (%struct.input_dev*, i32)*, i32 (%struct.input_dev*, i32, i32)*, void (%struct.input_dev*, i16)*, void (%struct.input_dev*, i16)*, void (%struct.ff_device*)*, i8*, [2 x i64], %struct.mutex, i32, %struct.ff_effect*, [0 x %struct.file*] }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, i16* }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.input_dev_poller = type opaque
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.input_mt = type opaque
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.input_handle = type { i8*, i32, i8*, %struct.input_dev*, %struct.input_handler*, %struct.list_head, %struct.list_head }
%struct.input_handler = type { i8*, void (%struct.input_handle*, i32, i32, i32)*, void (%struct.input_handle*, %struct.input_value*, i32)*, i1 (%struct.input_handle*, i32, i32, i32)*, i1 (%struct.input_handler*, %struct.input_dev*)*, i32 (%struct.input_handler*, %struct.input_dev*, %struct.input_device_id*)*, void (%struct.input_handle*)*, void (%struct.input_handle*)*, i8, i32, i8*, %struct.input_device_id*, %struct.list_head, %struct.list_head }
%struct.input_device_id = type { i64, i16, i16, i16, i16, [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.64, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.64 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
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
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.input_value = type { i16, i16, i32 }
%struct.iforce_device = type { i16, i16, i8*, i16*, i16*, i16* }
%struct.iforce_xport_ops = type { void (%struct.iforce*)*, i32 (%struct.iforce*, i8, i8*, i64*)*, i32 (%struct.iforce*)*, void (%struct.iforce*)* }
%struct.circ_buf = type { i8*, i32, i32 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.iforce_core_effect = type { %struct.resource, %struct.resource, [1 x i64] }

@.str = private unnamed_addr constant [52 x i8] c"not enough space in xmit buffer to send new packet\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@iforce_hat_to_axis = internal global <{ [8 x %struct.anon.65], [8 x %struct.anon.65] }> <{ [8 x %struct.anon.65] [%struct.anon.65 { i32 0, i32 -1 }, %struct.anon.65 { i32 1, i32 -1 }, %struct.anon.65 { i32 1, i32 0 }, %struct.anon.65 { i32 1, i32 1 }, %struct.anon.65 { i32 0, i32 1 }, %struct.anon.65 { i32 -1, i32 1 }, %struct.anon.65 { i32 -1, i32 0 }, %struct.anon.65 { i32 -1, i32 -1 }], [8 x %struct.anon.65] zeroinitializer }>, align 16, !dbg !0
@.str.2 = private unnamed_addr constant [32 x i8] c"unused effect %04x updated !!!\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @iforce_dump_packet(%struct.iforce* %iforce, i8* %msg, i16 zeroext %cmd, i8* %data) #0 !dbg !122 {
entry:
  %iforce.addr = alloca %struct.iforce*, align 8
  %msg.addr = alloca i8*, align 8
  %cmd.addr = alloca i16, align 2
  %data.addr = alloca i8*, align 8
  store %struct.iforce* %iforce, %struct.iforce** %iforce.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce.addr, metadata !3838, metadata !DIExpression()), !dbg !3839
  store i8* %msg, i8** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %msg.addr, metadata !3840, metadata !DIExpression()), !dbg !3841
  store i16 %cmd, i16* %cmd.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %cmd.addr, metadata !3842, metadata !DIExpression()), !dbg !3843
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3844, metadata !DIExpression()), !dbg !3845
  ret void, !dbg !3846
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @iforce_send_packet(%struct.iforce* %iforce, i16 zeroext %cmd, i8* %data) #0 !dbg !3847 {
entry:
  %lock.addr.i88 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i88, metadata !3850, metadata !DIExpression()), !dbg !3856
  %flags.addr.i89 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i89, metadata !3858, metadata !DIExpression()), !dbg !3859
  %tmp.i90 = alloca i32, align 4
  %tmp8.i91 = alloca i32, align 4
  %lock.addr.i86 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i86, metadata !3850, metadata !DIExpression()), !dbg !3860
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !3858, metadata !DIExpression()), !dbg !3864
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3865, metadata !DIExpression()), !dbg !3870
  %retval = alloca i32, align 4
  %iforce.addr = alloca %struct.iforce*, align 8
  %cmd.addr = alloca i16, align 2
  %data.addr = alloca i8*, align 8
  %n = alloca i32, align 4
  %c = alloca i32, align 4
  %empty = alloca i32, align 4
  %head = alloca i32, align 4
  %tail = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy8 = alloca i64, align 8
  %__dummy29 = alloca i64, align 8
  %tmp12 = alloca i32, align 4
  %end = alloca i32, align 4
  %n55 = alloca i32, align 4
  %tmp58 = alloca i32, align 4
  store %struct.iforce* %iforce, %struct.iforce** %iforce.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce.addr, metadata !3877, metadata !DIExpression()), !dbg !3878
  store i16 %cmd, i16* %cmd.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %cmd.addr, metadata !3879, metadata !DIExpression()), !dbg !3880
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3881, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.declare(metadata i32* %n, metadata !3883, metadata !DIExpression()), !dbg !3884
  %0 = load i16, i16* %cmd.addr, align 2, !dbg !3885
  %conv = zext i16 %0 to i32, !dbg !3885
  %and = and i32 %conv, 255, !dbg !3885
  %conv1 = trunc i32 %and to i8, !dbg !3885
  %conv2 = zext i8 %conv1 to i32, !dbg !3885
  store i32 %conv2, i32* %n, align 4, !dbg !3884
  call void @llvm.dbg.declare(metadata i32* %c, metadata !3886, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.declare(metadata i32* %empty, metadata !3888, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.declare(metadata i32* %head, metadata !3890, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.declare(metadata i32* %tail, metadata !3892, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !3894, metadata !DIExpression()), !dbg !3895
  br label %do.body, !dbg !3896

do.body:                                          ; preds = %entry
  br label %do.body3, !dbg !3897

do.body3:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !3898, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !3901, metadata !DIExpression()), !dbg !3900
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !3900
  %conv4 = zext i1 %cmp to i32, !dbg !3900
  store i32 1, i32* %tmp, align 4, !dbg !3900
  %1 = load i32, i32* %tmp, align 4, !dbg !3900
  br label %do.body5, !dbg !3902

do.body5:                                         ; preds = %do.body3
  br label %do.body6, !dbg !3903

do.body6:                                         ; preds = %do.body5
  br label %do.body7, !dbg !3904

do.body7:                                         ; preds = %do.body6
  call void @llvm.dbg.declare(metadata i64* %__dummy8, metadata !3906, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.declare(metadata i64* %__dummy29, metadata !3910, metadata !DIExpression()), !dbg !3909
  %cmp10 = icmp eq i64* %__dummy8, %__dummy29, !dbg !3909
  %conv11 = zext i1 %cmp10 to i32, !dbg !3909
  store i32 1, i32* %tmp12, align 4, !dbg !3909
  %2 = load i32, i32* %tmp12, align 4, !dbg !3909
  %call = call i64 @arch_local_irq_save() #8, !dbg !3911
  store i64 %call, i64* %flags, align 8, !dbg !3911
  br label %do.end, !dbg !3911

do.end:                                           ; preds = %do.body7
  br label %do.end13, !dbg !3904

do.end13:                                         ; preds = %do.end
  br label %do.body14, !dbg !3903

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !3912, !srcloc !3913
  br label %do.body15, !dbg !3912

do.body15:                                        ; preds = %do.body14
  %3 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3914
  %xmit_lock = getelementptr inbounds %struct.iforce, %struct.iforce* %3, i32 0, i32 3, !dbg !3914
  store %struct.spinlock* %xmit_lock, %struct.spinlock** %lock.addr.i, align 8
  %4 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3915
  %5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i32 0, i32 0, !dbg !3916
  %rlock.i = bitcast %union.anon.0* %5 to %struct.raw_spinlock*, !dbg !3916
  br label %do.end17, !dbg !3914

do.end17:                                         ; preds = %do.body15
  br label %do.end18, !dbg !3912

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !3903

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !3902

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !3897

do.end21:                                         ; preds = %do.end20
  %6 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3917
  %xmit = getelementptr inbounds %struct.iforce, %struct.iforce* %6, i32 0, i32 4, !dbg !3918
  %head22 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %xmit, i32 0, i32 1, !dbg !3919
  %7 = load i32, i32* %head22, align 8, !dbg !3919
  store i32 %7, i32* %head, align 4, !dbg !3920
  %8 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3921
  %xmit23 = getelementptr inbounds %struct.iforce, %struct.iforce* %8, i32 0, i32 4, !dbg !3922
  %tail24 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %xmit23, i32 0, i32 2, !dbg !3923
  %9 = load i32, i32* %tail24, align 4, !dbg !3923
  store i32 %9, i32* %tail, align 4, !dbg !3924
  %10 = load i32, i32* %tail, align 4, !dbg !3925
  %11 = load i32, i32* %head, align 4, !dbg !3925
  %add = add i32 %11, 1, !dbg !3925
  %sub = sub i32 %10, %add, !dbg !3925
  %and25 = and i32 %sub, 255, !dbg !3925
  %12 = load i32, i32* %n, align 4, !dbg !3926
  %add26 = add i32 %12, 2, !dbg !3927
  %cmp27 = icmp slt i32 %and25, %add26, !dbg !3928
  br i1 %cmp27, label %if.then, label %if.end, !dbg !3929

if.then:                                          ; preds = %do.end21
  %13 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3930
  %dev = getelementptr inbounds %struct.iforce, %struct.iforce* %13, i32 0, i32 0, !dbg !3930
  %14 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !3930
  %dev29 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %14, i32 0, i32 40, !dbg !3930
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev29, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0)) #9, !dbg !3930
  %15 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3931
  %xmit_lock30 = getelementptr inbounds %struct.iforce, %struct.iforce* %15, i32 0, i32 3, !dbg !3932
  %16 = load i64, i64* %flags, align 8, !dbg !3933
  store %struct.spinlock* %xmit_lock30, %struct.spinlock** %lock.addr.i86, align 8
  store i64 %16, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !316, metadata !3934, metadata !DIExpression()) #5, !dbg !3937
  call void @llvm.dbg.declare(metadata !316, metadata !3938, metadata !DIExpression()) #5, !dbg !3937
  store i32 1, i32* %tmp.i, align 4, !dbg !3937
  %17 = load i32, i32* %tmp.i, align 4, !dbg !3937
  call void @llvm.dbg.declare(metadata !316, metadata !3939, metadata !DIExpression()) #5, !dbg !3944
  call void @llvm.dbg.declare(metadata !316, metadata !3945, metadata !DIExpression()) #5, !dbg !3944
  store i32 1, i32* %tmp8.i, align 4, !dbg !3944
  %18 = load i32, i32* %tmp8.i, align 4, !dbg !3944
  %19 = load i64, i64* %flags.addr.i, align 8, !dbg !3946
  call void @arch_local_irq_restore(i64 %19) #10, !dbg !3946
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !3947, !srcloc !3949
  %20 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i86, align 8, !dbg !3950
  %21 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %20, i32 0, i32 0, !dbg !3950
  %rlock.i87 = bitcast %union.anon.0* %21 to %struct.raw_spinlock*, !dbg !3950
  store i32 -1, i32* %retval, align 4, !dbg !3952
  br label %return, !dbg !3952

if.end:                                           ; preds = %do.end21
  %22 = load i32, i32* %head, align 4, !dbg !3953
  %23 = load i32, i32* %tail, align 4, !dbg !3954
  %cmp31 = icmp eq i32 %22, %23, !dbg !3955
  %conv32 = zext i1 %cmp31 to i32, !dbg !3955
  store i32 %conv32, i32* %empty, align 4, !dbg !3956
  %24 = load i32, i32* %n, align 4, !dbg !3957
  %add33 = add i32 %24, 2, !dbg !3957
  %25 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3957
  %xmit34 = getelementptr inbounds %struct.iforce, %struct.iforce* %25, i32 0, i32 4, !dbg !3957
  %head35 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %xmit34, i32 0, i32 1, !dbg !3957
  %26 = load i32, i32* %head35, align 8, !dbg !3957
  %add36 = add i32 %26, %add33, !dbg !3957
  store i32 %add36, i32* %head35, align 8, !dbg !3957
  %27 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3957
  %xmit37 = getelementptr inbounds %struct.iforce, %struct.iforce* %27, i32 0, i32 4, !dbg !3957
  %head38 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %xmit37, i32 0, i32 1, !dbg !3957
  %28 = load i32, i32* %head38, align 8, !dbg !3957
  %and39 = and i32 %28, 255, !dbg !3957
  store i32 %and39, i32* %head38, align 8, !dbg !3957
  %29 = load i16, i16* %cmd.addr, align 2, !dbg !3958
  %conv40 = zext i16 %29 to i32, !dbg !3958
  %shr = ashr i32 %conv40, 8, !dbg !3958
  %conv41 = trunc i32 %shr to i8, !dbg !3958
  %30 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3959
  %xmit42 = getelementptr inbounds %struct.iforce, %struct.iforce* %30, i32 0, i32 4, !dbg !3960
  %buf = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %xmit42, i32 0, i32 0, !dbg !3961
  %31 = load i8*, i8** %buf, align 8, !dbg !3961
  %32 = load i32, i32* %head, align 4, !dbg !3962
  %idxprom = sext i32 %32 to i64, !dbg !3959
  %arrayidx = getelementptr i8, i8* %31, i64 %idxprom, !dbg !3959
  store i8 %conv41, i8* %arrayidx, align 1, !dbg !3963
  %33 = load i32, i32* %head, align 4, !dbg !3964
  %add43 = add i32 %33, 1, !dbg !3964
  store i32 %add43, i32* %head, align 4, !dbg !3964
  %34 = load i32, i32* %head, align 4, !dbg !3964
  %and44 = and i32 %34, 255, !dbg !3964
  store i32 %and44, i32* %head, align 4, !dbg !3964
  %35 = load i16, i16* %cmd.addr, align 2, !dbg !3965
  %conv45 = zext i16 %35 to i32, !dbg !3965
  %and46 = and i32 %conv45, 255, !dbg !3965
  %conv47 = trunc i32 %and46 to i8, !dbg !3965
  %36 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3966
  %xmit48 = getelementptr inbounds %struct.iforce, %struct.iforce* %36, i32 0, i32 4, !dbg !3967
  %buf49 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %xmit48, i32 0, i32 0, !dbg !3968
  %37 = load i8*, i8** %buf49, align 8, !dbg !3968
  %38 = load i32, i32* %head, align 4, !dbg !3969
  %idxprom50 = sext i32 %38 to i64, !dbg !3966
  %arrayidx51 = getelementptr i8, i8* %37, i64 %idxprom50, !dbg !3966
  store i8 %conv47, i8* %arrayidx51, align 1, !dbg !3970
  %39 = load i32, i32* %head, align 4, !dbg !3971
  %add52 = add i32 %39, 1, !dbg !3971
  store i32 %add52, i32* %head, align 4, !dbg !3971
  %40 = load i32, i32* %head, align 4, !dbg !3971
  %and53 = and i32 %40, 255, !dbg !3971
  store i32 %and53, i32* %head, align 4, !dbg !3971
  call void @llvm.dbg.declare(metadata i32* %end, metadata !3972, metadata !DIExpression()), !dbg !3974
  %41 = load i32, i32* %head, align 4, !dbg !3974
  %sub54 = sub i32 255, %41, !dbg !3974
  store i32 %sub54, i32* %end, align 4, !dbg !3974
  call void @llvm.dbg.declare(metadata i32* %n55, metadata !3975, metadata !DIExpression()), !dbg !3974
  %42 = load i32, i32* %end, align 4, !dbg !3974
  %43 = load i32, i32* %tail, align 4, !dbg !3974
  %add56 = add i32 %42, %43, !dbg !3974
  %and57 = and i32 %add56, 255, !dbg !3974
  store i32 %and57, i32* %n55, align 4, !dbg !3974
  %44 = load i32, i32* %n55, align 4, !dbg !3974
  %45 = load i32, i32* %end, align 4, !dbg !3974
  %cmp59 = icmp sle i32 %44, %45, !dbg !3974
  br i1 %cmp59, label %cond.true, label %cond.false, !dbg !3974

cond.true:                                        ; preds = %if.end
  %46 = load i32, i32* %n55, align 4, !dbg !3974
  br label %cond.end, !dbg !3974

cond.false:                                       ; preds = %if.end
  %47 = load i32, i32* %end, align 4, !dbg !3974
  %add61 = add i32 %47, 1, !dbg !3974
  br label %cond.end, !dbg !3974

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %46, %cond.true ], [ %add61, %cond.false ], !dbg !3974
  store i32 %cond, i32* %tmp58, align 4, !dbg !3974
  %48 = load i32, i32* %tmp58, align 4, !dbg !3974
  store i32 %48, i32* %c, align 4, !dbg !3976
  %49 = load i32, i32* %n, align 4, !dbg !3977
  %50 = load i32, i32* %c, align 4, !dbg !3979
  %cmp62 = icmp slt i32 %49, %50, !dbg !3980
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !3981

if.then64:                                        ; preds = %cond.end
  %51 = load i32, i32* %n, align 4, !dbg !3982
  store i32 %51, i32* %c, align 4, !dbg !3983
  br label %if.end65, !dbg !3984

if.end65:                                         ; preds = %if.then64, %cond.end
  %52 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3985
  %xmit66 = getelementptr inbounds %struct.iforce, %struct.iforce* %52, i32 0, i32 4, !dbg !3986
  %buf67 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %xmit66, i32 0, i32 0, !dbg !3987
  %53 = load i8*, i8** %buf67, align 8, !dbg !3987
  %54 = load i32, i32* %head, align 4, !dbg !3988
  %idxprom68 = sext i32 %54 to i64, !dbg !3985
  %arrayidx69 = getelementptr i8, i8* %53, i64 %idxprom68, !dbg !3985
  %55 = load i8*, i8** %data.addr, align 8, !dbg !3989
  %56 = load i32, i32* %c, align 4, !dbg !3990
  %conv70 = sext i32 %56 to i64, !dbg !3990
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx69, i8* align 1 %55, i64 %conv70, i1 false), !dbg !3991
  %57 = load i32, i32* %n, align 4, !dbg !3992
  %58 = load i32, i32* %c, align 4, !dbg !3994
  %cmp71 = icmp ne i32 %57, %58, !dbg !3995
  br i1 %cmp71, label %if.then73, label %if.end79, !dbg !3996

if.then73:                                        ; preds = %if.end65
  %59 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3997
  %xmit74 = getelementptr inbounds %struct.iforce, %struct.iforce* %59, i32 0, i32 4, !dbg !3999
  %buf75 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %xmit74, i32 0, i32 0, !dbg !4000
  %60 = load i8*, i8** %buf75, align 8, !dbg !4000
  %arrayidx76 = getelementptr i8, i8* %60, i64 0, !dbg !3997
  %61 = load i8*, i8** %data.addr, align 8, !dbg !4001
  %62 = load i32, i32* %c, align 4, !dbg !4002
  %idx.ext = sext i32 %62 to i64, !dbg !4003
  %add.ptr = getelementptr i8, i8* %61, i64 %idx.ext, !dbg !4003
  %63 = load i32, i32* %n, align 4, !dbg !4004
  %64 = load i32, i32* %c, align 4, !dbg !4005
  %sub77 = sub i32 %63, %64, !dbg !4006
  %conv78 = sext i32 %sub77 to i64, !dbg !4004
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx76, i8* align 1 %add.ptr, i64 %conv78, i1 false), !dbg !4007
  br label %if.end79, !dbg !4008

if.end79:                                         ; preds = %if.then73, %if.end65
  %65 = load i32, i32* %n, align 4, !dbg !4009
  %66 = load i32, i32* %head, align 4, !dbg !4009
  %add80 = add i32 %66, %65, !dbg !4009
  store i32 %add80, i32* %head, align 4, !dbg !4009
  %67 = load i32, i32* %head, align 4, !dbg !4009
  %and81 = and i32 %67, 255, !dbg !4009
  store i32 %and81, i32* %head, align 4, !dbg !4009
  %68 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4010
  %xmit_lock82 = getelementptr inbounds %struct.iforce, %struct.iforce* %68, i32 0, i32 3, !dbg !4011
  %69 = load i64, i64* %flags, align 8, !dbg !4012
  store %struct.spinlock* %xmit_lock82, %struct.spinlock** %lock.addr.i88, align 8
  store i64 %69, i64* %flags.addr.i89, align 8
  call void @llvm.dbg.declare(metadata !316, metadata !3934, metadata !DIExpression()) #5, !dbg !4013
  call void @llvm.dbg.declare(metadata !316, metadata !3938, metadata !DIExpression()) #5, !dbg !4013
  store i32 1, i32* %tmp.i90, align 4, !dbg !4013
  %70 = load i32, i32* %tmp.i90, align 4, !dbg !4013
  call void @llvm.dbg.declare(metadata !316, metadata !3939, metadata !DIExpression()) #5, !dbg !4014
  call void @llvm.dbg.declare(metadata !316, metadata !3945, metadata !DIExpression()) #5, !dbg !4014
  store i32 1, i32* %tmp8.i91, align 4, !dbg !4014
  %71 = load i32, i32* %tmp8.i91, align 4, !dbg !4014
  %72 = load i64, i64* %flags.addr.i89, align 8, !dbg !4015
  call void @arch_local_irq_restore(i64 %72) #10, !dbg !4015
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4016, !srcloc !3949
  %73 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i88, align 8, !dbg !4017
  %74 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %73, i32 0, i32 0, !dbg !4017
  %rlock.i92 = bitcast %union.anon.0* %74 to %struct.raw_spinlock*, !dbg !4017
  %75 = load i32, i32* %empty, align 4, !dbg !4018
  %tobool = icmp ne i32 %75, 0, !dbg !4018
  br i1 %tobool, label %if.then83, label %if.end85, !dbg !4020

if.then83:                                        ; preds = %if.end79
  %76 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4021
  %xport_ops = getelementptr inbounds %struct.iforce, %struct.iforce* %76, i32 0, i32 2, !dbg !4022
  %77 = load %struct.iforce_xport_ops*, %struct.iforce_xport_ops** %xport_ops, align 8, !dbg !4022
  %xmit84 = getelementptr inbounds %struct.iforce_xport_ops, %struct.iforce_xport_ops* %77, i32 0, i32 0, !dbg !4023
  %78 = load void (%struct.iforce*)*, void (%struct.iforce*)** %xmit84, align 8, !dbg !4023
  %79 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4024
  call void %78(%struct.iforce* %79) #8, !dbg !4021
  br label %if.end85, !dbg !4021

if.end85:                                         ; preds = %if.then83, %if.end79
  store i32 0, i32* %retval, align 4, !dbg !4025
  br label %return, !dbg !4025

return:                                           ; preds = %if.end85, %if.then
  %80 = load i32, i32* %retval, align 4, !dbg !4026
  ret i32 %80, !dbg !4026
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !4027 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !4031, metadata !DIExpression()), !dbg !4032
  %call = call i64 @arch_local_save_flags() #8, !dbg !4033
  store i64 %call, i64* %f, align 8, !dbg !4034
  call void @arch_local_irq_disable() #8, !dbg !4035
  %0 = load i64, i64* %f, align 8, !dbg !4036
  ret i64 %0, !dbg !4037
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @iforce_control_playback(%struct.iforce* %iforce, i16 zeroext %id, i32 %value) #0 !dbg !4038 {
entry:
  %iforce.addr = alloca %struct.iforce*, align 8
  %id.addr = alloca i16, align 2
  %value.addr = alloca i32, align 4
  %data = alloca [3 x i8], align 1
  store %struct.iforce* %iforce, %struct.iforce** %iforce.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce.addr, metadata !4041, metadata !DIExpression()), !dbg !4042
  store i16 %id, i16* %id.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %id.addr, metadata !4043, metadata !DIExpression()), !dbg !4044
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !4045, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.declare(metadata [3 x i8]* %data, metadata !4047, metadata !DIExpression()), !dbg !4049
  %0 = load i16, i16* %id.addr, align 2, !dbg !4050
  %conv = zext i16 %0 to i32, !dbg !4050
  %and = and i32 %conv, 255, !dbg !4050
  %conv1 = trunc i32 %and to i8, !dbg !4050
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %data, i64 0, i64 0, !dbg !4051
  store i8 %conv1, i8* %arrayidx, align 1, !dbg !4052
  %1 = load i32, i32* %value.addr, align 4, !dbg !4053
  %cmp = icmp ugt i32 %1, 0, !dbg !4054
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4055

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %value.addr, align 4, !dbg !4056
  %cmp3 = icmp ugt i32 %2, 1, !dbg !4057
  %3 = zext i1 %cmp3 to i64, !dbg !4058
  %cond = select i1 %cmp3, i32 65, i32 1, !dbg !4058
  br label %cond.end, !dbg !4055

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4055

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi i32 [ %cond, %cond.true ], [ 0, %cond.false ], !dbg !4055
  %conv6 = trunc i32 %cond5 to i8, !dbg !4055
  %arrayidx7 = getelementptr [3 x i8], [3 x i8]* %data, i64 0, i64 1, !dbg !4059
  store i8 %conv6, i8* %arrayidx7, align 1, !dbg !4060
  %4 = load i32, i32* %value.addr, align 4, !dbg !4061
  %and8 = and i32 %4, 255, !dbg !4061
  %conv9 = trunc i32 %and8 to i8, !dbg !4061
  %arrayidx10 = getelementptr [3 x i8], [3 x i8]* %data, i64 0, i64 2, !dbg !4062
  store i8 %conv9, i8* %arrayidx10, align 1, !dbg !4063
  %5 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4064
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %data, i64 0, i64 0, !dbg !4065
  %call = call i32 @iforce_send_packet(%struct.iforce* %5, i16 zeroext 16643, i8* %arraydecay) #8, !dbg !4066
  ret i32 %call, !dbg !4067
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @iforce_process_packet(%struct.iforce* %iforce, i8 zeroext %packet_id, i8* %data, i64 %len) #0 !dbg !4068 {
entry:
  %p.addr.i.i54 = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i54, metadata !4071, metadata !DIExpression()), !dbg !4078
  %p.addr.i55 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i55, metadata !4086, metadata !DIExpression()), !dbg !4087
  %p.addr.i.i52 = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i52, metadata !4071, metadata !DIExpression()), !dbg !4088
  %p.addr.i53 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i53, metadata !4086, metadata !DIExpression()), !dbg !4093
  %p.addr.i.i50 = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i50, metadata !4071, metadata !DIExpression()), !dbg !4094
  %p.addr.i51 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i51, metadata !4086, metadata !DIExpression()), !dbg !4097
  %p.addr.i.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i, metadata !4071, metadata !DIExpression()), !dbg !4098
  %p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i, metadata !4086, metadata !DIExpression()), !dbg !4101
  %iforce.addr = alloca %struct.iforce*, align 8
  %packet_id.addr = alloca i8, align 1
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %dev = alloca %struct.input_dev*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.iforce* %iforce, %struct.iforce** %iforce.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce.addr, metadata !4102, metadata !DIExpression()), !dbg !4103
  store i8 %packet_id, i8* %packet_id.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %packet_id.addr, metadata !4104, metadata !DIExpression()), !dbg !4105
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4106, metadata !DIExpression()), !dbg !4107
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !4108, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev, metadata !4110, metadata !DIExpression()), !dbg !4111
  %0 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4112
  %dev1 = getelementptr inbounds %struct.iforce, %struct.iforce* %0, i32 0, i32 0, !dbg !4113
  %1 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8, !dbg !4113
  store %struct.input_dev* %1, %struct.input_dev** %dev, align 8, !dbg !4111
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4114, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.declare(metadata i32* %j, metadata !4116, metadata !DIExpression()), !dbg !4117
  %2 = load i8, i8* %packet_id.addr, align 1, !dbg !4118
  %conv = zext i8 %2 to i32, !dbg !4118
  switch i32 %conv, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb11
    i32 2, label %sw.bb20
  ], !dbg !4119

sw.bb:                                            ; preds = %entry
  %3 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4120
  %4 = load i8*, i8** %data.addr, align 8, !dbg !4121
  store i8* %4, i8** %p.addr.i, align 8
  %5 = load i8*, i8** %p.addr.i, align 8, !dbg !4122
  %6 = bitcast i8* %5 to i16*, !dbg !4123
  store i16* %6, i16** %p.addr.i.i, align 8
  %7 = load i16*, i16** %p.addr.i.i, align 8, !dbg !4124
  %8 = load i16, i16* %7, align 2, !dbg !4125
  %conv2 = sext i16 %8 to i32, !dbg !4126
  call void @input_report_abs(%struct.input_dev* %3, i32 0, i32 %conv2) #8, !dbg !4127
  %9 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4128
  %10 = load i8*, i8** %data.addr, align 8, !dbg !4129
  %add.ptr = getelementptr i8, i8* %10, i64 2, !dbg !4130
  store i8* %add.ptr, i8** %p.addr.i51, align 8
  %11 = load i8*, i8** %p.addr.i51, align 8, !dbg !4131
  %12 = bitcast i8* %11 to i16*, !dbg !4132
  store i16* %12, i16** %p.addr.i.i50, align 8
  %13 = load i16*, i16** %p.addr.i.i50, align 8, !dbg !4133
  %14 = load i16, i16* %13, align 2, !dbg !4134
  %conv4 = sext i16 %14 to i32, !dbg !4135
  call void @input_report_abs(%struct.input_dev* %9, i32 1, i32 %conv4) #8, !dbg !4136
  %15 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4137
  %16 = load i8*, i8** %data.addr, align 8, !dbg !4138
  %arrayidx = getelementptr i8, i8* %16, i64 4, !dbg !4138
  %17 = load i8, i8* %arrayidx, align 1, !dbg !4138
  %conv5 = zext i8 %17 to i32, !dbg !4138
  %sub = sub i32 255, %conv5, !dbg !4139
  call void @input_report_abs(%struct.input_dev* %15, i32 6, i32 %sub) #8, !dbg !4140
  %18 = load i64, i64* %len.addr, align 8, !dbg !4141
  %cmp = icmp uge i64 %18, 8, !dbg !4143
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4144

land.lhs.true:                                    ; preds = %sw.bb
  %19 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4145
  %absbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %19, i32 0, i32 8, !dbg !4146
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %absbit, i64 0, i64 0, !dbg !4145
  %call7 = call zeroext i1 @test_bit(i64 7, i64* %arraydecay) #8, !dbg !4147
  br i1 %call7, label %if.then, label %if.end, !dbg !4148

if.then:                                          ; preds = %land.lhs.true
  %20 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4149
  %21 = load i8*, i8** %data.addr, align 8, !dbg !4150
  %arrayidx9 = getelementptr i8, i8* %21, i64 7, !dbg !4150
  %22 = load i8, i8* %arrayidx9, align 1, !dbg !4150
  %conv10 = sext i8 %22 to i32, !dbg !4151
  call void @input_report_abs(%struct.input_dev* %20, i32 7, i32 %conv10) #8, !dbg !4152
  br label %if.end, !dbg !4152

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb
  %23 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4153
  %24 = load i8*, i8** %data.addr, align 8, !dbg !4154
  call void @iforce_report_hats_buttons(%struct.iforce* %23, i8* %24) #8, !dbg !4155
  %25 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4156
  call void @input_sync(%struct.input_dev* %25) #8, !dbg !4157
  br label %sw.epilog, !dbg !4158

sw.bb11:                                          ; preds = %entry
  %26 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4159
  %27 = load i8*, i8** %data.addr, align 8, !dbg !4160
  store i8* %27, i8** %p.addr.i55, align 8
  %28 = load i8*, i8** %p.addr.i55, align 8, !dbg !4161
  %29 = bitcast i8* %28 to i16*, !dbg !4162
  store i16* %29, i16** %p.addr.i.i54, align 8
  %30 = load i16*, i16** %p.addr.i.i54, align 8, !dbg !4163
  %31 = load i16, i16* %30, align 2, !dbg !4164
  %conv13 = sext i16 %31 to i32, !dbg !4165
  call void @input_report_abs(%struct.input_dev* %26, i32 8, i32 %conv13) #8, !dbg !4166
  %32 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4167
  %33 = load i8*, i8** %data.addr, align 8, !dbg !4168
  %arrayidx14 = getelementptr i8, i8* %33, i64 2, !dbg !4168
  %34 = load i8, i8* %arrayidx14, align 1, !dbg !4168
  %conv15 = zext i8 %34 to i32, !dbg !4168
  %sub16 = sub i32 255, %conv15, !dbg !4169
  call void @input_report_abs(%struct.input_dev* %32, i32 9, i32 %sub16) #8, !dbg !4170
  %35 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4171
  %36 = load i8*, i8** %data.addr, align 8, !dbg !4172
  %arrayidx17 = getelementptr i8, i8* %36, i64 3, !dbg !4172
  %37 = load i8, i8* %arrayidx17, align 1, !dbg !4172
  %conv18 = zext i8 %37 to i32, !dbg !4172
  %sub19 = sub i32 255, %conv18, !dbg !4173
  call void @input_report_abs(%struct.input_dev* %35, i32 10, i32 %sub19) #8, !dbg !4174
  %38 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4175
  %39 = load i8*, i8** %data.addr, align 8, !dbg !4176
  call void @iforce_report_hats_buttons(%struct.iforce* %38, i8* %39) #8, !dbg !4177
  %40 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4178
  call void @input_sync(%struct.input_dev* %40) #8, !dbg !4179
  br label %sw.epilog, !dbg !4180

sw.bb20:                                          ; preds = %entry
  %41 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4181
  %42 = load i8*, i8** %data.addr, align 8, !dbg !4182
  %arrayidx21 = getelementptr i8, i8* %42, i64 0, !dbg !4182
  %43 = load i8, i8* %arrayidx21, align 1, !dbg !4182
  %conv22 = zext i8 %43 to i32, !dbg !4182
  %and = and i32 %conv22, 2, !dbg !4183
  call void @input_report_key(%struct.input_dev* %41, i32 303, i32 %and) #8, !dbg !4184
  %44 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4185
  call void @input_sync(%struct.input_dev* %44) #8, !dbg !4186
  %45 = load i8*, i8** %data.addr, align 8, !dbg !4187
  %arrayidx23 = getelementptr i8, i8* %45, i64 1, !dbg !4187
  %46 = load i8, i8* %arrayidx23, align 1, !dbg !4187
  %conv24 = zext i8 %46 to i32, !dbg !4187
  %and25 = and i32 %conv24, 127, !dbg !4188
  store i32 %and25, i32* %i, align 4, !dbg !4189
  %47 = load i8*, i8** %data.addr, align 8, !dbg !4190
  %arrayidx26 = getelementptr i8, i8* %47, i64 1, !dbg !4190
  %48 = load i8, i8* %arrayidx26, align 1, !dbg !4190
  %conv27 = zext i8 %48 to i32, !dbg !4190
  %and28 = and i32 %conv27, 128, !dbg !4192
  %tobool = icmp ne i32 %and28, 0, !dbg !4192
  br i1 %tobool, label %if.then29, label %if.else, !dbg !4193

if.then29:                                        ; preds = %sw.bb20
  %49 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4194
  %core_effects = getelementptr inbounds %struct.iforce, %struct.iforce* %49, i32 0, i32 9, !dbg !4197
  %50 = load i32, i32* %i, align 4, !dbg !4198
  %idxprom = sext i32 %50 to i64, !dbg !4194
  %arrayidx30 = getelementptr [32 x %struct.iforce_core_effect], [32 x %struct.iforce_core_effect]* %core_effects, i64 0, i64 %idxprom, !dbg !4194
  %flags = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %arrayidx30, i32 0, i32 2, !dbg !4199
  %arraydecay31 = getelementptr inbounds [1 x i64], [1 x i64]* %flags, i64 0, i64 0, !dbg !4194
  %call32 = call zeroext i1 @test_and_set_bit(i64 3, i64* %arraydecay31) #8, !dbg !4200
  br i1 %call32, label %if.end34, label %if.then33, !dbg !4201

if.then33:                                        ; preds = %if.then29
  %51 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4202
  %52 = load i32, i32* %i, align 4, !dbg !4204
  call void @input_report_ff_status(%struct.input_dev* %51, i32 %52, i32 1) #8, !dbg !4205
  br label %if.end34, !dbg !4206

if.end34:                                         ; preds = %if.then33, %if.then29
  br label %if.end43, !dbg !4207

if.else:                                          ; preds = %sw.bb20
  %53 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4208
  %core_effects35 = getelementptr inbounds %struct.iforce, %struct.iforce* %53, i32 0, i32 9, !dbg !4210
  %54 = load i32, i32* %i, align 4, !dbg !4211
  %idxprom36 = sext i32 %54 to i64, !dbg !4208
  %arrayidx37 = getelementptr [32 x %struct.iforce_core_effect], [32 x %struct.iforce_core_effect]* %core_effects35, i64 0, i64 %idxprom36, !dbg !4208
  %flags38 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %arrayidx37, i32 0, i32 2, !dbg !4212
  %arraydecay39 = getelementptr inbounds [1 x i64], [1 x i64]* %flags38, i64 0, i64 0, !dbg !4208
  %call40 = call zeroext i1 @test_and_clear_bit(i64 3, i64* %arraydecay39) #8, !dbg !4213
  br i1 %call40, label %if.then41, label %if.end42, !dbg !4214

if.then41:                                        ; preds = %if.else
  %55 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4215
  %56 = load i32, i32* %i, align 4, !dbg !4217
  call void @input_report_ff_status(%struct.input_dev* %55, i32 %56, i32 0) #8, !dbg !4218
  br label %if.end42, !dbg !4219

if.end42:                                         ; preds = %if.then41, %if.else
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end34
  store i32 3, i32* %j, align 4, !dbg !4220
  br label %for.cond, !dbg !4221

for.cond:                                         ; preds = %for.inc, %if.end43
  %57 = load i32, i32* %j, align 4, !dbg !4222
  %conv44 = sext i32 %57 to i64, !dbg !4222
  %58 = load i64, i64* %len.addr, align 8, !dbg !4223
  %cmp45 = icmp ult i64 %conv44, %58, !dbg !4224
  br i1 %cmp45, label %for.body, label %for.end, !dbg !4225

for.body:                                         ; preds = %for.cond
  %59 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4226
  %60 = load i8*, i8** %data.addr, align 8, !dbg !4227
  %61 = load i32, i32* %j, align 4, !dbg !4228
  %idx.ext = sext i32 %61 to i64, !dbg !4229
  %add.ptr47 = getelementptr i8, i8* %60, i64 %idx.ext, !dbg !4229
  store i8* %add.ptr47, i8** %p.addr.i53, align 8
  %62 = load i8*, i8** %p.addr.i53, align 8, !dbg !4230
  %63 = bitcast i8* %62 to i16*, !dbg !4231
  store i16* %63, i16** %p.addr.i.i52, align 8
  %64 = load i16*, i16** %p.addr.i.i52, align 8, !dbg !4232
  %65 = load i16, i16* %64, align 2, !dbg !4233
  %call49 = call i32 @mark_core_as_ready(%struct.iforce* %59, i16 zeroext %65) #8, !dbg !4234
  br label %for.inc, !dbg !4234

for.inc:                                          ; preds = %for.body
  %66 = load i32, i32* %j, align 4, !dbg !4235
  %add = add i32 %66, 2, !dbg !4235
  store i32 %add, i32* %j, align 4, !dbg !4235
  br label %for.cond, !dbg !4236, !llvm.loop !4237

for.end:                                          ; preds = %for.cond
  br label %sw.epilog, !dbg !4239

sw.epilog:                                        ; preds = %entry, %for.end, %sw.bb11, %if.end
  ret void, !dbg !4240
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_abs(%struct.input_dev* %dev, i32 %code, i32 %value) #0 !dbg !4241 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4244, metadata !DIExpression()), !dbg !4245
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !4246, metadata !DIExpression()), !dbg !4247
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !4248, metadata !DIExpression()), !dbg !4249
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4250
  %1 = load i32, i32* %code.addr, align 4, !dbg !4251
  %2 = load i32, i32* %value.addr, align 4, !dbg !4252
  call void @input_event(%struct.input_dev* %0, i32 3, i32 %1, i32 %2) #8, !dbg !4253
  ret void, !dbg !4254
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !4255 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !4262, metadata !DIExpression()), !dbg !4265
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !4267, metadata !DIExpression()), !dbg !4268
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !4269, metadata !DIExpression()), !dbg !4270
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4271, metadata !DIExpression()), !dbg !4273
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4275, metadata !DIExpression()), !dbg !4276
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4277, metadata !DIExpression()), !dbg !4285
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4287, metadata !DIExpression()), !dbg !4288
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4289, metadata !DIExpression()), !dbg !4290
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4291, metadata !DIExpression()), !dbg !4292
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4293
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4294
  %div = sdiv i64 %1, 64, !dbg !4294
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4295
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4293
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4296
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4297
  %conv.i = trunc i64 %4 to i32, !dbg !4297
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #10, !dbg !4298
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4299
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4299
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #10, !dbg !4299
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4300
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !4300
  br i1 %8, label %cond.true, label %cond.false, !dbg !4300

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !4300
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !4300
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !4301
  %and.i = and i64 %11, 63, !dbg !4302
  %shl.i = shl i64 1, %and.i, !dbg !4303
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !4304
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4305
  %shr.i = ashr i64 %13, 6, !dbg !4306
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !4304
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !4304
  %and1.i = and i64 %shl.i, %14, !dbg !4307
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !4308
  %conv = zext i1 %cmp.i to i32, !dbg !4300
  br label %cond.end, !dbg !4300

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !4300
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !4300
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !4309
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !4310
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #5, !dbg !4311, !srcloc !4312
  store i8 %19, i8* %oldbit.i, align 1, !dbg !4311
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !4313
  %tobool.i = trunc i8 %20 to i1, !dbg !4313
  %conv2 = zext i1 %tobool.i to i32, !dbg !4300
  br label %cond.end, !dbg !4300

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4300
  %tobool = icmp ne i32 %cond, 0, !dbg !4300
  ret i1 %tobool, !dbg !4314
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @iforce_report_hats_buttons(%struct.iforce* %iforce, i8* %data) #0 !dbg !4315 {
entry:
  %iforce.addr = alloca %struct.iforce*, align 8
  %data.addr = alloca i8*, align 8
  %dev = alloca %struct.input_dev*, align 8
  %i = alloca i32, align 4
  %btns = alloca i8, align 1
  store %struct.iforce* %iforce, %struct.iforce** %iforce.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce.addr, metadata !4318, metadata !DIExpression()), !dbg !4319
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4320, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev, metadata !4322, metadata !DIExpression()), !dbg !4323
  %0 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4324
  %dev1 = getelementptr inbounds %struct.iforce, %struct.iforce* %0, i32 0, i32 0, !dbg !4325
  %1 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8, !dbg !4325
  store %struct.input_dev* %1, %struct.input_dev** %dev, align 8, !dbg !4323
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4326, metadata !DIExpression()), !dbg !4327
  %2 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4328
  %3 = load i8*, i8** %data.addr, align 8, !dbg !4329
  %arrayidx = getelementptr i8, i8* %3, i64 6, !dbg !4329
  %4 = load i8, i8* %arrayidx, align 1, !dbg !4329
  %conv = zext i8 %4 to i32, !dbg !4329
  %shr = ashr i32 %conv, 4, !dbg !4330
  %idxprom = sext i32 %shr to i64, !dbg !4331
  %arrayidx2 = getelementptr [16 x %struct.anon.65], [16 x %struct.anon.65]* bitcast (<{ [8 x %struct.anon.65], [8 x %struct.anon.65] }>* @iforce_hat_to_axis to [16 x %struct.anon.65]*), i64 0, i64 %idxprom, !dbg !4331
  %x = getelementptr inbounds %struct.anon.65, %struct.anon.65* %arrayidx2, i32 0, i32 0, !dbg !4332
  %5 = load i32, i32* %x, align 8, !dbg !4332
  call void @input_report_abs(%struct.input_dev* %2, i32 16, i32 %5) #8, !dbg !4333
  %6 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4334
  %7 = load i8*, i8** %data.addr, align 8, !dbg !4335
  %arrayidx3 = getelementptr i8, i8* %7, i64 6, !dbg !4335
  %8 = load i8, i8* %arrayidx3, align 1, !dbg !4335
  %conv4 = zext i8 %8 to i32, !dbg !4335
  %shr5 = ashr i32 %conv4, 4, !dbg !4336
  %idxprom6 = sext i32 %shr5 to i64, !dbg !4337
  %arrayidx7 = getelementptr [16 x %struct.anon.65], [16 x %struct.anon.65]* bitcast (<{ [8 x %struct.anon.65], [8 x %struct.anon.65] }>* @iforce_hat_to_axis to [16 x %struct.anon.65]*), i64 0, i64 %idxprom6, !dbg !4337
  %y = getelementptr inbounds %struct.anon.65, %struct.anon.65* %arrayidx7, i32 0, i32 1, !dbg !4338
  %9 = load i32, i32* %y, align 4, !dbg !4338
  call void @input_report_abs(%struct.input_dev* %6, i32 17, i32 %9) #8, !dbg !4339
  store i32 0, i32* %i, align 4, !dbg !4340
  br label %for.cond, !dbg !4342

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4343
  %type = getelementptr inbounds %struct.iforce, %struct.iforce* %10, i32 0, i32 1, !dbg !4345
  %11 = load %struct.iforce_device*, %struct.iforce_device** %type, align 8, !dbg !4345
  %btn = getelementptr inbounds %struct.iforce_device, %struct.iforce_device* %11, i32 0, i32 3, !dbg !4346
  %12 = load i16*, i16** %btn, align 8, !dbg !4346
  %13 = load i32, i32* %i, align 4, !dbg !4347
  %idxprom8 = sext i32 %13 to i64, !dbg !4343
  %arrayidx9 = getelementptr i16, i16* %12, i64 %idxprom8, !dbg !4343
  %14 = load i16, i16* %arrayidx9, align 2, !dbg !4343
  %conv10 = sext i16 %14 to i32, !dbg !4343
  %cmp = icmp sge i32 %conv10, 0, !dbg !4348
  br i1 %cmp, label %for.body, label %for.end, !dbg !4349

for.body:                                         ; preds = %for.cond
  %15 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4350
  %16 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4351
  %type12 = getelementptr inbounds %struct.iforce, %struct.iforce* %16, i32 0, i32 1, !dbg !4352
  %17 = load %struct.iforce_device*, %struct.iforce_device** %type12, align 8, !dbg !4352
  %btn13 = getelementptr inbounds %struct.iforce_device, %struct.iforce_device* %17, i32 0, i32 3, !dbg !4353
  %18 = load i16*, i16** %btn13, align 8, !dbg !4353
  %19 = load i32, i32* %i, align 4, !dbg !4354
  %idxprom14 = sext i32 %19 to i64, !dbg !4351
  %arrayidx15 = getelementptr i16, i16* %18, i64 %idxprom14, !dbg !4351
  %20 = load i16, i16* %arrayidx15, align 2, !dbg !4351
  %conv16 = sext i16 %20 to i32, !dbg !4351
  %21 = load i8*, i8** %data.addr, align 8, !dbg !4355
  %22 = load i32, i32* %i, align 4, !dbg !4356
  %shr17 = ashr i32 %22, 3, !dbg !4357
  %add = add i32 %shr17, 5, !dbg !4358
  %idxprom18 = sext i32 %add to i64, !dbg !4355
  %arrayidx19 = getelementptr i8, i8* %21, i64 %idxprom18, !dbg !4355
  %23 = load i8, i8* %arrayidx19, align 1, !dbg !4355
  %conv20 = zext i8 %23 to i32, !dbg !4355
  %24 = load i32, i32* %i, align 4, !dbg !4359
  %and = and i32 %24, 7, !dbg !4360
  %shl = shl i32 1, %and, !dbg !4361
  %and21 = and i32 %conv20, %shl, !dbg !4362
  call void @input_report_key(%struct.input_dev* %15, i32 %conv16, i32 %and21) #8, !dbg !4363
  br label %for.inc, !dbg !4363

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4, !dbg !4364
  %inc = add i32 %25, 1, !dbg !4364
  store i32 %inc, i32* %i, align 4, !dbg !4364
  br label %for.cond, !dbg !4365, !llvm.loop !4366

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* %i, align 4, !dbg !4368
  %cmp22 = icmp sle i32 %26, 8, !dbg !4370
  br i1 %cmp22, label %if.then, label %if.end53, !dbg !4371

if.then:                                          ; preds = %for.end
  call void @llvm.dbg.declare(metadata i8* %btns, metadata !4372, metadata !DIExpression()), !dbg !4374
  %27 = load i8*, i8** %data.addr, align 8, !dbg !4375
  %arrayidx24 = getelementptr i8, i8* %27, i64 6, !dbg !4375
  %28 = load i8, i8* %arrayidx24, align 1, !dbg !4375
  store i8 %28, i8* %btns, align 1, !dbg !4374
  %29 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4376
  %absbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %29, i32 0, i32 8, !dbg !4378
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %absbit, i64 0, i64 0, !dbg !4376
  %call = call zeroext i1 @test_bit(i64 18, i64* %arraydecay) #8, !dbg !4379
  br i1 %call, label %if.then25, label %if.end35, !dbg !4380

if.then25:                                        ; preds = %if.then
  %30 = load i8, i8* %btns, align 1, !dbg !4381
  %conv26 = zext i8 %30 to i64, !dbg !4381
  %and27 = and i64 %conv26, 8, !dbg !4384
  %tobool = icmp ne i64 %and27, 0, !dbg !4384
  br i1 %tobool, label %if.then28, label %if.else, !dbg !4385

if.then28:                                        ; preds = %if.then25
  %31 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4386
  call void @input_report_abs(%struct.input_dev* %31, i32 18, i32 -1) #8, !dbg !4387
  br label %if.end34, !dbg !4387

if.else:                                          ; preds = %if.then25
  %32 = load i8, i8* %btns, align 1, !dbg !4388
  %conv29 = zext i8 %32 to i64, !dbg !4388
  %and30 = and i64 %conv29, 2, !dbg !4390
  %tobool31 = icmp ne i64 %and30, 0, !dbg !4390
  br i1 %tobool31, label %if.then32, label %if.else33, !dbg !4391

if.then32:                                        ; preds = %if.else
  %33 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4392
  call void @input_report_abs(%struct.input_dev* %33, i32 18, i32 1) #8, !dbg !4393
  br label %if.end, !dbg !4393

if.else33:                                        ; preds = %if.else
  %34 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4394
  call void @input_report_abs(%struct.input_dev* %34, i32 18, i32 0) #8, !dbg !4395
  br label %if.end

if.end:                                           ; preds = %if.else33, %if.then32
  br label %if.end34

if.end34:                                         ; preds = %if.end, %if.then28
  br label %if.end35, !dbg !4396

if.end35:                                         ; preds = %if.end34, %if.then
  %35 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4397
  %absbit36 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %35, i32 0, i32 8, !dbg !4399
  %arraydecay37 = getelementptr inbounds [1 x i64], [1 x i64]* %absbit36, i64 0, i64 0, !dbg !4397
  %call38 = call zeroext i1 @test_bit(i64 19, i64* %arraydecay37) #8, !dbg !4400
  br i1 %call38, label %if.then39, label %if.end52, !dbg !4401

if.then39:                                        ; preds = %if.end35
  %36 = load i8, i8* %btns, align 1, !dbg !4402
  %conv40 = zext i8 %36 to i64, !dbg !4402
  %and41 = and i64 %conv40, 1, !dbg !4405
  %tobool42 = icmp ne i64 %and41, 0, !dbg !4405
  br i1 %tobool42, label %if.then43, label %if.else44, !dbg !4406

if.then43:                                        ; preds = %if.then39
  %37 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4407
  call void @input_report_abs(%struct.input_dev* %37, i32 19, i32 -1) #8, !dbg !4408
  br label %if.end51, !dbg !4408

if.else44:                                        ; preds = %if.then39
  %38 = load i8, i8* %btns, align 1, !dbg !4409
  %conv45 = zext i8 %38 to i64, !dbg !4409
  %and46 = and i64 %conv45, 4, !dbg !4411
  %tobool47 = icmp ne i64 %and46, 0, !dbg !4411
  br i1 %tobool47, label %if.then48, label %if.else49, !dbg !4412

if.then48:                                        ; preds = %if.else44
  %39 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4413
  call void @input_report_abs(%struct.input_dev* %39, i32 19, i32 1) #8, !dbg !4414
  br label %if.end50, !dbg !4414

if.else49:                                        ; preds = %if.else44
  %40 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4415
  call void @input_report_abs(%struct.input_dev* %40, i32 19, i32 0) #8, !dbg !4416
  br label %if.end50

if.end50:                                         ; preds = %if.else49, %if.then48
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then43
  br label %if.end52, !dbg !4417

if.end52:                                         ; preds = %if.end51, %if.end35
  br label %if.end53, !dbg !4418

if.end53:                                         ; preds = %if.end52, %for.end
  ret void, !dbg !4419
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_sync(%struct.input_dev* %dev) #0 !dbg !4420 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4421, metadata !DIExpression()), !dbg !4422
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4423
  call void @input_event(%struct.input_dev* %0, i32 0, i32 0, i32 0) #8, !dbg !4424
  ret void, !dbg !4425
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_key(%struct.input_dev* %dev, i32 %code, i32 %value) #0 !dbg !4426 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4427, metadata !DIExpression()), !dbg !4428
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !4429, metadata !DIExpression()), !dbg !4430
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !4431, metadata !DIExpression()), !dbg !4432
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4433
  %1 = load i32, i32* %code.addr, align 4, !dbg !4434
  %2 = load i32, i32* %value.addr, align 4, !dbg !4435
  %tobool = icmp ne i32 %2, 0, !dbg !4436
  %lnot = xor i1 %tobool, true, !dbg !4436
  %lnot1 = xor i1 %lnot, true, !dbg !4437
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4437
  call void @input_event(%struct.input_dev* %0, i32 1, i32 %1, i32 %lnot.ext) #8, !dbg !4438
  ret void, !dbg !4439
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_and_set_bit(i64 %nr, i64* %addr) #0 !dbg !4440 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4445, metadata !DIExpression()), !dbg !4447
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4449, metadata !DIExpression()), !dbg !4450
  %c.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i, metadata !4451, metadata !DIExpression()), !dbg !4453
  %tmp.i = alloca i8, align 1
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4454, metadata !DIExpression()), !dbg !4456
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4458, metadata !DIExpression()), !dbg !4459
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4460, metadata !DIExpression()), !dbg !4461
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4462, metadata !DIExpression()), !dbg !4463
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4464
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4465
  %div = sdiv i64 %1, 64, !dbg !4465
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4466
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4464
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4467
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4468
  %conv.i = trunc i64 %4 to i32, !dbg !4468
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #10, !dbg !4469
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4470
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4470
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #10, !dbg !4470
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4471
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4472
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !4453
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !4453
  %11 = call i8 asm sideeffect " btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64* %9) #5, !dbg !4453, !srcloc !4473
  store i8 %11, i8* %c.i, align 1, !dbg !4453
  %12 = load i8, i8* %c.i, align 1, !dbg !4453
  %tobool.i = trunc i8 %12 to i1, !dbg !4453
  %frombool.i = zext i1 %tobool.i to i8, !dbg !4453
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !4453
  %13 = load i8, i8* %tmp.i, align 1, !dbg !4453
  %tobool1.i = trunc i8 %13 to i1, !dbg !4453
  ret i1 %tobool1.i, !dbg !4474
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_ff_status(%struct.input_dev* %dev, i32 %code, i32 %value) #0 !dbg !4475 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4476, metadata !DIExpression()), !dbg !4477
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !4478, metadata !DIExpression()), !dbg !4479
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !4480, metadata !DIExpression()), !dbg !4481
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4482
  %1 = load i32, i32* %code.addr, align 4, !dbg !4483
  %2 = load i32, i32* %value.addr, align 4, !dbg !4484
  call void @input_event(%struct.input_dev* %0, i32 23, i32 %1, i32 %2) #8, !dbg !4485
  ret void, !dbg !4486
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_and_clear_bit(i64 %nr, i64* %addr) #0 !dbg !4487 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4488, metadata !DIExpression()), !dbg !4490
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4492, metadata !DIExpression()), !dbg !4493
  %c.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i, metadata !4494, metadata !DIExpression()), !dbg !4496
  %tmp.i = alloca i8, align 1
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4454, metadata !DIExpression()), !dbg !4497
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4458, metadata !DIExpression()), !dbg !4499
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4500, metadata !DIExpression()), !dbg !4501
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4502, metadata !DIExpression()), !dbg !4503
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4504
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4505
  %div = sdiv i64 %1, 64, !dbg !4505
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4506
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4504
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4507
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4508
  %conv.i = trunc i64 %4 to i32, !dbg !4508
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #10, !dbg !4509
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4510
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4510
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #10, !dbg !4510
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4511
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4512
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !4496
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !4496
  %11 = call i8 asm sideeffect " btrq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64* %9) #5, !dbg !4496, !srcloc !4513
  store i8 %11, i8* %c.i, align 1, !dbg !4496
  %12 = load i8, i8* %c.i, align 1, !dbg !4496
  %tobool.i = trunc i8 %12 to i1, !dbg !4496
  %frombool.i = zext i1 %tobool.i to i8, !dbg !4496
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !4496
  %13 = load i8, i8* %tmp.i, align 1, !dbg !4496
  %tobool1.i = trunc i8 %13 to i1, !dbg !4496
  ret i1 %tobool1.i, !dbg !4514
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mark_core_as_ready(%struct.iforce* %iforce, i16 zeroext %addr) #0 !dbg !4515 {
entry:
  %retval = alloca i32, align 4
  %iforce.addr = alloca %struct.iforce*, align 8
  %addr.addr = alloca i16, align 2
  %i = alloca i32, align 4
  store %struct.iforce* %iforce, %struct.iforce** %iforce.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce.addr, metadata !4518, metadata !DIExpression()), !dbg !4519
  store i16 %addr, i16* %addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %addr.addr, metadata !4520, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4522, metadata !DIExpression()), !dbg !4523
  %0 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4524
  %dev = getelementptr inbounds %struct.iforce, %struct.iforce* %0, i32 0, i32 0, !dbg !4526
  %1 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4526
  %ff = getelementptr inbounds %struct.input_dev, %struct.input_dev* %1, i32 0, i32 20, !dbg !4527
  %2 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4527
  %tobool = icmp ne %struct.ff_device* %2, null, !dbg !4524
  br i1 %tobool, label %if.end, label %if.then, !dbg !4528

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4529
  br label %return, !dbg !4529

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !4530
  br label %for.cond, !dbg !4532

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !dbg !4533
  %4 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4535
  %dev1 = getelementptr inbounds %struct.iforce, %struct.iforce* %4, i32 0, i32 0, !dbg !4536
  %5 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8, !dbg !4536
  %ff2 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %5, i32 0, i32 20, !dbg !4537
  %6 = load %struct.ff_device*, %struct.ff_device** %ff2, align 8, !dbg !4537
  %max_effects = getelementptr inbounds %struct.ff_device, %struct.ff_device* %6, i32 0, i32 9, !dbg !4538
  %7 = load i32, i32* %max_effects, align 8, !dbg !4538
  %cmp = icmp slt i32 %3, %7, !dbg !4539
  br i1 %cmp, label %for.body, label %for.end, !dbg !4540

for.body:                                         ; preds = %for.cond
  %8 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4541
  %core_effects = getelementptr inbounds %struct.iforce, %struct.iforce* %8, i32 0, i32 9, !dbg !4544
  %9 = load i32, i32* %i, align 4, !dbg !4545
  %idxprom = sext i32 %9 to i64, !dbg !4541
  %arrayidx = getelementptr [32 x %struct.iforce_core_effect], [32 x %struct.iforce_core_effect]* %core_effects, i64 0, i64 %idxprom, !dbg !4541
  %flags = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %arrayidx, i32 0, i32 2, !dbg !4546
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %flags, i64 0, i64 0, !dbg !4541
  %call = call zeroext i1 @test_bit(i64 2, i64* %arraydecay) #8, !dbg !4547
  br i1 %call, label %land.lhs.true, label %if.end21, !dbg !4548

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4549
  %core_effects3 = getelementptr inbounds %struct.iforce, %struct.iforce* %10, i32 0, i32 9, !dbg !4550
  %11 = load i32, i32* %i, align 4, !dbg !4551
  %idxprom4 = sext i32 %11 to i64, !dbg !4549
  %arrayidx5 = getelementptr [32 x %struct.iforce_core_effect], [32 x %struct.iforce_core_effect]* %core_effects3, i64 0, i64 %idxprom4, !dbg !4549
  %mod1_chunk = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %arrayidx5, i32 0, i32 0, !dbg !4552
  %start = getelementptr inbounds %struct.resource, %struct.resource* %mod1_chunk, i32 0, i32 0, !dbg !4553
  %12 = load i64, i64* %start, align 8, !dbg !4553
  %13 = load i16, i16* %addr.addr, align 2, !dbg !4554
  %conv = zext i16 %13 to i64, !dbg !4554
  %cmp6 = icmp eq i64 %12, %conv, !dbg !4555
  br i1 %cmp6, label %if.then15, label %lor.lhs.false, !dbg !4556

lor.lhs.false:                                    ; preds = %land.lhs.true
  %14 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4557
  %core_effects8 = getelementptr inbounds %struct.iforce, %struct.iforce* %14, i32 0, i32 9, !dbg !4558
  %15 = load i32, i32* %i, align 4, !dbg !4559
  %idxprom9 = sext i32 %15 to i64, !dbg !4557
  %arrayidx10 = getelementptr [32 x %struct.iforce_core_effect], [32 x %struct.iforce_core_effect]* %core_effects8, i64 0, i64 %idxprom9, !dbg !4557
  %mod2_chunk = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %arrayidx10, i32 0, i32 1, !dbg !4560
  %start11 = getelementptr inbounds %struct.resource, %struct.resource* %mod2_chunk, i32 0, i32 0, !dbg !4561
  %16 = load i64, i64* %start11, align 8, !dbg !4561
  %17 = load i16, i16* %addr.addr, align 2, !dbg !4562
  %conv12 = zext i16 %17 to i64, !dbg !4562
  %cmp13 = icmp eq i64 %16, %conv12, !dbg !4563
  br i1 %cmp13, label %if.then15, label %if.end21, !dbg !4564

if.then15:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %18 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4565
  %core_effects16 = getelementptr inbounds %struct.iforce, %struct.iforce* %18, i32 0, i32 9, !dbg !4567
  %19 = load i32, i32* %i, align 4, !dbg !4568
  %idxprom17 = sext i32 %19 to i64, !dbg !4565
  %arrayidx18 = getelementptr [32 x %struct.iforce_core_effect], [32 x %struct.iforce_core_effect]* %core_effects16, i64 0, i64 %idxprom17, !dbg !4565
  %flags19 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %arrayidx18, i32 0, i32 2, !dbg !4569
  %arraydecay20 = getelementptr inbounds [1 x i64], [1 x i64]* %flags19, i64 0, i64 0, !dbg !4565
  call void @clear_bit(i64 5, i64* %arraydecay20) #8, !dbg !4570
  store i32 0, i32* %retval, align 4, !dbg !4571
  br label %return, !dbg !4571

if.end21:                                         ; preds = %lor.lhs.false, %for.body
  br label %for.inc, !dbg !4572

for.inc:                                          ; preds = %if.end21
  %20 = load i32, i32* %i, align 4, !dbg !4573
  %inc = add i32 %20, 1, !dbg !4573
  store i32 %inc, i32* %i, align 4, !dbg !4573
  br label %for.cond, !dbg !4574, !llvm.loop !4575

for.end:                                          ; preds = %for.cond
  %21 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4577
  %dev22 = getelementptr inbounds %struct.iforce, %struct.iforce* %21, i32 0, i32 0, !dbg !4577
  %22 = load %struct.input_dev*, %struct.input_dev** %dev22, align 8, !dbg !4577
  %dev23 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %22, i32 0, i32 40, !dbg !4577
  %23 = load i16, i16* %addr.addr, align 2, !dbg !4577
  %conv24 = zext i16 %23 to i32, !dbg !4577
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %conv24) #9, !dbg !4577
  store i32 -1, i32* %retval, align 4, !dbg !4578
  br label %return, !dbg !4578

return:                                           ; preds = %for.end, %if.then15, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !4579
  ret i32 %24, !dbg !4579
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !4580 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !4581, metadata !DIExpression()), !dbg !4583
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4584, metadata !DIExpression()), !dbg !4583
  %0 = load i64, i64* %__edi, align 8, !dbg !4583
  store i64 %0, i64* %__edi, align 8, !dbg !4583
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4585, metadata !DIExpression()), !dbg !4583
  %1 = load i64, i64* %__esi, align 8, !dbg !4583
  store i64 %1, i64* %__esi, align 8, !dbg !4583
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4586, metadata !DIExpression()), !dbg !4583
  %2 = load i64, i64* %__edx, align 8, !dbg !4583
  store i64 %2, i64* %__edx, align 8, !dbg !4583
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4587, metadata !DIExpression()), !dbg !4583
  %3 = load i64, i64* %__ecx, align 8, !dbg !4583
  store i64 %3, i64* %__ecx, align 8, !dbg !4583
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4588, metadata !DIExpression()), !dbg !4583
  %4 = load i64, i64* %__eax, align 8, !dbg !4583
  store i64 %4, i64* %__eax, align 8, !dbg !4583
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !4583
  %6 = call i64 @llvm.read_register.i64(metadata !116), !dbg !4589
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #5, !dbg !4589, !srcloc !4592
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4589
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4589
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4589
  call void @llvm.write_register.i64(metadata !116, i64 %asmresult1), !dbg !4589
  %8 = load i64, i64* %__eax, align 8, !dbg !4589
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !4593, metadata !DIExpression()), !dbg !4595
  store i64 -1, i64* %__mask, align 8, !dbg !4595
  %9 = load i64, i64* %__mask, align 8, !dbg !4595
  store i64 %9, i64* %tmp, align 8, !dbg !4595
  %10 = load i64, i64* %tmp, align 8, !dbg !4595
  %and = and i64 %8, %10, !dbg !4589
  store i64 %and, i64* %__ret, align 8, !dbg !4589
  %11 = load i64, i64* %__ret, align 8, !dbg !4583
  store i64 %11, i64* %tmp2, align 8, !dbg !4596
  %12 = load i64, i64* %tmp2, align 8, !dbg !4583
  ret i64 %12, !dbg !4597
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !4598 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4599, metadata !DIExpression()), !dbg !4601
  %0 = load i64, i64* %__edi, align 8, !dbg !4601
  store i64 %0, i64* %__edi, align 8, !dbg !4601
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4602, metadata !DIExpression()), !dbg !4601
  %1 = load i64, i64* %__esi, align 8, !dbg !4601
  store i64 %1, i64* %__esi, align 8, !dbg !4601
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4603, metadata !DIExpression()), !dbg !4601
  %2 = load i64, i64* %__edx, align 8, !dbg !4601
  store i64 %2, i64* %__edx, align 8, !dbg !4601
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4604, metadata !DIExpression()), !dbg !4601
  %3 = load i64, i64* %__ecx, align 8, !dbg !4601
  store i64 %3, i64* %__ecx, align 8, !dbg !4601
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4605, metadata !DIExpression()), !dbg !4601
  %4 = load i64, i64* %__eax, align 8, !dbg !4601
  store i64 %4, i64* %__eax, align 8, !dbg !4601
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !4601
  %6 = call i64 @llvm.read_register.i64(metadata !116), !dbg !4601
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #5, !dbg !4601, !srcloc !4606
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4601
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4601
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4601
  call void @llvm.write_register.i64(metadata !116, i64 %asmresult1), !dbg !4601
  ret void, !dbg !4607
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !4608 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !4611, metadata !DIExpression()), !dbg !4612
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4613, metadata !DIExpression()), !dbg !4615
  %0 = load i64, i64* %__edi, align 8, !dbg !4615
  store i64 %0, i64* %__edi, align 8, !dbg !4615
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4616, metadata !DIExpression()), !dbg !4615
  %1 = load i64, i64* %__esi, align 8, !dbg !4615
  store i64 %1, i64* %__esi, align 8, !dbg !4615
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4617, metadata !DIExpression()), !dbg !4615
  %2 = load i64, i64* %__edx, align 8, !dbg !4615
  store i64 %2, i64* %__edx, align 8, !dbg !4615
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4618, metadata !DIExpression()), !dbg !4615
  %3 = load i64, i64* %__ecx, align 8, !dbg !4615
  store i64 %3, i64* %__ecx, align 8, !dbg !4615
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4619, metadata !DIExpression()), !dbg !4615
  %4 = load i64, i64* %__eax, align 8, !dbg !4615
  store i64 %4, i64* %__eax, align 8, !dbg !4615
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !4615
  %6 = call i64 @llvm.read_register.i64(metadata !116), !dbg !4615
  %7 = load i64, i64* %f.addr, align 8, !dbg !4615
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #5, !dbg !4615, !srcloc !4620
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !4615
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !4615
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4615
  call void @llvm.write_register.i64(metadata !116, i64 %asmresult1), !dbg !4615
  ret void, !dbg !4621
}

; Function Attrs: noredzone
declare dso_local void @input_event(%struct.input_dev*, i32, i32, i32) #6

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !4622 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4626, metadata !DIExpression()), !dbg !4627
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4628, metadata !DIExpression()), !dbg !4629
  ret i1 true, !dbg !4630
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !4631 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4635, metadata !DIExpression()), !dbg !4636
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4637, metadata !DIExpression()), !dbg !4638
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4639, metadata !DIExpression()), !dbg !4640
  ret void, !dbg !4641
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !4642 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4643, metadata !DIExpression()), !dbg !4644
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4645, metadata !DIExpression()), !dbg !4646
  ret i1 true, !dbg !4647
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #0 !dbg !4648 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4651, metadata !DIExpression()), !dbg !4653
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4655, metadata !DIExpression()), !dbg !4656
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4657, metadata !DIExpression()), !dbg !4659
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4661, metadata !DIExpression()), !dbg !4662
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4663, metadata !DIExpression()), !dbg !4664
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4665, metadata !DIExpression()), !dbg !4666
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4667
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4668
  %div = sdiv i64 %1, 64, !dbg !4668
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4669
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4667
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4670
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4671
  %conv.i = trunc i64 %4 to i32, !dbg !4671
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #10, !dbg !4672
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4673
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4673
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #10, !dbg !4673
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4674
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4675
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !4676
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #5, !dbg !4678
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !4679

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !4680
  %12 = bitcast i64* %11 to i8*, !dbg !4680
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4680
  %shr.i = ashr i64 %13, 3, !dbg !4680
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !4680
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !4682
  %and.i = and i64 %14, 7, !dbg !4682
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !4682
  %shl.i = shl i32 1, %sh_prom.i, !dbg !4682
  %neg.i = xor i32 %shl.i, -1, !dbg !4683
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #5, !dbg !4684, !srcloc !4685
  br label %arch_clear_bit.exit, !dbg !4686

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !4687
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !4689
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #5, !dbg !4690, !srcloc !4691
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !4692
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!116}
!llvm.module.flags = !{!117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "iforce_hat_to_axis", scope: !2, file: !3, line: 15, type: !107, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !85, globals: !106, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/joystick/iforce/iforce-packets.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18, !24, !30, !39, !47, !53, !59, !66, !74, !80}
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
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !81, line: 10, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84}
!83 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!85 = !{!86, !87, !90, !92, !93, !96, !98, !99, !102, !103}
!86 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !88, line: 23, baseType: !89)
!88 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!89 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !88, line: 20, baseType: !91)
!91 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!92 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !95, line: 29, baseType: !96)
!95 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !88, line: 24, baseType: !97)
!97 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !101)
!101 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !105)
!105 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!106 = !{!0}
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 1024, elements: !114)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 12, size: 64, elements: !109)
!109 = !{!110, !113}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !108, file: !3, line: 13, baseType: !111, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !88, line: 26, baseType: !112)
!112 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !108, file: !3, line: 14, baseType: !111, size: 32, offset: 32)
!114 = !{!115}
!115 = !DISubrange(count: 16)
!116 = !{!"rsp"}
!117 = !{i32 7, !"Dwarf Version", i32 4}
!118 = !{i32 2, !"Debug Info Version", i32 3}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"Code Model", i32 2}
!121 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!122 = distinct !DISubprogram(name: "iforce_dump_packet", scope: !3, file: !3, line: 18, type: !123, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !316)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !125, !459, !277, !3837}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iforce", file: !127, line: 85, size: 38080, elements: !128)
!127 = !DIFile(filename: "drivers/input/joystick/iforce/iforce.h", directory: "/home/lizy2001/genbc/linux")
!128 = !{!129, !3769, !3780, !3800, !3801, !3808, !3812, !3813, !3814, !3829, !3836}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !126, file: !127, line: 86, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !132, line: 131, size: 10432, elements: !133)
!132 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!133 = !{!134, !137, !138, !139, !147, !151, !152, !156, !157, !158, !159, !160, !161, !165, !166, !167, !168, !169, !170, !189, !194, !2978, !2981, !2982, !2994, !2996, !2999, !3009, !3010, !3011, !3012, !3013, !3017, !3021, !3025, !3029, !3107, !3108, !3109, !3110, !3111, !3760, !3761, !3762, !3763, !3764, !3766, !3767}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !131, file: !132, line: 132, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !131, file: !132, line: 133, baseType: !135, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !131, file: !132, line: 134, baseType: !135, size: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !131, file: !132, line: 135, baseType: !140, size: 64, offset: 192)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !141, line: 59, size: 64, elements: !142)
!141 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!142 = !{!143, !144, !145, !146}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !140, file: !141, line: 60, baseType: !96, size: 16)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !140, file: !141, line: 61, baseType: !96, size: 16, offset: 16)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !140, file: !141, line: 62, baseType: !96, size: 16, offset: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !140, file: !141, line: 63, baseType: !96, size: 16, offset: 48)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !131, file: !132, line: 137, baseType: !148, size: 64, offset: 256)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 64, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 1)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !131, file: !132, line: 139, baseType: !148, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !131, file: !132, line: 140, baseType: !153, size: 768, offset: 384)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 768, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 12)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !131, file: !132, line: 141, baseType: !148, size: 64, offset: 1152)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !131, file: !132, line: 142, baseType: !148, size: 64, offset: 1216)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !131, file: !132, line: 143, baseType: !148, size: 64, offset: 1280)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !131, file: !132, line: 144, baseType: !148, size: 64, offset: 1344)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !131, file: !132, line: 145, baseType: !148, size: 64, offset: 1408)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !131, file: !132, line: 146, baseType: !162, size: 128, offset: 1472)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 128, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 2)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !131, file: !132, line: 147, baseType: !148, size: 64, offset: 1600)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !131, file: !132, line: 149, baseType: !7, size: 32, offset: 1664)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !131, file: !132, line: 151, baseType: !7, size: 32, offset: 1696)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !131, file: !132, line: 152, baseType: !7, size: 32, offset: 1728)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !131, file: !132, line: 153, baseType: !102, size: 64, offset: 1792)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !131, file: !132, line: 155, baseType: !171, size: 64, offset: 1856)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!112, !130, !174, !188}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !141, line: 114, size: 320, elements: !177)
!177 = !{!178, !180, !181, !182, !184}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !176, file: !141, line: 116, baseType: !179, size: 8)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !88, line: 21, baseType: !86)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !176, file: !141, line: 117, baseType: !179, size: 8, offset: 8)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !176, file: !141, line: 118, baseType: !96, size: 16, offset: 16)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !176, file: !141, line: 119, baseType: !183, size: 32, offset: 32)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !88, line: 27, baseType: !7)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !176, file: !141, line: 120, baseType: !185, size: 256, offset: 64)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 256, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 32)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !131, file: !132, line: 158, baseType: !190, size: 64, offset: 1920)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!112, !130, !193}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !131, file: !132, line: 161, baseType: !195, size: 64, offset: 1984)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !132, line: 534, size: 896, elements: !197)
!197 = !{!198, !265, !269, !273, !279, !280, !284, !285, !286, !323, !324, !325}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !196, file: !132, line: 535, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!112, !130, !202, !202}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !141, line: 450, size: 384, elements: !204)
!204 = !{!205, !206, !207, !208, !213, !218}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !203, file: !141, line: 451, baseType: !96, size: 16)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !203, file: !141, line: 452, baseType: !87, size: 16, offset: 16)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !203, file: !141, line: 453, baseType: !96, size: 16, offset: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !203, file: !141, line: 454, baseType: !209, size: 32, offset: 48)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !141, line: 316, size: 32, elements: !210)
!210 = !{!211, !212}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !209, file: !141, line: 317, baseType: !96, size: 16)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !209, file: !141, line: 318, baseType: !96, size: 16, offset: 16)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !203, file: !141, line: 455, baseType: !214, size: 32, offset: 80)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !141, line: 306, size: 32, elements: !215)
!215 = !{!216, !217}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !214, file: !141, line: 307, baseType: !96, size: 16)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !214, file: !141, line: 308, baseType: !96, size: 16, offset: 16)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !203, file: !141, line: 463, baseType: !219, size: 256, offset: 128)
!219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !203, file: !141, line: 457, size: 256, elements: !220)
!220 = !{!221, !232, !238, !250, !260}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !219, file: !141, line: 458, baseType: !222, size: 80)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !141, line: 345, size: 80, elements: !223)
!223 = !{!224, !225}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !222, file: !141, line: 346, baseType: !87, size: 16)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !222, file: !141, line: 347, baseType: !226, size: 64, offset: 16)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !141, line: 333, size: 64, elements: !227)
!227 = !{!228, !229, !230, !231}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !226, file: !141, line: 334, baseType: !96, size: 16)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !226, file: !141, line: 335, baseType: !96, size: 16, offset: 16)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !226, file: !141, line: 336, baseType: !96, size: 16, offset: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !226, file: !141, line: 337, baseType: !96, size: 16, offset: 48)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !219, file: !141, line: 459, baseType: !233, size: 96)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !141, line: 356, size: 96, elements: !234)
!234 = !{!235, !236, !237}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !233, file: !141, line: 357, baseType: !87, size: 16)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !233, file: !141, line: 358, baseType: !87, size: 16, offset: 16)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !233, file: !141, line: 359, baseType: !226, size: 64, offset: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !219, file: !141, line: 460, baseType: !239, size: 256)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !141, line: 401, size: 256, elements: !240)
!240 = !{!241, !242, !243, !244, !245, !246, !247, !248}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !239, file: !141, line: 402, baseType: !96, size: 16)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !239, file: !141, line: 403, baseType: !96, size: 16, offset: 16)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !239, file: !141, line: 404, baseType: !87, size: 16, offset: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !239, file: !141, line: 405, baseType: !87, size: 16, offset: 48)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !239, file: !141, line: 406, baseType: !96, size: 16, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !239, file: !141, line: 408, baseType: !226, size: 64, offset: 80)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !239, file: !141, line: 410, baseType: !183, size: 32, offset: 160)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !239, file: !141, line: 411, baseType: !249, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !219, file: !141, line: 461, baseType: !251, size: 192)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 192, elements: !163)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !141, line: 372, size: 96, elements: !253)
!253 = !{!254, !255, !256, !257, !258, !259}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !252, file: !141, line: 373, baseType: !96, size: 16)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !252, file: !141, line: 374, baseType: !96, size: 16, offset: 16)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !252, file: !141, line: 376, baseType: !87, size: 16, offset: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !252, file: !141, line: 377, baseType: !87, size: 16, offset: 48)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !252, file: !141, line: 379, baseType: !96, size: 16, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !252, file: !141, line: 380, baseType: !87, size: 16, offset: 80)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !219, file: !141, line: 462, baseType: !261, size: 32)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !141, line: 422, size: 32, elements: !262)
!262 = !{!263, !264}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !261, file: !141, line: 423, baseType: !96, size: 16)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !261, file: !141, line: 424, baseType: !96, size: 16, offset: 16)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !196, file: !132, line: 537, baseType: !266, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!112, !130, !112}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !196, file: !132, line: 539, baseType: !270, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!112, !130, !112, !112}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !196, file: !132, line: 540, baseType: !274, size: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !130, !277}
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !278, line: 19, baseType: !96)
!278 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!279 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !196, file: !132, line: 541, baseType: !274, size: 64, offset: 256)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !196, file: !132, line: 543, baseType: !281, size: 64, offset: 320)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !195}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !196, file: !132, line: 545, baseType: !102, size: 64, offset: 384)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !196, file: !132, line: 547, baseType: !162, size: 128, offset: 448)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !196, file: !132, line: 549, baseType: !287, size: 192, offset: 576)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !288, line: 53, size: 192, elements: !289)
!288 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!289 = !{!290, !301, !317}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !287, file: !288, line: 54, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !292, line: 13, baseType: !293)
!292 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !294, line: 175, baseType: !295)
!294 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !294, line: 173, size: 64, elements: !296)
!296 = !{!297}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !295, file: !294, line: 174, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !278, line: 22, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !88, line: 30, baseType: !300)
!300 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !287, file: !288, line: 55, baseType: !302, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !303, line: 83, baseType: !304)
!303 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !303, line: 71, elements: !305)
!305 = !{!306}
!306 = !DIDerivedType(tag: DW_TAG_member, scope: !304, file: !303, line: 72, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !304, file: !303, line: 72, elements: !308)
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !307, file: !303, line: 73, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !303, line: 20, elements: !311)
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !310, file: !303, line: 21, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !314, line: 25, baseType: !315)
!314 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !314, line: 25, elements: !316)
!316 = !{}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !287, file: !288, line: 59, baseType: !318, size: 128, offset: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !294, line: 178, size: 128, elements: !319)
!319 = !{!320, !322}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !318, file: !294, line: 179, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !318, file: !294, line: 179, baseType: !321, size: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !196, file: !132, line: 551, baseType: !112, size: 32, offset: 768)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !196, file: !132, line: 552, baseType: !202, size: 64, offset: 832)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !196, file: !132, line: 553, baseType: !326, offset: 896)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, elements: !2195)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !329)
!329 = !{!330, !348, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2961, !2962, !2971, !2972, !2973, !2974, !2975, !2976, !2977}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !328, file: !31, line: 920, baseType: !331, size: 128)
!331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !31, line: 917, size: 128, elements: !332)
!332 = !{!333, !339}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !331, file: !31, line: 918, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !335, line: 58, size: 64, elements: !336)
!335 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!336 = !{!337}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !335, line: 59, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !331, file: !31, line: 919, baseType: !340, size: 128, align: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !294, line: 216, size: 128, align: 64, elements: !341)
!341 = !{!342, !344}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !340, file: !294, line: 217, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !340, file: !294, line: 218, baseType: !345, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !343}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !328, file: !31, line: 921, baseType: !349, size: 128, offset: 128)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !350, line: 8, size: 128, elements: !351)
!350 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!351 = !{!352, !356}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !349, file: !350, line: 9, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !355, line: 18, flags: DIFlagFwdDecl)
!355 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!356 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !349, file: !350, line: 10, baseType: !357, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !355, line: 89, size: 1536, elements: !359)
!359 = !{!360, !361, !371, !379, !380, !399, !2911, !2913, !2925, !2926, !2927, !2928, !2929, !2935, !2936, !2937}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !358, file: !355, line: 91, baseType: !7, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !358, file: !355, line: 92, baseType: !362, size: 32, offset: 32)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !363, line: 277, baseType: !364)
!363 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !363, line: 277, size: 32, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !364, file: !363, line: 277, baseType: !367, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !363, line: 70, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !363, line: 65, size: 32, elements: !369)
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !368, file: !363, line: 66, baseType: !7, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !358, file: !355, line: 93, baseType: !372, size: 128, offset: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !373, line: 38, size: 128, elements: !374)
!373 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!374 = !{!375, !377}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !372, file: !373, line: 39, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !372, file: !373, line: 39, baseType: !378, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !358, file: !355, line: 94, baseType: !357, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !358, file: !355, line: 95, baseType: !381, size: 128, offset: 256)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !355, line: 47, size: 128, elements: !382)
!382 = !{!383, !396}
!383 = !DIDerivedType(tag: DW_TAG_member, scope: !381, file: !355, line: 48, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !381, file: !355, line: 48, size: 64, elements: !385)
!385 = !{!386, !392}
!386 = !DIDerivedType(tag: DW_TAG_member, scope: !384, file: !355, line: 49, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !384, file: !355, line: 49, size: 64, elements: !388)
!388 = !{!389, !391}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !387, file: !355, line: 50, baseType: !390, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !278, line: 21, baseType: !183)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !387, file: !355, line: 50, baseType: !390, size: 32, offset: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !384, file: !355, line: 52, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !278, line: 23, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !88, line: 31, baseType: !395)
!395 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !381, file: !355, line: 54, baseType: !397, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !358, file: !355, line: 96, baseType: !400, size: 64, offset: 384)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !402)
!402 = !{!403, !405, !406, !415, !422, !423, !576, !2623, !2624, !2625, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2887, !2895, !2896, !2897, !2907, !2908, !2909, !2910}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !401, file: !31, line: 611, baseType: !404, size: 16)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !294, line: 19, baseType: !97)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !401, file: !31, line: 612, baseType: !97, size: 16, offset: 16)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !401, file: !31, line: 613, baseType: !407, size: 32, offset: 32)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !408, line: 23, baseType: !409)
!408 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !408, line: 21, size: 32, elements: !410)
!410 = !{!411}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !409, file: !408, line: 22, baseType: !412, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !294, line: 32, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !414, line: 49, baseType: !7)
!414 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!415 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !401, file: !31, line: 614, baseType: !416, size: 32, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !408, line: 28, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !408, line: 26, size: 32, elements: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !417, file: !408, line: 27, baseType: !420, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !294, line: 33, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !414, line: 50, baseType: !7)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !401, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !401, file: !31, line: 622, baseType: !424, size: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !427)
!427 = !{!428, !432, !445, !449, !455, !460, !466, !470, !474, !478, !482, !483, !489, !493, !517, !546, !556, !562, !567, !571, !572}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !426, file: !31, line: 1865, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!357, !400, !357, !7}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !426, file: !31, line: 1866, baseType: !433, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!135, !357, !400, !436}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !438, line: 10, size: 128, elements: !439)
!438 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!439 = !{!440, !444}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !437, file: !438, line: 11, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !102}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !437, file: !438, line: 12, baseType: !102, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !426, file: !31, line: 1867, baseType: !446, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!112, !400, !112}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !426, file: !31, line: 1868, baseType: !450, size: 64, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!453, !400, !112}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !426, file: !31, line: 1870, baseType: !456, size: 64, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!112, !357, !459, !112}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !426, file: !31, line: 1872, baseType: !461, size: 64, offset: 320)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!112, !400, !357, !404, !464}
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !294, line: 30, baseType: !465)
!465 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !426, file: !31, line: 1873, baseType: !467, size: 64, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!112, !357, !400, !357}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !426, file: !31, line: 1874, baseType: !471, size: 64, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!112, !400, !357}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !426, file: !31, line: 1875, baseType: !475, size: 64, offset: 512)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!112, !400, !357, !135}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !426, file: !31, line: 1876, baseType: !479, size: 64, offset: 576)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!112, !400, !357, !404}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !426, file: !31, line: 1877, baseType: !471, size: 64, offset: 640)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !426, file: !31, line: 1878, baseType: !484, size: 64, offset: 704)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!112, !400, !357, !404, !487}
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !294, line: 16, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !294, line: 13, baseType: !390)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !426, file: !31, line: 1879, baseType: !490, size: 64, offset: 768)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!112, !400, !357, !400, !357, !7}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !426, file: !31, line: 1881, baseType: !494, size: 64, offset: 832)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!112, !357, !497}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !499)
!499 = !{!500, !501, !502, !503, !504, !507, !514, !515, !516}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !498, file: !31, line: 220, baseType: !7, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !498, file: !31, line: 221, baseType: !404, size: 16, offset: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !498, file: !31, line: 222, baseType: !407, size: 32, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !498, file: !31, line: 223, baseType: !416, size: 32, offset: 96)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !498, file: !31, line: 224, baseType: !505, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !294, line: 46, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !414, line: 88, baseType: !300)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !498, file: !31, line: 225, baseType: !508, size: 128, offset: 192)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !509, line: 13, size: 128, elements: !510)
!509 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!510 = !{!511, !513}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !508, file: !509, line: 14, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !509, line: 8, baseType: !299)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !508, file: !509, line: 15, baseType: !105, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !498, file: !31, line: 226, baseType: !508, size: 128, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !498, file: !31, line: 227, baseType: !508, size: 128, offset: 448)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !498, file: !31, line: 234, baseType: !327, size: 64, offset: 576)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !426, file: !31, line: 1882, baseType: !518, size: 64, offset: 896)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!112, !521, !523, !390, !7}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !525, line: 22, size: 1152, elements: !526)
!525 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!526 = !{!527, !528, !529, !530, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !524, file: !525, line: 23, baseType: !390, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !524, file: !525, line: 24, baseType: !404, size: 16, offset: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !524, file: !525, line: 25, baseType: !7, size: 32, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !524, file: !525, line: 26, baseType: !531, size: 32, offset: 96)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !294, line: 104, baseType: !390)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !524, file: !525, line: 27, baseType: !393, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !524, file: !525, line: 28, baseType: !393, size: 64, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !524, file: !525, line: 37, baseType: !393, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !524, file: !525, line: 38, baseType: !487, size: 32, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !524, file: !525, line: 39, baseType: !487, size: 32, offset: 352)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !524, file: !525, line: 40, baseType: !407, size: 32, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !524, file: !525, line: 41, baseType: !416, size: 32, offset: 416)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !524, file: !525, line: 42, baseType: !505, size: 64, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !524, file: !525, line: 43, baseType: !508, size: 128, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !524, file: !525, line: 44, baseType: !508, size: 128, offset: 640)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !524, file: !525, line: 45, baseType: !508, size: 128, offset: 768)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !524, file: !525, line: 46, baseType: !508, size: 128, offset: 896)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !524, file: !525, line: 47, baseType: !393, size: 64, offset: 1024)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !524, file: !525, line: 48, baseType: !393, size: 64, offset: 1088)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !426, file: !31, line: 1883, baseType: !547, size: 64, offset: 960)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!550, !357, !459, !553}
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !294, line: 60, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !414, line: 73, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !414, line: 15, baseType: !105)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !294, line: 55, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !414, line: 72, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !414, line: 16, baseType: !92)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !426, file: !31, line: 1884, baseType: !557, size: 64, offset: 1024)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!112, !400, !560, !393, !393}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !426, file: !31, line: 1886, baseType: !563, size: 64, offset: 1088)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{!112, !400, !566, !112}
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !426, file: !31, line: 1887, baseType: !568, size: 64, offset: 1152)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!112, !400, !357, !327, !7, !404}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !426, file: !31, line: 1890, baseType: !479, size: 64, offset: 1216)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !426, file: !31, line: 1891, baseType: !573, size: 64, offset: 1280)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!112, !400, !453, !112}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !401, file: !31, line: 623, baseType: !577, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !579)
!579 = !{!580, !581, !582, !583, !584, !585, !637, !2231, !2313, !2396, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2412, !2416, !2417, !2420, !2421, !2424, !2425, !2426, !2467, !2493, !2494, !2495, !2496, !2497, !2498, !2501, !2503, !2510, !2511, !2513, !2514, !2515, !2574, !2575, !2590, !2591, !2592, !2593, !2594, !2597, !2598, !2599, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !578, file: !31, line: 1417, baseType: !318, size: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !578, file: !31, line: 1418, baseType: !487, size: 32, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !578, file: !31, line: 1419, baseType: !86, size: 8, offset: 160)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !578, file: !31, line: 1420, baseType: !92, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !578, file: !31, line: 1421, baseType: !505, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !578, file: !31, line: 1422, baseType: !586, size: 64, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !588)
!588 = !{!589, !590, !591, !598, !602, !606, !610, !614, !615, !625, !628, !629, !630, !634, !635, !636}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !587, file: !31, line: 2229, baseType: !135, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !587, file: !31, line: 2230, baseType: !112, size: 32, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !587, file: !31, line: 2238, baseType: !592, size: 64, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!112, !595}
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !597, line: 28, flags: DIFlagFwdDecl)
!597 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!598 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !587, file: !31, line: 2239, baseType: !599, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !601)
!601 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !587, file: !31, line: 2240, baseType: !603, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!357, !586, !112, !135, !102}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !587, file: !31, line: 2242, baseType: !607, size: 64, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !577}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !587, file: !31, line: 2243, baseType: !611, size: 64, offset: 384)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !613, line: 76, flags: DIFlagFwdDecl)
!613 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!614 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !587, file: !31, line: 2244, baseType: !586, size: 64, offset: 448)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !587, file: !31, line: 2245, baseType: !616, size: 64, offset: 512)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !294, line: 182, size: 64, elements: !617)
!617 = !{!618}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !616, file: !294, line: 183, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !294, line: 186, size: 128, elements: !621)
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !620, file: !294, line: 187, baseType: !619, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !620, file: !294, line: 187, baseType: !624, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !587, file: !31, line: 2247, baseType: !626, offset: 576)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !627, line: 187, elements: !316)
!627 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!628 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !587, file: !31, line: 2248, baseType: !626, offset: 576)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !587, file: !31, line: 2249, baseType: !626, offset: 576)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !587, file: !31, line: 2250, baseType: !631, offset: 576)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !626, elements: !632)
!632 = !{!633}
!633 = !DISubrange(count: 3)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !587, file: !31, line: 2252, baseType: !626, offset: 576)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !587, file: !31, line: 2253, baseType: !626, offset: 576)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !587, file: !31, line: 2254, baseType: !626, offset: 576)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !578, file: !31, line: 1423, baseType: !638, size: 64, offset: 384)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !640)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !641)
!641 = !{!642, !646, !650, !651, !655, !661, !665, !666, !667, !671, !675, !676, !677, !678, !684, !689, !690, !697, !698, !699, !700, !2215, !2230}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !640, file: !31, line: 1936, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!400, !577}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !640, file: !31, line: 1937, baseType: !647, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !400}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !640, file: !31, line: 1938, baseType: !647, size: 64, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !640, file: !31, line: 1940, baseType: !652, size: 64, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !400, !112}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !640, file: !31, line: 1941, baseType: !656, size: 64, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!112, !400, !659}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 289, flags: DIFlagFwdDecl)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !640, file: !31, line: 1942, baseType: !662, size: 64, offset: 320)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!112, !400}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !640, file: !31, line: 1943, baseType: !647, size: 64, offset: 384)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !640, file: !31, line: 1944, baseType: !607, size: 64, offset: 448)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !640, file: !31, line: 1945, baseType: !668, size: 64, offset: 512)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!112, !577, !112}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !640, file: !31, line: 1946, baseType: !672, size: 64, offset: 576)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!112, !577}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !640, file: !31, line: 1947, baseType: !672, size: 64, offset: 640)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !640, file: !31, line: 1948, baseType: !672, size: 64, offset: 704)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !640, file: !31, line: 1949, baseType: !672, size: 64, offset: 768)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !640, file: !31, line: 1950, baseType: !679, size: 64, offset: 832)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!112, !357, !682}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !640, file: !31, line: 1951, baseType: !685, size: 64, offset: 896)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!112, !577, !688, !459}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !640, file: !31, line: 1952, baseType: !607, size: 64, offset: 960)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !640, file: !31, line: 1954, baseType: !691, size: 64, offset: 1024)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!112, !694, !357}
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !696, line: 539, flags: DIFlagFwdDecl)
!696 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!697 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !640, file: !31, line: 1955, baseType: !691, size: 64, offset: 1088)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !640, file: !31, line: 1956, baseType: !691, size: 64, offset: 1152)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !640, file: !31, line: 1957, baseType: !691, size: 64, offset: 1216)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !640, file: !31, line: 1963, baseType: !701, size: 64, offset: 1280)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!112, !577, !704, !727}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !706, line: 68, size: 512, align: 128, elements: !707)
!706 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!707 = !{!708, !709, !2207, !2214}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !705, file: !706, line: 69, baseType: !92, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, scope: !705, file: !706, line: 77, baseType: !710, size: 320, offset: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !705, file: !706, line: 77, size: 320, elements: !711)
!711 = !{!712, !891, !896, !924, !932, !938, !2199, !2206}
!712 = !DIDerivedType(tag: DW_TAG_member, scope: !710, file: !706, line: 78, baseType: !713, size: 320)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !710, file: !706, line: 78, size: 320, elements: !714)
!714 = !{!715, !716, !889, !890}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !713, file: !706, line: 84, baseType: !318, size: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !713, file: !706, line: 86, baseType: !717, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !719)
!719 = !{!720, !721, !729, !730, !735, !750, !759, !760, !761, !762, !882, !883, !886, !887, !888}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !718, file: !31, line: 452, baseType: !400, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !718, file: !31, line: 453, baseType: !722, size: 128, offset: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !723, line: 292, size: 128, elements: !724)
!723 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!724 = !{!725, !726, !728}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !722, file: !723, line: 293, baseType: !302)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !722, file: !723, line: 295, baseType: !727, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !294, line: 148, baseType: !7)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !722, file: !723, line: 296, baseType: !102, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !718, file: !31, line: 454, baseType: !727, size: 32, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !718, file: !31, line: 455, baseType: !731, size: 32, offset: 224)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !294, line: 168, baseType: !732)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !294, line: 166, size: 32, elements: !733)
!733 = !{!734}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !732, file: !294, line: 167, baseType: !112, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !718, file: !31, line: 460, baseType: !736, size: 128, offset: 256)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !737, line: 125, size: 128, elements: !738)
!737 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!738 = !{!739, !749}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !736, file: !737, line: 126, baseType: !740, size: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !737, line: 31, size: 64, elements: !741)
!741 = !{!742}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !740, file: !737, line: 32, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !737, line: 24, size: 192, align: 64, elements: !745)
!745 = !{!746, !747, !748}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !744, file: !737, line: 25, baseType: !92, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !744, file: !737, line: 26, baseType: !743, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !744, file: !737, line: 27, baseType: !743, size: 64, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !736, file: !737, line: 127, baseType: !743, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !718, file: !31, line: 461, baseType: !751, size: 256, offset: 384)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !752, line: 35, size: 256, elements: !753)
!752 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!753 = !{!754, !755, !756, !758}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !751, file: !752, line: 36, baseType: !291, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !751, file: !752, line: 42, baseType: !291, size: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !751, file: !752, line: 46, baseType: !757, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !303, line: 29, baseType: !310)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !751, file: !752, line: 47, baseType: !318, size: 128, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !718, file: !31, line: 462, baseType: !92, size: 64, offset: 640)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !718, file: !31, line: 463, baseType: !92, size: 64, offset: 704)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !718, file: !31, line: 464, baseType: !92, size: 64, offset: 768)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !718, file: !31, line: 465, baseType: !763, size: 64, offset: 832)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !765)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !766)
!766 = !{!767, !771, !775, !779, !783, !787, !793, !799, !803, !808, !812, !816, !820, !846, !850, !856, !857, !858, !862, !867, !871, !878}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !765, file: !31, line: 368, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!112, !704, !659}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !765, file: !31, line: 369, baseType: !772, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!112, !327, !704}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !765, file: !31, line: 372, baseType: !776, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!112, !717, !659}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !765, file: !31, line: 375, baseType: !780, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!112, !704}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !765, file: !31, line: 381, baseType: !784, size: 64, offset: 256)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!112, !327, !717, !321, !7}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !765, file: !31, line: 383, baseType: !788, size: 64, offset: 320)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{null, !791}
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !765, file: !31, line: 385, baseType: !794, size: 64, offset: 384)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!112, !327, !717, !505, !7, !7, !797, !798}
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !765, file: !31, line: 388, baseType: !800, size: 64, offset: 448)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!112, !327, !717, !505, !7, !7, !704, !102}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !765, file: !31, line: 393, baseType: !804, size: 64, offset: 512)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!807, !717, !807}
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !294, line: 125, baseType: !393)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !765, file: !31, line: 394, baseType: !809, size: 64, offset: 576)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !704, !7, !7}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !765, file: !31, line: 395, baseType: !813, size: 64, offset: 640)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!112, !704, !727}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !765, file: !31, line: 396, baseType: !817, size: 64, offset: 704)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{null, !704}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !765, file: !31, line: 397, baseType: !821, size: 64, offset: 768)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!550, !824, !844}
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !826)
!826 = !{!827, !828, !829, !833, !834, !835, !836, !837}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !825, file: !31, line: 321, baseType: !327, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !825, file: !31, line: 326, baseType: !505, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !825, file: !31, line: 327, baseType: !830, size: 64, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{null, !824, !105, !105}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !825, file: !31, line: 328, baseType: !102, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !825, file: !31, line: 329, baseType: !112, size: 32, offset: 256)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !825, file: !31, line: 330, baseType: !277, size: 16, offset: 288)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !825, file: !31, line: 331, baseType: !277, size: 16, offset: 304)
!837 = !DIDerivedType(tag: DW_TAG_member, scope: !825, file: !31, line: 332, baseType: !838, size: 64, offset: 320)
!838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !825, file: !31, line: 332, size: 64, elements: !839)
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !838, file: !31, line: 333, baseType: !7, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !838, file: !31, line: 334, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !765, file: !31, line: 402, baseType: !847, size: 64, offset: 832)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!112, !717, !704, !704, !5}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !765, file: !31, line: 404, baseType: !851, size: 64, offset: 896)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!464, !704, !854}
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !855, line: 305, baseType: !7)
!855 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!856 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !765, file: !31, line: 405, baseType: !817, size: 64, offset: 960)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !765, file: !31, line: 406, baseType: !780, size: 64, offset: 1024)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !765, file: !31, line: 407, baseType: !859, size: 64, offset: 1088)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!112, !704, !92, !92}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !765, file: !31, line: 409, baseType: !863, size: 64, offset: 1152)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{null, !704, !866, !866}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !765, file: !31, line: 410, baseType: !868, size: 64, offset: 1216)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!112, !717, !704}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !765, file: !31, line: 413, baseType: !872, size: 64, offset: 1280)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!112, !875, !327, !877}
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !765, file: !31, line: 415, baseType: !879, size: 64, offset: 1344)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{null, !327}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !718, file: !31, line: 466, baseType: !92, size: 64, offset: 896)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !718, file: !31, line: 467, baseType: !884, size: 32, offset: 960)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !885, line: 8, baseType: !390)
!885 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!886 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !718, file: !31, line: 468, baseType: !302, offset: 992)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !718, file: !31, line: 469, baseType: !318, size: 128, offset: 1024)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !718, file: !31, line: 470, baseType: !102, size: 64, offset: 1152)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !713, file: !706, line: 87, baseType: !92, size: 64, offset: 192)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !713, file: !706, line: 94, baseType: !92, size: 64, offset: 256)
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !710, file: !706, line: 96, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !710, file: !706, line: 96, size: 64, elements: !893)
!893 = !{!894}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !892, file: !706, line: 101, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !294, line: 143, baseType: !393)
!896 = !DIDerivedType(tag: DW_TAG_member, scope: !710, file: !706, line: 103, baseType: !897, size: 320)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !710, file: !706, line: 103, size: 320, elements: !898)
!898 = !{!899, !909, !912, !913}
!899 = !DIDerivedType(tag: DW_TAG_member, scope: !897, file: !706, line: 104, baseType: !900, size: 128)
!900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !897, file: !706, line: 104, size: 128, elements: !901)
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !900, file: !706, line: 105, baseType: !318, size: 128)
!903 = !DIDerivedType(tag: DW_TAG_member, scope: !900, file: !706, line: 106, baseType: !904, size: 128)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !900, file: !706, line: 106, size: 128, elements: !905)
!905 = !{!906, !907, !908}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !904, file: !706, line: 107, baseType: !704, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !904, file: !706, line: 109, baseType: !112, size: 32, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !904, file: !706, line: 110, baseType: !112, size: 32, offset: 96)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !897, file: !706, line: 117, baseType: !910, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !706, line: 117, flags: DIFlagFwdDecl)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !897, file: !706, line: 119, baseType: !102, size: 64, offset: 192)
!913 = !DIDerivedType(tag: DW_TAG_member, scope: !897, file: !706, line: 120, baseType: !914, size: 64, offset: 256)
!914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !897, file: !706, line: 120, size: 64, elements: !915)
!915 = !{!916, !917, !918}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !914, file: !706, line: 121, baseType: !102, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !914, file: !706, line: 122, baseType: !92, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, scope: !914, file: !706, line: 123, baseType: !919, size: 32)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !914, file: !706, line: 123, size: 32, elements: !920)
!920 = !{!921, !922, !923}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !919, file: !706, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !919, file: !706, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !919, file: !706, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!924 = !DIDerivedType(tag: DW_TAG_member, scope: !710, file: !706, line: 130, baseType: !925, size: 192)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !710, file: !706, line: 130, size: 192, elements: !926)
!926 = !{!927, !928, !929, !930, !931}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !925, file: !706, line: 131, baseType: !92, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !925, file: !706, line: 134, baseType: !86, size: 8, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !925, file: !706, line: 135, baseType: !86, size: 8, offset: 72)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !925, file: !706, line: 136, baseType: !731, size: 32, offset: 96)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !925, file: !706, line: 137, baseType: !7, size: 32, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, scope: !710, file: !706, line: 139, baseType: !933, size: 256)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !710, file: !706, line: 139, size: 256, elements: !934)
!934 = !{!935, !936, !937}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !933, file: !706, line: 140, baseType: !92, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !933, file: !706, line: 141, baseType: !731, size: 32, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !933, file: !706, line: 143, baseType: !318, size: 128, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !710, file: !706, line: 145, baseType: !939, size: 256)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !710, file: !706, line: 145, size: 256, elements: !940)
!940 = !{!941, !942, !944, !945, !2198}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !939, file: !706, line: 146, baseType: !92, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !939, file: !706, line: 147, baseType: !943, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !696, line: 509, baseType: !704)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !939, file: !706, line: 148, baseType: !92, size: 64, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, scope: !939, file: !706, line: 149, baseType: !946, size: 64, offset: 192)
!946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !939, file: !706, line: 149, size: 64, elements: !947)
!947 = !{!948, !2197}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !946, file: !706, line: 150, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !706, line: 388, size: 7296, elements: !951)
!951 = !{!952, !2193}
!952 = !DIDerivedType(tag: DW_TAG_member, scope: !950, file: !706, line: 389, baseType: !953, size: 7296)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !950, file: !706, line: 389, size: 7296, elements: !954)
!954 = !{!955, !993, !994, !995, !999, !1000, !1001, !1002, !1003, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1044, !1052, !1055, !1093, !1094, !2177, !2178, !2181, !2182, !2183, !2186, !2187, !2188, !2191, !2192}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !953, file: !706, line: 390, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !706, line: 305, size: 1472, elements: !958)
!958 = !{!959, !960, !961, !962, !963, !964, !965, !966, !973, !974, !979, !980, !983, !987, !988, !989, !990, !991}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !957, file: !706, line: 308, baseType: !92, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !957, file: !706, line: 309, baseType: !92, size: 64, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !957, file: !706, line: 313, baseType: !956, size: 64, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !957, file: !706, line: 313, baseType: !956, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !957, file: !706, line: 315, baseType: !744, size: 192, align: 64, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !957, file: !706, line: 323, baseType: !92, size: 64, offset: 448)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !957, file: !706, line: 327, baseType: !949, size: 64, offset: 512)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !957, file: !706, line: 333, baseType: !967, size: 64, offset: 576)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !696, line: 284, baseType: !968)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !696, line: 284, size: 64, elements: !969)
!969 = !{!970}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !968, file: !696, line: 284, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !972, line: 19, baseType: !92)
!972 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!973 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !957, file: !706, line: 334, baseType: !92, size: 64, offset: 640)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !957, file: !706, line: 343, baseType: !975, size: 256, offset: 704)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !957, file: !706, line: 340, size: 256, elements: !976)
!976 = !{!977, !978}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !975, file: !706, line: 341, baseType: !744, size: 192, align: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !975, file: !706, line: 342, baseType: !92, size: 64, offset: 192)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !957, file: !706, line: 351, baseType: !318, size: 128, offset: 960)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !957, file: !706, line: 353, baseType: !981, size: 64, offset: 1088)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !706, line: 353, flags: DIFlagFwdDecl)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !957, file: !706, line: 356, baseType: !984, size: 64, offset: 1152)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !986)
!986 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !706, line: 356, flags: DIFlagFwdDecl)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !957, file: !706, line: 359, baseType: !92, size: 64, offset: 1216)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !957, file: !706, line: 361, baseType: !327, size: 64, offset: 1280)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !957, file: !706, line: 362, baseType: !102, size: 64, offset: 1344)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !957, file: !706, line: 365, baseType: !291, size: 64, offset: 1408)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !957, file: !706, line: 373, baseType: !992, offset: 1472)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !706, line: 296, elements: !316)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !953, file: !706, line: 391, baseType: !740, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !953, file: !706, line: 392, baseType: !393, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !953, file: !706, line: 394, baseType: !996, size: 64, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!92, !327, !92, !92, !92, !92}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !953, file: !706, line: 398, baseType: !92, size: 64, offset: 256)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !953, file: !706, line: 399, baseType: !92, size: 64, offset: 320)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !953, file: !706, line: 405, baseType: !92, size: 64, offset: 384)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !953, file: !706, line: 406, baseType: !92, size: 64, offset: 448)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !953, file: !706, line: 407, baseType: !1004, size: 64, offset: 512)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !696, line: 286, baseType: !1006)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !696, line: 286, size: 64, elements: !1007)
!1007 = !{!1008}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1006, file: !696, line: 286, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !972, line: 18, baseType: !92)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !953, file: !706, line: 416, baseType: !731, size: 32, offset: 576)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !953, file: !706, line: 428, baseType: !731, size: 32, offset: 608)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !953, file: !706, line: 437, baseType: !731, size: 32, offset: 640)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !953, file: !706, line: 447, baseType: !731, size: 32, offset: 672)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !953, file: !706, line: 450, baseType: !291, size: 64, offset: 704)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !953, file: !706, line: 452, baseType: !112, size: 32, offset: 768)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !953, file: !706, line: 454, baseType: !302, offset: 800)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !953, file: !706, line: 457, baseType: !751, size: 256, offset: 832)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !953, file: !706, line: 459, baseType: !318, size: 128, offset: 1088)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !953, file: !706, line: 466, baseType: !92, size: 64, offset: 1216)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !953, file: !706, line: 467, baseType: !92, size: 64, offset: 1280)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !953, file: !706, line: 469, baseType: !92, size: 64, offset: 1344)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !953, file: !706, line: 470, baseType: !92, size: 64, offset: 1408)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !953, file: !706, line: 471, baseType: !293, size: 64, offset: 1472)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !953, file: !706, line: 472, baseType: !92, size: 64, offset: 1536)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !953, file: !706, line: 473, baseType: !92, size: 64, offset: 1600)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !953, file: !706, line: 474, baseType: !92, size: 64, offset: 1664)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !953, file: !706, line: 475, baseType: !92, size: 64, offset: 1728)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !953, file: !706, line: 477, baseType: !302, offset: 1792)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !953, file: !706, line: 478, baseType: !92, size: 64, offset: 1792)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !953, file: !706, line: 478, baseType: !92, size: 64, offset: 1856)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !953, file: !706, line: 478, baseType: !92, size: 64, offset: 1920)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !953, file: !706, line: 478, baseType: !92, size: 64, offset: 1984)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !953, file: !706, line: 479, baseType: !92, size: 64, offset: 2048)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !953, file: !706, line: 479, baseType: !92, size: 64, offset: 2112)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !953, file: !706, line: 479, baseType: !92, size: 64, offset: 2176)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !953, file: !706, line: 480, baseType: !92, size: 64, offset: 2240)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !953, file: !706, line: 480, baseType: !92, size: 64, offset: 2304)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !953, file: !706, line: 480, baseType: !92, size: 64, offset: 2368)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !953, file: !706, line: 480, baseType: !92, size: 64, offset: 2432)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !953, file: !706, line: 482, baseType: !1041, size: 2816, offset: 2496)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 2816, elements: !1042)
!1042 = !{!1043}
!1043 = !DISubrange(count: 44)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !953, file: !706, line: 488, baseType: !1045, size: 256, offset: 5312)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1046, line: 60, size: 256, elements: !1047)
!1046 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1047 = !{!1048}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1045, file: !1046, line: 61, baseType: !1049, size: 256)
!1049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 256, elements: !1050)
!1050 = !{!1051}
!1051 = !DISubrange(count: 4)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !953, file: !706, line: 490, baseType: !1053, size: 64, offset: 5568)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !706, line: 490, flags: DIFlagFwdDecl)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !953, file: !706, line: 493, baseType: !1056, size: 896, offset: 5632)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1057, line: 53, baseType: !1058)
!1057 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1057, line: 13, size: 896, elements: !1059)
!1059 = !{!1060, !1061, !1062, !1063, !1066, !1067, !1068, !1069, !1089, !1090, !1091}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1058, file: !1057, line: 18, baseType: !393, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1058, file: !1057, line: 28, baseType: !293, size: 64, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1058, file: !1057, line: 31, baseType: !751, size: 256, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1058, file: !1057, line: 32, baseType: !1064, size: 64, offset: 384)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1057, line: 32, flags: DIFlagFwdDecl)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1058, file: !1057, line: 37, baseType: !97, size: 16, offset: 448)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1058, file: !1057, line: 40, baseType: !287, size: 192, offset: 512)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1058, file: !1057, line: 41, baseType: !102, size: 64, offset: 704)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1058, file: !1057, line: 42, baseType: !1070, size: 64, offset: 768)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1072)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1073, line: 13, size: 896, elements: !1074)
!1073 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1074 = !{!1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1072, file: !1073, line: 14, baseType: !102, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1072, file: !1073, line: 15, baseType: !92, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1072, file: !1073, line: 17, baseType: !92, size: 64, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1072, file: !1073, line: 17, baseType: !92, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1072, file: !1073, line: 19, baseType: !105, size: 64, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1072, file: !1073, line: 21, baseType: !105, size: 64, offset: 320)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1072, file: !1073, line: 22, baseType: !105, size: 64, offset: 384)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1072, file: !1073, line: 23, baseType: !105, size: 64, offset: 448)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1072, file: !1073, line: 24, baseType: !105, size: 64, offset: 512)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1072, file: !1073, line: 25, baseType: !105, size: 64, offset: 576)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1072, file: !1073, line: 26, baseType: !105, size: 64, offset: 640)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1072, file: !1073, line: 27, baseType: !105, size: 64, offset: 704)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1072, file: !1073, line: 28, baseType: !105, size: 64, offset: 768)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1072, file: !1073, line: 29, baseType: !105, size: 64, offset: 832)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1058, file: !1057, line: 44, baseType: !731, size: 32, offset: 832)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1058, file: !1057, line: 50, baseType: !277, size: 16, offset: 864)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1058, file: !1057, line: 51, baseType: !1092, size: 16, offset: 880)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !278, line: 18, baseType: !87)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !953, file: !706, line: 495, baseType: !92, size: 64, offset: 6528)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !953, file: !706, line: 497, baseType: !1095, size: 64, offset: 6592)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !706, line: 381, size: 384, elements: !1097)
!1097 = !{!1098, !1099, !2176}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1096, file: !706, line: 382, baseType: !731, size: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1096, file: !706, line: 383, baseType: !1100, size: 128, offset: 64)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !706, line: 376, size: 128, elements: !1101)
!1101 = !{!1102, !2174}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1100, file: !706, line: 377, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1105, line: 640, size: 48640, elements: !1106)
!1105 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1106 = !{!1107, !1113, !1114, !1115, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1132, !1150, !1161, !1245, !1246, !1247, !1255, !1256, !1258, !1259, !1260, !1261, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1339, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1377, !1379, !1380, !1381, !1393, !1394, !1395, !1396, !1397, !1398, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1422, !1427, !1609, !1610, !1611, !1612, !1614, !1617, !1620, !1623, !1626, !1629, !1730, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1778, !1779, !1780, !1781, !1782, !1787, !1788, !1789, !1792, !1793, !1796, !1799, !1802, !1805, !1848, !1851, !1852, !1931, !1932, !1935, !1936, !1939, !1940, !1941, !1945, !1946, !1947, !1960, !1961, !1962, !1972, !1977, !1980, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1104, file: !1105, line: 646, baseType: !1108, size: 128)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1109, line: 56, size: 128, elements: !1110)
!1109 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1110 = !{!1111, !1112}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1108, file: !1109, line: 57, baseType: !92, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1108, file: !1109, line: 58, baseType: !390, size: 32, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1104, file: !1105, line: 649, baseType: !104, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1104, file: !1105, line: 657, baseType: !102, size: 64, offset: 192)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1104, file: !1105, line: 658, baseType: !1116, size: 32, offset: 256)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1117, line: 113, baseType: !1118)
!1117 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1117, line: 111, size: 32, elements: !1119)
!1119 = !{!1120}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1118, file: !1117, line: 112, baseType: !731, size: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1104, file: !1105, line: 660, baseType: !7, size: 32, offset: 288)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1104, file: !1105, line: 661, baseType: !7, size: 32, offset: 320)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1104, file: !1105, line: 684, baseType: !112, size: 32, offset: 352)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1104, file: !1105, line: 686, baseType: !112, size: 32, offset: 384)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1104, file: !1105, line: 687, baseType: !112, size: 32, offset: 416)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1104, file: !1105, line: 688, baseType: !112, size: 32, offset: 448)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1104, file: !1105, line: 689, baseType: !7, size: 32, offset: 480)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1104, file: !1105, line: 691, baseType: !1129, size: 64, offset: 512)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1131)
!1131 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1105, line: 691, flags: DIFlagFwdDecl)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1104, file: !1105, line: 692, baseType: !1133, size: 832, offset: 576)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1105, line: 451, size: 832, elements: !1134)
!1134 = !{!1135, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1133, file: !1105, line: 453, baseType: !1136, size: 128)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1105, line: 325, size: 128, elements: !1137)
!1137 = !{!1138, !1139}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1136, file: !1105, line: 326, baseType: !92, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1136, file: !1105, line: 327, baseType: !390, size: 32, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1133, file: !1105, line: 454, baseType: !744, size: 192, align: 64, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1133, file: !1105, line: 455, baseType: !318, size: 128, offset: 320)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1133, file: !1105, line: 456, baseType: !7, size: 32, offset: 448)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1133, file: !1105, line: 458, baseType: !393, size: 64, offset: 512)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1133, file: !1105, line: 459, baseType: !393, size: 64, offset: 576)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1133, file: !1105, line: 460, baseType: !393, size: 64, offset: 640)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1133, file: !1105, line: 461, baseType: !393, size: 64, offset: 704)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1133, file: !1105, line: 463, baseType: !393, size: 64, offset: 768)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1133, file: !1105, line: 465, baseType: !1149, offset: 832)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1105, line: 415, elements: !316)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1104, file: !1105, line: 693, baseType: !1151, size: 384, offset: 1408)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1105, line: 489, size: 384, elements: !1152)
!1152 = !{!1153, !1154, !1155, !1156, !1157, !1158, !1159}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1151, file: !1105, line: 490, baseType: !318, size: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1151, file: !1105, line: 491, baseType: !92, size: 64, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1151, file: !1105, line: 492, baseType: !92, size: 64, offset: 192)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1151, file: !1105, line: 493, baseType: !7, size: 32, offset: 256)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1151, file: !1105, line: 494, baseType: !97, size: 16, offset: 288)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1151, file: !1105, line: 495, baseType: !97, size: 16, offset: 304)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1151, file: !1105, line: 497, baseType: !1160, size: 64, offset: 320)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1104, file: !1105, line: 697, baseType: !1162, size: 1792, offset: 1792)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1105, line: 507, size: 1792, elements: !1163)
!1163 = !{!1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1242, !1243}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1162, file: !1105, line: 508, baseType: !744, size: 192, align: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1162, file: !1105, line: 515, baseType: !393, size: 64, offset: 192)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1162, file: !1105, line: 516, baseType: !393, size: 64, offset: 256)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1162, file: !1105, line: 517, baseType: !393, size: 64, offset: 320)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1162, file: !1105, line: 518, baseType: !393, size: 64, offset: 384)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1162, file: !1105, line: 519, baseType: !393, size: 64, offset: 448)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1162, file: !1105, line: 526, baseType: !298, size: 64, offset: 512)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1162, file: !1105, line: 527, baseType: !393, size: 64, offset: 576)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1162, file: !1105, line: 528, baseType: !7, size: 32, offset: 640)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1162, file: !1105, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1162, file: !1105, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1162, file: !1105, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1162, file: !1105, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1162, file: !1105, line: 563, baseType: !1178, size: 512, offset: 704)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !14, line: 118, size: 512, elements: !1179)
!1179 = !{!1180, !1188, !1189, !1194, !1237, !1239, !1240, !1241}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1178, file: !14, line: 119, baseType: !1181, size: 256)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1182, line: 9, size: 256, elements: !1183)
!1182 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1183 = !{!1184, !1185}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1181, file: !1182, line: 10, baseType: !744, size: 192, align: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1181, file: !1182, line: 11, baseType: !1186, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1187, line: 29, baseType: !298)
!1187 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1178, file: !14, line: 120, baseType: !1186, size: 64, offset: 256)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1178, file: !14, line: 121, baseType: !1190, size: 64, offset: 320)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!13, !1193}
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1178, file: !14, line: 122, baseType: !1195, size: 64, offset: 384)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !14, line: 159, size: 512, align: 512, elements: !1197)
!1197 = !{!1198, !1218, !1219, !1222, !1227, !1228, !1232, !1236}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1196, file: !14, line: 160, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !14, line: 214, size: 4608, align: 512, elements: !1201)
!1201 = !{!1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1200, file: !14, line: 215, baseType: !757)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1200, file: !14, line: 216, baseType: !7, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1200, file: !14, line: 217, baseType: !7, size: 32, offset: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1200, file: !14, line: 218, baseType: !7, size: 32, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1200, file: !14, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1200, file: !14, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1200, file: !14, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1200, file: !14, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1200, file: !14, line: 233, baseType: !1186, size: 64, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1200, file: !14, line: 234, baseType: !1193, size: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1200, file: !14, line: 235, baseType: !1186, size: 64, offset: 256)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1200, file: !14, line: 236, baseType: !1193, size: 64, offset: 320)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1200, file: !14, line: 237, baseType: !1215, size: 4096, offset: 512)
!1215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1196, size: 4096, elements: !1216)
!1216 = !{!1217}
!1217 = !DISubrange(count: 8)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1196, file: !14, line: 161, baseType: !7, size: 32, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1196, file: !14, line: 162, baseType: !1220, size: 32, offset: 96)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !294, line: 27, baseType: !1221)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !414, line: 96, baseType: !112)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1196, file: !14, line: 163, baseType: !1223, size: 32, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !363, line: 276, baseType: !1224)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !363, line: 276, size: 32, elements: !1225)
!1225 = !{!1226}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1224, file: !363, line: 276, baseType: !367, size: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1196, file: !14, line: 164, baseType: !1193, size: 64, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1196, file: !14, line: 165, baseType: !1229, size: 128, offset: 256)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1182, line: 14, size: 128, elements: !1230)
!1230 = !{!1231}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1229, file: !1182, line: 15, baseType: !736, size: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1196, file: !14, line: 166, baseType: !1233, size: 64, offset: 384)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!1186}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1196, file: !14, line: 167, baseType: !1186, size: 64, offset: 448)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1178, file: !14, line: 123, baseType: !1238, size: 8, offset: 448)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !278, line: 17, baseType: !179)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1178, file: !14, line: 124, baseType: !1238, size: 8, offset: 456)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1178, file: !14, line: 125, baseType: !1238, size: 8, offset: 464)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1178, file: !14, line: 126, baseType: !1238, size: 8, offset: 472)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1162, file: !1105, line: 572, baseType: !1178, size: 512, offset: 1216)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1162, file: !1105, line: 580, baseType: !1244, size: 64, offset: 1728)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1104, file: !1105, line: 721, baseType: !7, size: 32, offset: 3584)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1104, file: !1105, line: 722, baseType: !112, size: 32, offset: 3616)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1104, file: !1105, line: 723, baseType: !1248, size: 64, offset: 3648)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1250)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1251, line: 17, baseType: !1252)
!1251 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1251, line: 17, size: 64, elements: !1253)
!1253 = !{!1254}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1252, file: !1251, line: 17, baseType: !148, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1104, file: !1105, line: 724, baseType: !1250, size: 64, offset: 3712)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1104, file: !1105, line: 749, baseType: !1257, offset: 3776)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1105, line: 290, elements: !316)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1104, file: !1105, line: 751, baseType: !318, size: 128, offset: 3776)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1104, file: !1105, line: 757, baseType: !949, size: 64, offset: 3904)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1104, file: !1105, line: 758, baseType: !949, size: 64, offset: 3968)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1104, file: !1105, line: 761, baseType: !1262, size: 320, offset: 4032)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1046, line: 34, size: 320, elements: !1263)
!1263 = !{!1264, !1265}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1262, file: !1046, line: 35, baseType: !393, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1262, file: !1046, line: 36, baseType: !1266, size: 256, offset: 64)
!1266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !956, size: 256, elements: !1050)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1104, file: !1105, line: 766, baseType: !112, size: 32, offset: 4352)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1104, file: !1105, line: 767, baseType: !112, size: 32, offset: 4384)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1104, file: !1105, line: 768, baseType: !112, size: 32, offset: 4416)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1104, file: !1105, line: 770, baseType: !112, size: 32, offset: 4448)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1104, file: !1105, line: 772, baseType: !92, size: 64, offset: 4480)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1104, file: !1105, line: 775, baseType: !7, size: 32, offset: 4544)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1104, file: !1105, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1104, file: !1105, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1104, file: !1105, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1104, file: !1105, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1104, file: !1105, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1104, file: !1105, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1104, file: !1105, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1104, file: !1105, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1104, file: !1105, line: 831, baseType: !92, size: 64, offset: 4672)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1104, file: !1105, line: 833, baseType: !1283, size: 384, offset: 4736)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !19, line: 25, size: 384, elements: !1284)
!1284 = !{!1285, !1290}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1283, file: !19, line: 26, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!105, !1289}
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, scope: !1283, file: !19, line: 27, baseType: !1291, size: 320, offset: 64)
!1291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1283, file: !19, line: 27, size: 320, elements: !1292)
!1292 = !{!1293, !1303, !1329}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1291, file: !19, line: 36, baseType: !1294, size: 320)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1291, file: !19, line: 29, size: 320, elements: !1295)
!1295 = !{!1296, !1298, !1299, !1300, !1301, !1302}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1294, file: !19, line: 30, baseType: !1297, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1294, file: !19, line: 31, baseType: !390, size: 32, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1294, file: !19, line: 32, baseType: !390, size: 32, offset: 96)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1294, file: !19, line: 33, baseType: !390, size: 32, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1294, file: !19, line: 34, baseType: !393, size: 64, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1294, file: !19, line: 35, baseType: !1297, size: 64, offset: 256)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1291, file: !19, line: 46, baseType: !1304, size: 192)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1291, file: !19, line: 38, size: 192, elements: !1305)
!1305 = !{!1306, !1307, !1308, !1328}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1304, file: !19, line: 39, baseType: !1220, size: 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1304, file: !19, line: 40, baseType: !18, size: 32, offset: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !19, line: 41, baseType: !1309, size: 64, offset: 64)
!1309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1304, file: !19, line: 41, size: 64, elements: !1310)
!1310 = !{!1311, !1319}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1309, file: !19, line: 42, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1314, line: 7, size: 128, elements: !1315)
!1314 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1315 = !{!1316, !1318}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1313, file: !1314, line: 8, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !414, line: 93, baseType: !300)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1313, file: !1314, line: 9, baseType: !300, size: 64, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1309, file: !19, line: 43, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1322, line: 7, size: 64, elements: !1323)
!1322 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1323 = !{!1324, !1327}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1321, file: !1322, line: 8, baseType: !1325, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1322, line: 5, baseType: !1326)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !278, line: 20, baseType: !111)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1321, file: !1322, line: 9, baseType: !1326, size: 32, offset: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1304, file: !19, line: 45, baseType: !393, size: 64, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1291, file: !19, line: 54, baseType: !1330, size: 256)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1291, file: !19, line: 48, size: 256, elements: !1331)
!1331 = !{!1332, !1335, !1336, !1337, !1338}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1330, file: !19, line: 49, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !19, line: 14, flags: DIFlagFwdDecl)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1330, file: !19, line: 50, baseType: !112, size: 32, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1330, file: !19, line: 51, baseType: !112, size: 32, offset: 96)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1330, file: !19, line: 52, baseType: !92, size: 64, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1330, file: !19, line: 53, baseType: !92, size: 64, offset: 192)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1104, file: !1105, line: 835, baseType: !1340, size: 32, offset: 5120)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !294, line: 22, baseType: !1341)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !414, line: 28, baseType: !112)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1104, file: !1105, line: 836, baseType: !1340, size: 32, offset: 5152)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1104, file: !1105, line: 840, baseType: !92, size: 64, offset: 5184)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1104, file: !1105, line: 849, baseType: !1103, size: 64, offset: 5248)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1104, file: !1105, line: 852, baseType: !1103, size: 64, offset: 5312)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1104, file: !1105, line: 857, baseType: !318, size: 128, offset: 5376)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1104, file: !1105, line: 858, baseType: !318, size: 128, offset: 5504)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1104, file: !1105, line: 859, baseType: !1103, size: 64, offset: 5632)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1104, file: !1105, line: 867, baseType: !318, size: 128, offset: 5696)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1104, file: !1105, line: 868, baseType: !318, size: 128, offset: 5824)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1104, file: !1105, line: 871, baseType: !1352, size: 64, offset: 5952)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !1354)
!1354 = !{!1355, !1356, !1357, !1358, !1360, !1361, !1368, !1369}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1353, file: !40, line: 61, baseType: !1116, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1353, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1353, file: !40, line: 63, baseType: !302, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1353, file: !40, line: 65, baseType: !1359, size: 256, offset: 64)
!1359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !616, size: 256, elements: !1050)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1353, file: !40, line: 66, baseType: !616, size: 64, offset: 320)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1353, file: !40, line: 68, baseType: !1362, size: 128, offset: 384)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1363, line: 40, baseType: !1364)
!1363 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1363, line: 36, size: 128, elements: !1365)
!1365 = !{!1366, !1367}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1364, file: !1363, line: 37, baseType: !302)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1364, file: !1363, line: 38, baseType: !318, size: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1353, file: !40, line: 69, baseType: !340, size: 128, align: 64, offset: 512)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1353, file: !40, line: 70, baseType: !1370, size: 128, offset: 640)
!1370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1371, size: 128, elements: !149)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !1372)
!1372 = !{!1373, !1374}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1371, file: !40, line: 55, baseType: !112, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1371, file: !40, line: 56, baseType: !1375, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1104, file: !1105, line: 872, baseType: !1378, size: 512, offset: 6016)
!1378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 512, elements: !1050)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1104, file: !1105, line: 873, baseType: !318, size: 128, offset: 6528)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1104, file: !1105, line: 874, baseType: !318, size: 128, offset: 6656)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1104, file: !1105, line: 876, baseType: !1382, size: 64, offset: 6784)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1384, line: 26, size: 192, elements: !1385)
!1384 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1385 = !{!1386, !1387}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1383, file: !1384, line: 27, baseType: !7, size: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1383, file: !1384, line: 28, baseType: !1388, size: 128, offset: 64)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1389, line: 43, size: 128, elements: !1390)
!1389 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1390 = !{!1391, !1392}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1388, file: !1389, line: 44, baseType: !757)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1388, file: !1389, line: 45, baseType: !318, size: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1104, file: !1105, line: 879, baseType: !688, size: 64, offset: 6848)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1104, file: !1105, line: 882, baseType: !688, size: 64, offset: 6912)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1104, file: !1105, line: 884, baseType: !393, size: 64, offset: 6976)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1104, file: !1105, line: 885, baseType: !393, size: 64, offset: 7040)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1104, file: !1105, line: 890, baseType: !393, size: 64, offset: 7104)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1104, file: !1105, line: 891, baseType: !1399, size: 128, offset: 7168)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1105, line: 242, size: 128, elements: !1400)
!1400 = !{!1401, !1402, !1403}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1399, file: !1105, line: 244, baseType: !393, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1399, file: !1105, line: 245, baseType: !393, size: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1399, file: !1105, line: 246, baseType: !757, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1104, file: !1105, line: 900, baseType: !92, size: 64, offset: 7296)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1104, file: !1105, line: 901, baseType: !92, size: 64, offset: 7360)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1104, file: !1105, line: 904, baseType: !393, size: 64, offset: 7424)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1104, file: !1105, line: 907, baseType: !393, size: 64, offset: 7488)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1104, file: !1105, line: 910, baseType: !92, size: 64, offset: 7552)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1104, file: !1105, line: 911, baseType: !92, size: 64, offset: 7616)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1104, file: !1105, line: 914, baseType: !1411, size: 640, offset: 7680)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1412, line: 123, size: 640, elements: !1413)
!1412 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1413 = !{!1414, !1420, !1421}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1411, file: !1412, line: 124, baseType: !1415, size: 576)
!1415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1416, size: 576, elements: !632)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1412, line: 108, size: 192, elements: !1417)
!1417 = !{!1418, !1419}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1416, file: !1412, line: 109, baseType: !393, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1416, file: !1412, line: 110, baseType: !1229, size: 128, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1411, file: !1412, line: 125, baseType: !7, size: 32, offset: 576)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1411, file: !1412, line: 126, baseType: !7, size: 32, offset: 608)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1104, file: !1105, line: 917, baseType: !1423, size: 192, offset: 8320)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1412, line: 134, size: 192, elements: !1424)
!1424 = !{!1425, !1426}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1423, file: !1412, line: 135, baseType: !340, size: 128, align: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1423, file: !1412, line: 136, baseType: !7, size: 32, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1104, file: !1105, line: 923, baseType: !1428, size: 64, offset: 8512)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1430)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1431, line: 111, size: 1280, elements: !1432)
!1431 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1432 = !{!1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1450, !1451, !1452, !1453, !1454, !1455, !1562, !1563, !1564, !1565, !1591, !1594, !1604}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1430, file: !1431, line: 112, baseType: !731, size: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1430, file: !1431, line: 120, baseType: !407, size: 32, offset: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1430, file: !1431, line: 121, baseType: !416, size: 32, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1430, file: !1431, line: 122, baseType: !407, size: 32, offset: 96)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1430, file: !1431, line: 123, baseType: !416, size: 32, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1430, file: !1431, line: 124, baseType: !407, size: 32, offset: 160)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1430, file: !1431, line: 125, baseType: !416, size: 32, offset: 192)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1430, file: !1431, line: 126, baseType: !407, size: 32, offset: 224)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1430, file: !1431, line: 127, baseType: !416, size: 32, offset: 256)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1430, file: !1431, line: 128, baseType: !7, size: 32, offset: 288)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1430, file: !1431, line: 129, baseType: !1444, size: 64, offset: 320)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1445, line: 26, baseType: !1446)
!1445 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1445, line: 24, size: 64, elements: !1447)
!1447 = !{!1448}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1446, file: !1445, line: 25, baseType: !1449, size: 64)
!1449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 64, elements: !163)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1430, file: !1431, line: 130, baseType: !1444, size: 64, offset: 384)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1430, file: !1431, line: 131, baseType: !1444, size: 64, offset: 448)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1430, file: !1431, line: 132, baseType: !1444, size: 64, offset: 512)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1430, file: !1431, line: 133, baseType: !1444, size: 64, offset: 576)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1430, file: !1431, line: 135, baseType: !86, size: 8, offset: 640)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1430, file: !1431, line: 137, baseType: !1456, size: 64, offset: 704)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1458, line: 189, size: 1664, elements: !1459)
!1458 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1459 = !{!1460, !1461, !1464, !1469, !1470, !1473, !1474, !1479, !1480, !1481, !1482, !1484, !1485, !1486, !1487, !1488, !1526, !1547}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1457, file: !1458, line: 190, baseType: !1116, size: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1457, file: !1458, line: 191, baseType: !1462, size: 32, offset: 32)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1458, line: 28, baseType: !1463)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !294, line: 98, baseType: !1326)
!1464 = !DIDerivedType(tag: DW_TAG_member, scope: !1457, file: !1458, line: 192, baseType: !1465, size: 192, offset: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1457, file: !1458, line: 192, size: 192, elements: !1466)
!1466 = !{!1467, !1468}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1465, file: !1458, line: 193, baseType: !318, size: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1465, file: !1458, line: 194, baseType: !744, size: 192, align: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1457, file: !1458, line: 199, baseType: !751, size: 256, offset: 256)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1457, file: !1458, line: 200, baseType: !1471, size: 64, offset: 512)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1458, line: 200, flags: DIFlagFwdDecl)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1457, file: !1458, line: 201, baseType: !102, size: 64, offset: 576)
!1474 = !DIDerivedType(tag: DW_TAG_member, scope: !1457, file: !1458, line: 202, baseType: !1475, size: 64, offset: 640)
!1475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1457, file: !1458, line: 202, size: 64, elements: !1476)
!1476 = !{!1477, !1478}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1475, file: !1458, line: 203, baseType: !512, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1475, file: !1458, line: 204, baseType: !512, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1457, file: !1458, line: 206, baseType: !512, size: 64, offset: 704)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1457, file: !1458, line: 207, baseType: !407, size: 32, offset: 768)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1457, file: !1458, line: 208, baseType: !416, size: 32, offset: 800)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1457, file: !1458, line: 209, baseType: !1483, size: 32, offset: 832)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1458, line: 31, baseType: !531)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1457, file: !1458, line: 210, baseType: !97, size: 16, offset: 864)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1457, file: !1458, line: 211, baseType: !97, size: 16, offset: 880)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1457, file: !1458, line: 215, baseType: !89, size: 16, offset: 896)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1457, file: !1458, line: 222, baseType: !92, size: 64, offset: 960)
!1488 = !DIDerivedType(tag: DW_TAG_member, scope: !1457, file: !1458, line: 239, baseType: !1489, size: 320, offset: 1024)
!1489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1457, file: !1458, line: 239, size: 320, elements: !1490)
!1490 = !{!1491, !1518}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1489, file: !1458, line: 240, baseType: !1492, size: 320)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1458, line: 108, size: 320, elements: !1493)
!1493 = !{!1494, !1495, !1507, !1510, !1517}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1492, file: !1458, line: 110, baseType: !92, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, scope: !1492, file: !1458, line: 111, baseType: !1496, size: 64, offset: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1492, file: !1458, line: 111, size: 64, elements: !1497)
!1497 = !{!1498, !1506}
!1498 = !DIDerivedType(tag: DW_TAG_member, scope: !1496, file: !1458, line: 112, baseType: !1499, size: 64)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1496, file: !1458, line: 112, size: 64, elements: !1500)
!1500 = !{!1501, !1502}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1499, file: !1458, line: 114, baseType: !277, size: 16)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1499, file: !1458, line: 115, baseType: !1503, size: 48, offset: 16)
!1503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 48, elements: !1504)
!1504 = !{!1505}
!1505 = !DISubrange(count: 6)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1496, file: !1458, line: 121, baseType: !92, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1492, file: !1458, line: 123, baseType: !1508, size: 64, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1458, line: 96, flags: DIFlagFwdDecl)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1492, file: !1458, line: 124, baseType: !1511, size: 64, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1458, line: 102, size: 192, elements: !1513)
!1513 = !{!1514, !1515, !1516}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1512, file: !1458, line: 103, baseType: !340, size: 128, align: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1512, file: !1458, line: 104, baseType: !1116, size: 32, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1512, file: !1458, line: 105, baseType: !464, size: 8, offset: 160)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1492, file: !1458, line: 125, baseType: !135, size: 64, offset: 256)
!1518 = !DIDerivedType(tag: DW_TAG_member, scope: !1489, file: !1458, line: 241, baseType: !1519, size: 320)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1489, file: !1458, line: 241, size: 320, elements: !1520)
!1520 = !{!1521, !1522, !1523, !1524, !1525}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1519, file: !1458, line: 242, baseType: !92, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1519, file: !1458, line: 243, baseType: !92, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1519, file: !1458, line: 244, baseType: !1508, size: 64, offset: 128)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1519, file: !1458, line: 245, baseType: !1511, size: 64, offset: 192)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1519, file: !1458, line: 246, baseType: !459, size: 64, offset: 256)
!1526 = !DIDerivedType(tag: DW_TAG_member, scope: !1457, file: !1458, line: 254, baseType: !1527, size: 256, offset: 1344)
!1527 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1457, file: !1458, line: 254, size: 256, elements: !1528)
!1528 = !{!1529, !1535}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1527, file: !1458, line: 255, baseType: !1530, size: 256)
!1530 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1458, line: 128, size: 256, elements: !1531)
!1531 = !{!1532, !1533}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1530, file: !1458, line: 129, baseType: !102, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1530, file: !1458, line: 130, baseType: !1534, size: 256)
!1534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 256, elements: !1050)
!1535 = !DIDerivedType(tag: DW_TAG_member, scope: !1527, file: !1458, line: 256, baseType: !1536, size: 256)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1527, file: !1458, line: 256, size: 256, elements: !1537)
!1537 = !{!1538, !1539}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1536, file: !1458, line: 258, baseType: !318, size: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1536, file: !1458, line: 259, baseType: !1540, size: 128, offset: 128)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1541, line: 22, size: 128, elements: !1542)
!1541 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1542 = !{!1543, !1546}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1540, file: !1541, line: 23, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1541, line: 23, flags: DIFlagFwdDecl)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1540, file: !1541, line: 24, baseType: !92, size: 64, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1457, file: !1458, line: 274, baseType: !1548, size: 64, offset: 1600)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1458, line: 170, size: 192, elements: !1550)
!1550 = !{!1551, !1560, !1561}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1549, file: !1458, line: 171, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1458, line: 165, baseType: !1553)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!112, !1456, !1556, !1558, !1456}
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1509)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1530)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1549, file: !1458, line: 172, baseType: !1456, size: 64, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1549, file: !1458, line: 173, baseType: !1508, size: 64, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1430, file: !1431, line: 138, baseType: !1456, size: 64, offset: 768)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1430, file: !1431, line: 139, baseType: !1456, size: 64, offset: 832)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1430, file: !1431, line: 140, baseType: !1456, size: 64, offset: 896)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1430, file: !1431, line: 145, baseType: !1566, size: 64, offset: 960)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1568, line: 13, size: 896, elements: !1569)
!1568 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1569 = !{!1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1567, file: !1568, line: 14, baseType: !1116, size: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1567, file: !1568, line: 15, baseType: !731, size: 32, offset: 32)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1567, file: !1568, line: 16, baseType: !731, size: 32, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1567, file: !1568, line: 21, baseType: !291, size: 64, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1567, file: !1568, line: 27, baseType: !92, size: 64, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1567, file: !1568, line: 28, baseType: !92, size: 64, offset: 256)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1567, file: !1568, line: 29, baseType: !291, size: 64, offset: 320)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1567, file: !1568, line: 32, baseType: !620, size: 128, offset: 384)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1567, file: !1568, line: 33, baseType: !407, size: 32, offset: 512)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1567, file: !1568, line: 37, baseType: !291, size: 64, offset: 576)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1567, file: !1568, line: 44, baseType: !1581, size: 256, offset: 640)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1582, line: 15, size: 256, elements: !1583)
!1582 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1583 = !{!1584, !1585, !1586, !1587, !1588, !1589, !1590}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1581, file: !1582, line: 16, baseType: !757)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1581, file: !1582, line: 18, baseType: !112, size: 32)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1581, file: !1582, line: 19, baseType: !112, size: 32, offset: 32)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1581, file: !1582, line: 20, baseType: !112, size: 32, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1581, file: !1582, line: 21, baseType: !112, size: 32, offset: 96)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1581, file: !1582, line: 22, baseType: !92, size: 64, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1581, file: !1582, line: 23, baseType: !92, size: 64, offset: 192)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1430, file: !1431, line: 146, baseType: !1592, size: 64, offset: 1024)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !706, line: 516, flags: DIFlagFwdDecl)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1430, file: !1431, line: 147, baseType: !1595, size: 64, offset: 1088)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1431, line: 25, size: 64, elements: !1597)
!1597 = !{!1598, !1599, !1600}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1596, file: !1431, line: 26, baseType: !731, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1596, file: !1431, line: 27, baseType: !112, size: 32, offset: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1596, file: !1431, line: 28, baseType: !1601, offset: 64)
!1601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, elements: !1602)
!1602 = !{!1603}
!1603 = !DISubrange(count: 0)
!1604 = !DIDerivedType(tag: DW_TAG_member, scope: !1430, file: !1431, line: 149, baseType: !1605, size: 128, offset: 1152)
!1605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1430, file: !1431, line: 149, size: 128, elements: !1606)
!1606 = !{!1607, !1608}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1605, file: !1431, line: 150, baseType: !112, size: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1605, file: !1431, line: 151, baseType: !340, size: 128, align: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1104, file: !1105, line: 926, baseType: !1428, size: 64, offset: 8576)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1104, file: !1105, line: 929, baseType: !1428, size: 64, offset: 8640)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1104, file: !1105, line: 933, baseType: !1456, size: 64, offset: 8704)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1104, file: !1105, line: 943, baseType: !1613, size: 128, offset: 8768)
!1613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 128, elements: !114)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1104, file: !1105, line: 945, baseType: !1615, size: 64, offset: 8896)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1105, line: 49, flags: DIFlagFwdDecl)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1104, file: !1105, line: 956, baseType: !1618, size: 64, offset: 8960)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1105, line: 45, flags: DIFlagFwdDecl)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1104, file: !1105, line: 959, baseType: !1621, size: 64, offset: 9024)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1105, line: 959, flags: DIFlagFwdDecl)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1104, file: !1105, line: 962, baseType: !1624, size: 64, offset: 9088)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1105, line: 66, flags: DIFlagFwdDecl)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1104, file: !1105, line: 966, baseType: !1627, size: 64, offset: 9152)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1105, line: 50, flags: DIFlagFwdDecl)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1104, file: !1105, line: 969, baseType: !1630, size: 64, offset: 9216)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1632, line: 82, size: 7296, elements: !1633)
!1632 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1633 = !{!1634, !1635, !1636, !1637, !1638, !1639, !1640, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1669, !1678, !1679, !1681, !1682, !1683, !1686, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1716, !1717, !1724, !1725, !1726, !1727, !1728, !1729}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1631, file: !1632, line: 83, baseType: !1116, size: 32)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1631, file: !1632, line: 84, baseType: !731, size: 32, offset: 32)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1631, file: !1632, line: 85, baseType: !112, size: 32, offset: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1631, file: !1632, line: 86, baseType: !318, size: 128, offset: 128)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1631, file: !1632, line: 88, baseType: !1362, size: 128, offset: 256)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1631, file: !1632, line: 91, baseType: !1103, size: 64, offset: 384)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1631, file: !1632, line: 94, baseType: !1641, size: 192, offset: 448)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1642, line: 30, size: 192, elements: !1643)
!1642 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1643 = !{!1644, !1645}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1641, file: !1642, line: 31, baseType: !318, size: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1641, file: !1642, line: 32, baseType: !1646, size: 64, offset: 128)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1647, line: 25, baseType: !1648)
!1647 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1647, line: 23, size: 64, elements: !1649)
!1649 = !{!1650}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1648, file: !1647, line: 24, baseType: !148, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1631, file: !1632, line: 97, baseType: !616, size: 64, offset: 640)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1631, file: !1632, line: 100, baseType: !112, size: 32, offset: 704)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1631, file: !1632, line: 106, baseType: !112, size: 32, offset: 736)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1631, file: !1632, line: 107, baseType: !1103, size: 64, offset: 768)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1631, file: !1632, line: 110, baseType: !112, size: 32, offset: 832)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1631, file: !1632, line: 111, baseType: !7, size: 32, offset: 864)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1631, file: !1632, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1631, file: !1632, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1631, file: !1632, line: 128, baseType: !112, size: 32, offset: 928)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1631, file: !1632, line: 129, baseType: !318, size: 128, offset: 960)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1631, file: !1632, line: 132, baseType: !1178, size: 512, offset: 1088)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1631, file: !1632, line: 133, baseType: !1186, size: 64, offset: 1600)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1631, file: !1632, line: 140, baseType: !1664, size: 256, offset: 1664)
!1664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1665, size: 256, elements: !163)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1632, line: 38, size: 128, elements: !1666)
!1666 = !{!1667, !1668}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1665, file: !1632, line: 39, baseType: !393, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1665, file: !1632, line: 40, baseType: !393, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1631, file: !1632, line: 146, baseType: !1670, size: 192, offset: 1920)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1632, line: 66, size: 192, elements: !1671)
!1671 = !{!1672}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1670, file: !1632, line: 67, baseType: !1673, size: 192)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1632, line: 47, size: 192, elements: !1674)
!1674 = !{!1675, !1676, !1677}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1673, file: !1632, line: 48, baseType: !293, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1673, file: !1632, line: 49, baseType: !293, size: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1673, file: !1632, line: 50, baseType: !293, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1631, file: !1632, line: 150, baseType: !1411, size: 640, offset: 2112)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1631, file: !1632, line: 153, baseType: !1680, size: 256, offset: 2752)
!1680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1352, size: 256, elements: !1050)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1631, file: !1632, line: 159, baseType: !1352, size: 64, offset: 3008)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1631, file: !1632, line: 162, baseType: !112, size: 32, offset: 3072)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1631, file: !1632, line: 164, baseType: !1684, size: 64, offset: 3136)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1632, line: 164, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1631, file: !1632, line: 175, baseType: !1687, size: 32, offset: 3200)
!1687 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !363, line: 805, baseType: !1688)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !363, line: 798, size: 32, elements: !1689)
!1689 = !{!1690, !1691}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1688, file: !363, line: 803, baseType: !362, size: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1688, file: !363, line: 804, baseType: !302, offset: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1631, file: !1632, line: 176, baseType: !393, size: 64, offset: 3264)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1631, file: !1632, line: 176, baseType: !393, size: 64, offset: 3328)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1631, file: !1632, line: 176, baseType: !393, size: 64, offset: 3392)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1631, file: !1632, line: 176, baseType: !393, size: 64, offset: 3456)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1631, file: !1632, line: 177, baseType: !393, size: 64, offset: 3520)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1631, file: !1632, line: 178, baseType: !393, size: 64, offset: 3584)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1631, file: !1632, line: 179, baseType: !1399, size: 128, offset: 3648)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1631, file: !1632, line: 180, baseType: !92, size: 64, offset: 3776)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1631, file: !1632, line: 180, baseType: !92, size: 64, offset: 3840)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1631, file: !1632, line: 180, baseType: !92, size: 64, offset: 3904)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1631, file: !1632, line: 180, baseType: !92, size: 64, offset: 3968)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1631, file: !1632, line: 181, baseType: !92, size: 64, offset: 4032)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1631, file: !1632, line: 181, baseType: !92, size: 64, offset: 4096)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1631, file: !1632, line: 181, baseType: !92, size: 64, offset: 4160)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1631, file: !1632, line: 181, baseType: !92, size: 64, offset: 4224)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1631, file: !1632, line: 182, baseType: !92, size: 64, offset: 4288)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1631, file: !1632, line: 182, baseType: !92, size: 64, offset: 4352)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1631, file: !1632, line: 182, baseType: !92, size: 64, offset: 4416)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1631, file: !1632, line: 182, baseType: !92, size: 64, offset: 4480)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1631, file: !1632, line: 183, baseType: !92, size: 64, offset: 4544)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1631, file: !1632, line: 183, baseType: !92, size: 64, offset: 4608)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1631, file: !1632, line: 184, baseType: !1714, offset: 4672)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1715, line: 12, elements: !316)
!1715 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1631, file: !1632, line: 192, baseType: !395, size: 64, offset: 4672)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1631, file: !1632, line: 203, baseType: !1718, size: 2048, offset: 4736)
!1718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1719, size: 2048, elements: !114)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1720, line: 43, size: 128, elements: !1721)
!1720 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1721 = !{!1722, !1723}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1719, file: !1720, line: 44, baseType: !555, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1719, file: !1720, line: 45, baseType: !555, size: 64, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1631, file: !1632, line: 220, baseType: !464, size: 8, offset: 6784)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1631, file: !1632, line: 221, baseType: !89, size: 16, offset: 6800)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1631, file: !1632, line: 222, baseType: !89, size: 16, offset: 6816)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1631, file: !1632, line: 224, baseType: !949, size: 64, offset: 6848)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1631, file: !1632, line: 227, baseType: !287, size: 192, offset: 6912)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1631, file: !1632, line: 233, baseType: !287, size: 192, offset: 7104)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1104, file: !1105, line: 970, baseType: !1731, size: 64, offset: 9280)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1632, line: 20, size: 16576, elements: !1733)
!1733 = !{!1734, !1735, !1736, !1737}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1732, file: !1632, line: 21, baseType: !302)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1732, file: !1632, line: 22, baseType: !1116, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1732, file: !1632, line: 23, baseType: !1362, size: 128, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1732, file: !1632, line: 24, baseType: !1738, size: 16384, offset: 192)
!1738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1739, size: 16384, elements: !1759)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1642, line: 49, size: 256, elements: !1740)
!1740 = !{!1741}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1739, file: !1642, line: 50, baseType: !1742, size: 256)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1642, line: 35, size: 256, elements: !1743)
!1743 = !{!1744, !1751, !1752, !1758}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1742, file: !1642, line: 37, baseType: !1745, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1746, line: 19, baseType: !1747)
!1746 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1746, line: 18, baseType: !1749)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{null, !112}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1742, file: !1642, line: 38, baseType: !92, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1742, file: !1642, line: 44, baseType: !1753, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1746, line: 22, baseType: !1754)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1746, line: 21, baseType: !1756)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{null}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1742, file: !1642, line: 46, baseType: !1646, size: 64, offset: 192)
!1759 = !{!1760}
!1760 = !DISubrange(count: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1104, file: !1105, line: 971, baseType: !1646, size: 64, offset: 9344)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1104, file: !1105, line: 972, baseType: !1646, size: 64, offset: 9408)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1104, file: !1105, line: 974, baseType: !1646, size: 64, offset: 9472)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1104, file: !1105, line: 975, baseType: !1641, size: 192, offset: 9536)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1104, file: !1105, line: 976, baseType: !92, size: 64, offset: 9728)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1104, file: !1105, line: 977, baseType: !553, size: 64, offset: 9792)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1104, file: !1105, line: 978, baseType: !7, size: 32, offset: 9856)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1104, file: !1105, line: 980, baseType: !343, size: 64, offset: 9920)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1104, file: !1105, line: 989, baseType: !1770, size: 128, offset: 9984)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1771, line: 35, size: 128, elements: !1772)
!1771 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1772 = !{!1773, !1774, !1775}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1770, file: !1771, line: 36, baseType: !112, size: 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1770, file: !1771, line: 37, baseType: !731, size: 32, offset: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1770, file: !1771, line: 38, baseType: !1776, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1771, line: 23, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1104, file: !1105, line: 992, baseType: !393, size: 64, offset: 10112)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1104, file: !1105, line: 993, baseType: !393, size: 64, offset: 10176)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1104, file: !1105, line: 996, baseType: !302, offset: 10240)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1104, file: !1105, line: 999, baseType: !757, offset: 10240)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1104, file: !1105, line: 1001, baseType: !1783, size: 64, offset: 10240)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1105, line: 636, size: 64, elements: !1784)
!1784 = !{!1785}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1783, file: !1105, line: 637, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1104, file: !1105, line: 1005, baseType: !736, size: 128, offset: 10304)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1104, file: !1105, line: 1007, baseType: !1103, size: 64, offset: 10432)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1104, file: !1105, line: 1009, baseType: !1790, size: 64, offset: 10496)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1105, line: 1009, flags: DIFlagFwdDecl)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1104, file: !1105, line: 1043, baseType: !102, size: 64, offset: 10560)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1104, file: !1105, line: 1046, baseType: !1794, size: 64, offset: 10624)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1105, line: 41, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1104, file: !1105, line: 1050, baseType: !1797, size: 64, offset: 10688)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1105, line: 42, flags: DIFlagFwdDecl)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1104, file: !1105, line: 1054, baseType: !1800, size: 64, offset: 10752)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1105, line: 55, flags: DIFlagFwdDecl)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1104, file: !1105, line: 1056, baseType: !1803, size: 64, offset: 10816)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1105, line: 40, flags: DIFlagFwdDecl)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1104, file: !1105, line: 1058, baseType: !1806, size: 64, offset: 10880)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1808, line: 99, size: 704, elements: !1809)
!1808 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1809 = !{!1810, !1811, !1812, !1813, !1814, !1815, !1816, !1835, !1836}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1807, file: !1808, line: 100, baseType: !291, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1807, file: !1808, line: 101, baseType: !731, size: 32, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1807, file: !1808, line: 102, baseType: !731, size: 32, offset: 96)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1807, file: !1808, line: 105, baseType: !302, offset: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1807, file: !1808, line: 107, baseType: !97, size: 16, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1807, file: !1808, line: 109, baseType: !722, size: 128, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1807, file: !1808, line: 110, baseType: !1817, size: 64, offset: 320)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1808, line: 73, size: 448, elements: !1819)
!1819 = !{!1820, !1823, !1824, !1829, !1834}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1818, file: !1808, line: 74, baseType: !1821, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1808, line: 74, flags: DIFlagFwdDecl)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1818, file: !1808, line: 75, baseType: !1806, size: 64, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, scope: !1818, file: !1808, line: 83, baseType: !1825, size: 128, offset: 128)
!1825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1818, file: !1808, line: 83, size: 128, elements: !1826)
!1826 = !{!1827, !1828}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1825, file: !1808, line: 84, baseType: !318, size: 128)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1825, file: !1808, line: 85, baseType: !910, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, scope: !1818, file: !1808, line: 87, baseType: !1830, size: 128, offset: 256)
!1830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1818, file: !1808, line: 87, size: 128, elements: !1831)
!1831 = !{!1832, !1833}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1830, file: !1808, line: 88, baseType: !620, size: 128)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1830, file: !1808, line: 89, baseType: !340, size: 128, align: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1818, file: !1808, line: 92, baseType: !7, size: 32, offset: 384)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1807, file: !1808, line: 111, baseType: !616, size: 64, offset: 384)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1807, file: !1808, line: 113, baseType: !1837, size: 256, offset: 448)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1838, line: 102, size: 256, elements: !1839)
!1838 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1839 = !{!1840, !1841, !1842}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1837, file: !1838, line: 103, baseType: !291, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1837, file: !1838, line: 104, baseType: !318, size: 128, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1837, file: !1838, line: 105, baseType: !1843, size: 64, offset: 192)
!1843 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1838, line: 21, baseType: !1844)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{null, !1847}
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1104, file: !1105, line: 1061, baseType: !1849, size: 64, offset: 10944)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1105, line: 43, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1104, file: !1105, line: 1064, baseType: !92, size: 64, offset: 11008)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1104, file: !1105, line: 1065, baseType: !1853, size: 64, offset: 11072)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1642, line: 14, baseType: !1855)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1642, line: 12, size: 384, elements: !1856)
!1856 = !{!1857}
!1857 = !DIDerivedType(tag: DW_TAG_member, scope: !1855, file: !1642, line: 13, baseType: !1858, size: 384)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !1642, line: 13, size: 384, elements: !1859)
!1859 = !{!1860, !1861, !1862, !1863}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1858, file: !1642, line: 13, baseType: !112, size: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1858, file: !1642, line: 13, baseType: !112, size: 32, offset: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1858, file: !1642, line: 13, baseType: !112, size: 32, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1858, file: !1642, line: 13, baseType: !1864, size: 256, offset: 128)
!1864 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1865, line: 32, size: 256, elements: !1866)
!1865 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1866 = !{!1867, !1872, !1885, !1891, !1900, !1920, !1925}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1864, file: !1865, line: 37, baseType: !1868, size: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1864, file: !1865, line: 34, size: 64, elements: !1869)
!1869 = !{!1870, !1871}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1868, file: !1865, line: 35, baseType: !1341, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1868, file: !1865, line: 36, baseType: !413, size: 32, offset: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1864, file: !1865, line: 45, baseType: !1873, size: 192)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1864, file: !1865, line: 40, size: 192, elements: !1874)
!1874 = !{!1875, !1877, !1878, !1884}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1873, file: !1865, line: 41, baseType: !1876, size: 32)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !414, line: 95, baseType: !112)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1873, file: !1865, line: 42, baseType: !112, size: 32, offset: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1873, file: !1865, line: 43, baseType: !1879, size: 64, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1865, line: 11, baseType: !1880)
!1880 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1865, line: 8, size: 64, elements: !1881)
!1881 = !{!1882, !1883}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1880, file: !1865, line: 9, baseType: !112, size: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1880, file: !1865, line: 10, baseType: !102, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1873, file: !1865, line: 44, baseType: !112, size: 32, offset: 128)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1864, file: !1865, line: 52, baseType: !1886, size: 128)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1864, file: !1865, line: 48, size: 128, elements: !1887)
!1887 = !{!1888, !1889, !1890}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1886, file: !1865, line: 49, baseType: !1341, size: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1886, file: !1865, line: 50, baseType: !413, size: 32, offset: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1886, file: !1865, line: 51, baseType: !1879, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1864, file: !1865, line: 61, baseType: !1892, size: 256)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1864, file: !1865, line: 55, size: 256, elements: !1893)
!1893 = !{!1894, !1895, !1896, !1897, !1899}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1892, file: !1865, line: 56, baseType: !1341, size: 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1892, file: !1865, line: 57, baseType: !413, size: 32, offset: 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1892, file: !1865, line: 58, baseType: !112, size: 32, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1892, file: !1865, line: 59, baseType: !1898, size: 64, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !414, line: 94, baseType: !552)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1892, file: !1865, line: 60, baseType: !1898, size: 64, offset: 192)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1864, file: !1865, line: 95, baseType: !1901, size: 256)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1864, file: !1865, line: 64, size: 256, elements: !1902)
!1902 = !{!1903, !1904}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1901, file: !1865, line: 65, baseType: !102, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, scope: !1901, file: !1865, line: 77, baseType: !1905, size: 192, offset: 64)
!1905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1901, file: !1865, line: 77, size: 192, elements: !1906)
!1906 = !{!1907, !1908, !1915}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1905, file: !1865, line: 82, baseType: !89, size: 16)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1905, file: !1865, line: 88, baseType: !1909, size: 192)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1905, file: !1865, line: 84, size: 192, elements: !1910)
!1910 = !{!1911, !1913, !1914}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1909, file: !1865, line: 85, baseType: !1912, size: 64)
!1912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 64, elements: !1216)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1909, file: !1865, line: 86, baseType: !102, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1909, file: !1865, line: 87, baseType: !102, size: 64, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1905, file: !1865, line: 93, baseType: !1916, size: 96)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1905, file: !1865, line: 90, size: 96, elements: !1917)
!1917 = !{!1918, !1919}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1916, file: !1865, line: 91, baseType: !1912, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1916, file: !1865, line: 92, baseType: !183, size: 32, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1864, file: !1865, line: 101, baseType: !1921, size: 128)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1864, file: !1865, line: 98, size: 128, elements: !1922)
!1922 = !{!1923, !1924}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1921, file: !1865, line: 99, baseType: !105, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1921, file: !1865, line: 100, baseType: !112, size: 32, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1864, file: !1865, line: 108, baseType: !1926, size: 128)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1864, file: !1865, line: 104, size: 128, elements: !1927)
!1927 = !{!1928, !1929, !1930}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1926, file: !1865, line: 105, baseType: !102, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1926, file: !1865, line: 106, baseType: !112, size: 32, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1926, file: !1865, line: 107, baseType: !7, size: 32, offset: 96)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1104, file: !1105, line: 1067, baseType: !1714, offset: 11136)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1104, file: !1105, line: 1099, baseType: !1933, size: 64, offset: 11136)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1105, line: 56, flags: DIFlagFwdDecl)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1104, file: !1105, line: 1103, baseType: !318, size: 128, offset: 11200)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1104, file: !1105, line: 1104, baseType: !1937, size: 64, offset: 11328)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1105, line: 46, flags: DIFlagFwdDecl)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1104, file: !1105, line: 1105, baseType: !287, size: 192, offset: 11392)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1104, file: !1105, line: 1106, baseType: !7, size: 32, offset: 11584)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1104, file: !1105, line: 1109, baseType: !1942, size: 128, offset: 11648)
!1942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1943, size: 128, elements: !163)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1105, line: 51, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1104, file: !1105, line: 1110, baseType: !287, size: 192, offset: 11776)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1104, file: !1105, line: 1111, baseType: !318, size: 128, offset: 11968)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1104, file: !1105, line: 1173, baseType: !1948, size: 64, offset: 12096)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1950, line: 62, size: 256, align: 256, elements: !1951)
!1950 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1951 = !{!1952, !1953, !1954, !1959}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1949, file: !1950, line: 75, baseType: !183, size: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1949, file: !1950, line: 90, baseType: !183, size: 32, offset: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1949, file: !1950, line: 124, baseType: !1955, size: 64, offset: 64)
!1955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1949, file: !1950, line: 109, size: 64, elements: !1956)
!1956 = !{!1957, !1958}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1955, file: !1950, line: 110, baseType: !394, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1955, file: !1950, line: 112, baseType: !394, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1949, file: !1950, line: 144, baseType: !183, size: 32, offset: 128)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1104, file: !1105, line: 1174, baseType: !390, size: 32, offset: 12160)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1104, file: !1105, line: 1179, baseType: !92, size: 64, offset: 12224)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1104, file: !1105, line: 1182, baseType: !1963, size: 128, offset: 12288)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1046, line: 76, size: 128, elements: !1964)
!1964 = !{!1965, !1970, !1971}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1963, file: !1046, line: 85, baseType: !1966, size: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1967, line: 7, size: 64, elements: !1968)
!1967 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1968 = !{!1969}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1966, file: !1967, line: 12, baseType: !1252, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1963, file: !1046, line: 88, baseType: !464, size: 8, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1963, file: !1046, line: 95, baseType: !464, size: 8, offset: 72)
!1972 = !DIDerivedType(tag: DW_TAG_member, scope: !1104, file: !1105, line: 1184, baseType: !1973, size: 128, offset: 12416)
!1973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1104, file: !1105, line: 1184, size: 128, elements: !1974)
!1974 = !{!1975, !1976}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1973, file: !1105, line: 1185, baseType: !1116, size: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1973, file: !1105, line: 1186, baseType: !340, size: 128, align: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1104, file: !1105, line: 1190, baseType: !1978, size: 64, offset: 12544)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1105, line: 53, flags: DIFlagFwdDecl)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1104, file: !1105, line: 1192, baseType: !1981, size: 128, offset: 12608)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1046, line: 64, size: 128, elements: !1982)
!1982 = !{!1983, !1984, !1985}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1981, file: !1046, line: 65, baseType: !704, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1981, file: !1046, line: 67, baseType: !183, size: 32, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1981, file: !1046, line: 68, baseType: !183, size: 32, offset: 96)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1104, file: !1105, line: 1206, baseType: !112, size: 32, offset: 12736)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1104, file: !1105, line: 1207, baseType: !112, size: 32, offset: 12768)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1104, file: !1105, line: 1209, baseType: !92, size: 64, offset: 12800)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1104, file: !1105, line: 1219, baseType: !393, size: 64, offset: 12864)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1104, file: !1105, line: 1220, baseType: !393, size: 64, offset: 12928)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1104, file: !1105, line: 1317, baseType: !112, size: 32, offset: 12992)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1104, file: !1105, line: 1319, baseType: !1103, size: 64, offset: 13056)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1104, file: !1105, line: 1322, baseType: !1994, size: 64, offset: 13120)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1996, line: 9, flags: DIFlagFwdDecl)
!1996 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1104, file: !1105, line: 1326, baseType: !1116, size: 32, offset: 13184)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1104, file: !1105, line: 1342, baseType: !102, size: 64, offset: 13248)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1104, file: !1105, line: 1343, baseType: !394, size: 64, offset: 13312)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1104, file: !1105, line: 1344, baseType: !393, size: 64, offset: 13376)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1104, file: !1105, line: 1345, baseType: !394, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1104, file: !1105, line: 1346, baseType: !394, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1104, file: !1105, line: 1347, baseType: !394, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1104, file: !1105, line: 1348, baseType: !340, size: 128, align: 64, offset: 13504)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1104, file: !1105, line: 1358, baseType: !2006, size: 34816, offset: 13824)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2007, line: 485, size: 34816, elements: !2008)
!2007 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2008 = !{!2009, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2038, !2039, !2040, !2041, !2042, !2043, !2046, !2047, !2048}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2006, file: !2007, line: 487, baseType: !2010, size: 192)
!2010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2011, size: 192, elements: !632)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2012, line: 16, size: 64, elements: !2013)
!2012 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2013 = !{!2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2011, file: !2012, line: 17, baseType: !277, size: 16)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2011, file: !2012, line: 18, baseType: !277, size: 16, offset: 16)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2011, file: !2012, line: 19, baseType: !277, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2011, file: !2012, line: 19, baseType: !277, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2011, file: !2012, line: 19, baseType: !277, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2011, file: !2012, line: 19, baseType: !277, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2011, file: !2012, line: 19, baseType: !277, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2011, file: !2012, line: 20, baseType: !277, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2011, file: !2012, line: 20, baseType: !277, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2011, file: !2012, line: 20, baseType: !277, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2011, file: !2012, line: 20, baseType: !277, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2011, file: !2012, line: 20, baseType: !277, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2011, file: !2012, line: 20, baseType: !277, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2006, file: !2007, line: 491, baseType: !92, size: 64, offset: 192)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2006, file: !2007, line: 495, baseType: !97, size: 16, offset: 256)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2006, file: !2007, line: 496, baseType: !97, size: 16, offset: 272)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2006, file: !2007, line: 497, baseType: !97, size: 16, offset: 288)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2006, file: !2007, line: 498, baseType: !97, size: 16, offset: 304)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2006, file: !2007, line: 502, baseType: !92, size: 64, offset: 320)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2006, file: !2007, line: 503, baseType: !92, size: 64, offset: 384)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2006, file: !2007, line: 514, baseType: !2035, size: 256, offset: 448)
!2035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2036, size: 256, elements: !1050)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2007, line: 483, flags: DIFlagFwdDecl)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2006, file: !2007, line: 516, baseType: !92, size: 64, offset: 704)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2006, file: !2007, line: 518, baseType: !92, size: 64, offset: 768)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2006, file: !2007, line: 520, baseType: !92, size: 64, offset: 832)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2006, file: !2007, line: 521, baseType: !92, size: 64, offset: 896)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2006, file: !2007, line: 522, baseType: !92, size: 64, offset: 960)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2006, file: !2007, line: 528, baseType: !2044, size: 64, offset: 1024)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2007, line: 10, flags: DIFlagFwdDecl)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2006, file: !2007, line: 535, baseType: !92, size: 64, offset: 1088)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2006, file: !2007, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2006, file: !2007, line: 540, baseType: !2049, size: 33280, offset: 1536)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2050, line: 317, size: 33280, elements: !2051)
!2050 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2051 = !{!2052, !2053, !2054}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2049, file: !2050, line: 330, baseType: !7, size: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2049, file: !2050, line: 337, baseType: !92, size: 64, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2049, file: !2050, line: 348, baseType: !2055, size: 32768, offset: 512)
!2055 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2050, line: 304, size: 32768, elements: !2056)
!2056 = !{!2057, !2072, !2107, !2157, !2170}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2055, file: !2050, line: 305, baseType: !2058, size: 896)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2050, line: 12, size: 896, elements: !2059)
!2059 = !{!2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2071}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2058, file: !2050, line: 13, baseType: !390, size: 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2058, file: !2050, line: 14, baseType: !390, size: 32, offset: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2058, file: !2050, line: 15, baseType: !390, size: 32, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2058, file: !2050, line: 16, baseType: !390, size: 32, offset: 96)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2058, file: !2050, line: 17, baseType: !390, size: 32, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2058, file: !2050, line: 18, baseType: !390, size: 32, offset: 160)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2058, file: !2050, line: 19, baseType: !390, size: 32, offset: 192)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2058, file: !2050, line: 22, baseType: !2068, size: 640, offset: 224)
!2068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 640, elements: !2069)
!2069 = !{!2070}
!2070 = !DISubrange(count: 20)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2058, file: !2050, line: 25, baseType: !390, size: 32, offset: 864)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2055, file: !2050, line: 306, baseType: !2073, size: 4096, align: 128)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2050, line: 34, size: 4096, align: 128, elements: !2074)
!2074 = !{!2075, !2076, !2077, !2078, !2079, !2094, !2095, !2096, !2098, !2100, !2102}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2073, file: !2050, line: 35, baseType: !277, size: 16)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2073, file: !2050, line: 36, baseType: !277, size: 16, offset: 16)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2073, file: !2050, line: 37, baseType: !277, size: 16, offset: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2073, file: !2050, line: 38, baseType: !277, size: 16, offset: 48)
!2079 = !DIDerivedType(tag: DW_TAG_member, scope: !2073, file: !2050, line: 39, baseType: !2080, size: 128, offset: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2073, file: !2050, line: 39, size: 128, elements: !2081)
!2081 = !{!2082, !2087}
!2082 = !DIDerivedType(tag: DW_TAG_member, scope: !2080, file: !2050, line: 40, baseType: !2083, size: 128)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2080, file: !2050, line: 40, size: 128, elements: !2084)
!2084 = !{!2085, !2086}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2083, file: !2050, line: 41, baseType: !393, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2083, file: !2050, line: 42, baseType: !393, size: 64, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, scope: !2080, file: !2050, line: 44, baseType: !2088, size: 128)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2080, file: !2050, line: 44, size: 128, elements: !2089)
!2089 = !{!2090, !2091, !2092, !2093}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2088, file: !2050, line: 45, baseType: !390, size: 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2088, file: !2050, line: 46, baseType: !390, size: 32, offset: 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2088, file: !2050, line: 47, baseType: !390, size: 32, offset: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2088, file: !2050, line: 48, baseType: !390, size: 32, offset: 96)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2073, file: !2050, line: 51, baseType: !390, size: 32, offset: 192)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2073, file: !2050, line: 52, baseType: !390, size: 32, offset: 224)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2073, file: !2050, line: 55, baseType: !2097, size: 1024, offset: 256)
!2097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 1024, elements: !186)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2073, file: !2050, line: 58, baseType: !2099, size: 2048, offset: 1280)
!2099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 2048, elements: !1759)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2073, file: !2050, line: 60, baseType: !2101, size: 384, offset: 3328)
!2101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 384, elements: !154)
!2102 = !DIDerivedType(tag: DW_TAG_member, scope: !2073, file: !2050, line: 62, baseType: !2103, size: 384, offset: 3712)
!2103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2073, file: !2050, line: 62, size: 384, elements: !2104)
!2104 = !{!2105, !2106}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2103, file: !2050, line: 63, baseType: !2101, size: 384)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2103, file: !2050, line: 64, baseType: !2101, size: 384)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2055, file: !2050, line: 307, baseType: !2108, size: 1088)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2050, line: 79, size: 1088, elements: !2109)
!2109 = !{!2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2156}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2108, file: !2050, line: 80, baseType: !390, size: 32)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2108, file: !2050, line: 81, baseType: !390, size: 32, offset: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2108, file: !2050, line: 82, baseType: !390, size: 32, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2108, file: !2050, line: 83, baseType: !390, size: 32, offset: 96)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2108, file: !2050, line: 84, baseType: !390, size: 32, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2108, file: !2050, line: 85, baseType: !390, size: 32, offset: 160)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2108, file: !2050, line: 86, baseType: !390, size: 32, offset: 192)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2108, file: !2050, line: 88, baseType: !2068, size: 640, offset: 224)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2108, file: !2050, line: 89, baseType: !1238, size: 8, offset: 864)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2108, file: !2050, line: 90, baseType: !1238, size: 8, offset: 872)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2108, file: !2050, line: 91, baseType: !1238, size: 8, offset: 880)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2108, file: !2050, line: 92, baseType: !1238, size: 8, offset: 888)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2108, file: !2050, line: 93, baseType: !1238, size: 8, offset: 896)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2108, file: !2050, line: 94, baseType: !1238, size: 8, offset: 904)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2108, file: !2050, line: 95, baseType: !2125, size: 64, offset: 960)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2127, line: 11, size: 128, elements: !2128)
!2127 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2128 = !{!2129, !2130}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2126, file: !2127, line: 12, baseType: !105, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2126, file: !2127, line: 13, baseType: !2131, size: 64, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2133, line: 56, size: 1344, elements: !2134)
!2133 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2134 = !{!2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2132, file: !2133, line: 61, baseType: !92, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2132, file: !2133, line: 62, baseType: !92, size: 64, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2132, file: !2133, line: 63, baseType: !92, size: 64, offset: 128)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2132, file: !2133, line: 64, baseType: !92, size: 64, offset: 192)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2132, file: !2133, line: 65, baseType: !92, size: 64, offset: 256)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2132, file: !2133, line: 66, baseType: !92, size: 64, offset: 320)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2132, file: !2133, line: 68, baseType: !92, size: 64, offset: 384)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2132, file: !2133, line: 69, baseType: !92, size: 64, offset: 448)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2132, file: !2133, line: 70, baseType: !92, size: 64, offset: 512)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2132, file: !2133, line: 71, baseType: !92, size: 64, offset: 576)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2132, file: !2133, line: 72, baseType: !92, size: 64, offset: 640)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2132, file: !2133, line: 73, baseType: !92, size: 64, offset: 704)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2132, file: !2133, line: 74, baseType: !92, size: 64, offset: 768)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2132, file: !2133, line: 75, baseType: !92, size: 64, offset: 832)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2132, file: !2133, line: 76, baseType: !92, size: 64, offset: 896)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2132, file: !2133, line: 81, baseType: !92, size: 64, offset: 960)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2132, file: !2133, line: 83, baseType: !92, size: 64, offset: 1024)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2132, file: !2133, line: 84, baseType: !92, size: 64, offset: 1088)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2132, file: !2133, line: 85, baseType: !92, size: 64, offset: 1152)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2132, file: !2133, line: 86, baseType: !92, size: 64, offset: 1216)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2132, file: !2133, line: 87, baseType: !92, size: 64, offset: 1280)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2108, file: !2050, line: 96, baseType: !390, size: 32, offset: 1024)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2055, file: !2050, line: 308, baseType: !2158, size: 4608, align: 512)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2050, line: 289, size: 4608, align: 512, elements: !2159)
!2159 = !{!2160, !2161, !2168}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2158, file: !2050, line: 290, baseType: !2073, size: 4096, align: 128)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2158, file: !2050, line: 291, baseType: !2162, size: 512, offset: 4096)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2050, line: 268, size: 512, elements: !2163)
!2163 = !{!2164, !2165, !2166}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2162, file: !2050, line: 269, baseType: !393, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2162, file: !2050, line: 270, baseType: !393, size: 64, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2162, file: !2050, line: 271, baseType: !2167, size: 384, offset: 128)
!2167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 384, elements: !1504)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2158, file: !2050, line: 292, baseType: !2169, offset: 4608)
!2169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1238, elements: !1602)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2055, file: !2050, line: 309, baseType: !2171, size: 32768)
!2171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1238, size: 32768, elements: !2172)
!2172 = !{!2173}
!2173 = !DISubrange(count: 4096)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1100, file: !706, line: 378, baseType: !2175, size: 64, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1096, file: !706, line: 384, baseType: !1383, size: 192, offset: 192)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !953, file: !706, line: 500, baseType: !302, offset: 6656)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !953, file: !706, line: 501, baseType: !2179, size: 64, offset: 6656)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !706, line: 387, flags: DIFlagFwdDecl)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !953, file: !706, line: 516, baseType: !1592, size: 64, offset: 6720)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !953, file: !706, line: 519, baseType: !327, size: 64, offset: 6784)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !953, file: !706, line: 521, baseType: !2184, size: 64, offset: 6848)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !706, line: 521, flags: DIFlagFwdDecl)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !953, file: !706, line: 545, baseType: !731, size: 32, offset: 6912)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !953, file: !706, line: 548, baseType: !464, size: 8, offset: 6944)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !953, file: !706, line: 550, baseType: !2189, offset: 6952)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2190, line: 142, elements: !316)
!2190 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !953, file: !706, line: 554, baseType: !1837, size: 256, offset: 6976)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !953, file: !706, line: 557, baseType: !390, size: 32, offset: 7232)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !950, file: !706, line: 565, baseType: !2194, offset: 7296)
!2194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, elements: !2195)
!2195 = !{!2196}
!2196 = !DISubrange(count: -1)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !946, file: !706, line: 151, baseType: !731, size: 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !939, file: !706, line: 156, baseType: !302, offset: 256)
!2199 = !DIDerivedType(tag: DW_TAG_member, scope: !710, file: !706, line: 159, baseType: !2200, size: 128)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !710, file: !706, line: 159, size: 128, elements: !2201)
!2201 = !{!2202, !2205}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2200, file: !706, line: 161, baseType: !2203, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !706, line: 161, flags: DIFlagFwdDecl)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2200, file: !706, line: 162, baseType: !102, size: 64, offset: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !710, file: !706, line: 176, baseType: !340, size: 128, align: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, scope: !705, file: !706, line: 179, baseType: !2208, size: 32, offset: 384)
!2208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !705, file: !706, line: 179, size: 32, elements: !2209)
!2209 = !{!2210, !2211, !2212, !2213}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2208, file: !706, line: 184, baseType: !731, size: 32)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2208, file: !706, line: 192, baseType: !7, size: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2208, file: !706, line: 194, baseType: !7, size: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2208, file: !706, line: 195, baseType: !112, size: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !705, file: !706, line: 199, baseType: !731, size: 32, offset: 416)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !640, file: !31, line: 1964, baseType: !2216, size: 64, offset: 1344)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!105, !577, !2219}
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2221, line: 12, size: 256, elements: !2222)
!2221 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2222 = !{!2223, !2224, !2225, !2226, !2227}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2220, file: !2221, line: 13, baseType: !727, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2220, file: !2221, line: 16, baseType: !112, size: 32, offset: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2220, file: !2221, line: 23, baseType: !92, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2220, file: !2221, line: 30, baseType: !92, size: 64, offset: 128)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2220, file: !2221, line: 33, baseType: !2228, size: 64, offset: 192)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !706, line: 27, flags: DIFlagFwdDecl)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !640, file: !31, line: 1966, baseType: !2216, size: 64, offset: 1408)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !578, file: !31, line: 1424, baseType: !2232, size: 64, offset: 448)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2234)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 322, size: 704, elements: !2235)
!2235 = !{!2236, !2282, !2286, !2290, !2291, !2292, !2293, !2294, !2299, !2304, !2308}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2234, file: !25, line: 323, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!112, !2240}
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 294, size: 1600, elements: !2242)
!2242 = !{!2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2267, !2268, !2269}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2241, file: !25, line: 295, baseType: !620, size: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2241, file: !25, line: 296, baseType: !318, size: 128, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2241, file: !25, line: 297, baseType: !318, size: 128, offset: 256)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2241, file: !25, line: 298, baseType: !318, size: 128, offset: 384)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2241, file: !25, line: 299, baseType: !287, size: 192, offset: 512)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2241, file: !25, line: 300, baseType: !302, offset: 704)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2241, file: !25, line: 301, baseType: !731, size: 32, offset: 704)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2241, file: !25, line: 302, baseType: !577, size: 64, offset: 768)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2241, file: !25, line: 303, baseType: !2252, size: 64, offset: 832)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !2253)
!2253 = !{!2254, !2266}
!2254 = !DIDerivedType(tag: DW_TAG_member, scope: !2252, file: !25, line: 69, baseType: !2255, size: 32)
!2255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2252, file: !25, line: 69, size: 32, elements: !2256)
!2256 = !{!2257, !2258, !2259}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2255, file: !25, line: 70, baseType: !407, size: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2255, file: !25, line: 71, baseType: !416, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2255, file: !25, line: 72, baseType: !2260, size: 32)
!2260 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2261, line: 24, baseType: !2262)
!2261 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2261, line: 22, size: 32, elements: !2263)
!2263 = !{!2264}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2262, file: !2261, line: 23, baseType: !2265, size: 32)
!2265 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2261, line: 20, baseType: !413)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2252, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2241, file: !25, line: 304, baseType: !505, size: 64, offset: 896)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2241, file: !25, line: 305, baseType: !92, size: 64, offset: 960)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2241, file: !25, line: 306, baseType: !2270, size: 576, offset: 1024)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !2271)
!2271 = !{!2272, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2270, file: !25, line: 206, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !300)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2270, file: !25, line: 207, baseType: !2273, size: 64, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2270, file: !25, line: 208, baseType: !2273, size: 64, offset: 128)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2270, file: !25, line: 209, baseType: !2273, size: 64, offset: 192)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2270, file: !25, line: 210, baseType: !2273, size: 64, offset: 256)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2270, file: !25, line: 211, baseType: !2273, size: 64, offset: 320)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2270, file: !25, line: 212, baseType: !2273, size: 64, offset: 384)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2270, file: !25, line: 213, baseType: !512, size: 64, offset: 448)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2270, file: !25, line: 214, baseType: !512, size: 64, offset: 512)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2234, file: !25, line: 324, baseType: !2283, size: 64, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!2240, !577, !112}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2234, file: !25, line: 325, baseType: !2287, size: 64, offset: 128)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{null, !2240}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2234, file: !25, line: 326, baseType: !2237, size: 64, offset: 192)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2234, file: !25, line: 327, baseType: !2237, size: 64, offset: 256)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2234, file: !25, line: 328, baseType: !2237, size: 64, offset: 320)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2234, file: !25, line: 329, baseType: !668, size: 64, offset: 384)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2234, file: !25, line: 332, baseType: !2295, size: 64, offset: 448)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!2298, !400}
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2234, file: !25, line: 333, baseType: !2300, size: 64, offset: 512)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!112, !400, !2303}
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2234, file: !25, line: 335, baseType: !2305, size: 64, offset: 576)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!112, !400, !2298}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2234, file: !25, line: 337, baseType: !2309, size: 64, offset: 640)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!112, !577, !2312}
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !578, file: !31, line: 1425, baseType: !2314, size: 64, offset: 512)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2316)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 428, size: 704, elements: !2317)
!2317 = !{!2318, !2322, !2323, !2327, !2328, !2329, !2344, !2367, !2371, !2372, !2395}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2316, file: !25, line: 429, baseType: !2319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!112, !577, !112, !112, !521}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2316, file: !25, line: 430, baseType: !668, size: 64, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2316, file: !25, line: 431, baseType: !2324, size: 64, offset: 128)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!112, !577, !7}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2316, file: !25, line: 432, baseType: !2324, size: 64, offset: 192)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2316, file: !25, line: 433, baseType: !668, size: 64, offset: 256)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2316, file: !25, line: 434, baseType: !2330, size: 64, offset: 320)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!112, !577, !112, !2333}
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 415, size: 256, elements: !2335)
!2335 = !{!2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2334, file: !25, line: 416, baseType: !112, size: 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2334, file: !25, line: 417, baseType: !7, size: 32, offset: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2334, file: !25, line: 418, baseType: !7, size: 32, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2334, file: !25, line: 420, baseType: !7, size: 32, offset: 96)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2334, file: !25, line: 421, baseType: !7, size: 32, offset: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2334, file: !25, line: 422, baseType: !7, size: 32, offset: 160)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2334, file: !25, line: 423, baseType: !7, size: 32, offset: 192)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2334, file: !25, line: 424, baseType: !7, size: 32, offset: 224)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2316, file: !25, line: 435, baseType: !2345, size: 64, offset: 384)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!112, !577, !2252, !2348}
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 343, size: 960, elements: !2350)
!2350 = !{!2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2349, file: !25, line: 344, baseType: !112, size: 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2349, file: !25, line: 345, baseType: !393, size: 64, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2349, file: !25, line: 346, baseType: !393, size: 64, offset: 128)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2349, file: !25, line: 347, baseType: !393, size: 64, offset: 192)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2349, file: !25, line: 348, baseType: !393, size: 64, offset: 256)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2349, file: !25, line: 349, baseType: !393, size: 64, offset: 320)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2349, file: !25, line: 350, baseType: !393, size: 64, offset: 384)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2349, file: !25, line: 351, baseType: !298, size: 64, offset: 448)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2349, file: !25, line: 353, baseType: !298, size: 64, offset: 512)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2349, file: !25, line: 354, baseType: !112, size: 32, offset: 576)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2349, file: !25, line: 355, baseType: !112, size: 32, offset: 608)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2349, file: !25, line: 356, baseType: !393, size: 64, offset: 640)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2349, file: !25, line: 357, baseType: !393, size: 64, offset: 704)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2349, file: !25, line: 358, baseType: !393, size: 64, offset: 768)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2349, file: !25, line: 359, baseType: !298, size: 64, offset: 832)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2349, file: !25, line: 360, baseType: !112, size: 32, offset: 896)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2316, file: !25, line: 436, baseType: !2368, size: 64, offset: 448)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!112, !577, !2312, !2348}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2316, file: !25, line: 438, baseType: !2345, size: 64, offset: 512)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2316, file: !25, line: 439, baseType: !2373, size: 64, offset: 576)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!112, !577, !2376}
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 409, size: 1408, elements: !2378)
!2378 = !{!2379, !2380}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2377, file: !25, line: 410, baseType: !7, size: 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2377, file: !25, line: 411, baseType: !2381, size: 1344, offset: 64)
!2381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2382, size: 1344, elements: !632)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 395, size: 448, elements: !2383)
!2383 = !{!2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2394}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2382, file: !25, line: 396, baseType: !7, size: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2382, file: !25, line: 397, baseType: !7, size: 32, offset: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2382, file: !25, line: 399, baseType: !7, size: 32, offset: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2382, file: !25, line: 400, baseType: !7, size: 32, offset: 96)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2382, file: !25, line: 401, baseType: !7, size: 32, offset: 128)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2382, file: !25, line: 402, baseType: !7, size: 32, offset: 160)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2382, file: !25, line: 403, baseType: !7, size: 32, offset: 192)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2382, file: !25, line: 404, baseType: !395, size: 64, offset: 256)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2382, file: !25, line: 405, baseType: !2393, size: 64, offset: 320)
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !294, line: 126, baseType: !393)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2382, file: !25, line: 406, baseType: !2393, size: 64, offset: 384)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2316, file: !25, line: 440, baseType: !2324, size: 64, offset: 640)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !578, file: !31, line: 1426, baseType: !2397, size: 64, offset: 576)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2399)
!2399 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !578, file: !31, line: 1427, baseType: !92, size: 64, offset: 640)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !578, file: !31, line: 1428, baseType: !92, size: 64, offset: 704)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !578, file: !31, line: 1429, baseType: !92, size: 64, offset: 768)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !578, file: !31, line: 1430, baseType: !357, size: 64, offset: 832)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !578, file: !31, line: 1431, baseType: !751, size: 256, offset: 896)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !578, file: !31, line: 1432, baseType: !112, size: 32, offset: 1152)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !578, file: !31, line: 1433, baseType: !731, size: 32, offset: 1184)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !578, file: !31, line: 1437, baseType: !2408, size: 64, offset: 1216)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2411)
!2411 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !578, file: !31, line: 1449, baseType: !2413, size: 64, offset: 1280)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !373, line: 34, size: 64, elements: !2414)
!2414 = !{!2415}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2413, file: !373, line: 35, baseType: !376, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !578, file: !31, line: 1450, baseType: !318, size: 128, offset: 1344)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !578, file: !31, line: 1451, baseType: !2418, size: 64, offset: 1472)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !578, file: !31, line: 1452, baseType: !1803, size: 64, offset: 1536)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !578, file: !31, line: 1453, baseType: !2422, size: 64, offset: 1600)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !578, file: !31, line: 1454, baseType: !620, size: 128, offset: 1664)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !578, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !578, file: !31, line: 1456, baseType: !2427, size: 2432, offset: 1856)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 518, size: 2432, elements: !2428)
!2428 = !{!2429, !2430, !2431, !2433, !2465}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2427, file: !25, line: 519, baseType: !7, size: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2427, file: !25, line: 520, baseType: !751, size: 256, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2427, file: !25, line: 521, baseType: !2432, size: 192, offset: 320)
!2432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 192, elements: !632)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2427, file: !25, line: 522, baseType: !2434, size: 1728, offset: 512)
!2434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2435, size: 1728, elements: !632)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !2436)
!2436 = !{!2437, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2435, file: !25, line: 223, baseType: !2438, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 443, size: 256, elements: !2440)
!2440 = !{!2441, !2442, !2455, !2456}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2439, file: !25, line: 444, baseType: !112, size: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2439, file: !25, line: 445, baseType: !2443, size: 64, offset: 64)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2445)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 310, size: 512, elements: !2446)
!2446 = !{!2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2445, file: !25, line: 311, baseType: !668, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2445, file: !25, line: 312, baseType: !668, size: 64, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2445, file: !25, line: 313, baseType: !668, size: 64, offset: 128)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2445, file: !25, line: 314, baseType: !668, size: 64, offset: 192)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2445, file: !25, line: 315, baseType: !2237, size: 64, offset: 256)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2445, file: !25, line: 316, baseType: !2237, size: 64, offset: 320)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2445, file: !25, line: 317, baseType: !2237, size: 64, offset: 384)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2445, file: !25, line: 318, baseType: !2309, size: 64, offset: 448)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2439, file: !25, line: 446, baseType: !611, size: 64, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2439, file: !25, line: 447, baseType: !2438, size: 64, offset: 192)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2435, file: !25, line: 224, baseType: !112, size: 32, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2435, file: !25, line: 226, baseType: !318, size: 128, offset: 128)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2435, file: !25, line: 227, baseType: !92, size: 64, offset: 256)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2435, file: !25, line: 228, baseType: !7, size: 32, offset: 320)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2435, file: !25, line: 229, baseType: !7, size: 32, offset: 352)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2435, file: !25, line: 230, baseType: !2273, size: 64, offset: 384)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2435, file: !25, line: 231, baseType: !2273, size: 64, offset: 448)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2435, file: !25, line: 232, baseType: !102, size: 64, offset: 512)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2427, file: !25, line: 523, baseType: !2466, size: 192, offset: 2240)
!2466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2443, size: 192, elements: !632)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !578, file: !31, line: 1458, baseType: !2468, size: 2112, offset: 4288)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !2469)
!2469 = !{!2470, !2471, !2472}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2468, file: !31, line: 1411, baseType: !112, size: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2468, file: !31, line: 1412, baseType: !1362, size: 128, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2468, file: !31, line: 1413, baseType: !2473, size: 1920, offset: 192)
!2473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2474, size: 1920, elements: !632)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2475, line: 12, size: 640, elements: !2476)
!2475 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2476 = !{!2477, !2485, !2486, !2491, !2492}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2474, file: !2475, line: 13, baseType: !2478, size: 320)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2479, line: 17, size: 320, elements: !2480)
!2479 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2480 = !{!2481, !2482, !2483, !2484}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2478, file: !2479, line: 18, baseType: !112, size: 32)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2478, file: !2479, line: 19, baseType: !112, size: 32, offset: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2478, file: !2479, line: 20, baseType: !1362, size: 128, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2478, file: !2479, line: 22, baseType: !340, size: 128, align: 64, offset: 192)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2474, file: !2475, line: 14, baseType: !188, size: 64, offset: 320)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2474, file: !2475, line: 15, baseType: !2487, size: 64, offset: 384)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2488, line: 16, size: 64, elements: !2489)
!2488 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2489 = !{!2490}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2487, file: !2488, line: 17, baseType: !1103, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2474, file: !2475, line: 16, baseType: !1362, size: 128, offset: 448)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2474, file: !2475, line: 17, baseType: !731, size: 32, offset: 576)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !578, file: !31, line: 1465, baseType: !102, size: 64, offset: 6400)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !578, file: !31, line: 1468, baseType: !390, size: 32, offset: 6464)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !578, file: !31, line: 1470, baseType: !512, size: 64, offset: 6528)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !578, file: !31, line: 1471, baseType: !512, size: 64, offset: 6592)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !578, file: !31, line: 1473, baseType: !183, size: 32, offset: 6656)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !578, file: !31, line: 1474, baseType: !2499, size: 64, offset: 6720)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !578, file: !31, line: 1477, baseType: !2502, size: 256, offset: 6784)
!2502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 256, elements: !186)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !578, file: !31, line: 1478, baseType: !2504, size: 128, offset: 7040)
!2504 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2505, line: 18, baseType: !2506)
!2505 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2505, line: 16, size: 128, elements: !2507)
!2507 = !{!2508}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2506, file: !2505, line: 17, baseType: !2509, size: 128)
!2509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 128, elements: !114)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !578, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !578, file: !31, line: 1481, baseType: !2512, size: 32, offset: 7200)
!2512 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !294, line: 150, baseType: !7)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !578, file: !31, line: 1487, baseType: !287, size: 192, offset: 7232)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !578, file: !31, line: 1493, baseType: !135, size: 64, offset: 7424)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !578, file: !31, line: 1495, baseType: !2516, size: 64, offset: 7488)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2518)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !355, line: 135, size: 1024, align: 512, elements: !2519)
!2519 = !{!2520, !2524, !2525, !2532, !2538, !2542, !2546, !2550, !2551, !2555, !2559, !2564, !2568}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2518, file: !355, line: 136, baseType: !2521, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!112, !357, !7}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2518, file: !355, line: 137, baseType: !2521, size: 64, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2518, file: !355, line: 138, baseType: !2526, size: 64, offset: 128)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!112, !2529, !2531}
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2518, file: !355, line: 139, baseType: !2533, size: 64, offset: 192)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!112, !2529, !7, !135, !2536}
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2518, file: !355, line: 141, baseType: !2539, size: 64, offset: 256)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!112, !2529}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2518, file: !355, line: 142, baseType: !2543, size: 64, offset: 320)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!112, !357}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2518, file: !355, line: 143, baseType: !2547, size: 64, offset: 384)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{null, !357}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2518, file: !355, line: 144, baseType: !2547, size: 64, offset: 448)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2518, file: !355, line: 145, baseType: !2552, size: 64, offset: 512)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{null, !357, !400}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2518, file: !355, line: 146, baseType: !2556, size: 64, offset: 576)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!459, !357, !459, !112}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2518, file: !355, line: 147, baseType: !2560, size: 64, offset: 640)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!353, !2563}
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2518, file: !355, line: 148, baseType: !2565, size: 64, offset: 704)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!112, !521, !464}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2518, file: !355, line: 149, baseType: !2569, size: 64, offset: 768)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!357, !357, !2572}
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !578, file: !31, line: 1500, baseType: !112, size: 32, offset: 7552)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !578, file: !31, line: 1502, baseType: !2576, size: 448, offset: 7616)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2221, line: 60, size: 448, elements: !2577)
!2577 = !{!2578, !2583, !2584, !2585, !2586, !2587, !2588}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2576, file: !2221, line: 61, baseType: !2579, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!92, !2582, !2219}
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2576, file: !2221, line: 63, baseType: !2579, size: 64, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2576, file: !2221, line: 66, baseType: !105, size: 64, offset: 128)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2576, file: !2221, line: 67, baseType: !112, size: 32, offset: 192)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2576, file: !2221, line: 68, baseType: !7, size: 32, offset: 224)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2576, file: !2221, line: 71, baseType: !318, size: 128, offset: 256)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2576, file: !2221, line: 77, baseType: !2589, size: 64, offset: 384)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !578, file: !31, line: 1505, baseType: !291, size: 64, offset: 8064)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !578, file: !31, line: 1508, baseType: !291, size: 64, offset: 8128)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !578, file: !31, line: 1511, baseType: !112, size: 32, offset: 8192)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !578, file: !31, line: 1514, baseType: !884, size: 32, offset: 8224)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !578, file: !31, line: 1517, baseType: !2595, size: 64, offset: 8256)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1838, line: 18, flags: DIFlagFwdDecl)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !578, file: !31, line: 1518, baseType: !616, size: 64, offset: 8320)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !578, file: !31, line: 1525, baseType: !1592, size: 64, offset: 8384)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !578, file: !31, line: 1532, baseType: !2600, size: 64, offset: 8448)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2601, line: 52, size: 64, elements: !2602)
!2601 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2602 = !{!2603}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2600, file: !2601, line: 53, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2601, line: 40, size: 256, elements: !2606)
!2606 = !{!2607, !2608, !2613}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2605, file: !2601, line: 42, baseType: !302)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2605, file: !2601, line: 44, baseType: !2609, size: 192)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2601, line: 28, size: 192, elements: !2610)
!2610 = !{!2611, !2612}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2609, file: !2601, line: 29, baseType: !318, size: 128)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2609, file: !2601, line: 31, baseType: !105, size: 64, offset: 128)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2605, file: !2601, line: 49, baseType: !105, size: 64, offset: 192)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !578, file: !31, line: 1533, baseType: !2600, size: 64, offset: 8512)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !578, file: !31, line: 1534, baseType: !340, size: 128, align: 64, offset: 8576)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !578, file: !31, line: 1535, baseType: !1837, size: 256, offset: 8704)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !578, file: !31, line: 1537, baseType: !287, size: 192, offset: 8960)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !578, file: !31, line: 1542, baseType: !112, size: 32, offset: 9152)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !578, file: !31, line: 1545, baseType: !302, offset: 9184)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !578, file: !31, line: 1546, baseType: !318, size: 128, offset: 9216)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !578, file: !31, line: 1548, baseType: !302, offset: 9344)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !578, file: !31, line: 1549, baseType: !318, size: 128, offset: 9344)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !401, file: !31, line: 624, baseType: !717, size: 64, offset: 256)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !401, file: !31, line: 631, baseType: !92, size: 64, offset: 320)
!2625 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !31, line: 639, baseType: !2626, size: 32, offset: 384)
!2626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !401, file: !31, line: 639, size: 32, elements: !2627)
!2627 = !{!2628, !2630}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2626, file: !31, line: 640, baseType: !2629, size: 32)
!2629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2626, file: !31, line: 641, baseType: !7, size: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !401, file: !31, line: 643, baseType: !487, size: 32, offset: 416)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !401, file: !31, line: 644, baseType: !505, size: 64, offset: 448)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !401, file: !31, line: 645, baseType: !508, size: 128, offset: 512)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !401, file: !31, line: 646, baseType: !508, size: 128, offset: 640)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !401, file: !31, line: 647, baseType: !508, size: 128, offset: 768)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !401, file: !31, line: 648, baseType: !302, offset: 896)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !401, file: !31, line: 649, baseType: !97, size: 16, offset: 896)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !401, file: !31, line: 650, baseType: !1238, size: 8, offset: 912)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !401, file: !31, line: 651, baseType: !1238, size: 8, offset: 920)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !401, file: !31, line: 652, baseType: !2393, size: 64, offset: 960)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !401, file: !31, line: 659, baseType: !92, size: 64, offset: 1024)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !401, file: !31, line: 660, baseType: !751, size: 256, offset: 1088)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !401, file: !31, line: 662, baseType: !92, size: 64, offset: 1344)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !401, file: !31, line: 663, baseType: !92, size: 64, offset: 1408)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !401, file: !31, line: 665, baseType: !620, size: 128, offset: 1472)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !401, file: !31, line: 666, baseType: !318, size: 128, offset: 1600)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !401, file: !31, line: 675, baseType: !318, size: 128, offset: 1728)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !401, file: !31, line: 676, baseType: !318, size: 128, offset: 1856)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !401, file: !31, line: 677, baseType: !318, size: 128, offset: 1984)
!2650 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !31, line: 678, baseType: !2651, size: 128, offset: 2112)
!2651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !401, file: !31, line: 678, size: 128, elements: !2652)
!2652 = !{!2653, !2654}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2651, file: !31, line: 679, baseType: !616, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2651, file: !31, line: 680, baseType: !340, size: 128, align: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !401, file: !31, line: 682, baseType: !293, size: 64, offset: 2240)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !401, file: !31, line: 683, baseType: !293, size: 64, offset: 2304)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !401, file: !31, line: 684, baseType: !731, size: 32, offset: 2368)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !401, file: !31, line: 685, baseType: !731, size: 32, offset: 2400)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !401, file: !31, line: 686, baseType: !731, size: 32, offset: 2432)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !401, file: !31, line: 688, baseType: !731, size: 32, offset: 2464)
!2661 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !31, line: 690, baseType: !2662, size: 64, offset: 2496)
!2662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !401, file: !31, line: 690, size: 64, elements: !2663)
!2663 = !{!2664, !2886}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2662, file: !31, line: 691, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2667)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !2668)
!2668 = !{!2669, !2670, !2674, !2679, !2683, !2684, !2685, !2689, !2702, !2703, !2710, !2714, !2715, !2719, !2720, !2724, !2729, !2730, !2734, !2738, !2846, !2850, !2851, !2855, !2856, !2860, !2864, !2869, !2873, !2877, !2881, !2885}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2667, file: !31, line: 1823, baseType: !611, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2667, file: !31, line: 1824, baseType: !2671, size: 64, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!505, !327, !505, !112}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2667, file: !31, line: 1825, baseType: !2675, size: 64, offset: 128)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!550, !327, !459, !553, !2678}
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2667, file: !31, line: 1826, baseType: !2680, size: 64, offset: 192)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!550, !327, !135, !553, !2678}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2667, file: !31, line: 1827, baseType: !821, size: 64, offset: 256)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2667, file: !31, line: 1828, baseType: !821, size: 64, offset: 320)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2667, file: !31, line: 1829, baseType: !2686, size: 64, offset: 384)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!112, !824, !464}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2667, file: !31, line: 1830, baseType: !2690, size: 64, offset: 448)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!112, !327, !2693}
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !2695)
!2695 = !{!2696, !2701}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2694, file: !31, line: 1777, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !2698)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!112, !2693, !135, !112, !505, !393, !7}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2694, file: !31, line: 1778, baseType: !505, size: 64, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2667, file: !31, line: 1831, baseType: !2690, size: 64, offset: 512)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2667, file: !31, line: 1832, baseType: !2704, size: 64, offset: 576)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!2707, !327, !2708}
!2707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !95, line: 52, baseType: !7)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !597, line: 27, flags: DIFlagFwdDecl)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2667, file: !31, line: 1833, baseType: !2711, size: 64, offset: 640)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!105, !327, !7, !92}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2667, file: !31, line: 1834, baseType: !2711, size: 64, offset: 704)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2667, file: !31, line: 1835, baseType: !2716, size: 64, offset: 768)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!112, !327, !956}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2667, file: !31, line: 1836, baseType: !92, size: 64, offset: 832)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2667, file: !31, line: 1837, baseType: !2721, size: 64, offset: 896)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!112, !400, !327}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2667, file: !31, line: 1838, baseType: !2725, size: 64, offset: 960)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!112, !327, !2728}
!2728 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !102)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2667, file: !31, line: 1839, baseType: !2721, size: 64, offset: 1024)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2667, file: !31, line: 1840, baseType: !2731, size: 64, offset: 1088)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!112, !327, !505, !505, !112}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2667, file: !31, line: 1841, baseType: !2735, size: 64, offset: 1152)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!112, !112, !327, !112}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2667, file: !31, line: 1842, baseType: !2739, size: 64, offset: 1216)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!112, !327, !112, !2742}
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !2744)
!2744 = !{!2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2776, !2777, !2778, !2791, !2822}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2743, file: !31, line: 1063, baseType: !2742, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2743, file: !31, line: 1064, baseType: !318, size: 128, offset: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2743, file: !31, line: 1065, baseType: !620, size: 128, offset: 192)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2743, file: !31, line: 1066, baseType: !318, size: 128, offset: 320)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2743, file: !31, line: 1069, baseType: !318, size: 128, offset: 448)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2743, file: !31, line: 1072, baseType: !2728, size: 64, offset: 576)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2743, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2743, file: !31, line: 1074, baseType: !86, size: 8, offset: 672)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2743, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2743, file: !31, line: 1076, baseType: !112, size: 32, offset: 736)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2743, file: !31, line: 1077, baseType: !1362, size: 128, offset: 768)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2743, file: !31, line: 1078, baseType: !327, size: 64, offset: 896)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2743, file: !31, line: 1079, baseType: !505, size: 64, offset: 960)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2743, file: !31, line: 1080, baseType: !505, size: 64, offset: 1024)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2743, file: !31, line: 1082, baseType: !2760, size: 64, offset: 1088)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !2762)
!2762 = !{!2763, !2771, !2772, !2773, !2774, !2775}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2761, file: !31, line: 1315, baseType: !2764)
!2764 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2765, line: 20, baseType: !2766)
!2765 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2765, line: 11, elements: !2767)
!2767 = !{!2768}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2766, file: !2765, line: 12, baseType: !2769)
!2769 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !314, line: 33, baseType: !2770)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !314, line: 31, elements: !316)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2761, file: !31, line: 1316, baseType: !112, size: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2761, file: !31, line: 1317, baseType: !112, size: 32, offset: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2761, file: !31, line: 1318, baseType: !2760, size: 64, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2761, file: !31, line: 1319, baseType: !327, size: 64, offset: 128)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2761, file: !31, line: 1320, baseType: !340, size: 128, align: 64, offset: 192)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2743, file: !31, line: 1084, baseType: !92, size: 64, offset: 1152)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2743, file: !31, line: 1085, baseType: !92, size: 64, offset: 1216)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2743, file: !31, line: 1087, baseType: !2779, size: 64, offset: 1280)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2781)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !2782)
!2782 = !{!2783, !2787}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2781, file: !31, line: 1012, baseType: !2784, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{null, !2742, !2742}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2781, file: !31, line: 1013, baseType: !2788, size: 64, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{null, !2742}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2743, file: !31, line: 1088, baseType: !2792, size: 64, offset: 1344)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2794)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !2795)
!2795 = !{!2796, !2800, !2804, !2805, !2809, !2813, !2817, !2821}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2794, file: !31, line: 1017, baseType: !2797, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!2728, !2728}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2794, file: !31, line: 1018, baseType: !2801, size: 64, offset: 64)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{null, !2728}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2794, file: !31, line: 1019, baseType: !2788, size: 64, offset: 128)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2794, file: !31, line: 1020, baseType: !2806, size: 64, offset: 192)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!112, !2742, !112}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2794, file: !31, line: 1021, baseType: !2810, size: 64, offset: 256)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!464, !2742}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2794, file: !31, line: 1022, baseType: !2814, size: 64, offset: 320)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!112, !2742, !112, !321}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2794, file: !31, line: 1023, baseType: !2818, size: 64, offset: 384)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{null, !2742, !798}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2794, file: !31, line: 1024, baseType: !2810, size: 64, offset: 448)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2743, file: !31, line: 1097, baseType: !2823, size: 256, offset: 1408)
!2823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2743, file: !31, line: 1089, size: 256, elements: !2824)
!2824 = !{!2825, !2834, !2840}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2823, file: !31, line: 1090, baseType: !2826, size: 256)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2827, line: 10, size: 256, elements: !2828)
!2827 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2828 = !{!2829, !2830, !2833}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2826, file: !2827, line: 11, baseType: !390, size: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2826, file: !2827, line: 12, baseType: !2831, size: 64, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2827, line: 5, flags: DIFlagFwdDecl)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2826, file: !2827, line: 13, baseType: !318, size: 128, offset: 128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2823, file: !31, line: 1091, baseType: !2835, size: 64)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2827, line: 17, size: 64, elements: !2836)
!2836 = !{!2837}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2835, file: !2827, line: 18, baseType: !2838, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2827, line: 16, flags: DIFlagFwdDecl)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2823, file: !31, line: 1096, baseType: !2841, size: 192)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2823, file: !31, line: 1092, size: 192, elements: !2842)
!2842 = !{!2843, !2844, !2845}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2841, file: !31, line: 1093, baseType: !318, size: 128)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2841, file: !31, line: 1094, baseType: !112, size: 32, offset: 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2841, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2667, file: !31, line: 1843, baseType: !2847, size: 64, offset: 1280)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!550, !327, !704, !112, !553, !2678, !112}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2667, file: !31, line: 1844, baseType: !996, size: 64, offset: 1344)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2667, file: !31, line: 1845, baseType: !2852, size: 64, offset: 1408)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!112, !112}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2667, file: !31, line: 1846, baseType: !2739, size: 64, offset: 1472)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2667, file: !31, line: 1847, baseType: !2857, size: 64, offset: 1536)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!550, !1978, !327, !2678, !553, !7}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2667, file: !31, line: 1848, baseType: !2861, size: 64, offset: 1600)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!550, !327, !2678, !1978, !553, !7}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2667, file: !31, line: 1849, baseType: !2865, size: 64, offset: 1664)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!112, !327, !105, !2868, !798}
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2667, file: !31, line: 1850, baseType: !2870, size: 64, offset: 1728)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!105, !327, !112, !505, !505}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2667, file: !31, line: 1852, baseType: !2874, size: 64, offset: 1792)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{null, !694, !327}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2667, file: !31, line: 1856, baseType: !2878, size: 64, offset: 1856)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!550, !327, !505, !327, !505, !553, !7}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2667, file: !31, line: 1858, baseType: !2882, size: 64, offset: 1920)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!505, !327, !505, !327, !505, !505, !7}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2667, file: !31, line: 1861, baseType: !2731, size: 64, offset: 1984)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2662, file: !31, line: 692, baseType: !647, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !401, file: !31, line: 694, baseType: !2888, size: 64, offset: 2560)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !2890)
!2890 = !{!2891, !2892, !2893, !2894}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2889, file: !31, line: 1101, baseType: !302)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2889, file: !31, line: 1102, baseType: !318, size: 128)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2889, file: !31, line: 1103, baseType: !318, size: 128, offset: 128)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2889, file: !31, line: 1104, baseType: !318, size: 128, offset: 256)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !401, file: !31, line: 695, baseType: !718, size: 1216, align: 64, offset: 2624)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !401, file: !31, line: 696, baseType: !318, size: 128, offset: 3840)
!2897 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !31, line: 697, baseType: !2898, size: 64, offset: 3968)
!2898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !401, file: !31, line: 697, size: 64, elements: !2899)
!2899 = !{!2900, !2901, !2902, !2905, !2906}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2898, file: !31, line: 698, baseType: !1978, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2898, file: !31, line: 699, baseType: !2418, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2898, file: !31, line: 700, baseType: !2903, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !31, line: 700, flags: DIFlagFwdDecl)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2898, file: !31, line: 701, baseType: !459, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2898, file: !31, line: 702, baseType: !7, size: 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !401, file: !31, line: 705, baseType: !183, size: 32, offset: 4032)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !401, file: !31, line: 708, baseType: !183, size: 32, offset: 4064)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !401, file: !31, line: 709, baseType: !2499, size: 64, offset: 4096)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !401, file: !31, line: 720, baseType: !102, size: 64, offset: 4160)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !358, file: !355, line: 98, baseType: !2912, size: 256, offset: 448)
!2912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 256, elements: !186)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !358, file: !355, line: 101, baseType: !2914, size: 32, offset: 704)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2915, line: 25, size: 32, elements: !2916)
!2915 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2916 = !{!2917}
!2917 = !DIDerivedType(tag: DW_TAG_member, scope: !2914, file: !2915, line: 26, baseType: !2918, size: 32)
!2918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2914, file: !2915, line: 26, size: 32, elements: !2919)
!2919 = !{!2920}
!2920 = !DIDerivedType(tag: DW_TAG_member, scope: !2918, file: !2915, line: 30, baseType: !2921, size: 32)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2918, file: !2915, line: 30, size: 32, elements: !2922)
!2922 = !{!2923, !2924}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2921, file: !2915, line: 31, baseType: !302)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2921, file: !2915, line: 32, baseType: !112, size: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !358, file: !355, line: 102, baseType: !2516, size: 64, offset: 768)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !358, file: !355, line: 103, baseType: !577, size: 64, offset: 832)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !358, file: !355, line: 104, baseType: !92, size: 64, offset: 896)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !358, file: !355, line: 105, baseType: !102, size: 64, offset: 960)
!2929 = !DIDerivedType(tag: DW_TAG_member, scope: !358, file: !355, line: 107, baseType: !2930, size: 128, offset: 1024)
!2930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !358, file: !355, line: 107, size: 128, elements: !2931)
!2931 = !{!2932, !2933}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2930, file: !355, line: 108, baseType: !318, size: 128)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2930, file: !355, line: 109, baseType: !2934, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !358, file: !355, line: 111, baseType: !318, size: 128, offset: 1152)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !358, file: !355, line: 112, baseType: !318, size: 128, offset: 1280)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !358, file: !355, line: 120, baseType: !2938, size: 128, offset: 1408)
!2938 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !358, file: !355, line: 116, size: 128, elements: !2939)
!2939 = !{!2940, !2941, !2942}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2938, file: !355, line: 117, baseType: !620, size: 128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2938, file: !355, line: 118, baseType: !372, size: 128)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2938, file: !355, line: 119, baseType: !340, size: 128, align: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !328, file: !31, line: 922, baseType: !400, size: 64, offset: 256)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !328, file: !31, line: 923, baseType: !2665, size: 64, offset: 320)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !328, file: !31, line: 929, baseType: !302, offset: 384)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !328, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !328, file: !31, line: 931, baseType: !291, size: 64, offset: 448)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !328, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !328, file: !31, line: 933, baseType: !2512, size: 32, offset: 544)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !328, file: !31, line: 934, baseType: !287, size: 192, offset: 576)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !328, file: !31, line: 935, baseType: !505, size: 64, offset: 768)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !328, file: !31, line: 936, baseType: !2953, size: 192, offset: 832)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !2954)
!2954 = !{!2955, !2956, !2957, !2958, !2959, !2960}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2953, file: !31, line: 886, baseType: !2764)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2953, file: !31, line: 887, baseType: !1352, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2953, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2953, file: !31, line: 889, baseType: !407, size: 32, offset: 96)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2953, file: !31, line: 889, baseType: !407, size: 32, offset: 128)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2953, file: !31, line: 890, baseType: !112, size: 32, offset: 160)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !328, file: !31, line: 937, baseType: !1428, size: 64, offset: 1024)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !328, file: !31, line: 938, baseType: !2963, size: 256, offset: 1088)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !2964)
!2964 = !{!2965, !2966, !2967, !2968, !2969, !2970}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2963, file: !31, line: 897, baseType: !92, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2963, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2963, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2963, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2963, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2963, file: !31, line: 904, baseType: !505, size: 64, offset: 192)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !328, file: !31, line: 940, baseType: !393, size: 64, offset: 1344)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !328, file: !31, line: 945, baseType: !102, size: 64, offset: 1408)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !328, file: !31, line: 949, baseType: !318, size: 128, offset: 1472)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !328, file: !31, line: 950, baseType: !318, size: 128, offset: 1600)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !328, file: !31, line: 952, baseType: !717, size: 64, offset: 1728)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !328, file: !31, line: 953, baseType: !884, size: 32, offset: 1792)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !328, file: !31, line: 954, baseType: !884, size: 32, offset: 1824)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !131, file: !132, line: 163, baseType: !2979, size: 64, offset: 2048)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !132, line: 24, flags: DIFlagFwdDecl)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !131, file: !132, line: 165, baseType: !7, size: 32, offset: 2112)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !131, file: !132, line: 166, baseType: !2983, size: 320, offset: 2176)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2984, line: 11, size: 320, elements: !2985)
!2984 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!2985 = !{!2986, !2987, !2988, !2993}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2983, file: !2984, line: 16, baseType: !620, size: 128)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2983, file: !2984, line: 17, baseType: !92, size: 64, offset: 128)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2983, file: !2984, line: 18, baseType: !2989, size: 64, offset: 192)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{null, !2992}
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2983, file: !2984, line: 19, baseType: !390, size: 32, offset: 256)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !131, file: !132, line: 168, baseType: !2995, size: 64, offset: 2496)
!2995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 64, elements: !163)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !131, file: !132, line: 170, baseType: !2997, size: 64, offset: 2560)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !132, line: 170, flags: DIFlagFwdDecl)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !131, file: !132, line: 172, baseType: !3000, size: 64, offset: 2624)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !141, line: 90, size: 192, elements: !3002)
!3002 = !{!3003, !3004, !3005, !3006, !3007, !3008}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3001, file: !141, line: 91, baseType: !111, size: 32)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !3001, file: !141, line: 92, baseType: !111, size: 32, offset: 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !3001, file: !141, line: 93, baseType: !111, size: 32, offset: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !3001, file: !141, line: 94, baseType: !111, size: 32, offset: 96)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !3001, file: !141, line: 95, baseType: !111, size: 32, offset: 128)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !3001, file: !141, line: 96, baseType: !111, size: 32, offset: 160)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !131, file: !132, line: 174, baseType: !153, size: 768, offset: 2688)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !131, file: !132, line: 175, baseType: !148, size: 64, offset: 3456)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !131, file: !132, line: 176, baseType: !148, size: 64, offset: 3520)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !131, file: !132, line: 177, baseType: !148, size: 64, offset: 3584)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !131, file: !132, line: 179, baseType: !3014, size: 64, offset: 3648)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!112, !130}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !131, file: !132, line: 180, baseType: !3018, size: 64, offset: 3712)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{null, !130}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !131, file: !132, line: 181, baseType: !3022, size: 64, offset: 3776)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!112, !130, !327}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !131, file: !132, line: 182, baseType: !3026, size: 64, offset: 3840)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!112, !130, !7, !7, !112}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !131, file: !132, line: 184, baseType: !3030, size: 64, offset: 3904)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !132, line: 337, size: 576, elements: !3032)
!3032 = !{!3033, !3034, !3035, !3036, !3037, !3105, !3106}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3031, file: !132, line: 339, baseType: !102, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3031, file: !132, line: 341, baseType: !112, size: 32, offset: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3031, file: !132, line: 342, baseType: !135, size: 64, offset: 128)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3031, file: !132, line: 344, baseType: !130, size: 64, offset: 192)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3031, file: !132, line: 345, baseType: !3038, size: 64, offset: 256)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !132, line: 302, size: 960, elements: !3040)
!3040 = !{!3041, !3042, !3046, !3057, !3061, !3065, !3094, !3098, !3099, !3100, !3101, !3102, !3103, !3104}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3039, file: !132, line: 304, baseType: !102, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3039, file: !132, line: 306, baseType: !3043, size: 64, offset: 64)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{null, !3030, !7, !7, !112}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3039, file: !132, line: 307, baseType: !3047, size: 64, offset: 128)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{null, !3030, !3050, !7}
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3052)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !132, line: 32, size: 64, elements: !3053)
!3053 = !{!3054, !3055, !3056}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3052, file: !132, line: 33, baseType: !96, size: 16)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3052, file: !132, line: 34, baseType: !96, size: 16, offset: 16)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3052, file: !132, line: 35, baseType: !111, size: 32, offset: 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3039, file: !132, line: 309, baseType: !3058, size: 64, offset: 192)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!464, !3030, !7, !7, !112}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3039, file: !132, line: 310, baseType: !3062, size: 64, offset: 256)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!464, !3038, !130}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !3039, file: !132, line: 311, baseType: !3066, size: 64, offset: 320)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!112, !3038, !130, !3069}
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3071)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3072, line: 342, size: 1600, elements: !3073)
!3072 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3073 = !{!3074, !3076, !3077, !3078, !3079, !3080, !3082, !3084, !3085, !3086, !3087, !3088, !3089, !3091, !3092, !3093}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3071, file: !3072, line: 344, baseType: !3075, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3072, line: 14, baseType: !92)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !3071, file: !3072, line: 346, baseType: !96, size: 16, offset: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3071, file: !3072, line: 347, baseType: !96, size: 16, offset: 80)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3071, file: !3072, line: 348, baseType: !96, size: 16, offset: 96)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3071, file: !3072, line: 349, baseType: !96, size: 16, offset: 112)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !3071, file: !3072, line: 351, baseType: !3081, size: 64, offset: 128)
!3081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3075, size: 64, elements: !149)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !3071, file: !3072, line: 352, baseType: !3083, size: 768, offset: 192)
!3083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3075, size: 768, elements: !154)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !3071, file: !3072, line: 353, baseType: !3081, size: 64, offset: 960)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !3071, file: !3072, line: 354, baseType: !3081, size: 64, offset: 1024)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !3071, file: !3072, line: 355, baseType: !3081, size: 64, offset: 1088)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !3071, file: !3072, line: 356, baseType: !3081, size: 64, offset: 1152)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !3071, file: !3072, line: 357, baseType: !3081, size: 64, offset: 1216)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3071, file: !3072, line: 358, baseType: !3090, size: 128, offset: 1280)
!3090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3075, size: 128, elements: !163)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !3071, file: !3072, line: 359, baseType: !3081, size: 64, offset: 1408)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !3071, file: !3072, line: 360, baseType: !3081, size: 64, offset: 1472)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3071, file: !3072, line: 362, baseType: !3075, size: 64, offset: 1536)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3039, file: !132, line: 312, baseType: !3095, size: 64, offset: 384)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{null, !3030}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3039, file: !132, line: 313, baseType: !3095, size: 64, offset: 448)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !3039, file: !132, line: 315, baseType: !464, size: 8, offset: 512)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3039, file: !132, line: 316, baseType: !112, size: 32, offset: 544)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3039, file: !132, line: 317, baseType: !135, size: 64, offset: 576)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3039, file: !132, line: 319, baseType: !3069, size: 64, offset: 640)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !3039, file: !132, line: 321, baseType: !318, size: 128, offset: 704)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3039, file: !132, line: 322, baseType: !318, size: 128, offset: 832)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !3031, file: !132, line: 347, baseType: !318, size: 128, offset: 320)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !3031, file: !132, line: 348, baseType: !318, size: 128, offset: 448)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !131, file: !132, line: 186, baseType: !302, offset: 3968)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !131, file: !132, line: 187, baseType: !287, size: 192, offset: 3968)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !131, file: !132, line: 189, baseType: !7, size: 32, offset: 4160)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !131, file: !132, line: 190, baseType: !464, size: 8, offset: 4192)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !131, file: !132, line: 192, baseType: !3112, size: 5568, offset: 4224)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !3113)
!3113 = !{!3114, !3413, !3415, !3418, !3419, !3470, !3559, !3560, !3561, !3562, !3563, !3572, !3666, !3679, !3682, !3683, !3687, !3689, !3690, !3691, !3695, !3701, !3702, !3705, !3709, !3712, !3713, !3714, !3715, !3716, !3748, !3749, !3750, !3753, !3756, !3757, !3758, !3759}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3112, file: !60, line: 462, baseType: !3115, size: 512)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !3116, line: 64, size: 512, elements: !3117)
!3116 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!3117 = !{!3118, !3119, !3120, !3122, !3162, !3264, !3403, !3408, !3409, !3410, !3411, !3412}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3115, file: !3116, line: 65, baseType: !135, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3115, file: !3116, line: 66, baseType: !318, size: 128, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3115, file: !3116, line: 67, baseType: !3121, size: 64, offset: 192)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !3115, file: !3116, line: 68, baseType: !3123, size: 64, offset: 256)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !3116, line: 192, size: 704, elements: !3125)
!3125 = !{!3126, !3127, !3128, !3129}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3124, file: !3116, line: 193, baseType: !318, size: 128)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3124, file: !3116, line: 194, baseType: !302, offset: 128)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3124, file: !3116, line: 195, baseType: !3115, size: 512, offset: 128)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !3124, file: !3116, line: 196, baseType: !3130, size: 64, offset: 640)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3132)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !3116, line: 156, size: 192, elements: !3133)
!3133 = !{!3134, !3139, !3144}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3132, file: !3116, line: 157, baseType: !3135, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3136)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!112, !3123, !3121}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3132, file: !3116, line: 158, baseType: !3140, size: 64, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3141)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!135, !3123, !3121}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3132, file: !3116, line: 159, baseType: !3145, size: 64, offset: 128)
!3145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3146)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!112, !3123, !3121, !3149}
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !3116, line: 148, size: 20736, elements: !3151)
!3151 = !{!3152, !3154, !3156, !3157, !3161}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !3150, file: !3116, line: 149, baseType: !3153, size: 192)
!3153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 192, elements: !632)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !3150, file: !3116, line: 150, baseType: !3155, size: 4096, offset: 192)
!3155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 4096, elements: !1759)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !3150, file: !3116, line: 151, baseType: !112, size: 32, offset: 4288)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3150, file: !3116, line: 152, baseType: !3158, size: 16384, offset: 4320)
!3158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 16384, elements: !3159)
!3159 = !{!3160}
!3160 = !DISubrange(count: 2048)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !3150, file: !3116, line: 153, baseType: !112, size: 32, offset: 20704)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !3115, file: !3116, line: 69, baseType: !3163, size: 64, offset: 320)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !3116, line: 138, size: 448, elements: !3165)
!3165 = !{!3166, !3170, !3189, !3191, !3224, !3254, !3258}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3164, file: !3116, line: 139, baseType: !3167, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{null, !3121}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !3164, file: !3116, line: 140, baseType: !3171, size: 64, offset: 64)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3173)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !3174, line: 230, size: 128, elements: !3175)
!3174 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!3175 = !{!3176, !3185}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3173, file: !3174, line: 231, baseType: !3177, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!550, !3121, !3180, !459}
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !3174, line: 30, size: 128, elements: !3182)
!3182 = !{!3183, !3184}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3181, file: !3174, line: 31, baseType: !135, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3181, file: !3174, line: 32, baseType: !404, size: 16, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3173, file: !3174, line: 232, baseType: !3186, size: 64, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!550, !3121, !3180, !135, !553}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !3164, file: !3116, line: 141, baseType: !3190, size: 64, offset: 128)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !3164, file: !3116, line: 142, baseType: !3192, size: 64, offset: 192)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3195)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !3174, line: 84, size: 320, elements: !3196)
!3196 = !{!3197, !3198, !3202, !3221, !3222}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3195, file: !3174, line: 85, baseType: !135, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !3195, file: !3174, line: 86, baseType: !3199, size: 64, offset: 64)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!404, !3121, !3180, !112}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !3195, file: !3174, line: 88, baseType: !3203, size: 64, offset: 128)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!404, !3121, !3206, !112}
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !3174, line: 168, size: 448, elements: !3208)
!3208 = !{!3209, !3210, !3211, !3212, !3216, !3217}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3207, file: !3174, line: 169, baseType: !3181, size: 128)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3207, file: !3174, line: 170, baseType: !553, size: 64, offset: 128)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3207, file: !3174, line: 171, baseType: !102, size: 64, offset: 192)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3207, file: !3174, line: 172, baseType: !3213, size: 64, offset: 256)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!550, !327, !3121, !3206, !459, !505, !553}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3207, file: !3174, line: 174, baseType: !3213, size: 64, offset: 320)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3207, file: !3174, line: 176, baseType: !3218, size: 64, offset: 384)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!112, !327, !3121, !3206, !956}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3195, file: !3174, line: 90, baseType: !3190, size: 64, offset: 192)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !3195, file: !3174, line: 91, baseType: !3223, size: 64, offset: 256)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !3164, file: !3116, line: 143, baseType: !3225, size: 64, offset: 256)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!3228, !3121}
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3230)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !48, line: 39, size: 384, elements: !3231)
!3231 = !{!3232, !3233, !3237, !3241, !3249, !3253}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3230, file: !48, line: 40, baseType: !47, size: 32)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3230, file: !48, line: 41, baseType: !3234, size: 64, offset: 64)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!464}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3230, file: !48, line: 42, baseType: !3238, size: 64, offset: 128)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!102}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3230, file: !48, line: 43, baseType: !3242, size: 64, offset: 192)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!3245, !3247}
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !48, line: 19, flags: DIFlagFwdDecl)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3230, file: !48, line: 44, baseType: !3250, size: 64, offset: 256)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!3245}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3230, file: !48, line: 45, baseType: !441, size: 64, offset: 320)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3164, file: !3116, line: 144, baseType: !3255, size: 64, offset: 320)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!3245, !3121}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3164, file: !3116, line: 145, baseType: !3259, size: 64, offset: 384)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{null, !3121, !3262, !3263}
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !3115, file: !3116, line: 70, baseType: !3265, size: 64, offset: 384)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !597, line: 123, size: 1024, elements: !3267)
!3267 = !{!3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3396, !3397, !3398, !3399, !3400}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3266, file: !597, line: 124, baseType: !731, size: 32)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3266, file: !597, line: 125, baseType: !731, size: 32, offset: 32)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3266, file: !597, line: 135, baseType: !3265, size: 64, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3266, file: !597, line: 136, baseType: !135, size: 64, offset: 128)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3266, file: !597, line: 138, baseType: !744, size: 192, align: 64, offset: 192)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3266, file: !597, line: 140, baseType: !3245, size: 64, offset: 384)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3266, file: !597, line: 141, baseType: !7, size: 32, offset: 448)
!3275 = !DIDerivedType(tag: DW_TAG_member, scope: !3266, file: !597, line: 142, baseType: !3276, size: 256, offset: 512)
!3276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3266, file: !597, line: 142, size: 256, elements: !3277)
!3277 = !{!3278, !3324, !3328}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3276, file: !597, line: 143, baseType: !3279, size: 192)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !597, line: 91, size: 192, elements: !3280)
!3280 = !{!3281, !3282, !3283}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3279, file: !597, line: 92, baseType: !92, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3279, file: !597, line: 94, baseType: !740, size: 64, offset: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3279, file: !597, line: 100, baseType: !3284, size: 64, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !597, line: 180, size: 704, elements: !3286)
!3286 = !{!3287, !3288, !3289, !3296, !3297, !3298, !3322, !3323}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3285, file: !597, line: 182, baseType: !3265, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3285, file: !597, line: 183, baseType: !7, size: 32, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3285, file: !597, line: 186, baseType: !3290, size: 192, offset: 128)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3291, line: 19, size: 192, elements: !3292)
!3291 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3292 = !{!3293, !3294, !3295}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3290, file: !3291, line: 20, baseType: !722, size: 128)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3290, file: !3291, line: 21, baseType: !7, size: 32, offset: 128)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3290, file: !3291, line: 22, baseType: !7, size: 32, offset: 160)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3285, file: !597, line: 187, baseType: !390, size: 32, offset: 320)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3285, file: !597, line: 188, baseType: !390, size: 32, offset: 352)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3285, file: !597, line: 189, baseType: !3299, size: 64, offset: 384)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !597, line: 168, size: 320, elements: !3301)
!3301 = !{!3302, !3306, !3310, !3314, !3318}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3300, file: !597, line: 169, baseType: !3303, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!112, !694, !3284}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3300, file: !597, line: 171, baseType: !3307, size: 64, offset: 64)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!112, !3265, !135, !404}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3300, file: !597, line: 173, baseType: !3311, size: 64, offset: 128)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!112, !3265}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3300, file: !597, line: 174, baseType: !3315, size: 64, offset: 192)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!112, !3265, !3265, !135}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3300, file: !597, line: 176, baseType: !3319, size: 64, offset: 256)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!112, !694, !3265, !3284}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3285, file: !597, line: 192, baseType: !318, size: 128, offset: 448)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3285, file: !597, line: 194, baseType: !1362, size: 128, offset: 576)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3276, file: !597, line: 144, baseType: !3325, size: 64)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !597, line: 103, size: 64, elements: !3326)
!3326 = !{!3327}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3325, file: !597, line: 104, baseType: !3265, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3276, file: !597, line: 145, baseType: !3329, size: 256)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !597, line: 107, size: 256, elements: !3330)
!3330 = !{!3331, !3391, !3394, !3395}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3329, file: !597, line: 108, baseType: !3332, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3334)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !597, line: 217, size: 768, elements: !3335)
!3335 = !{!3336, !3356, !3360, !3364, !3368, !3372, !3376, !3380, !3381, !3382, !3383, !3387}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3334, file: !597, line: 222, baseType: !3337, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!112, !3340}
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !597, line: 197, size: 1088, elements: !3342)
!3342 = !{!3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3341, file: !597, line: 199, baseType: !3265, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3341, file: !597, line: 200, baseType: !327, size: 64, offset: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3341, file: !597, line: 201, baseType: !694, size: 64, offset: 128)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3341, file: !597, line: 202, baseType: !102, size: 64, offset: 192)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3341, file: !597, line: 205, baseType: !287, size: 192, offset: 256)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3341, file: !597, line: 206, baseType: !287, size: 192, offset: 448)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3341, file: !597, line: 207, baseType: !112, size: 32, offset: 640)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3341, file: !597, line: 208, baseType: !318, size: 128, offset: 704)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3341, file: !597, line: 209, baseType: !459, size: 64, offset: 832)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3341, file: !597, line: 211, baseType: !553, size: 64, offset: 896)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3341, file: !597, line: 212, baseType: !464, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3341, file: !597, line: 213, baseType: !464, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3341, file: !597, line: 214, baseType: !984, size: 64, offset: 1024)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3334, file: !597, line: 223, baseType: !3357, size: 64, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{null, !3340}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3334, file: !597, line: 236, baseType: !3361, size: 64, offset: 128)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!112, !694, !102}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3334, file: !597, line: 238, baseType: !3365, size: 64, offset: 192)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!102, !694, !2678}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3334, file: !597, line: 239, baseType: !3369, size: 64, offset: 256)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!102, !694, !102, !2678}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3334, file: !597, line: 240, baseType: !3373, size: 64, offset: 320)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{null, !694, !102}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3334, file: !597, line: 242, baseType: !3377, size: 64, offset: 384)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!550, !3340, !459, !553, !505}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3334, file: !597, line: 252, baseType: !553, size: 64, offset: 448)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3334, file: !597, line: 259, baseType: !464, size: 8, offset: 512)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3334, file: !597, line: 260, baseType: !3377, size: 64, offset: 576)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3334, file: !597, line: 263, baseType: !3384, size: 64, offset: 640)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!2707, !3340, !2708}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3334, file: !597, line: 266, baseType: !3388, size: 64, offset: 704)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!112, !3340, !956}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3329, file: !597, line: 109, baseType: !3392, size: 64, offset: 64)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !597, line: 31, flags: DIFlagFwdDecl)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3329, file: !597, line: 110, baseType: !505, size: 64, offset: 128)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3329, file: !597, line: 111, baseType: !3265, size: 64, offset: 192)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3266, file: !597, line: 148, baseType: !102, size: 64, offset: 768)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3266, file: !597, line: 154, baseType: !393, size: 64, offset: 832)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3266, file: !597, line: 156, baseType: !97, size: 16, offset: 896)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3266, file: !597, line: 157, baseType: !404, size: 16, offset: 912)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3266, file: !597, line: 158, baseType: !3401, size: 64, offset: 960)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !597, line: 32, flags: DIFlagFwdDecl)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3115, file: !3116, line: 71, baseType: !3404, size: 32, offset: 448)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3405, line: 19, size: 32, elements: !3406)
!3405 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3406 = !{!3407}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3404, file: !3405, line: 20, baseType: !1116, size: 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !3115, file: !3116, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !3115, file: !3116, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !3115, file: !3116, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !3115, file: !3116, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !3115, file: !3116, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3112, file: !60, line: 463, baseType: !3414, size: 64, offset: 512)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3112, file: !60, line: 465, baseType: !3416, size: 64, offset: 576)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3112, file: !60, line: 467, baseType: !135, size: 64, offset: 640)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3112, file: !60, line: 468, baseType: !3420, size: 64, offset: 704)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3422)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3423)
!3423 = !{!3424, !3425, !3426, !3430, !3435, !3439}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3422, file: !60, line: 88, baseType: !135, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3422, file: !60, line: 89, baseType: !3192, size: 64, offset: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3422, file: !60, line: 90, baseType: !3427, size: 64, offset: 128)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!112, !3414, !3149}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3422, file: !60, line: 91, baseType: !3431, size: 64, offset: 192)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!459, !3414, !3434, !3262, !3263}
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3422, file: !60, line: 93, baseType: !3436, size: 64, offset: 256)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{null, !3414}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3422, file: !60, line: 95, baseType: !3440, size: 64, offset: 320)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3442)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3443)
!3443 = !{!3444, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3442, file: !67, line: 279, baseType: !3445, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!112, !3414}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3442, file: !67, line: 280, baseType: !3436, size: 64, offset: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3442, file: !67, line: 281, baseType: !3445, size: 64, offset: 128)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3442, file: !67, line: 282, baseType: !3445, size: 64, offset: 192)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3442, file: !67, line: 283, baseType: !3445, size: 64, offset: 256)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3442, file: !67, line: 284, baseType: !3445, size: 64, offset: 320)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3442, file: !67, line: 285, baseType: !3445, size: 64, offset: 384)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3442, file: !67, line: 286, baseType: !3445, size: 64, offset: 448)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3442, file: !67, line: 287, baseType: !3445, size: 64, offset: 512)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3442, file: !67, line: 288, baseType: !3445, size: 64, offset: 576)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3442, file: !67, line: 289, baseType: !3445, size: 64, offset: 640)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3442, file: !67, line: 290, baseType: !3445, size: 64, offset: 704)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3442, file: !67, line: 291, baseType: !3445, size: 64, offset: 768)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3442, file: !67, line: 292, baseType: !3445, size: 64, offset: 832)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3442, file: !67, line: 293, baseType: !3445, size: 64, offset: 896)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3442, file: !67, line: 294, baseType: !3445, size: 64, offset: 960)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3442, file: !67, line: 295, baseType: !3445, size: 64, offset: 1024)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3442, file: !67, line: 296, baseType: !3445, size: 64, offset: 1088)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3442, file: !67, line: 297, baseType: !3445, size: 64, offset: 1152)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3442, file: !67, line: 298, baseType: !3445, size: 64, offset: 1216)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3442, file: !67, line: 299, baseType: !3445, size: 64, offset: 1280)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3442, file: !67, line: 300, baseType: !3445, size: 64, offset: 1344)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3442, file: !67, line: 301, baseType: !3445, size: 64, offset: 1408)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3112, file: !60, line: 470, baseType: !3471, size: 64, offset: 768)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3473, line: 82, size: 1408, elements: !3474)
!3473 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3474 = !{!3475, !3476, !3477, !3478, !3479, !3480, !3481, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3554, !3557, !3558}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3472, file: !3473, line: 83, baseType: !135, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3472, file: !3473, line: 84, baseType: !135, size: 64, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3472, file: !3473, line: 85, baseType: !3414, size: 64, offset: 128)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3472, file: !3473, line: 86, baseType: !3192, size: 64, offset: 192)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3472, file: !3473, line: 87, baseType: !3192, size: 64, offset: 256)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3472, file: !3473, line: 88, baseType: !3192, size: 64, offset: 320)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3472, file: !3473, line: 90, baseType: !3482, size: 64, offset: 384)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!112, !3414, !3485}
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3487)
!3487 = !{!3488, !3489, !3490, !3491, !3492, !3493, !3494, !3506, !3518, !3519, !3520, !3521, !3522, !3530, !3531, !3532, !3533, !3534, !3535}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3486, file: !54, line: 96, baseType: !135, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3486, file: !54, line: 97, baseType: !3471, size: 64, offset: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3486, file: !54, line: 99, baseType: !611, size: 64, offset: 128)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3486, file: !54, line: 100, baseType: !135, size: 64, offset: 192)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3486, file: !54, line: 102, baseType: !464, size: 8, offset: 256)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3486, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3486, file: !54, line: 105, baseType: !3495, size: 64, offset: 320)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3497)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3072, line: 262, size: 1600, elements: !3498)
!3498 = !{!3499, !3500, !3501, !3505}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3497, file: !3072, line: 263, baseType: !2502, size: 256)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3497, file: !3072, line: 264, baseType: !2502, size: 256, offset: 256)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3497, file: !3072, line: 265, baseType: !3502, size: 1024, offset: 512)
!3502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 1024, elements: !3503)
!3503 = !{!3504}
!3504 = !DISubrange(count: 128)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3497, file: !3072, line: 266, baseType: !3245, size: 64, offset: 1536)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3486, file: !54, line: 106, baseType: !3507, size: 64, offset: 384)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3509)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3072, line: 210, size: 256, elements: !3510)
!3510 = !{!3511, !3515, !3516, !3517}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3509, file: !3072, line: 211, baseType: !3512, size: 72)
!3512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 72, elements: !3513)
!3513 = !{!3514}
!3514 = !DISubrange(count: 9)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3509, file: !3072, line: 212, baseType: !3075, size: 64, offset: 128)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3509, file: !3072, line: 213, baseType: !183, size: 32, offset: 192)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3509, file: !3072, line: 214, baseType: !183, size: 32, offset: 224)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3486, file: !54, line: 108, baseType: !3445, size: 64, offset: 448)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3486, file: !54, line: 109, baseType: !3436, size: 64, offset: 512)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3486, file: !54, line: 110, baseType: !3445, size: 64, offset: 576)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3486, file: !54, line: 111, baseType: !3436, size: 64, offset: 640)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3486, file: !54, line: 112, baseType: !3523, size: 64, offset: 704)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!112, !3414, !3526}
!3526 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3527)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3528)
!3528 = !{!3529}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3527, file: !67, line: 51, baseType: !112, size: 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3486, file: !54, line: 113, baseType: !3445, size: 64, offset: 768)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3486, file: !54, line: 114, baseType: !3192, size: 64, offset: 832)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3486, file: !54, line: 115, baseType: !3192, size: 64, offset: 896)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3486, file: !54, line: 117, baseType: !3440, size: 64, offset: 960)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3486, file: !54, line: 118, baseType: !3436, size: 64, offset: 1024)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3486, file: !54, line: 120, baseType: !3536, size: 64, offset: 1088)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3472, file: !3473, line: 91, baseType: !3427, size: 64, offset: 448)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3472, file: !3473, line: 92, baseType: !3445, size: 64, offset: 512)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3472, file: !3473, line: 93, baseType: !3436, size: 64, offset: 576)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3472, file: !3473, line: 94, baseType: !3445, size: 64, offset: 640)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3472, file: !3473, line: 95, baseType: !3436, size: 64, offset: 704)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3472, file: !3473, line: 97, baseType: !3445, size: 64, offset: 768)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3472, file: !3473, line: 98, baseType: !3445, size: 64, offset: 832)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3472, file: !3473, line: 100, baseType: !3523, size: 64, offset: 896)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3472, file: !3473, line: 101, baseType: !3445, size: 64, offset: 960)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3472, file: !3473, line: 103, baseType: !3445, size: 64, offset: 1024)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3472, file: !3473, line: 105, baseType: !3445, size: 64, offset: 1088)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3472, file: !3473, line: 107, baseType: !3440, size: 64, offset: 1152)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3472, file: !3473, line: 109, baseType: !3551, size: 64, offset: 1216)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3553)
!3553 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3473, line: 109, flags: DIFlagFwdDecl)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3472, file: !3473, line: 111, baseType: !3555, size: 64, offset: 1280)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3473, line: 111, flags: DIFlagFwdDecl)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3472, file: !3473, line: 112, baseType: !626, offset: 1344)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3472, file: !3473, line: 114, baseType: !464, size: 8, offset: 1344)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3112, file: !60, line: 471, baseType: !3485, size: 64, offset: 832)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3112, file: !60, line: 473, baseType: !102, size: 64, offset: 896)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3112, file: !60, line: 475, baseType: !102, size: 64, offset: 960)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3112, file: !60, line: 480, baseType: !287, size: 192, offset: 1024)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3112, file: !60, line: 484, baseType: !3564, size: 576, offset: 1216)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3565)
!3565 = !{!3566, !3567, !3568, !3569, !3570, !3571}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3564, file: !60, line: 362, baseType: !318, size: 128)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3564, file: !60, line: 363, baseType: !318, size: 128, offset: 128)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3564, file: !60, line: 364, baseType: !318, size: 128, offset: 256)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3564, file: !60, line: 365, baseType: !318, size: 128, offset: 384)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3564, file: !60, line: 366, baseType: !464, size: 8, offset: 512)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3564, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3112, file: !60, line: 485, baseType: !3573, size: 2304, offset: 1792)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3574)
!3574 = !{!3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3659, !3663}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3573, file: !67, line: 566, baseType: !3526, size: 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3573, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3573, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3573, file: !67, line: 569, baseType: !464, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3573, file: !67, line: 570, baseType: !464, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3573, file: !67, line: 571, baseType: !464, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3573, file: !67, line: 572, baseType: !464, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3573, file: !67, line: 573, baseType: !464, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3573, file: !67, line: 574, baseType: !464, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3573, file: !67, line: 575, baseType: !464, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3573, file: !67, line: 576, baseType: !464, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3573, file: !67, line: 577, baseType: !390, size: 32, offset: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3573, file: !67, line: 578, baseType: !302, offset: 96)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3573, file: !67, line: 580, baseType: !318, size: 128, offset: 128)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3573, file: !67, line: 581, baseType: !1383, size: 192, offset: 256)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3573, file: !67, line: 582, baseType: !3591, size: 64, offset: 448)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3593, line: 43, size: 1472, elements: !3594)
!3593 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3594 = !{!3595, !3596, !3597, !3598, !3599, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3592, file: !3593, line: 44, baseType: !135, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3592, file: !3593, line: 45, baseType: !112, size: 32, offset: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3592, file: !3593, line: 46, baseType: !318, size: 128, offset: 128)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3592, file: !3593, line: 47, baseType: !302, offset: 256)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3592, file: !3593, line: 48, baseType: !3600, size: 64, offset: 256)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3592, file: !3593, line: 49, baseType: !2983, size: 320, offset: 320)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3592, file: !3593, line: 50, baseType: !92, size: 64, offset: 640)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3592, file: !3593, line: 51, baseType: !1186, size: 64, offset: 704)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3592, file: !3593, line: 52, baseType: !1186, size: 64, offset: 768)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3592, file: !3593, line: 53, baseType: !1186, size: 64, offset: 832)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3592, file: !3593, line: 54, baseType: !1186, size: 64, offset: 896)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3592, file: !3593, line: 55, baseType: !1186, size: 64, offset: 960)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3592, file: !3593, line: 56, baseType: !92, size: 64, offset: 1024)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3592, file: !3593, line: 57, baseType: !92, size: 64, offset: 1088)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3592, file: !3593, line: 58, baseType: !92, size: 64, offset: 1152)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3592, file: !3593, line: 59, baseType: !92, size: 64, offset: 1216)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3592, file: !3593, line: 60, baseType: !92, size: 64, offset: 1280)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3592, file: !3593, line: 61, baseType: !3414, size: 64, offset: 1344)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3592, file: !3593, line: 62, baseType: !464, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3592, file: !3593, line: 63, baseType: !464, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3573, file: !67, line: 583, baseType: !464, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3573, file: !67, line: 584, baseType: !464, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3573, file: !67, line: 585, baseType: !464, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3573, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3573, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3573, file: !67, line: 592, baseType: !1178, size: 512, offset: 576)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3573, file: !67, line: 593, baseType: !393, size: 64, offset: 1088)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3573, file: !67, line: 594, baseType: !1837, size: 256, offset: 1152)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3573, file: !67, line: 595, baseType: !1362, size: 128, offset: 1408)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3573, file: !67, line: 596, baseType: !3600, size: 64, offset: 1536)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3573, file: !67, line: 597, baseType: !731, size: 32, offset: 1600)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3573, file: !67, line: 598, baseType: !731, size: 32, offset: 1632)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3573, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3573, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3573, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3573, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3573, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3573, file: !67, line: 604, baseType: !464, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3573, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3573, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3573, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3573, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3573, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3573, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3573, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3573, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3573, file: !67, line: 613, baseType: !112, size: 32, offset: 1792)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3573, file: !67, line: 614, baseType: !112, size: 32, offset: 1824)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3573, file: !67, line: 615, baseType: !393, size: 64, offset: 1856)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3573, file: !67, line: 616, baseType: !393, size: 64, offset: 1920)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3573, file: !67, line: 617, baseType: !393, size: 64, offset: 1984)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3573, file: !67, line: 618, baseType: !393, size: 64, offset: 2048)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3573, file: !67, line: 620, baseType: !3650, size: 64, offset: 2112)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3652)
!3652 = !{!3653, !3654, !3655, !3656}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3651, file: !67, line: 537, baseType: !302)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3651, file: !67, line: 538, baseType: !7, size: 32)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3651, file: !67, line: 540, baseType: !318, size: 128, offset: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3651, file: !67, line: 543, baseType: !3657, size: 64, offset: 192)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3573, file: !67, line: 621, baseType: !3660, size: 64, offset: 2176)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{null, !3414, !1326}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3573, file: !67, line: 622, baseType: !3664, size: 64, offset: 2240)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3112, file: !60, line: 486, baseType: !3667, size: 64, offset: 4096)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3669)
!3669 = !{!3670, !3671, !3672, !3676, !3677, !3678}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3668, file: !67, line: 643, baseType: !3442, size: 1472)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3668, file: !67, line: 644, baseType: !3445, size: 64, offset: 1472)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3668, file: !67, line: 645, baseType: !3673, size: 64, offset: 1536)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{null, !3414, !464}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3668, file: !67, line: 646, baseType: !3445, size: 64, offset: 1600)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3668, file: !67, line: 647, baseType: !3436, size: 64, offset: 1664)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3668, file: !67, line: 648, baseType: !3436, size: 64, offset: 1728)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3112, file: !60, line: 493, baseType: !3680, size: 64, offset: 4160)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !60, line: 493, flags: DIFlagFwdDecl)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3112, file: !60, line: 499, baseType: !318, size: 128, offset: 4224)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3112, file: !60, line: 502, baseType: !3684, size: 64, offset: 4352)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3686)
!3686 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3112, file: !60, line: 504, baseType: !3688, size: 64, offset: 4416)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3112, file: !60, line: 505, baseType: !393, size: 64, offset: 4480)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3112, file: !60, line: 510, baseType: !393, size: 64, offset: 4544)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3112, file: !60, line: 511, baseType: !3692, size: 64, offset: 4608)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3694)
!3694 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3112, file: !60, line: 513, baseType: !3696, size: 64, offset: 4672)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !3698)
!3698 = !{!3699, !3700}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3697, file: !60, line: 293, baseType: !7, size: 32)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3697, file: !60, line: 294, baseType: !92, size: 64, offset: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3112, file: !60, line: 515, baseType: !318, size: 128, offset: 4736)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3112, file: !60, line: 526, baseType: !3703, offset: 4864)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3704, line: 5, elements: !316)
!3704 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3112, file: !60, line: 528, baseType: !3706, size: 64, offset: 4864)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3708, line: 14, flags: DIFlagFwdDecl)
!3708 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3112, file: !60, line: 529, baseType: !3710, size: 64, offset: 4928)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3473, line: 22, flags: DIFlagFwdDecl)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3112, file: !60, line: 534, baseType: !487, size: 32, offset: 4992)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3112, file: !60, line: 535, baseType: !390, size: 32, offset: 5024)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3112, file: !60, line: 537, baseType: !302, offset: 5056)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3112, file: !60, line: 538, baseType: !318, size: 128, offset: 5056)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3112, file: !60, line: 540, baseType: !3717, size: 64, offset: 5184)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3719, line: 54, size: 960, elements: !3720)
!3719 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3720 = !{!3721, !3722, !3723, !3724, !3725, !3726, !3727, !3731, !3735, !3736, !3737, !3738, !3742, !3746, !3747}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3718, file: !3719, line: 55, baseType: !135, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3718, file: !3719, line: 56, baseType: !611, size: 64, offset: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3718, file: !3719, line: 58, baseType: !3192, size: 64, offset: 128)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3718, file: !3719, line: 59, baseType: !3192, size: 64, offset: 192)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3718, file: !3719, line: 60, baseType: !3121, size: 64, offset: 256)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3718, file: !3719, line: 62, baseType: !3427, size: 64, offset: 320)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3718, file: !3719, line: 63, baseType: !3728, size: 64, offset: 384)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!459, !3414, !3434}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3718, file: !3719, line: 65, baseType: !3732, size: 64, offset: 448)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{null, !3717}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3718, file: !3719, line: 66, baseType: !3436, size: 64, offset: 512)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3718, file: !3719, line: 68, baseType: !3445, size: 64, offset: 576)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3718, file: !3719, line: 70, baseType: !3228, size: 64, offset: 640)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3718, file: !3719, line: 71, baseType: !3739, size: 64, offset: 704)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!3245, !3414}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3718, file: !3719, line: 73, baseType: !3743, size: 64, offset: 768)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{null, !3414, !3262, !3263}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3718, file: !3719, line: 75, baseType: !3440, size: 64, offset: 832)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3718, file: !3719, line: 77, baseType: !3555, size: 64, offset: 896)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3112, file: !60, line: 541, baseType: !3192, size: 64, offset: 5248)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3112, file: !60, line: 543, baseType: !3436, size: 64, offset: 5312)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3112, file: !60, line: 544, baseType: !3751, size: 64, offset: 5376)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3112, file: !60, line: 545, baseType: !3754, size: 64, offset: 5440)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3112, file: !60, line: 547, baseType: !464, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3112, file: !60, line: 548, baseType: !464, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3112, file: !60, line: 549, baseType: !464, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3112, file: !60, line: 550, baseType: !464, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !131, file: !132, line: 194, baseType: !318, size: 128, offset: 9792)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !131, file: !132, line: 195, baseType: !318, size: 128, offset: 9920)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !131, file: !132, line: 197, baseType: !7, size: 32, offset: 10048)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !131, file: !132, line: 198, baseType: !7, size: 32, offset: 10080)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !131, file: !132, line: 199, baseType: !3765, size: 64, offset: 10112)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !131, file: !132, line: 201, baseType: !464, size: 8, offset: 10176)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !131, file: !132, line: 203, baseType: !3768, size: 192, offset: 10240)
!3768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1186, size: 192, elements: !632)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !126, file: !127, line: 87, baseType: !3770, size: 64, offset: 64)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iforce_device", file: !127, line: 66, size: 320, elements: !3772)
!3772 = !{!3773, !3774, !3775, !3776, !3778, !3779}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "idvendor", scope: !3771, file: !127, line: 67, baseType: !277, size: 16)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "idproduct", scope: !3771, file: !127, line: 68, baseType: !277, size: 16, offset: 16)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3771, file: !127, line: 69, baseType: !459, size: 64, offset: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "btn", scope: !3771, file: !127, line: 70, baseType: !3777, size: 64, offset: 128)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "abs", scope: !3771, file: !127, line: 71, baseType: !3777, size: 64, offset: 192)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !3771, file: !127, line: 72, baseType: !3777, size: 64, offset: 256)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "xport_ops", scope: !126, file: !127, line: 88, baseType: !3781, size: 64, offset: 128)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3783)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iforce_xport_ops", file: !127, line: 77, size: 256, elements: !3784)
!3784 = !{!3785, !3789, !3795, !3799}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "xmit", scope: !3783, file: !127, line: 78, baseType: !3786, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{null, !125}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "get_id", scope: !3783, file: !127, line: 79, baseType: !3790, size: 64, offset: 64)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!112, !125, !1238, !3793, !3794}
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "start_io", scope: !3783, file: !127, line: 81, baseType: !3796, size: 64, offset: 128)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!112, !125}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "stop_io", scope: !3783, file: !127, line: 82, baseType: !3786, size: 64, offset: 192)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_lock", scope: !126, file: !127, line: 90, baseType: !302, offset: 192)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "xmit", scope: !126, file: !127, line: 92, baseType: !3802, size: 128, offset: 192)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "circ_buf", file: !3803, line: 9, size: 128, elements: !3804)
!3803 = !DIFile(filename: "./include/linux/circ_buf.h", directory: "/home/lizy2001/genbc/linux")
!3804 = !{!3805, !3806, !3807}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3802, file: !3803, line: 10, baseType: !459, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3802, file: !3803, line: 11, baseType: !112, size: 32, offset: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !3802, file: !3803, line: 12, baseType: !112, size: 32, offset: 96)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_data", scope: !126, file: !127, line: 93, baseType: !3809, size: 2048, offset: 320)
!3809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 2048, elements: !3810)
!3810 = !{!3811}
!3811 = !DISubrange(count: 256)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_flags", scope: !126, file: !127, line: 94, baseType: !148, size: 64, offset: 2368)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !126, file: !127, line: 97, baseType: !1362, size: 128, offset: 2432)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "device_memory", scope: !126, file: !127, line: 98, baseType: !3815, size: 512, offset: 2560)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !3816, line: 20, size: 512, elements: !3817)
!3816 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!3817 = !{!3818, !3821, !3822, !3823, !3824, !3825, !3827, !3828}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3815, file: !3816, line: 21, baseType: !3819, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !294, line: 158, baseType: !3820)
!3820 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !294, line: 153, baseType: !393)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3815, file: !3816, line: 22, baseType: !3819, size: 64, offset: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3815, file: !3816, line: 23, baseType: !135, size: 64, offset: 128)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3815, file: !3816, line: 24, baseType: !92, size: 64, offset: 192)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3815, file: !3816, line: 25, baseType: !92, size: 64, offset: 256)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3815, file: !3816, line: 26, baseType: !3826, size: 64, offset: 320)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3815, file: !3816, line: 26, baseType: !3826, size: 64, offset: 384)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3815, file: !3816, line: 26, baseType: !3826, size: 64, offset: 448)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "core_effects", scope: !126, file: !127, line: 99, baseType: !3830, size: 34816, offset: 3072)
!3830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3831, size: 34816, elements: !186)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iforce_core_effect", file: !127, line: 39, size: 1088, elements: !3832)
!3832 = !{!3833, !3834, !3835}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "mod1_chunk", scope: !3831, file: !127, line: 41, baseType: !3815, size: 512)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "mod2_chunk", scope: !3831, file: !127, line: 42, baseType: !3815, size: 512, offset: 512)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3831, file: !127, line: 43, baseType: !148, size: 64, offset: 1024)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "mem_mutex", scope: !126, file: !127, line: 100, baseType: !287, size: 192, offset: 37888)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!3838 = !DILocalVariable(name: "iforce", arg: 1, scope: !122, file: !3, line: 18, type: !125)
!3839 = !DILocation(line: 18, column: 40, scope: !122)
!3840 = !DILocalVariable(name: "msg", arg: 2, scope: !122, file: !3, line: 18, type: !459)
!3841 = !DILocation(line: 18, column: 54, scope: !122)
!3842 = !DILocalVariable(name: "cmd", arg: 3, scope: !122, file: !3, line: 18, type: !277)
!3843 = !DILocation(line: 18, column: 63, scope: !122)
!3844 = !DILocalVariable(name: "data", arg: 4, scope: !122, file: !3, line: 18, type: !3837)
!3845 = !DILocation(line: 18, column: 83, scope: !122)
!3846 = !DILocation(line: 22, column: 1, scope: !122)
!3847 = distinct !DISubprogram(name: "iforce_send_packet", scope: !3, file: !3, line: 27, type: !3848, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !316)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!112, !125, !277, !3837}
!3850 = !DILocalVariable(name: "lock", arg: 1, scope: !3851, file: !3852, line: 407, type: !3855)
!3851 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !3852, file: !3852, line: 407, type: !3853, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!3852 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!3853 = !DISubroutineType(types: !3854)
!3854 = !{null, !3855, !92}
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!3856 = !DILocation(line: 407, column: 64, scope: !3851, inlinedAt: !3857)
!3857 = distinct !DILocation(line: 76, column: 2, scope: !3847)
!3858 = !DILocalVariable(name: "flags", arg: 2, scope: !3851, file: !3852, line: 407, type: !92)
!3859 = !DILocation(line: 407, column: 84, scope: !3851, inlinedAt: !3857)
!3860 = !DILocation(line: 407, column: 64, scope: !3851, inlinedAt: !3861)
!3861 = distinct !DILocation(line: 48, column: 3, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3863, file: !3, line: 45, column: 47)
!3863 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 45, column: 6)
!3864 = !DILocation(line: 407, column: 84, scope: !3851, inlinedAt: !3861)
!3865 = !DILocalVariable(name: "lock", arg: 1, scope: !3866, file: !3852, line: 327, type: !3855)
!3866 = distinct !DISubprogram(name: "spinlock_check", scope: !3852, file: !3852, line: 327, type: !3867, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!3869, !3855}
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!3870 = !DILocation(line: 327, column: 67, scope: !3866, inlinedAt: !3871)
!3871 = distinct !DILocation(line: 39, column: 2, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 39, column: 2)
!3873 = distinct !DILexicalBlock(scope: !3874, file: !3, line: 39, column: 2)
!3874 = distinct !DILexicalBlock(scope: !3875, file: !3, line: 39, column: 2)
!3875 = distinct !DILexicalBlock(scope: !3876, file: !3, line: 39, column: 2)
!3876 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 39, column: 2)
!3877 = !DILocalVariable(name: "iforce", arg: 1, scope: !3847, file: !3, line: 27, type: !125)
!3878 = !DILocation(line: 27, column: 39, scope: !3847)
!3879 = !DILocalVariable(name: "cmd", arg: 2, scope: !3847, file: !3, line: 27, type: !277)
!3880 = !DILocation(line: 27, column: 51, scope: !3847)
!3881 = !DILocalVariable(name: "data", arg: 3, scope: !3847, file: !3, line: 27, type: !3837)
!3882 = !DILocation(line: 27, column: 71, scope: !3847)
!3883 = !DILocalVariable(name: "n", scope: !3847, file: !3, line: 30, type: !112)
!3884 = !DILocation(line: 30, column: 6, scope: !3847)
!3885 = !DILocation(line: 30, column: 10, scope: !3847)
!3886 = !DILocalVariable(name: "c", scope: !3847, file: !3, line: 31, type: !112)
!3887 = !DILocation(line: 31, column: 6, scope: !3847)
!3888 = !DILocalVariable(name: "empty", scope: !3847, file: !3, line: 32, type: !112)
!3889 = !DILocation(line: 32, column: 6, scope: !3847)
!3890 = !DILocalVariable(name: "head", scope: !3847, file: !3, line: 33, type: !112)
!3891 = !DILocation(line: 33, column: 6, scope: !3847)
!3892 = !DILocalVariable(name: "tail", scope: !3847, file: !3, line: 33, type: !112)
!3893 = !DILocation(line: 33, column: 12, scope: !3847)
!3894 = !DILocalVariable(name: "flags", scope: !3847, file: !3, line: 34, type: !92)
!3895 = !DILocation(line: 34, column: 16, scope: !3847)
!3896 = !DILocation(line: 39, column: 2, scope: !3847)
!3897 = !DILocation(line: 39, column: 2, scope: !3876)
!3898 = !DILocalVariable(name: "__dummy", scope: !3899, file: !3, line: 39, type: !92)
!3899 = distinct !DILexicalBlock(scope: !3875, file: !3, line: 39, column: 2)
!3900 = !DILocation(line: 39, column: 2, scope: !3899)
!3901 = !DILocalVariable(name: "__dummy2", scope: !3899, file: !3, line: 39, type: !92)
!3902 = !DILocation(line: 39, column: 2, scope: !3875)
!3903 = !DILocation(line: 39, column: 2, scope: !3874)
!3904 = !DILocation(line: 39, column: 2, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3874, file: !3, line: 39, column: 2)
!3906 = !DILocalVariable(name: "__dummy", scope: !3907, file: !3, line: 39, type: !92)
!3907 = distinct !DILexicalBlock(scope: !3908, file: !3, line: 39, column: 2)
!3908 = distinct !DILexicalBlock(scope: !3905, file: !3, line: 39, column: 2)
!3909 = !DILocation(line: 39, column: 2, scope: !3907)
!3910 = !DILocalVariable(name: "__dummy2", scope: !3907, file: !3, line: 39, type: !92)
!3911 = !DILocation(line: 39, column: 2, scope: !3908)
!3912 = !DILocation(line: 39, column: 2, scope: !3873)
!3913 = !{i32 -2142790247}
!3914 = !DILocation(line: 39, column: 2, scope: !3872)
!3915 = !DILocation(line: 329, column: 10, scope: !3866, inlinedAt: !3871)
!3916 = !DILocation(line: 329, column: 16, scope: !3866, inlinedAt: !3871)
!3917 = !DILocation(line: 41, column: 9, scope: !3847)
!3918 = !DILocation(line: 41, column: 17, scope: !3847)
!3919 = !DILocation(line: 41, column: 22, scope: !3847)
!3920 = !DILocation(line: 41, column: 7, scope: !3847)
!3921 = !DILocation(line: 42, column: 9, scope: !3847)
!3922 = !DILocation(line: 42, column: 17, scope: !3847)
!3923 = !DILocation(line: 42, column: 22, scope: !3847)
!3924 = !DILocation(line: 42, column: 7, scope: !3847)
!3925 = !DILocation(line: 45, column: 6, scope: !3863)
!3926 = !DILocation(line: 45, column: 42, scope: !3863)
!3927 = !DILocation(line: 45, column: 43, scope: !3863)
!3928 = !DILocation(line: 45, column: 40, scope: !3863)
!3929 = !DILocation(line: 45, column: 6, scope: !3847)
!3930 = !DILocation(line: 46, column: 3, scope: !3862)
!3931 = !DILocation(line: 48, column: 27, scope: !3862)
!3932 = !DILocation(line: 48, column: 35, scope: !3862)
!3933 = !DILocation(line: 48, column: 46, scope: !3862)
!3934 = !DILocalVariable(name: "__dummy", scope: !3935, file: !3852, line: 409, type: !92)
!3935 = distinct !DILexicalBlock(scope: !3936, file: !3852, line: 409, column: 2)
!3936 = distinct !DILexicalBlock(scope: !3851, file: !3852, line: 409, column: 2)
!3937 = !DILocation(line: 409, column: 2, scope: !3935, inlinedAt: !3861)
!3938 = !DILocalVariable(name: "__dummy2", scope: !3935, file: !3852, line: 409, type: !92)
!3939 = !DILocalVariable(name: "__dummy", scope: !3940, file: !3852, line: 409, type: !92)
!3940 = distinct !DILexicalBlock(scope: !3941, file: !3852, line: 409, column: 2)
!3941 = distinct !DILexicalBlock(scope: !3942, file: !3852, line: 409, column: 2)
!3942 = distinct !DILexicalBlock(scope: !3943, file: !3852, line: 409, column: 2)
!3943 = distinct !DILexicalBlock(scope: !3936, file: !3852, line: 409, column: 2)
!3944 = !DILocation(line: 409, column: 2, scope: !3940, inlinedAt: !3861)
!3945 = !DILocalVariable(name: "__dummy2", scope: !3940, file: !3852, line: 409, type: !92)
!3946 = !DILocation(line: 409, column: 2, scope: !3941, inlinedAt: !3861)
!3947 = !DILocation(line: 409, column: 2, scope: !3948, inlinedAt: !3861)
!3948 = distinct !DILexicalBlock(scope: !3943, file: !3852, line: 409, column: 2)
!3949 = !{i32 -2145513818}
!3950 = !DILocation(line: 409, column: 2, scope: !3951, inlinedAt: !3861)
!3951 = distinct !DILexicalBlock(scope: !3948, file: !3852, line: 409, column: 2)
!3952 = !DILocation(line: 49, column: 3, scope: !3862)
!3953 = !DILocation(line: 52, column: 10, scope: !3847)
!3954 = !DILocation(line: 52, column: 18, scope: !3847)
!3955 = !DILocation(line: 52, column: 15, scope: !3847)
!3956 = !DILocation(line: 52, column: 8, scope: !3847)
!3957 = !DILocation(line: 53, column: 2, scope: !3847)
!3958 = !DILocation(line: 58, column: 27, scope: !3847)
!3959 = !DILocation(line: 58, column: 2, scope: !3847)
!3960 = !DILocation(line: 58, column: 10, scope: !3847)
!3961 = !DILocation(line: 58, column: 15, scope: !3847)
!3962 = !DILocation(line: 58, column: 19, scope: !3847)
!3963 = !DILocation(line: 58, column: 25, scope: !3847)
!3964 = !DILocation(line: 59, column: 2, scope: !3847)
!3965 = !DILocation(line: 60, column: 27, scope: !3847)
!3966 = !DILocation(line: 60, column: 2, scope: !3847)
!3967 = !DILocation(line: 60, column: 10, scope: !3847)
!3968 = !DILocation(line: 60, column: 15, scope: !3847)
!3969 = !DILocation(line: 60, column: 19, scope: !3847)
!3970 = !DILocation(line: 60, column: 25, scope: !3847)
!3971 = !DILocation(line: 61, column: 2, scope: !3847)
!3972 = !DILocalVariable(name: "end", scope: !3973, file: !3, line: 63, type: !112)
!3973 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 63, column: 6)
!3974 = !DILocation(line: 63, column: 6, scope: !3973)
!3975 = !DILocalVariable(name: "n", scope: !3973, file: !3, line: 63, type: !112)
!3976 = !DILocation(line: 63, column: 4, scope: !3847)
!3977 = !DILocation(line: 64, column: 6, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 64, column: 6)
!3979 = !DILocation(line: 64, column: 10, scope: !3978)
!3980 = !DILocation(line: 64, column: 8, scope: !3978)
!3981 = !DILocation(line: 64, column: 6, scope: !3847)
!3982 = !DILocation(line: 64, column: 15, scope: !3978)
!3983 = !DILocation(line: 64, column: 14, scope: !3978)
!3984 = !DILocation(line: 64, column: 13, scope: !3978)
!3985 = !DILocation(line: 66, column: 10, scope: !3847)
!3986 = !DILocation(line: 66, column: 18, scope: !3847)
!3987 = !DILocation(line: 66, column: 23, scope: !3847)
!3988 = !DILocation(line: 66, column: 27, scope: !3847)
!3989 = !DILocation(line: 67, column: 9, scope: !3847)
!3990 = !DILocation(line: 68, column: 9, scope: !3847)
!3991 = !DILocation(line: 66, column: 2, scope: !3847)
!3992 = !DILocation(line: 69, column: 6, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 69, column: 6)
!3994 = !DILocation(line: 69, column: 11, scope: !3993)
!3995 = !DILocation(line: 69, column: 8, scope: !3993)
!3996 = !DILocation(line: 69, column: 6, scope: !3847)
!3997 = !DILocation(line: 70, column: 11, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3993, file: !3, line: 69, column: 14)
!3999 = !DILocation(line: 70, column: 19, scope: !3998)
!4000 = !DILocation(line: 70, column: 24, scope: !3998)
!4001 = !DILocation(line: 71, column: 10, scope: !3998)
!4002 = !DILocation(line: 71, column: 17, scope: !3998)
!4003 = !DILocation(line: 71, column: 15, scope: !3998)
!4004 = !DILocation(line: 72, column: 10, scope: !3998)
!4005 = !DILocation(line: 72, column: 14, scope: !3998)
!4006 = !DILocation(line: 72, column: 12, scope: !3998)
!4007 = !DILocation(line: 70, column: 3, scope: !3998)
!4008 = !DILocation(line: 73, column: 2, scope: !3998)
!4009 = !DILocation(line: 74, column: 2, scope: !3847)
!4010 = !DILocation(line: 76, column: 26, scope: !3847)
!4011 = !DILocation(line: 76, column: 34, scope: !3847)
!4012 = !DILocation(line: 76, column: 45, scope: !3847)
!4013 = !DILocation(line: 409, column: 2, scope: !3935, inlinedAt: !3857)
!4014 = !DILocation(line: 409, column: 2, scope: !3940, inlinedAt: !3857)
!4015 = !DILocation(line: 409, column: 2, scope: !3941, inlinedAt: !3857)
!4016 = !DILocation(line: 409, column: 2, scope: !3948, inlinedAt: !3857)
!4017 = !DILocation(line: 409, column: 2, scope: !3951, inlinedAt: !3857)
!4018 = !DILocation(line: 80, column: 6, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 80, column: 6)
!4020 = !DILocation(line: 80, column: 6, scope: !3847)
!4021 = !DILocation(line: 81, column: 3, scope: !4019)
!4022 = !DILocation(line: 81, column: 11, scope: !4019)
!4023 = !DILocation(line: 81, column: 22, scope: !4019)
!4024 = !DILocation(line: 81, column: 27, scope: !4019)
!4025 = !DILocation(line: 83, column: 2, scope: !3847)
!4026 = !DILocation(line: 84, column: 1, scope: !3847)
!4027 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !4028, file: !4028, line: 666, type: !4029, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4028 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!92}
!4031 = !DILocalVariable(name: "f", scope: !4027, file: !4028, line: 668, type: !92)
!4032 = !DILocation(line: 668, column: 16, scope: !4027)
!4033 = !DILocation(line: 670, column: 6, scope: !4027)
!4034 = !DILocation(line: 670, column: 4, scope: !4027)
!4035 = !DILocation(line: 671, column: 2, scope: !4027)
!4036 = !DILocation(line: 672, column: 9, scope: !4027)
!4037 = !DILocation(line: 672, column: 2, scope: !4027)
!4038 = distinct !DISubprogram(name: "iforce_control_playback", scope: !3, file: !3, line: 88, type: !4039, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!112, !125, !277, !7}
!4041 = !DILocalVariable(name: "iforce", arg: 1, scope: !4038, file: !3, line: 88, type: !125)
!4042 = !DILocation(line: 88, column: 44, scope: !4038)
!4043 = !DILocalVariable(name: "id", arg: 2, scope: !4038, file: !3, line: 88, type: !277)
!4044 = !DILocation(line: 88, column: 56, scope: !4038)
!4045 = !DILocalVariable(name: "value", arg: 3, scope: !4038, file: !3, line: 88, type: !7)
!4046 = !DILocation(line: 88, column: 73, scope: !4038)
!4047 = !DILocalVariable(name: "data", scope: !4038, file: !3, line: 90, type: !4048)
!4048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 24, elements: !632)
!4049 = !DILocation(line: 90, column: 16, scope: !4038)
!4050 = !DILocation(line: 92, column: 12, scope: !4038)
!4051 = !DILocation(line: 92, column: 2, scope: !4038)
!4052 = !DILocation(line: 92, column: 10, scope: !4038)
!4053 = !DILocation(line: 93, column: 13, scope: !4038)
!4054 = !DILocation(line: 93, column: 19, scope: !4038)
!4055 = !DILocation(line: 93, column: 12, scope: !4038)
!4056 = !DILocation(line: 93, column: 28, scope: !4038)
!4057 = !DILocation(line: 93, column: 34, scope: !4038)
!4058 = !DILocation(line: 93, column: 27, scope: !4038)
!4059 = !DILocation(line: 93, column: 2, scope: !4038)
!4060 = !DILocation(line: 93, column: 10, scope: !4038)
!4061 = !DILocation(line: 94, column: 12, scope: !4038)
!4062 = !DILocation(line: 94, column: 2, scope: !4038)
!4063 = !DILocation(line: 94, column: 10, scope: !4038)
!4064 = !DILocation(line: 95, column: 28, scope: !4038)
!4065 = !DILocation(line: 95, column: 49, scope: !4038)
!4066 = !DILocation(line: 95, column: 9, scope: !4038)
!4067 = !DILocation(line: 95, column: 2, scope: !4038)
!4068 = distinct !DISubprogram(name: "iforce_process_packet", scope: !3, file: !3, line: 155, type: !4069, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{null, !125, !1238, !3793, !553}
!4071 = !DILocalVariable(name: "p", arg: 1, scope: !4072, file: !4073, line: 64, type: !4076)
!4072 = distinct !DISubprogram(name: "__le16_to_cpup", scope: !4073, file: !4073, line: 64, type: !4074, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4073 = !DIFile(filename: "./include/uapi/linux/byteorder/little_endian.h", directory: "/home/lizy2001/genbc/linux")
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!96, !4076}
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!4078 = !DILocation(line: 64, column: 59, scope: !4072, inlinedAt: !4079)
!4079 = distinct !DILocation(line: 10, column: 9, scope: !4080, inlinedAt: !4084)
!4080 = distinct !DISubprogram(name: "get_unaligned_le16", scope: !4081, file: !4081, line: 8, type: !4082, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4081 = !DIFile(filename: "./include/linux/unaligned/access_ok.h", directory: "/home/lizy2001/genbc/linux")
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!277, !3245}
!4084 = distinct !DILocation(line: 180, column: 14, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 161, column: 21)
!4086 = !DILocalVariable(name: "p", arg: 1, scope: !4080, file: !4081, line: 8, type: !3245)
!4087 = !DILocation(line: 8, column: 59, scope: !4080, inlinedAt: !4084)
!4088 = !DILocation(line: 64, column: 59, scope: !4072, inlinedAt: !4089)
!4089 = distinct !DILocation(line: 10, column: 9, scope: !4080, inlinedAt: !4090)
!4090 = distinct !DILocation(line: 206, column: 31, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4092, file: !3, line: 205, column: 3)
!4092 = distinct !DILexicalBlock(scope: !4085, file: !3, line: 205, column: 3)
!4093 = !DILocation(line: 8, column: 59, scope: !4080, inlinedAt: !4090)
!4094 = !DILocation(line: 64, column: 59, scope: !4072, inlinedAt: !4095)
!4095 = distinct !DILocation(line: 10, column: 9, scope: !4080, inlinedAt: !4096)
!4096 = distinct !DILocation(line: 167, column: 14, scope: !4085)
!4097 = !DILocation(line: 8, column: 59, scope: !4080, inlinedAt: !4096)
!4098 = !DILocation(line: 64, column: 59, scope: !4072, inlinedAt: !4099)
!4099 = distinct !DILocation(line: 10, column: 9, scope: !4080, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 165, column: 14, scope: !4085)
!4101 = !DILocation(line: 8, column: 59, scope: !4080, inlinedAt: !4100)
!4102 = !DILocalVariable(name: "iforce", arg: 1, scope: !4068, file: !3, line: 155, type: !125)
!4103 = !DILocation(line: 155, column: 43, scope: !4068)
!4104 = !DILocalVariable(name: "packet_id", arg: 2, scope: !4068, file: !3, line: 156, type: !1238)
!4105 = !DILocation(line: 156, column: 10, scope: !4068)
!4106 = !DILocalVariable(name: "data", arg: 3, scope: !4068, file: !3, line: 156, type: !3793)
!4107 = !DILocation(line: 156, column: 25, scope: !4068)
!4108 = !DILocalVariable(name: "len", arg: 4, scope: !4068, file: !3, line: 156, type: !553)
!4109 = !DILocation(line: 156, column: 38, scope: !4068)
!4110 = !DILocalVariable(name: "dev", scope: !4068, file: !3, line: 158, type: !130)
!4111 = !DILocation(line: 158, column: 20, scope: !4068)
!4112 = !DILocation(line: 158, column: 26, scope: !4068)
!4113 = !DILocation(line: 158, column: 34, scope: !4068)
!4114 = !DILocalVariable(name: "i", scope: !4068, file: !3, line: 159, type: !112)
!4115 = !DILocation(line: 159, column: 6, scope: !4068)
!4116 = !DILocalVariable(name: "j", scope: !4068, file: !3, line: 159, type: !112)
!4117 = !DILocation(line: 159, column: 9, scope: !4068)
!4118 = !DILocation(line: 161, column: 10, scope: !4068)
!4119 = !DILocation(line: 161, column: 2, scope: !4068)
!4120 = !DILocation(line: 164, column: 20, scope: !4085)
!4121 = !DILocation(line: 165, column: 33, scope: !4085)
!4122 = !DILocation(line: 10, column: 32, scope: !4080, inlinedAt: !4100)
!4123 = !DILocation(line: 10, column: 22, scope: !4080, inlinedAt: !4100)
!4124 = !DILocation(line: 66, column: 25, scope: !4072, inlinedAt: !4099)
!4125 = !DILocation(line: 66, column: 24, scope: !4072, inlinedAt: !4099)
!4126 = !DILocation(line: 165, column: 6, scope: !4085)
!4127 = !DILocation(line: 164, column: 3, scope: !4085)
!4128 = !DILocation(line: 166, column: 20, scope: !4085)
!4129 = !DILocation(line: 167, column: 33, scope: !4085)
!4130 = !DILocation(line: 167, column: 38, scope: !4085)
!4131 = !DILocation(line: 10, column: 32, scope: !4080, inlinedAt: !4096)
!4132 = !DILocation(line: 10, column: 22, scope: !4080, inlinedAt: !4096)
!4133 = !DILocation(line: 66, column: 25, scope: !4072, inlinedAt: !4095)
!4134 = !DILocation(line: 66, column: 24, scope: !4072, inlinedAt: !4095)
!4135 = !DILocation(line: 167, column: 6, scope: !4085)
!4136 = !DILocation(line: 166, column: 3, scope: !4085)
!4137 = !DILocation(line: 168, column: 20, scope: !4085)
!4138 = !DILocation(line: 168, column: 45, scope: !4085)
!4139 = !DILocation(line: 168, column: 43, scope: !4085)
!4140 = !DILocation(line: 168, column: 3, scope: !4085)
!4141 = !DILocation(line: 170, column: 7, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4085, file: !3, line: 170, column: 7)
!4143 = !DILocation(line: 170, column: 11, scope: !4142)
!4144 = !DILocation(line: 170, column: 16, scope: !4142)
!4145 = !DILocation(line: 170, column: 40, scope: !4142)
!4146 = !DILocation(line: 170, column: 45, scope: !4142)
!4147 = !DILocation(line: 170, column: 19, scope: !4142)
!4148 = !DILocation(line: 170, column: 7, scope: !4085)
!4149 = !DILocation(line: 171, column: 21, scope: !4142)
!4150 = !DILocation(line: 171, column: 44, scope: !4142)
!4151 = !DILocation(line: 171, column: 38, scope: !4142)
!4152 = !DILocation(line: 171, column: 4, scope: !4142)
!4153 = !DILocation(line: 173, column: 30, scope: !4085)
!4154 = !DILocation(line: 173, column: 38, scope: !4085)
!4155 = !DILocation(line: 173, column: 3, scope: !4085)
!4156 = !DILocation(line: 175, column: 14, scope: !4085)
!4157 = !DILocation(line: 175, column: 3, scope: !4085)
!4158 = !DILocation(line: 176, column: 3, scope: !4085)
!4159 = !DILocation(line: 179, column: 20, scope: !4085)
!4160 = !DILocation(line: 180, column: 33, scope: !4085)
!4161 = !DILocation(line: 10, column: 32, scope: !4080, inlinedAt: !4084)
!4162 = !DILocation(line: 10, column: 22, scope: !4080, inlinedAt: !4084)
!4163 = !DILocation(line: 66, column: 25, scope: !4072, inlinedAt: !4079)
!4164 = !DILocation(line: 66, column: 24, scope: !4072, inlinedAt: !4079)
!4165 = !DILocation(line: 180, column: 6, scope: !4085)
!4166 = !DILocation(line: 179, column: 3, scope: !4085)
!4167 = !DILocation(line: 181, column: 20, scope: !4085)
!4168 = !DILocation(line: 181, column: 42, scope: !4085)
!4169 = !DILocation(line: 181, column: 40, scope: !4085)
!4170 = !DILocation(line: 181, column: 3, scope: !4085)
!4171 = !DILocation(line: 182, column: 20, scope: !4085)
!4172 = !DILocation(line: 182, column: 42, scope: !4085)
!4173 = !DILocation(line: 182, column: 40, scope: !4085)
!4174 = !DILocation(line: 182, column: 3, scope: !4085)
!4175 = !DILocation(line: 184, column: 30, scope: !4085)
!4176 = !DILocation(line: 184, column: 38, scope: !4085)
!4177 = !DILocation(line: 184, column: 3, scope: !4085)
!4178 = !DILocation(line: 186, column: 14, scope: !4085)
!4179 = !DILocation(line: 186, column: 3, scope: !4085)
!4180 = !DILocation(line: 187, column: 3, scope: !4085)
!4181 = !DILocation(line: 190, column: 20, scope: !4085)
!4182 = !DILocation(line: 190, column: 35, scope: !4085)
!4183 = !DILocation(line: 190, column: 43, scope: !4085)
!4184 = !DILocation(line: 190, column: 3, scope: !4085)
!4185 = !DILocation(line: 191, column: 14, scope: !4085)
!4186 = !DILocation(line: 191, column: 3, scope: !4085)
!4187 = !DILocation(line: 194, column: 7, scope: !4085)
!4188 = !DILocation(line: 194, column: 15, scope: !4085)
!4189 = !DILocation(line: 194, column: 5, scope: !4085)
!4190 = !DILocation(line: 195, column: 7, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4085, file: !3, line: 195, column: 7)
!4192 = !DILocation(line: 195, column: 15, scope: !4191)
!4193 = !DILocation(line: 195, column: 7, scope: !4085)
!4194 = !DILocation(line: 196, column: 45, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4196, file: !3, line: 196, column: 8)
!4196 = distinct !DILexicalBlock(scope: !4191, file: !3, line: 195, column: 23)
!4197 = !DILocation(line: 196, column: 53, scope: !4195)
!4198 = !DILocation(line: 196, column: 66, scope: !4195)
!4199 = !DILocation(line: 196, column: 69, scope: !4195)
!4200 = !DILocation(line: 196, column: 9, scope: !4195)
!4201 = !DILocation(line: 196, column: 8, scope: !4196)
!4202 = !DILocation(line: 198, column: 28, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4195, file: !3, line: 196, column: 77)
!4204 = !DILocation(line: 198, column: 33, scope: !4203)
!4205 = !DILocation(line: 198, column: 5, scope: !4203)
!4206 = !DILocation(line: 199, column: 4, scope: !4203)
!4207 = !DILocation(line: 200, column: 3, scope: !4196)
!4208 = !DILocation(line: 200, column: 52, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4191, file: !3, line: 200, column: 14)
!4210 = !DILocation(line: 200, column: 60, scope: !4209)
!4211 = !DILocation(line: 200, column: 73, scope: !4209)
!4212 = !DILocation(line: 200, column: 76, scope: !4209)
!4213 = !DILocation(line: 200, column: 14, scope: !4209)
!4214 = !DILocation(line: 200, column: 14, scope: !4191)
!4215 = !DILocation(line: 202, column: 27, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4209, file: !3, line: 200, column: 84)
!4217 = !DILocation(line: 202, column: 32, scope: !4216)
!4218 = !DILocation(line: 202, column: 4, scope: !4216)
!4219 = !DILocation(line: 203, column: 3, scope: !4216)
!4220 = !DILocation(line: 205, column: 10, scope: !4092)
!4221 = !DILocation(line: 205, column: 8, scope: !4092)
!4222 = !DILocation(line: 205, column: 15, scope: !4091)
!4223 = !DILocation(line: 205, column: 19, scope: !4091)
!4224 = !DILocation(line: 205, column: 17, scope: !4091)
!4225 = !DILocation(line: 205, column: 3, scope: !4092)
!4226 = !DILocation(line: 206, column: 23, scope: !4091)
!4227 = !DILocation(line: 206, column: 50, scope: !4091)
!4228 = !DILocation(line: 206, column: 57, scope: !4091)
!4229 = !DILocation(line: 206, column: 55, scope: !4091)
!4230 = !DILocation(line: 10, column: 32, scope: !4080, inlinedAt: !4090)
!4231 = !DILocation(line: 10, column: 22, scope: !4080, inlinedAt: !4090)
!4232 = !DILocation(line: 66, column: 25, scope: !4072, inlinedAt: !4089)
!4233 = !DILocation(line: 66, column: 24, scope: !4072, inlinedAt: !4089)
!4234 = !DILocation(line: 206, column: 4, scope: !4091)
!4235 = !DILocation(line: 205, column: 26, scope: !4091)
!4236 = !DILocation(line: 205, column: 3, scope: !4091)
!4237 = distinct !{!4237, !4225, !4238}
!4238 = !DILocation(line: 206, column: 59, scope: !4092)
!4239 = !DILocation(line: 208, column: 3, scope: !4085)
!4240 = !DILocation(line: 210, column: 1, scope: !4068)
!4241 = distinct !DISubprogram(name: "input_report_abs", scope: !132, file: !132, line: 425, type: !4242, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{null, !130, !7, !112}
!4244 = !DILocalVariable(name: "dev", arg: 1, scope: !4241, file: !132, line: 425, type: !130)
!4245 = !DILocation(line: 425, column: 55, scope: !4241)
!4246 = !DILocalVariable(name: "code", arg: 2, scope: !4241, file: !132, line: 425, type: !7)
!4247 = !DILocation(line: 425, column: 73, scope: !4241)
!4248 = !DILocalVariable(name: "value", arg: 3, scope: !4241, file: !132, line: 425, type: !112)
!4249 = !DILocation(line: 425, column: 83, scope: !4241)
!4250 = !DILocation(line: 427, column: 14, scope: !4241)
!4251 = !DILocation(line: 427, column: 27, scope: !4241)
!4252 = !DILocation(line: 427, column: 33, scope: !4241)
!4253 = !DILocation(line: 427, column: 2, scope: !4241)
!4254 = !DILocation(line: 428, column: 1, scope: !4241)
!4255 = distinct !DISubprogram(name: "test_bit", scope: !4256, file: !4256, line: 132, type: !4257, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4256 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!464, !105, !4259}
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4261)
!4261 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !92)
!4262 = !DILocalVariable(name: "nr", arg: 1, scope: !4263, file: !4264, line: 210, type: !105)
!4263 = distinct !DISubprogram(name: "variable_test_bit", scope: !4264, file: !4264, line: 210, type: !4257, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4264 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4265 = !DILocation(line: 210, column: 52, scope: !4263, inlinedAt: !4266)
!4266 = distinct !DILocation(line: 135, column: 9, scope: !4255)
!4267 = !DILocalVariable(name: "addr", arg: 2, scope: !4263, file: !4264, line: 210, type: !4259)
!4268 = !DILocation(line: 210, column: 86, scope: !4263, inlinedAt: !4266)
!4269 = !DILocalVariable(name: "oldbit", scope: !4263, file: !4264, line: 212, type: !464)
!4270 = !DILocation(line: 212, column: 7, scope: !4263, inlinedAt: !4266)
!4271 = !DILocalVariable(name: "nr", arg: 1, scope: !4272, file: !4264, line: 204, type: !105)
!4272 = distinct !DISubprogram(name: "constant_test_bit", scope: !4264, file: !4264, line: 204, type: !4257, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4273 = !DILocation(line: 204, column: 52, scope: !4272, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 135, column: 9, scope: !4255)
!4275 = !DILocalVariable(name: "addr", arg: 2, scope: !4272, file: !4264, line: 204, type: !4259)
!4276 = !DILocation(line: 204, column: 86, scope: !4272, inlinedAt: !4274)
!4277 = !DILocalVariable(name: "v", arg: 1, scope: !4278, file: !4279, line: 69, type: !4282)
!4278 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4279, file: !4279, line: 69, type: !4280, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4279 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4280 = !DISubroutineType(types: !4281)
!4281 = !{null, !4282, !553}
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4284)
!4284 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4285 = !DILocation(line: 69, column: 73, scope: !4278, inlinedAt: !4286)
!4286 = distinct !DILocation(line: 134, column: 2, scope: !4255)
!4287 = !DILocalVariable(name: "size", arg: 2, scope: !4278, file: !4279, line: 69, type: !553)
!4288 = !DILocation(line: 69, column: 83, scope: !4278, inlinedAt: !4286)
!4289 = !DILocalVariable(name: "nr", arg: 1, scope: !4255, file: !4256, line: 132, type: !105)
!4290 = !DILocation(line: 132, column: 34, scope: !4255)
!4291 = !DILocalVariable(name: "addr", arg: 2, scope: !4255, file: !4256, line: 132, type: !4259)
!4292 = !DILocation(line: 132, column: 68, scope: !4255)
!4293 = !DILocation(line: 134, column: 25, scope: !4255)
!4294 = !DILocation(line: 134, column: 32, scope: !4255)
!4295 = !DILocation(line: 134, column: 30, scope: !4255)
!4296 = !DILocation(line: 71, column: 19, scope: !4278, inlinedAt: !4286)
!4297 = !DILocation(line: 71, column: 22, scope: !4278, inlinedAt: !4286)
!4298 = !DILocation(line: 71, column: 2, scope: !4278, inlinedAt: !4286)
!4299 = !DILocation(line: 72, column: 2, scope: !4278, inlinedAt: !4286)
!4300 = !DILocation(line: 135, column: 9, scope: !4255)
!4301 = !DILocation(line: 206, column: 19, scope: !4272, inlinedAt: !4274)
!4302 = !DILocation(line: 206, column: 22, scope: !4272, inlinedAt: !4274)
!4303 = !DILocation(line: 206, column: 15, scope: !4272, inlinedAt: !4274)
!4304 = !DILocation(line: 207, column: 4, scope: !4272, inlinedAt: !4274)
!4305 = !DILocation(line: 207, column: 9, scope: !4272, inlinedAt: !4274)
!4306 = !DILocation(line: 207, column: 12, scope: !4272, inlinedAt: !4274)
!4307 = !DILocation(line: 206, column: 44, scope: !4272, inlinedAt: !4274)
!4308 = !DILocation(line: 207, column: 37, scope: !4272, inlinedAt: !4274)
!4309 = !DILocation(line: 217, column: 33, scope: !4263, inlinedAt: !4266)
!4310 = !DILocation(line: 217, column: 46, scope: !4263, inlinedAt: !4266)
!4311 = !DILocation(line: 214, column: 2, scope: !4263, inlinedAt: !4266)
!4312 = !{i32 -2147196860, i32 -2147196800}
!4313 = !DILocation(line: 219, column: 9, scope: !4263, inlinedAt: !4266)
!4314 = !DILocation(line: 135, column: 2, scope: !4255)
!4315 = distinct !DISubprogram(name: "iforce_report_hats_buttons", scope: !3, file: !3, line: 119, type: !4316, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{null, !125, !3793}
!4318 = !DILocalVariable(name: "iforce", arg: 1, scope: !4315, file: !3, line: 119, type: !125)
!4319 = !DILocation(line: 119, column: 55, scope: !4315)
!4320 = !DILocalVariable(name: "data", arg: 2, scope: !4315, file: !3, line: 119, type: !3793)
!4321 = !DILocation(line: 119, column: 67, scope: !4315)
!4322 = !DILocalVariable(name: "dev", scope: !4315, file: !3, line: 121, type: !130)
!4323 = !DILocation(line: 121, column: 20, scope: !4315)
!4324 = !DILocation(line: 121, column: 26, scope: !4315)
!4325 = !DILocation(line: 121, column: 34, scope: !4315)
!4326 = !DILocalVariable(name: "i", scope: !4315, file: !3, line: 122, type: !112)
!4327 = !DILocation(line: 122, column: 6, scope: !4315)
!4328 = !DILocation(line: 124, column: 19, scope: !4315)
!4329 = !DILocation(line: 124, column: 54, scope: !4315)
!4330 = !DILocation(line: 124, column: 62, scope: !4315)
!4331 = !DILocation(line: 124, column: 35, scope: !4315)
!4332 = !DILocation(line: 124, column: 68, scope: !4315)
!4333 = !DILocation(line: 124, column: 2, scope: !4315)
!4334 = !DILocation(line: 125, column: 19, scope: !4315)
!4335 = !DILocation(line: 125, column: 54, scope: !4315)
!4336 = !DILocation(line: 125, column: 62, scope: !4315)
!4337 = !DILocation(line: 125, column: 35, scope: !4315)
!4338 = !DILocation(line: 125, column: 68, scope: !4315)
!4339 = !DILocation(line: 125, column: 2, scope: !4315)
!4340 = !DILocation(line: 127, column: 9, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 127, column: 2)
!4342 = !DILocation(line: 127, column: 7, scope: !4341)
!4343 = !DILocation(line: 127, column: 14, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4341, file: !3, line: 127, column: 2)
!4345 = !DILocation(line: 127, column: 22, scope: !4344)
!4346 = !DILocation(line: 127, column: 28, scope: !4344)
!4347 = !DILocation(line: 127, column: 32, scope: !4344)
!4348 = !DILocation(line: 127, column: 35, scope: !4344)
!4349 = !DILocation(line: 127, column: 2, scope: !4341)
!4350 = !DILocation(line: 128, column: 20, scope: !4344)
!4351 = !DILocation(line: 128, column: 25, scope: !4344)
!4352 = !DILocation(line: 128, column: 33, scope: !4344)
!4353 = !DILocation(line: 128, column: 39, scope: !4344)
!4354 = !DILocation(line: 128, column: 43, scope: !4344)
!4355 = !DILocation(line: 129, column: 6, scope: !4344)
!4356 = !DILocation(line: 129, column: 12, scope: !4344)
!4357 = !DILocation(line: 129, column: 14, scope: !4344)
!4358 = !DILocation(line: 129, column: 20, scope: !4344)
!4359 = !DILocation(line: 129, column: 34, scope: !4344)
!4360 = !DILocation(line: 129, column: 36, scope: !4344)
!4361 = !DILocation(line: 129, column: 30, scope: !4344)
!4362 = !DILocation(line: 129, column: 25, scope: !4344)
!4363 = !DILocation(line: 128, column: 3, scope: !4344)
!4364 = !DILocation(line: 127, column: 42, scope: !4344)
!4365 = !DILocation(line: 127, column: 2, scope: !4344)
!4366 = distinct !{!4366, !4349, !4367}
!4367 = !DILocation(line: 129, column: 41, scope: !4341)
!4368 = !DILocation(line: 132, column: 6, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 132, column: 6)
!4370 = !DILocation(line: 132, column: 8, scope: !4369)
!4371 = !DILocation(line: 132, column: 6, scope: !4315)
!4372 = !DILocalVariable(name: "btns", scope: !4373, file: !3, line: 133, type: !1238)
!4373 = distinct !DILexicalBlock(scope: !4369, file: !3, line: 132, column: 14)
!4374 = !DILocation(line: 133, column: 6, scope: !4373)
!4375 = !DILocation(line: 133, column: 13, scope: !4373)
!4376 = !DILocation(line: 135, column: 27, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4373, file: !3, line: 135, column: 7)
!4378 = !DILocation(line: 135, column: 32, scope: !4377)
!4379 = !DILocation(line: 135, column: 7, scope: !4377)
!4380 = !DILocation(line: 135, column: 7, scope: !4373)
!4381 = !DILocation(line: 136, column: 8, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4383, file: !3, line: 136, column: 8)
!4383 = distinct !DILexicalBlock(scope: !4377, file: !3, line: 135, column: 41)
!4384 = !DILocation(line: 136, column: 13, scope: !4382)
!4385 = !DILocation(line: 136, column: 8, scope: !4383)
!4386 = !DILocation(line: 137, column: 22, scope: !4382)
!4387 = !DILocation(line: 137, column: 5, scope: !4382)
!4388 = !DILocation(line: 138, column: 13, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4382, file: !3, line: 138, column: 13)
!4390 = !DILocation(line: 138, column: 18, scope: !4389)
!4391 = !DILocation(line: 138, column: 13, scope: !4382)
!4392 = !DILocation(line: 139, column: 22, scope: !4389)
!4393 = !DILocation(line: 139, column: 5, scope: !4389)
!4394 = !DILocation(line: 141, column: 22, scope: !4389)
!4395 = !DILocation(line: 141, column: 5, scope: !4389)
!4396 = !DILocation(line: 142, column: 3, scope: !4383)
!4397 = !DILocation(line: 144, column: 27, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4373, file: !3, line: 144, column: 7)
!4399 = !DILocation(line: 144, column: 32, scope: !4398)
!4400 = !DILocation(line: 144, column: 7, scope: !4398)
!4401 = !DILocation(line: 144, column: 7, scope: !4373)
!4402 = !DILocation(line: 145, column: 8, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 145, column: 8)
!4404 = distinct !DILexicalBlock(scope: !4398, file: !3, line: 144, column: 41)
!4405 = !DILocation(line: 145, column: 13, scope: !4403)
!4406 = !DILocation(line: 145, column: 8, scope: !4404)
!4407 = !DILocation(line: 146, column: 22, scope: !4403)
!4408 = !DILocation(line: 146, column: 5, scope: !4403)
!4409 = !DILocation(line: 147, column: 13, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4403, file: !3, line: 147, column: 13)
!4411 = !DILocation(line: 147, column: 18, scope: !4410)
!4412 = !DILocation(line: 147, column: 13, scope: !4403)
!4413 = !DILocation(line: 148, column: 22, scope: !4410)
!4414 = !DILocation(line: 148, column: 5, scope: !4410)
!4415 = !DILocation(line: 150, column: 22, scope: !4410)
!4416 = !DILocation(line: 150, column: 5, scope: !4410)
!4417 = !DILocation(line: 151, column: 3, scope: !4404)
!4418 = !DILocation(line: 152, column: 2, scope: !4373)
!4419 = !DILocation(line: 153, column: 1, scope: !4315)
!4420 = distinct !DISubprogram(name: "input_sync", scope: !132, file: !132, line: 440, type: !3019, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4421 = !DILocalVariable(name: "dev", arg: 1, scope: !4420, file: !132, line: 440, type: !130)
!4422 = !DILocation(line: 440, column: 49, scope: !4420)
!4423 = !DILocation(line: 442, column: 14, scope: !4420)
!4424 = !DILocation(line: 442, column: 2, scope: !4420)
!4425 = !DILocation(line: 443, column: 1, scope: !4420)
!4426 = distinct !DISubprogram(name: "input_report_key", scope: !132, file: !132, line: 415, type: !4242, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4427 = !DILocalVariable(name: "dev", arg: 1, scope: !4426, file: !132, line: 415, type: !130)
!4428 = !DILocation(line: 415, column: 55, scope: !4426)
!4429 = !DILocalVariable(name: "code", arg: 2, scope: !4426, file: !132, line: 415, type: !7)
!4430 = !DILocation(line: 415, column: 73, scope: !4426)
!4431 = !DILocalVariable(name: "value", arg: 3, scope: !4426, file: !132, line: 415, type: !112)
!4432 = !DILocation(line: 415, column: 83, scope: !4426)
!4433 = !DILocation(line: 417, column: 14, scope: !4426)
!4434 = !DILocation(line: 417, column: 27, scope: !4426)
!4435 = !DILocation(line: 417, column: 35, scope: !4426)
!4436 = !DILocation(line: 417, column: 34, scope: !4426)
!4437 = !DILocation(line: 417, column: 33, scope: !4426)
!4438 = !DILocation(line: 417, column: 2, scope: !4426)
!4439 = !DILocation(line: 418, column: 1, scope: !4426)
!4440 = distinct !DISubprogram(name: "test_and_set_bit", scope: !4441, file: !4441, line: 68, type: !4442, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4441 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!464, !105, !4444}
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4445 = !DILocalVariable(name: "nr", arg: 1, scope: !4446, file: !4264, line: 136, type: !105)
!4446 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !4264, file: !4264, line: 136, type: !4442, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4447 = !DILocation(line: 136, column: 28, scope: !4446, inlinedAt: !4448)
!4448 = distinct !DILocation(line: 71, column: 9, scope: !4440)
!4449 = !DILocalVariable(name: "addr", arg: 2, scope: !4446, file: !4264, line: 136, type: !4444)
!4450 = !DILocation(line: 136, column: 56, scope: !4446, inlinedAt: !4448)
!4451 = !DILocalVariable(name: "c", scope: !4452, file: !4264, line: 138, type: !464)
!4452 = distinct !DILexicalBlock(scope: !4446, file: !4264, line: 138, column: 9)
!4453 = !DILocation(line: 138, column: 9, scope: !4452, inlinedAt: !4448)
!4454 = !DILocalVariable(name: "v", arg: 1, scope: !4455, file: !4279, line: 99, type: !4282)
!4455 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4279, file: !4279, line: 99, type: !4280, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4456 = !DILocation(line: 99, column: 79, scope: !4455, inlinedAt: !4457)
!4457 = distinct !DILocation(line: 70, column: 2, scope: !4440)
!4458 = !DILocalVariable(name: "size", arg: 2, scope: !4455, file: !4279, line: 99, type: !553)
!4459 = !DILocation(line: 99, column: 89, scope: !4455, inlinedAt: !4457)
!4460 = !DILocalVariable(name: "nr", arg: 1, scope: !4440, file: !4441, line: 68, type: !105)
!4461 = !DILocation(line: 68, column: 42, scope: !4440)
!4462 = !DILocalVariable(name: "addr", arg: 2, scope: !4440, file: !4441, line: 68, type: !4444)
!4463 = !DILocation(line: 68, column: 70, scope: !4440)
!4464 = !DILocation(line: 70, column: 31, scope: !4440)
!4465 = !DILocation(line: 70, column: 38, scope: !4440)
!4466 = !DILocation(line: 70, column: 36, scope: !4440)
!4467 = !DILocation(line: 101, column: 20, scope: !4455, inlinedAt: !4457)
!4468 = !DILocation(line: 101, column: 23, scope: !4455, inlinedAt: !4457)
!4469 = !DILocation(line: 101, column: 2, scope: !4455, inlinedAt: !4457)
!4470 = !DILocation(line: 102, column: 2, scope: !4455, inlinedAt: !4457)
!4471 = !DILocation(line: 71, column: 31, scope: !4440)
!4472 = !DILocation(line: 71, column: 35, scope: !4440)
!4473 = !{i32 -2147201622, i32 -2147201526}
!4474 = !DILocation(line: 71, column: 2, scope: !4440)
!4475 = distinct !DISubprogram(name: "input_report_ff_status", scope: !132, file: !132, line: 430, type: !4242, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4476 = !DILocalVariable(name: "dev", arg: 1, scope: !4475, file: !132, line: 430, type: !130)
!4477 = !DILocation(line: 430, column: 61, scope: !4475)
!4478 = !DILocalVariable(name: "code", arg: 2, scope: !4475, file: !132, line: 430, type: !7)
!4479 = !DILocation(line: 430, column: 79, scope: !4475)
!4480 = !DILocalVariable(name: "value", arg: 3, scope: !4475, file: !132, line: 430, type: !112)
!4481 = !DILocation(line: 430, column: 89, scope: !4475)
!4482 = !DILocation(line: 432, column: 14, scope: !4475)
!4483 = !DILocation(line: 432, column: 33, scope: !4475)
!4484 = !DILocation(line: 432, column: 39, scope: !4475)
!4485 = !DILocation(line: 432, column: 2, scope: !4475)
!4486 = !DILocation(line: 433, column: 1, scope: !4475)
!4487 = distinct !DISubprogram(name: "test_and_clear_bit", scope: !4441, file: !4441, line: 81, type: !4442, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4488 = !DILocalVariable(name: "nr", arg: 1, scope: !4489, file: !4264, line: 160, type: !105)
!4489 = distinct !DISubprogram(name: "arch_test_and_clear_bit", scope: !4264, file: !4264, line: 160, type: !4442, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4490 = !DILocation(line: 160, column: 30, scope: !4489, inlinedAt: !4491)
!4491 = distinct !DILocation(line: 84, column: 9, scope: !4487)
!4492 = !DILocalVariable(name: "addr", arg: 2, scope: !4489, file: !4264, line: 160, type: !4444)
!4493 = !DILocation(line: 160, column: 58, scope: !4489, inlinedAt: !4491)
!4494 = !DILocalVariable(name: "c", scope: !4495, file: !4264, line: 162, type: !464)
!4495 = distinct !DILexicalBlock(scope: !4489, file: !4264, line: 162, column: 9)
!4496 = !DILocation(line: 162, column: 9, scope: !4495, inlinedAt: !4491)
!4497 = !DILocation(line: 99, column: 79, scope: !4455, inlinedAt: !4498)
!4498 = distinct !DILocation(line: 83, column: 2, scope: !4487)
!4499 = !DILocation(line: 99, column: 89, scope: !4455, inlinedAt: !4498)
!4500 = !DILocalVariable(name: "nr", arg: 1, scope: !4487, file: !4441, line: 81, type: !105)
!4501 = !DILocation(line: 81, column: 44, scope: !4487)
!4502 = !DILocalVariable(name: "addr", arg: 2, scope: !4487, file: !4441, line: 81, type: !4444)
!4503 = !DILocation(line: 81, column: 72, scope: !4487)
!4504 = !DILocation(line: 83, column: 31, scope: !4487)
!4505 = !DILocation(line: 83, column: 38, scope: !4487)
!4506 = !DILocation(line: 83, column: 36, scope: !4487)
!4507 = !DILocation(line: 101, column: 20, scope: !4455, inlinedAt: !4498)
!4508 = !DILocation(line: 101, column: 23, scope: !4455, inlinedAt: !4498)
!4509 = !DILocation(line: 101, column: 2, scope: !4455, inlinedAt: !4498)
!4510 = !DILocation(line: 102, column: 2, scope: !4455, inlinedAt: !4498)
!4511 = !DILocation(line: 84, column: 33, scope: !4487)
!4512 = !DILocation(line: 84, column: 37, scope: !4487)
!4513 = !{i32 -2147199710, i32 -2147199614}
!4514 = !DILocation(line: 84, column: 2, scope: !4487)
!4515 = distinct !DISubprogram(name: "mark_core_as_ready", scope: !3, file: !3, line: 100, type: !4516, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{!112, !125, !97}
!4518 = !DILocalVariable(name: "iforce", arg: 1, scope: !4515, file: !3, line: 100, type: !125)
!4519 = !DILocation(line: 100, column: 46, scope: !4515)
!4520 = !DILocalVariable(name: "addr", arg: 2, scope: !4515, file: !3, line: 100, type: !97)
!4521 = !DILocation(line: 100, column: 69, scope: !4515)
!4522 = !DILocalVariable(name: "i", scope: !4515, file: !3, line: 102, type: !112)
!4523 = !DILocation(line: 102, column: 6, scope: !4515)
!4524 = !DILocation(line: 104, column: 7, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 104, column: 6)
!4526 = !DILocation(line: 104, column: 15, scope: !4525)
!4527 = !DILocation(line: 104, column: 20, scope: !4525)
!4528 = !DILocation(line: 104, column: 6, scope: !4515)
!4529 = !DILocation(line: 105, column: 3, scope: !4525)
!4530 = !DILocation(line: 107, column: 9, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 107, column: 2)
!4532 = !DILocation(line: 107, column: 7, scope: !4531)
!4533 = !DILocation(line: 107, column: 14, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 107, column: 2)
!4535 = !DILocation(line: 107, column: 18, scope: !4534)
!4536 = !DILocation(line: 107, column: 26, scope: !4534)
!4537 = !DILocation(line: 107, column: 31, scope: !4534)
!4538 = !DILocation(line: 107, column: 35, scope: !4534)
!4539 = !DILocation(line: 107, column: 16, scope: !4534)
!4540 = !DILocation(line: 107, column: 2, scope: !4531)
!4541 = !DILocation(line: 108, column: 33, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4543, file: !3, line: 108, column: 7)
!4543 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 107, column: 53)
!4544 = !DILocation(line: 108, column: 41, scope: !4542)
!4545 = !DILocation(line: 108, column: 54, scope: !4542)
!4546 = !DILocation(line: 108, column: 57, scope: !4542)
!4547 = !DILocation(line: 108, column: 7, scope: !4542)
!4548 = !DILocation(line: 108, column: 64, scope: !4542)
!4549 = !DILocation(line: 109, column: 8, scope: !4542)
!4550 = !DILocation(line: 109, column: 16, scope: !4542)
!4551 = !DILocation(line: 109, column: 29, scope: !4542)
!4552 = !DILocation(line: 109, column: 32, scope: !4542)
!4553 = !DILocation(line: 109, column: 43, scope: !4542)
!4554 = !DILocation(line: 109, column: 52, scope: !4542)
!4555 = !DILocation(line: 109, column: 49, scope: !4542)
!4556 = !DILocation(line: 109, column: 57, scope: !4542)
!4557 = !DILocation(line: 110, column: 8, scope: !4542)
!4558 = !DILocation(line: 110, column: 16, scope: !4542)
!4559 = !DILocation(line: 110, column: 29, scope: !4542)
!4560 = !DILocation(line: 110, column: 32, scope: !4542)
!4561 = !DILocation(line: 110, column: 43, scope: !4542)
!4562 = !DILocation(line: 110, column: 52, scope: !4542)
!4563 = !DILocation(line: 110, column: 49, scope: !4542)
!4564 = !DILocation(line: 108, column: 7, scope: !4543)
!4565 = !DILocation(line: 111, column: 30, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4542, file: !3, line: 110, column: 59)
!4567 = !DILocation(line: 111, column: 38, scope: !4566)
!4568 = !DILocation(line: 111, column: 51, scope: !4566)
!4569 = !DILocation(line: 111, column: 54, scope: !4566)
!4570 = !DILocation(line: 111, column: 4, scope: !4566)
!4571 = !DILocation(line: 112, column: 4, scope: !4566)
!4572 = !DILocation(line: 114, column: 2, scope: !4543)
!4573 = !DILocation(line: 107, column: 48, scope: !4534)
!4574 = !DILocation(line: 107, column: 2, scope: !4534)
!4575 = distinct !{!4575, !4540, !4576}
!4576 = !DILocation(line: 114, column: 2, scope: !4531)
!4577 = !DILocation(line: 115, column: 2, scope: !4515)
!4578 = !DILocation(line: 116, column: 2, scope: !4515)
!4579 = !DILocation(line: 117, column: 1, scope: !4515)
!4580 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !4028, file: !4028, line: 646, type: !4029, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4581 = !DILocalVariable(name: "__ret", scope: !4582, file: !4028, line: 648, type: !92)
!4582 = distinct !DILexicalBlock(scope: !4580, file: !4028, line: 648, column: 9)
!4583 = !DILocation(line: 648, column: 9, scope: !4582)
!4584 = !DILocalVariable(name: "__edi", scope: !4582, file: !4028, line: 648, type: !92)
!4585 = !DILocalVariable(name: "__esi", scope: !4582, file: !4028, line: 648, type: !92)
!4586 = !DILocalVariable(name: "__edx", scope: !4582, file: !4028, line: 648, type: !92)
!4587 = !DILocalVariable(name: "__ecx", scope: !4582, file: !4028, line: 648, type: !92)
!4588 = !DILocalVariable(name: "__eax", scope: !4582, file: !4028, line: 648, type: !92)
!4589 = !DILocation(line: 648, column: 9, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4591, file: !4028, line: 648, column: 9)
!4591 = distinct !DILexicalBlock(scope: !4582, file: !4028, line: 648, column: 9)
!4592 = !{i32 -2145687676, i32 -2145685361, i32 -2145685127, i32 -2145685076, i32 -2145685048, i32 -2145685023, i32 -2145685339, i32 -2145685326, i32 -2145684888, i32 -2145684769, i32 -2145685234, i32 -2145685207, i32 -2145685179, i32 -2145685149}
!4593 = !DILocalVariable(name: "__mask", scope: !4594, file: !4028, line: 648, type: !92)
!4594 = distinct !DILexicalBlock(scope: !4590, file: !4028, line: 648, column: 9)
!4595 = !DILocation(line: 648, column: 9, scope: !4594)
!4596 = !DILocation(line: 648, column: 9, scope: !4591)
!4597 = !DILocation(line: 648, column: 2, scope: !4580)
!4598 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4028, file: !4028, line: 656, type: !1756, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4599 = !DILocalVariable(name: "__edi", scope: !4600, file: !4028, line: 658, type: !92)
!4600 = distinct !DILexicalBlock(scope: !4598, file: !4028, line: 658, column: 2)
!4601 = !DILocation(line: 658, column: 2, scope: !4600)
!4602 = !DILocalVariable(name: "__esi", scope: !4600, file: !4028, line: 658, type: !92)
!4603 = !DILocalVariable(name: "__edx", scope: !4600, file: !4028, line: 658, type: !92)
!4604 = !DILocalVariable(name: "__ecx", scope: !4600, file: !4028, line: 658, type: !92)
!4605 = !DILocalVariable(name: "__eax", scope: !4600, file: !4028, line: 658, type: !92)
!4606 = !{i32 -2145680582, i32 -2145679850, i32 -2145679616, i32 -2145679565, i32 -2145679537, i32 -2145679512, i32 -2145679828, i32 -2145679815, i32 -2145679377, i32 -2145679258, i32 -2145679723, i32 -2145679696, i32 -2145679668, i32 -2145679638}
!4607 = !DILocation(line: 659, column: 1, scope: !4598)
!4608 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !4028, file: !4028, line: 651, type: !4609, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4609 = !DISubroutineType(types: !4610)
!4610 = !{null, !92}
!4611 = !DILocalVariable(name: "f", arg: 1, scope: !4608, file: !4028, line: 651, type: !92)
!4612 = !DILocation(line: 651, column: 65, scope: !4608)
!4613 = !DILocalVariable(name: "__edi", scope: !4614, file: !4028, line: 653, type: !92)
!4614 = distinct !DILexicalBlock(scope: !4608, file: !4028, line: 653, column: 2)
!4615 = !DILocation(line: 653, column: 2, scope: !4614)
!4616 = !DILocalVariable(name: "__esi", scope: !4614, file: !4028, line: 653, type: !92)
!4617 = !DILocalVariable(name: "__edx", scope: !4614, file: !4028, line: 653, type: !92)
!4618 = !DILocalVariable(name: "__ecx", scope: !4614, file: !4028, line: 653, type: !92)
!4619 = !DILocalVariable(name: "__eax", scope: !4614, file: !4028, line: 653, type: !92)
!4620 = !{i32 -2145683209, i32 -2145682459, i32 -2145682225, i32 -2145682174, i32 -2145682146, i32 -2145682121, i32 -2145682437, i32 -2145682424, i32 -2145681986, i32 -2145681867, i32 -2145682332, i32 -2145682305, i32 -2145682277, i32 -2145682247}
!4621 = !DILocation(line: 654, column: 1, scope: !4608)
!4622 = distinct !DISubprogram(name: "kasan_check_read", scope: !4623, file: !4623, line: 34, type: !4624, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4623 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4624 = !DISubroutineType(types: !4625)
!4625 = !{!464, !4282, !7}
!4626 = !DILocalVariable(name: "p", arg: 1, scope: !4622, file: !4623, line: 34, type: !4282)
!4627 = !DILocation(line: 34, column: 58, scope: !4622)
!4628 = !DILocalVariable(name: "size", arg: 2, scope: !4622, file: !4623, line: 34, type: !7)
!4629 = !DILocation(line: 34, column: 74, scope: !4622)
!4630 = !DILocation(line: 36, column: 2, scope: !4622)
!4631 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4632, file: !4632, line: 178, type: !4633, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4632 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4633 = !DISubroutineType(types: !4634)
!4634 = !{null, !4282, !553, !112}
!4635 = !DILocalVariable(name: "ptr", arg: 1, scope: !4631, file: !4632, line: 178, type: !4282)
!4636 = !DILocation(line: 178, column: 60, scope: !4631)
!4637 = !DILocalVariable(name: "size", arg: 2, scope: !4631, file: !4632, line: 178, type: !553)
!4638 = !DILocation(line: 178, column: 72, scope: !4631)
!4639 = !DILocalVariable(name: "type", arg: 3, scope: !4631, file: !4632, line: 179, type: !112)
!4640 = !DILocation(line: 179, column: 15, scope: !4631)
!4641 = !DILocation(line: 179, column: 23, scope: !4631)
!4642 = distinct !DISubprogram(name: "kasan_check_write", scope: !4623, file: !4623, line: 38, type: !4624, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4643 = !DILocalVariable(name: "p", arg: 1, scope: !4642, file: !4623, line: 38, type: !4282)
!4644 = !DILocation(line: 38, column: 59, scope: !4642)
!4645 = !DILocalVariable(name: "size", arg: 2, scope: !4642, file: !4623, line: 38, type: !7)
!4646 = !DILocation(line: 38, column: 75, scope: !4642)
!4647 = !DILocation(line: 40, column: 2, scope: !4642)
!4648 = distinct !DISubprogram(name: "clear_bit", scope: !4441, file: !4441, line: 39, type: !4649, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{null, !105, !4444}
!4651 = !DILocalVariable(name: "nr", arg: 1, scope: !4652, file: !4264, line: 72, type: !105)
!4652 = distinct !DISubprogram(name: "arch_clear_bit", scope: !4264, file: !4264, line: 72, type: !4649, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4653 = !DILocation(line: 72, column: 21, scope: !4652, inlinedAt: !4654)
!4654 = distinct !DILocation(line: 42, column: 2, scope: !4648)
!4655 = !DILocalVariable(name: "addr", arg: 2, scope: !4652, file: !4264, line: 72, type: !4444)
!4656 = !DILocation(line: 72, column: 49, scope: !4652, inlinedAt: !4654)
!4657 = !DILocalVariable(name: "v", arg: 1, scope: !4658, file: !4279, line: 84, type: !4282)
!4658 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4279, file: !4279, line: 84, type: !4280, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!4659 = !DILocation(line: 84, column: 74, scope: !4658, inlinedAt: !4660)
!4660 = distinct !DILocation(line: 41, column: 2, scope: !4648)
!4661 = !DILocalVariable(name: "size", arg: 2, scope: !4658, file: !4279, line: 84, type: !553)
!4662 = !DILocation(line: 84, column: 84, scope: !4658, inlinedAt: !4660)
!4663 = !DILocalVariable(name: "nr", arg: 1, scope: !4648, file: !4441, line: 39, type: !105)
!4664 = !DILocation(line: 39, column: 35, scope: !4648)
!4665 = !DILocalVariable(name: "addr", arg: 2, scope: !4648, file: !4441, line: 39, type: !4444)
!4666 = !DILocation(line: 39, column: 63, scope: !4648)
!4667 = !DILocation(line: 41, column: 26, scope: !4648)
!4668 = !DILocation(line: 41, column: 33, scope: !4648)
!4669 = !DILocation(line: 41, column: 31, scope: !4648)
!4670 = !DILocation(line: 86, column: 20, scope: !4658, inlinedAt: !4660)
!4671 = !DILocation(line: 86, column: 23, scope: !4658, inlinedAt: !4660)
!4672 = !DILocation(line: 86, column: 2, scope: !4658, inlinedAt: !4660)
!4673 = !DILocation(line: 87, column: 2, scope: !4658, inlinedAt: !4660)
!4674 = !DILocation(line: 42, column: 17, scope: !4648)
!4675 = !DILocation(line: 42, column: 21, scope: !4648)
!4676 = !DILocation(line: 74, column: 27, scope: !4677, inlinedAt: !4654)
!4677 = distinct !DILexicalBlock(scope: !4652, file: !4264, line: 74, column: 6)
!4678 = !DILocation(line: 74, column: 6, scope: !4677, inlinedAt: !4654)
!4679 = !DILocation(line: 74, column: 6, scope: !4652, inlinedAt: !4654)
!4680 = !DILocation(line: 76, column: 6, scope: !4681, inlinedAt: !4654)
!4681 = distinct !DILexicalBlock(scope: !4677, file: !4264, line: 74, column: 32)
!4682 = !DILocation(line: 77, column: 13, scope: !4681, inlinedAt: !4654)
!4683 = !DILocation(line: 77, column: 12, scope: !4681, inlinedAt: !4654)
!4684 = !DILocation(line: 75, column: 3, scope: !4681, inlinedAt: !4654)
!4685 = !{i32 -2147205154}
!4686 = !DILocation(line: 78, column: 2, scope: !4681, inlinedAt: !4654)
!4687 = !DILocation(line: 80, column: 8, scope: !4688, inlinedAt: !4654)
!4688 = distinct !DILexicalBlock(scope: !4677, file: !4264, line: 78, column: 9)
!4689 = !DILocation(line: 80, column: 32, scope: !4688, inlinedAt: !4654)
!4690 = !DILocation(line: 79, column: 3, scope: !4688, inlinedAt: !4654)
!4691 = !{i32 -2147205022}
!4692 = !DILocation(line: 43, column: 1, scope: !4648)
