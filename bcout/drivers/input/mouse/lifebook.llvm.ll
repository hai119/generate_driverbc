; ModuleID = '../bcout/drivers/input/mouse/lifebook.llvm.bc'
source_filename = "drivers/input/mouse/lifebook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.dmi_system_id = type { {}*, i8*, [4 x %struct.dmi_strmatch], i8* }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.kmem_cache = type opaque
%struct.psmouse = type { i8*, %struct.input_dev*, %struct.ps2dev, %struct.delayed_work, i8*, i8*, %struct.psmouse_protocol*, [8 x i8], i8, i8, i8, i8, i8, i8, i32, i64, i64, i64, i32, [64 x i8], [32 x i8], i32, i32, i32, i32, i8, i32 (%struct.psmouse*)*, void (%struct.psmouse*, i32)*, void (%struct.psmouse*, i32)*, void (%struct.psmouse*, i32)*, i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)*, void (%struct.psmouse*)*, void (%struct.psmouse*)*, i32 (%struct.psmouse*)*, void (%struct.psmouse*)*, void (%struct.psmouse*)* }
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
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
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
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.atomic_t = type { i32 }
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.block_device = type opaque
%struct.backing_dev_info = type opaque
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
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
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
%struct.key = type { %struct.refcount_struct, i32, %union.anon.23, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.24, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.25, %union.anon.29, %struct.key_restriction* }
%union.anon.23 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.24 = type { i64 }
%struct.kgid_t = type { i32 }
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
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
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
%struct.rseq = type { i32, i32, %union.anon.45, i32, [12 x i8] }
%union.anon.45 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.46 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.vm_struct = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.fsnotify_mark_connector = type opaque
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.user_namespace = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%union.anon.62 = type { %struct.list_head }
%union.anon.63 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.54, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.55, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.56, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.59, i32, i32, %struct.fsnotify_mark_connector*, i8* }
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
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.input_dev_poller = type opaque
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.input_mt = type opaque
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.input_handle = type { i8*, i32, i8*, %struct.input_dev*, %struct.input_handler*, %struct.list_head, %struct.list_head }
%struct.input_handler = type { i8*, void (%struct.input_handle*, i32, i32, i32)*, void (%struct.input_handle*, %struct.input_value*, i32)*, i1 (%struct.input_handle*, i32, i32, i32)*, i1 (%struct.input_handler*, %struct.input_dev*)*, i32 (%struct.input_handler*, %struct.input_dev*, %struct.input_device_id*)*, void (%struct.input_handle*)*, void (%struct.input_handle*)*, i8, i32, i8*, %struct.input_device_id*, %struct.list_head, %struct.list_head }
%struct.input_device_id = type { i64, i16, i16, i16, i16, [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
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
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.input_value = type { i16, i16, i32 }
%struct.ps2dev = type { %struct.serio*, %struct.mutex, %struct.wait_queue_head, i64, [8 x i8], i8, i8 }
%struct.serio = type { i8*, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, i32 (%struct.serio*, i8)*, i32 (%struct.serio*)*, void (%struct.serio*)*, i32 (%struct.serio*)*, void (%struct.serio*)*, %struct.serio*, %struct.list_head, %struct.list_head, i32, %struct.serio_driver*, %struct.mutex, %struct.device, %struct.list_head, %struct.mutex* }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.serio_driver = type { i8*, %struct.serio_device_id*, i8, void (%struct.serio*)*, i32 (%struct.serio*, i8, i32)*, i32 (%struct.serio*, %struct.serio_driver*)*, i32 (%struct.serio*)*, i32 (%struct.serio*)*, void (%struct.serio*)*, void (%struct.serio*)*, %struct.device_driver }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.psmouse_protocol = type { i32, i8, i8, i8, i8, i8*, i8*, {}*, i32 (%struct.psmouse*)* }
%struct.lifebook_data = type { %struct.input_dev*, [32 x i8] }

@lifebook_present = internal global i8 0, align 1, !dbg !0
@desired_serio_phys = internal global i8* null, align 8, !dbg !146
@.str = private unnamed_addr constant [8 x i8] c"Fujitsu\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Lifebook TouchScreen\00", align 1
@lifebook_use_6byte_proto = internal global i8 0, align 1, !dbg !151
@lifebook_dmi_table = internal constant [13 x { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* }] [{ i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"FLORA-ie 55mi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"Lifebook B Series\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"LifeBook B Series\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"LIFEBOOK B Series\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 14, [79 x i8] c"ZEPHYR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"LifeBook B2131/B2133/B2150\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"ZEPHYR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @lifebook_limit_serio3, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"CF-18\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @lifebook_set_6byte_proto, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Matsushita\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"CF-28\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @lifebook_set_6byte_proto, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Matsushita\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"CF-29\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @lifebook_set_6byte_proto, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"CF-72\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"LifeBook B142\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } zeroinitializer], section ".init.rodata", align 16, !dbg !155
@.str.3 = private unnamed_addr constant [15 x i8] c"isa0060/serio3\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%s/input1\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"LBPS/2 Fujitsu Lifebook Touchpad\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"lifebook: got relative packet but no relative device set up\0A\00", align 1
@lifebook_set_resolution.params = internal constant [5 x i8] c"\00\01\02\02\03", align 1, !dbg !185

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local void @lifebook_module_init() #0 section ".init.text" !dbg !3977 {
entry:
  %call = call i32 @dmi_check_system(%struct.dmi_system_id* getelementptr inbounds ([13 x %struct.dmi_system_id], [13 x %struct.dmi_system_id]* bitcast ([13 x { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* }]* @lifebook_dmi_table to [13 x %struct.dmi_system_id]*), i64 0, i64 0)) #9, !dbg !3978
  %tobool = icmp ne i32 %call, 0, !dbg !3978
  %frombool = zext i1 %tobool to i8, !dbg !3979
  store i8 %frombool, i8* @lifebook_present, align 1, !dbg !3979
  ret void, !dbg !3980
}

; Function Attrs: noredzone
declare dso_local i32 @dmi_check_system(%struct.dmi_system_id*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @lifebook_detect(%struct.psmouse* %psmouse, i1 zeroext %set_properties) #2 !dbg !3981 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %set_properties.addr = alloca i8, align 1
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !3982, metadata !DIExpression()), !dbg !3983
  %frombool = zext i1 %set_properties to i8
  store i8 %frombool, i8* %set_properties.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %set_properties.addr, metadata !3984, metadata !DIExpression()), !dbg !3985
  %0 = load i8, i8* @lifebook_present, align 1, !dbg !3986
  %tobool = trunc i8 %0 to i1, !dbg !3986
  br i1 %tobool, label %if.end, label %if.then, !dbg !3988

if.then:                                          ; preds = %entry
  store i32 -6, i32* %retval, align 4, !dbg !3989
  br label %return, !dbg !3989

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** @desired_serio_phys, align 8, !dbg !3990
  %tobool1 = icmp ne i8* %1, null, !dbg !3990
  br i1 %tobool1, label %land.lhs.true, label %if.end4, !dbg !3992

land.lhs.true:                                    ; preds = %if.end
  %2 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !3993
  %ps2dev = getelementptr inbounds %struct.psmouse, %struct.psmouse* %2, i32 0, i32 2, !dbg !3994
  %serio = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %ps2dev, i32 0, i32 0, !dbg !3995
  %3 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3995
  %phys = getelementptr inbounds %struct.serio, %struct.serio* %3, i32 0, i32 2, !dbg !3996
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %phys, i64 0, i64 0, !dbg !3993
  %4 = load i8*, i8** @desired_serio_phys, align 8, !dbg !3997
  %call = call i32 @strcmp(i8* %arraydecay, i8* %4) #9, !dbg !3998
  %tobool2 = icmp ne i32 %call, 0, !dbg !3998
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3999

if.then3:                                         ; preds = %land.lhs.true
  store i32 -6, i32* %retval, align 4, !dbg !4000
  br label %return, !dbg !4000

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %5 = load i8, i8* %set_properties.addr, align 1, !dbg !4001
  %tobool5 = trunc i8 %5 to i1, !dbg !4001
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4003

if.then6:                                         ; preds = %if.end4
  %6 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4004
  %vendor = getelementptr inbounds %struct.psmouse, %struct.psmouse* %6, i32 0, i32 4, !dbg !4006
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %vendor, align 8, !dbg !4007
  %7 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4008
  %name = getelementptr inbounds %struct.psmouse, %struct.psmouse* %7, i32 0, i32 5, !dbg !4009
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %name, align 8, !dbg !4010
  br label %if.end7, !dbg !4011

if.end7:                                          ; preds = %if.then6, %if.end4
  store i32 0, i32* %retval, align 4, !dbg !4012
  br label %return, !dbg !4012

return:                                           ; preds = %if.end7, %if.then3, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !4013
  ret i32 %8, !dbg !4013
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @lifebook_init(%struct.psmouse* %psmouse) #2 !dbg !4014 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %dev1 = alloca %struct.input_dev*, align 8
  %max_coord = alloca i32, align 4
  %error = alloca i32, align 4
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4015, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev1, metadata !4017, metadata !DIExpression()), !dbg !4018
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4019
  %dev = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 1, !dbg !4020
  %1 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4020
  store %struct.input_dev* %1, %struct.input_dev** %dev1, align 8, !dbg !4018
  call void @llvm.dbg.declare(metadata i32* %max_coord, metadata !4021, metadata !DIExpression()), !dbg !4022
  %2 = load i8, i8* @lifebook_use_6byte_proto, align 1, !dbg !4023
  %tobool = trunc i8 %2 to i1, !dbg !4023
  %3 = zext i1 %tobool to i64, !dbg !4023
  %cond = select i1 %tobool, i32 4096, i32 1024, !dbg !4023
  store i32 %cond, i32* %max_coord, align 4, !dbg !4022
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4024, metadata !DIExpression()), !dbg !4025
  %4 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4026
  %call = call i32 @lifebook_absolute_mode(%struct.psmouse* %4) #9, !dbg !4027
  store i32 %call, i32* %error, align 4, !dbg !4028
  %5 = load i32, i32* %error, align 4, !dbg !4029
  %tobool1 = icmp ne i32 %5, 0, !dbg !4029
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4031

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %error, align 4, !dbg !4032
  store i32 %6, i32* %retval, align 4, !dbg !4033
  br label %return, !dbg !4033

if.end:                                           ; preds = %entry
  %7 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8, !dbg !4034
  %evbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %7, i32 0, i32 5, !dbg !4035
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %evbit, i64 0, i64 0, !dbg !4034
  call void @bitmap_zero(i64* %arraydecay, i32 32) #9, !dbg !4036
  %8 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8, !dbg !4037
  %relbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %8, i32 0, i32 7, !dbg !4038
  %arraydecay2 = getelementptr inbounds [1 x i64], [1 x i64]* %relbit, i64 0, i64 0, !dbg !4037
  call void @bitmap_zero(i64* %arraydecay2, i32 16) #9, !dbg !4039
  %9 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8, !dbg !4040
  %keybit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %9, i32 0, i32 6, !dbg !4041
  %arraydecay3 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit, i64 0, i64 0, !dbg !4040
  call void @bitmap_zero(i64* %arraydecay3, i32 768) #9, !dbg !4042
  %10 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8, !dbg !4043
  call void @input_set_capability(%struct.input_dev* %10, i32 1, i32 330) #9, !dbg !4044
  %11 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8, !dbg !4045
  %12 = load i32, i32* %max_coord, align 4, !dbg !4046
  call void @input_set_abs_params(%struct.input_dev* %11, i32 0, i32 0, i32 %12, i32 0, i32 0) #9, !dbg !4047
  %13 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8, !dbg !4048
  %14 = load i32, i32* %max_coord, align 4, !dbg !4049
  call void @input_set_abs_params(%struct.input_dev* %13, i32 1, i32 0, i32 %14, i32 0, i32 0) #9, !dbg !4050
  %15 = load i8*, i8** @desired_serio_phys, align 8, !dbg !4051
  %tobool4 = icmp ne i8* %15, null, !dbg !4051
  br i1 %tobool4, label %if.end10, label %if.then5, !dbg !4053

if.then5:                                         ; preds = %if.end
  %16 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4054
  %call6 = call i32 @lifebook_create_relative_device(%struct.psmouse* %16) #9, !dbg !4056
  store i32 %call6, i32* %error, align 4, !dbg !4057
  %17 = load i32, i32* %error, align 4, !dbg !4058
  %tobool7 = icmp ne i32 %17, 0, !dbg !4058
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4060

if.then8:                                         ; preds = %if.then5
  %18 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4061
  call void @lifebook_relative_mode(%struct.psmouse* %18) #9, !dbg !4063
  %19 = load i32, i32* %error, align 4, !dbg !4064
  store i32 %19, i32* %retval, align 4, !dbg !4065
  br label %return, !dbg !4065

if.end9:                                          ; preds = %if.then5
  br label %if.end10, !dbg !4066

if.end10:                                         ; preds = %if.end9, %if.end
  %20 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4067
  %protocol_handler = getelementptr inbounds %struct.psmouse, %struct.psmouse* %20, i32 0, i32 26, !dbg !4068
  store i32 (%struct.psmouse*)* @lifebook_process_byte, i32 (%struct.psmouse*)** %protocol_handler, align 8, !dbg !4069
  %21 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4070
  %set_resolution = getelementptr inbounds %struct.psmouse, %struct.psmouse* %21, i32 0, i32 28, !dbg !4071
  store void (%struct.psmouse*, i32)* @lifebook_set_resolution, void (%struct.psmouse*, i32)** %set_resolution, align 8, !dbg !4072
  %22 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4073
  %disconnect = getelementptr inbounds %struct.psmouse, %struct.psmouse* %22, i32 0, i32 32, !dbg !4074
  store void (%struct.psmouse*)* @lifebook_disconnect, void (%struct.psmouse*)** %disconnect, align 8, !dbg !4075
  %23 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4076
  %reconnect = getelementptr inbounds %struct.psmouse, %struct.psmouse* %23, i32 0, i32 30, !dbg !4077
  store i32 (%struct.psmouse*)* @lifebook_absolute_mode, i32 (%struct.psmouse*)** %reconnect, align 8, !dbg !4078
  %24 = load i8, i8* @lifebook_use_6byte_proto, align 1, !dbg !4079
  %tobool11 = trunc i8 %24 to i1, !dbg !4079
  %25 = zext i1 %tobool11 to i64, !dbg !4079
  %cond12 = select i1 %tobool11, i32 6, i32 3, !dbg !4079
  %26 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4080
  %model = getelementptr inbounds %struct.psmouse, %struct.psmouse* %26, i32 0, i32 14, !dbg !4081
  store i32 %cond12, i32* %model, align 8, !dbg !4082
  %27 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4083
  %pktsize = getelementptr inbounds %struct.psmouse, %struct.psmouse* %27, i32 0, i32 10, !dbg !4084
  store i8 3, i8* %pktsize, align 2, !dbg !4085
  store i32 0, i32* %retval, align 4, !dbg !4086
  br label %return, !dbg !4086

return:                                           ; preds = %if.end10, %if.then8, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !4087
  ret i32 %28, !dbg !4087
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lifebook_absolute_mode(%struct.psmouse* %psmouse) #2 !dbg !4088 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %ps2dev = alloca %struct.ps2dev*, align 8
  %param = alloca i8, align 1
  %error = alloca i32, align 4
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4089, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev, metadata !4091, metadata !DIExpression()), !dbg !4093
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4094
  %ps2dev1 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 2, !dbg !4095
  store %struct.ps2dev* %ps2dev1, %struct.ps2dev** %ps2dev, align 8, !dbg !4093
  call void @llvm.dbg.declare(metadata i8* %param, metadata !4096, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4098, metadata !DIExpression()), !dbg !4099
  %1 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4100
  %call = call i32 @psmouse_reset(%struct.psmouse* %1) #9, !dbg !4101
  store i32 %call, i32* %error, align 4, !dbg !4102
  %2 = load i32, i32* %error, align 4, !dbg !4103
  %tobool = icmp ne i32 %2, 0, !dbg !4103
  br i1 %tobool, label %if.then, label %if.end, !dbg !4105

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %error, align 4, !dbg !4106
  store i32 %3, i32* %retval, align 4, !dbg !4107
  br label %return, !dbg !4107

if.end:                                           ; preds = %entry
  %4 = load i8, i8* @lifebook_use_6byte_proto, align 1, !dbg !4108
  %tobool2 = trunc i8 %4 to i1, !dbg !4108
  %5 = zext i1 %tobool2 to i64, !dbg !4108
  %cond = select i1 %tobool2, i32 8, i32 7, !dbg !4108
  %conv = trunc i32 %cond to i8, !dbg !4108
  store i8 %conv, i8* %param, align 1, !dbg !4109
  %6 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev, align 8, !dbg !4110
  %call3 = call i32 @ps2_command(%struct.ps2dev* %6, i8* %param, i32 4328) #9, !dbg !4111
  store i32 0, i32* %retval, align 4, !dbg !4112
  br label %return, !dbg !4112

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !4113
  ret i32 %7, !dbg !4113
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bitmap_zero(i64* %dst, i32 %nbits) #2 !dbg !4114 {
entry:
  %dst.addr = alloca i64*, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store i64* %dst, i64** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %dst.addr, metadata !4119, metadata !DIExpression()), !dbg !4120
  store i32 %nbits, i32* %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr, metadata !4121, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.declare(metadata i32* %len, metadata !4123, metadata !DIExpression()), !dbg !4124
  %0 = load i32, i32* %nbits.addr, align 4, !dbg !4125
  %conv = zext i32 %0 to i64, !dbg !4125
  %add = add i64 %conv, 64, !dbg !4125
  %sub = sub i64 %add, 1, !dbg !4125
  %div = udiv i64 %sub, 64, !dbg !4125
  %mul = mul i64 %div, 8, !dbg !4126
  %conv1 = trunc i64 %mul to i32, !dbg !4125
  store i32 %conv1, i32* %len, align 4, !dbg !4124
  %1 = load i64*, i64** %dst.addr, align 8, !dbg !4127
  %2 = bitcast i64* %1 to i8*, !dbg !4128
  %3 = load i32, i32* %len, align 4, !dbg !4129
  %conv2 = zext i32 %3 to i64, !dbg !4129
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 %conv2, i1 false), !dbg !4128
  ret void, !dbg !4130
}

; Function Attrs: noredzone
declare dso_local void @input_set_capability(%struct.input_dev*, i32, i32) #1

; Function Attrs: noredzone
declare dso_local void @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lifebook_create_relative_device(%struct.psmouse* %psmouse) #2 !dbg !4131 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %dev2 = alloca %struct.input_dev*, align 8
  %priv = alloca %struct.lifebook_data*, align 8
  %error = alloca i32, align 4
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4132, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev2, metadata !4134, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.declare(metadata %struct.lifebook_data** %priv, metadata !4136, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4143, metadata !DIExpression()), !dbg !4144
  store i32 -12, i32* %error, align 4, !dbg !4144
  %call = call i8* @kzalloc(i64 40, i32 3264) #9, !dbg !4145
  %0 = bitcast i8* %call to %struct.lifebook_data*, !dbg !4145
  store %struct.lifebook_data* %0, %struct.lifebook_data** %priv, align 8, !dbg !4146
  %call1 = call %struct.input_dev* @input_allocate_device() #9, !dbg !4147
  store %struct.input_dev* %call1, %struct.input_dev** %dev2, align 8, !dbg !4148
  %1 = load %struct.lifebook_data*, %struct.lifebook_data** %priv, align 8, !dbg !4149
  %tobool = icmp ne %struct.lifebook_data* %1, null, !dbg !4149
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4151

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.input_dev*, %struct.input_dev** %dev2, align 8, !dbg !4152
  %tobool2 = icmp ne %struct.input_dev* %2, null, !dbg !4152
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4153

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %err_out, !dbg !4154

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.input_dev*, %struct.input_dev** %dev2, align 8, !dbg !4155
  %4 = load %struct.lifebook_data*, %struct.lifebook_data** %priv, align 8, !dbg !4156
  %dev23 = getelementptr inbounds %struct.lifebook_data, %struct.lifebook_data* %4, i32 0, i32 0, !dbg !4157
  store %struct.input_dev* %3, %struct.input_dev** %dev23, align 8, !dbg !4158
  %5 = load %struct.lifebook_data*, %struct.lifebook_data** %priv, align 8, !dbg !4159
  %phys = getelementptr inbounds %struct.lifebook_data, %struct.lifebook_data* %5, i32 0, i32 1, !dbg !4160
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %phys, i64 0, i64 0, !dbg !4159
  %6 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4161
  %ps2dev = getelementptr inbounds %struct.psmouse, %struct.psmouse* %6, i32 0, i32 2, !dbg !4162
  %serio = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %ps2dev, i32 0, i32 0, !dbg !4163
  %7 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4163
  %phys4 = getelementptr inbounds %struct.serio, %struct.serio* %7, i32 0, i32 2, !dbg !4164
  %arraydecay5 = getelementptr inbounds [32 x i8], [32 x i8]* %phys4, i64 0, i64 0, !dbg !4161
  %call6 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %arraydecay5) #9, !dbg !4165
  %8 = load %struct.lifebook_data*, %struct.lifebook_data** %priv, align 8, !dbg !4166
  %phys7 = getelementptr inbounds %struct.lifebook_data, %struct.lifebook_data* %8, i32 0, i32 1, !dbg !4167
  %arraydecay8 = getelementptr inbounds [32 x i8], [32 x i8]* %phys7, i64 0, i64 0, !dbg !4166
  %9 = load %struct.input_dev*, %struct.input_dev** %dev2, align 8, !dbg !4168
  %phys9 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %9, i32 0, i32 1, !dbg !4169
  store i8* %arraydecay8, i8** %phys9, align 8, !dbg !4170
  %10 = load %struct.input_dev*, %struct.input_dev** %dev2, align 8, !dbg !4171
  %name = getelementptr inbounds %struct.input_dev, %struct.input_dev* %10, i32 0, i32 0, !dbg !4172
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8** %name, align 8, !dbg !4173
  %11 = load %struct.input_dev*, %struct.input_dev** %dev2, align 8, !dbg !4174
  %id = getelementptr inbounds %struct.input_dev, %struct.input_dev* %11, i32 0, i32 3, !dbg !4175
  %bustype = getelementptr inbounds %struct.input_id, %struct.input_id* %id, i32 0, i32 0, !dbg !4176
  store i16 17, i16* %bustype, align 8, !dbg !4177
  %12 = load %struct.input_dev*, %struct.input_dev** %dev2, align 8, !dbg !4178
  %id10 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %12, i32 0, i32 3, !dbg !4179
  %vendor = getelementptr inbounds %struct.input_id, %struct.input_id* %id10, i32 0, i32 1, !dbg !4180
  store i16 2, i16* %vendor, align 2, !dbg !4181
  %13 = load %struct.input_dev*, %struct.input_dev** %dev2, align 8, !dbg !4182
  %id11 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %13, i32 0, i32 3, !dbg !4183
  %product = getelementptr inbounds %struct.input_id, %struct.input_id* %id11, i32 0, i32 2, !dbg !4184
  store i16 9, i16* %product, align 4, !dbg !4185
  %14 = load %struct.input_dev*, %struct.input_dev** %dev2, align 8, !dbg !4186
  %id12 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %14, i32 0, i32 3, !dbg !4187
  %version = getelementptr inbounds %struct.input_id, %struct.input_id* %id12, i32 0, i32 3, !dbg !4188
  store i16 0, i16* %version, align 2, !dbg !4189
  %15 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4190
  %ps2dev13 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %15, i32 0, i32 2, !dbg !4191
  %serio14 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %ps2dev13, i32 0, i32 0, !dbg !4192
  %16 = load %struct.serio*, %struct.serio** %serio14, align 8, !dbg !4192
  %dev = getelementptr inbounds %struct.serio, %struct.serio* %16, i32 0, i32 18, !dbg !4193
  %17 = load %struct.input_dev*, %struct.input_dev** %dev2, align 8, !dbg !4194
  %dev15 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %17, i32 0, i32 40, !dbg !4195
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev15, i32 0, i32 1, !dbg !4196
  store %struct.device* %dev, %struct.device** %parent, align 8, !dbg !4197
  %18 = load %struct.input_dev*, %struct.input_dev** %dev2, align 8, !dbg !4198
  call void @input_set_capability(%struct.input_dev* %18, i32 2, i32 0) #9, !dbg !4199
  %19 = load %struct.input_dev*, %struct.input_dev** %dev2, align 8, !dbg !4200
  call void @input_set_capability(%struct.input_dev* %19, i32 2, i32 1) #9, !dbg !4201
  %20 = load %struct.input_dev*, %struct.input_dev** %dev2, align 8, !dbg !4202
  call void @input_set_capability(%struct.input_dev* %20, i32 1, i32 272) #9, !dbg !4203
  %21 = load %struct.input_dev*, %struct.input_dev** %dev2, align 8, !dbg !4204
  call void @input_set_capability(%struct.input_dev* %21, i32 1, i32 273) #9, !dbg !4205
  %22 = load %struct.lifebook_data*, %struct.lifebook_data** %priv, align 8, !dbg !4206
  %dev216 = getelementptr inbounds %struct.lifebook_data, %struct.lifebook_data* %22, i32 0, i32 0, !dbg !4207
  %23 = load %struct.input_dev*, %struct.input_dev** %dev216, align 8, !dbg !4207
  %call17 = call i32 @input_register_device(%struct.input_dev* %23) #9, !dbg !4208
  store i32 %call17, i32* %error, align 4, !dbg !4209
  %24 = load i32, i32* %error, align 4, !dbg !4210
  %tobool18 = icmp ne i32 %24, 0, !dbg !4210
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !4212

if.then19:                                        ; preds = %if.end
  br label %err_out, !dbg !4213

if.end20:                                         ; preds = %if.end
  %25 = load %struct.lifebook_data*, %struct.lifebook_data** %priv, align 8, !dbg !4214
  %26 = bitcast %struct.lifebook_data* %25 to i8*, !dbg !4214
  %27 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4215
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %27, i32 0, i32 0, !dbg !4216
  store i8* %26, i8** %private, align 8, !dbg !4217
  store i32 0, i32* %retval, align 4, !dbg !4218
  br label %return, !dbg !4218

err_out:                                          ; preds = %if.then19, %if.then
  call void @llvm.dbg.label(metadata !4219), !dbg !4220
  %28 = load %struct.input_dev*, %struct.input_dev** %dev2, align 8, !dbg !4221
  call void @input_free_device(%struct.input_dev* %28) #9, !dbg !4222
  %29 = load %struct.lifebook_data*, %struct.lifebook_data** %priv, align 8, !dbg !4223
  %30 = bitcast %struct.lifebook_data* %29 to i8*, !dbg !4223
  call void @kfree(i8* %30) #9, !dbg !4224
  %31 = load i32, i32* %error, align 4, !dbg !4225
  store i32 %31, i32* %retval, align 4, !dbg !4226
  br label %return, !dbg !4226

return:                                           ; preds = %err_out, %if.end20
  %32 = load i32, i32* %retval, align 4, !dbg !4227
  ret i32 %32, !dbg !4227
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @lifebook_relative_mode(%struct.psmouse* %psmouse) #2 !dbg !4228 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %ps2dev = alloca %struct.ps2dev*, align 8
  %param = alloca i8, align 1
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4229, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev, metadata !4231, metadata !DIExpression()), !dbg !4232
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4233
  %ps2dev1 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 2, !dbg !4234
  store %struct.ps2dev* %ps2dev1, %struct.ps2dev** %ps2dev, align 8, !dbg !4232
  call void @llvm.dbg.declare(metadata i8* %param, metadata !4235, metadata !DIExpression()), !dbg !4236
  store i8 6, i8* %param, align 1, !dbg !4236
  %1 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev, align 8, !dbg !4237
  %call = call i32 @ps2_command(%struct.ps2dev* %1, i8* %param, i32 4328) #9, !dbg !4238
  ret void, !dbg !4239
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lifebook_process_byte(%struct.psmouse* %psmouse) #2 !dbg !4240 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %priv = alloca %struct.lifebook_data*, align 8
  %dev1 = alloca %struct.input_dev*, align 8
  %dev2 = alloca %struct.input_dev*, align 8
  %packet = alloca i8*, align 8
  %relative_packet = alloca i8, align 1
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4241, metadata !DIExpression()), !dbg !4242
  call void @llvm.dbg.declare(metadata %struct.lifebook_data** %priv, metadata !4243, metadata !DIExpression()), !dbg !4244
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4245
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 0, !dbg !4246
  %1 = load i8*, i8** %private, align 8, !dbg !4246
  %2 = bitcast i8* %1 to %struct.lifebook_data*, !dbg !4245
  store %struct.lifebook_data* %2, %struct.lifebook_data** %priv, align 8, !dbg !4244
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev1, metadata !4247, metadata !DIExpression()), !dbg !4248
  %3 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4249
  %dev = getelementptr inbounds %struct.psmouse, %struct.psmouse* %3, i32 0, i32 1, !dbg !4250
  %4 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4250
  store %struct.input_dev* %4, %struct.input_dev** %dev1, align 8, !dbg !4248
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev2, metadata !4251, metadata !DIExpression()), !dbg !4252
  %5 = load %struct.lifebook_data*, %struct.lifebook_data** %priv, align 8, !dbg !4253
  %tobool = icmp ne %struct.lifebook_data* %5, null, !dbg !4253
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4253

cond.true:                                        ; preds = %entry
  %6 = load %struct.lifebook_data*, %struct.lifebook_data** %priv, align 8, !dbg !4254
  %dev21 = getelementptr inbounds %struct.lifebook_data, %struct.lifebook_data* %6, i32 0, i32 0, !dbg !4255
  %7 = load %struct.input_dev*, %struct.input_dev** %dev21, align 8, !dbg !4255
  br label %cond.end, !dbg !4253

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4253

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.input_dev* [ %7, %cond.true ], [ null, %cond.false ], !dbg !4253
  store %struct.input_dev* %cond, %struct.input_dev** %dev2, align 8, !dbg !4252
  call void @llvm.dbg.declare(metadata i8** %packet, metadata !4256, metadata !DIExpression()), !dbg !4258
  %8 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4259
  %packet2 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 7, !dbg !4260
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %packet2, i64 0, i64 0, !dbg !4259
  store i8* %arraydecay, i8** %packet, align 8, !dbg !4258
  call void @llvm.dbg.declare(metadata i8* %relative_packet, metadata !4261, metadata !DIExpression()), !dbg !4262
  %9 = load i8*, i8** %packet, align 8, !dbg !4263
  %arrayidx = getelementptr i8, i8* %9, i64 0, !dbg !4263
  %10 = load i8, i8* %arrayidx, align 1, !dbg !4263
  %conv = zext i8 %10 to i32, !dbg !4263
  %and = and i32 %conv, 8, !dbg !4264
  %tobool3 = icmp ne i32 %and, 0, !dbg !4263
  %frombool = zext i1 %tobool3 to i8, !dbg !4262
  store i8 %frombool, i8* %relative_packet, align 1, !dbg !4262
  %11 = load i8, i8* %relative_packet, align 1, !dbg !4265
  %tobool4 = trunc i8 %11 to i1, !dbg !4265
  br i1 %tobool4, label %if.then, label %lor.lhs.false, !dbg !4267

lor.lhs.false:                                    ; preds = %cond.end
  %12 = load i8, i8* @lifebook_use_6byte_proto, align 1, !dbg !4268
  %tobool6 = trunc i8 %12 to i1, !dbg !4268
  br i1 %tobool6, label %if.else, label %if.then, !dbg !4269

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %13 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4270
  %pktcnt = getelementptr inbounds %struct.psmouse, %struct.psmouse* %13, i32 0, i32 9, !dbg !4273
  %14 = load i8, i8* %pktcnt, align 1, !dbg !4273
  %conv7 = zext i8 %14 to i32, !dbg !4270
  %cmp = icmp ne i32 %conv7, 3, !dbg !4274
  br i1 %cmp, label %if.then9, label %if.end, !dbg !4275

if.then9:                                         ; preds = %if.then
  store i32 1, i32* %retval, align 4, !dbg !4276
  br label %return, !dbg !4276

if.end:                                           ; preds = %if.then
  br label %if.end68, !dbg !4277

if.else:                                          ; preds = %lor.lhs.false
  %15 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4278
  %pktcnt10 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %15, i32 0, i32 9, !dbg !4280
  %16 = load i8, i8* %pktcnt10, align 1, !dbg !4280
  %conv11 = zext i8 %16 to i32, !dbg !4278
  switch i32 %conv11, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb18
    i32 3, label %sw.bb19
    i32 4, label %sw.bb29
    i32 5, label %sw.bb36
    i32 6, label %sw.bb46
  ], !dbg !4281

sw.bb:                                            ; preds = %if.else
  %17 = load i8*, i8** %packet, align 8, !dbg !4282
  %arrayidx12 = getelementptr i8, i8* %17, i64 0, !dbg !4282
  %18 = load i8, i8* %arrayidx12, align 1, !dbg !4282
  %conv13 = zext i8 %18 to i32, !dbg !4282
  %and14 = and i32 %conv13, 248, !dbg !4284
  %cmp15 = icmp eq i32 %and14, 0, !dbg !4285
  %19 = zext i1 %cmp15 to i64, !dbg !4286
  %cond17 = select i1 %cmp15, i32 1, i32 0, !dbg !4286
  store i32 %cond17, i32* %retval, align 4, !dbg !4287
  br label %return, !dbg !4287

sw.bb18:                                          ; preds = %if.else
  store i32 1, i32* %retval, align 4, !dbg !4288
  br label %return, !dbg !4288

sw.bb19:                                          ; preds = %if.else
  %20 = load i8*, i8** %packet, align 8, !dbg !4289
  %arrayidx20 = getelementptr i8, i8* %20, i64 2, !dbg !4289
  %21 = load i8, i8* %arrayidx20, align 1, !dbg !4289
  %conv21 = zext i8 %21 to i32, !dbg !4289
  %and22 = and i32 %conv21, 48, !dbg !4290
  %shl = shl i32 %and22, 2, !dbg !4291
  %22 = load i8*, i8** %packet, align 8, !dbg !4292
  %arrayidx23 = getelementptr i8, i8* %22, i64 2, !dbg !4292
  %23 = load i8, i8* %arrayidx23, align 1, !dbg !4292
  %conv24 = zext i8 %23 to i32, !dbg !4292
  %and25 = and i32 %conv24, 192, !dbg !4293
  %cmp26 = icmp eq i32 %shl, %and25, !dbg !4294
  %24 = zext i1 %cmp26 to i64, !dbg !4295
  %cond28 = select i1 %cmp26, i32 1, i32 0, !dbg !4295
  store i32 %cond28, i32* %retval, align 4, !dbg !4296
  br label %return, !dbg !4296

sw.bb29:                                          ; preds = %if.else
  %25 = load i8*, i8** %packet, align 8, !dbg !4297
  %arrayidx30 = getelementptr i8, i8* %25, i64 3, !dbg !4297
  %26 = load i8, i8* %arrayidx30, align 1, !dbg !4297
  %conv31 = zext i8 %26 to i32, !dbg !4297
  %and32 = and i32 %conv31, 248, !dbg !4298
  %cmp33 = icmp eq i32 %and32, 192, !dbg !4299
  %27 = zext i1 %cmp33 to i64, !dbg !4300
  %cond35 = select i1 %cmp33, i32 1, i32 0, !dbg !4300
  store i32 %cond35, i32* %retval, align 4, !dbg !4301
  br label %return, !dbg !4301

sw.bb36:                                          ; preds = %if.else
  %28 = load i8*, i8** %packet, align 8, !dbg !4302
  %arrayidx37 = getelementptr i8, i8* %28, i64 4, !dbg !4302
  %29 = load i8, i8* %arrayidx37, align 1, !dbg !4302
  %conv38 = zext i8 %29 to i32, !dbg !4302
  %and39 = and i32 %conv38, 192, !dbg !4303
  %30 = load i8*, i8** %packet, align 8, !dbg !4304
  %arrayidx40 = getelementptr i8, i8* %30, i64 2, !dbg !4304
  %31 = load i8, i8* %arrayidx40, align 1, !dbg !4304
  %conv41 = zext i8 %31 to i32, !dbg !4304
  %and42 = and i32 %conv41, 192, !dbg !4305
  %cmp43 = icmp eq i32 %and39, %and42, !dbg !4306
  %32 = zext i1 %cmp43 to i64, !dbg !4307
  %cond45 = select i1 %cmp43, i32 1, i32 0, !dbg !4307
  store i32 %cond45, i32* %retval, align 4, !dbg !4308
  br label %return, !dbg !4308

sw.bb46:                                          ; preds = %if.else
  %33 = load i8*, i8** %packet, align 8, !dbg !4309
  %arrayidx47 = getelementptr i8, i8* %33, i64 5, !dbg !4309
  %34 = load i8, i8* %arrayidx47, align 1, !dbg !4309
  %conv48 = zext i8 %34 to i32, !dbg !4309
  %and49 = and i32 %conv48, 48, !dbg !4311
  %shl50 = shl i32 %and49, 2, !dbg !4312
  %35 = load i8*, i8** %packet, align 8, !dbg !4313
  %arrayidx51 = getelementptr i8, i8* %35, i64 5, !dbg !4313
  %36 = load i8, i8* %arrayidx51, align 1, !dbg !4313
  %conv52 = zext i8 %36 to i32, !dbg !4313
  %and53 = and i32 %conv52, 192, !dbg !4314
  %cmp54 = icmp ne i32 %shl50, %and53, !dbg !4315
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !4316

if.then56:                                        ; preds = %sw.bb46
  store i32 0, i32* %retval, align 4, !dbg !4317
  br label %return, !dbg !4317

if.end57:                                         ; preds = %sw.bb46
  %37 = load i8*, i8** %packet, align 8, !dbg !4318
  %arrayidx58 = getelementptr i8, i8* %37, i64 5, !dbg !4318
  %38 = load i8, i8* %arrayidx58, align 1, !dbg !4318
  %conv59 = zext i8 %38 to i32, !dbg !4318
  %and60 = and i32 %conv59, 192, !dbg !4320
  %39 = load i8*, i8** %packet, align 8, !dbg !4321
  %arrayidx61 = getelementptr i8, i8* %39, i64 1, !dbg !4321
  %40 = load i8, i8* %arrayidx61, align 1, !dbg !4321
  %conv62 = zext i8 %40 to i32, !dbg !4321
  %and63 = and i32 %conv62, 192, !dbg !4322
  %cmp64 = icmp ne i32 %and60, %and63, !dbg !4323
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !4324

if.then66:                                        ; preds = %if.end57
  store i32 0, i32* %retval, align 4, !dbg !4325
  br label %return, !dbg !4325

if.end67:                                         ; preds = %if.end57
  br label %sw.epilog, !dbg !4326

sw.epilog:                                        ; preds = %if.else, %if.end67
  br label %if.end68

if.end68:                                         ; preds = %sw.epilog, %if.end
  %41 = load i8, i8* %relative_packet, align 1, !dbg !4327
  %tobool69 = trunc i8 %41 to i1, !dbg !4327
  br i1 %tobool69, label %if.then70, label %if.else75, !dbg !4329

if.then70:                                        ; preds = %if.end68
  %42 = load %struct.input_dev*, %struct.input_dev** %dev2, align 8, !dbg !4330
  %tobool71 = icmp ne %struct.input_dev* %42, null, !dbg !4330
  br i1 %tobool71, label %if.end74, label %if.then72, !dbg !4333

if.then72:                                        ; preds = %if.then70
  %43 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4334
  %ps2dev = getelementptr inbounds %struct.psmouse, %struct.psmouse* %43, i32 0, i32 2, !dbg !4334
  %serio = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %ps2dev, i32 0, i32 0, !dbg !4334
  %44 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4334
  %dev73 = getelementptr inbounds %struct.serio, %struct.serio* %44, i32 0, i32 18, !dbg !4334
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev73, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !4334
  br label %if.end74, !dbg !4334

if.end74:                                         ; preds = %if.then72, %if.then70
  br label %if.end113, !dbg !4335

if.else75:                                        ; preds = %if.end68
  %45 = load i8, i8* @lifebook_use_6byte_proto, align 1, !dbg !4336
  %tobool76 = trunc i8 %45 to i1, !dbg !4336
  br i1 %tobool76, label %if.then77, label %if.else93, !dbg !4339

if.then77:                                        ; preds = %if.else75
  %46 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8, !dbg !4340
  %47 = load i8*, i8** %packet, align 8, !dbg !4342
  %arrayidx78 = getelementptr i8, i8* %47, i64 1, !dbg !4342
  %48 = load i8, i8* %arrayidx78, align 1, !dbg !4342
  %conv79 = zext i8 %48 to i32, !dbg !4342
  %and80 = and i32 %conv79, 63, !dbg !4343
  %shl81 = shl i32 %and80, 6, !dbg !4344
  %49 = load i8*, i8** %packet, align 8, !dbg !4345
  %arrayidx82 = getelementptr i8, i8* %49, i64 2, !dbg !4345
  %50 = load i8, i8* %arrayidx82, align 1, !dbg !4345
  %conv83 = zext i8 %50 to i32, !dbg !4345
  %and84 = and i32 %conv83, 63, !dbg !4346
  %or = or i32 %shl81, %and84, !dbg !4347
  call void @input_report_abs(%struct.input_dev* %46, i32 0, i32 %or) #9, !dbg !4348
  %51 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8, !dbg !4349
  %52 = load i8*, i8** %packet, align 8, !dbg !4350
  %arrayidx85 = getelementptr i8, i8* %52, i64 4, !dbg !4350
  %53 = load i8, i8* %arrayidx85, align 1, !dbg !4350
  %conv86 = zext i8 %53 to i32, !dbg !4350
  %and87 = and i32 %conv86, 63, !dbg !4351
  %shl88 = shl i32 %and87, 6, !dbg !4352
  %54 = load i8*, i8** %packet, align 8, !dbg !4353
  %arrayidx89 = getelementptr i8, i8* %54, i64 5, !dbg !4353
  %55 = load i8, i8* %arrayidx89, align 1, !dbg !4353
  %conv90 = zext i8 %55 to i32, !dbg !4353
  %and91 = and i32 %conv90, 63, !dbg !4354
  %or92 = or i32 %shl88, %and91, !dbg !4355
  %sub = sub i32 4096, %or92, !dbg !4356
  call void @input_report_abs(%struct.input_dev* %51, i32 1, i32 %sub) #9, !dbg !4357
  br label %if.end109, !dbg !4358

if.else93:                                        ; preds = %if.else75
  %56 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8, !dbg !4359
  %57 = load i8*, i8** %packet, align 8, !dbg !4361
  %arrayidx94 = getelementptr i8, i8* %57, i64 1, !dbg !4361
  %58 = load i8, i8* %arrayidx94, align 1, !dbg !4361
  %conv95 = zext i8 %58 to i32, !dbg !4361
  %59 = load i8*, i8** %packet, align 8, !dbg !4362
  %arrayidx96 = getelementptr i8, i8* %59, i64 0, !dbg !4362
  %60 = load i8, i8* %arrayidx96, align 1, !dbg !4362
  %conv97 = zext i8 %60 to i32, !dbg !4362
  %and98 = and i32 %conv97, 48, !dbg !4363
  %shl99 = shl i32 %and98, 4, !dbg !4364
  %or100 = or i32 %conv95, %shl99, !dbg !4365
  call void @input_report_abs(%struct.input_dev* %56, i32 0, i32 %or100) #9, !dbg !4366
  %61 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8, !dbg !4367
  %62 = load i8*, i8** %packet, align 8, !dbg !4368
  %arrayidx101 = getelementptr i8, i8* %62, i64 2, !dbg !4368
  %63 = load i8, i8* %arrayidx101, align 1, !dbg !4368
  %conv102 = zext i8 %63 to i32, !dbg !4368
  %64 = load i8*, i8** %packet, align 8, !dbg !4369
  %arrayidx103 = getelementptr i8, i8* %64, i64 0, !dbg !4369
  %65 = load i8, i8* %arrayidx103, align 1, !dbg !4369
  %conv104 = zext i8 %65 to i32, !dbg !4369
  %and105 = and i32 %conv104, 192, !dbg !4370
  %shl106 = shl i32 %and105, 2, !dbg !4371
  %or107 = or i32 %conv102, %shl106, !dbg !4372
  %sub108 = sub i32 1024, %or107, !dbg !4373
  call void @input_report_abs(%struct.input_dev* %61, i32 1, i32 %sub108) #9, !dbg !4374
  br label %if.end109

if.end109:                                        ; preds = %if.else93, %if.then77
  %66 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8, !dbg !4375
  %67 = load i8*, i8** %packet, align 8, !dbg !4376
  %arrayidx110 = getelementptr i8, i8* %67, i64 0, !dbg !4376
  %68 = load i8, i8* %arrayidx110, align 1, !dbg !4376
  %conv111 = zext i8 %68 to i32, !dbg !4376
  %and112 = and i32 %conv111, 4, !dbg !4377
  call void @input_report_key(%struct.input_dev* %66, i32 330, i32 %and112) #9, !dbg !4378
  %69 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8, !dbg !4379
  call void @input_sync(%struct.input_dev* %69) #9, !dbg !4380
  br label %if.end113

if.end113:                                        ; preds = %if.end109, %if.end74
  %70 = load %struct.input_dev*, %struct.input_dev** %dev2, align 8, !dbg !4381
  %tobool114 = icmp ne %struct.input_dev* %70, null, !dbg !4381
  br i1 %tobool114, label %if.then115, label %if.end120, !dbg !4383

if.then115:                                       ; preds = %if.end113
  %71 = load i8, i8* %relative_packet, align 1, !dbg !4384
  %tobool116 = trunc i8 %71 to i1, !dbg !4384
  br i1 %tobool116, label %if.then117, label %if.end118, !dbg !4387

if.then117:                                       ; preds = %if.then115
  %72 = load %struct.input_dev*, %struct.input_dev** %dev2, align 8, !dbg !4388
  %73 = load i8*, i8** %packet, align 8, !dbg !4389
  call void @psmouse_report_standard_motion(%struct.input_dev* %72, i8* %73) #9, !dbg !4390
  br label %if.end118, !dbg !4390

if.end118:                                        ; preds = %if.then117, %if.then115
  %74 = load %struct.input_dev*, %struct.input_dev** %dev2, align 8, !dbg !4391
  %75 = load i8*, i8** %packet, align 8, !dbg !4392
  %arrayidx119 = getelementptr i8, i8* %75, i64 0, !dbg !4392
  %76 = load i8, i8* %arrayidx119, align 1, !dbg !4392
  call void @psmouse_report_standard_buttons(%struct.input_dev* %74, i8 zeroext %76) #9, !dbg !4393
  %77 = load %struct.input_dev*, %struct.input_dev** %dev2, align 8, !dbg !4394
  call void @input_sync(%struct.input_dev* %77) #9, !dbg !4395
  br label %if.end120, !dbg !4396

if.end120:                                        ; preds = %if.end118, %if.end113
  store i32 2, i32* %retval, align 4, !dbg !4397
  br label %return, !dbg !4397

return:                                           ; preds = %if.end120, %if.then66, %if.then56, %sw.bb36, %sw.bb29, %sw.bb19, %sw.bb18, %sw.bb, %if.then9
  %78 = load i32, i32* %retval, align 4, !dbg !4398
  ret i32 %78, !dbg !4398
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @lifebook_set_resolution(%struct.psmouse* %psmouse, i32 %resolution) #2 !dbg !187 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %resolution.addr = alloca i32, align 4
  %p = alloca i8, align 1
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4399, metadata !DIExpression()), !dbg !4400
  store i32 %resolution, i32* %resolution.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %resolution.addr, metadata !4401, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.declare(metadata i8* %p, metadata !4403, metadata !DIExpression()), !dbg !4404
  %0 = load i32, i32* %resolution.addr, align 4, !dbg !4405
  %cmp = icmp eq i32 %0, 0, !dbg !4407
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4408

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %resolution.addr, align 4, !dbg !4409
  %cmp1 = icmp ugt i32 %1, 400, !dbg !4410
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4411

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 400, i32* %resolution.addr, align 4, !dbg !4412
  br label %if.end, !dbg !4413

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %2 = load i32, i32* %resolution.addr, align 4, !dbg !4414
  %div = udiv i32 %2, 100, !dbg !4415
  %idxprom = zext i32 %div to i64, !dbg !4416
  %arrayidx = getelementptr [5 x i8], [5 x i8]* @lifebook_set_resolution.params, i64 0, i64 %idxprom, !dbg !4416
  %3 = load i8, i8* %arrayidx, align 1, !dbg !4416
  store i8 %3, i8* %p, align 1, !dbg !4417
  %4 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4418
  %ps2dev = getelementptr inbounds %struct.psmouse, %struct.psmouse* %4, i32 0, i32 2, !dbg !4419
  %call = call i32 @ps2_command(%struct.ps2dev* %ps2dev, i8* %p, i32 4328) #9, !dbg !4420
  %5 = load i8, i8* %p, align 1, !dbg !4421
  %conv = zext i8 %5 to i32, !dbg !4421
  %shl = shl i32 50, %conv, !dbg !4422
  %6 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4423
  %resolution2 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %6, i32 0, i32 22, !dbg !4424
  store i32 %shl, i32* %resolution2, align 8, !dbg !4425
  ret void, !dbg !4426
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @lifebook_disconnect(%struct.psmouse* %psmouse) #2 !dbg !4427 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %priv = alloca %struct.lifebook_data*, align 8
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4428, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.declare(metadata %struct.lifebook_data** %priv, metadata !4430, metadata !DIExpression()), !dbg !4431
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4432
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 0, !dbg !4433
  %1 = load i8*, i8** %private, align 8, !dbg !4433
  %2 = bitcast i8* %1 to %struct.lifebook_data*, !dbg !4432
  store %struct.lifebook_data* %2, %struct.lifebook_data** %priv, align 8, !dbg !4431
  %3 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4434
  %call = call i32 @psmouse_reset(%struct.psmouse* %3) #9, !dbg !4435
  %4 = load %struct.lifebook_data*, %struct.lifebook_data** %priv, align 8, !dbg !4436
  %tobool = icmp ne %struct.lifebook_data* %4, null, !dbg !4436
  br i1 %tobool, label %if.then, label %if.end, !dbg !4438

if.then:                                          ; preds = %entry
  %5 = load %struct.lifebook_data*, %struct.lifebook_data** %priv, align 8, !dbg !4439
  %dev2 = getelementptr inbounds %struct.lifebook_data, %struct.lifebook_data* %5, i32 0, i32 0, !dbg !4441
  %6 = load %struct.input_dev*, %struct.input_dev** %dev2, align 8, !dbg !4441
  call void @input_unregister_device(%struct.input_dev* %6) #9, !dbg !4442
  %7 = load %struct.lifebook_data*, %struct.lifebook_data** %priv, align 8, !dbg !4443
  %8 = bitcast %struct.lifebook_data* %7 to i8*, !dbg !4443
  call void @kfree(i8* %8) #9, !dbg !4444
  br label %if.end, !dbg !4445

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4446
  %private1 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 0, !dbg !4447
  store i8* null, i8** %private1, align 8, !dbg !4448
  ret void, !dbg !4449
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lifebook_limit_serio3(%struct.dmi_system_id* %d) #2 !dbg !4450 {
entry:
  %d.addr = alloca %struct.dmi_system_id*, align 8
  store %struct.dmi_system_id* %d, %struct.dmi_system_id** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_system_id** %d.addr, metadata !4451, metadata !DIExpression()), !dbg !4452
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** @desired_serio_phys, align 8, !dbg !4453
  ret i32 1, !dbg !4454
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lifebook_set_6byte_proto(%struct.dmi_system_id* %d) #2 !dbg !4455 {
entry:
  %d.addr = alloca %struct.dmi_system_id*, align 8
  store %struct.dmi_system_id* %d, %struct.dmi_system_id** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_system_id** %d.addr, metadata !4456, metadata !DIExpression()), !dbg !4457
  store i8 1, i8* @lifebook_use_6byte_proto, align 1, !dbg !4458
  ret i32 1, !dbg !4459
}

; Function Attrs: noredzone
declare dso_local i32 @psmouse_reset(%struct.psmouse*) #1

; Function Attrs: noredzone
declare dso_local i32 @ps2_command(%struct.ps2dev*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !4460 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4463, metadata !DIExpression()), !dbg !4467
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4473, metadata !DIExpression()), !dbg !4474
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4475, metadata !DIExpression()), !dbg !4476
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4477, metadata !DIExpression()), !dbg !4478
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4479, metadata !DIExpression()), !dbg !4483
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4485, metadata !DIExpression()), !dbg !4489
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4491, metadata !DIExpression()), !dbg !4495
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4500, metadata !DIExpression()), !dbg !4501
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4502, metadata !DIExpression()), !dbg !4503
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4504, metadata !DIExpression()), !dbg !4505
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4506, metadata !DIExpression()), !dbg !4507
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4508, metadata !DIExpression()), !dbg !4509
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4510, metadata !DIExpression()), !dbg !4511
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4512, metadata !DIExpression()), !dbg !4513
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4514, metadata !DIExpression()), !dbg !4515
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4516, metadata !DIExpression()), !dbg !4517
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4518, metadata !DIExpression()), !dbg !4519
  %0 = load i64, i64* %size.addr, align 8, !dbg !4520
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4521
  %or = or i32 %1, 256, !dbg !4522
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4523
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !4524
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4525

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4526
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4527
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4528

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4529
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4530
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4531
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !4532
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4509
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4533
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4534
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4535
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4536
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4537
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4538
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !4539
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4539
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4539
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4539
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !4539
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4540
  br label %kmalloc.exit, !dbg !4540

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4541
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4542
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4542
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4544

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4545
  br label %kmalloc_index.exit.i, !dbg !4545

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4546
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4548
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4549

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4550
  br label %kmalloc_index.exit.i, !dbg !4550

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4551
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4553
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4554

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4555
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4556
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4557

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4558
  br label %kmalloc_index.exit.i, !dbg !4558

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4559
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4561
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4562

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4563
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4564
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4565

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4566
  br label %kmalloc_index.exit.i, !dbg !4566

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4567
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4569
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4570

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4571
  br label %kmalloc_index.exit.i, !dbg !4571

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4572
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4574
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4575

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4576
  br label %kmalloc_index.exit.i, !dbg !4576

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4577
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4579
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4580

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4581
  br label %kmalloc_index.exit.i, !dbg !4581

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4582
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4584
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4585

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4586
  br label %kmalloc_index.exit.i, !dbg !4586

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4587
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4589
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4590

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4591
  br label %kmalloc_index.exit.i, !dbg !4591

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4592
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4594
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4595

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4596
  br label %kmalloc_index.exit.i, !dbg !4596

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4597
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4599
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4600

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4601
  br label %kmalloc_index.exit.i, !dbg !4601

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4602
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4604
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4605

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4606
  br label %kmalloc_index.exit.i, !dbg !4606

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4607
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4609
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4610

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4611
  br label %kmalloc_index.exit.i, !dbg !4611

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4612
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4614
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4615

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4616
  br label %kmalloc_index.exit.i, !dbg !4616

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4617
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4619
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4620

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4621
  br label %kmalloc_index.exit.i, !dbg !4621

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4622
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4624
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4625

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4626
  br label %kmalloc_index.exit.i, !dbg !4626

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4627
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4629
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4630

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4631
  br label %kmalloc_index.exit.i, !dbg !4631

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4632
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4634
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4635

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4636
  br label %kmalloc_index.exit.i, !dbg !4636

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4637
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4639
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4640

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4641
  br label %kmalloc_index.exit.i, !dbg !4641

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4642
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4644
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4645

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4646
  br label %kmalloc_index.exit.i, !dbg !4646

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4647
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4649
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4650

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4651
  br label %kmalloc_index.exit.i, !dbg !4651

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4652
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4654
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4655

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4656
  br label %kmalloc_index.exit.i, !dbg !4656

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4657
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4659
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4660

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4661
  br label %kmalloc_index.exit.i, !dbg !4661

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4662
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4664
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4665

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4666
  br label %kmalloc_index.exit.i, !dbg !4666

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4667
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4669
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4670

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4671
  br label %kmalloc_index.exit.i, !dbg !4671

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4672
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4674
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4675

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4676
  br label %kmalloc_index.exit.i, !dbg !4676

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4677
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4679
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4680

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4681
  br label %kmalloc_index.exit.i, !dbg !4681

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4682
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4684
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4685

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4686
  br label %kmalloc_index.exit.i, !dbg !4686

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !4687, !srcloc !4690
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 199) #11, !dbg !4691, !srcloc !4694
  unreachable, !dbg !4695

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4696
  store i32 %45, i32* %index.i, align 4, !dbg !4697
  %46 = load i32, i32* %index.i, align 4, !dbg !4698
  %tobool.i = icmp ne i32 %46, 0, !dbg !4698
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4700

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4701
  br label %kmalloc.exit, !dbg !4701

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4702
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4703
  %and.i.i = and i32 %48, 17, !dbg !4703
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4703
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4703
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4703
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4703
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4705

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4706
  br label %kmalloc_type.exit.i, !dbg !4706

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4707
  %and2.i.i = and i32 %49, 1, !dbg !4708
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4707
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4707
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4707
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4709
  br label %kmalloc_type.exit.i, !dbg !4709

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4710
  %idxprom.i = zext i32 %51 to i64, !dbg !4711
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4711
  %52 = load i32, i32* %index.i, align 4, !dbg !4712
  %idxprom6.i = zext i32 %52 to i64, !dbg !4711
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4711
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4711
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4713
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4714
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4715
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4716
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !4717
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4717
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4717
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4717
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !4717
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4478
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4718
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4719
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4720
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4721
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !4722
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4723
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4724
  store i8* %62, i8** %retval.i, align 8, !dbg !4725
  br label %kmalloc.exit, !dbg !4725

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4726
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4727
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !4728
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4728
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4728
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4728
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !4728
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4729
  br label %kmalloc.exit, !dbg !4729

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4730
  ret i8* %65, !dbg !4731
}

; Function Attrs: noredzone
declare dso_local %struct.input_dev* @input_allocate_device() #1

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: noredzone
declare dso_local i32 @input_register_device(%struct.input_dev*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @input_free_device(%struct.input_dev*) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !4732 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4736, metadata !DIExpression()), !dbg !4741
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4743, metadata !DIExpression()), !dbg !4744
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4745, metadata !DIExpression()), !dbg !4746
  %0 = load i64, i64* %size.addr, align 8, !dbg !4747
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4749
  br i1 %1, label %if.then, label %if.end447, !dbg !4750

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4751
  %tobool = icmp ne i64 %2, 0, !dbg !4751
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4754

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4755
  br label %return, !dbg !4755

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4756
  %cmp = icmp ult i64 %3, 4096, !dbg !4758
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4759

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4760
  br label %return, !dbg !4760

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub = sub i64 %4, 1, !dbg !4761
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4761
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4761

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub4 = sub i64 %6, 1, !dbg !4761
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4761
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4761

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub6 = sub i64 %8, 1, !dbg !4761
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4761
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4761

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4761

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub9 = sub i64 %9, 1, !dbg !4761
  %and = and i64 %sub9, -9223372036854775808, !dbg !4761
  %tobool10 = icmp ne i64 %and, 0, !dbg !4761
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4761

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4761

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub13 = sub i64 %10, 1, !dbg !4761
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4761
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4761
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4761

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4761

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub18 = sub i64 %11, 1, !dbg !4761
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4761
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4761
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4761

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4761

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub23 = sub i64 %12, 1, !dbg !4761
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4761
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4761
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4761

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4761

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub28 = sub i64 %13, 1, !dbg !4761
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4761
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4761
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4761

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4761

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub33 = sub i64 %14, 1, !dbg !4761
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4761
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4761
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4761

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4761

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub38 = sub i64 %15, 1, !dbg !4761
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4761
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4761
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4761

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4761

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub43 = sub i64 %16, 1, !dbg !4761
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4761
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4761
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4761

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4761

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub48 = sub i64 %17, 1, !dbg !4761
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4761
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4761
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4761

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4761

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub53 = sub i64 %18, 1, !dbg !4761
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4761
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4761
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4761

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4761

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub58 = sub i64 %19, 1, !dbg !4761
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4761
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4761
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4761

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4761

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub63 = sub i64 %20, 1, !dbg !4761
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4761
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4761
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4761

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4761

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub68 = sub i64 %21, 1, !dbg !4761
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4761
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4761
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4761

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4761

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub73 = sub i64 %22, 1, !dbg !4761
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4761
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4761
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4761

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4761

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub78 = sub i64 %23, 1, !dbg !4761
  %and79 = and i64 %sub78, 562949953421312, !dbg !4761
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4761
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4761

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4761

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub83 = sub i64 %24, 1, !dbg !4761
  %and84 = and i64 %sub83, 281474976710656, !dbg !4761
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4761
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4761

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4761

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub88 = sub i64 %25, 1, !dbg !4761
  %and89 = and i64 %sub88, 140737488355328, !dbg !4761
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4761
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4761

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4761

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub93 = sub i64 %26, 1, !dbg !4761
  %and94 = and i64 %sub93, 70368744177664, !dbg !4761
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4761
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4761

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4761

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub98 = sub i64 %27, 1, !dbg !4761
  %and99 = and i64 %sub98, 35184372088832, !dbg !4761
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4761
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4761

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4761

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub103 = sub i64 %28, 1, !dbg !4761
  %and104 = and i64 %sub103, 17592186044416, !dbg !4761
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4761
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4761

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4761

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub108 = sub i64 %29, 1, !dbg !4761
  %and109 = and i64 %sub108, 8796093022208, !dbg !4761
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4761
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4761

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4761

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub113 = sub i64 %30, 1, !dbg !4761
  %and114 = and i64 %sub113, 4398046511104, !dbg !4761
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4761
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4761

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4761

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub118 = sub i64 %31, 1, !dbg !4761
  %and119 = and i64 %sub118, 2199023255552, !dbg !4761
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4761
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4761

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4761

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub123 = sub i64 %32, 1, !dbg !4761
  %and124 = and i64 %sub123, 1099511627776, !dbg !4761
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4761
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4761

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4761

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub128 = sub i64 %33, 1, !dbg !4761
  %and129 = and i64 %sub128, 549755813888, !dbg !4761
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4761
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4761

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4761

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub133 = sub i64 %34, 1, !dbg !4761
  %and134 = and i64 %sub133, 274877906944, !dbg !4761
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4761
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4761

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4761

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub138 = sub i64 %35, 1, !dbg !4761
  %and139 = and i64 %sub138, 137438953472, !dbg !4761
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4761
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4761

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4761

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub143 = sub i64 %36, 1, !dbg !4761
  %and144 = and i64 %sub143, 68719476736, !dbg !4761
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4761
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4761

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4761

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub148 = sub i64 %37, 1, !dbg !4761
  %and149 = and i64 %sub148, 34359738368, !dbg !4761
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4761
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4761

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4761

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub153 = sub i64 %38, 1, !dbg !4761
  %and154 = and i64 %sub153, 17179869184, !dbg !4761
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4761
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4761

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4761

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub158 = sub i64 %39, 1, !dbg !4761
  %and159 = and i64 %sub158, 8589934592, !dbg !4761
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4761
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4761

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4761

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub163 = sub i64 %40, 1, !dbg !4761
  %and164 = and i64 %sub163, 4294967296, !dbg !4761
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4761
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4761

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4761

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub168 = sub i64 %41, 1, !dbg !4761
  %and169 = and i64 %sub168, 2147483648, !dbg !4761
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4761
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4761

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4761

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub173 = sub i64 %42, 1, !dbg !4761
  %and174 = and i64 %sub173, 1073741824, !dbg !4761
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4761
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4761

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4761

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub178 = sub i64 %43, 1, !dbg !4761
  %and179 = and i64 %sub178, 536870912, !dbg !4761
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4761
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4761

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4761

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub183 = sub i64 %44, 1, !dbg !4761
  %and184 = and i64 %sub183, 268435456, !dbg !4761
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4761
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4761

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4761

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub188 = sub i64 %45, 1, !dbg !4761
  %and189 = and i64 %sub188, 134217728, !dbg !4761
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4761
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4761

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4761

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub193 = sub i64 %46, 1, !dbg !4761
  %and194 = and i64 %sub193, 67108864, !dbg !4761
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4761
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4761

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4761

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub198 = sub i64 %47, 1, !dbg !4761
  %and199 = and i64 %sub198, 33554432, !dbg !4761
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4761
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4761

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4761

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub203 = sub i64 %48, 1, !dbg !4761
  %and204 = and i64 %sub203, 16777216, !dbg !4761
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4761
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4761

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4761

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub208 = sub i64 %49, 1, !dbg !4761
  %and209 = and i64 %sub208, 8388608, !dbg !4761
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4761
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4761

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4761

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub213 = sub i64 %50, 1, !dbg !4761
  %and214 = and i64 %sub213, 4194304, !dbg !4761
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4761
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4761

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4761

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub218 = sub i64 %51, 1, !dbg !4761
  %and219 = and i64 %sub218, 2097152, !dbg !4761
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4761
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4761

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4761

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub223 = sub i64 %52, 1, !dbg !4761
  %and224 = and i64 %sub223, 1048576, !dbg !4761
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4761
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4761

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4761

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub228 = sub i64 %53, 1, !dbg !4761
  %and229 = and i64 %sub228, 524288, !dbg !4761
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4761
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4761

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4761

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub233 = sub i64 %54, 1, !dbg !4761
  %and234 = and i64 %sub233, 262144, !dbg !4761
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4761
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4761

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4761

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub238 = sub i64 %55, 1, !dbg !4761
  %and239 = and i64 %sub238, 131072, !dbg !4761
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4761
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4761

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4761

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub243 = sub i64 %56, 1, !dbg !4761
  %and244 = and i64 %sub243, 65536, !dbg !4761
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4761
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4761

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4761

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub248 = sub i64 %57, 1, !dbg !4761
  %and249 = and i64 %sub248, 32768, !dbg !4761
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4761
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4761

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4761

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub253 = sub i64 %58, 1, !dbg !4761
  %and254 = and i64 %sub253, 16384, !dbg !4761
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4761
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4761

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4761

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub258 = sub i64 %59, 1, !dbg !4761
  %and259 = and i64 %sub258, 8192, !dbg !4761
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4761
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4761

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4761

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub263 = sub i64 %60, 1, !dbg !4761
  %and264 = and i64 %sub263, 4096, !dbg !4761
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4761
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4761

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4761

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub268 = sub i64 %61, 1, !dbg !4761
  %and269 = and i64 %sub268, 2048, !dbg !4761
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4761
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4761

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4761

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub273 = sub i64 %62, 1, !dbg !4761
  %and274 = and i64 %sub273, 1024, !dbg !4761
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4761
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4761

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4761

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub278 = sub i64 %63, 1, !dbg !4761
  %and279 = and i64 %sub278, 512, !dbg !4761
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4761
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4761

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4761

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub283 = sub i64 %64, 1, !dbg !4761
  %and284 = and i64 %sub283, 256, !dbg !4761
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4761
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4761

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4761

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub288 = sub i64 %65, 1, !dbg !4761
  %and289 = and i64 %sub288, 128, !dbg !4761
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4761
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4761

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4761

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub293 = sub i64 %66, 1, !dbg !4761
  %and294 = and i64 %sub293, 64, !dbg !4761
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4761
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4761

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4761

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub298 = sub i64 %67, 1, !dbg !4761
  %and299 = and i64 %sub298, 32, !dbg !4761
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4761
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4761

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4761

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub303 = sub i64 %68, 1, !dbg !4761
  %and304 = and i64 %sub303, 16, !dbg !4761
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4761
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4761

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4761

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub308 = sub i64 %69, 1, !dbg !4761
  %and309 = and i64 %sub308, 8, !dbg !4761
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4761
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4761

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4761

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub313 = sub i64 %70, 1, !dbg !4761
  %and314 = and i64 %sub313, 4, !dbg !4761
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4761
  %71 = zext i1 %tobool315 to i64, !dbg !4761
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4761
  br label %cond.end, !dbg !4761

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4761
  br label %cond.end317, !dbg !4761

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4761
  br label %cond.end319, !dbg !4761

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4761
  br label %cond.end321, !dbg !4761

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4761
  br label %cond.end323, !dbg !4761

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4761
  br label %cond.end325, !dbg !4761

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4761
  br label %cond.end327, !dbg !4761

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4761
  br label %cond.end329, !dbg !4761

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4761
  br label %cond.end331, !dbg !4761

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4761
  br label %cond.end333, !dbg !4761

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4761
  br label %cond.end335, !dbg !4761

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4761
  br label %cond.end337, !dbg !4761

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4761
  br label %cond.end339, !dbg !4761

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4761
  br label %cond.end341, !dbg !4761

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4761
  br label %cond.end343, !dbg !4761

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4761
  br label %cond.end345, !dbg !4761

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4761
  br label %cond.end347, !dbg !4761

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4761
  br label %cond.end349, !dbg !4761

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4761
  br label %cond.end351, !dbg !4761

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4761
  br label %cond.end353, !dbg !4761

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4761
  br label %cond.end355, !dbg !4761

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4761
  br label %cond.end357, !dbg !4761

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4761
  br label %cond.end359, !dbg !4761

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4761
  br label %cond.end361, !dbg !4761

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4761
  br label %cond.end363, !dbg !4761

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4761
  br label %cond.end365, !dbg !4761

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4761
  br label %cond.end367, !dbg !4761

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4761
  br label %cond.end369, !dbg !4761

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4761
  br label %cond.end371, !dbg !4761

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4761
  br label %cond.end373, !dbg !4761

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4761
  br label %cond.end375, !dbg !4761

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4761
  br label %cond.end377, !dbg !4761

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4761
  br label %cond.end379, !dbg !4761

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4761
  br label %cond.end381, !dbg !4761

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4761
  br label %cond.end383, !dbg !4761

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4761
  br label %cond.end385, !dbg !4761

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4761
  br label %cond.end387, !dbg !4761

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4761
  br label %cond.end389, !dbg !4761

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4761
  br label %cond.end391, !dbg !4761

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4761
  br label %cond.end393, !dbg !4761

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4761
  br label %cond.end395, !dbg !4761

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4761
  br label %cond.end397, !dbg !4761

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4761
  br label %cond.end399, !dbg !4761

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4761
  br label %cond.end401, !dbg !4761

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4761
  br label %cond.end403, !dbg !4761

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4761
  br label %cond.end405, !dbg !4761

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4761
  br label %cond.end407, !dbg !4761

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4761
  br label %cond.end409, !dbg !4761

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4761
  br label %cond.end411, !dbg !4761

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4761
  br label %cond.end413, !dbg !4761

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4761
  br label %cond.end415, !dbg !4761

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4761
  br label %cond.end417, !dbg !4761

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4761
  br label %cond.end419, !dbg !4761

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4761
  br label %cond.end421, !dbg !4761

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4761
  br label %cond.end423, !dbg !4761

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4761
  br label %cond.end425, !dbg !4761

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4761
  br label %cond.end427, !dbg !4761

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4761
  br label %cond.end429, !dbg !4761

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4761
  br label %cond.end431, !dbg !4761

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4761
  br label %cond.end433, !dbg !4761

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4761
  br label %cond.end435, !dbg !4761

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4761
  br label %cond.end437, !dbg !4761

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4761
  br label %cond.end440, !dbg !4761

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4761

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4761
  br label %cond.end444, !dbg !4761

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4761
  %sub443 = sub i64 %72, 1, !dbg !4761
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !4761
  br label %cond.end444, !dbg !4761

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4761
  %sub446 = sub i32 %cond445, 12, !dbg !4762
  %add = add i32 %sub446, 1, !dbg !4763
  store i32 %add, i32* %retval, align 4, !dbg !4764
  br label %return, !dbg !4764

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4765
  %dec = add i64 %73, -1, !dbg !4765
  store i64 %dec, i64* %size.addr, align 8, !dbg !4765
  %74 = load i64, i64* %size.addr, align 8, !dbg !4766
  %shr = lshr i64 %74, 12, !dbg !4766
  store i64 %shr, i64* %size.addr, align 8, !dbg !4766
  %75 = load i64, i64* %size.addr, align 8, !dbg !4767
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4744
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4768
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4769
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !4768, !srcloc !4770
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4768
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4771
  %add.i = add i32 %79, 1, !dbg !4772
  store i32 %add.i, i32* %retval, align 4, !dbg !4773
  br label %return, !dbg !4773

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4774
  ret i32 %80, !dbg !4774
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !4775 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4736, metadata !DIExpression()), !dbg !4779
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4743, metadata !DIExpression()), !dbg !4781
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4782, metadata !DIExpression()), !dbg !4783
  %0 = load i64, i64* %n.addr, align 8, !dbg !4784
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4781
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4785
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4786
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !4785, !srcloc !4770
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4785
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4787
  %add.i = add i32 %4, 1, !dbg !4788
  %sub = sub i32 %add.i, 1, !dbg !4789
  ret i32 %sub, !dbg !4790
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !4791 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4795, metadata !DIExpression()), !dbg !4796
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4797, metadata !DIExpression()), !dbg !4798
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4799, metadata !DIExpression()), !dbg !4800
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4801, metadata !DIExpression()), !dbg !4802
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4803
  ret i8* %0, !dbg !4804
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_abs(%struct.input_dev* %dev, i32 %code, i32 %value) #2 !dbg !4805 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4808, metadata !DIExpression()), !dbg !4809
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !4810, metadata !DIExpression()), !dbg !4811
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !4812, metadata !DIExpression()), !dbg !4813
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4814
  %1 = load i32, i32* %code.addr, align 4, !dbg !4815
  %2 = load i32, i32* %value.addr, align 4, !dbg !4816
  call void @input_event(%struct.input_dev* %0, i32 3, i32 %1, i32 %2) #9, !dbg !4817
  ret void, !dbg !4818
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_key(%struct.input_dev* %dev, i32 %code, i32 %value) #2 !dbg !4819 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4820, metadata !DIExpression()), !dbg !4821
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !4822, metadata !DIExpression()), !dbg !4823
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !4824, metadata !DIExpression()), !dbg !4825
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4826
  %1 = load i32, i32* %code.addr, align 4, !dbg !4827
  %2 = load i32, i32* %value.addr, align 4, !dbg !4828
  %tobool = icmp ne i32 %2, 0, !dbg !4829
  %lnot = xor i1 %tobool, true, !dbg !4829
  %lnot1 = xor i1 %lnot, true, !dbg !4830
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4830
  call void @input_event(%struct.input_dev* %0, i32 1, i32 %1, i32 %lnot.ext) #9, !dbg !4831
  ret void, !dbg !4832
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_sync(%struct.input_dev* %dev) #2 !dbg !4833 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4834, metadata !DIExpression()), !dbg !4835
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4836
  call void @input_event(%struct.input_dev* %0, i32 0, i32 0, i32 0) #9, !dbg !4837
  ret void, !dbg !4838
}

; Function Attrs: noredzone
declare dso_local void @psmouse_report_standard_motion(%struct.input_dev*, i8*) #1

; Function Attrs: noredzone
declare dso_local void @psmouse_report_standard_buttons(%struct.input_dev*, i8 zeroext) #1

; Function Attrs: noredzone
declare dso_local void @input_event(%struct.input_dev*, i32, i32, i32) #1

; Function Attrs: noredzone
declare dso_local void @input_unregister_device(%struct.input_dev*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }
attributes #11 = { nounwind }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { noredzone nounwind }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3972, !3973, !3974, !3975}
!llvm.ident = !{!3976}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lifebook_present", scope: !2, file: !3, line: 27, type: !153, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !141, globals: !145, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/mouse/lifebook.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18, !24, !30, !39, !47, !53, !59, !66, !74, !80, !86, !113, !120, !125, !129, !134}
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
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !81, line: 11, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84, !85}
!83 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "psmouse_type", file: !87, line: 48, baseType: !7, size: 32, elements: !88)
!87 = !DIFile(filename: "drivers/input/mouse/psmouse.h", directory: "/home/lizy2001/genbc/linux")
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112}
!89 = !DIEnumerator(name: "PSMOUSE_NONE", value: 0, isUnsigned: true)
!90 = !DIEnumerator(name: "PSMOUSE_PS2", value: 1, isUnsigned: true)
!91 = !DIEnumerator(name: "PSMOUSE_PS2PP", value: 2, isUnsigned: true)
!92 = !DIEnumerator(name: "PSMOUSE_THINKPS", value: 3, isUnsigned: true)
!93 = !DIEnumerator(name: "PSMOUSE_GENPS", value: 4, isUnsigned: true)
!94 = !DIEnumerator(name: "PSMOUSE_IMPS", value: 5, isUnsigned: true)
!95 = !DIEnumerator(name: "PSMOUSE_IMEX", value: 6, isUnsigned: true)
!96 = !DIEnumerator(name: "PSMOUSE_SYNAPTICS", value: 7, isUnsigned: true)
!97 = !DIEnumerator(name: "PSMOUSE_ALPS", value: 8, isUnsigned: true)
!98 = !DIEnumerator(name: "PSMOUSE_LIFEBOOK", value: 9, isUnsigned: true)
!99 = !DIEnumerator(name: "PSMOUSE_TRACKPOINT", value: 10, isUnsigned: true)
!100 = !DIEnumerator(name: "PSMOUSE_TOUCHKIT_PS2", value: 11, isUnsigned: true)
!101 = !DIEnumerator(name: "PSMOUSE_CORTRON", value: 12, isUnsigned: true)
!102 = !DIEnumerator(name: "PSMOUSE_HGPK", value: 13, isUnsigned: true)
!103 = !DIEnumerator(name: "PSMOUSE_ELANTECH", value: 14, isUnsigned: true)
!104 = !DIEnumerator(name: "PSMOUSE_FSP", value: 15, isUnsigned: true)
!105 = !DIEnumerator(name: "PSMOUSE_SYNAPTICS_RELATIVE", value: 16, isUnsigned: true)
!106 = !DIEnumerator(name: "PSMOUSE_CYPRESS", value: 17, isUnsigned: true)
!107 = !DIEnumerator(name: "PSMOUSE_FOCALTECH", value: 18, isUnsigned: true)
!108 = !DIEnumerator(name: "PSMOUSE_VMMOUSE", value: 19, isUnsigned: true)
!109 = !DIEnumerator(name: "PSMOUSE_BYD", value: 20, isUnsigned: true)
!110 = !DIEnumerator(name: "PSMOUSE_SYNAPTICS_SMBUS", value: 21, isUnsigned: true)
!111 = !DIEnumerator(name: "PSMOUSE_ELANTECH_SMBUS", value: 22, isUnsigned: true)
!112 = !DIEnumerator(name: "PSMOUSE_AUTO", value: 23, isUnsigned: true)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "psmouse_state", file: !87, line: 28, baseType: !7, size: 32, elements: !114)
!114 = !{!115, !116, !117, !118, !119}
!115 = !DIEnumerator(name: "PSMOUSE_IGNORE", value: 0, isUnsigned: true)
!116 = !DIEnumerator(name: "PSMOUSE_INITIALIZING", value: 1, isUnsigned: true)
!117 = !DIEnumerator(name: "PSMOUSE_RESYNCING", value: 2, isUnsigned: true)
!118 = !DIEnumerator(name: "PSMOUSE_CMD_MODE", value: 3, isUnsigned: true)
!119 = !DIEnumerator(name: "PSMOUSE_ACTIVATED", value: 4, isUnsigned: true)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !87, line: 37, baseType: !7, size: 32, elements: !121)
!121 = !{!122, !123, !124}
!122 = !DIEnumerator(name: "PSMOUSE_BAD_DATA", value: 0, isUnsigned: true)
!123 = !DIEnumerator(name: "PSMOUSE_GOOD_DATA", value: 1, isUnsigned: true)
!124 = !DIEnumerator(name: "PSMOUSE_FULL_PACKET", value: 2, isUnsigned: true)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "psmouse_scale", file: !87, line: 43, baseType: !7, size: 32, elements: !126)
!126 = !{!127, !128}
!127 = !DIEnumerator(name: "PSMOUSE_SCALE11", value: 0, isUnsigned: true)
!128 = !DIEnumerator(name: "PSMOUSE_SCALE21", value: 1, isUnsigned: true)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !130, line: 10, baseType: !7, size: 32, elements: !131)
!130 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!131 = !{!132, !133}
!132 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!133 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !135, line: 305, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!140 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!141 = !{!142, !144}
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !143, line: 148, baseType: !7)
!143 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!145 = !{!0, !146, !151, !155, !185}
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "desired_serio_phys", scope: !2, file: !3, line: 29, type: !148, isLocal: true, isDefinition: true)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!150 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "lifebook_use_6byte_proto", scope: !2, file: !3, line: 37, type: !153, isLocal: true, isDefinition: true)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !143, line: 30, baseType: !154)
!154 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "lifebook_dmi_table", scope: !2, file: !3, line: 45, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 35776, elements: !183)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !160, line: 566, size: 2752, elements: !161)
!160 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!161 = !{!162, !168, !169, !182}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !159, file: !160, line: 567, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!166, !167}
!166 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !159, file: !160, line: 568, baseType: !148, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !159, file: !160, line: 569, baseType: !170, size: 2560, offset: 128)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 2560, elements: !180)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !160, line: 560, size: 640, elements: !172)
!172 = !{!173, !175, !176}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !171, file: !160, line: 561, baseType: !174, size: 7, flags: DIFlagBitField, extraData: i64 0)
!174 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !171, file: !160, line: 562, baseType: !174, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !171, file: !160, line: 563, baseType: !177, size: 632, offset: 8)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 632, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 79)
!180 = !{!181}
!181 = !DISubrange(count: 4)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !159, file: !160, line: 570, baseType: !144, size: 64, offset: 2688)
!183 = !{!184}
!184 = !DISubrange(count: 13)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "params", scope: !187, file: !3, line: 230, type: !3968, isLocal: true, isDefinition: true)
!187 = distinct !DISubprogram(name: "lifebook_set_resolution", scope: !3, file: !3, line: 228, type: !188, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !190, !7}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse", file: !87, line: 89, size: 3648, elements: !192)
!192 = !{!193, !194, !3820, !3896, !3903, !3904, !3905, !3925, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3951, !3953, !3954, !3958, !3959, !3960, !3964, !3965, !3966, !3967}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !191, file: !87, line: 90, baseType: !144, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !191, file: !87, line: 91, baseType: !195, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !197, line: 131, size: 10432, elements: !198)
!197 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!198 = !{!199, !200, !201, !202, !213, !218, !219, !223, !224, !225, !226, !227, !228, !232, !233, !234, !235, !236, !237, !256, !261, !3030, !3033, !3034, !3046, !3048, !3051, !3061, !3062, !3063, !3064, !3065, !3069, !3073, !3077, !3081, !3158, !3159, !3160, !3161, !3162, !3811, !3812, !3813, !3814, !3815, !3817, !3818}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !197, line: 132, baseType: !148, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !196, file: !197, line: 133, baseType: !148, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !196, file: !197, line: 134, baseType: !148, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !196, file: !197, line: 135, baseType: !203, size: 64, offset: 192)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !204, line: 59, size: 64, elements: !205)
!204 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!205 = !{!206, !210, !211, !212}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !203, file: !204, line: 60, baseType: !207, size: 16)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !208, line: 24, baseType: !209)
!208 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!209 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !203, file: !204, line: 61, baseType: !207, size: 16, offset: 16)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !203, file: !204, line: 62, baseType: !207, size: 16, offset: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !203, file: !204, line: 63, baseType: !207, size: 16, offset: 48)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !196, file: !197, line: 137, baseType: !214, size: 64, offset: 256)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 64, elements: !216)
!215 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!216 = !{!217}
!217 = !DISubrange(count: 1)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !196, file: !197, line: 139, baseType: !214, size: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !196, file: !197, line: 140, baseType: !220, size: 768, offset: 384)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 768, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 12)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !196, file: !197, line: 141, baseType: !214, size: 64, offset: 1152)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !196, file: !197, line: 142, baseType: !214, size: 64, offset: 1216)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !196, file: !197, line: 143, baseType: !214, size: 64, offset: 1280)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !196, file: !197, line: 144, baseType: !214, size: 64, offset: 1344)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !196, file: !197, line: 145, baseType: !214, size: 64, offset: 1408)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !196, file: !197, line: 146, baseType: !229, size: 128, offset: 1472)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 128, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 2)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !196, file: !197, line: 147, baseType: !214, size: 64, offset: 1600)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !196, file: !197, line: 149, baseType: !7, size: 32, offset: 1664)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !196, file: !197, line: 151, baseType: !7, size: 32, offset: 1696)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !196, file: !197, line: 152, baseType: !7, size: 32, offset: 1728)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !196, file: !197, line: 153, baseType: !144, size: 64, offset: 1792)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !196, file: !197, line: 155, baseType: !238, size: 64, offset: 1856)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!166, !195, !241, !255}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !204, line: 114, size: 320, elements: !244)
!244 = !{!245, !247, !248, !249, !251}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !243, file: !204, line: 116, baseType: !246, size: 8)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !208, line: 21, baseType: !174)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !243, file: !204, line: 117, baseType: !246, size: 8, offset: 8)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !243, file: !204, line: 118, baseType: !207, size: 16, offset: 16)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !243, file: !204, line: 119, baseType: !250, size: 32, offset: 32)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !208, line: 27, baseType: !7)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !243, file: !204, line: 120, baseType: !252, size: 256, offset: 64)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 256, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 32)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !196, file: !197, line: 158, baseType: !257, size: 64, offset: 1920)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!166, !195, !260}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !196, file: !197, line: 161, baseType: !262, size: 64, offset: 1984)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !197, line: 534, size: 896, elements: !264)
!264 = !{!265, !334, !338, !342, !348, !349, !353, !354, !355, !391, !392, !393}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !263, file: !197, line: 535, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!166, !195, !269, !269}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !204, line: 450, size: 384, elements: !271)
!271 = !{!272, !273, !276, !277, !282, !287}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !270, file: !204, line: 451, baseType: !207, size: 16)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !270, file: !204, line: 452, baseType: !274, size: 16, offset: 16)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !208, line: 23, baseType: !275)
!275 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !270, file: !204, line: 453, baseType: !207, size: 16, offset: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !270, file: !204, line: 454, baseType: !278, size: 32, offset: 48)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !204, line: 316, size: 32, elements: !279)
!279 = !{!280, !281}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !278, file: !204, line: 317, baseType: !207, size: 16)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !278, file: !204, line: 318, baseType: !207, size: 16, offset: 16)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !270, file: !204, line: 455, baseType: !283, size: 32, offset: 80)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !204, line: 306, size: 32, elements: !284)
!284 = !{!285, !286}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !283, file: !204, line: 307, baseType: !207, size: 16)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !283, file: !204, line: 308, baseType: !207, size: 16, offset: 16)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !270, file: !204, line: 463, baseType: !288, size: 256, offset: 128)
!288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !204, line: 457, size: 256, elements: !289)
!289 = !{!290, !301, !307, !319, !329}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !288, file: !204, line: 458, baseType: !291, size: 80)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !204, line: 345, size: 80, elements: !292)
!292 = !{!293, !294}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !291, file: !204, line: 346, baseType: !274, size: 16)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !291, file: !204, line: 347, baseType: !295, size: 64, offset: 16)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !204, line: 333, size: 64, elements: !296)
!296 = !{!297, !298, !299, !300}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !295, file: !204, line: 334, baseType: !207, size: 16)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !295, file: !204, line: 335, baseType: !207, size: 16, offset: 16)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !295, file: !204, line: 336, baseType: !207, size: 16, offset: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !295, file: !204, line: 337, baseType: !207, size: 16, offset: 48)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !288, file: !204, line: 459, baseType: !302, size: 96)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !204, line: 356, size: 96, elements: !303)
!303 = !{!304, !305, !306}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !302, file: !204, line: 357, baseType: !274, size: 16)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !302, file: !204, line: 358, baseType: !274, size: 16, offset: 16)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !302, file: !204, line: 359, baseType: !295, size: 64, offset: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !288, file: !204, line: 460, baseType: !308, size: 256)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !204, line: 401, size: 256, elements: !309)
!309 = !{!310, !311, !312, !313, !314, !315, !316, !317}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !308, file: !204, line: 402, baseType: !207, size: 16)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !308, file: !204, line: 403, baseType: !207, size: 16, offset: 16)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !308, file: !204, line: 404, baseType: !274, size: 16, offset: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !308, file: !204, line: 405, baseType: !274, size: 16, offset: 48)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !308, file: !204, line: 406, baseType: !207, size: 16, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !308, file: !204, line: 408, baseType: !295, size: 64, offset: 80)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !308, file: !204, line: 410, baseType: !250, size: 32, offset: 160)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !308, file: !204, line: 411, baseType: !318, size: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !288, file: !204, line: 461, baseType: !320, size: 192)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 192, elements: !230)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !204, line: 372, size: 96, elements: !322)
!322 = !{!323, !324, !325, !326, !327, !328}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !321, file: !204, line: 373, baseType: !207, size: 16)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !321, file: !204, line: 374, baseType: !207, size: 16, offset: 16)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !321, file: !204, line: 376, baseType: !274, size: 16, offset: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !321, file: !204, line: 377, baseType: !274, size: 16, offset: 48)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !321, file: !204, line: 379, baseType: !207, size: 16, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !321, file: !204, line: 380, baseType: !274, size: 16, offset: 80)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !288, file: !204, line: 462, baseType: !330, size: 32)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !204, line: 422, size: 32, elements: !331)
!331 = !{!332, !333}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !330, file: !204, line: 423, baseType: !207, size: 16)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !330, file: !204, line: 424, baseType: !207, size: 16, offset: 16)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !263, file: !197, line: 537, baseType: !335, size: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!166, !195, !166}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !263, file: !197, line: 539, baseType: !339, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!166, !195, !166, !166}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !263, file: !197, line: 540, baseType: !343, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !195, !346}
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !347, line: 19, baseType: !207)
!347 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!348 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !263, file: !197, line: 541, baseType: !343, size: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !263, file: !197, line: 543, baseType: !350, size: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !262}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !263, file: !197, line: 545, baseType: !144, size: 64, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !263, file: !197, line: 547, baseType: !229, size: 128, offset: 448)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !263, file: !197, line: 549, baseType: !356, size: 192, offset: 576)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !357, line: 53, size: 192, elements: !358)
!357 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!358 = !{!359, !369, !385}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !356, file: !357, line: 54, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !361, line: 13, baseType: !362)
!361 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !143, line: 175, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 173, size: 64, elements: !364)
!364 = !{!365}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !363, file: !143, line: 174, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !347, line: 22, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !208, line: 30, baseType: !368)
!368 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !356, file: !357, line: 55, baseType: !370, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !371, line: 83, baseType: !372)
!371 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !371, line: 71, elements: !373)
!373 = !{!374}
!374 = !DIDerivedType(tag: DW_TAG_member, scope: !372, file: !371, line: 72, baseType: !375)
!375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !372, file: !371, line: 72, elements: !376)
!376 = !{!377}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !375, file: !371, line: 73, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !371, line: 20, elements: !379)
!379 = !{!380}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !378, file: !371, line: 21, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !382, line: 25, baseType: !383)
!382 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !382, line: 25, elements: !384)
!384 = !{}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !356, file: !357, line: 59, baseType: !386, size: 128, offset: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !143, line: 178, size: 128, elements: !387)
!387 = !{!388, !390}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !386, file: !143, line: 179, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !386, file: !143, line: 179, baseType: !389, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !263, file: !197, line: 551, baseType: !166, size: 32, offset: 768)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !263, file: !197, line: 552, baseType: !269, size: 64, offset: 832)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !263, file: !197, line: 553, baseType: !394, offset: 896)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, elements: !2246)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !397)
!397 = !{!398, !416, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3013, !3014, !3023, !3024, !3025, !3026, !3027, !3028, !3029}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !396, file: !31, line: 920, baseType: !399, size: 128)
!399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !31, line: 917, size: 128, elements: !400)
!400 = !{!401, !407}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !399, file: !31, line: 918, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !403, line: 58, size: 64, elements: !404)
!403 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !402, file: !403, line: 59, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !399, file: !31, line: 919, baseType: !408, size: 128, align: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !143, line: 216, size: 128, align: 64, elements: !409)
!409 = !{!410, !412}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !408, file: !143, line: 217, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !408, file: !143, line: 218, baseType: !413, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !411}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !396, file: !31, line: 921, baseType: !417, size: 128, offset: 128)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !418, line: 8, size: 128, elements: !419)
!418 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!419 = !{!420, !424}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !417, file: !418, line: 9, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !423, line: 18, flags: DIFlagFwdDecl)
!423 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!424 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !417, file: !418, line: 10, baseType: !425, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !423, line: 89, size: 1536, elements: !427)
!427 = !{!428, !429, !439, !447, !448, !467, !2963, !2965, !2977, !2978, !2979, !2980, !2981, !2987, !2988, !2989}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !426, file: !423, line: 91, baseType: !7, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !426, file: !423, line: 92, baseType: !430, size: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !431, line: 277, baseType: !432)
!431 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !431, line: 277, size: 32, elements: !433)
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !432, file: !431, line: 277, baseType: !435, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !431, line: 70, baseType: !436)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !431, line: 65, size: 32, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !436, file: !431, line: 66, baseType: !7, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !426, file: !423, line: 93, baseType: !440, size: 128, offset: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !441, line: 38, size: 128, elements: !442)
!441 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!442 = !{!443, !445}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !440, file: !441, line: 39, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !440, file: !441, line: 39, baseType: !446, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !426, file: !423, line: 94, baseType: !425, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !426, file: !423, line: 95, baseType: !449, size: 128, offset: 256)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !423, line: 47, size: 128, elements: !450)
!450 = !{!451, !464}
!451 = !DIDerivedType(tag: DW_TAG_member, scope: !449, file: !423, line: 48, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !449, file: !423, line: 48, size: 64, elements: !453)
!453 = !{!454, !460}
!454 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !423, line: 49, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !452, file: !423, line: 49, size: 64, elements: !456)
!456 = !{!457, !459}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !455, file: !423, line: 50, baseType: !458, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !347, line: 21, baseType: !250)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !455, file: !423, line: 50, baseType: !458, size: 32, offset: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !452, file: !423, line: 52, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !347, line: 23, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !208, line: 31, baseType: !463)
!463 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !449, file: !423, line: 54, baseType: !465, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !426, file: !423, line: 96, baseType: !468, size: 64, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !470)
!470 = !{!471, !473, !474, !483, !490, !491, !643, !2674, !2675, !2676, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2939, !2947, !2948, !2949, !2959, !2960, !2961, !2962}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !469, file: !31, line: 611, baseType: !472, size: 16)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !143, line: 19, baseType: !209)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !469, file: !31, line: 612, baseType: !209, size: 16, offset: 16)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !469, file: !31, line: 613, baseType: !475, size: 32, offset: 32)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !476, line: 23, baseType: !477)
!476 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !476, line: 21, size: 32, elements: !478)
!478 = !{!479}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !477, file: !476, line: 22, baseType: !480, size: 32)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !143, line: 32, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !482, line: 49, baseType: !7)
!482 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!483 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !469, file: !31, line: 614, baseType: !484, size: 32, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !476, line: 28, baseType: !485)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !476, line: 26, size: 32, elements: !486)
!486 = !{!487}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !485, file: !476, line: 27, baseType: !488, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !143, line: 33, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !482, line: 50, baseType: !7)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !469, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !469, file: !31, line: 622, baseType: !492, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !495)
!495 = !{!496, !500, !513, !517, !523, !528, !532, !536, !540, !544, !548, !549, !555, !559, !584, !613, !623, !629, !634, !638, !639}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !494, file: !31, line: 1865, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!425, !468, !425, !7}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !494, file: !31, line: 1866, baseType: !501, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!148, !425, !468, !504}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !506, line: 10, size: 128, elements: !507)
!506 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!507 = !{!508, !512}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !505, file: !506, line: 11, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{null, !144}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !505, file: !506, line: 12, baseType: !144, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !494, file: !31, line: 1867, baseType: !514, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!166, !468, !166}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !494, file: !31, line: 1868, baseType: !518, size: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!521, !468, !166}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !494, file: !31, line: 1870, baseType: !524, size: 64, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!166, !425, !527, !166}
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !494, file: !31, line: 1872, baseType: !529, size: 64, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!166, !468, !425, !472, !153}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !494, file: !31, line: 1873, baseType: !533, size: 64, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!166, !425, !468, !425}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !494, file: !31, line: 1874, baseType: !537, size: 64, offset: 448)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!166, !468, !425}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !494, file: !31, line: 1875, baseType: !541, size: 64, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!166, !468, !425, !148}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !494, file: !31, line: 1876, baseType: !545, size: 64, offset: 576)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!166, !468, !425, !472}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !494, file: !31, line: 1877, baseType: !537, size: 64, offset: 640)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !494, file: !31, line: 1878, baseType: !550, size: 64, offset: 704)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!166, !468, !425, !472, !553}
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !143, line: 16, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !143, line: 13, baseType: !458)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !494, file: !31, line: 1879, baseType: !556, size: 64, offset: 768)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!166, !468, !425, !468, !425, !7}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !494, file: !31, line: 1881, baseType: !560, size: 64, offset: 832)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!166, !425, !563}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !565)
!565 = !{!566, !567, !568, !569, !570, !573, !581, !582, !583}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !564, file: !31, line: 220, baseType: !7, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !564, file: !31, line: 221, baseType: !472, size: 16, offset: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !564, file: !31, line: 222, baseType: !475, size: 32, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !564, file: !31, line: 223, baseType: !484, size: 32, offset: 96)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !564, file: !31, line: 224, baseType: !571, size: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !143, line: 46, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !482, line: 88, baseType: !368)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !564, file: !31, line: 225, baseType: !574, size: 128, offset: 192)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !575, line: 13, size: 128, elements: !576)
!575 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!576 = !{!577, !579}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !574, file: !575, line: 14, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !575, line: 8, baseType: !367)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !574, file: !575, line: 15, baseType: !580, size: 64, offset: 64)
!580 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !564, file: !31, line: 226, baseType: !574, size: 128, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !564, file: !31, line: 227, baseType: !574, size: 128, offset: 448)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !564, file: !31, line: 234, baseType: !395, size: 64, offset: 576)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !494, file: !31, line: 1882, baseType: !585, size: 64, offset: 896)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!166, !588, !590, !458, !7}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !592, line: 22, size: 1152, elements: !593)
!592 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!593 = !{!594, !595, !596, !597, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !591, file: !592, line: 23, baseType: !458, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !591, file: !592, line: 24, baseType: !472, size: 16, offset: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !591, file: !592, line: 25, baseType: !7, size: 32, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !591, file: !592, line: 26, baseType: !598, size: 32, offset: 96)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !143, line: 104, baseType: !458)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !591, file: !592, line: 27, baseType: !461, size: 64, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !591, file: !592, line: 28, baseType: !461, size: 64, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !591, file: !592, line: 37, baseType: !461, size: 64, offset: 256)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !591, file: !592, line: 38, baseType: !553, size: 32, offset: 320)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !591, file: !592, line: 39, baseType: !553, size: 32, offset: 352)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !591, file: !592, line: 40, baseType: !475, size: 32, offset: 384)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !591, file: !592, line: 41, baseType: !484, size: 32, offset: 416)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !591, file: !592, line: 42, baseType: !571, size: 64, offset: 448)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !591, file: !592, line: 43, baseType: !574, size: 128, offset: 512)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !591, file: !592, line: 44, baseType: !574, size: 128, offset: 640)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !591, file: !592, line: 45, baseType: !574, size: 128, offset: 768)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !591, file: !592, line: 46, baseType: !574, size: 128, offset: 896)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !591, file: !592, line: 47, baseType: !461, size: 64, offset: 1024)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !591, file: !592, line: 48, baseType: !461, size: 64, offset: 1088)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !494, file: !31, line: 1883, baseType: !614, size: 64, offset: 960)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!617, !425, !527, !620}
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !143, line: 60, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !482, line: 73, baseType: !619)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !482, line: 15, baseType: !580)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !143, line: 55, baseType: !621)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !482, line: 72, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !482, line: 16, baseType: !215)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !494, file: !31, line: 1884, baseType: !624, size: 64, offset: 1024)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!166, !468, !627, !461, !461}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !494, file: !31, line: 1886, baseType: !630, size: 64, offset: 1088)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!166, !468, !633, !166}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !494, file: !31, line: 1887, baseType: !635, size: 64, offset: 1152)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!166, !468, !425, !395, !7, !472}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !494, file: !31, line: 1890, baseType: !545, size: 64, offset: 1216)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !494, file: !31, line: 1891, baseType: !640, size: 64, offset: 1280)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!166, !468, !521, !166}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !469, file: !31, line: 623, baseType: !644, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !646)
!646 = !{!647, !648, !649, !650, !651, !652, !704, !2282, !2364, !2447, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2463, !2467, !2468, !2471, !2472, !2475, !2476, !2477, !2518, !2544, !2545, !2546, !2547, !2548, !2549, !2552, !2554, !2561, !2562, !2564, !2565, !2566, !2625, !2626, !2641, !2642, !2643, !2644, !2645, !2648, !2649, !2650, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !645, file: !31, line: 1417, baseType: !386, size: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !645, file: !31, line: 1418, baseType: !553, size: 32, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !645, file: !31, line: 1419, baseType: !174, size: 8, offset: 160)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !645, file: !31, line: 1420, baseType: !215, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !645, file: !31, line: 1421, baseType: !571, size: 64, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !645, file: !31, line: 1422, baseType: !653, size: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !655)
!655 = !{!656, !657, !658, !665, !669, !673, !677, !681, !682, !692, !695, !696, !697, !701, !702, !703}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !654, file: !31, line: 2229, baseType: !148, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !654, file: !31, line: 2230, baseType: !166, size: 32, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !654, file: !31, line: 2238, baseType: !659, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!166, !662}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !664, line: 28, flags: DIFlagFwdDecl)
!664 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!665 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !654, file: !31, line: 2239, baseType: !666, size: 64, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !668)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !654, file: !31, line: 2240, baseType: !670, size: 64, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!425, !653, !166, !148, !144}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !654, file: !31, line: 2242, baseType: !674, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{null, !644}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !654, file: !31, line: 2243, baseType: !678, size: 64, offset: 384)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !680, line: 76, flags: DIFlagFwdDecl)
!680 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!681 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !654, file: !31, line: 2244, baseType: !653, size: 64, offset: 448)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !654, file: !31, line: 2245, baseType: !683, size: 64, offset: 512)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !143, line: 182, size: 64, elements: !684)
!684 = !{!685}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !683, file: !143, line: 183, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !143, line: 186, size: 128, elements: !688)
!688 = !{!689, !690}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !687, file: !143, line: 187, baseType: !686, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !687, file: !143, line: 187, baseType: !691, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !654, file: !31, line: 2247, baseType: !693, offset: 576)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !694, line: 187, elements: !384)
!694 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!695 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !654, file: !31, line: 2248, baseType: !693, offset: 576)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !654, file: !31, line: 2249, baseType: !693, offset: 576)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !654, file: !31, line: 2250, baseType: !698, offset: 576)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, elements: !699)
!699 = !{!700}
!700 = !DISubrange(count: 3)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !654, file: !31, line: 2252, baseType: !693, offset: 576)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !654, file: !31, line: 2253, baseType: !693, offset: 576)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !654, file: !31, line: 2254, baseType: !693, offset: 576)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !645, file: !31, line: 1423, baseType: !705, size: 64, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !707)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !708)
!708 = !{!709, !713, !717, !718, !722, !728, !732, !733, !734, !738, !742, !743, !744, !745, !751, !756, !757, !764, !765, !766, !767, !2266, !2281}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !707, file: !31, line: 1936, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!468, !644}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !707, file: !31, line: 1937, baseType: !714, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{null, !468}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !707, file: !31, line: 1938, baseType: !714, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !707, file: !31, line: 1940, baseType: !719, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{null, !468, !166}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !707, file: !31, line: 1941, baseType: !723, size: 64, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!166, !468, !726}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 289, flags: DIFlagFwdDecl)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !707, file: !31, line: 1942, baseType: !729, size: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!166, !468}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !707, file: !31, line: 1943, baseType: !714, size: 64, offset: 384)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !707, file: !31, line: 1944, baseType: !674, size: 64, offset: 448)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !707, file: !31, line: 1945, baseType: !735, size: 64, offset: 512)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!166, !644, !166}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !707, file: !31, line: 1946, baseType: !739, size: 64, offset: 576)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!166, !644}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !707, file: !31, line: 1947, baseType: !739, size: 64, offset: 640)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !707, file: !31, line: 1948, baseType: !739, size: 64, offset: 704)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !707, file: !31, line: 1949, baseType: !739, size: 64, offset: 768)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !707, file: !31, line: 1950, baseType: !746, size: 64, offset: 832)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!166, !425, !749}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !707, file: !31, line: 1951, baseType: !752, size: 64, offset: 896)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!166, !644, !755, !527}
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !707, file: !31, line: 1952, baseType: !674, size: 64, offset: 960)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !707, file: !31, line: 1954, baseType: !758, size: 64, offset: 1024)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!166, !761, !425}
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !763, line: 539, flags: DIFlagFwdDecl)
!763 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!764 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !707, file: !31, line: 1955, baseType: !758, size: 64, offset: 1088)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !707, file: !31, line: 1956, baseType: !758, size: 64, offset: 1152)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !707, file: !31, line: 1957, baseType: !758, size: 64, offset: 1216)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !707, file: !31, line: 1963, baseType: !768, size: 64, offset: 1280)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!166, !644, !771, !142}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !773, line: 68, size: 512, align: 128, elements: !774)
!773 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!774 = !{!775, !776, !2258, !2265}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !772, file: !773, line: 69, baseType: !215, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !773, line: 77, baseType: !777, size: 320, offset: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !772, file: !773, line: 77, size: 320, elements: !778)
!778 = !{!779, !957, !962, !990, !998, !1004, !2250, !2257}
!779 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !773, line: 78, baseType: !780, size: 320)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !773, line: 78, size: 320, elements: !781)
!781 = !{!782, !783, !955, !956}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !780, file: !773, line: 84, baseType: !386, size: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !780, file: !773, line: 86, baseType: !784, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !786)
!786 = !{!787, !788, !795, !796, !801, !816, !825, !826, !827, !828, !948, !949, !952, !953, !954}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !785, file: !31, line: 452, baseType: !468, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !785, file: !31, line: 453, baseType: !789, size: 128, offset: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !790, line: 292, size: 128, elements: !791)
!790 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!791 = !{!792, !793, !794}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !789, file: !790, line: 293, baseType: !370)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !789, file: !790, line: 295, baseType: !142, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !789, file: !790, line: 296, baseType: !144, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !785, file: !31, line: 454, baseType: !142, size: 32, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !785, file: !31, line: 455, baseType: !797, size: 32, offset: 224)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !143, line: 168, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 166, size: 32, elements: !799)
!799 = !{!800}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !798, file: !143, line: 167, baseType: !166, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !785, file: !31, line: 460, baseType: !802, size: 128, offset: 256)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !803, line: 125, size: 128, elements: !804)
!803 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!804 = !{!805, !815}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !802, file: !803, line: 126, baseType: !806, size: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !803, line: 31, size: 64, elements: !807)
!807 = !{!808}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !806, file: !803, line: 32, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !803, line: 24, size: 192, align: 64, elements: !811)
!811 = !{!812, !813, !814}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !810, file: !803, line: 25, baseType: !215, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !810, file: !803, line: 26, baseType: !809, size: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !810, file: !803, line: 27, baseType: !809, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !802, file: !803, line: 127, baseType: !809, size: 64, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !785, file: !31, line: 461, baseType: !817, size: 256, offset: 384)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !818, line: 35, size: 256, elements: !819)
!818 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!819 = !{!820, !821, !822, !824}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !817, file: !818, line: 36, baseType: !360, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !817, file: !818, line: 42, baseType: !360, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !817, file: !818, line: 46, baseType: !823, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !371, line: 29, baseType: !378)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !817, file: !818, line: 47, baseType: !386, size: 128, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !785, file: !31, line: 462, baseType: !215, size: 64, offset: 640)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !785, file: !31, line: 463, baseType: !215, size: 64, offset: 704)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !785, file: !31, line: 464, baseType: !215, size: 64, offset: 768)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !785, file: !31, line: 465, baseType: !829, size: 64, offset: 832)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !832)
!832 = !{!833, !837, !841, !845, !849, !853, !859, !865, !869, !874, !878, !882, !886, !912, !916, !922, !923, !924, !928, !933, !937, !944}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !831, file: !31, line: 368, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!166, !771, !726}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !831, file: !31, line: 369, baseType: !838, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!166, !395, !771}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !831, file: !31, line: 372, baseType: !842, size: 64, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!166, !784, !726}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !831, file: !31, line: 375, baseType: !846, size: 64, offset: 192)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!166, !771}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !831, file: !31, line: 381, baseType: !850, size: 64, offset: 256)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!166, !395, !784, !389, !7}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !831, file: !31, line: 383, baseType: !854, size: 64, offset: 320)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !857}
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !831, file: !31, line: 385, baseType: !860, size: 64, offset: 384)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!166, !395, !784, !571, !7, !7, !863, !864}
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !831, file: !31, line: 388, baseType: !866, size: 64, offset: 448)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!166, !395, !784, !571, !7, !7, !771, !144}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !831, file: !31, line: 393, baseType: !870, size: 64, offset: 512)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!873, !784, !873}
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !143, line: 125, baseType: !461)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !831, file: !31, line: 394, baseType: !875, size: 64, offset: 576)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{null, !771, !7, !7}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !831, file: !31, line: 395, baseType: !879, size: 64, offset: 640)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!166, !771, !142}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !831, file: !31, line: 396, baseType: !883, size: 64, offset: 704)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{null, !771}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !831, file: !31, line: 397, baseType: !887, size: 64, offset: 768)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!617, !890, !910}
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !892)
!892 = !{!893, !894, !895, !899, !900, !901, !902, !903}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !891, file: !31, line: 321, baseType: !395, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !891, file: !31, line: 326, baseType: !571, size: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !891, file: !31, line: 327, baseType: !896, size: 64, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{null, !890, !580, !580}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !891, file: !31, line: 328, baseType: !144, size: 64, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !891, file: !31, line: 329, baseType: !166, size: 32, offset: 256)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !891, file: !31, line: 330, baseType: !346, size: 16, offset: 288)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !891, file: !31, line: 331, baseType: !346, size: 16, offset: 304)
!903 = !DIDerivedType(tag: DW_TAG_member, scope: !891, file: !31, line: 332, baseType: !904, size: 64, offset: 320)
!904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !891, file: !31, line: 332, size: 64, elements: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !904, file: !31, line: 333, baseType: !7, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !904, file: !31, line: 334, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !831, file: !31, line: 402, baseType: !913, size: 64, offset: 832)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!166, !784, !771, !771, !5}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !831, file: !31, line: 404, baseType: !917, size: 64, offset: 896)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!153, !771, !920}
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !921, line: 305, baseType: !7)
!921 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!922 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !831, file: !31, line: 405, baseType: !883, size: 64, offset: 960)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !831, file: !31, line: 406, baseType: !846, size: 64, offset: 1024)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !831, file: !31, line: 407, baseType: !925, size: 64, offset: 1088)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{!166, !771, !215, !215}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !831, file: !31, line: 409, baseType: !929, size: 64, offset: 1152)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{null, !771, !932, !932}
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !831, file: !31, line: 410, baseType: !934, size: 64, offset: 1216)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!166, !784, !771}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !831, file: !31, line: 413, baseType: !938, size: 64, offset: 1280)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!166, !941, !395, !943}
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !831, file: !31, line: 415, baseType: !945, size: 64, offset: 1344)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{null, !395}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !785, file: !31, line: 466, baseType: !215, size: 64, offset: 896)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !785, file: !31, line: 467, baseType: !950, size: 32, offset: 960)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !951, line: 8, baseType: !458)
!951 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!952 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !785, file: !31, line: 468, baseType: !370, offset: 992)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !785, file: !31, line: 469, baseType: !386, size: 128, offset: 1024)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !785, file: !31, line: 470, baseType: !144, size: 64, offset: 1152)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !780, file: !773, line: 87, baseType: !215, size: 64, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !780, file: !773, line: 94, baseType: !215, size: 64, offset: 256)
!957 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !773, line: 96, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !773, line: 96, size: 64, elements: !959)
!959 = !{!960}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !958, file: !773, line: 101, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !143, line: 143, baseType: !461)
!962 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !773, line: 103, baseType: !963, size: 320)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !773, line: 103, size: 320, elements: !964)
!964 = !{!965, !975, !978, !979}
!965 = !DIDerivedType(tag: DW_TAG_member, scope: !963, file: !773, line: 104, baseType: !966, size: 128)
!966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !963, file: !773, line: 104, size: 128, elements: !967)
!967 = !{!968, !969}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !966, file: !773, line: 105, baseType: !386, size: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, scope: !966, file: !773, line: 106, baseType: !970, size: 128)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !966, file: !773, line: 106, size: 128, elements: !971)
!971 = !{!972, !973, !974}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !970, file: !773, line: 107, baseType: !771, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !970, file: !773, line: 109, baseType: !166, size: 32, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !970, file: !773, line: 110, baseType: !166, size: 32, offset: 96)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !963, file: !773, line: 117, baseType: !976, size: 64, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !773, line: 117, flags: DIFlagFwdDecl)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !963, file: !773, line: 119, baseType: !144, size: 64, offset: 192)
!979 = !DIDerivedType(tag: DW_TAG_member, scope: !963, file: !773, line: 120, baseType: !980, size: 64, offset: 256)
!980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !963, file: !773, line: 120, size: 64, elements: !981)
!981 = !{!982, !983, !984}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !980, file: !773, line: 121, baseType: !144, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !980, file: !773, line: 122, baseType: !215, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, scope: !980, file: !773, line: 123, baseType: !985, size: 32)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !980, file: !773, line: 123, size: 32, elements: !986)
!986 = !{!987, !988, !989}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !985, file: !773, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !985, file: !773, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !985, file: !773, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!990 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !773, line: 130, baseType: !991, size: 192)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !773, line: 130, size: 192, elements: !992)
!992 = !{!993, !994, !995, !996, !997}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !991, file: !773, line: 131, baseType: !215, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !991, file: !773, line: 134, baseType: !174, size: 8, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !991, file: !773, line: 135, baseType: !174, size: 8, offset: 72)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !991, file: !773, line: 136, baseType: !797, size: 32, offset: 96)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !991, file: !773, line: 137, baseType: !7, size: 32, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !773, line: 139, baseType: !999, size: 256)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !773, line: 139, size: 256, elements: !1000)
!1000 = !{!1001, !1002, !1003}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !999, file: !773, line: 140, baseType: !215, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !999, file: !773, line: 141, baseType: !797, size: 32, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !999, file: !773, line: 143, baseType: !386, size: 128, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !773, line: 145, baseType: !1005, size: 256)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !773, line: 145, size: 256, elements: !1006)
!1006 = !{!1007, !1008, !1010, !1011, !2249}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1005, file: !773, line: 146, baseType: !215, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1005, file: !773, line: 147, baseType: !1009, size: 64, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !763, line: 509, baseType: !771)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1005, file: !773, line: 148, baseType: !215, size: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !1005, file: !773, line: 149, baseType: !1012, size: 64, offset: 192)
!1012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1005, file: !773, line: 149, size: 64, elements: !1013)
!1013 = !{!1014, !2248}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1012, file: !773, line: 150, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !773, line: 388, size: 7296, elements: !1017)
!1017 = !{!1018, !2244}
!1018 = !DIDerivedType(tag: DW_TAG_member, scope: !1016, file: !773, line: 389, baseType: !1019, size: 7296)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1016, file: !773, line: 389, size: 7296, elements: !1020)
!1020 = !{!1021, !1059, !1060, !1061, !1065, !1066, !1067, !1068, !1069, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1110, !1116, !1119, !1141, !1142, !2228, !2229, !2232, !2233, !2234, !2237, !2238, !2239, !2242, !2243}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1019, file: !773, line: 390, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !773, line: 305, size: 1472, elements: !1024)
!1024 = !{!1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1039, !1040, !1045, !1046, !1049, !1053, !1054, !1055, !1056, !1057}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1023, file: !773, line: 308, baseType: !215, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1023, file: !773, line: 309, baseType: !215, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1023, file: !773, line: 313, baseType: !1022, size: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1023, file: !773, line: 313, baseType: !1022, size: 64, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1023, file: !773, line: 315, baseType: !810, size: 192, align: 64, offset: 256)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1023, file: !773, line: 323, baseType: !215, size: 64, offset: 448)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1023, file: !773, line: 327, baseType: !1015, size: 64, offset: 512)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1023, file: !773, line: 333, baseType: !1033, size: 64, offset: 576)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !763, line: 284, baseType: !1034)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !763, line: 284, size: 64, elements: !1035)
!1035 = !{!1036}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1034, file: !763, line: 284, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1038, line: 19, baseType: !215)
!1038 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1023, file: !773, line: 334, baseType: !215, size: 64, offset: 640)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1023, file: !773, line: 343, baseType: !1041, size: 256, offset: 704)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1023, file: !773, line: 340, size: 256, elements: !1042)
!1042 = !{!1043, !1044}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1041, file: !773, line: 341, baseType: !810, size: 192, align: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1041, file: !773, line: 342, baseType: !215, size: 64, offset: 192)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1023, file: !773, line: 351, baseType: !386, size: 128, offset: 960)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1023, file: !773, line: 353, baseType: !1047, size: 64, offset: 1088)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !773, line: 353, flags: DIFlagFwdDecl)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1023, file: !773, line: 356, baseType: !1050, size: 64, offset: 1152)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1052)
!1052 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !773, line: 356, flags: DIFlagFwdDecl)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1023, file: !773, line: 359, baseType: !215, size: 64, offset: 1216)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1023, file: !773, line: 361, baseType: !395, size: 64, offset: 1280)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1023, file: !773, line: 362, baseType: !144, size: 64, offset: 1344)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1023, file: !773, line: 365, baseType: !360, size: 64, offset: 1408)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1023, file: !773, line: 373, baseType: !1058, offset: 1472)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !773, line: 296, elements: !384)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1019, file: !773, line: 391, baseType: !806, size: 64, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1019, file: !773, line: 392, baseType: !461, size: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1019, file: !773, line: 394, baseType: !1062, size: 64, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!215, !395, !215, !215, !215, !215}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1019, file: !773, line: 398, baseType: !215, size: 64, offset: 256)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1019, file: !773, line: 399, baseType: !215, size: 64, offset: 320)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1019, file: !773, line: 405, baseType: !215, size: 64, offset: 384)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1019, file: !773, line: 406, baseType: !215, size: 64, offset: 448)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1019, file: !773, line: 407, baseType: !1070, size: 64, offset: 512)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !763, line: 286, baseType: !1072)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !763, line: 286, size: 64, elements: !1073)
!1073 = !{!1074}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1072, file: !763, line: 286, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1038, line: 18, baseType: !215)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1019, file: !773, line: 416, baseType: !797, size: 32, offset: 576)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1019, file: !773, line: 428, baseType: !797, size: 32, offset: 608)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1019, file: !773, line: 437, baseType: !797, size: 32, offset: 640)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1019, file: !773, line: 447, baseType: !797, size: 32, offset: 672)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1019, file: !773, line: 450, baseType: !360, size: 64, offset: 704)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1019, file: !773, line: 452, baseType: !166, size: 32, offset: 768)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1019, file: !773, line: 454, baseType: !370, offset: 800)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1019, file: !773, line: 457, baseType: !817, size: 256, offset: 832)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1019, file: !773, line: 459, baseType: !386, size: 128, offset: 1088)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1019, file: !773, line: 466, baseType: !215, size: 64, offset: 1216)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1019, file: !773, line: 467, baseType: !215, size: 64, offset: 1280)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1019, file: !773, line: 469, baseType: !215, size: 64, offset: 1344)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1019, file: !773, line: 470, baseType: !215, size: 64, offset: 1408)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1019, file: !773, line: 471, baseType: !362, size: 64, offset: 1472)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1019, file: !773, line: 472, baseType: !215, size: 64, offset: 1536)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1019, file: !773, line: 473, baseType: !215, size: 64, offset: 1600)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1019, file: !773, line: 474, baseType: !215, size: 64, offset: 1664)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1019, file: !773, line: 475, baseType: !215, size: 64, offset: 1728)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1019, file: !773, line: 477, baseType: !370, offset: 1792)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1019, file: !773, line: 478, baseType: !215, size: 64, offset: 1792)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1019, file: !773, line: 478, baseType: !215, size: 64, offset: 1856)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1019, file: !773, line: 478, baseType: !215, size: 64, offset: 1920)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1019, file: !773, line: 478, baseType: !215, size: 64, offset: 1984)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1019, file: !773, line: 479, baseType: !215, size: 64, offset: 2048)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1019, file: !773, line: 479, baseType: !215, size: 64, offset: 2112)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1019, file: !773, line: 479, baseType: !215, size: 64, offset: 2176)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1019, file: !773, line: 480, baseType: !215, size: 64, offset: 2240)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1019, file: !773, line: 480, baseType: !215, size: 64, offset: 2304)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1019, file: !773, line: 480, baseType: !215, size: 64, offset: 2368)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1019, file: !773, line: 480, baseType: !215, size: 64, offset: 2432)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1019, file: !773, line: 482, baseType: !1107, size: 2816, offset: 2496)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 2816, elements: !1108)
!1108 = !{!1109}
!1109 = !DISubrange(count: 44)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1019, file: !773, line: 488, baseType: !1111, size: 256, offset: 5312)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1112, line: 60, size: 256, elements: !1113)
!1112 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1113 = !{!1114}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1111, file: !1112, line: 61, baseType: !1115, size: 256)
!1115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 256, elements: !180)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1019, file: !773, line: 490, baseType: !1117, size: 64, offset: 5568)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !773, line: 490, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1019, file: !773, line: 493, baseType: !1120, size: 896, offset: 5632)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1121, line: 53, baseType: !1122)
!1121 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1121, line: 13, size: 896, elements: !1123)
!1123 = !{!1124, !1125, !1126, !1127, !1130, !1131, !1132, !1133, !1137, !1138, !1139}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1122, file: !1121, line: 18, baseType: !461, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1122, file: !1121, line: 28, baseType: !362, size: 64, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1122, file: !1121, line: 31, baseType: !817, size: 256, offset: 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1122, file: !1121, line: 32, baseType: !1128, size: 64, offset: 384)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1121, line: 32, flags: DIFlagFwdDecl)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1122, file: !1121, line: 37, baseType: !209, size: 16, offset: 448)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1122, file: !1121, line: 40, baseType: !356, size: 192, offset: 512)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1122, file: !1121, line: 41, baseType: !144, size: 64, offset: 704)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1122, file: !1121, line: 42, baseType: !1134, size: 64, offset: 768)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1136)
!1136 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1121, line: 42, flags: DIFlagFwdDecl)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1122, file: !1121, line: 44, baseType: !797, size: 32, offset: 832)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1122, file: !1121, line: 50, baseType: !346, size: 16, offset: 864)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1122, file: !1121, line: 51, baseType: !1140, size: 16, offset: 880)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !347, line: 18, baseType: !274)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1019, file: !773, line: 495, baseType: !215, size: 64, offset: 6528)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1019, file: !773, line: 497, baseType: !1143, size: 64, offset: 6592)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !773, line: 381, size: 384, elements: !1145)
!1145 = !{!1146, !1147, !2227}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1144, file: !773, line: 382, baseType: !797, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1144, file: !773, line: 383, baseType: !1148, size: 128, offset: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !773, line: 376, size: 128, elements: !1149)
!1149 = !{!1150, !2225}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1148, file: !773, line: 377, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1153, line: 640, size: 48640, elements: !1154)
!1153 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1154 = !{!1155, !1161, !1163, !1164, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1181, !1199, !1210, !1294, !1295, !1296, !1304, !1305, !1307, !1308, !1309, !1310, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1389, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1427, !1429, !1430, !1431, !1443, !1444, !1445, !1446, !1447, !1448, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1472, !1477, !1659, !1660, !1661, !1662, !1666, !1669, !1672, !1675, !1678, !1681, !1782, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1830, !1831, !1832, !1833, !1834, !1839, !1840, !1841, !1844, !1845, !1848, !1851, !1854, !1857, !1900, !1903, !1904, !1983, !1984, !1987, !1988, !1991, !1992, !1993, !1997, !1998, !1999, !2012, !2013, !2014, !2024, !2029, !2032, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1152, file: !1153, line: 646, baseType: !1156, size: 128)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1157, line: 56, size: 128, elements: !1158)
!1157 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1158 = !{!1159, !1160}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1156, file: !1157, line: 57, baseType: !215, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1156, file: !1157, line: 58, baseType: !458, size: 32, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1152, file: !1153, line: 649, baseType: !1162, size: 64, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !580)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1152, file: !1153, line: 657, baseType: !144, size: 64, offset: 192)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1152, file: !1153, line: 658, baseType: !1165, size: 32, offset: 256)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1166, line: 113, baseType: !1167)
!1166 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1166, line: 111, size: 32, elements: !1168)
!1168 = !{!1169}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1167, file: !1166, line: 112, baseType: !797, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1152, file: !1153, line: 660, baseType: !7, size: 32, offset: 288)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1152, file: !1153, line: 661, baseType: !7, size: 32, offset: 320)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1152, file: !1153, line: 684, baseType: !166, size: 32, offset: 352)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1152, file: !1153, line: 686, baseType: !166, size: 32, offset: 384)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1152, file: !1153, line: 687, baseType: !166, size: 32, offset: 416)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1152, file: !1153, line: 688, baseType: !166, size: 32, offset: 448)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1152, file: !1153, line: 689, baseType: !7, size: 32, offset: 480)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1152, file: !1153, line: 691, baseType: !1178, size: 64, offset: 512)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1180)
!1180 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1153, line: 691, flags: DIFlagFwdDecl)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1152, file: !1153, line: 692, baseType: !1182, size: 832, offset: 576)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1153, line: 451, size: 832, elements: !1183)
!1183 = !{!1184, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1182, file: !1153, line: 453, baseType: !1185, size: 128)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1153, line: 325, size: 128, elements: !1186)
!1186 = !{!1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1185, file: !1153, line: 326, baseType: !215, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1185, file: !1153, line: 327, baseType: !458, size: 32, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1182, file: !1153, line: 454, baseType: !810, size: 192, align: 64, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1182, file: !1153, line: 455, baseType: !386, size: 128, offset: 320)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1182, file: !1153, line: 456, baseType: !7, size: 32, offset: 448)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1182, file: !1153, line: 458, baseType: !461, size: 64, offset: 512)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1182, file: !1153, line: 459, baseType: !461, size: 64, offset: 576)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1182, file: !1153, line: 460, baseType: !461, size: 64, offset: 640)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1182, file: !1153, line: 461, baseType: !461, size: 64, offset: 704)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1182, file: !1153, line: 463, baseType: !461, size: 64, offset: 768)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1182, file: !1153, line: 465, baseType: !1198, offset: 832)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1153, line: 415, elements: !384)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1152, file: !1153, line: 693, baseType: !1200, size: 384, offset: 1408)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1153, line: 489, size: 384, elements: !1201)
!1201 = !{!1202, !1203, !1204, !1205, !1206, !1207, !1208}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1200, file: !1153, line: 490, baseType: !386, size: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1200, file: !1153, line: 491, baseType: !215, size: 64, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1200, file: !1153, line: 492, baseType: !215, size: 64, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1200, file: !1153, line: 493, baseType: !7, size: 32, offset: 256)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1200, file: !1153, line: 494, baseType: !209, size: 16, offset: 288)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1200, file: !1153, line: 495, baseType: !209, size: 16, offset: 304)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1200, file: !1153, line: 497, baseType: !1209, size: 64, offset: 320)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1152, file: !1153, line: 697, baseType: !1211, size: 1792, offset: 1792)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1153, line: 507, size: 1792, elements: !1212)
!1212 = !{!1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1291, !1292}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1211, file: !1153, line: 508, baseType: !810, size: 192, align: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1211, file: !1153, line: 515, baseType: !461, size: 64, offset: 192)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1211, file: !1153, line: 516, baseType: !461, size: 64, offset: 256)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1211, file: !1153, line: 517, baseType: !461, size: 64, offset: 320)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1211, file: !1153, line: 518, baseType: !461, size: 64, offset: 384)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1211, file: !1153, line: 519, baseType: !461, size: 64, offset: 448)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1211, file: !1153, line: 526, baseType: !366, size: 64, offset: 512)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1211, file: !1153, line: 527, baseType: !461, size: 64, offset: 576)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1211, file: !1153, line: 528, baseType: !7, size: 32, offset: 640)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1211, file: !1153, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1211, file: !1153, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1211, file: !1153, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1211, file: !1153, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1211, file: !1153, line: 563, baseType: !1227, size: 512, offset: 704)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !14, line: 118, size: 512, elements: !1228)
!1228 = !{!1229, !1237, !1238, !1243, !1286, !1288, !1289, !1290}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1227, file: !14, line: 119, baseType: !1230, size: 256)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1231, line: 9, size: 256, elements: !1232)
!1231 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1232 = !{!1233, !1234}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1230, file: !1231, line: 10, baseType: !810, size: 192, align: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1230, file: !1231, line: 11, baseType: !1235, size: 64, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1236, line: 29, baseType: !366)
!1236 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1227, file: !14, line: 120, baseType: !1235, size: 64, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1227, file: !14, line: 121, baseType: !1239, size: 64, offset: 320)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!13, !1242}
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1227, file: !14, line: 122, baseType: !1244, size: 64, offset: 384)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !14, line: 159, size: 512, align: 512, elements: !1246)
!1246 = !{!1247, !1267, !1268, !1271, !1276, !1277, !1281, !1285}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1245, file: !14, line: 160, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !14, line: 214, size: 4608, align: 512, elements: !1250)
!1250 = !{!1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1249, file: !14, line: 215, baseType: !823)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1249, file: !14, line: 216, baseType: !7, size: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1249, file: !14, line: 217, baseType: !7, size: 32, offset: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1249, file: !14, line: 218, baseType: !7, size: 32, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1249, file: !14, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1249, file: !14, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1249, file: !14, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1249, file: !14, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1249, file: !14, line: 233, baseType: !1235, size: 64, offset: 128)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1249, file: !14, line: 234, baseType: !1242, size: 64, offset: 192)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1249, file: !14, line: 235, baseType: !1235, size: 64, offset: 256)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1249, file: !14, line: 236, baseType: !1242, size: 64, offset: 320)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1249, file: !14, line: 237, baseType: !1264, size: 4096, offset: 512)
!1264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1245, size: 4096, elements: !1265)
!1265 = !{!1266}
!1266 = !DISubrange(count: 8)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1245, file: !14, line: 161, baseType: !7, size: 32, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1245, file: !14, line: 162, baseType: !1269, size: 32, offset: 96)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !143, line: 27, baseType: !1270)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !482, line: 96, baseType: !166)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1245, file: !14, line: 163, baseType: !1272, size: 32, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !431, line: 276, baseType: !1273)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !431, line: 276, size: 32, elements: !1274)
!1274 = !{!1275}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1273, file: !431, line: 276, baseType: !435, size: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1245, file: !14, line: 164, baseType: !1242, size: 64, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1245, file: !14, line: 165, baseType: !1278, size: 128, offset: 256)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1231, line: 14, size: 128, elements: !1279)
!1279 = !{!1280}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1278, file: !1231, line: 15, baseType: !802, size: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1245, file: !14, line: 166, baseType: !1282, size: 64, offset: 384)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!1235}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1245, file: !14, line: 167, baseType: !1235, size: 64, offset: 448)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1227, file: !14, line: 123, baseType: !1287, size: 8, offset: 448)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !347, line: 17, baseType: !246)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1227, file: !14, line: 124, baseType: !1287, size: 8, offset: 456)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1227, file: !14, line: 125, baseType: !1287, size: 8, offset: 464)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1227, file: !14, line: 126, baseType: !1287, size: 8, offset: 472)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1211, file: !1153, line: 572, baseType: !1227, size: 512, offset: 1216)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1211, file: !1153, line: 580, baseType: !1293, size: 64, offset: 1728)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1152, file: !1153, line: 721, baseType: !7, size: 32, offset: 3584)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1152, file: !1153, line: 722, baseType: !166, size: 32, offset: 3616)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1152, file: !1153, line: 723, baseType: !1297, size: 64, offset: 3648)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1299)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1300, line: 17, baseType: !1301)
!1300 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1300, line: 17, size: 64, elements: !1302)
!1302 = !{!1303}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1301, file: !1300, line: 17, baseType: !214, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1152, file: !1153, line: 724, baseType: !1299, size: 64, offset: 3712)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1152, file: !1153, line: 749, baseType: !1306, offset: 3776)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1153, line: 290, elements: !384)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1152, file: !1153, line: 751, baseType: !386, size: 128, offset: 3776)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1152, file: !1153, line: 757, baseType: !1015, size: 64, offset: 3904)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1152, file: !1153, line: 758, baseType: !1015, size: 64, offset: 3968)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1152, file: !1153, line: 761, baseType: !1311, size: 320, offset: 4032)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1112, line: 34, size: 320, elements: !1312)
!1312 = !{!1313, !1314}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1311, file: !1112, line: 35, baseType: !461, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1311, file: !1112, line: 36, baseType: !1315, size: 256, offset: 64)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1022, size: 256, elements: !180)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1152, file: !1153, line: 766, baseType: !166, size: 32, offset: 4352)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1152, file: !1153, line: 767, baseType: !166, size: 32, offset: 4384)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1152, file: !1153, line: 768, baseType: !166, size: 32, offset: 4416)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1152, file: !1153, line: 770, baseType: !166, size: 32, offset: 4448)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1152, file: !1153, line: 772, baseType: !215, size: 64, offset: 4480)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1152, file: !1153, line: 775, baseType: !7, size: 32, offset: 4544)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1152, file: !1153, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1152, file: !1153, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1152, file: !1153, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1152, file: !1153, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1152, file: !1153, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1152, file: !1153, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1152, file: !1153, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1152, file: !1153, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1152, file: !1153, line: 831, baseType: !215, size: 64, offset: 4672)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1152, file: !1153, line: 833, baseType: !1332, size: 384, offset: 4736)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !19, line: 25, size: 384, elements: !1333)
!1333 = !{!1334, !1339}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1332, file: !19, line: 26, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!580, !1338}
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, scope: !1332, file: !19, line: 27, baseType: !1340, size: 320, offset: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1332, file: !19, line: 27, size: 320, elements: !1341)
!1341 = !{!1342, !1352, !1379}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1340, file: !19, line: 36, baseType: !1343, size: 320)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1340, file: !19, line: 29, size: 320, elements: !1344)
!1344 = !{!1345, !1347, !1348, !1349, !1350, !1351}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1343, file: !19, line: 30, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1343, file: !19, line: 31, baseType: !458, size: 32, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1343, file: !19, line: 32, baseType: !458, size: 32, offset: 96)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1343, file: !19, line: 33, baseType: !458, size: 32, offset: 128)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1343, file: !19, line: 34, baseType: !461, size: 64, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1343, file: !19, line: 35, baseType: !1346, size: 64, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1340, file: !19, line: 46, baseType: !1353, size: 192)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1340, file: !19, line: 38, size: 192, elements: !1354)
!1354 = !{!1355, !1356, !1357, !1378}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1353, file: !19, line: 39, baseType: !1269, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1353, file: !19, line: 40, baseType: !18, size: 32, offset: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, scope: !1353, file: !19, line: 41, baseType: !1358, size: 64, offset: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1353, file: !19, line: 41, size: 64, elements: !1359)
!1359 = !{!1360, !1368}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1358, file: !19, line: 42, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1363, line: 7, size: 128, elements: !1364)
!1363 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1364 = !{!1365, !1367}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1362, file: !1363, line: 8, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !482, line: 93, baseType: !368)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1362, file: !1363, line: 9, baseType: !368, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1358, file: !19, line: 43, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1371, line: 7, size: 64, elements: !1372)
!1371 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1372 = !{!1373, !1377}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1370, file: !1371, line: 8, baseType: !1374, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1371, line: 5, baseType: !1375)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !347, line: 20, baseType: !1376)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !208, line: 26, baseType: !166)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1370, file: !1371, line: 9, baseType: !1375, size: 32, offset: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1353, file: !19, line: 45, baseType: !461, size: 64, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1340, file: !19, line: 54, baseType: !1380, size: 256)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1340, file: !19, line: 48, size: 256, elements: !1381)
!1381 = !{!1382, !1385, !1386, !1387, !1388}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1380, file: !19, line: 49, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !19, line: 14, flags: DIFlagFwdDecl)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1380, file: !19, line: 50, baseType: !166, size: 32, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1380, file: !19, line: 51, baseType: !166, size: 32, offset: 96)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1380, file: !19, line: 52, baseType: !215, size: 64, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1380, file: !19, line: 53, baseType: !215, size: 64, offset: 192)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1152, file: !1153, line: 835, baseType: !1390, size: 32, offset: 5120)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !143, line: 22, baseType: !1391)
!1391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !482, line: 28, baseType: !166)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1152, file: !1153, line: 836, baseType: !1390, size: 32, offset: 5152)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1152, file: !1153, line: 840, baseType: !215, size: 64, offset: 5184)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1152, file: !1153, line: 849, baseType: !1151, size: 64, offset: 5248)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1152, file: !1153, line: 852, baseType: !1151, size: 64, offset: 5312)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1152, file: !1153, line: 857, baseType: !386, size: 128, offset: 5376)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1152, file: !1153, line: 858, baseType: !386, size: 128, offset: 5504)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1152, file: !1153, line: 859, baseType: !1151, size: 64, offset: 5632)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1152, file: !1153, line: 867, baseType: !386, size: 128, offset: 5696)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1152, file: !1153, line: 868, baseType: !386, size: 128, offset: 5824)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1152, file: !1153, line: 871, baseType: !1402, size: 64, offset: 5952)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !1404)
!1404 = !{!1405, !1406, !1407, !1408, !1410, !1411, !1418, !1419}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1403, file: !40, line: 61, baseType: !1165, size: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1403, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1403, file: !40, line: 63, baseType: !370, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1403, file: !40, line: 65, baseType: !1409, size: 256, offset: 64)
!1409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !683, size: 256, elements: !180)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1403, file: !40, line: 66, baseType: !683, size: 64, offset: 320)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1403, file: !40, line: 68, baseType: !1412, size: 128, offset: 384)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1413, line: 40, baseType: !1414)
!1413 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1413, line: 36, size: 128, elements: !1415)
!1415 = !{!1416, !1417}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1414, file: !1413, line: 37, baseType: !370)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1414, file: !1413, line: 38, baseType: !386, size: 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1403, file: !40, line: 69, baseType: !408, size: 128, align: 64, offset: 512)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1403, file: !40, line: 70, baseType: !1420, size: 128, offset: 640)
!1420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1421, size: 128, elements: !216)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !1422)
!1422 = !{!1423, !1424}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1421, file: !40, line: 55, baseType: !166, size: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1421, file: !40, line: 56, baseType: !1425, size: 64, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1152, file: !1153, line: 872, baseType: !1428, size: 512, offset: 6016)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, size: 512, elements: !180)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1152, file: !1153, line: 873, baseType: !386, size: 128, offset: 6528)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1152, file: !1153, line: 874, baseType: !386, size: 128, offset: 6656)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1152, file: !1153, line: 876, baseType: !1432, size: 64, offset: 6784)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1434, line: 26, size: 192, elements: !1435)
!1434 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1433, file: !1434, line: 27, baseType: !7, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1433, file: !1434, line: 28, baseType: !1438, size: 128, offset: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1439, line: 43, size: 128, elements: !1440)
!1439 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1440 = !{!1441, !1442}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1438, file: !1439, line: 44, baseType: !823)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1438, file: !1439, line: 45, baseType: !386, size: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1152, file: !1153, line: 879, baseType: !755, size: 64, offset: 6848)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1152, file: !1153, line: 882, baseType: !755, size: 64, offset: 6912)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1152, file: !1153, line: 884, baseType: !461, size: 64, offset: 6976)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1152, file: !1153, line: 885, baseType: !461, size: 64, offset: 7040)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1152, file: !1153, line: 890, baseType: !461, size: 64, offset: 7104)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1152, file: !1153, line: 891, baseType: !1449, size: 128, offset: 7168)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1153, line: 242, size: 128, elements: !1450)
!1450 = !{!1451, !1452, !1453}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1449, file: !1153, line: 244, baseType: !461, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1449, file: !1153, line: 245, baseType: !461, size: 64, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1449, file: !1153, line: 246, baseType: !823, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1152, file: !1153, line: 900, baseType: !215, size: 64, offset: 7296)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1152, file: !1153, line: 901, baseType: !215, size: 64, offset: 7360)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1152, file: !1153, line: 904, baseType: !461, size: 64, offset: 7424)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1152, file: !1153, line: 907, baseType: !461, size: 64, offset: 7488)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1152, file: !1153, line: 910, baseType: !215, size: 64, offset: 7552)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1152, file: !1153, line: 911, baseType: !215, size: 64, offset: 7616)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1152, file: !1153, line: 914, baseType: !1461, size: 640, offset: 7680)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1462, line: 123, size: 640, elements: !1463)
!1462 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1463 = !{!1464, !1470, !1471}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1461, file: !1462, line: 124, baseType: !1465, size: 576)
!1465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1466, size: 576, elements: !699)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1462, line: 108, size: 192, elements: !1467)
!1467 = !{!1468, !1469}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1466, file: !1462, line: 109, baseType: !461, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1466, file: !1462, line: 110, baseType: !1278, size: 128, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1461, file: !1462, line: 125, baseType: !7, size: 32, offset: 576)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1461, file: !1462, line: 126, baseType: !7, size: 32, offset: 608)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1152, file: !1153, line: 917, baseType: !1473, size: 192, offset: 8320)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1462, line: 134, size: 192, elements: !1474)
!1474 = !{!1475, !1476}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1473, file: !1462, line: 135, baseType: !408, size: 128, align: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1473, file: !1462, line: 136, baseType: !7, size: 32, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1152, file: !1153, line: 923, baseType: !1478, size: 64, offset: 8512)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1480)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1481, line: 111, size: 1280, elements: !1482)
!1481 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1482 = !{!1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1500, !1501, !1502, !1503, !1504, !1505, !1612, !1613, !1614, !1615, !1641, !1644, !1654}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1480, file: !1481, line: 112, baseType: !797, size: 32)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1480, file: !1481, line: 120, baseType: !475, size: 32, offset: 32)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1480, file: !1481, line: 121, baseType: !484, size: 32, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1480, file: !1481, line: 122, baseType: !475, size: 32, offset: 96)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1480, file: !1481, line: 123, baseType: !484, size: 32, offset: 128)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1480, file: !1481, line: 124, baseType: !475, size: 32, offset: 160)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1480, file: !1481, line: 125, baseType: !484, size: 32, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1480, file: !1481, line: 126, baseType: !475, size: 32, offset: 224)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1480, file: !1481, line: 127, baseType: !484, size: 32, offset: 256)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1480, file: !1481, line: 128, baseType: !7, size: 32, offset: 288)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1480, file: !1481, line: 129, baseType: !1494, size: 64, offset: 320)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1495, line: 26, baseType: !1496)
!1495 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1495, line: 24, size: 64, elements: !1497)
!1497 = !{!1498}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1496, file: !1495, line: 25, baseType: !1499, size: 64)
!1499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 64, elements: !230)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1480, file: !1481, line: 130, baseType: !1494, size: 64, offset: 384)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1480, file: !1481, line: 131, baseType: !1494, size: 64, offset: 448)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1480, file: !1481, line: 132, baseType: !1494, size: 64, offset: 512)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1480, file: !1481, line: 133, baseType: !1494, size: 64, offset: 576)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1480, file: !1481, line: 135, baseType: !174, size: 8, offset: 640)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1480, file: !1481, line: 137, baseType: !1506, size: 64, offset: 704)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1508, line: 189, size: 1664, elements: !1509)
!1508 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1509 = !{!1510, !1511, !1514, !1519, !1520, !1523, !1524, !1529, !1530, !1531, !1532, !1534, !1535, !1536, !1537, !1538, !1576, !1597}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1507, file: !1508, line: 190, baseType: !1165, size: 32)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1507, file: !1508, line: 191, baseType: !1512, size: 32, offset: 32)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1508, line: 28, baseType: !1513)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !143, line: 98, baseType: !1375)
!1514 = !DIDerivedType(tag: DW_TAG_member, scope: !1507, file: !1508, line: 192, baseType: !1515, size: 192, offset: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1507, file: !1508, line: 192, size: 192, elements: !1516)
!1516 = !{!1517, !1518}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1515, file: !1508, line: 193, baseType: !386, size: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1515, file: !1508, line: 194, baseType: !810, size: 192, align: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1507, file: !1508, line: 199, baseType: !817, size: 256, offset: 256)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1507, file: !1508, line: 200, baseType: !1521, size: 64, offset: 512)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1508, line: 200, flags: DIFlagFwdDecl)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1507, file: !1508, line: 201, baseType: !144, size: 64, offset: 576)
!1524 = !DIDerivedType(tag: DW_TAG_member, scope: !1507, file: !1508, line: 202, baseType: !1525, size: 64, offset: 640)
!1525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1507, file: !1508, line: 202, size: 64, elements: !1526)
!1526 = !{!1527, !1528}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1525, file: !1508, line: 203, baseType: !578, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1525, file: !1508, line: 204, baseType: !578, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1507, file: !1508, line: 206, baseType: !578, size: 64, offset: 704)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1507, file: !1508, line: 207, baseType: !475, size: 32, offset: 768)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1507, file: !1508, line: 208, baseType: !484, size: 32, offset: 800)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1507, file: !1508, line: 209, baseType: !1533, size: 32, offset: 832)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1508, line: 31, baseType: !598)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1507, file: !1508, line: 210, baseType: !209, size: 16, offset: 864)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1507, file: !1508, line: 211, baseType: !209, size: 16, offset: 880)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1507, file: !1508, line: 215, baseType: !275, size: 16, offset: 896)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1507, file: !1508, line: 222, baseType: !215, size: 64, offset: 960)
!1538 = !DIDerivedType(tag: DW_TAG_member, scope: !1507, file: !1508, line: 239, baseType: !1539, size: 320, offset: 1024)
!1539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1507, file: !1508, line: 239, size: 320, elements: !1540)
!1540 = !{!1541, !1568}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1539, file: !1508, line: 240, baseType: !1542, size: 320)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1508, line: 108, size: 320, elements: !1543)
!1543 = !{!1544, !1545, !1557, !1560, !1567}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1542, file: !1508, line: 110, baseType: !215, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, scope: !1542, file: !1508, line: 111, baseType: !1546, size: 64, offset: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1542, file: !1508, line: 111, size: 64, elements: !1547)
!1547 = !{!1548, !1556}
!1548 = !DIDerivedType(tag: DW_TAG_member, scope: !1546, file: !1508, line: 112, baseType: !1549, size: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1546, file: !1508, line: 112, size: 64, elements: !1550)
!1550 = !{!1551, !1552}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1549, file: !1508, line: 114, baseType: !346, size: 16)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1549, file: !1508, line: 115, baseType: !1553, size: 48, offset: 16)
!1553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 48, elements: !1554)
!1554 = !{!1555}
!1555 = !DISubrange(count: 6)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1546, file: !1508, line: 121, baseType: !215, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1542, file: !1508, line: 123, baseType: !1558, size: 64, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1508, line: 96, flags: DIFlagFwdDecl)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1542, file: !1508, line: 124, baseType: !1561, size: 64, offset: 192)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1508, line: 102, size: 192, elements: !1563)
!1563 = !{!1564, !1565, !1566}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1562, file: !1508, line: 103, baseType: !408, size: 128, align: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1562, file: !1508, line: 104, baseType: !1165, size: 32, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1562, file: !1508, line: 105, baseType: !153, size: 8, offset: 160)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1542, file: !1508, line: 125, baseType: !148, size: 64, offset: 256)
!1568 = !DIDerivedType(tag: DW_TAG_member, scope: !1539, file: !1508, line: 241, baseType: !1569, size: 320)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1539, file: !1508, line: 241, size: 320, elements: !1570)
!1570 = !{!1571, !1572, !1573, !1574, !1575}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1569, file: !1508, line: 242, baseType: !215, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1569, file: !1508, line: 243, baseType: !215, size: 64, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1569, file: !1508, line: 244, baseType: !1558, size: 64, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1569, file: !1508, line: 245, baseType: !1561, size: 64, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1569, file: !1508, line: 246, baseType: !527, size: 64, offset: 256)
!1576 = !DIDerivedType(tag: DW_TAG_member, scope: !1507, file: !1508, line: 254, baseType: !1577, size: 256, offset: 1344)
!1577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1507, file: !1508, line: 254, size: 256, elements: !1578)
!1578 = !{!1579, !1585}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1577, file: !1508, line: 255, baseType: !1580, size: 256)
!1580 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1508, line: 128, size: 256, elements: !1581)
!1581 = !{!1582, !1583}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1580, file: !1508, line: 129, baseType: !144, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1580, file: !1508, line: 130, baseType: !1584, size: 256)
!1584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 256, elements: !180)
!1585 = !DIDerivedType(tag: DW_TAG_member, scope: !1577, file: !1508, line: 256, baseType: !1586, size: 256)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1577, file: !1508, line: 256, size: 256, elements: !1587)
!1587 = !{!1588, !1589}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1586, file: !1508, line: 258, baseType: !386, size: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1586, file: !1508, line: 259, baseType: !1590, size: 128, offset: 128)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1591, line: 22, size: 128, elements: !1592)
!1591 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1592 = !{!1593, !1596}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1590, file: !1591, line: 23, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1591, line: 23, flags: DIFlagFwdDecl)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1590, file: !1591, line: 24, baseType: !215, size: 64, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1507, file: !1508, line: 274, baseType: !1598, size: 64, offset: 1600)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1508, line: 170, size: 192, elements: !1600)
!1600 = !{!1601, !1610, !1611}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1599, file: !1508, line: 171, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1508, line: 165, baseType: !1603)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!166, !1506, !1606, !1608, !1506}
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1559)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1580)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1599, file: !1508, line: 172, baseType: !1506, size: 64, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1599, file: !1508, line: 173, baseType: !1558, size: 64, offset: 128)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1480, file: !1481, line: 138, baseType: !1506, size: 64, offset: 768)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1480, file: !1481, line: 139, baseType: !1506, size: 64, offset: 832)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1480, file: !1481, line: 140, baseType: !1506, size: 64, offset: 896)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1480, file: !1481, line: 145, baseType: !1616, size: 64, offset: 960)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1618, line: 13, size: 896, elements: !1619)
!1618 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1619 = !{!1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1617, file: !1618, line: 14, baseType: !1165, size: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1617, file: !1618, line: 15, baseType: !797, size: 32, offset: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1617, file: !1618, line: 16, baseType: !797, size: 32, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1617, file: !1618, line: 21, baseType: !360, size: 64, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1617, file: !1618, line: 27, baseType: !215, size: 64, offset: 192)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1617, file: !1618, line: 28, baseType: !215, size: 64, offset: 256)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1617, file: !1618, line: 29, baseType: !360, size: 64, offset: 320)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1617, file: !1618, line: 32, baseType: !687, size: 128, offset: 384)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1617, file: !1618, line: 33, baseType: !475, size: 32, offset: 512)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1617, file: !1618, line: 37, baseType: !360, size: 64, offset: 576)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1617, file: !1618, line: 44, baseType: !1631, size: 256, offset: 640)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1632, line: 15, size: 256, elements: !1633)
!1632 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1633 = !{!1634, !1635, !1636, !1637, !1638, !1639, !1640}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1631, file: !1632, line: 16, baseType: !823)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1631, file: !1632, line: 18, baseType: !166, size: 32)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1631, file: !1632, line: 19, baseType: !166, size: 32, offset: 32)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1631, file: !1632, line: 20, baseType: !166, size: 32, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1631, file: !1632, line: 21, baseType: !166, size: 32, offset: 96)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1631, file: !1632, line: 22, baseType: !215, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1631, file: !1632, line: 23, baseType: !215, size: 64, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1480, file: !1481, line: 146, baseType: !1642, size: 64, offset: 1024)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !476, line: 18, flags: DIFlagFwdDecl)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1480, file: !1481, line: 147, baseType: !1645, size: 64, offset: 1088)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1481, line: 25, size: 64, elements: !1647)
!1647 = !{!1648, !1649, !1650}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1646, file: !1481, line: 26, baseType: !797, size: 32)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1646, file: !1481, line: 27, baseType: !166, size: 32, offset: 32)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1646, file: !1481, line: 28, baseType: !1651, offset: 64)
!1651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, elements: !1652)
!1652 = !{!1653}
!1653 = !DISubrange(count: 0)
!1654 = !DIDerivedType(tag: DW_TAG_member, scope: !1480, file: !1481, line: 149, baseType: !1655, size: 128, offset: 1152)
!1655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1480, file: !1481, line: 149, size: 128, elements: !1656)
!1656 = !{!1657, !1658}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1655, file: !1481, line: 150, baseType: !166, size: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1655, file: !1481, line: 151, baseType: !408, size: 128, align: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1152, file: !1153, line: 926, baseType: !1478, size: 64, offset: 8576)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1152, file: !1153, line: 929, baseType: !1478, size: 64, offset: 8640)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1152, file: !1153, line: 933, baseType: !1506, size: 64, offset: 8704)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1152, file: !1153, line: 943, baseType: !1663, size: 128, offset: 8768)
!1663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 128, elements: !1664)
!1664 = !{!1665}
!1665 = !DISubrange(count: 16)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1152, file: !1153, line: 945, baseType: !1667, size: 64, offset: 8896)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1153, line: 49, flags: DIFlagFwdDecl)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1152, file: !1153, line: 956, baseType: !1670, size: 64, offset: 8960)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1153, line: 45, flags: DIFlagFwdDecl)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1152, file: !1153, line: 959, baseType: !1673, size: 64, offset: 9024)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1153, line: 959, flags: DIFlagFwdDecl)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1152, file: !1153, line: 962, baseType: !1676, size: 64, offset: 9088)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1153, line: 66, flags: DIFlagFwdDecl)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1152, file: !1153, line: 966, baseType: !1679, size: 64, offset: 9152)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1153, line: 50, flags: DIFlagFwdDecl)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1152, file: !1153, line: 969, baseType: !1682, size: 64, offset: 9216)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1684, line: 82, size: 7296, elements: !1685)
!1684 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1685 = !{!1686, !1687, !1688, !1689, !1690, !1691, !1692, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1721, !1730, !1731, !1733, !1734, !1735, !1738, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1768, !1769, !1776, !1777, !1778, !1779, !1780, !1781}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1683, file: !1684, line: 83, baseType: !1165, size: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1683, file: !1684, line: 84, baseType: !797, size: 32, offset: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1683, file: !1684, line: 85, baseType: !166, size: 32, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1683, file: !1684, line: 86, baseType: !386, size: 128, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1683, file: !1684, line: 88, baseType: !1412, size: 128, offset: 256)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1683, file: !1684, line: 91, baseType: !1151, size: 64, offset: 384)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1683, file: !1684, line: 94, baseType: !1693, size: 192, offset: 448)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1694, line: 30, size: 192, elements: !1695)
!1694 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1695 = !{!1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1693, file: !1694, line: 31, baseType: !386, size: 128)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1693, file: !1694, line: 32, baseType: !1698, size: 64, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1699, line: 25, baseType: !1700)
!1699 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1699, line: 23, size: 64, elements: !1701)
!1701 = !{!1702}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1700, file: !1699, line: 24, baseType: !214, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1683, file: !1684, line: 97, baseType: !683, size: 64, offset: 640)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1683, file: !1684, line: 100, baseType: !166, size: 32, offset: 704)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1683, file: !1684, line: 106, baseType: !166, size: 32, offset: 736)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1683, file: !1684, line: 107, baseType: !1151, size: 64, offset: 768)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1683, file: !1684, line: 110, baseType: !166, size: 32, offset: 832)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1683, file: !1684, line: 111, baseType: !7, size: 32, offset: 864)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1683, file: !1684, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1683, file: !1684, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1683, file: !1684, line: 128, baseType: !166, size: 32, offset: 928)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1683, file: !1684, line: 129, baseType: !386, size: 128, offset: 960)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1683, file: !1684, line: 132, baseType: !1227, size: 512, offset: 1088)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1683, file: !1684, line: 133, baseType: !1235, size: 64, offset: 1600)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1683, file: !1684, line: 140, baseType: !1716, size: 256, offset: 1664)
!1716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1717, size: 256, elements: !230)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1684, line: 38, size: 128, elements: !1718)
!1718 = !{!1719, !1720}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1717, file: !1684, line: 39, baseType: !461, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1717, file: !1684, line: 40, baseType: !461, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1683, file: !1684, line: 146, baseType: !1722, size: 192, offset: 1920)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1684, line: 66, size: 192, elements: !1723)
!1723 = !{!1724}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1722, file: !1684, line: 67, baseType: !1725, size: 192)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1684, line: 47, size: 192, elements: !1726)
!1726 = !{!1727, !1728, !1729}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1725, file: !1684, line: 48, baseType: !362, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1725, file: !1684, line: 49, baseType: !362, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1725, file: !1684, line: 50, baseType: !362, size: 64, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1683, file: !1684, line: 150, baseType: !1461, size: 640, offset: 2112)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1683, file: !1684, line: 153, baseType: !1732, size: 256, offset: 2752)
!1732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1402, size: 256, elements: !180)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1683, file: !1684, line: 159, baseType: !1402, size: 64, offset: 3008)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1683, file: !1684, line: 162, baseType: !166, size: 32, offset: 3072)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1683, file: !1684, line: 164, baseType: !1736, size: 64, offset: 3136)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1684, line: 164, flags: DIFlagFwdDecl)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1683, file: !1684, line: 175, baseType: !1739, size: 32, offset: 3200)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !431, line: 805, baseType: !1740)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !431, line: 798, size: 32, elements: !1741)
!1741 = !{!1742, !1743}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1740, file: !431, line: 803, baseType: !430, size: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1740, file: !431, line: 804, baseType: !370, offset: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1683, file: !1684, line: 176, baseType: !461, size: 64, offset: 3264)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1683, file: !1684, line: 176, baseType: !461, size: 64, offset: 3328)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1683, file: !1684, line: 176, baseType: !461, size: 64, offset: 3392)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1683, file: !1684, line: 176, baseType: !461, size: 64, offset: 3456)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1683, file: !1684, line: 177, baseType: !461, size: 64, offset: 3520)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1683, file: !1684, line: 178, baseType: !461, size: 64, offset: 3584)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1683, file: !1684, line: 179, baseType: !1449, size: 128, offset: 3648)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1683, file: !1684, line: 180, baseType: !215, size: 64, offset: 3776)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1683, file: !1684, line: 180, baseType: !215, size: 64, offset: 3840)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1683, file: !1684, line: 180, baseType: !215, size: 64, offset: 3904)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1683, file: !1684, line: 180, baseType: !215, size: 64, offset: 3968)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1683, file: !1684, line: 181, baseType: !215, size: 64, offset: 4032)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1683, file: !1684, line: 181, baseType: !215, size: 64, offset: 4096)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1683, file: !1684, line: 181, baseType: !215, size: 64, offset: 4160)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1683, file: !1684, line: 181, baseType: !215, size: 64, offset: 4224)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1683, file: !1684, line: 182, baseType: !215, size: 64, offset: 4288)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1683, file: !1684, line: 182, baseType: !215, size: 64, offset: 4352)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1683, file: !1684, line: 182, baseType: !215, size: 64, offset: 4416)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1683, file: !1684, line: 182, baseType: !215, size: 64, offset: 4480)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1683, file: !1684, line: 183, baseType: !215, size: 64, offset: 4544)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1683, file: !1684, line: 183, baseType: !215, size: 64, offset: 4608)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1683, file: !1684, line: 184, baseType: !1766, offset: 4672)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1767, line: 12, elements: !384)
!1767 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1683, file: !1684, line: 192, baseType: !463, size: 64, offset: 4672)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1683, file: !1684, line: 203, baseType: !1770, size: 2048, offset: 4736)
!1770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1771, size: 2048, elements: !1664)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1772, line: 43, size: 128, elements: !1773)
!1772 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1773 = !{!1774, !1775}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1771, file: !1772, line: 44, baseType: !622, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1771, file: !1772, line: 45, baseType: !622, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1683, file: !1684, line: 220, baseType: !153, size: 8, offset: 6784)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1683, file: !1684, line: 221, baseType: !275, size: 16, offset: 6800)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1683, file: !1684, line: 222, baseType: !275, size: 16, offset: 6816)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1683, file: !1684, line: 224, baseType: !1015, size: 64, offset: 6848)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1683, file: !1684, line: 227, baseType: !356, size: 192, offset: 6912)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1683, file: !1684, line: 233, baseType: !356, size: 192, offset: 7104)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1152, file: !1153, line: 970, baseType: !1783, size: 64, offset: 9280)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1684, line: 20, size: 16576, elements: !1785)
!1785 = !{!1786, !1787, !1788, !1789}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1784, file: !1684, line: 21, baseType: !370)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1784, file: !1684, line: 22, baseType: !1165, size: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1784, file: !1684, line: 23, baseType: !1412, size: 128, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1784, file: !1684, line: 24, baseType: !1790, size: 16384, offset: 192)
!1790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1791, size: 16384, elements: !1811)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1694, line: 49, size: 256, elements: !1792)
!1792 = !{!1793}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1791, file: !1694, line: 50, baseType: !1794, size: 256)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1694, line: 35, size: 256, elements: !1795)
!1795 = !{!1796, !1803, !1804, !1810}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1794, file: !1694, line: 37, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1798, line: 19, baseType: !1799)
!1798 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1798, line: 18, baseType: !1801)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{null, !166}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1794, file: !1694, line: 38, baseType: !215, size: 64, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1794, file: !1694, line: 44, baseType: !1805, size: 64, offset: 128)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1798, line: 22, baseType: !1806)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1798, line: 21, baseType: !1808)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{null}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1794, file: !1694, line: 46, baseType: !1698, size: 64, offset: 192)
!1811 = !{!1812}
!1812 = !DISubrange(count: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1152, file: !1153, line: 971, baseType: !1698, size: 64, offset: 9344)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1152, file: !1153, line: 972, baseType: !1698, size: 64, offset: 9408)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1152, file: !1153, line: 974, baseType: !1698, size: 64, offset: 9472)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1152, file: !1153, line: 975, baseType: !1693, size: 192, offset: 9536)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1152, file: !1153, line: 976, baseType: !215, size: 64, offset: 9728)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1152, file: !1153, line: 977, baseType: !620, size: 64, offset: 9792)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1152, file: !1153, line: 978, baseType: !7, size: 32, offset: 9856)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1152, file: !1153, line: 980, baseType: !411, size: 64, offset: 9920)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1152, file: !1153, line: 989, baseType: !1822, size: 128, offset: 9984)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1823, line: 35, size: 128, elements: !1824)
!1823 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1824 = !{!1825, !1826, !1827}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1822, file: !1823, line: 36, baseType: !166, size: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1822, file: !1823, line: 37, baseType: !797, size: 32, offset: 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1822, file: !1823, line: 38, baseType: !1828, size: 64, offset: 64)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1823, line: 23, flags: DIFlagFwdDecl)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1152, file: !1153, line: 992, baseType: !461, size: 64, offset: 10112)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1152, file: !1153, line: 993, baseType: !461, size: 64, offset: 10176)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1152, file: !1153, line: 996, baseType: !370, offset: 10240)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1152, file: !1153, line: 999, baseType: !823, offset: 10240)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1152, file: !1153, line: 1001, baseType: !1835, size: 64, offset: 10240)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1153, line: 636, size: 64, elements: !1836)
!1836 = !{!1837}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1835, file: !1153, line: 637, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1152, file: !1153, line: 1005, baseType: !802, size: 128, offset: 10304)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1152, file: !1153, line: 1007, baseType: !1151, size: 64, offset: 10432)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1152, file: !1153, line: 1009, baseType: !1842, size: 64, offset: 10496)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1153, line: 1009, flags: DIFlagFwdDecl)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1152, file: !1153, line: 1043, baseType: !144, size: 64, offset: 10560)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1152, file: !1153, line: 1046, baseType: !1846, size: 64, offset: 10624)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1153, line: 41, flags: DIFlagFwdDecl)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1152, file: !1153, line: 1050, baseType: !1849, size: 64, offset: 10688)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1153, line: 42, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1152, file: !1153, line: 1054, baseType: !1852, size: 64, offset: 10752)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1153, line: 55, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1152, file: !1153, line: 1056, baseType: !1855, size: 64, offset: 10816)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1153, line: 40, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1152, file: !1153, line: 1058, baseType: !1858, size: 64, offset: 10880)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1860, line: 99, size: 704, elements: !1861)
!1860 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1861 = !{!1862, !1863, !1864, !1865, !1866, !1867, !1868, !1887, !1888}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1859, file: !1860, line: 100, baseType: !360, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1859, file: !1860, line: 101, baseType: !797, size: 32, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1859, file: !1860, line: 102, baseType: !797, size: 32, offset: 96)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1859, file: !1860, line: 105, baseType: !370, offset: 128)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1859, file: !1860, line: 107, baseType: !209, size: 16, offset: 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1859, file: !1860, line: 109, baseType: !789, size: 128, offset: 192)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1859, file: !1860, line: 110, baseType: !1869, size: 64, offset: 320)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1860, line: 73, size: 448, elements: !1871)
!1871 = !{!1872, !1875, !1876, !1881, !1886}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1870, file: !1860, line: 74, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1860, line: 74, flags: DIFlagFwdDecl)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1870, file: !1860, line: 75, baseType: !1858, size: 64, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, scope: !1870, file: !1860, line: 83, baseType: !1877, size: 128, offset: 128)
!1877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1870, file: !1860, line: 83, size: 128, elements: !1878)
!1878 = !{!1879, !1880}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1877, file: !1860, line: 84, baseType: !386, size: 128)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1877, file: !1860, line: 85, baseType: !976, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, scope: !1870, file: !1860, line: 87, baseType: !1882, size: 128, offset: 256)
!1882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1870, file: !1860, line: 87, size: 128, elements: !1883)
!1883 = !{!1884, !1885}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1882, file: !1860, line: 88, baseType: !687, size: 128)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1882, file: !1860, line: 89, baseType: !408, size: 128, align: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1870, file: !1860, line: 92, baseType: !7, size: 32, offset: 384)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1859, file: !1860, line: 111, baseType: !683, size: 64, offset: 384)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1859, file: !1860, line: 113, baseType: !1889, size: 256, offset: 448)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1890, line: 102, size: 256, elements: !1891)
!1890 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1891 = !{!1892, !1893, !1894}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1889, file: !1890, line: 103, baseType: !360, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1889, file: !1890, line: 104, baseType: !386, size: 128, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1889, file: !1890, line: 105, baseType: !1895, size: 64, offset: 192)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1890, line: 21, baseType: !1896)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{null, !1899}
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1152, file: !1153, line: 1061, baseType: !1901, size: 64, offset: 10944)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1153, line: 43, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1152, file: !1153, line: 1064, baseType: !215, size: 64, offset: 11008)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1152, file: !1153, line: 1065, baseType: !1905, size: 64, offset: 11072)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1694, line: 14, baseType: !1907)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1694, line: 12, size: 384, elements: !1908)
!1908 = !{!1909}
!1909 = !DIDerivedType(tag: DW_TAG_member, scope: !1907, file: !1694, line: 13, baseType: !1910, size: 384)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1907, file: !1694, line: 13, size: 384, elements: !1911)
!1911 = !{!1912, !1913, !1914, !1915}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1910, file: !1694, line: 13, baseType: !166, size: 32)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1910, file: !1694, line: 13, baseType: !166, size: 32, offset: 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1910, file: !1694, line: 13, baseType: !166, size: 32, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1910, file: !1694, line: 13, baseType: !1916, size: 256, offset: 128)
!1916 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1917, line: 32, size: 256, elements: !1918)
!1917 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1918 = !{!1919, !1924, !1937, !1943, !1952, !1972, !1977}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1916, file: !1917, line: 37, baseType: !1920, size: 64)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1916, file: !1917, line: 34, size: 64, elements: !1921)
!1921 = !{!1922, !1923}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1920, file: !1917, line: 35, baseType: !1391, size: 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1920, file: !1917, line: 36, baseType: !481, size: 32, offset: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1916, file: !1917, line: 45, baseType: !1925, size: 192)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1916, file: !1917, line: 40, size: 192, elements: !1926)
!1926 = !{!1927, !1929, !1930, !1936}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1925, file: !1917, line: 41, baseType: !1928, size: 32)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !482, line: 95, baseType: !166)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1925, file: !1917, line: 42, baseType: !166, size: 32, offset: 32)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1925, file: !1917, line: 43, baseType: !1931, size: 64, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1917, line: 11, baseType: !1932)
!1932 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1917, line: 8, size: 64, elements: !1933)
!1933 = !{!1934, !1935}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1932, file: !1917, line: 9, baseType: !166, size: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1932, file: !1917, line: 10, baseType: !144, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1925, file: !1917, line: 44, baseType: !166, size: 32, offset: 128)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1916, file: !1917, line: 52, baseType: !1938, size: 128)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1916, file: !1917, line: 48, size: 128, elements: !1939)
!1939 = !{!1940, !1941, !1942}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1938, file: !1917, line: 49, baseType: !1391, size: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1938, file: !1917, line: 50, baseType: !481, size: 32, offset: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1938, file: !1917, line: 51, baseType: !1931, size: 64, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1916, file: !1917, line: 61, baseType: !1944, size: 256)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1916, file: !1917, line: 55, size: 256, elements: !1945)
!1945 = !{!1946, !1947, !1948, !1949, !1951}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1944, file: !1917, line: 56, baseType: !1391, size: 32)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1944, file: !1917, line: 57, baseType: !481, size: 32, offset: 32)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1944, file: !1917, line: 58, baseType: !166, size: 32, offset: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1944, file: !1917, line: 59, baseType: !1950, size: 64, offset: 128)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !482, line: 94, baseType: !619)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1944, file: !1917, line: 60, baseType: !1950, size: 64, offset: 192)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1916, file: !1917, line: 95, baseType: !1953, size: 256)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1916, file: !1917, line: 64, size: 256, elements: !1954)
!1954 = !{!1955, !1956}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1953, file: !1917, line: 65, baseType: !144, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, scope: !1953, file: !1917, line: 77, baseType: !1957, size: 192, offset: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1953, file: !1917, line: 77, size: 192, elements: !1958)
!1958 = !{!1959, !1960, !1967}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1957, file: !1917, line: 82, baseType: !275, size: 16)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1957, file: !1917, line: 88, baseType: !1961, size: 192)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1957, file: !1917, line: 84, size: 192, elements: !1962)
!1962 = !{!1963, !1965, !1966}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1961, file: !1917, line: 85, baseType: !1964, size: 64)
!1964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 64, elements: !1265)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1961, file: !1917, line: 86, baseType: !144, size: 64, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1961, file: !1917, line: 87, baseType: !144, size: 64, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1957, file: !1917, line: 93, baseType: !1968, size: 96)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1957, file: !1917, line: 90, size: 96, elements: !1969)
!1969 = !{!1970, !1971}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1968, file: !1917, line: 91, baseType: !1964, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1968, file: !1917, line: 92, baseType: !250, size: 32, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1916, file: !1917, line: 101, baseType: !1973, size: 128)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1916, file: !1917, line: 98, size: 128, elements: !1974)
!1974 = !{!1975, !1976}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1973, file: !1917, line: 99, baseType: !580, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1973, file: !1917, line: 100, baseType: !166, size: 32, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1916, file: !1917, line: 108, baseType: !1978, size: 128)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1916, file: !1917, line: 104, size: 128, elements: !1979)
!1979 = !{!1980, !1981, !1982}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1978, file: !1917, line: 105, baseType: !144, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1978, file: !1917, line: 106, baseType: !166, size: 32, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1978, file: !1917, line: 107, baseType: !7, size: 32, offset: 96)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1152, file: !1153, line: 1067, baseType: !1766, offset: 11136)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1152, file: !1153, line: 1099, baseType: !1985, size: 64, offset: 11136)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1153, line: 56, flags: DIFlagFwdDecl)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1152, file: !1153, line: 1103, baseType: !386, size: 128, offset: 11200)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1152, file: !1153, line: 1104, baseType: !1989, size: 64, offset: 11328)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1153, line: 46, flags: DIFlagFwdDecl)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1152, file: !1153, line: 1105, baseType: !356, size: 192, offset: 11392)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1152, file: !1153, line: 1106, baseType: !7, size: 32, offset: 11584)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1152, file: !1153, line: 1109, baseType: !1994, size: 128, offset: 11648)
!1994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1995, size: 128, elements: !230)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1153, line: 51, flags: DIFlagFwdDecl)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1152, file: !1153, line: 1110, baseType: !356, size: 192, offset: 11776)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1152, file: !1153, line: 1111, baseType: !386, size: 128, offset: 11968)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1152, file: !1153, line: 1173, baseType: !2000, size: 64, offset: 12096)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2002, line: 62, size: 256, align: 256, elements: !2003)
!2002 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2003 = !{!2004, !2005, !2006, !2011}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2001, file: !2002, line: 75, baseType: !250, size: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2001, file: !2002, line: 90, baseType: !250, size: 32, offset: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2001, file: !2002, line: 124, baseType: !2007, size: 64, offset: 64)
!2007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2001, file: !2002, line: 109, size: 64, elements: !2008)
!2008 = !{!2009, !2010}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2007, file: !2002, line: 110, baseType: !462, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2007, file: !2002, line: 112, baseType: !462, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2001, file: !2002, line: 144, baseType: !250, size: 32, offset: 128)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1152, file: !1153, line: 1174, baseType: !458, size: 32, offset: 12160)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1152, file: !1153, line: 1179, baseType: !215, size: 64, offset: 12224)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1152, file: !1153, line: 1182, baseType: !2015, size: 128, offset: 12288)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1112, line: 76, size: 128, elements: !2016)
!2016 = !{!2017, !2022, !2023}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2015, file: !1112, line: 85, baseType: !2018, size: 64)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2019, line: 7, size: 64, elements: !2020)
!2019 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2020 = !{!2021}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2018, file: !2019, line: 12, baseType: !1301, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2015, file: !1112, line: 88, baseType: !153, size: 8, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2015, file: !1112, line: 95, baseType: !153, size: 8, offset: 72)
!2024 = !DIDerivedType(tag: DW_TAG_member, scope: !1152, file: !1153, line: 1184, baseType: !2025, size: 128, offset: 12416)
!2025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1152, file: !1153, line: 1184, size: 128, elements: !2026)
!2026 = !{!2027, !2028}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2025, file: !1153, line: 1185, baseType: !1165, size: 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2025, file: !1153, line: 1186, baseType: !408, size: 128, align: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1152, file: !1153, line: 1190, baseType: !2030, size: 64, offset: 12544)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1153, line: 53, flags: DIFlagFwdDecl)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1152, file: !1153, line: 1192, baseType: !2033, size: 128, offset: 12608)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1112, line: 64, size: 128, elements: !2034)
!2034 = !{!2035, !2036, !2037}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2033, file: !1112, line: 65, baseType: !771, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2033, file: !1112, line: 67, baseType: !250, size: 32, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2033, file: !1112, line: 68, baseType: !250, size: 32, offset: 96)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1152, file: !1153, line: 1206, baseType: !166, size: 32, offset: 12736)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1152, file: !1153, line: 1207, baseType: !166, size: 32, offset: 12768)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1152, file: !1153, line: 1209, baseType: !215, size: 64, offset: 12800)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1152, file: !1153, line: 1219, baseType: !461, size: 64, offset: 12864)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1152, file: !1153, line: 1220, baseType: !461, size: 64, offset: 12928)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1152, file: !1153, line: 1317, baseType: !166, size: 32, offset: 12992)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1152, file: !1153, line: 1319, baseType: !1151, size: 64, offset: 13056)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1152, file: !1153, line: 1322, baseType: !2046, size: 64, offset: 13120)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1153, line: 1322, flags: DIFlagFwdDecl)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1152, file: !1153, line: 1326, baseType: !1165, size: 32, offset: 13184)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1152, file: !1153, line: 1342, baseType: !144, size: 64, offset: 13248)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1152, file: !1153, line: 1343, baseType: !462, size: 64, offset: 13312)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1152, file: !1153, line: 1344, baseType: !461, size: 64, offset: 13376)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1152, file: !1153, line: 1345, baseType: !462, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1152, file: !1153, line: 1346, baseType: !462, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1152, file: !1153, line: 1347, baseType: !462, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1152, file: !1153, line: 1348, baseType: !408, size: 128, align: 64, offset: 13504)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1152, file: !1153, line: 1358, baseType: !2057, size: 34816, offset: 13824)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2058, line: 485, size: 34816, elements: !2059)
!2058 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2059 = !{!2060, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2089, !2090, !2091, !2092, !2093, !2094, !2097, !2098, !2099}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2057, file: !2058, line: 487, baseType: !2061, size: 192)
!2061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2062, size: 192, elements: !699)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2063, line: 16, size: 64, elements: !2064)
!2063 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2064 = !{!2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2062, file: !2063, line: 17, baseType: !346, size: 16)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2062, file: !2063, line: 18, baseType: !346, size: 16, offset: 16)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2062, file: !2063, line: 19, baseType: !346, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2062, file: !2063, line: 19, baseType: !346, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2062, file: !2063, line: 19, baseType: !346, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2062, file: !2063, line: 19, baseType: !346, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2062, file: !2063, line: 19, baseType: !346, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2062, file: !2063, line: 20, baseType: !346, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2062, file: !2063, line: 20, baseType: !346, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2062, file: !2063, line: 20, baseType: !346, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2062, file: !2063, line: 20, baseType: !346, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2062, file: !2063, line: 20, baseType: !346, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2062, file: !2063, line: 20, baseType: !346, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2057, file: !2058, line: 491, baseType: !215, size: 64, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2057, file: !2058, line: 495, baseType: !209, size: 16, offset: 256)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2057, file: !2058, line: 496, baseType: !209, size: 16, offset: 272)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2057, file: !2058, line: 497, baseType: !209, size: 16, offset: 288)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2057, file: !2058, line: 498, baseType: !209, size: 16, offset: 304)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2057, file: !2058, line: 502, baseType: !215, size: 64, offset: 320)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2057, file: !2058, line: 503, baseType: !215, size: 64, offset: 384)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2057, file: !2058, line: 514, baseType: !2086, size: 256, offset: 448)
!2086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2087, size: 256, elements: !180)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2058, line: 483, flags: DIFlagFwdDecl)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2057, file: !2058, line: 516, baseType: !215, size: 64, offset: 704)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2057, file: !2058, line: 518, baseType: !215, size: 64, offset: 768)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2057, file: !2058, line: 520, baseType: !215, size: 64, offset: 832)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2057, file: !2058, line: 521, baseType: !215, size: 64, offset: 896)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2057, file: !2058, line: 522, baseType: !215, size: 64, offset: 960)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2057, file: !2058, line: 528, baseType: !2095, size: 64, offset: 1024)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2058, line: 10, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2057, file: !2058, line: 535, baseType: !215, size: 64, offset: 1088)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2057, file: !2058, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2057, file: !2058, line: 540, baseType: !2100, size: 33280, offset: 1536)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2101, line: 317, size: 33280, elements: !2102)
!2101 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2102 = !{!2103, !2104, !2105}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2100, file: !2101, line: 330, baseType: !7, size: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2100, file: !2101, line: 337, baseType: !215, size: 64, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2100, file: !2101, line: 348, baseType: !2106, size: 32768, offset: 512)
!2106 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2101, line: 304, size: 32768, elements: !2107)
!2107 = !{!2108, !2123, !2158, !2208, !2221}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2106, file: !2101, line: 305, baseType: !2109, size: 896)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2101, line: 12, size: 896, elements: !2110)
!2110 = !{!2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2122}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2109, file: !2101, line: 13, baseType: !458, size: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2109, file: !2101, line: 14, baseType: !458, size: 32, offset: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2109, file: !2101, line: 15, baseType: !458, size: 32, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2109, file: !2101, line: 16, baseType: !458, size: 32, offset: 96)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2109, file: !2101, line: 17, baseType: !458, size: 32, offset: 128)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2109, file: !2101, line: 18, baseType: !458, size: 32, offset: 160)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2109, file: !2101, line: 19, baseType: !458, size: 32, offset: 192)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2109, file: !2101, line: 22, baseType: !2119, size: 640, offset: 224)
!2119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 640, elements: !2120)
!2120 = !{!2121}
!2121 = !DISubrange(count: 20)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2109, file: !2101, line: 25, baseType: !458, size: 32, offset: 864)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2106, file: !2101, line: 306, baseType: !2124, size: 4096, align: 128)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2101, line: 34, size: 4096, align: 128, elements: !2125)
!2125 = !{!2126, !2127, !2128, !2129, !2130, !2145, !2146, !2147, !2149, !2151, !2153}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2124, file: !2101, line: 35, baseType: !346, size: 16)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2124, file: !2101, line: 36, baseType: !346, size: 16, offset: 16)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2124, file: !2101, line: 37, baseType: !346, size: 16, offset: 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2124, file: !2101, line: 38, baseType: !346, size: 16, offset: 48)
!2130 = !DIDerivedType(tag: DW_TAG_member, scope: !2124, file: !2101, line: 39, baseType: !2131, size: 128, offset: 64)
!2131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2124, file: !2101, line: 39, size: 128, elements: !2132)
!2132 = !{!2133, !2138}
!2133 = !DIDerivedType(tag: DW_TAG_member, scope: !2131, file: !2101, line: 40, baseType: !2134, size: 128)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2131, file: !2101, line: 40, size: 128, elements: !2135)
!2135 = !{!2136, !2137}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2134, file: !2101, line: 41, baseType: !461, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2134, file: !2101, line: 42, baseType: !461, size: 64, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, scope: !2131, file: !2101, line: 44, baseType: !2139, size: 128)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2131, file: !2101, line: 44, size: 128, elements: !2140)
!2140 = !{!2141, !2142, !2143, !2144}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2139, file: !2101, line: 45, baseType: !458, size: 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2139, file: !2101, line: 46, baseType: !458, size: 32, offset: 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2139, file: !2101, line: 47, baseType: !458, size: 32, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2139, file: !2101, line: 48, baseType: !458, size: 32, offset: 96)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2124, file: !2101, line: 51, baseType: !458, size: 32, offset: 192)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2124, file: !2101, line: 52, baseType: !458, size: 32, offset: 224)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2124, file: !2101, line: 55, baseType: !2148, size: 1024, offset: 256)
!2148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 1024, elements: !253)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2124, file: !2101, line: 58, baseType: !2150, size: 2048, offset: 1280)
!2150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 2048, elements: !1811)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2124, file: !2101, line: 60, baseType: !2152, size: 384, offset: 3328)
!2152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 384, elements: !221)
!2153 = !DIDerivedType(tag: DW_TAG_member, scope: !2124, file: !2101, line: 62, baseType: !2154, size: 384, offset: 3712)
!2154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2124, file: !2101, line: 62, size: 384, elements: !2155)
!2155 = !{!2156, !2157}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2154, file: !2101, line: 63, baseType: !2152, size: 384)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2154, file: !2101, line: 64, baseType: !2152, size: 384)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2106, file: !2101, line: 307, baseType: !2159, size: 1088)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2101, line: 79, size: 1088, elements: !2160)
!2160 = !{!2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2207}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2159, file: !2101, line: 80, baseType: !458, size: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2159, file: !2101, line: 81, baseType: !458, size: 32, offset: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2159, file: !2101, line: 82, baseType: !458, size: 32, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2159, file: !2101, line: 83, baseType: !458, size: 32, offset: 96)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2159, file: !2101, line: 84, baseType: !458, size: 32, offset: 128)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2159, file: !2101, line: 85, baseType: !458, size: 32, offset: 160)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2159, file: !2101, line: 86, baseType: !458, size: 32, offset: 192)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2159, file: !2101, line: 88, baseType: !2119, size: 640, offset: 224)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2159, file: !2101, line: 89, baseType: !1287, size: 8, offset: 864)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2159, file: !2101, line: 90, baseType: !1287, size: 8, offset: 872)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2159, file: !2101, line: 91, baseType: !1287, size: 8, offset: 880)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2159, file: !2101, line: 92, baseType: !1287, size: 8, offset: 888)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2159, file: !2101, line: 93, baseType: !1287, size: 8, offset: 896)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2159, file: !2101, line: 94, baseType: !1287, size: 8, offset: 904)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2159, file: !2101, line: 95, baseType: !2176, size: 64, offset: 960)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2178, line: 11, size: 128, elements: !2179)
!2178 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2179 = !{!2180, !2181}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2177, file: !2178, line: 12, baseType: !580, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2177, file: !2178, line: 13, baseType: !2182, size: 64, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2184, line: 56, size: 1344, elements: !2185)
!2184 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2185 = !{!2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2183, file: !2184, line: 61, baseType: !215, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2183, file: !2184, line: 62, baseType: !215, size: 64, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2183, file: !2184, line: 63, baseType: !215, size: 64, offset: 128)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2183, file: !2184, line: 64, baseType: !215, size: 64, offset: 192)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2183, file: !2184, line: 65, baseType: !215, size: 64, offset: 256)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2183, file: !2184, line: 66, baseType: !215, size: 64, offset: 320)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2183, file: !2184, line: 68, baseType: !215, size: 64, offset: 384)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2183, file: !2184, line: 69, baseType: !215, size: 64, offset: 448)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2183, file: !2184, line: 70, baseType: !215, size: 64, offset: 512)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2183, file: !2184, line: 71, baseType: !215, size: 64, offset: 576)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2183, file: !2184, line: 72, baseType: !215, size: 64, offset: 640)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2183, file: !2184, line: 73, baseType: !215, size: 64, offset: 704)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2183, file: !2184, line: 74, baseType: !215, size: 64, offset: 768)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2183, file: !2184, line: 75, baseType: !215, size: 64, offset: 832)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2183, file: !2184, line: 76, baseType: !215, size: 64, offset: 896)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2183, file: !2184, line: 81, baseType: !215, size: 64, offset: 960)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2183, file: !2184, line: 83, baseType: !215, size: 64, offset: 1024)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2183, file: !2184, line: 84, baseType: !215, size: 64, offset: 1088)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2183, file: !2184, line: 85, baseType: !215, size: 64, offset: 1152)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2183, file: !2184, line: 86, baseType: !215, size: 64, offset: 1216)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2183, file: !2184, line: 87, baseType: !215, size: 64, offset: 1280)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2159, file: !2101, line: 96, baseType: !458, size: 32, offset: 1024)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2106, file: !2101, line: 308, baseType: !2209, size: 4608, align: 512)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2101, line: 289, size: 4608, align: 512, elements: !2210)
!2210 = !{!2211, !2212, !2219}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2209, file: !2101, line: 290, baseType: !2124, size: 4096, align: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2209, file: !2101, line: 291, baseType: !2213, size: 512, offset: 4096)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2101, line: 268, size: 512, elements: !2214)
!2214 = !{!2215, !2216, !2217}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2213, file: !2101, line: 269, baseType: !461, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2213, file: !2101, line: 270, baseType: !461, size: 64, offset: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2213, file: !2101, line: 271, baseType: !2218, size: 384, offset: 128)
!2218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 384, elements: !1554)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2209, file: !2101, line: 292, baseType: !2220, offset: 4608)
!2220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1287, elements: !1652)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2106, file: !2101, line: 309, baseType: !2222, size: 32768)
!2222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1287, size: 32768, elements: !2223)
!2223 = !{!2224}
!2224 = !DISubrange(count: 4096)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1148, file: !773, line: 378, baseType: !2226, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1144, file: !773, line: 384, baseType: !1433, size: 192, offset: 192)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1019, file: !773, line: 500, baseType: !370, offset: 6656)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1019, file: !773, line: 501, baseType: !2230, size: 64, offset: 6656)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !773, line: 387, flags: DIFlagFwdDecl)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1019, file: !773, line: 516, baseType: !1642, size: 64, offset: 6720)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1019, file: !773, line: 519, baseType: !395, size: 64, offset: 6784)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1019, file: !773, line: 521, baseType: !2235, size: 64, offset: 6848)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !773, line: 521, flags: DIFlagFwdDecl)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1019, file: !773, line: 545, baseType: !797, size: 32, offset: 6912)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1019, file: !773, line: 548, baseType: !153, size: 8, offset: 6944)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1019, file: !773, line: 550, baseType: !2240, offset: 6952)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2241, line: 142, elements: !384)
!2241 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1019, file: !773, line: 554, baseType: !1889, size: 256, offset: 6976)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1019, file: !773, line: 557, baseType: !458, size: 32, offset: 7232)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1016, file: !773, line: 565, baseType: !2245, offset: 7296)
!2245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, elements: !2246)
!2246 = !{!2247}
!2247 = !DISubrange(count: -1)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1012, file: !773, line: 151, baseType: !797, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1005, file: !773, line: 156, baseType: !370, offset: 256)
!2250 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !773, line: 159, baseType: !2251, size: 128)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !773, line: 159, size: 128, elements: !2252)
!2252 = !{!2253, !2256}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2251, file: !773, line: 161, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !773, line: 161, flags: DIFlagFwdDecl)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2251, file: !773, line: 162, baseType: !144, size: 64, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !777, file: !773, line: 176, baseType: !408, size: 128, align: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !773, line: 179, baseType: !2259, size: 32, offset: 384)
!2259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !772, file: !773, line: 179, size: 32, elements: !2260)
!2260 = !{!2261, !2262, !2263, !2264}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2259, file: !773, line: 184, baseType: !797, size: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2259, file: !773, line: 192, baseType: !7, size: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2259, file: !773, line: 194, baseType: !7, size: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2259, file: !773, line: 195, baseType: !166, size: 32)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !772, file: !773, line: 199, baseType: !797, size: 32, offset: 416)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !707, file: !31, line: 1964, baseType: !2267, size: 64, offset: 1344)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!580, !644, !2270}
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2272, line: 12, size: 256, elements: !2273)
!2272 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2273 = !{!2274, !2275, !2276, !2277, !2278}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2271, file: !2272, line: 13, baseType: !142, size: 32)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2271, file: !2272, line: 16, baseType: !166, size: 32, offset: 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2271, file: !2272, line: 23, baseType: !215, size: 64, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2271, file: !2272, line: 30, baseType: !215, size: 64, offset: 128)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2271, file: !2272, line: 33, baseType: !2279, size: 64, offset: 192)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !773, line: 27, flags: DIFlagFwdDecl)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !707, file: !31, line: 1966, baseType: !2267, size: 64, offset: 1408)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !645, file: !31, line: 1424, baseType: !2283, size: 64, offset: 448)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2285)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 322, size: 704, elements: !2286)
!2286 = !{!2287, !2333, !2337, !2341, !2342, !2343, !2344, !2345, !2350, !2355, !2359}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2285, file: !25, line: 323, baseType: !2288, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!166, !2291}
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 294, size: 1600, elements: !2293)
!2293 = !{!2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2318, !2319, !2320}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2292, file: !25, line: 295, baseType: !687, size: 128)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2292, file: !25, line: 296, baseType: !386, size: 128, offset: 128)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2292, file: !25, line: 297, baseType: !386, size: 128, offset: 256)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2292, file: !25, line: 298, baseType: !386, size: 128, offset: 384)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2292, file: !25, line: 299, baseType: !356, size: 192, offset: 512)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2292, file: !25, line: 300, baseType: !370, offset: 704)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2292, file: !25, line: 301, baseType: !797, size: 32, offset: 704)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2292, file: !25, line: 302, baseType: !644, size: 64, offset: 768)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2292, file: !25, line: 303, baseType: !2303, size: 64, offset: 832)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !2304)
!2304 = !{!2305, !2317}
!2305 = !DIDerivedType(tag: DW_TAG_member, scope: !2303, file: !25, line: 69, baseType: !2306, size: 32)
!2306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2303, file: !25, line: 69, size: 32, elements: !2307)
!2307 = !{!2308, !2309, !2310}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2306, file: !25, line: 70, baseType: !475, size: 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2306, file: !25, line: 71, baseType: !484, size: 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2306, file: !25, line: 72, baseType: !2311, size: 32)
!2311 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2312, line: 24, baseType: !2313)
!2312 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2312, line: 22, size: 32, elements: !2314)
!2314 = !{!2315}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2313, file: !2312, line: 23, baseType: !2316, size: 32)
!2316 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2312, line: 20, baseType: !481)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2303, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2292, file: !25, line: 304, baseType: !571, size: 64, offset: 896)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2292, file: !25, line: 305, baseType: !215, size: 64, offset: 960)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2292, file: !25, line: 306, baseType: !2321, size: 576, offset: 1024)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !2322)
!2322 = !{!2323, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2321, file: !25, line: 206, baseType: !2324, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !368)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2321, file: !25, line: 207, baseType: !2324, size: 64, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2321, file: !25, line: 208, baseType: !2324, size: 64, offset: 128)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2321, file: !25, line: 209, baseType: !2324, size: 64, offset: 192)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2321, file: !25, line: 210, baseType: !2324, size: 64, offset: 256)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2321, file: !25, line: 211, baseType: !2324, size: 64, offset: 320)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2321, file: !25, line: 212, baseType: !2324, size: 64, offset: 384)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2321, file: !25, line: 213, baseType: !578, size: 64, offset: 448)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2321, file: !25, line: 214, baseType: !578, size: 64, offset: 512)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2285, file: !25, line: 324, baseType: !2334, size: 64, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!2291, !644, !166}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2285, file: !25, line: 325, baseType: !2338, size: 64, offset: 128)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{null, !2291}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2285, file: !25, line: 326, baseType: !2288, size: 64, offset: 192)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2285, file: !25, line: 327, baseType: !2288, size: 64, offset: 256)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2285, file: !25, line: 328, baseType: !2288, size: 64, offset: 320)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2285, file: !25, line: 329, baseType: !735, size: 64, offset: 384)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2285, file: !25, line: 332, baseType: !2346, size: 64, offset: 448)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!2349, !468}
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2285, file: !25, line: 333, baseType: !2351, size: 64, offset: 512)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!166, !468, !2354}
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2285, file: !25, line: 335, baseType: !2356, size: 64, offset: 576)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!166, !468, !2349}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2285, file: !25, line: 337, baseType: !2360, size: 64, offset: 640)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!166, !644, !2363}
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !645, file: !31, line: 1425, baseType: !2365, size: 64, offset: 512)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2367)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 428, size: 704, elements: !2368)
!2368 = !{!2369, !2373, !2374, !2378, !2379, !2380, !2395, !2418, !2422, !2423, !2446}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2367, file: !25, line: 429, baseType: !2370, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!166, !644, !166, !166, !588}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2367, file: !25, line: 430, baseType: !735, size: 64, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2367, file: !25, line: 431, baseType: !2375, size: 64, offset: 128)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!166, !644, !7}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2367, file: !25, line: 432, baseType: !2375, size: 64, offset: 192)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2367, file: !25, line: 433, baseType: !735, size: 64, offset: 256)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2367, file: !25, line: 434, baseType: !2381, size: 64, offset: 320)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!166, !644, !166, !2384}
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 415, size: 256, elements: !2386)
!2386 = !{!2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2385, file: !25, line: 416, baseType: !166, size: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2385, file: !25, line: 417, baseType: !7, size: 32, offset: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2385, file: !25, line: 418, baseType: !7, size: 32, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2385, file: !25, line: 420, baseType: !7, size: 32, offset: 96)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2385, file: !25, line: 421, baseType: !7, size: 32, offset: 128)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2385, file: !25, line: 422, baseType: !7, size: 32, offset: 160)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2385, file: !25, line: 423, baseType: !7, size: 32, offset: 192)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2385, file: !25, line: 424, baseType: !7, size: 32, offset: 224)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2367, file: !25, line: 435, baseType: !2396, size: 64, offset: 384)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!166, !644, !2303, !2399}
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 343, size: 960, elements: !2401)
!2401 = !{!2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2400, file: !25, line: 344, baseType: !166, size: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2400, file: !25, line: 345, baseType: !461, size: 64, offset: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2400, file: !25, line: 346, baseType: !461, size: 64, offset: 128)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2400, file: !25, line: 347, baseType: !461, size: 64, offset: 192)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2400, file: !25, line: 348, baseType: !461, size: 64, offset: 256)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2400, file: !25, line: 349, baseType: !461, size: 64, offset: 320)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2400, file: !25, line: 350, baseType: !461, size: 64, offset: 384)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2400, file: !25, line: 351, baseType: !366, size: 64, offset: 448)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2400, file: !25, line: 353, baseType: !366, size: 64, offset: 512)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2400, file: !25, line: 354, baseType: !166, size: 32, offset: 576)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2400, file: !25, line: 355, baseType: !166, size: 32, offset: 608)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2400, file: !25, line: 356, baseType: !461, size: 64, offset: 640)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2400, file: !25, line: 357, baseType: !461, size: 64, offset: 704)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2400, file: !25, line: 358, baseType: !461, size: 64, offset: 768)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2400, file: !25, line: 359, baseType: !366, size: 64, offset: 832)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2400, file: !25, line: 360, baseType: !166, size: 32, offset: 896)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2367, file: !25, line: 436, baseType: !2419, size: 64, offset: 448)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!166, !644, !2363, !2399}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2367, file: !25, line: 438, baseType: !2396, size: 64, offset: 512)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2367, file: !25, line: 439, baseType: !2424, size: 64, offset: 576)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!166, !644, !2427}
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 409, size: 1408, elements: !2429)
!2429 = !{!2430, !2431}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2428, file: !25, line: 410, baseType: !7, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2428, file: !25, line: 411, baseType: !2432, size: 1344, offset: 64)
!2432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2433, size: 1344, elements: !699)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 395, size: 448, elements: !2434)
!2434 = !{!2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2445}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2433, file: !25, line: 396, baseType: !7, size: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2433, file: !25, line: 397, baseType: !7, size: 32, offset: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2433, file: !25, line: 399, baseType: !7, size: 32, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2433, file: !25, line: 400, baseType: !7, size: 32, offset: 96)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2433, file: !25, line: 401, baseType: !7, size: 32, offset: 128)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2433, file: !25, line: 402, baseType: !7, size: 32, offset: 160)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2433, file: !25, line: 403, baseType: !7, size: 32, offset: 192)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2433, file: !25, line: 404, baseType: !463, size: 64, offset: 256)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2433, file: !25, line: 405, baseType: !2444, size: 64, offset: 320)
!2444 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !143, line: 126, baseType: !461)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2433, file: !25, line: 406, baseType: !2444, size: 64, offset: 384)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2367, file: !25, line: 440, baseType: !2375, size: 64, offset: 640)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !645, file: !31, line: 1426, baseType: !2448, size: 64, offset: 576)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2450)
!2450 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !645, file: !31, line: 1427, baseType: !215, size: 64, offset: 640)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !645, file: !31, line: 1428, baseType: !215, size: 64, offset: 704)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !645, file: !31, line: 1429, baseType: !215, size: 64, offset: 768)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !645, file: !31, line: 1430, baseType: !425, size: 64, offset: 832)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !645, file: !31, line: 1431, baseType: !817, size: 256, offset: 896)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !645, file: !31, line: 1432, baseType: !166, size: 32, offset: 1152)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !645, file: !31, line: 1433, baseType: !797, size: 32, offset: 1184)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !645, file: !31, line: 1437, baseType: !2459, size: 64, offset: 1216)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2462)
!2462 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !645, file: !31, line: 1449, baseType: !2464, size: 64, offset: 1280)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !441, line: 34, size: 64, elements: !2465)
!2465 = !{!2466}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2464, file: !441, line: 35, baseType: !444, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !645, file: !31, line: 1450, baseType: !386, size: 128, offset: 1344)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !645, file: !31, line: 1451, baseType: !2469, size: 64, offset: 1472)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !645, file: !31, line: 1452, baseType: !1855, size: 64, offset: 1536)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !645, file: !31, line: 1453, baseType: !2473, size: 64, offset: 1600)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !645, file: !31, line: 1454, baseType: !687, size: 128, offset: 1664)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !645, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !645, file: !31, line: 1456, baseType: !2478, size: 2432, offset: 1856)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 518, size: 2432, elements: !2479)
!2479 = !{!2480, !2481, !2482, !2484, !2516}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2478, file: !25, line: 519, baseType: !7, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2478, file: !25, line: 520, baseType: !817, size: 256, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2478, file: !25, line: 521, baseType: !2483, size: 192, offset: 320)
!2483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !468, size: 192, elements: !699)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2478, file: !25, line: 522, baseType: !2485, size: 1728, offset: 512)
!2485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2486, size: 1728, elements: !699)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !2487)
!2487 = !{!2488, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2486, file: !25, line: 223, baseType: !2489, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 443, size: 256, elements: !2491)
!2491 = !{!2492, !2493, !2506, !2507}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2490, file: !25, line: 444, baseType: !166, size: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2490, file: !25, line: 445, baseType: !2494, size: 64, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2496)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 310, size: 512, elements: !2497)
!2497 = !{!2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2496, file: !25, line: 311, baseType: !735, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2496, file: !25, line: 312, baseType: !735, size: 64, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2496, file: !25, line: 313, baseType: !735, size: 64, offset: 128)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2496, file: !25, line: 314, baseType: !735, size: 64, offset: 192)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2496, file: !25, line: 315, baseType: !2288, size: 64, offset: 256)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2496, file: !25, line: 316, baseType: !2288, size: 64, offset: 320)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2496, file: !25, line: 317, baseType: !2288, size: 64, offset: 384)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2496, file: !25, line: 318, baseType: !2360, size: 64, offset: 448)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2490, file: !25, line: 446, baseType: !678, size: 64, offset: 128)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2490, file: !25, line: 447, baseType: !2489, size: 64, offset: 192)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2486, file: !25, line: 224, baseType: !166, size: 32, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2486, file: !25, line: 226, baseType: !386, size: 128, offset: 128)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2486, file: !25, line: 227, baseType: !215, size: 64, offset: 256)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2486, file: !25, line: 228, baseType: !7, size: 32, offset: 320)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2486, file: !25, line: 229, baseType: !7, size: 32, offset: 352)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2486, file: !25, line: 230, baseType: !2324, size: 64, offset: 384)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2486, file: !25, line: 231, baseType: !2324, size: 64, offset: 448)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2486, file: !25, line: 232, baseType: !144, size: 64, offset: 512)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2478, file: !25, line: 523, baseType: !2517, size: 192, offset: 2240)
!2517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2494, size: 192, elements: !699)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !645, file: !31, line: 1458, baseType: !2519, size: 2112, offset: 4288)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !2520)
!2520 = !{!2521, !2522, !2523}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2519, file: !31, line: 1411, baseType: !166, size: 32)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2519, file: !31, line: 1412, baseType: !1412, size: 128, offset: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2519, file: !31, line: 1413, baseType: !2524, size: 1920, offset: 192)
!2524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2525, size: 1920, elements: !699)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2526, line: 12, size: 640, elements: !2527)
!2526 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2527 = !{!2528, !2536, !2537, !2542, !2543}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2525, file: !2526, line: 13, baseType: !2529, size: 320)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2530, line: 17, size: 320, elements: !2531)
!2530 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2531 = !{!2532, !2533, !2534, !2535}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2529, file: !2530, line: 18, baseType: !166, size: 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2529, file: !2530, line: 19, baseType: !166, size: 32, offset: 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2529, file: !2530, line: 20, baseType: !1412, size: 128, offset: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2529, file: !2530, line: 22, baseType: !408, size: 128, align: 64, offset: 192)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2525, file: !2526, line: 14, baseType: !255, size: 64, offset: 320)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2525, file: !2526, line: 15, baseType: !2538, size: 64, offset: 384)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2539, line: 16, size: 64, elements: !2540)
!2539 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2540 = !{!2541}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2538, file: !2539, line: 17, baseType: !1151, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2525, file: !2526, line: 16, baseType: !1412, size: 128, offset: 448)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2525, file: !2526, line: 17, baseType: !797, size: 32, offset: 576)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !645, file: !31, line: 1465, baseType: !144, size: 64, offset: 6400)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !645, file: !31, line: 1468, baseType: !458, size: 32, offset: 6464)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !645, file: !31, line: 1470, baseType: !578, size: 64, offset: 6528)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !645, file: !31, line: 1471, baseType: !578, size: 64, offset: 6592)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !645, file: !31, line: 1473, baseType: !250, size: 32, offset: 6656)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !645, file: !31, line: 1474, baseType: !2550, size: 64, offset: 6720)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !645, file: !31, line: 1477, baseType: !2553, size: 256, offset: 6784)
!2553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 256, elements: !253)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !645, file: !31, line: 1478, baseType: !2555, size: 128, offset: 7040)
!2555 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2556, line: 18, baseType: !2557)
!2556 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2556, line: 16, size: 128, elements: !2558)
!2558 = !{!2559}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2557, file: !2556, line: 17, baseType: !2560, size: 128)
!2560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 128, elements: !1664)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !645, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !645, file: !31, line: 1481, baseType: !2563, size: 32, offset: 7200)
!2563 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !143, line: 150, baseType: !7)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !645, file: !31, line: 1487, baseType: !356, size: 192, offset: 7232)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !645, file: !31, line: 1493, baseType: !148, size: 64, offset: 7424)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !645, file: !31, line: 1495, baseType: !2567, size: 64, offset: 7488)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2569)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !423, line: 135, size: 1024, align: 512, elements: !2570)
!2570 = !{!2571, !2575, !2576, !2583, !2589, !2593, !2597, !2601, !2602, !2606, !2610, !2615, !2619}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2569, file: !423, line: 136, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!166, !425, !7}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2569, file: !423, line: 137, baseType: !2572, size: 64, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2569, file: !423, line: 138, baseType: !2577, size: 64, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!166, !2580, !2582}
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2569, file: !423, line: 139, baseType: !2584, size: 64, offset: 192)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!166, !2580, !7, !148, !2587}
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2569, file: !423, line: 141, baseType: !2590, size: 64, offset: 256)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!166, !2580}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2569, file: !423, line: 142, baseType: !2594, size: 64, offset: 320)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!166, !425}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2569, file: !423, line: 143, baseType: !2598, size: 64, offset: 384)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{null, !425}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2569, file: !423, line: 144, baseType: !2598, size: 64, offset: 448)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2569, file: !423, line: 145, baseType: !2603, size: 64, offset: 512)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{null, !425, !468}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2569, file: !423, line: 146, baseType: !2607, size: 64, offset: 576)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!527, !425, !527, !166}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2569, file: !423, line: 147, baseType: !2611, size: 64, offset: 640)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!421, !2614}
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2569, file: !423, line: 148, baseType: !2616, size: 64, offset: 704)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!166, !588, !153}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2569, file: !423, line: 149, baseType: !2620, size: 64, offset: 768)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!425, !425, !2623}
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !469)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !645, file: !31, line: 1500, baseType: !166, size: 32, offset: 7552)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !645, file: !31, line: 1502, baseType: !2627, size: 448, offset: 7616)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2272, line: 60, size: 448, elements: !2628)
!2628 = !{!2629, !2634, !2635, !2636, !2637, !2638, !2639}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2627, file: !2272, line: 61, baseType: !2630, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!215, !2633, !2270}
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2627, file: !2272, line: 63, baseType: !2630, size: 64, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2627, file: !2272, line: 66, baseType: !580, size: 64, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2627, file: !2272, line: 67, baseType: !166, size: 32, offset: 192)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2627, file: !2272, line: 68, baseType: !7, size: 32, offset: 224)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2627, file: !2272, line: 71, baseType: !386, size: 128, offset: 256)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2627, file: !2272, line: 77, baseType: !2640, size: 64, offset: 384)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !645, file: !31, line: 1505, baseType: !360, size: 64, offset: 8064)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !645, file: !31, line: 1508, baseType: !360, size: 64, offset: 8128)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !645, file: !31, line: 1511, baseType: !166, size: 32, offset: 8192)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !645, file: !31, line: 1514, baseType: !950, size: 32, offset: 8224)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !645, file: !31, line: 1517, baseType: !2646, size: 64, offset: 8256)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1890, line: 18, flags: DIFlagFwdDecl)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !645, file: !31, line: 1518, baseType: !683, size: 64, offset: 8320)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !645, file: !31, line: 1525, baseType: !1642, size: 64, offset: 8384)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !645, file: !31, line: 1532, baseType: !2651, size: 64, offset: 8448)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2652, line: 52, size: 64, elements: !2653)
!2652 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2653 = !{!2654}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2651, file: !2652, line: 53, baseType: !2655, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2652, line: 40, size: 256, elements: !2657)
!2657 = !{!2658, !2659, !2664}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2656, file: !2652, line: 42, baseType: !370)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2656, file: !2652, line: 44, baseType: !2660, size: 192)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2652, line: 28, size: 192, elements: !2661)
!2661 = !{!2662, !2663}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2660, file: !2652, line: 29, baseType: !386, size: 128)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2660, file: !2652, line: 31, baseType: !580, size: 64, offset: 128)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2656, file: !2652, line: 49, baseType: !580, size: 64, offset: 192)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !645, file: !31, line: 1533, baseType: !2651, size: 64, offset: 8512)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !645, file: !31, line: 1534, baseType: !408, size: 128, align: 64, offset: 8576)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !645, file: !31, line: 1535, baseType: !1889, size: 256, offset: 8704)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !645, file: !31, line: 1537, baseType: !356, size: 192, offset: 8960)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !645, file: !31, line: 1542, baseType: !166, size: 32, offset: 9152)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !645, file: !31, line: 1545, baseType: !370, offset: 9184)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !645, file: !31, line: 1546, baseType: !386, size: 128, offset: 9216)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !645, file: !31, line: 1548, baseType: !370, offset: 9344)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !645, file: !31, line: 1549, baseType: !386, size: 128, offset: 9344)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !469, file: !31, line: 624, baseType: !784, size: 64, offset: 256)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !469, file: !31, line: 631, baseType: !215, size: 64, offset: 320)
!2676 = !DIDerivedType(tag: DW_TAG_member, scope: !469, file: !31, line: 639, baseType: !2677, size: 32, offset: 384)
!2677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !469, file: !31, line: 639, size: 32, elements: !2678)
!2678 = !{!2679, !2681}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2677, file: !31, line: 640, baseType: !2680, size: 32)
!2680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2677, file: !31, line: 641, baseType: !7, size: 32)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !469, file: !31, line: 643, baseType: !553, size: 32, offset: 416)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !469, file: !31, line: 644, baseType: !571, size: 64, offset: 448)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !469, file: !31, line: 645, baseType: !574, size: 128, offset: 512)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !469, file: !31, line: 646, baseType: !574, size: 128, offset: 640)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !469, file: !31, line: 647, baseType: !574, size: 128, offset: 768)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !469, file: !31, line: 648, baseType: !370, offset: 896)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !469, file: !31, line: 649, baseType: !209, size: 16, offset: 896)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !469, file: !31, line: 650, baseType: !1287, size: 8, offset: 912)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !469, file: !31, line: 651, baseType: !1287, size: 8, offset: 920)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !469, file: !31, line: 652, baseType: !2444, size: 64, offset: 960)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !469, file: !31, line: 659, baseType: !215, size: 64, offset: 1024)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !469, file: !31, line: 660, baseType: !817, size: 256, offset: 1088)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !469, file: !31, line: 662, baseType: !215, size: 64, offset: 1344)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !469, file: !31, line: 663, baseType: !215, size: 64, offset: 1408)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !469, file: !31, line: 665, baseType: !687, size: 128, offset: 1472)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !469, file: !31, line: 666, baseType: !386, size: 128, offset: 1600)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !469, file: !31, line: 675, baseType: !386, size: 128, offset: 1728)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !469, file: !31, line: 676, baseType: !386, size: 128, offset: 1856)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !469, file: !31, line: 677, baseType: !386, size: 128, offset: 1984)
!2701 = !DIDerivedType(tag: DW_TAG_member, scope: !469, file: !31, line: 678, baseType: !2702, size: 128, offset: 2112)
!2702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !469, file: !31, line: 678, size: 128, elements: !2703)
!2703 = !{!2704, !2705}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2702, file: !31, line: 679, baseType: !683, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2702, file: !31, line: 680, baseType: !408, size: 128, align: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !469, file: !31, line: 682, baseType: !362, size: 64, offset: 2240)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !469, file: !31, line: 683, baseType: !362, size: 64, offset: 2304)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !469, file: !31, line: 684, baseType: !797, size: 32, offset: 2368)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !469, file: !31, line: 685, baseType: !797, size: 32, offset: 2400)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !469, file: !31, line: 686, baseType: !797, size: 32, offset: 2432)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !469, file: !31, line: 688, baseType: !797, size: 32, offset: 2464)
!2712 = !DIDerivedType(tag: DW_TAG_member, scope: !469, file: !31, line: 690, baseType: !2713, size: 64, offset: 2496)
!2713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !469, file: !31, line: 690, size: 64, elements: !2714)
!2714 = !{!2715, !2938}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2713, file: !31, line: 691, baseType: !2716, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2718)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !2719)
!2719 = !{!2720, !2721, !2725, !2730, !2734, !2735, !2736, !2740, !2753, !2754, !2762, !2766, !2767, !2771, !2772, !2776, !2781, !2782, !2786, !2790, !2898, !2902, !2903, !2907, !2908, !2912, !2916, !2921, !2925, !2929, !2933, !2937}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2718, file: !31, line: 1823, baseType: !678, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2718, file: !31, line: 1824, baseType: !2722, size: 64, offset: 64)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!571, !395, !571, !166}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2718, file: !31, line: 1825, baseType: !2726, size: 64, offset: 128)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!617, !395, !527, !620, !2729}
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2718, file: !31, line: 1826, baseType: !2731, size: 64, offset: 192)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!617, !395, !148, !620, !2729}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2718, file: !31, line: 1827, baseType: !887, size: 64, offset: 256)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2718, file: !31, line: 1828, baseType: !887, size: 64, offset: 320)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2718, file: !31, line: 1829, baseType: !2737, size: 64, offset: 384)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!166, !890, !153}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2718, file: !31, line: 1830, baseType: !2741, size: 64, offset: 448)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!166, !395, !2744}
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !2746)
!2746 = !{!2747, !2752}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2745, file: !31, line: 1777, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !2749)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!166, !2744, !148, !166, !571, !461, !7}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2745, file: !31, line: 1778, baseType: !571, size: 64, offset: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2718, file: !31, line: 1831, baseType: !2741, size: 64, offset: 512)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2718, file: !31, line: 1832, baseType: !2755, size: 64, offset: 576)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!2758, !395, !2760}
!2758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2759, line: 52, baseType: !7)
!2759 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !664, line: 27, flags: DIFlagFwdDecl)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2718, file: !31, line: 1833, baseType: !2763, size: 64, offset: 640)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!580, !395, !7, !215}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2718, file: !31, line: 1834, baseType: !2763, size: 64, offset: 704)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2718, file: !31, line: 1835, baseType: !2768, size: 64, offset: 768)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!166, !395, !1022}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2718, file: !31, line: 1836, baseType: !215, size: 64, offset: 832)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2718, file: !31, line: 1837, baseType: !2773, size: 64, offset: 896)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!166, !468, !395}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2718, file: !31, line: 1838, baseType: !2777, size: 64, offset: 960)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!166, !395, !2780}
!2780 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !144)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2718, file: !31, line: 1839, baseType: !2773, size: 64, offset: 1024)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2718, file: !31, line: 1840, baseType: !2783, size: 64, offset: 1088)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!166, !395, !571, !571, !166}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2718, file: !31, line: 1841, baseType: !2787, size: 64, offset: 1152)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!166, !166, !395, !166}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2718, file: !31, line: 1842, baseType: !2791, size: 64, offset: 1216)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!166, !395, !166, !2794}
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !2796)
!2796 = !{!2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2828, !2829, !2830, !2843, !2874}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2795, file: !31, line: 1063, baseType: !2794, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2795, file: !31, line: 1064, baseType: !386, size: 128, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2795, file: !31, line: 1065, baseType: !687, size: 128, offset: 192)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2795, file: !31, line: 1066, baseType: !386, size: 128, offset: 320)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2795, file: !31, line: 1069, baseType: !386, size: 128, offset: 448)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2795, file: !31, line: 1072, baseType: !2780, size: 64, offset: 576)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2795, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2795, file: !31, line: 1074, baseType: !174, size: 8, offset: 672)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2795, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2795, file: !31, line: 1076, baseType: !166, size: 32, offset: 736)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2795, file: !31, line: 1077, baseType: !1412, size: 128, offset: 768)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2795, file: !31, line: 1078, baseType: !395, size: 64, offset: 896)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2795, file: !31, line: 1079, baseType: !571, size: 64, offset: 960)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2795, file: !31, line: 1080, baseType: !571, size: 64, offset: 1024)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2795, file: !31, line: 1082, baseType: !2812, size: 64, offset: 1088)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !2814)
!2814 = !{!2815, !2823, !2824, !2825, !2826, !2827}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2813, file: !31, line: 1315, baseType: !2816)
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2817, line: 20, baseType: !2818)
!2817 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2817, line: 11, elements: !2819)
!2819 = !{!2820}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2818, file: !2817, line: 12, baseType: !2821)
!2821 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !382, line: 33, baseType: !2822)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !382, line: 31, elements: !384)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2813, file: !31, line: 1316, baseType: !166, size: 32)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2813, file: !31, line: 1317, baseType: !166, size: 32, offset: 32)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2813, file: !31, line: 1318, baseType: !2812, size: 64, offset: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2813, file: !31, line: 1319, baseType: !395, size: 64, offset: 128)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2813, file: !31, line: 1320, baseType: !408, size: 128, align: 64, offset: 192)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2795, file: !31, line: 1084, baseType: !215, size: 64, offset: 1152)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2795, file: !31, line: 1085, baseType: !215, size: 64, offset: 1216)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2795, file: !31, line: 1087, baseType: !2831, size: 64, offset: 1280)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2833)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !2834)
!2834 = !{!2835, !2839}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2833, file: !31, line: 1012, baseType: !2836, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{null, !2794, !2794}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2833, file: !31, line: 1013, baseType: !2840, size: 64, offset: 64)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{null, !2794}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2795, file: !31, line: 1088, baseType: !2844, size: 64, offset: 1344)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2846)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !2847)
!2847 = !{!2848, !2852, !2856, !2857, !2861, !2865, !2869, !2873}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2846, file: !31, line: 1017, baseType: !2849, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!2780, !2780}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2846, file: !31, line: 1018, baseType: !2853, size: 64, offset: 64)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{null, !2780}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2846, file: !31, line: 1019, baseType: !2840, size: 64, offset: 128)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2846, file: !31, line: 1020, baseType: !2858, size: 64, offset: 192)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!166, !2794, !166}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2846, file: !31, line: 1021, baseType: !2862, size: 64, offset: 256)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!153, !2794}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2846, file: !31, line: 1022, baseType: !2866, size: 64, offset: 320)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!166, !2794, !166, !389}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2846, file: !31, line: 1023, baseType: !2870, size: 64, offset: 384)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{null, !2794, !864}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2846, file: !31, line: 1024, baseType: !2862, size: 64, offset: 448)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2795, file: !31, line: 1097, baseType: !2875, size: 256, offset: 1408)
!2875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2795, file: !31, line: 1089, size: 256, elements: !2876)
!2876 = !{!2877, !2886, !2892}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2875, file: !31, line: 1090, baseType: !2878, size: 256)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2879, line: 10, size: 256, elements: !2880)
!2879 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2880 = !{!2881, !2882, !2885}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2878, file: !2879, line: 11, baseType: !458, size: 32)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2878, file: !2879, line: 12, baseType: !2883, size: 64, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2879, line: 5, flags: DIFlagFwdDecl)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2878, file: !2879, line: 13, baseType: !386, size: 128, offset: 128)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2875, file: !31, line: 1091, baseType: !2887, size: 64)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2879, line: 17, size: 64, elements: !2888)
!2888 = !{!2889}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2887, file: !2879, line: 18, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2879, line: 16, flags: DIFlagFwdDecl)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2875, file: !31, line: 1096, baseType: !2893, size: 192)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2875, file: !31, line: 1092, size: 192, elements: !2894)
!2894 = !{!2895, !2896, !2897}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2893, file: !31, line: 1093, baseType: !386, size: 128)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2893, file: !31, line: 1094, baseType: !166, size: 32, offset: 128)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2893, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2718, file: !31, line: 1843, baseType: !2899, size: 64, offset: 1280)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!617, !395, !771, !166, !620, !2729, !166}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2718, file: !31, line: 1844, baseType: !1062, size: 64, offset: 1344)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2718, file: !31, line: 1845, baseType: !2904, size: 64, offset: 1408)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!166, !166}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2718, file: !31, line: 1846, baseType: !2791, size: 64, offset: 1472)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2718, file: !31, line: 1847, baseType: !2909, size: 64, offset: 1536)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!617, !2030, !395, !2729, !620, !7}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2718, file: !31, line: 1848, baseType: !2913, size: 64, offset: 1600)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!617, !395, !2729, !2030, !620, !7}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2718, file: !31, line: 1849, baseType: !2917, size: 64, offset: 1664)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!166, !395, !580, !2920, !864}
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2718, file: !31, line: 1850, baseType: !2922, size: 64, offset: 1728)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!580, !395, !166, !571, !571}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2718, file: !31, line: 1852, baseType: !2926, size: 64, offset: 1792)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{null, !761, !395}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2718, file: !31, line: 1856, baseType: !2930, size: 64, offset: 1856)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!617, !395, !571, !395, !571, !620, !7}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2718, file: !31, line: 1858, baseType: !2934, size: 64, offset: 1920)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!571, !395, !571, !395, !571, !571, !7}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2718, file: !31, line: 1861, baseType: !2783, size: 64, offset: 1984)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2713, file: !31, line: 692, baseType: !714, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !469, file: !31, line: 694, baseType: !2940, size: 64, offset: 2560)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !2942)
!2942 = !{!2943, !2944, !2945, !2946}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2941, file: !31, line: 1101, baseType: !370)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2941, file: !31, line: 1102, baseType: !386, size: 128)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2941, file: !31, line: 1103, baseType: !386, size: 128, offset: 128)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2941, file: !31, line: 1104, baseType: !386, size: 128, offset: 256)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !469, file: !31, line: 695, baseType: !785, size: 1216, align: 64, offset: 2624)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !469, file: !31, line: 696, baseType: !386, size: 128, offset: 3840)
!2949 = !DIDerivedType(tag: DW_TAG_member, scope: !469, file: !31, line: 697, baseType: !2950, size: 64, offset: 3968)
!2950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !469, file: !31, line: 697, size: 64, elements: !2951)
!2951 = !{!2952, !2953, !2954, !2957, !2958}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2950, file: !31, line: 698, baseType: !2030, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2950, file: !31, line: 699, baseType: !2469, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2950, file: !31, line: 700, baseType: !2955, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !31, line: 700, flags: DIFlagFwdDecl)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2950, file: !31, line: 701, baseType: !527, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2950, file: !31, line: 702, baseType: !7, size: 32)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !469, file: !31, line: 705, baseType: !250, size: 32, offset: 4032)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !469, file: !31, line: 708, baseType: !250, size: 32, offset: 4064)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !469, file: !31, line: 709, baseType: !2550, size: 64, offset: 4096)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !469, file: !31, line: 720, baseType: !144, size: 64, offset: 4160)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !426, file: !423, line: 98, baseType: !2964, size: 256, offset: 448)
!2964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 256, elements: !253)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !426, file: !423, line: 101, baseType: !2966, size: 32, offset: 704)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2967, line: 25, size: 32, elements: !2968)
!2967 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2968 = !{!2969}
!2969 = !DIDerivedType(tag: DW_TAG_member, scope: !2966, file: !2967, line: 26, baseType: !2970, size: 32)
!2970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2966, file: !2967, line: 26, size: 32, elements: !2971)
!2971 = !{!2972}
!2972 = !DIDerivedType(tag: DW_TAG_member, scope: !2970, file: !2967, line: 30, baseType: !2973, size: 32)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2970, file: !2967, line: 30, size: 32, elements: !2974)
!2974 = !{!2975, !2976}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2973, file: !2967, line: 31, baseType: !370)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2973, file: !2967, line: 32, baseType: !166, size: 32)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !426, file: !423, line: 102, baseType: !2567, size: 64, offset: 768)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !426, file: !423, line: 103, baseType: !644, size: 64, offset: 832)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !426, file: !423, line: 104, baseType: !215, size: 64, offset: 896)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !426, file: !423, line: 105, baseType: !144, size: 64, offset: 960)
!2981 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !423, line: 107, baseType: !2982, size: 128, offset: 1024)
!2982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !423, line: 107, size: 128, elements: !2983)
!2983 = !{!2984, !2985}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2982, file: !423, line: 108, baseType: !386, size: 128)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2982, file: !423, line: 109, baseType: !2986, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !426, file: !423, line: 111, baseType: !386, size: 128, offset: 1152)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !426, file: !423, line: 112, baseType: !386, size: 128, offset: 1280)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !426, file: !423, line: 120, baseType: !2990, size: 128, offset: 1408)
!2990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !423, line: 116, size: 128, elements: !2991)
!2991 = !{!2992, !2993, !2994}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2990, file: !423, line: 117, baseType: !687, size: 128)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2990, file: !423, line: 118, baseType: !440, size: 128)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2990, file: !423, line: 119, baseType: !408, size: 128, align: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !396, file: !31, line: 922, baseType: !468, size: 64, offset: 256)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !396, file: !31, line: 923, baseType: !2716, size: 64, offset: 320)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !396, file: !31, line: 929, baseType: !370, offset: 384)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !396, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !396, file: !31, line: 931, baseType: !360, size: 64, offset: 448)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !396, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !396, file: !31, line: 933, baseType: !2563, size: 32, offset: 544)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !396, file: !31, line: 934, baseType: !356, size: 192, offset: 576)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !396, file: !31, line: 935, baseType: !571, size: 64, offset: 768)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !396, file: !31, line: 936, baseType: !3005, size: 192, offset: 832)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !3006)
!3006 = !{!3007, !3008, !3009, !3010, !3011, !3012}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3005, file: !31, line: 886, baseType: !2816)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3005, file: !31, line: 887, baseType: !1402, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3005, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3005, file: !31, line: 889, baseType: !475, size: 32, offset: 96)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3005, file: !31, line: 889, baseType: !475, size: 32, offset: 128)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3005, file: !31, line: 890, baseType: !166, size: 32, offset: 160)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !396, file: !31, line: 937, baseType: !1478, size: 64, offset: 1024)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !396, file: !31, line: 938, baseType: !3015, size: 256, offset: 1088)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !3016)
!3016 = !{!3017, !3018, !3019, !3020, !3021, !3022}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3015, file: !31, line: 897, baseType: !215, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3015, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3015, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3015, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3015, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3015, file: !31, line: 904, baseType: !571, size: 64, offset: 192)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !396, file: !31, line: 940, baseType: !461, size: 64, offset: 1344)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !396, file: !31, line: 945, baseType: !144, size: 64, offset: 1408)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !396, file: !31, line: 949, baseType: !386, size: 128, offset: 1472)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !396, file: !31, line: 950, baseType: !386, size: 128, offset: 1600)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !396, file: !31, line: 952, baseType: !784, size: 64, offset: 1728)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !396, file: !31, line: 953, baseType: !950, size: 32, offset: 1792)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !396, file: !31, line: 954, baseType: !950, size: 32, offset: 1824)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !196, file: !197, line: 163, baseType: !3031, size: 64, offset: 2048)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !197, line: 24, flags: DIFlagFwdDecl)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !196, file: !197, line: 165, baseType: !7, size: 32, offset: 2112)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !196, file: !197, line: 166, baseType: !3035, size: 320, offset: 2176)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3036, line: 11, size: 320, elements: !3037)
!3036 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3037 = !{!3038, !3039, !3040, !3045}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3035, file: !3036, line: 16, baseType: !687, size: 128)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3035, file: !3036, line: 17, baseType: !215, size: 64, offset: 128)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3035, file: !3036, line: 18, baseType: !3041, size: 64, offset: 192)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{null, !3044}
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3035, file: !3036, line: 19, baseType: !458, size: 32, offset: 256)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !196, file: !197, line: 168, baseType: !3047, size: 64, offset: 2496)
!3047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 64, elements: !230)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !196, file: !197, line: 170, baseType: !3049, size: 64, offset: 2560)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !197, line: 170, flags: DIFlagFwdDecl)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !196, file: !197, line: 172, baseType: !3052, size: 64, offset: 2624)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !204, line: 90, size: 192, elements: !3054)
!3054 = !{!3055, !3056, !3057, !3058, !3059, !3060}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3053, file: !204, line: 91, baseType: !1376, size: 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !3053, file: !204, line: 92, baseType: !1376, size: 32, offset: 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !3053, file: !204, line: 93, baseType: !1376, size: 32, offset: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !3053, file: !204, line: 94, baseType: !1376, size: 32, offset: 96)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !3053, file: !204, line: 95, baseType: !1376, size: 32, offset: 128)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !3053, file: !204, line: 96, baseType: !1376, size: 32, offset: 160)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !196, file: !197, line: 174, baseType: !220, size: 768, offset: 2688)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !196, file: !197, line: 175, baseType: !214, size: 64, offset: 3456)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !196, file: !197, line: 176, baseType: !214, size: 64, offset: 3520)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !196, file: !197, line: 177, baseType: !214, size: 64, offset: 3584)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !196, file: !197, line: 179, baseType: !3066, size: 64, offset: 3648)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!166, !195}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !196, file: !197, line: 180, baseType: !3070, size: 64, offset: 3712)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{null, !195}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !196, file: !197, line: 181, baseType: !3074, size: 64, offset: 3776)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!166, !195, !395}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !196, file: !197, line: 182, baseType: !3078, size: 64, offset: 3840)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!166, !195, !7, !7, !166}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !196, file: !197, line: 184, baseType: !3082, size: 64, offset: 3904)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !197, line: 337, size: 576, elements: !3084)
!3084 = !{!3085, !3086, !3087, !3088, !3089, !3156, !3157}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3083, file: !197, line: 339, baseType: !144, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3083, file: !197, line: 341, baseType: !166, size: 32, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3083, file: !197, line: 342, baseType: !148, size: 64, offset: 128)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3083, file: !197, line: 344, baseType: !195, size: 64, offset: 192)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3083, file: !197, line: 345, baseType: !3090, size: 64, offset: 256)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !197, line: 302, size: 960, elements: !3092)
!3092 = !{!3093, !3094, !3098, !3109, !3113, !3117, !3145, !3149, !3150, !3151, !3152, !3153, !3154, !3155}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3091, file: !197, line: 304, baseType: !144, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3091, file: !197, line: 306, baseType: !3095, size: 64, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{null, !3082, !7, !7, !166}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3091, file: !197, line: 307, baseType: !3099, size: 64, offset: 128)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{null, !3082, !3102, !7}
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3104)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !197, line: 32, size: 64, elements: !3105)
!3105 = !{!3106, !3107, !3108}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3104, file: !197, line: 33, baseType: !207, size: 16)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3104, file: !197, line: 34, baseType: !207, size: 16, offset: 16)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3104, file: !197, line: 35, baseType: !1376, size: 32, offset: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3091, file: !197, line: 309, baseType: !3110, size: 64, offset: 192)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!153, !3082, !7, !7, !166}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3091, file: !197, line: 310, baseType: !3114, size: 64, offset: 256)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!153, !3090, !195}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !3091, file: !197, line: 311, baseType: !3118, size: 64, offset: 320)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!166, !3090, !195, !3121}
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3123)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !160, line: 342, size: 1600, elements: !3124)
!3124 = !{!3125, !3127, !3128, !3129, !3130, !3131, !3133, !3135, !3136, !3137, !3138, !3139, !3140, !3142, !3143, !3144}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3123, file: !160, line: 344, baseType: !3126, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !160, line: 14, baseType: !215)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !3123, file: !160, line: 346, baseType: !207, size: 16, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3123, file: !160, line: 347, baseType: !207, size: 16, offset: 80)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3123, file: !160, line: 348, baseType: !207, size: 16, offset: 96)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3123, file: !160, line: 349, baseType: !207, size: 16, offset: 112)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !3123, file: !160, line: 351, baseType: !3132, size: 64, offset: 128)
!3132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3126, size: 64, elements: !216)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !3123, file: !160, line: 352, baseType: !3134, size: 768, offset: 192)
!3134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3126, size: 768, elements: !221)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !3123, file: !160, line: 353, baseType: !3132, size: 64, offset: 960)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !3123, file: !160, line: 354, baseType: !3132, size: 64, offset: 1024)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !3123, file: !160, line: 355, baseType: !3132, size: 64, offset: 1088)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !3123, file: !160, line: 356, baseType: !3132, size: 64, offset: 1152)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !3123, file: !160, line: 357, baseType: !3132, size: 64, offset: 1216)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3123, file: !160, line: 358, baseType: !3141, size: 128, offset: 1280)
!3141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3126, size: 128, elements: !230)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !3123, file: !160, line: 359, baseType: !3132, size: 64, offset: 1408)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !3123, file: !160, line: 360, baseType: !3132, size: 64, offset: 1472)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3123, file: !160, line: 362, baseType: !3126, size: 64, offset: 1536)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3091, file: !197, line: 312, baseType: !3146, size: 64, offset: 384)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{null, !3082}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3091, file: !197, line: 313, baseType: !3146, size: 64, offset: 448)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !3091, file: !197, line: 315, baseType: !153, size: 8, offset: 512)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3091, file: !197, line: 316, baseType: !166, size: 32, offset: 544)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3091, file: !197, line: 317, baseType: !148, size: 64, offset: 576)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3091, file: !197, line: 319, baseType: !3121, size: 64, offset: 640)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !3091, file: !197, line: 321, baseType: !386, size: 128, offset: 704)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3091, file: !197, line: 322, baseType: !386, size: 128, offset: 832)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !3083, file: !197, line: 347, baseType: !386, size: 128, offset: 320)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !3083, file: !197, line: 348, baseType: !386, size: 128, offset: 448)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !196, file: !197, line: 186, baseType: !370, offset: 3968)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !196, file: !197, line: 187, baseType: !356, size: 192, offset: 3968)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !196, file: !197, line: 189, baseType: !7, size: 32, offset: 4160)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !196, file: !197, line: 190, baseType: !153, size: 8, offset: 4192)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !196, file: !197, line: 192, baseType: !3163, size: 5568, offset: 4224)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !3164)
!3164 = !{!3165, !3464, !3466, !3469, !3470, !3521, !3610, !3611, !3612, !3613, !3614, !3623, !3717, !3730, !3733, !3734, !3738, !3740, !3741, !3742, !3746, !3752, !3753, !3756, !3760, !3763, !3764, !3765, !3766, !3767, !3799, !3800, !3801, !3804, !3807, !3808, !3809, !3810}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3163, file: !60, line: 462, baseType: !3166, size: 512)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !3167, line: 64, size: 512, elements: !3168)
!3167 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!3168 = !{!3169, !3170, !3171, !3173, !3213, !3315, !3454, !3459, !3460, !3461, !3462, !3463}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3166, file: !3167, line: 65, baseType: !148, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3166, file: !3167, line: 66, baseType: !386, size: 128, offset: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3166, file: !3167, line: 67, baseType: !3172, size: 64, offset: 192)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !3166, file: !3167, line: 68, baseType: !3174, size: 64, offset: 256)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !3167, line: 192, size: 704, elements: !3176)
!3176 = !{!3177, !3178, !3179, !3180}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3175, file: !3167, line: 193, baseType: !386, size: 128)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3175, file: !3167, line: 194, baseType: !370, offset: 128)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3175, file: !3167, line: 195, baseType: !3166, size: 512, offset: 128)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !3175, file: !3167, line: 196, baseType: !3181, size: 64, offset: 640)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3183)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !3167, line: 156, size: 192, elements: !3184)
!3184 = !{!3185, !3190, !3195}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3183, file: !3167, line: 157, baseType: !3186, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3187)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!166, !3174, !3172}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3183, file: !3167, line: 158, baseType: !3191, size: 64, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3192)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!148, !3174, !3172}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3183, file: !3167, line: 159, baseType: !3196, size: 64, offset: 128)
!3196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3197)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!166, !3174, !3172, !3200}
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !3167, line: 148, size: 20736, elements: !3202)
!3202 = !{!3203, !3205, !3207, !3208, !3212}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !3201, file: !3167, line: 149, baseType: !3204, size: 192)
!3204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !527, size: 192, elements: !699)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !3201, file: !3167, line: 150, baseType: !3206, size: 4096, offset: 192)
!3206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !527, size: 4096, elements: !1811)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !3201, file: !3167, line: 151, baseType: !166, size: 32, offset: 4288)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3201, file: !3167, line: 152, baseType: !3209, size: 16384, offset: 4320)
!3209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 16384, elements: !3210)
!3210 = !{!3211}
!3211 = !DISubrange(count: 2048)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !3201, file: !3167, line: 153, baseType: !166, size: 32, offset: 20704)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !3166, file: !3167, line: 69, baseType: !3214, size: 64, offset: 320)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !3167, line: 138, size: 448, elements: !3216)
!3216 = !{!3217, !3221, !3240, !3242, !3275, !3305, !3309}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3215, file: !3167, line: 139, baseType: !3218, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{null, !3172}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !3215, file: !3167, line: 140, baseType: !3222, size: 64, offset: 64)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3224)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !3225, line: 230, size: 128, elements: !3226)
!3225 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!3226 = !{!3227, !3236}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3224, file: !3225, line: 231, baseType: !3228, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!617, !3172, !3231, !527}
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !3225, line: 30, size: 128, elements: !3233)
!3233 = !{!3234, !3235}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3232, file: !3225, line: 31, baseType: !148, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3232, file: !3225, line: 32, baseType: !472, size: 16, offset: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3224, file: !3225, line: 232, baseType: !3237, size: 64, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!617, !3172, !3231, !148, !620}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !3215, file: !3167, line: 141, baseType: !3241, size: 64, offset: 128)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !3215, file: !3167, line: 142, baseType: !3243, size: 64, offset: 192)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3246)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !3225, line: 84, size: 320, elements: !3247)
!3247 = !{!3248, !3249, !3253, !3272, !3273}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3246, file: !3225, line: 85, baseType: !148, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !3246, file: !3225, line: 86, baseType: !3250, size: 64, offset: 64)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!472, !3172, !3231, !166}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !3246, file: !3225, line: 88, baseType: !3254, size: 64, offset: 128)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!472, !3172, !3257, !166}
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !3225, line: 168, size: 448, elements: !3259)
!3259 = !{!3260, !3261, !3262, !3263, !3267, !3268}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3258, file: !3225, line: 169, baseType: !3232, size: 128)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3258, file: !3225, line: 170, baseType: !620, size: 64, offset: 128)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3258, file: !3225, line: 171, baseType: !144, size: 64, offset: 192)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3258, file: !3225, line: 172, baseType: !3264, size: 64, offset: 256)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!617, !395, !3172, !3257, !527, !571, !620}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3258, file: !3225, line: 174, baseType: !3264, size: 64, offset: 320)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3258, file: !3225, line: 176, baseType: !3269, size: 64, offset: 384)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!166, !395, !3172, !3257, !1022}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3246, file: !3225, line: 90, baseType: !3241, size: 64, offset: 192)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !3246, file: !3225, line: 91, baseType: !3274, size: 64, offset: 256)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !3215, file: !3167, line: 143, baseType: !3276, size: 64, offset: 256)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!3279, !3172}
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3281)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !48, line: 39, size: 384, elements: !3282)
!3282 = !{!3283, !3284, !3288, !3292, !3300, !3304}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3281, file: !48, line: 40, baseType: !47, size: 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3281, file: !48, line: 41, baseType: !3285, size: 64, offset: 64)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!153}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3281, file: !48, line: 42, baseType: !3289, size: 64, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!144}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3281, file: !48, line: 43, baseType: !3293, size: 64, offset: 192)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!3296, !3298}
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !48, line: 19, flags: DIFlagFwdDecl)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3281, file: !48, line: 44, baseType: !3301, size: 64, offset: 256)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!3296}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3281, file: !48, line: 45, baseType: !509, size: 64, offset: 320)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3215, file: !3167, line: 144, baseType: !3306, size: 64, offset: 320)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!3296, !3172}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3215, file: !3167, line: 145, baseType: !3310, size: 64, offset: 384)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{null, !3172, !3313, !3314}
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !3166, file: !3167, line: 70, baseType: !3316, size: 64, offset: 384)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !664, line: 123, size: 1024, elements: !3318)
!3318 = !{!3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3447, !3448, !3449, !3450, !3451}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3317, file: !664, line: 124, baseType: !797, size: 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3317, file: !664, line: 125, baseType: !797, size: 32, offset: 32)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3317, file: !664, line: 135, baseType: !3316, size: 64, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3317, file: !664, line: 136, baseType: !148, size: 64, offset: 128)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3317, file: !664, line: 138, baseType: !810, size: 192, align: 64, offset: 192)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3317, file: !664, line: 140, baseType: !3296, size: 64, offset: 384)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3317, file: !664, line: 141, baseType: !7, size: 32, offset: 448)
!3326 = !DIDerivedType(tag: DW_TAG_member, scope: !3317, file: !664, line: 142, baseType: !3327, size: 256, offset: 512)
!3327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3317, file: !664, line: 142, size: 256, elements: !3328)
!3328 = !{!3329, !3375, !3379}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3327, file: !664, line: 143, baseType: !3330, size: 192)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !664, line: 91, size: 192, elements: !3331)
!3331 = !{!3332, !3333, !3334}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3330, file: !664, line: 92, baseType: !215, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3330, file: !664, line: 94, baseType: !806, size: 64, offset: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3330, file: !664, line: 100, baseType: !3335, size: 64, offset: 128)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !664, line: 180, size: 704, elements: !3337)
!3337 = !{!3338, !3339, !3340, !3347, !3348, !3349, !3373, !3374}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3336, file: !664, line: 182, baseType: !3316, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3336, file: !664, line: 183, baseType: !7, size: 32, offset: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3336, file: !664, line: 186, baseType: !3341, size: 192, offset: 128)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3342, line: 19, size: 192, elements: !3343)
!3342 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3343 = !{!3344, !3345, !3346}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3341, file: !3342, line: 20, baseType: !789, size: 128)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3341, file: !3342, line: 21, baseType: !7, size: 32, offset: 128)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3341, file: !3342, line: 22, baseType: !7, size: 32, offset: 160)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3336, file: !664, line: 187, baseType: !458, size: 32, offset: 320)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3336, file: !664, line: 188, baseType: !458, size: 32, offset: 352)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3336, file: !664, line: 189, baseType: !3350, size: 64, offset: 384)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !664, line: 168, size: 320, elements: !3352)
!3352 = !{!3353, !3357, !3361, !3365, !3369}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3351, file: !664, line: 169, baseType: !3354, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!166, !761, !3335}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3351, file: !664, line: 171, baseType: !3358, size: 64, offset: 64)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!166, !3316, !148, !472}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3351, file: !664, line: 173, baseType: !3362, size: 64, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!166, !3316}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3351, file: !664, line: 174, baseType: !3366, size: 64, offset: 192)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!166, !3316, !3316, !148}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3351, file: !664, line: 176, baseType: !3370, size: 64, offset: 256)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!166, !761, !3316, !3335}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3336, file: !664, line: 192, baseType: !386, size: 128, offset: 448)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3336, file: !664, line: 194, baseType: !1412, size: 128, offset: 576)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3327, file: !664, line: 144, baseType: !3376, size: 64)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !664, line: 103, size: 64, elements: !3377)
!3377 = !{!3378}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3376, file: !664, line: 104, baseType: !3316, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3327, file: !664, line: 145, baseType: !3380, size: 256)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !664, line: 107, size: 256, elements: !3381)
!3381 = !{!3382, !3442, !3445, !3446}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3380, file: !664, line: 108, baseType: !3383, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3385)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !664, line: 217, size: 768, elements: !3386)
!3386 = !{!3387, !3407, !3411, !3415, !3419, !3423, !3427, !3431, !3432, !3433, !3434, !3438}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3385, file: !664, line: 222, baseType: !3388, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!166, !3391}
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !664, line: 197, size: 1088, elements: !3393)
!3393 = !{!3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3392, file: !664, line: 199, baseType: !3316, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3392, file: !664, line: 200, baseType: !395, size: 64, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3392, file: !664, line: 201, baseType: !761, size: 64, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3392, file: !664, line: 202, baseType: !144, size: 64, offset: 192)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3392, file: !664, line: 205, baseType: !356, size: 192, offset: 256)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3392, file: !664, line: 206, baseType: !356, size: 192, offset: 448)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3392, file: !664, line: 207, baseType: !166, size: 32, offset: 640)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3392, file: !664, line: 208, baseType: !386, size: 128, offset: 704)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3392, file: !664, line: 209, baseType: !527, size: 64, offset: 832)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3392, file: !664, line: 211, baseType: !620, size: 64, offset: 896)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3392, file: !664, line: 212, baseType: !153, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3392, file: !664, line: 213, baseType: !153, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3392, file: !664, line: 214, baseType: !1050, size: 64, offset: 1024)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3385, file: !664, line: 223, baseType: !3408, size: 64, offset: 64)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{null, !3391}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3385, file: !664, line: 236, baseType: !3412, size: 64, offset: 128)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!166, !761, !144}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3385, file: !664, line: 238, baseType: !3416, size: 64, offset: 192)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!144, !761, !2729}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3385, file: !664, line: 239, baseType: !3420, size: 64, offset: 256)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!144, !761, !144, !2729}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3385, file: !664, line: 240, baseType: !3424, size: 64, offset: 320)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{null, !761, !144}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3385, file: !664, line: 242, baseType: !3428, size: 64, offset: 384)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!617, !3391, !527, !620, !571}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3385, file: !664, line: 252, baseType: !620, size: 64, offset: 448)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3385, file: !664, line: 259, baseType: !153, size: 8, offset: 512)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3385, file: !664, line: 260, baseType: !3428, size: 64, offset: 576)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3385, file: !664, line: 263, baseType: !3435, size: 64, offset: 640)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!2758, !3391, !2760}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3385, file: !664, line: 266, baseType: !3439, size: 64, offset: 704)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!166, !3391, !1022}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3380, file: !664, line: 109, baseType: !3443, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !664, line: 31, flags: DIFlagFwdDecl)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3380, file: !664, line: 110, baseType: !571, size: 64, offset: 128)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3380, file: !664, line: 111, baseType: !3316, size: 64, offset: 192)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3317, file: !664, line: 148, baseType: !144, size: 64, offset: 768)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3317, file: !664, line: 154, baseType: !461, size: 64, offset: 832)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3317, file: !664, line: 156, baseType: !209, size: 16, offset: 896)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3317, file: !664, line: 157, baseType: !472, size: 16, offset: 912)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3317, file: !664, line: 158, baseType: !3452, size: 64, offset: 960)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !664, line: 32, flags: DIFlagFwdDecl)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3166, file: !3167, line: 71, baseType: !3455, size: 32, offset: 448)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3456, line: 19, size: 32, elements: !3457)
!3456 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3457 = !{!3458}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3455, file: !3456, line: 20, baseType: !1165, size: 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !3166, file: !3167, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !3166, file: !3167, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !3166, file: !3167, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !3166, file: !3167, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !3166, file: !3167, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3163, file: !60, line: 463, baseType: !3465, size: 64, offset: 512)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3163, file: !60, line: 465, baseType: !3467, size: 64, offset: 576)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3163, file: !60, line: 467, baseType: !148, size: 64, offset: 640)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3163, file: !60, line: 468, baseType: !3471, size: 64, offset: 704)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3473)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3474)
!3474 = !{!3475, !3476, !3477, !3481, !3486, !3490}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3473, file: !60, line: 88, baseType: !148, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3473, file: !60, line: 89, baseType: !3243, size: 64, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3473, file: !60, line: 90, baseType: !3478, size: 64, offset: 128)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!166, !3465, !3200}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3473, file: !60, line: 91, baseType: !3482, size: 64, offset: 192)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!527, !3465, !3485, !3313, !3314}
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3473, file: !60, line: 93, baseType: !3487, size: 64, offset: 256)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{null, !3465}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3473, file: !60, line: 95, baseType: !3491, size: 64, offset: 320)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3493)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3494)
!3494 = !{!3495, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3493, file: !67, line: 279, baseType: !3496, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!166, !3465}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3493, file: !67, line: 280, baseType: !3487, size: 64, offset: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3493, file: !67, line: 281, baseType: !3496, size: 64, offset: 128)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3493, file: !67, line: 282, baseType: !3496, size: 64, offset: 192)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3493, file: !67, line: 283, baseType: !3496, size: 64, offset: 256)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3493, file: !67, line: 284, baseType: !3496, size: 64, offset: 320)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3493, file: !67, line: 285, baseType: !3496, size: 64, offset: 384)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3493, file: !67, line: 286, baseType: !3496, size: 64, offset: 448)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3493, file: !67, line: 287, baseType: !3496, size: 64, offset: 512)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3493, file: !67, line: 288, baseType: !3496, size: 64, offset: 576)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3493, file: !67, line: 289, baseType: !3496, size: 64, offset: 640)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3493, file: !67, line: 290, baseType: !3496, size: 64, offset: 704)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3493, file: !67, line: 291, baseType: !3496, size: 64, offset: 768)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3493, file: !67, line: 292, baseType: !3496, size: 64, offset: 832)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3493, file: !67, line: 293, baseType: !3496, size: 64, offset: 896)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3493, file: !67, line: 294, baseType: !3496, size: 64, offset: 960)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3493, file: !67, line: 295, baseType: !3496, size: 64, offset: 1024)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3493, file: !67, line: 296, baseType: !3496, size: 64, offset: 1088)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3493, file: !67, line: 297, baseType: !3496, size: 64, offset: 1152)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3493, file: !67, line: 298, baseType: !3496, size: 64, offset: 1216)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3493, file: !67, line: 299, baseType: !3496, size: 64, offset: 1280)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3493, file: !67, line: 300, baseType: !3496, size: 64, offset: 1344)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3493, file: !67, line: 301, baseType: !3496, size: 64, offset: 1408)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3163, file: !60, line: 470, baseType: !3522, size: 64, offset: 768)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3524, line: 82, size: 1408, elements: !3525)
!3524 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3525 = !{!3526, !3527, !3528, !3529, !3530, !3531, !3532, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3605, !3608, !3609}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3523, file: !3524, line: 83, baseType: !148, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3523, file: !3524, line: 84, baseType: !148, size: 64, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3523, file: !3524, line: 85, baseType: !3465, size: 64, offset: 128)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3523, file: !3524, line: 86, baseType: !3243, size: 64, offset: 192)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3523, file: !3524, line: 87, baseType: !3243, size: 64, offset: 256)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3523, file: !3524, line: 88, baseType: !3243, size: 64, offset: 320)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3523, file: !3524, line: 90, baseType: !3533, size: 64, offset: 384)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!166, !3465, !3536}
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3538)
!3538 = !{!3539, !3540, !3541, !3542, !3543, !3544, !3545, !3557, !3569, !3570, !3571, !3572, !3573, !3581, !3582, !3583, !3584, !3585, !3586}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3537, file: !54, line: 96, baseType: !148, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3537, file: !54, line: 97, baseType: !3522, size: 64, offset: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3537, file: !54, line: 99, baseType: !678, size: 64, offset: 128)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3537, file: !54, line: 100, baseType: !148, size: 64, offset: 192)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3537, file: !54, line: 102, baseType: !153, size: 8, offset: 256)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3537, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3537, file: !54, line: 105, baseType: !3546, size: 64, offset: 320)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3548)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !160, line: 262, size: 1600, elements: !3549)
!3549 = !{!3550, !3551, !3552, !3556}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3548, file: !160, line: 263, baseType: !2553, size: 256)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3548, file: !160, line: 264, baseType: !2553, size: 256, offset: 256)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3548, file: !160, line: 265, baseType: !3553, size: 1024, offset: 512)
!3553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 1024, elements: !3554)
!3554 = !{!3555}
!3555 = !DISubrange(count: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3548, file: !160, line: 266, baseType: !3296, size: 64, offset: 1536)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3537, file: !54, line: 106, baseType: !3558, size: 64, offset: 384)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3560)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !160, line: 210, size: 256, elements: !3561)
!3561 = !{!3562, !3566, !3567, !3568}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3560, file: !160, line: 211, baseType: !3563, size: 72)
!3563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 72, elements: !3564)
!3564 = !{!3565}
!3565 = !DISubrange(count: 9)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3560, file: !160, line: 212, baseType: !3126, size: 64, offset: 128)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3560, file: !160, line: 213, baseType: !250, size: 32, offset: 192)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3560, file: !160, line: 214, baseType: !250, size: 32, offset: 224)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3537, file: !54, line: 108, baseType: !3496, size: 64, offset: 448)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3537, file: !54, line: 109, baseType: !3487, size: 64, offset: 512)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3537, file: !54, line: 110, baseType: !3496, size: 64, offset: 576)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3537, file: !54, line: 111, baseType: !3487, size: 64, offset: 640)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3537, file: !54, line: 112, baseType: !3574, size: 64, offset: 704)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!166, !3465, !3577}
!3577 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3578)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3579)
!3579 = !{!3580}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3578, file: !67, line: 51, baseType: !166, size: 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3537, file: !54, line: 113, baseType: !3496, size: 64, offset: 768)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3537, file: !54, line: 114, baseType: !3243, size: 64, offset: 832)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3537, file: !54, line: 115, baseType: !3243, size: 64, offset: 896)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3537, file: !54, line: 117, baseType: !3491, size: 64, offset: 960)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3537, file: !54, line: 118, baseType: !3487, size: 64, offset: 1024)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3537, file: !54, line: 120, baseType: !3587, size: 64, offset: 1088)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3523, file: !3524, line: 91, baseType: !3478, size: 64, offset: 448)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3523, file: !3524, line: 92, baseType: !3496, size: 64, offset: 512)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3523, file: !3524, line: 93, baseType: !3487, size: 64, offset: 576)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3523, file: !3524, line: 94, baseType: !3496, size: 64, offset: 640)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3523, file: !3524, line: 95, baseType: !3487, size: 64, offset: 704)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3523, file: !3524, line: 97, baseType: !3496, size: 64, offset: 768)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3523, file: !3524, line: 98, baseType: !3496, size: 64, offset: 832)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3523, file: !3524, line: 100, baseType: !3574, size: 64, offset: 896)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3523, file: !3524, line: 101, baseType: !3496, size: 64, offset: 960)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3523, file: !3524, line: 103, baseType: !3496, size: 64, offset: 1024)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3523, file: !3524, line: 105, baseType: !3496, size: 64, offset: 1088)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3523, file: !3524, line: 107, baseType: !3491, size: 64, offset: 1152)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3523, file: !3524, line: 109, baseType: !3602, size: 64, offset: 1216)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3604)
!3604 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3524, line: 109, flags: DIFlagFwdDecl)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3523, file: !3524, line: 111, baseType: !3606, size: 64, offset: 1280)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3524, line: 111, flags: DIFlagFwdDecl)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3523, file: !3524, line: 112, baseType: !693, offset: 1344)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3523, file: !3524, line: 114, baseType: !153, size: 8, offset: 1344)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3163, file: !60, line: 471, baseType: !3536, size: 64, offset: 832)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3163, file: !60, line: 473, baseType: !144, size: 64, offset: 896)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3163, file: !60, line: 475, baseType: !144, size: 64, offset: 960)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3163, file: !60, line: 480, baseType: !356, size: 192, offset: 1024)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3163, file: !60, line: 484, baseType: !3615, size: 576, offset: 1216)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3616)
!3616 = !{!3617, !3618, !3619, !3620, !3621, !3622}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3615, file: !60, line: 362, baseType: !386, size: 128)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3615, file: !60, line: 363, baseType: !386, size: 128, offset: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3615, file: !60, line: 364, baseType: !386, size: 128, offset: 256)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3615, file: !60, line: 365, baseType: !386, size: 128, offset: 384)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3615, file: !60, line: 366, baseType: !153, size: 8, offset: 512)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3615, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3163, file: !60, line: 485, baseType: !3624, size: 2304, offset: 1792)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3625)
!3625 = !{!3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3710, !3714}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3624, file: !67, line: 566, baseType: !3577, size: 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3624, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3624, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3624, file: !67, line: 569, baseType: !153, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3624, file: !67, line: 570, baseType: !153, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3624, file: !67, line: 571, baseType: !153, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3624, file: !67, line: 572, baseType: !153, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3624, file: !67, line: 573, baseType: !153, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3624, file: !67, line: 574, baseType: !153, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3624, file: !67, line: 575, baseType: !153, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3624, file: !67, line: 576, baseType: !153, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3624, file: !67, line: 577, baseType: !458, size: 32, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3624, file: !67, line: 578, baseType: !370, offset: 96)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3624, file: !67, line: 580, baseType: !386, size: 128, offset: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3624, file: !67, line: 581, baseType: !1433, size: 192, offset: 256)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3624, file: !67, line: 582, baseType: !3642, size: 64, offset: 448)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3644, line: 43, size: 1472, elements: !3645)
!3644 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3645 = !{!3646, !3647, !3648, !3649, !3650, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3643, file: !3644, line: 44, baseType: !148, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3643, file: !3644, line: 45, baseType: !166, size: 32, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3643, file: !3644, line: 46, baseType: !386, size: 128, offset: 128)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3643, file: !3644, line: 47, baseType: !370, offset: 256)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3643, file: !3644, line: 48, baseType: !3651, size: 64, offset: 256)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3643, file: !3644, line: 49, baseType: !3035, size: 320, offset: 320)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3643, file: !3644, line: 50, baseType: !215, size: 64, offset: 640)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3643, file: !3644, line: 51, baseType: !1235, size: 64, offset: 704)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3643, file: !3644, line: 52, baseType: !1235, size: 64, offset: 768)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3643, file: !3644, line: 53, baseType: !1235, size: 64, offset: 832)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3643, file: !3644, line: 54, baseType: !1235, size: 64, offset: 896)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3643, file: !3644, line: 55, baseType: !1235, size: 64, offset: 960)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3643, file: !3644, line: 56, baseType: !215, size: 64, offset: 1024)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3643, file: !3644, line: 57, baseType: !215, size: 64, offset: 1088)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3643, file: !3644, line: 58, baseType: !215, size: 64, offset: 1152)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3643, file: !3644, line: 59, baseType: !215, size: 64, offset: 1216)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3643, file: !3644, line: 60, baseType: !215, size: 64, offset: 1280)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3643, file: !3644, line: 61, baseType: !3465, size: 64, offset: 1344)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3643, file: !3644, line: 62, baseType: !153, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3643, file: !3644, line: 63, baseType: !153, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3624, file: !67, line: 583, baseType: !153, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3624, file: !67, line: 584, baseType: !153, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3624, file: !67, line: 585, baseType: !153, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3624, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3624, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3624, file: !67, line: 592, baseType: !1227, size: 512, offset: 576)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3624, file: !67, line: 593, baseType: !461, size: 64, offset: 1088)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3624, file: !67, line: 594, baseType: !1889, size: 256, offset: 1152)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3624, file: !67, line: 595, baseType: !1412, size: 128, offset: 1408)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3624, file: !67, line: 596, baseType: !3651, size: 64, offset: 1536)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3624, file: !67, line: 597, baseType: !797, size: 32, offset: 1600)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3624, file: !67, line: 598, baseType: !797, size: 32, offset: 1632)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3624, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3624, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3624, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3624, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3624, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3624, file: !67, line: 604, baseType: !153, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3624, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3624, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3624, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3624, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3624, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3624, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3624, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3624, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3624, file: !67, line: 613, baseType: !166, size: 32, offset: 1792)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3624, file: !67, line: 614, baseType: !166, size: 32, offset: 1824)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3624, file: !67, line: 615, baseType: !461, size: 64, offset: 1856)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3624, file: !67, line: 616, baseType: !461, size: 64, offset: 1920)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3624, file: !67, line: 617, baseType: !461, size: 64, offset: 1984)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3624, file: !67, line: 618, baseType: !461, size: 64, offset: 2048)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3624, file: !67, line: 620, baseType: !3701, size: 64, offset: 2112)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3703)
!3703 = !{!3704, !3705, !3706, !3707}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3702, file: !67, line: 537, baseType: !370)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3702, file: !67, line: 538, baseType: !7, size: 32)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3702, file: !67, line: 540, baseType: !386, size: 128, offset: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3702, file: !67, line: 543, baseType: !3708, size: 64, offset: 192)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3624, file: !67, line: 621, baseType: !3711, size: 64, offset: 2176)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{null, !3465, !1375}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3624, file: !67, line: 622, baseType: !3715, size: 64, offset: 2240)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3163, file: !60, line: 486, baseType: !3718, size: 64, offset: 4096)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3720)
!3720 = !{!3721, !3722, !3723, !3727, !3728, !3729}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3719, file: !67, line: 643, baseType: !3493, size: 1472)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3719, file: !67, line: 644, baseType: !3496, size: 64, offset: 1472)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3719, file: !67, line: 645, baseType: !3724, size: 64, offset: 1536)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{null, !3465, !153}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3719, file: !67, line: 646, baseType: !3496, size: 64, offset: 1600)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3719, file: !67, line: 647, baseType: !3487, size: 64, offset: 1664)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3719, file: !67, line: 648, baseType: !3487, size: 64, offset: 1728)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3163, file: !60, line: 493, baseType: !3731, size: 64, offset: 4160)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !60, line: 493, flags: DIFlagFwdDecl)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3163, file: !60, line: 499, baseType: !386, size: 128, offset: 4224)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3163, file: !60, line: 502, baseType: !3735, size: 64, offset: 4352)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3737)
!3737 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3163, file: !60, line: 504, baseType: !3739, size: 64, offset: 4416)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3163, file: !60, line: 505, baseType: !461, size: 64, offset: 4480)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3163, file: !60, line: 510, baseType: !461, size: 64, offset: 4544)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3163, file: !60, line: 511, baseType: !3743, size: 64, offset: 4608)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3745)
!3745 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3163, file: !60, line: 513, baseType: !3747, size: 64, offset: 4672)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !3749)
!3749 = !{!3750, !3751}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3748, file: !60, line: 293, baseType: !7, size: 32)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3748, file: !60, line: 294, baseType: !215, size: 64, offset: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3163, file: !60, line: 515, baseType: !386, size: 128, offset: 4736)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3163, file: !60, line: 526, baseType: !3754, offset: 4864)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3755, line: 5, elements: !384)
!3755 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3163, file: !60, line: 528, baseType: !3757, size: 64, offset: 4864)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3759, line: 14, flags: DIFlagFwdDecl)
!3759 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3163, file: !60, line: 529, baseType: !3761, size: 64, offset: 4928)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3524, line: 22, flags: DIFlagFwdDecl)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3163, file: !60, line: 534, baseType: !553, size: 32, offset: 4992)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3163, file: !60, line: 535, baseType: !458, size: 32, offset: 5024)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3163, file: !60, line: 537, baseType: !370, offset: 5056)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3163, file: !60, line: 538, baseType: !386, size: 128, offset: 5056)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3163, file: !60, line: 540, baseType: !3768, size: 64, offset: 5184)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3770, line: 54, size: 960, elements: !3771)
!3770 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3771 = !{!3772, !3773, !3774, !3775, !3776, !3777, !3778, !3782, !3786, !3787, !3788, !3789, !3793, !3797, !3798}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3769, file: !3770, line: 55, baseType: !148, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3769, file: !3770, line: 56, baseType: !678, size: 64, offset: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3769, file: !3770, line: 58, baseType: !3243, size: 64, offset: 128)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3769, file: !3770, line: 59, baseType: !3243, size: 64, offset: 192)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3769, file: !3770, line: 60, baseType: !3172, size: 64, offset: 256)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3769, file: !3770, line: 62, baseType: !3478, size: 64, offset: 320)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3769, file: !3770, line: 63, baseType: !3779, size: 64, offset: 384)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!527, !3465, !3485}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3769, file: !3770, line: 65, baseType: !3783, size: 64, offset: 448)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{null, !3768}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3769, file: !3770, line: 66, baseType: !3487, size: 64, offset: 512)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3769, file: !3770, line: 68, baseType: !3496, size: 64, offset: 576)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3769, file: !3770, line: 70, baseType: !3279, size: 64, offset: 640)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3769, file: !3770, line: 71, baseType: !3790, size: 64, offset: 704)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!3296, !3465}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3769, file: !3770, line: 73, baseType: !3794, size: 64, offset: 768)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{null, !3465, !3313, !3314}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3769, file: !3770, line: 75, baseType: !3491, size: 64, offset: 832)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3769, file: !3770, line: 77, baseType: !3606, size: 64, offset: 896)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3163, file: !60, line: 541, baseType: !3243, size: 64, offset: 5248)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3163, file: !60, line: 543, baseType: !3487, size: 64, offset: 5312)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3163, file: !60, line: 544, baseType: !3802, size: 64, offset: 5376)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3163, file: !60, line: 545, baseType: !3805, size: 64, offset: 5440)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3163, file: !60, line: 547, baseType: !153, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3163, file: !60, line: 548, baseType: !153, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3163, file: !60, line: 549, baseType: !153, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3163, file: !60, line: 550, baseType: !153, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !196, file: !197, line: 194, baseType: !386, size: 128, offset: 9792)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !196, file: !197, line: 195, baseType: !386, size: 128, offset: 9920)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !196, file: !197, line: 197, baseType: !7, size: 32, offset: 10048)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !196, file: !197, line: 198, baseType: !7, size: 32, offset: 10080)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !196, file: !197, line: 199, baseType: !3816, size: 64, offset: 10112)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !196, file: !197, line: 201, baseType: !153, size: 8, offset: 10176)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !196, file: !197, line: 203, baseType: !3819, size: 192, offset: 10240)
!3819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1235, size: 192, elements: !699)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "ps2dev", scope: !191, file: !87, line: 92, baseType: !3821, size: 576, offset: 128)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ps2dev", file: !3822, line: 33, size: 576, elements: !3823)
!3822 = !DIFile(filename: "./include/linux/libps2.h", directory: "/home/lizy2001/genbc/linux")
!3823 = !{!3824, !3889, !3890, !3891, !3892, !3894, !3895}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "serio", scope: !3821, file: !3822, line: 34, baseType: !3825, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio", file: !3827, line: 20, size: 8384, elements: !3828)
!3827 = !DIFile(filename: "./include/linux/serio.h", directory: "/home/lizy2001/genbc/linux")
!3828 = !{!3829, !3830, !3831, !3832, !3833, !3834, !3841, !3842, !3846, !3850, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3884, !3885, !3886, !3887}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "port_data", scope: !3826, file: !3827, line: 21, baseType: !144, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3826, file: !3827, line: 23, baseType: !2553, size: 256, offset: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !3826, file: !3827, line: 24, baseType: !2553, size: 256, offset: 320)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_id", scope: !3826, file: !3827, line: 25, baseType: !3553, size: 1024, offset: 576)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !3826, file: !3827, line: 27, baseType: !153, size: 8, offset: 1600)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3826, file: !3827, line: 29, baseType: !3835, size: 32, offset: 1608)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_device_id", file: !160, line: 236, size: 32, elements: !3836)
!3836 = !{!3837, !3838, !3839, !3840}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3835, file: !160, line: 237, baseType: !246, size: 8)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3835, file: !160, line: 238, baseType: !246, size: 8, offset: 8)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3835, file: !160, line: 239, baseType: !246, size: 8, offset: 16)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !3835, file: !160, line: 240, baseType: !246, size: 8, offset: 24)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3826, file: !3827, line: 32, baseType: !370, offset: 1640)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3826, file: !3827, line: 34, baseType: !3843, size: 64, offset: 1664)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!166, !3825, !174}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3826, file: !3827, line: 35, baseType: !3847, size: 64, offset: 1728)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!166, !3825}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3826, file: !3827, line: 36, baseType: !3851, size: 64, offset: 1792)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{null, !3825}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3826, file: !3827, line: 37, baseType: !3847, size: 64, offset: 1856)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3826, file: !3827, line: 38, baseType: !3851, size: 64, offset: 1920)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3826, file: !3827, line: 40, baseType: !3825, size: 64, offset: 1984)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "child_node", scope: !3826, file: !3827, line: 42, baseType: !386, size: 128, offset: 2048)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3826, file: !3827, line: 43, baseType: !386, size: 128, offset: 2176)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3826, file: !3827, line: 45, baseType: !7, size: 32, offset: 2304)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !3826, file: !3827, line: 51, baseType: !3861, size: 64, offset: 2368)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_driver", file: !3827, line: 67, size: 1792, elements: !3863)
!3863 = !{!3864, !3865, !3868, !3869, !3870, !3875, !3879, !3880, !3881, !3882, !3883}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !3862, file: !3827, line: 68, baseType: !148, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3862, file: !3827, line: 70, baseType: !3866, size: 64, offset: 64)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3835)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !3862, file: !3827, line: 71, baseType: !153, size: 8, offset: 128)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !3862, file: !3827, line: 73, baseType: !3851, size: 64, offset: 192)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !3862, file: !3827, line: 74, baseType: !3871, size: 64, offset: 256)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!3874, !3825, !174, !7}
!3874 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !81, line: 17, baseType: !80)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !3862, file: !3827, line: 75, baseType: !3876, size: 64, offset: 320)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!166, !3825, !3861}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !3862, file: !3827, line: 76, baseType: !3847, size: 64, offset: 384)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !3862, file: !3827, line: 77, baseType: !3847, size: 64, offset: 448)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3862, file: !3827, line: 78, baseType: !3851, size: 64, offset: 512)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3862, file: !3827, line: 79, baseType: !3851, size: 64, offset: 576)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3862, file: !3827, line: 81, baseType: !3537, size: 1152, offset: 640)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "drv_mutex", scope: !3826, file: !3827, line: 53, baseType: !356, size: 192, offset: 2432)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3826, file: !3827, line: 55, baseType: !3163, size: 5568, offset: 2624)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3826, file: !3827, line: 57, baseType: !386, size: 128, offset: 8192)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "ps2_cmd_mutex", scope: !3826, file: !3827, line: 63, baseType: !3888, size: 64, offset: 8320)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_mutex", scope: !3821, file: !3822, line: 37, baseType: !356, size: 192, offset: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3821, file: !3822, line: 40, baseType: !1412, size: 128, offset: 256)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3821, file: !3822, line: 42, baseType: !215, size: 64, offset: 384)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "cmdbuf", scope: !3821, file: !3822, line: 43, baseType: !3893, size: 64, offset: 448)
!3893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1287, size: 64, elements: !1265)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcnt", scope: !3821, file: !3822, line: 44, baseType: !1287, size: 8, offset: 512)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "nak", scope: !3821, file: !3822, line: 45, baseType: !1287, size: 8, offset: 520)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "resync_work", scope: !191, file: !87, line: 93, baseType: !3897, size: 704, offset: 704)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1890, line: 115, size: 704, elements: !3898)
!3898 = !{!3899, !3900, !3901, !3902}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3897, file: !1890, line: 116, baseType: !1889, size: 256)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3897, file: !1890, line: 117, baseType: !3035, size: 320, offset: 256)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3897, file: !1890, line: 120, baseType: !2646, size: 64, offset: 576)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3897, file: !1890, line: 121, baseType: !166, size: 32, offset: 640)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !191, file: !87, line: 94, baseType: !148, size: 64, offset: 1408)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !191, file: !87, line: 95, baseType: !148, size: 64, offset: 1472)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !191, file: !87, line: 96, baseType: !3906, size: 64, offset: 1536)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3908)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse_protocol", file: !87, line: 77, size: 320, elements: !3909)
!3909 = !{!3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3921}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3908, file: !87, line: 78, baseType: !86, size: 32)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "maxproto", scope: !3908, file: !87, line: 79, baseType: !153, size: 8, offset: 32)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parity", scope: !3908, file: !87, line: 80, baseType: !153, size: 8, offset: 40)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "try_passthru", scope: !3908, file: !87, line: 81, baseType: !153, size: 8, offset: 48)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_companion", scope: !3908, file: !87, line: 82, baseType: !153, size: 8, offset: 56)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3908, file: !87, line: 83, baseType: !148, size: 64, offset: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !3908, file: !87, line: 84, baseType: !148, size: 64, offset: 128)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !3908, file: !87, line: 85, baseType: !3918, size: 64, offset: 192)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!166, !190, !153}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !3908, file: !87, line: 86, baseType: !3922, size: 64, offset: 256)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!166, !190}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !191, file: !87, line: 97, baseType: !3926, size: 64, offset: 1600)
!3926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 64, elements: !1265)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "badbyte", scope: !191, file: !87, line: 98, baseType: !174, size: 8, offset: 1664)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "pktcnt", scope: !191, file: !87, line: 99, baseType: !174, size: 8, offset: 1672)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "pktsize", scope: !191, file: !87, line: 100, baseType: !174, size: 8, offset: 1680)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "oob_data_type", scope: !191, file: !87, line: 101, baseType: !174, size: 8, offset: 1688)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "extra_buttons", scope: !191, file: !87, line: 102, baseType: !174, size: 8, offset: 1696)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "acks_disable_command", scope: !191, file: !87, line: 103, baseType: !153, size: 8, offset: 1704)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !191, file: !87, line: 104, baseType: !7, size: 32, offset: 1728)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !191, file: !87, line: 105, baseType: !215, size: 64, offset: 1792)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "out_of_sync_cnt", scope: !191, file: !87, line: 106, baseType: !215, size: 64, offset: 1856)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "num_resyncs", scope: !191, file: !87, line: 107, baseType: !215, size: 64, offset: 1920)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !191, file: !87, line: 108, baseType: !113, size: 32, offset: 1984)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "devname", scope: !191, file: !87, line: 109, baseType: !3939, size: 512, offset: 2016)
!3939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 512, elements: !1811)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !191, file: !87, line: 110, baseType: !2553, size: 256, offset: 2528)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !191, file: !87, line: 112, baseType: !7, size: 32, offset: 2784)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !191, file: !87, line: 113, baseType: !7, size: 32, offset: 2816)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "resetafter", scope: !191, file: !87, line: 114, baseType: !7, size: 32, offset: 2848)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "resync_time", scope: !191, file: !87, line: 115, baseType: !7, size: 32, offset: 2880)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "smartscroll", scope: !191, file: !87, line: 116, baseType: !153, size: 8, offset: 2912)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_handler", scope: !191, file: !87, line: 118, baseType: !3947, size: 64, offset: 2944)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!3950, !190}
!3950 = !DIDerivedType(tag: DW_TAG_typedef, name: "psmouse_ret_t", file: !87, line: 41, baseType: !120)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !191, file: !87, line: 119, baseType: !3952, size: 64, offset: 3008)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "set_resolution", scope: !191, file: !87, line: 120, baseType: !3952, size: 64, offset: 3072)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "set_scale", scope: !191, file: !87, line: 121, baseType: !3955, size: 64, offset: 3136)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{null, !190, !125}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !191, file: !87, line: 123, baseType: !3922, size: 64, offset: 3200)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !191, file: !87, line: 124, baseType: !3922, size: 64, offset: 3264)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !191, file: !87, line: 125, baseType: !3961, size: 64, offset: 3328)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{null, !190}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !191, file: !87, line: 126, baseType: !3961, size: 64, offset: 3392)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !191, file: !87, line: 127, baseType: !3922, size: 64, offset: 3456)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "pt_activate", scope: !191, file: !87, line: 129, baseType: !3961, size: 64, offset: 3520)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "pt_deactivate", scope: !191, file: !87, line: 130, baseType: !3961, size: 64, offset: 3584)
!3968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3969, size: 40, elements: !3970)
!3969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1287)
!3970 = !{!3971}
!3971 = !DISubrange(count: 5)
!3972 = !{i32 7, !"Dwarf Version", i32 4}
!3973 = !{i32 2, !"Debug Info Version", i32 3}
!3974 = !{i32 1, !"wchar_size", i32 2}
!3975 = !{i32 1, !"Code Model", i32 2}
!3976 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3977 = distinct !DISubprogram(name: "lifebook_module_init", scope: !3, file: !3, line: 127, type: !1808, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !384)
!3978 = !DILocation(line: 129, column: 21, scope: !3977)
!3979 = !DILocation(line: 129, column: 19, scope: !3977)
!3980 = !DILocation(line: 130, column: 1, scope: !3977)
!3981 = distinct !DISubprogram(name: "lifebook_detect", scope: !3, file: !3, line: 253, type: !3919, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !384)
!3982 = !DILocalVariable(name: "psmouse", arg: 1, scope: !3981, file: !3, line: 253, type: !190)
!3983 = !DILocation(line: 253, column: 37, scope: !3981)
!3984 = !DILocalVariable(name: "set_properties", arg: 2, scope: !3981, file: !3, line: 253, type: !153)
!3985 = !DILocation(line: 253, column: 51, scope: !3981)
!3986 = !DILocation(line: 255, column: 7, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3981, file: !3, line: 255, column: 6)
!3988 = !DILocation(line: 255, column: 6, scope: !3981)
!3989 = !DILocation(line: 256, column: 3, scope: !3987)
!3990 = !DILocation(line: 258, column: 6, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3981, file: !3, line: 258, column: 6)
!3992 = !DILocation(line: 258, column: 25, scope: !3991)
!3993 = !DILocation(line: 259, column: 13, scope: !3991)
!3994 = !DILocation(line: 259, column: 22, scope: !3991)
!3995 = !DILocation(line: 259, column: 29, scope: !3991)
!3996 = !DILocation(line: 259, column: 36, scope: !3991)
!3997 = !DILocation(line: 259, column: 42, scope: !3991)
!3998 = !DILocation(line: 259, column: 6, scope: !3991)
!3999 = !DILocation(line: 258, column: 6, scope: !3981)
!4000 = !DILocation(line: 260, column: 3, scope: !3991)
!4001 = !DILocation(line: 262, column: 6, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3981, file: !3, line: 262, column: 6)
!4003 = !DILocation(line: 262, column: 6, scope: !3981)
!4004 = !DILocation(line: 263, column: 3, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 262, column: 22)
!4006 = !DILocation(line: 263, column: 12, scope: !4005)
!4007 = !DILocation(line: 263, column: 19, scope: !4005)
!4008 = !DILocation(line: 264, column: 3, scope: !4005)
!4009 = !DILocation(line: 264, column: 12, scope: !4005)
!4010 = !DILocation(line: 264, column: 17, scope: !4005)
!4011 = !DILocation(line: 265, column: 2, scope: !4005)
!4012 = !DILocation(line: 267, column: 2, scope: !3981)
!4013 = !DILocation(line: 268, column: 1, scope: !3981)
!4014 = distinct !DISubprogram(name: "lifebook_init", scope: !3, file: !3, line: 311, type: !3923, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !384)
!4015 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4014, file: !3, line: 311, type: !190)
!4016 = !DILocation(line: 311, column: 35, scope: !4014)
!4017 = !DILocalVariable(name: "dev1", scope: !4014, file: !3, line: 313, type: !195)
!4018 = !DILocation(line: 313, column: 20, scope: !4014)
!4019 = !DILocation(line: 313, column: 27, scope: !4014)
!4020 = !DILocation(line: 313, column: 36, scope: !4014)
!4021 = !DILocalVariable(name: "max_coord", scope: !4014, file: !3, line: 314, type: !166)
!4022 = !DILocation(line: 314, column: 6, scope: !4014)
!4023 = !DILocation(line: 314, column: 18, scope: !4014)
!4024 = !DILocalVariable(name: "error", scope: !4014, file: !3, line: 315, type: !166)
!4025 = !DILocation(line: 315, column: 6, scope: !4014)
!4026 = !DILocation(line: 317, column: 33, scope: !4014)
!4027 = !DILocation(line: 317, column: 10, scope: !4014)
!4028 = !DILocation(line: 317, column: 8, scope: !4014)
!4029 = !DILocation(line: 318, column: 6, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4014, file: !3, line: 318, column: 6)
!4031 = !DILocation(line: 318, column: 6, scope: !4014)
!4032 = !DILocation(line: 319, column: 10, scope: !4030)
!4033 = !DILocation(line: 319, column: 3, scope: !4030)
!4034 = !DILocation(line: 322, column: 14, scope: !4014)
!4035 = !DILocation(line: 322, column: 20, scope: !4014)
!4036 = !DILocation(line: 322, column: 2, scope: !4014)
!4037 = !DILocation(line: 323, column: 14, scope: !4014)
!4038 = !DILocation(line: 323, column: 20, scope: !4014)
!4039 = !DILocation(line: 323, column: 2, scope: !4014)
!4040 = !DILocation(line: 324, column: 14, scope: !4014)
!4041 = !DILocation(line: 324, column: 20, scope: !4014)
!4042 = !DILocation(line: 324, column: 2, scope: !4014)
!4043 = !DILocation(line: 326, column: 23, scope: !4014)
!4044 = !DILocation(line: 326, column: 2, scope: !4014)
!4045 = !DILocation(line: 327, column: 23, scope: !4014)
!4046 = !DILocation(line: 327, column: 39, scope: !4014)
!4047 = !DILocation(line: 327, column: 2, scope: !4014)
!4048 = !DILocation(line: 328, column: 23, scope: !4014)
!4049 = !DILocation(line: 328, column: 39, scope: !4014)
!4050 = !DILocation(line: 328, column: 2, scope: !4014)
!4051 = !DILocation(line: 330, column: 7, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4014, file: !3, line: 330, column: 6)
!4053 = !DILocation(line: 330, column: 6, scope: !4014)
!4054 = !DILocation(line: 331, column: 43, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4052, file: !3, line: 330, column: 27)
!4056 = !DILocation(line: 331, column: 11, scope: !4055)
!4057 = !DILocation(line: 331, column: 9, scope: !4055)
!4058 = !DILocation(line: 332, column: 7, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4055, file: !3, line: 332, column: 7)
!4060 = !DILocation(line: 332, column: 7, scope: !4055)
!4061 = !DILocation(line: 333, column: 27, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 332, column: 14)
!4063 = !DILocation(line: 333, column: 4, scope: !4062)
!4064 = !DILocation(line: 334, column: 11, scope: !4062)
!4065 = !DILocation(line: 334, column: 4, scope: !4062)
!4066 = !DILocation(line: 336, column: 2, scope: !4055)
!4067 = !DILocation(line: 338, column: 2, scope: !4014)
!4068 = !DILocation(line: 338, column: 11, scope: !4014)
!4069 = !DILocation(line: 338, column: 28, scope: !4014)
!4070 = !DILocation(line: 339, column: 2, scope: !4014)
!4071 = !DILocation(line: 339, column: 11, scope: !4014)
!4072 = !DILocation(line: 339, column: 26, scope: !4014)
!4073 = !DILocation(line: 340, column: 2, scope: !4014)
!4074 = !DILocation(line: 340, column: 11, scope: !4014)
!4075 = !DILocation(line: 340, column: 22, scope: !4014)
!4076 = !DILocation(line: 341, column: 2, scope: !4014)
!4077 = !DILocation(line: 341, column: 11, scope: !4014)
!4078 = !DILocation(line: 341, column: 22, scope: !4014)
!4079 = !DILocation(line: 343, column: 19, scope: !4014)
!4080 = !DILocation(line: 343, column: 2, scope: !4014)
!4081 = !DILocation(line: 343, column: 11, scope: !4014)
!4082 = !DILocation(line: 343, column: 17, scope: !4014)
!4083 = !DILocation(line: 349, column: 2, scope: !4014)
!4084 = !DILocation(line: 349, column: 11, scope: !4014)
!4085 = !DILocation(line: 349, column: 19, scope: !4014)
!4086 = !DILocation(line: 351, column: 2, scope: !4014)
!4087 = !DILocation(line: 352, column: 1, scope: !4014)
!4088 = distinct !DISubprogram(name: "lifebook_absolute_mode", scope: !3, file: !3, line: 199, type: !3923, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!4089 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4088, file: !3, line: 199, type: !190)
!4090 = !DILocation(line: 199, column: 51, scope: !4088)
!4091 = !DILocalVariable(name: "ps2dev", scope: !4088, file: !3, line: 201, type: !4092)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!4093 = !DILocation(line: 201, column: 17, scope: !4088)
!4094 = !DILocation(line: 201, column: 27, scope: !4088)
!4095 = !DILocation(line: 201, column: 36, scope: !4088)
!4096 = !DILocalVariable(name: "param", scope: !4088, file: !3, line: 202, type: !1287)
!4097 = !DILocation(line: 202, column: 5, scope: !4088)
!4098 = !DILocalVariable(name: "error", scope: !4088, file: !3, line: 203, type: !166)
!4099 = !DILocation(line: 203, column: 6, scope: !4088)
!4100 = !DILocation(line: 205, column: 24, scope: !4088)
!4101 = !DILocation(line: 205, column: 10, scope: !4088)
!4102 = !DILocation(line: 205, column: 8, scope: !4088)
!4103 = !DILocation(line: 206, column: 6, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 206, column: 6)
!4105 = !DILocation(line: 206, column: 6, scope: !4088)
!4106 = !DILocation(line: 207, column: 10, scope: !4104)
!4107 = !DILocation(line: 207, column: 3, scope: !4104)
!4108 = !DILocation(line: 214, column: 10, scope: !4088)
!4109 = !DILocation(line: 214, column: 8, scope: !4088)
!4110 = !DILocation(line: 215, column: 14, scope: !4088)
!4111 = !DILocation(line: 215, column: 2, scope: !4088)
!4112 = !DILocation(line: 217, column: 2, scope: !4088)
!4113 = !DILocation(line: 218, column: 1, scope: !4088)
!4114 = distinct !DISubprogram(name: "bitmap_zero", scope: !4115, file: !4115, line: 235, type: !4116, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!4115 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/lizy2001/genbc/linux")
!4116 = !DISubroutineType(types: !4117)
!4117 = !{null, !4118, !7}
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!4119 = !DILocalVariable(name: "dst", arg: 1, scope: !4114, file: !4115, line: 235, type: !4118)
!4120 = !DILocation(line: 235, column: 47, scope: !4114)
!4121 = !DILocalVariable(name: "nbits", arg: 2, scope: !4114, file: !4115, line: 235, type: !7)
!4122 = !DILocation(line: 235, column: 65, scope: !4114)
!4123 = !DILocalVariable(name: "len", scope: !4114, file: !4115, line: 237, type: !7)
!4124 = !DILocation(line: 237, column: 15, scope: !4114)
!4125 = !DILocation(line: 237, column: 21, scope: !4114)
!4126 = !DILocation(line: 237, column: 42, scope: !4114)
!4127 = !DILocation(line: 238, column: 9, scope: !4114)
!4128 = !DILocation(line: 238, column: 2, scope: !4114)
!4129 = !DILocation(line: 238, column: 17, scope: !4114)
!4130 = !DILocation(line: 239, column: 1, scope: !4114)
!4131 = distinct !DISubprogram(name: "lifebook_create_relative_device", scope: !3, file: !3, line: 270, type: !3923, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!4132 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4131, file: !3, line: 270, type: !190)
!4133 = !DILocation(line: 270, column: 60, scope: !4131)
!4134 = !DILocalVariable(name: "dev2", scope: !4131, file: !3, line: 272, type: !195)
!4135 = !DILocation(line: 272, column: 20, scope: !4131)
!4136 = !DILocalVariable(name: "priv", scope: !4131, file: !3, line: 273, type: !4137)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lifebook_data", file: !3, line: 22, size: 320, elements: !4139)
!4139 = !{!4140, !4141}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "dev2", scope: !4138, file: !3, line: 23, baseType: !195, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4138, file: !3, line: 24, baseType: !2553, size: 256, offset: 64)
!4142 = !DILocation(line: 273, column: 24, scope: !4131)
!4143 = !DILocalVariable(name: "error", scope: !4131, file: !3, line: 274, type: !166)
!4144 = !DILocation(line: 274, column: 6, scope: !4131)
!4145 = !DILocation(line: 276, column: 9, scope: !4131)
!4146 = !DILocation(line: 276, column: 7, scope: !4131)
!4147 = !DILocation(line: 277, column: 9, scope: !4131)
!4148 = !DILocation(line: 277, column: 7, scope: !4131)
!4149 = !DILocation(line: 278, column: 7, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4131, file: !3, line: 278, column: 6)
!4151 = !DILocation(line: 278, column: 12, scope: !4150)
!4152 = !DILocation(line: 278, column: 16, scope: !4150)
!4153 = !DILocation(line: 278, column: 6, scope: !4131)
!4154 = !DILocation(line: 279, column: 3, scope: !4150)
!4155 = !DILocation(line: 281, column: 15, scope: !4131)
!4156 = !DILocation(line: 281, column: 2, scope: !4131)
!4157 = !DILocation(line: 281, column: 8, scope: !4131)
!4158 = !DILocation(line: 281, column: 13, scope: !4131)
!4159 = !DILocation(line: 282, column: 11, scope: !4131)
!4160 = !DILocation(line: 282, column: 17, scope: !4131)
!4161 = !DILocation(line: 283, column: 17, scope: !4131)
!4162 = !DILocation(line: 283, column: 26, scope: !4131)
!4163 = !DILocation(line: 283, column: 33, scope: !4131)
!4164 = !DILocation(line: 283, column: 40, scope: !4131)
!4165 = !DILocation(line: 282, column: 2, scope: !4131)
!4166 = !DILocation(line: 285, column: 15, scope: !4131)
!4167 = !DILocation(line: 285, column: 21, scope: !4131)
!4168 = !DILocation(line: 285, column: 2, scope: !4131)
!4169 = !DILocation(line: 285, column: 8, scope: !4131)
!4170 = !DILocation(line: 285, column: 13, scope: !4131)
!4171 = !DILocation(line: 286, column: 2, scope: !4131)
!4172 = !DILocation(line: 286, column: 8, scope: !4131)
!4173 = !DILocation(line: 286, column: 13, scope: !4131)
!4174 = !DILocation(line: 287, column: 2, scope: !4131)
!4175 = !DILocation(line: 287, column: 8, scope: !4131)
!4176 = !DILocation(line: 287, column: 11, scope: !4131)
!4177 = !DILocation(line: 287, column: 19, scope: !4131)
!4178 = !DILocation(line: 288, column: 2, scope: !4131)
!4179 = !DILocation(line: 288, column: 8, scope: !4131)
!4180 = !DILocation(line: 288, column: 11, scope: !4131)
!4181 = !DILocation(line: 288, column: 19, scope: !4131)
!4182 = !DILocation(line: 289, column: 2, scope: !4131)
!4183 = !DILocation(line: 289, column: 8, scope: !4131)
!4184 = !DILocation(line: 289, column: 11, scope: !4131)
!4185 = !DILocation(line: 289, column: 19, scope: !4131)
!4186 = !DILocation(line: 290, column: 2, scope: !4131)
!4187 = !DILocation(line: 290, column: 8, scope: !4131)
!4188 = !DILocation(line: 290, column: 11, scope: !4131)
!4189 = !DILocation(line: 290, column: 19, scope: !4131)
!4190 = !DILocation(line: 291, column: 22, scope: !4131)
!4191 = !DILocation(line: 291, column: 31, scope: !4131)
!4192 = !DILocation(line: 291, column: 38, scope: !4131)
!4193 = !DILocation(line: 291, column: 45, scope: !4131)
!4194 = !DILocation(line: 291, column: 2, scope: !4131)
!4195 = !DILocation(line: 291, column: 8, scope: !4131)
!4196 = !DILocation(line: 291, column: 12, scope: !4131)
!4197 = !DILocation(line: 291, column: 19, scope: !4131)
!4198 = !DILocation(line: 293, column: 23, scope: !4131)
!4199 = !DILocation(line: 293, column: 2, scope: !4131)
!4200 = !DILocation(line: 294, column: 23, scope: !4131)
!4201 = !DILocation(line: 294, column: 2, scope: !4131)
!4202 = !DILocation(line: 295, column: 23, scope: !4131)
!4203 = !DILocation(line: 295, column: 2, scope: !4131)
!4204 = !DILocation(line: 296, column: 23, scope: !4131)
!4205 = !DILocation(line: 296, column: 2, scope: !4131)
!4206 = !DILocation(line: 298, column: 32, scope: !4131)
!4207 = !DILocation(line: 298, column: 38, scope: !4131)
!4208 = !DILocation(line: 298, column: 10, scope: !4131)
!4209 = !DILocation(line: 298, column: 8, scope: !4131)
!4210 = !DILocation(line: 299, column: 6, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4131, file: !3, line: 299, column: 6)
!4212 = !DILocation(line: 299, column: 6, scope: !4131)
!4213 = !DILocation(line: 300, column: 3, scope: !4211)
!4214 = !DILocation(line: 302, column: 21, scope: !4131)
!4215 = !DILocation(line: 302, column: 2, scope: !4131)
!4216 = !DILocation(line: 302, column: 11, scope: !4131)
!4217 = !DILocation(line: 302, column: 19, scope: !4131)
!4218 = !DILocation(line: 303, column: 2, scope: !4131)
!4219 = !DILabel(scope: !4131, name: "err_out", file: !3, line: 305)
!4220 = !DILocation(line: 305, column: 2, scope: !4131)
!4221 = !DILocation(line: 306, column: 20, scope: !4131)
!4222 = !DILocation(line: 306, column: 2, scope: !4131)
!4223 = !DILocation(line: 307, column: 8, scope: !4131)
!4224 = !DILocation(line: 307, column: 2, scope: !4131)
!4225 = !DILocation(line: 308, column: 9, scope: !4131)
!4226 = !DILocation(line: 308, column: 2, scope: !4131)
!4227 = !DILocation(line: 309, column: 1, scope: !4131)
!4228 = distinct !DISubprogram(name: "lifebook_relative_mode", scope: !3, file: !3, line: 220, type: !3962, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!4229 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4228, file: !3, line: 220, type: !190)
!4230 = !DILocation(line: 220, column: 52, scope: !4228)
!4231 = !DILocalVariable(name: "ps2dev", scope: !4228, file: !3, line: 222, type: !4092)
!4232 = !DILocation(line: 222, column: 17, scope: !4228)
!4233 = !DILocation(line: 222, column: 27, scope: !4228)
!4234 = !DILocation(line: 222, column: 36, scope: !4228)
!4235 = !DILocalVariable(name: "param", scope: !4228, file: !3, line: 223, type: !1287)
!4236 = !DILocation(line: 223, column: 5, scope: !4228)
!4237 = !DILocation(line: 225, column: 14, scope: !4228)
!4238 = !DILocation(line: 225, column: 2, scope: !4228)
!4239 = !DILocation(line: 226, column: 1, scope: !4228)
!4240 = distinct !DISubprogram(name: "lifebook_process_byte", scope: !3, file: !3, line: 132, type: !3948, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!4241 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4240, file: !3, line: 132, type: !190)
!4242 = !DILocation(line: 132, column: 60, scope: !4240)
!4243 = !DILocalVariable(name: "priv", scope: !4240, file: !3, line: 134, type: !4137)
!4244 = !DILocation(line: 134, column: 24, scope: !4240)
!4245 = !DILocation(line: 134, column: 31, scope: !4240)
!4246 = !DILocation(line: 134, column: 40, scope: !4240)
!4247 = !DILocalVariable(name: "dev1", scope: !4240, file: !3, line: 135, type: !195)
!4248 = !DILocation(line: 135, column: 20, scope: !4240)
!4249 = !DILocation(line: 135, column: 27, scope: !4240)
!4250 = !DILocation(line: 135, column: 36, scope: !4240)
!4251 = !DILocalVariable(name: "dev2", scope: !4240, file: !3, line: 136, type: !195)
!4252 = !DILocation(line: 136, column: 20, scope: !4240)
!4253 = !DILocation(line: 136, column: 27, scope: !4240)
!4254 = !DILocation(line: 136, column: 34, scope: !4240)
!4255 = !DILocation(line: 136, column: 40, scope: !4240)
!4256 = !DILocalVariable(name: "packet", scope: !4240, file: !3, line: 137, type: !4257)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!4258 = !DILocation(line: 137, column: 6, scope: !4240)
!4259 = !DILocation(line: 137, column: 15, scope: !4240)
!4260 = !DILocation(line: 137, column: 24, scope: !4240)
!4261 = !DILocalVariable(name: "relative_packet", scope: !4240, file: !3, line: 138, type: !153)
!4262 = !DILocation(line: 138, column: 7, scope: !4240)
!4263 = !DILocation(line: 138, column: 25, scope: !4240)
!4264 = !DILocation(line: 138, column: 35, scope: !4240)
!4265 = !DILocation(line: 140, column: 6, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4240, file: !3, line: 140, column: 6)
!4267 = !DILocation(line: 140, column: 22, scope: !4266)
!4268 = !DILocation(line: 140, column: 26, scope: !4266)
!4269 = !DILocation(line: 140, column: 6, scope: !4240)
!4270 = !DILocation(line: 141, column: 7, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 141, column: 7)
!4272 = distinct !DILexicalBlock(scope: !4266, file: !3, line: 140, column: 52)
!4273 = !DILocation(line: 141, column: 16, scope: !4271)
!4274 = !DILocation(line: 141, column: 23, scope: !4271)
!4275 = !DILocation(line: 141, column: 7, scope: !4272)
!4276 = !DILocation(line: 142, column: 4, scope: !4271)
!4277 = !DILocation(line: 143, column: 2, scope: !4272)
!4278 = !DILocation(line: 144, column: 11, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4266, file: !3, line: 143, column: 9)
!4280 = !DILocation(line: 144, column: 20, scope: !4279)
!4281 = !DILocation(line: 144, column: 3, scope: !4279)
!4282 = !DILocation(line: 146, column: 12, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4279, file: !3, line: 144, column: 28)
!4284 = !DILocation(line: 146, column: 22, scope: !4283)
!4285 = !DILocation(line: 146, column: 30, scope: !4283)
!4286 = !DILocation(line: 146, column: 11, scope: !4283)
!4287 = !DILocation(line: 146, column: 4, scope: !4283)
!4288 = !DILocation(line: 149, column: 4, scope: !4283)
!4289 = !DILocation(line: 151, column: 13, scope: !4283)
!4290 = !DILocation(line: 151, column: 23, scope: !4283)
!4291 = !DILocation(line: 151, column: 31, scope: !4283)
!4292 = !DILocation(line: 151, column: 41, scope: !4283)
!4293 = !DILocation(line: 151, column: 51, scope: !4283)
!4294 = !DILocation(line: 151, column: 37, scope: !4283)
!4295 = !DILocation(line: 151, column: 11, scope: !4283)
!4296 = !DILocation(line: 151, column: 4, scope: !4283)
!4297 = !DILocation(line: 154, column: 12, scope: !4283)
!4298 = !DILocation(line: 154, column: 22, scope: !4283)
!4299 = !DILocation(line: 154, column: 30, scope: !4283)
!4300 = !DILocation(line: 154, column: 11, scope: !4283)
!4301 = !DILocation(line: 154, column: 4, scope: !4283)
!4302 = !DILocation(line: 157, column: 12, scope: !4283)
!4303 = !DILocation(line: 157, column: 22, scope: !4283)
!4304 = !DILocation(line: 157, column: 34, scope: !4283)
!4305 = !DILocation(line: 157, column: 44, scope: !4283)
!4306 = !DILocation(line: 157, column: 30, scope: !4283)
!4307 = !DILocation(line: 157, column: 11, scope: !4283)
!4308 = !DILocation(line: 157, column: 4, scope: !4283)
!4309 = !DILocation(line: 160, column: 10, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 160, column: 8)
!4311 = !DILocation(line: 160, column: 20, scope: !4310)
!4312 = !DILocation(line: 160, column: 28, scope: !4310)
!4313 = !DILocation(line: 160, column: 38, scope: !4310)
!4314 = !DILocation(line: 160, column: 48, scope: !4310)
!4315 = !DILocation(line: 160, column: 34, scope: !4310)
!4316 = !DILocation(line: 160, column: 8, scope: !4283)
!4317 = !DILocation(line: 161, column: 5, scope: !4310)
!4318 = !DILocation(line: 162, column: 9, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 162, column: 8)
!4320 = !DILocation(line: 162, column: 19, scope: !4319)
!4321 = !DILocation(line: 162, column: 31, scope: !4319)
!4322 = !DILocation(line: 162, column: 41, scope: !4319)
!4323 = !DILocation(line: 162, column: 27, scope: !4319)
!4324 = !DILocation(line: 162, column: 8, scope: !4283)
!4325 = !DILocation(line: 163, column: 5, scope: !4319)
!4326 = !DILocation(line: 164, column: 4, scope: !4283)
!4327 = !DILocation(line: 168, column: 6, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4240, file: !3, line: 168, column: 6)
!4329 = !DILocation(line: 168, column: 6, scope: !4240)
!4330 = !DILocation(line: 169, column: 8, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4332, file: !3, line: 169, column: 7)
!4332 = distinct !DILexicalBlock(scope: !4328, file: !3, line: 168, column: 23)
!4333 = !DILocation(line: 169, column: 7, scope: !4332)
!4334 = !DILocation(line: 170, column: 4, scope: !4331)
!4335 = !DILocation(line: 172, column: 2, scope: !4332)
!4336 = !DILocation(line: 173, column: 7, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4338, file: !3, line: 173, column: 7)
!4338 = distinct !DILexicalBlock(scope: !4328, file: !3, line: 172, column: 9)
!4339 = !DILocation(line: 173, column: 7, scope: !4338)
!4340 = !DILocation(line: 174, column: 21, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4337, file: !3, line: 173, column: 33)
!4342 = !DILocation(line: 175, column: 7, scope: !4341)
!4343 = !DILocation(line: 175, column: 17, scope: !4341)
!4344 = !DILocation(line: 175, column: 25, scope: !4341)
!4345 = !DILocation(line: 175, column: 34, scope: !4341)
!4346 = !DILocation(line: 175, column: 44, scope: !4341)
!4347 = !DILocation(line: 175, column: 31, scope: !4341)
!4348 = !DILocation(line: 174, column: 4, scope: !4341)
!4349 = !DILocation(line: 176, column: 21, scope: !4341)
!4350 = !DILocation(line: 177, column: 15, scope: !4341)
!4351 = !DILocation(line: 177, column: 25, scope: !4341)
!4352 = !DILocation(line: 177, column: 33, scope: !4341)
!4353 = !DILocation(line: 177, column: 42, scope: !4341)
!4354 = !DILocation(line: 177, column: 52, scope: !4341)
!4355 = !DILocation(line: 177, column: 39, scope: !4341)
!4356 = !DILocation(line: 177, column: 10, scope: !4341)
!4357 = !DILocation(line: 176, column: 4, scope: !4341)
!4358 = !DILocation(line: 178, column: 3, scope: !4341)
!4359 = !DILocation(line: 179, column: 21, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4337, file: !3, line: 178, column: 10)
!4361 = !DILocation(line: 180, column: 6, scope: !4360)
!4362 = !DILocation(line: 180, column: 20, scope: !4360)
!4363 = !DILocation(line: 180, column: 30, scope: !4360)
!4364 = !DILocation(line: 180, column: 38, scope: !4360)
!4365 = !DILocation(line: 180, column: 16, scope: !4360)
!4366 = !DILocation(line: 179, column: 4, scope: !4360)
!4367 = !DILocation(line: 181, column: 21, scope: !4360)
!4368 = !DILocation(line: 182, column: 13, scope: !4360)
!4369 = !DILocation(line: 182, column: 27, scope: !4360)
!4370 = !DILocation(line: 182, column: 37, scope: !4360)
!4371 = !DILocation(line: 182, column: 45, scope: !4360)
!4372 = !DILocation(line: 182, column: 23, scope: !4360)
!4373 = !DILocation(line: 182, column: 10, scope: !4360)
!4374 = !DILocation(line: 181, column: 4, scope: !4360)
!4375 = !DILocation(line: 184, column: 20, scope: !4338)
!4376 = !DILocation(line: 184, column: 37, scope: !4338)
!4377 = !DILocation(line: 184, column: 47, scope: !4338)
!4378 = !DILocation(line: 184, column: 3, scope: !4338)
!4379 = !DILocation(line: 185, column: 14, scope: !4338)
!4380 = !DILocation(line: 185, column: 3, scope: !4338)
!4381 = !DILocation(line: 188, column: 6, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4240, file: !3, line: 188, column: 6)
!4383 = !DILocation(line: 188, column: 6, scope: !4240)
!4384 = !DILocation(line: 189, column: 7, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4386, file: !3, line: 189, column: 7)
!4386 = distinct !DILexicalBlock(scope: !4382, file: !3, line: 188, column: 12)
!4387 = !DILocation(line: 189, column: 7, scope: !4386)
!4388 = !DILocation(line: 190, column: 35, scope: !4385)
!4389 = !DILocation(line: 190, column: 41, scope: !4385)
!4390 = !DILocation(line: 190, column: 4, scope: !4385)
!4391 = !DILocation(line: 192, column: 35, scope: !4386)
!4392 = !DILocation(line: 192, column: 41, scope: !4386)
!4393 = !DILocation(line: 192, column: 3, scope: !4386)
!4394 = !DILocation(line: 193, column: 14, scope: !4386)
!4395 = !DILocation(line: 193, column: 3, scope: !4386)
!4396 = !DILocation(line: 194, column: 2, scope: !4386)
!4397 = !DILocation(line: 196, column: 2, scope: !4240)
!4398 = !DILocation(line: 197, column: 1, scope: !4240)
!4399 = !DILocalVariable(name: "psmouse", arg: 1, scope: !187, file: !3, line: 228, type: !190)
!4400 = !DILocation(line: 228, column: 53, scope: !187)
!4401 = !DILocalVariable(name: "resolution", arg: 2, scope: !187, file: !3, line: 228, type: !7)
!4402 = !DILocation(line: 228, column: 75, scope: !187)
!4403 = !DILocalVariable(name: "p", scope: !187, file: !3, line: 231, type: !1287)
!4404 = !DILocation(line: 231, column: 5, scope: !187)
!4405 = !DILocation(line: 233, column: 6, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !187, file: !3, line: 233, column: 6)
!4407 = !DILocation(line: 233, column: 17, scope: !4406)
!4408 = !DILocation(line: 233, column: 22, scope: !4406)
!4409 = !DILocation(line: 233, column: 25, scope: !4406)
!4410 = !DILocation(line: 233, column: 36, scope: !4406)
!4411 = !DILocation(line: 233, column: 6, scope: !187)
!4412 = !DILocation(line: 234, column: 14, scope: !4406)
!4413 = !DILocation(line: 234, column: 3, scope: !4406)
!4414 = !DILocation(line: 236, column: 13, scope: !187)
!4415 = !DILocation(line: 236, column: 24, scope: !187)
!4416 = !DILocation(line: 236, column: 6, scope: !187)
!4417 = !DILocation(line: 236, column: 4, scope: !187)
!4418 = !DILocation(line: 237, column: 15, scope: !187)
!4419 = !DILocation(line: 237, column: 24, scope: !187)
!4420 = !DILocation(line: 237, column: 2, scope: !187)
!4421 = !DILocation(line: 238, column: 30, scope: !187)
!4422 = !DILocation(line: 238, column: 27, scope: !187)
!4423 = !DILocation(line: 238, column: 2, scope: !187)
!4424 = !DILocation(line: 238, column: 11, scope: !187)
!4425 = !DILocation(line: 238, column: 22, scope: !187)
!4426 = !DILocation(line: 239, column: 1, scope: !187)
!4427 = distinct !DISubprogram(name: "lifebook_disconnect", scope: !3, file: !3, line: 241, type: !3962, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!4428 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4427, file: !3, line: 241, type: !190)
!4429 = !DILocation(line: 241, column: 49, scope: !4427)
!4430 = !DILocalVariable(name: "priv", scope: !4427, file: !3, line: 243, type: !4137)
!4431 = !DILocation(line: 243, column: 24, scope: !4427)
!4432 = !DILocation(line: 243, column: 31, scope: !4427)
!4433 = !DILocation(line: 243, column: 40, scope: !4427)
!4434 = !DILocation(line: 245, column: 16, scope: !4427)
!4435 = !DILocation(line: 245, column: 2, scope: !4427)
!4436 = !DILocation(line: 246, column: 6, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4427, file: !3, line: 246, column: 6)
!4438 = !DILocation(line: 246, column: 6, scope: !4427)
!4439 = !DILocation(line: 247, column: 27, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 246, column: 12)
!4441 = !DILocation(line: 247, column: 33, scope: !4440)
!4442 = !DILocation(line: 247, column: 3, scope: !4440)
!4443 = !DILocation(line: 248, column: 9, scope: !4440)
!4444 = !DILocation(line: 248, column: 3, scope: !4440)
!4445 = !DILocation(line: 249, column: 2, scope: !4440)
!4446 = !DILocation(line: 250, column: 2, scope: !4427)
!4447 = !DILocation(line: 250, column: 11, scope: !4427)
!4448 = !DILocation(line: 250, column: 19, scope: !4427)
!4449 = !DILocation(line: 251, column: 1, scope: !4427)
!4450 = distinct !DISubprogram(name: "lifebook_limit_serio3", scope: !3, file: !3, line: 31, type: !164, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!4451 = !DILocalVariable(name: "d", arg: 1, scope: !4450, file: !3, line: 31, type: !167)
!4452 = !DILocation(line: 31, column: 62, scope: !4450)
!4453 = !DILocation(line: 33, column: 21, scope: !4450)
!4454 = !DILocation(line: 34, column: 2, scope: !4450)
!4455 = distinct !DISubprogram(name: "lifebook_set_6byte_proto", scope: !3, file: !3, line: 39, type: !164, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!4456 = !DILocalVariable(name: "d", arg: 1, scope: !4455, file: !3, line: 39, type: !167)
!4457 = !DILocation(line: 39, column: 65, scope: !4455)
!4458 = !DILocation(line: 41, column: 27, scope: !4455)
!4459 = !DILocation(line: 42, column: 2, scope: !4455)
!4460 = distinct !DISubprogram(name: "kzalloc", scope: !135, file: !135, line: 662, type: !4461, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{!144, !620, !142}
!4463 = !DILocalVariable(name: "s", arg: 1, scope: !4464, file: !135, line: 445, type: !976)
!4464 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !135, file: !135, line: 445, type: !4465, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!144, !976, !142, !620}
!4467 = !DILocation(line: 445, column: 72, scope: !4464, inlinedAt: !4468)
!4468 = distinct !DILocation(line: 552, column: 10, scope: !4469, inlinedAt: !4472)
!4469 = distinct !DILexicalBlock(scope: !4470, file: !135, line: 540, column: 34)
!4470 = distinct !DILexicalBlock(scope: !4471, file: !135, line: 540, column: 6)
!4471 = distinct !DISubprogram(name: "kmalloc", scope: !135, file: !135, line: 538, type: !4461, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!4472 = distinct !DILocation(line: 664, column: 9, scope: !4460)
!4473 = !DILocalVariable(name: "flags", arg: 2, scope: !4464, file: !135, line: 446, type: !142)
!4474 = !DILocation(line: 446, column: 9, scope: !4464, inlinedAt: !4468)
!4475 = !DILocalVariable(name: "size", arg: 3, scope: !4464, file: !135, line: 446, type: !620)
!4476 = !DILocation(line: 446, column: 23, scope: !4464, inlinedAt: !4468)
!4477 = !DILocalVariable(name: "ret", scope: !4464, file: !135, line: 448, type: !144)
!4478 = !DILocation(line: 448, column: 8, scope: !4464, inlinedAt: !4468)
!4479 = !DILocalVariable(name: "flags", arg: 1, scope: !4480, file: !135, line: 318, type: !142)
!4480 = distinct !DISubprogram(name: "kmalloc_type", scope: !135, file: !135, line: 318, type: !4481, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{!134, !142}
!4483 = !DILocation(line: 318, column: 67, scope: !4480, inlinedAt: !4484)
!4484 = distinct !DILocation(line: 553, column: 20, scope: !4469, inlinedAt: !4472)
!4485 = !DILocalVariable(name: "size", arg: 1, scope: !4486, file: !135, line: 346, type: !620)
!4486 = distinct !DISubprogram(name: "kmalloc_index", scope: !135, file: !135, line: 346, type: !4487, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!4487 = !DISubroutineType(types: !4488)
!4488 = !{!7, !620}
!4489 = !DILocation(line: 346, column: 58, scope: !4486, inlinedAt: !4490)
!4490 = distinct !DILocation(line: 547, column: 11, scope: !4469, inlinedAt: !4472)
!4491 = !DILocalVariable(name: "size", arg: 1, scope: !4492, file: !135, line: 472, type: !620)
!4492 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !135, file: !135, line: 472, type: !4493, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!144, !620, !142, !7}
!4495 = !DILocation(line: 472, column: 28, scope: !4492, inlinedAt: !4496)
!4496 = distinct !DILocation(line: 481, column: 9, scope: !4497, inlinedAt: !4498)
!4497 = distinct !DISubprogram(name: "kmalloc_large", scope: !135, file: !135, line: 478, type: !4461, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!4498 = distinct !DILocation(line: 545, column: 11, scope: !4499, inlinedAt: !4472)
!4499 = distinct !DILexicalBlock(scope: !4469, file: !135, line: 544, column: 7)
!4500 = !DILocalVariable(name: "flags", arg: 2, scope: !4492, file: !135, line: 472, type: !142)
!4501 = !DILocation(line: 472, column: 40, scope: !4492, inlinedAt: !4496)
!4502 = !DILocalVariable(name: "order", arg: 3, scope: !4492, file: !135, line: 472, type: !7)
!4503 = !DILocation(line: 472, column: 60, scope: !4492, inlinedAt: !4496)
!4504 = !DILocalVariable(name: "size", arg: 1, scope: !4497, file: !135, line: 478, type: !620)
!4505 = !DILocation(line: 478, column: 51, scope: !4497, inlinedAt: !4498)
!4506 = !DILocalVariable(name: "flags", arg: 2, scope: !4497, file: !135, line: 478, type: !142)
!4507 = !DILocation(line: 478, column: 63, scope: !4497, inlinedAt: !4498)
!4508 = !DILocalVariable(name: "order", scope: !4497, file: !135, line: 480, type: !7)
!4509 = !DILocation(line: 480, column: 15, scope: !4497, inlinedAt: !4498)
!4510 = !DILocalVariable(name: "size", arg: 1, scope: !4471, file: !135, line: 538, type: !620)
!4511 = !DILocation(line: 538, column: 45, scope: !4471, inlinedAt: !4472)
!4512 = !DILocalVariable(name: "flags", arg: 2, scope: !4471, file: !135, line: 538, type: !142)
!4513 = !DILocation(line: 538, column: 57, scope: !4471, inlinedAt: !4472)
!4514 = !DILocalVariable(name: "index", scope: !4469, file: !135, line: 542, type: !7)
!4515 = !DILocation(line: 542, column: 16, scope: !4469, inlinedAt: !4472)
!4516 = !DILocalVariable(name: "size", arg: 1, scope: !4460, file: !135, line: 662, type: !620)
!4517 = !DILocation(line: 662, column: 36, scope: !4460)
!4518 = !DILocalVariable(name: "flags", arg: 2, scope: !4460, file: !135, line: 662, type: !142)
!4519 = !DILocation(line: 662, column: 48, scope: !4460)
!4520 = !DILocation(line: 664, column: 17, scope: !4460)
!4521 = !DILocation(line: 664, column: 23, scope: !4460)
!4522 = !DILocation(line: 664, column: 29, scope: !4460)
!4523 = !DILocation(line: 540, column: 27, scope: !4470, inlinedAt: !4472)
!4524 = !DILocation(line: 540, column: 6, scope: !4470, inlinedAt: !4472)
!4525 = !DILocation(line: 540, column: 6, scope: !4471, inlinedAt: !4472)
!4526 = !DILocation(line: 544, column: 7, scope: !4499, inlinedAt: !4472)
!4527 = !DILocation(line: 544, column: 12, scope: !4499, inlinedAt: !4472)
!4528 = !DILocation(line: 544, column: 7, scope: !4469, inlinedAt: !4472)
!4529 = !DILocation(line: 545, column: 25, scope: !4499, inlinedAt: !4472)
!4530 = !DILocation(line: 545, column: 31, scope: !4499, inlinedAt: !4472)
!4531 = !DILocation(line: 480, column: 33, scope: !4497, inlinedAt: !4498)
!4532 = !DILocation(line: 480, column: 23, scope: !4497, inlinedAt: !4498)
!4533 = !DILocation(line: 481, column: 29, scope: !4497, inlinedAt: !4498)
!4534 = !DILocation(line: 481, column: 35, scope: !4497, inlinedAt: !4498)
!4535 = !DILocation(line: 481, column: 42, scope: !4497, inlinedAt: !4498)
!4536 = !DILocation(line: 474, column: 23, scope: !4492, inlinedAt: !4496)
!4537 = !DILocation(line: 474, column: 29, scope: !4492, inlinedAt: !4496)
!4538 = !DILocation(line: 474, column: 36, scope: !4492, inlinedAt: !4496)
!4539 = !DILocation(line: 474, column: 9, scope: !4492, inlinedAt: !4496)
!4540 = !DILocation(line: 545, column: 4, scope: !4499, inlinedAt: !4472)
!4541 = !DILocation(line: 547, column: 25, scope: !4469, inlinedAt: !4472)
!4542 = !DILocation(line: 348, column: 7, scope: !4543, inlinedAt: !4490)
!4543 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 348, column: 6)
!4544 = !DILocation(line: 348, column: 6, scope: !4486, inlinedAt: !4490)
!4545 = !DILocation(line: 349, column: 3, scope: !4543, inlinedAt: !4490)
!4546 = !DILocation(line: 351, column: 6, scope: !4547, inlinedAt: !4490)
!4547 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 351, column: 6)
!4548 = !DILocation(line: 351, column: 11, scope: !4547, inlinedAt: !4490)
!4549 = !DILocation(line: 351, column: 6, scope: !4486, inlinedAt: !4490)
!4550 = !DILocation(line: 352, column: 3, scope: !4547, inlinedAt: !4490)
!4551 = !DILocation(line: 354, column: 32, scope: !4552, inlinedAt: !4490)
!4552 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 354, column: 6)
!4553 = !DILocation(line: 354, column: 37, scope: !4552, inlinedAt: !4490)
!4554 = !DILocation(line: 354, column: 42, scope: !4552, inlinedAt: !4490)
!4555 = !DILocation(line: 354, column: 45, scope: !4552, inlinedAt: !4490)
!4556 = !DILocation(line: 354, column: 50, scope: !4552, inlinedAt: !4490)
!4557 = !DILocation(line: 354, column: 6, scope: !4486, inlinedAt: !4490)
!4558 = !DILocation(line: 355, column: 3, scope: !4552, inlinedAt: !4490)
!4559 = !DILocation(line: 356, column: 32, scope: !4560, inlinedAt: !4490)
!4560 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 356, column: 6)
!4561 = !DILocation(line: 356, column: 37, scope: !4560, inlinedAt: !4490)
!4562 = !DILocation(line: 356, column: 43, scope: !4560, inlinedAt: !4490)
!4563 = !DILocation(line: 356, column: 46, scope: !4560, inlinedAt: !4490)
!4564 = !DILocation(line: 356, column: 51, scope: !4560, inlinedAt: !4490)
!4565 = !DILocation(line: 356, column: 6, scope: !4486, inlinedAt: !4490)
!4566 = !DILocation(line: 357, column: 3, scope: !4560, inlinedAt: !4490)
!4567 = !DILocation(line: 358, column: 6, scope: !4568, inlinedAt: !4490)
!4568 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 358, column: 6)
!4569 = !DILocation(line: 358, column: 11, scope: !4568, inlinedAt: !4490)
!4570 = !DILocation(line: 358, column: 6, scope: !4486, inlinedAt: !4490)
!4571 = !DILocation(line: 358, column: 26, scope: !4568, inlinedAt: !4490)
!4572 = !DILocation(line: 359, column: 6, scope: !4573, inlinedAt: !4490)
!4573 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 359, column: 6)
!4574 = !DILocation(line: 359, column: 11, scope: !4573, inlinedAt: !4490)
!4575 = !DILocation(line: 359, column: 6, scope: !4486, inlinedAt: !4490)
!4576 = !DILocation(line: 359, column: 26, scope: !4573, inlinedAt: !4490)
!4577 = !DILocation(line: 360, column: 6, scope: !4578, inlinedAt: !4490)
!4578 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 360, column: 6)
!4579 = !DILocation(line: 360, column: 11, scope: !4578, inlinedAt: !4490)
!4580 = !DILocation(line: 360, column: 6, scope: !4486, inlinedAt: !4490)
!4581 = !DILocation(line: 360, column: 26, scope: !4578, inlinedAt: !4490)
!4582 = !DILocation(line: 361, column: 6, scope: !4583, inlinedAt: !4490)
!4583 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 361, column: 6)
!4584 = !DILocation(line: 361, column: 11, scope: !4583, inlinedAt: !4490)
!4585 = !DILocation(line: 361, column: 6, scope: !4486, inlinedAt: !4490)
!4586 = !DILocation(line: 361, column: 26, scope: !4583, inlinedAt: !4490)
!4587 = !DILocation(line: 362, column: 6, scope: !4588, inlinedAt: !4490)
!4588 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 362, column: 6)
!4589 = !DILocation(line: 362, column: 11, scope: !4588, inlinedAt: !4490)
!4590 = !DILocation(line: 362, column: 6, scope: !4486, inlinedAt: !4490)
!4591 = !DILocation(line: 362, column: 26, scope: !4588, inlinedAt: !4490)
!4592 = !DILocation(line: 363, column: 6, scope: !4593, inlinedAt: !4490)
!4593 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 363, column: 6)
!4594 = !DILocation(line: 363, column: 11, scope: !4593, inlinedAt: !4490)
!4595 = !DILocation(line: 363, column: 6, scope: !4486, inlinedAt: !4490)
!4596 = !DILocation(line: 363, column: 26, scope: !4593, inlinedAt: !4490)
!4597 = !DILocation(line: 364, column: 6, scope: !4598, inlinedAt: !4490)
!4598 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 364, column: 6)
!4599 = !DILocation(line: 364, column: 11, scope: !4598, inlinedAt: !4490)
!4600 = !DILocation(line: 364, column: 6, scope: !4486, inlinedAt: !4490)
!4601 = !DILocation(line: 364, column: 26, scope: !4598, inlinedAt: !4490)
!4602 = !DILocation(line: 365, column: 6, scope: !4603, inlinedAt: !4490)
!4603 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 365, column: 6)
!4604 = !DILocation(line: 365, column: 11, scope: !4603, inlinedAt: !4490)
!4605 = !DILocation(line: 365, column: 6, scope: !4486, inlinedAt: !4490)
!4606 = !DILocation(line: 365, column: 26, scope: !4603, inlinedAt: !4490)
!4607 = !DILocation(line: 366, column: 6, scope: !4608, inlinedAt: !4490)
!4608 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 366, column: 6)
!4609 = !DILocation(line: 366, column: 11, scope: !4608, inlinedAt: !4490)
!4610 = !DILocation(line: 366, column: 6, scope: !4486, inlinedAt: !4490)
!4611 = !DILocation(line: 366, column: 26, scope: !4608, inlinedAt: !4490)
!4612 = !DILocation(line: 367, column: 6, scope: !4613, inlinedAt: !4490)
!4613 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 367, column: 6)
!4614 = !DILocation(line: 367, column: 11, scope: !4613, inlinedAt: !4490)
!4615 = !DILocation(line: 367, column: 6, scope: !4486, inlinedAt: !4490)
!4616 = !DILocation(line: 367, column: 26, scope: !4613, inlinedAt: !4490)
!4617 = !DILocation(line: 368, column: 6, scope: !4618, inlinedAt: !4490)
!4618 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 368, column: 6)
!4619 = !DILocation(line: 368, column: 11, scope: !4618, inlinedAt: !4490)
!4620 = !DILocation(line: 368, column: 6, scope: !4486, inlinedAt: !4490)
!4621 = !DILocation(line: 368, column: 26, scope: !4618, inlinedAt: !4490)
!4622 = !DILocation(line: 369, column: 6, scope: !4623, inlinedAt: !4490)
!4623 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 369, column: 6)
!4624 = !DILocation(line: 369, column: 11, scope: !4623, inlinedAt: !4490)
!4625 = !DILocation(line: 369, column: 6, scope: !4486, inlinedAt: !4490)
!4626 = !DILocation(line: 369, column: 26, scope: !4623, inlinedAt: !4490)
!4627 = !DILocation(line: 370, column: 6, scope: !4628, inlinedAt: !4490)
!4628 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 370, column: 6)
!4629 = !DILocation(line: 370, column: 11, scope: !4628, inlinedAt: !4490)
!4630 = !DILocation(line: 370, column: 6, scope: !4486, inlinedAt: !4490)
!4631 = !DILocation(line: 370, column: 26, scope: !4628, inlinedAt: !4490)
!4632 = !DILocation(line: 371, column: 6, scope: !4633, inlinedAt: !4490)
!4633 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 371, column: 6)
!4634 = !DILocation(line: 371, column: 11, scope: !4633, inlinedAt: !4490)
!4635 = !DILocation(line: 371, column: 6, scope: !4486, inlinedAt: !4490)
!4636 = !DILocation(line: 371, column: 26, scope: !4633, inlinedAt: !4490)
!4637 = !DILocation(line: 372, column: 6, scope: !4638, inlinedAt: !4490)
!4638 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 372, column: 6)
!4639 = !DILocation(line: 372, column: 11, scope: !4638, inlinedAt: !4490)
!4640 = !DILocation(line: 372, column: 6, scope: !4486, inlinedAt: !4490)
!4641 = !DILocation(line: 372, column: 26, scope: !4638, inlinedAt: !4490)
!4642 = !DILocation(line: 373, column: 6, scope: !4643, inlinedAt: !4490)
!4643 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 373, column: 6)
!4644 = !DILocation(line: 373, column: 11, scope: !4643, inlinedAt: !4490)
!4645 = !DILocation(line: 373, column: 6, scope: !4486, inlinedAt: !4490)
!4646 = !DILocation(line: 373, column: 26, scope: !4643, inlinedAt: !4490)
!4647 = !DILocation(line: 374, column: 6, scope: !4648, inlinedAt: !4490)
!4648 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 374, column: 6)
!4649 = !DILocation(line: 374, column: 11, scope: !4648, inlinedAt: !4490)
!4650 = !DILocation(line: 374, column: 6, scope: !4486, inlinedAt: !4490)
!4651 = !DILocation(line: 374, column: 26, scope: !4648, inlinedAt: !4490)
!4652 = !DILocation(line: 375, column: 6, scope: !4653, inlinedAt: !4490)
!4653 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 375, column: 6)
!4654 = !DILocation(line: 375, column: 11, scope: !4653, inlinedAt: !4490)
!4655 = !DILocation(line: 375, column: 6, scope: !4486, inlinedAt: !4490)
!4656 = !DILocation(line: 375, column: 27, scope: !4653, inlinedAt: !4490)
!4657 = !DILocation(line: 376, column: 6, scope: !4658, inlinedAt: !4490)
!4658 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 376, column: 6)
!4659 = !DILocation(line: 376, column: 11, scope: !4658, inlinedAt: !4490)
!4660 = !DILocation(line: 376, column: 6, scope: !4486, inlinedAt: !4490)
!4661 = !DILocation(line: 376, column: 32, scope: !4658, inlinedAt: !4490)
!4662 = !DILocation(line: 377, column: 6, scope: !4663, inlinedAt: !4490)
!4663 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 377, column: 6)
!4664 = !DILocation(line: 377, column: 11, scope: !4663, inlinedAt: !4490)
!4665 = !DILocation(line: 377, column: 6, scope: !4486, inlinedAt: !4490)
!4666 = !DILocation(line: 377, column: 32, scope: !4663, inlinedAt: !4490)
!4667 = !DILocation(line: 378, column: 6, scope: !4668, inlinedAt: !4490)
!4668 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 378, column: 6)
!4669 = !DILocation(line: 378, column: 11, scope: !4668, inlinedAt: !4490)
!4670 = !DILocation(line: 378, column: 6, scope: !4486, inlinedAt: !4490)
!4671 = !DILocation(line: 378, column: 32, scope: !4668, inlinedAt: !4490)
!4672 = !DILocation(line: 379, column: 6, scope: !4673, inlinedAt: !4490)
!4673 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 379, column: 6)
!4674 = !DILocation(line: 379, column: 11, scope: !4673, inlinedAt: !4490)
!4675 = !DILocation(line: 379, column: 6, scope: !4486, inlinedAt: !4490)
!4676 = !DILocation(line: 379, column: 33, scope: !4673, inlinedAt: !4490)
!4677 = !DILocation(line: 380, column: 6, scope: !4678, inlinedAt: !4490)
!4678 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 380, column: 6)
!4679 = !DILocation(line: 380, column: 11, scope: !4678, inlinedAt: !4490)
!4680 = !DILocation(line: 380, column: 6, scope: !4486, inlinedAt: !4490)
!4681 = !DILocation(line: 380, column: 33, scope: !4678, inlinedAt: !4490)
!4682 = !DILocation(line: 381, column: 6, scope: !4683, inlinedAt: !4490)
!4683 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 381, column: 6)
!4684 = !DILocation(line: 381, column: 11, scope: !4683, inlinedAt: !4490)
!4685 = !DILocation(line: 381, column: 6, scope: !4486, inlinedAt: !4490)
!4686 = !DILocation(line: 381, column: 33, scope: !4683, inlinedAt: !4490)
!4687 = !DILocation(line: 382, column: 2, scope: !4688, inlinedAt: !4490)
!4688 = distinct !DILexicalBlock(scope: !4689, file: !135, line: 382, column: 2)
!4689 = distinct !DILexicalBlock(scope: !4486, file: !135, line: 382, column: 2)
!4690 = !{i32 -2142855036, i32 -2142855007, i32 -2142854961, i32 -2142854903, i32 -2142854849, i32 -2142854795, i32 -2142854740, i32 -2142854709}
!4691 = !DILocation(line: 382, column: 2, scope: !4692, inlinedAt: !4490)
!4692 = distinct !DILexicalBlock(scope: !4693, file: !135, line: 382, column: 2)
!4693 = distinct !DILexicalBlock(scope: !4689, file: !135, line: 382, column: 2)
!4694 = !{i32 -2142854266, i32 -2142854259, i32 -2142854205, i32 -2142854174, i32 -2142854144}
!4695 = !DILocation(line: 382, column: 2, scope: !4693, inlinedAt: !4490)
!4696 = !DILocation(line: 386, column: 1, scope: !4486, inlinedAt: !4490)
!4697 = !DILocation(line: 547, column: 9, scope: !4469, inlinedAt: !4472)
!4698 = !DILocation(line: 549, column: 8, scope: !4699, inlinedAt: !4472)
!4699 = distinct !DILexicalBlock(scope: !4469, file: !135, line: 549, column: 7)
!4700 = !DILocation(line: 549, column: 7, scope: !4469, inlinedAt: !4472)
!4701 = !DILocation(line: 550, column: 4, scope: !4699, inlinedAt: !4472)
!4702 = !DILocation(line: 553, column: 33, scope: !4469, inlinedAt: !4472)
!4703 = !DILocation(line: 325, column: 6, scope: !4704, inlinedAt: !4484)
!4704 = distinct !DILexicalBlock(scope: !4480, file: !135, line: 325, column: 6)
!4705 = !DILocation(line: 325, column: 6, scope: !4480, inlinedAt: !4484)
!4706 = !DILocation(line: 326, column: 3, scope: !4704, inlinedAt: !4484)
!4707 = !DILocation(line: 332, column: 9, scope: !4480, inlinedAt: !4484)
!4708 = !DILocation(line: 332, column: 15, scope: !4480, inlinedAt: !4484)
!4709 = !DILocation(line: 332, column: 2, scope: !4480, inlinedAt: !4484)
!4710 = !DILocation(line: 336, column: 1, scope: !4480, inlinedAt: !4484)
!4711 = !DILocation(line: 553, column: 5, scope: !4469, inlinedAt: !4472)
!4712 = !DILocation(line: 553, column: 41, scope: !4469, inlinedAt: !4472)
!4713 = !DILocation(line: 554, column: 5, scope: !4469, inlinedAt: !4472)
!4714 = !DILocation(line: 554, column: 12, scope: !4469, inlinedAt: !4472)
!4715 = !DILocation(line: 448, column: 31, scope: !4464, inlinedAt: !4468)
!4716 = !DILocation(line: 448, column: 34, scope: !4464, inlinedAt: !4468)
!4717 = !DILocation(line: 448, column: 14, scope: !4464, inlinedAt: !4468)
!4718 = !DILocation(line: 450, column: 22, scope: !4464, inlinedAt: !4468)
!4719 = !DILocation(line: 450, column: 25, scope: !4464, inlinedAt: !4468)
!4720 = !DILocation(line: 450, column: 30, scope: !4464, inlinedAt: !4468)
!4721 = !DILocation(line: 450, column: 36, scope: !4464, inlinedAt: !4468)
!4722 = !DILocation(line: 450, column: 8, scope: !4464, inlinedAt: !4468)
!4723 = !DILocation(line: 450, column: 6, scope: !4464, inlinedAt: !4468)
!4724 = !DILocation(line: 451, column: 9, scope: !4464, inlinedAt: !4468)
!4725 = !DILocation(line: 552, column: 3, scope: !4469, inlinedAt: !4472)
!4726 = !DILocation(line: 557, column: 19, scope: !4471, inlinedAt: !4472)
!4727 = !DILocation(line: 557, column: 25, scope: !4471, inlinedAt: !4472)
!4728 = !DILocation(line: 557, column: 9, scope: !4471, inlinedAt: !4472)
!4729 = !DILocation(line: 557, column: 2, scope: !4471, inlinedAt: !4472)
!4730 = !DILocation(line: 558, column: 1, scope: !4471, inlinedAt: !4472)
!4731 = !DILocation(line: 664, column: 2, scope: !4460)
!4732 = distinct !DISubprogram(name: "get_order", scope: !4733, file: !4733, line: 29, type: !4734, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!4733 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4734 = !DISubroutineType(types: !4735)
!4735 = !{!166, !215}
!4736 = !DILocalVariable(name: "x", arg: 1, scope: !4737, file: !4738, line: 366, type: !462)
!4737 = distinct !DISubprogram(name: "fls64", scope: !4738, file: !4738, line: 366, type: !4739, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!4738 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4739 = !DISubroutineType(types: !4740)
!4740 = !{!166, !462}
!4741 = !DILocation(line: 366, column: 40, scope: !4737, inlinedAt: !4742)
!4742 = distinct !DILocation(line: 46, column: 9, scope: !4732)
!4743 = !DILocalVariable(name: "bitpos", scope: !4737, file: !4738, line: 368, type: !166)
!4744 = !DILocation(line: 368, column: 6, scope: !4737, inlinedAt: !4742)
!4745 = !DILocalVariable(name: "size", arg: 1, scope: !4732, file: !4733, line: 29, type: !215)
!4746 = !DILocation(line: 29, column: 63, scope: !4732)
!4747 = !DILocation(line: 31, column: 27, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4732, file: !4733, line: 31, column: 6)
!4749 = !DILocation(line: 31, column: 6, scope: !4748)
!4750 = !DILocation(line: 31, column: 6, scope: !4732)
!4751 = !DILocation(line: 32, column: 8, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4753, file: !4733, line: 32, column: 7)
!4753 = distinct !DILexicalBlock(scope: !4748, file: !4733, line: 31, column: 34)
!4754 = !DILocation(line: 32, column: 7, scope: !4753)
!4755 = !DILocation(line: 33, column: 4, scope: !4752)
!4756 = !DILocation(line: 35, column: 7, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4753, file: !4733, line: 35, column: 7)
!4758 = !DILocation(line: 35, column: 12, scope: !4757)
!4759 = !DILocation(line: 35, column: 7, scope: !4753)
!4760 = !DILocation(line: 36, column: 4, scope: !4757)
!4761 = !DILocation(line: 38, column: 10, scope: !4753)
!4762 = !DILocation(line: 38, column: 28, scope: !4753)
!4763 = !DILocation(line: 38, column: 41, scope: !4753)
!4764 = !DILocation(line: 38, column: 3, scope: !4753)
!4765 = !DILocation(line: 41, column: 6, scope: !4732)
!4766 = !DILocation(line: 42, column: 7, scope: !4732)
!4767 = !DILocation(line: 46, column: 15, scope: !4732)
!4768 = !DILocation(line: 374, column: 2, scope: !4737, inlinedAt: !4742)
!4769 = !DILocation(line: 376, column: 14, scope: !4737, inlinedAt: !4742)
!4770 = !{i32 876400}
!4771 = !DILocation(line: 377, column: 9, scope: !4737, inlinedAt: !4742)
!4772 = !DILocation(line: 377, column: 16, scope: !4737, inlinedAt: !4742)
!4773 = !DILocation(line: 46, column: 2, scope: !4732)
!4774 = !DILocation(line: 48, column: 1, scope: !4732)
!4775 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4776, file: !4776, line: 30, type: !4777, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!4776 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4777 = !DISubroutineType(types: !4778)
!4778 = !{!166, !461}
!4779 = !DILocation(line: 366, column: 40, scope: !4737, inlinedAt: !4780)
!4780 = distinct !DILocation(line: 32, column: 9, scope: !4775)
!4781 = !DILocation(line: 368, column: 6, scope: !4737, inlinedAt: !4780)
!4782 = !DILocalVariable(name: "n", arg: 1, scope: !4775, file: !4776, line: 30, type: !461)
!4783 = !DILocation(line: 30, column: 21, scope: !4775)
!4784 = !DILocation(line: 32, column: 15, scope: !4775)
!4785 = !DILocation(line: 374, column: 2, scope: !4737, inlinedAt: !4780)
!4786 = !DILocation(line: 376, column: 14, scope: !4737, inlinedAt: !4780)
!4787 = !DILocation(line: 377, column: 9, scope: !4737, inlinedAt: !4780)
!4788 = !DILocation(line: 377, column: 16, scope: !4737, inlinedAt: !4780)
!4789 = !DILocation(line: 32, column: 18, scope: !4775)
!4790 = !DILocation(line: 32, column: 2, scope: !4775)
!4791 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4792, file: !4792, line: 137, type: !4793, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!4792 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4793 = !DISubroutineType(types: !4794)
!4794 = !{!144, !976, !3296, !620, !142}
!4795 = !DILocalVariable(name: "s", arg: 1, scope: !4791, file: !4792, line: 137, type: !976)
!4796 = !DILocation(line: 137, column: 54, scope: !4791)
!4797 = !DILocalVariable(name: "object", arg: 2, scope: !4791, file: !4792, line: 137, type: !3296)
!4798 = !DILocation(line: 137, column: 69, scope: !4791)
!4799 = !DILocalVariable(name: "size", arg: 3, scope: !4791, file: !4792, line: 138, type: !620)
!4800 = !DILocation(line: 138, column: 12, scope: !4791)
!4801 = !DILocalVariable(name: "flags", arg: 4, scope: !4791, file: !4792, line: 138, type: !142)
!4802 = !DILocation(line: 138, column: 24, scope: !4791)
!4803 = !DILocation(line: 140, column: 17, scope: !4791)
!4804 = !DILocation(line: 140, column: 2, scope: !4791)
!4805 = distinct !DISubprogram(name: "input_report_abs", scope: !197, file: !197, line: 425, type: !4806, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{null, !195, !7, !166}
!4808 = !DILocalVariable(name: "dev", arg: 1, scope: !4805, file: !197, line: 425, type: !195)
!4809 = !DILocation(line: 425, column: 55, scope: !4805)
!4810 = !DILocalVariable(name: "code", arg: 2, scope: !4805, file: !197, line: 425, type: !7)
!4811 = !DILocation(line: 425, column: 73, scope: !4805)
!4812 = !DILocalVariable(name: "value", arg: 3, scope: !4805, file: !197, line: 425, type: !166)
!4813 = !DILocation(line: 425, column: 83, scope: !4805)
!4814 = !DILocation(line: 427, column: 14, scope: !4805)
!4815 = !DILocation(line: 427, column: 27, scope: !4805)
!4816 = !DILocation(line: 427, column: 33, scope: !4805)
!4817 = !DILocation(line: 427, column: 2, scope: !4805)
!4818 = !DILocation(line: 428, column: 1, scope: !4805)
!4819 = distinct !DISubprogram(name: "input_report_key", scope: !197, file: !197, line: 415, type: !4806, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!4820 = !DILocalVariable(name: "dev", arg: 1, scope: !4819, file: !197, line: 415, type: !195)
!4821 = !DILocation(line: 415, column: 55, scope: !4819)
!4822 = !DILocalVariable(name: "code", arg: 2, scope: !4819, file: !197, line: 415, type: !7)
!4823 = !DILocation(line: 415, column: 73, scope: !4819)
!4824 = !DILocalVariable(name: "value", arg: 3, scope: !4819, file: !197, line: 415, type: !166)
!4825 = !DILocation(line: 415, column: 83, scope: !4819)
!4826 = !DILocation(line: 417, column: 14, scope: !4819)
!4827 = !DILocation(line: 417, column: 27, scope: !4819)
!4828 = !DILocation(line: 417, column: 35, scope: !4819)
!4829 = !DILocation(line: 417, column: 34, scope: !4819)
!4830 = !DILocation(line: 417, column: 33, scope: !4819)
!4831 = !DILocation(line: 417, column: 2, scope: !4819)
!4832 = !DILocation(line: 418, column: 1, scope: !4819)
!4833 = distinct !DISubprogram(name: "input_sync", scope: !197, file: !197, line: 440, type: !3071, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!4834 = !DILocalVariable(name: "dev", arg: 1, scope: !4833, file: !197, line: 440, type: !195)
!4835 = !DILocation(line: 440, column: 49, scope: !4833)
!4836 = !DILocation(line: 442, column: 14, scope: !4833)
!4837 = !DILocation(line: 442, column: 2, scope: !4833)
!4838 = !DILocation(line: 443, column: 1, scope: !4833)
