; ModuleID = '../bcout/drivers/input/mouse/cypress_ps2.llvm.bc'
source_filename = "drivers/input/mouse/cypress_ps2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

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
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
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
%struct.input_mt = type { i32, i32, i32, i32, i32, i32*, [0 x %struct.input_mt_slot] }
%struct.input_mt_slot = type { [14 x i32], i32, i32 }
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
%struct.cytp_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.cytp_report_data = type { i32, [2 x %struct.cytp_contact], i8 }
%struct.cytp_contact = type { i32, i32, i32 }
%struct.input_mt_pos = type { i16, i16 }

@.str = private unnamed_addr constant [8 x i8] c"Cypress\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Trackpad\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"cypress_ps2: Unable to query Trackpad hardware.\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"cypress_ps2: init: Unable to initialize Cypress absolute mode.\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"cypress_ps2: init: Unable to set input params.\0A\00", align 1
@cytp_resolution = internal constant [4 x i8] c"\00\01\02\03", align 1, !dbg !0
@cytp_rate = internal constant [6 x i8] c"\0A\14(<d\C8", align 1, !dbg !152
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"cypress_ps2: Reconnect: unable to detect trackpad.\0A\00", align 1
@.str.7 = private unnamed_addr constant [69 x i8] c"cypress_ps2: Reconnect: Unable to initialize Cypress absolute mode.\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cypress_detect(%struct.psmouse* %psmouse, i1 zeroext %set_properties) #0 !dbg !166 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %set_properties.addr = alloca i8, align 1
  %param = alloca [3 x i8], align 1
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !3984, metadata !DIExpression()), !dbg !3985
  %frombool = zext i1 %set_properties to i8
  store i8 %frombool, i8* %set_properties.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %set_properties.addr, metadata !3986, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.declare(metadata [3 x i8]* %param, metadata !3988, metadata !DIExpression()), !dbg !3990
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !3991
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %param, i64 0, i64 0, !dbg !3993
  %call = call i32 @cypress_send_ext_cmd(%struct.psmouse* %0, i8 zeroext 0, i8* %arraydecay) #8, !dbg !3994
  %tobool = icmp ne i32 %call, 0, !dbg !3994
  br i1 %tobool, label %if.then, label %if.end, !dbg !3995

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !3996
  br label %return, !dbg !3996

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %param, i64 0, i64 0, !dbg !3997
  %1 = load i8, i8* %arrayidx, align 1, !dbg !3997
  %conv = zext i8 %1 to i32, !dbg !3997
  %cmp = icmp ne i32 %conv, 51, !dbg !3999
  br i1 %cmp, label %if.then6, label %lor.lhs.false, !dbg !4000

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx2 = getelementptr [3 x i8], [3 x i8]* %param, i64 0, i64 1, !dbg !4001
  %2 = load i8, i8* %arrayidx2, align 1, !dbg !4001
  %conv3 = zext i8 %2 to i32, !dbg !4001
  %cmp4 = icmp ne i32 %conv3, 204, !dbg !4002
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !4003

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4004
  br label %return, !dbg !4004

if.end7:                                          ; preds = %lor.lhs.false
  %3 = load i8, i8* %set_properties.addr, align 1, !dbg !4005
  %tobool8 = trunc i8 %3 to i1, !dbg !4005
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !4007

if.then9:                                         ; preds = %if.end7
  %4 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4008
  %vendor = getelementptr inbounds %struct.psmouse, %struct.psmouse* %4, i32 0, i32 4, !dbg !4010
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %vendor, align 8, !dbg !4011
  %5 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4012
  %name = getelementptr inbounds %struct.psmouse, %struct.psmouse* %5, i32 0, i32 5, !dbg !4013
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %name, align 8, !dbg !4014
  br label %if.end10, !dbg !4015

if.end10:                                         ; preds = %if.then9, %if.end7
  store i32 0, i32* %retval, align 4, !dbg !4016
  br label %return, !dbg !4016

return:                                           ; preds = %if.end10, %if.then6, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !4017
  ret i32 %6, !dbg !4017
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cypress_send_ext_cmd(%struct.psmouse* %psmouse, i8 zeroext %cmd, i8* %param) #0 !dbg !4018 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %cmd.addr = alloca i8, align 1
  %param.addr = alloca i8*, align 8
  %tries = alloca i32, align 4
  %rc = alloca i32, align 4
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4021, metadata !DIExpression()), !dbg !4022
  store i8 %cmd, i8* %cmd.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %cmd.addr, metadata !4023, metadata !DIExpression()), !dbg !4024
  store i8* %param, i8** %param.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %param.addr, metadata !4025, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.declare(metadata i32* %tries, metadata !4027, metadata !DIExpression()), !dbg !4028
  store i32 3, i32* %tries, align 4, !dbg !4028
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4029, metadata !DIExpression()), !dbg !4030
  br label %do.body, !dbg !4031

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4032
  %1 = load i8, i8* %cmd.addr, align 1, !dbg !4034
  %conv = zext i8 %1 to i32, !dbg !4034
  %and = and i32 %conv, 3, !dbg !4034
  %conv1 = trunc i32 %and to i8, !dbg !4034
  %call = call i32 @cypress_ps2_ext_cmd(%struct.psmouse* %0, i16 zeroext 4328, i8 zeroext %conv1) #8, !dbg !4035
  %2 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4036
  %3 = load i8, i8* %cmd.addr, align 1, !dbg !4037
  %conv2 = zext i8 %3 to i32, !dbg !4037
  %shr = ashr i32 %conv2, 2, !dbg !4037
  %and3 = and i32 %shr, 3, !dbg !4037
  %conv4 = trunc i32 %and3 to i8, !dbg !4037
  %call5 = call i32 @cypress_ps2_ext_cmd(%struct.psmouse* %2, i16 zeroext 4328, i8 zeroext %conv4) #8, !dbg !4038
  %4 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4039
  %5 = load i8, i8* %cmd.addr, align 1, !dbg !4040
  %conv6 = zext i8 %5 to i32, !dbg !4040
  %shr7 = ashr i32 %conv6, 4, !dbg !4040
  %and8 = and i32 %shr7, 3, !dbg !4040
  %conv9 = trunc i32 %and8 to i8, !dbg !4040
  %call10 = call i32 @cypress_ps2_ext_cmd(%struct.psmouse* %4, i16 zeroext 4328, i8 zeroext %conv9) #8, !dbg !4041
  %6 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4042
  %7 = load i8, i8* %cmd.addr, align 1, !dbg !4043
  %conv11 = zext i8 %7 to i32, !dbg !4043
  %shr12 = ashr i32 %conv11, 6, !dbg !4043
  %and13 = and i32 %shr12, 3, !dbg !4043
  %conv14 = trunc i32 %and13 to i8, !dbg !4043
  %call15 = call i32 @cypress_ps2_ext_cmd(%struct.psmouse* %6, i16 zeroext 4328, i8 zeroext %conv14) #8, !dbg !4044
  %8 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4045
  %9 = load i8, i8* %cmd.addr, align 1, !dbg !4046
  %10 = load i8*, i8** %param.addr, align 8, !dbg !4047
  %call16 = call i32 @cypress_ps2_read_cmd_status(%struct.psmouse* %8, i8 zeroext %9, i8* %10) #8, !dbg !4048
  store i32 %call16, i32* %rc, align 4, !dbg !4049
  %11 = load i32, i32* %rc, align 4, !dbg !4050
  %tobool = icmp ne i32 %11, 0, !dbg !4050
  br i1 %tobool, label %if.then, label %if.end, !dbg !4052

if.then:                                          ; preds = %do.body
  br label %do.cond, !dbg !4053

if.end:                                           ; preds = %do.body
  %12 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4054
  %13 = load i8, i8* %cmd.addr, align 1, !dbg !4056
  %14 = load i8*, i8** %param.addr, align 8, !dbg !4057
  %call17 = call zeroext i1 @cypress_verify_cmd_state(%struct.psmouse* %12, i8 zeroext %13, i8* %14) #8, !dbg !4058
  br i1 %call17, label %if.then18, label %if.end19, !dbg !4059

if.then18:                                        ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4060
  br label %return, !dbg !4060

if.end19:                                         ; preds = %if.end
  br label %do.cond, !dbg !4061

do.cond:                                          ; preds = %if.end19, %if.then
  %15 = load i32, i32* %tries, align 4, !dbg !4062
  %dec = add i32 %15, -1, !dbg !4062
  store i32 %dec, i32* %tries, align 4, !dbg !4062
  %cmp = icmp sgt i32 %dec, 0, !dbg !4063
  br i1 %cmp, label %do.body, label %do.end, !dbg !4061, !llvm.loop !4064

do.end:                                           ; preds = %do.cond
  store i32 -5, i32* %retval, align 4, !dbg !4066
  br label %return, !dbg !4066

return:                                           ; preds = %do.end, %if.then18
  %16 = load i32, i32* %retval, align 4, !dbg !4067
  ret i32 %16, !dbg !4067
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cypress_init(%struct.psmouse* %psmouse) #0 !dbg !4068 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %cytp = alloca %struct.cytp_data*, align 8
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4069, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.declare(metadata %struct.cytp_data** %cytp, metadata !4071, metadata !DIExpression()), !dbg !4088
  %call = call i8* @kzalloc(i64 48, i32 3264) #8, !dbg !4089
  %0 = bitcast i8* %call to %struct.cytp_data*, !dbg !4089
  store %struct.cytp_data* %0, %struct.cytp_data** %cytp, align 8, !dbg !4090
  %1 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !4091
  %tobool = icmp ne %struct.cytp_data* %1, null, !dbg !4091
  br i1 %tobool, label %if.end, label %if.then, !dbg !4093

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4094
  br label %return, !dbg !4094

if.end:                                           ; preds = %entry
  %2 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !4095
  %3 = bitcast %struct.cytp_data* %2 to i8*, !dbg !4095
  %4 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4096
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %4, i32 0, i32 0, !dbg !4097
  store i8* %3, i8** %private, align 8, !dbg !4098
  %5 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4099
  %pktsize = getelementptr inbounds %struct.psmouse, %struct.psmouse* %5, i32 0, i32 10, !dbg !4100
  store i8 8, i8* %pktsize, align 2, !dbg !4101
  %6 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4102
  call void @cypress_reset(%struct.psmouse* %6) #8, !dbg !4103
  %7 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4104
  %call1 = call i32 @cypress_query_hardware(%struct.psmouse* %7) #8, !dbg !4106
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4106
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4107

if.then3:                                         ; preds = %if.end
  %8 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4108
  %ps2dev = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 2, !dbg !4108
  %serio = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %ps2dev, i32 0, i32 0, !dbg !4108
  %9 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4108
  %dev = getelementptr inbounds %struct.serio, %struct.serio* %9, i32 0, i32 18, !dbg !4108
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !4108
  br label %err_exit, !dbg !4110

if.end4:                                          ; preds = %if.end
  %10 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4111
  %call5 = call i32 @cypress_set_absolute_mode(%struct.psmouse* %10) #8, !dbg !4113
  %tobool6 = icmp ne i32 %call5, 0, !dbg !4113
  br i1 %tobool6, label %if.then7, label %if.end11, !dbg !4114

if.then7:                                         ; preds = %if.end4
  %11 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4115
  %ps2dev8 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 2, !dbg !4115
  %serio9 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %ps2dev8, i32 0, i32 0, !dbg !4115
  %12 = load %struct.serio*, %struct.serio** %serio9, align 8, !dbg !4115
  %dev10 = getelementptr inbounds %struct.serio, %struct.serio* %12, i32 0, i32 18, !dbg !4115
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev10, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !4115
  br label %err_exit, !dbg !4117

if.end11:                                         ; preds = %if.end4
  %13 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4118
  %dev12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %13, i32 0, i32 1, !dbg !4120
  %14 = load %struct.input_dev*, %struct.input_dev** %dev12, align 8, !dbg !4120
  %15 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !4121
  %call13 = call i32 @cypress_set_input_params(%struct.input_dev* %14, %struct.cytp_data* %15) #8, !dbg !4122
  %cmp = icmp slt i32 %call13, 0, !dbg !4123
  br i1 %cmp, label %if.then14, label %if.end18, !dbg !4124

if.then14:                                        ; preds = %if.end11
  %16 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4125
  %ps2dev15 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %16, i32 0, i32 2, !dbg !4125
  %serio16 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %ps2dev15, i32 0, i32 0, !dbg !4125
  %17 = load %struct.serio*, %struct.serio** %serio16, align 8, !dbg !4125
  %dev17 = getelementptr inbounds %struct.serio, %struct.serio* %17, i32 0, i32 18, !dbg !4125
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev17, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !4125
  br label %err_exit, !dbg !4127

if.end18:                                         ; preds = %if.end11
  %18 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4128
  %model = getelementptr inbounds %struct.psmouse, %struct.psmouse* %18, i32 0, i32 14, !dbg !4129
  store i32 1, i32* %model, align 8, !dbg !4130
  %19 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4131
  %protocol_handler = getelementptr inbounds %struct.psmouse, %struct.psmouse* %19, i32 0, i32 26, !dbg !4132
  store i32 (%struct.psmouse*)* @cypress_protocol_handler, i32 (%struct.psmouse*)** %protocol_handler, align 8, !dbg !4133
  %20 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4134
  %set_rate = getelementptr inbounds %struct.psmouse, %struct.psmouse* %20, i32 0, i32 27, !dbg !4135
  store void (%struct.psmouse*, i32)* @cypress_set_rate, void (%struct.psmouse*, i32)** %set_rate, align 8, !dbg !4136
  %21 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4137
  %disconnect = getelementptr inbounds %struct.psmouse, %struct.psmouse* %21, i32 0, i32 32, !dbg !4138
  store void (%struct.psmouse*)* @cypress_disconnect, void (%struct.psmouse*)** %disconnect, align 8, !dbg !4139
  %22 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4140
  %reconnect = getelementptr inbounds %struct.psmouse, %struct.psmouse* %22, i32 0, i32 30, !dbg !4141
  store i32 (%struct.psmouse*)* @cypress_reconnect, i32 (%struct.psmouse*)** %reconnect, align 8, !dbg !4142
  %23 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4143
  %cleanup = getelementptr inbounds %struct.psmouse, %struct.psmouse* %23, i32 0, i32 33, !dbg !4144
  store void (%struct.psmouse*)* @cypress_reset, void (%struct.psmouse*)** %cleanup, align 8, !dbg !4145
  %24 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4146
  %resync_time = getelementptr inbounds %struct.psmouse, %struct.psmouse* %24, i32 0, i32 24, !dbg !4147
  store i32 0, i32* %resync_time, align 8, !dbg !4148
  store i32 0, i32* %retval, align 4, !dbg !4149
  br label %return, !dbg !4149

err_exit:                                         ; preds = %if.then14, %if.then7, %if.then3
  call void @llvm.dbg.label(metadata !4150), !dbg !4151
  %25 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4152
  call void @cypress_reset(%struct.psmouse* %25) #8, !dbg !4153
  %26 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4154
  %private19 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %26, i32 0, i32 0, !dbg !4155
  store i8* null, i8** %private19, align 8, !dbg !4156
  %27 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !4157
  %28 = bitcast %struct.cytp_data* %27 to i8*, !dbg !4157
  call void @kfree(i8* %28) #8, !dbg !4158
  store i32 -1, i32* %retval, align 4, !dbg !4159
  br label %return, !dbg !4159

return:                                           ; preds = %err_exit, %if.end18, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !4160
  ret i32 %29, !dbg !4160
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4161 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4164, metadata !DIExpression()), !dbg !4168
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4174, metadata !DIExpression()), !dbg !4175
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4176, metadata !DIExpression()), !dbg !4177
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4178, metadata !DIExpression()), !dbg !4179
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4180, metadata !DIExpression()), !dbg !4184
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4186, metadata !DIExpression()), !dbg !4190
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4192, metadata !DIExpression()), !dbg !4196
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4201, metadata !DIExpression()), !dbg !4202
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4203, metadata !DIExpression()), !dbg !4204
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4205, metadata !DIExpression()), !dbg !4206
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4207, metadata !DIExpression()), !dbg !4208
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4209, metadata !DIExpression()), !dbg !4210
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4211, metadata !DIExpression()), !dbg !4212
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4213, metadata !DIExpression()), !dbg !4214
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4215, metadata !DIExpression()), !dbg !4216
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4217, metadata !DIExpression()), !dbg !4218
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4219, metadata !DIExpression()), !dbg !4220
  %0 = load i64, i64* %size.addr, align 8, !dbg !4221
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4222
  %or = or i32 %1, 256, !dbg !4223
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4224
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4225
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4226

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4227
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4228
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4229

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4230
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4231
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4232
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4233
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4210
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4234
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4235
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4236
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4237
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4238
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4239
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4240
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4240
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4240
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4240
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4240
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4241
  br label %kmalloc.exit, !dbg !4241

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4242
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4243
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4243
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4245

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4246
  br label %kmalloc_index.exit.i, !dbg !4246

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4247
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4249
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4250

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4251
  br label %kmalloc_index.exit.i, !dbg !4251

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4252
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4254
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4255

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4256
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4257
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4258

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4259
  br label %kmalloc_index.exit.i, !dbg !4259

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4260
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4262
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4263

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4264
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4265
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4266

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4267
  br label %kmalloc_index.exit.i, !dbg !4267

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4268
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4270
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4271

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4272
  br label %kmalloc_index.exit.i, !dbg !4272

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4273
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4275
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4276

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4277
  br label %kmalloc_index.exit.i, !dbg !4277

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4278
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4280
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4281

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4282
  br label %kmalloc_index.exit.i, !dbg !4282

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4283
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4285
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4286

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4287
  br label %kmalloc_index.exit.i, !dbg !4287

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4288
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4290
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4291

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4292
  br label %kmalloc_index.exit.i, !dbg !4292

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4293
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4295
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4296

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4297
  br label %kmalloc_index.exit.i, !dbg !4297

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4298
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4300
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4301

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4302
  br label %kmalloc_index.exit.i, !dbg !4302

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4303
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4305
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4306

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4307
  br label %kmalloc_index.exit.i, !dbg !4307

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4308
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4310
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4311

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4312
  br label %kmalloc_index.exit.i, !dbg !4312

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4313
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4315
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4316

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4317
  br label %kmalloc_index.exit.i, !dbg !4317

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4318
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4320
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4321

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4322
  br label %kmalloc_index.exit.i, !dbg !4322

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4323
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4325
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4326

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4327
  br label %kmalloc_index.exit.i, !dbg !4327

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4328
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4330
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4331

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4332
  br label %kmalloc_index.exit.i, !dbg !4332

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4333
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4335
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4336

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4337
  br label %kmalloc_index.exit.i, !dbg !4337

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4338
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4340
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4341

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4342
  br label %kmalloc_index.exit.i, !dbg !4342

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4343
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4345
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4346

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4347
  br label %kmalloc_index.exit.i, !dbg !4347

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4348
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4350
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4351

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4352
  br label %kmalloc_index.exit.i, !dbg !4352

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4353
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4355
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4356

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4357
  br label %kmalloc_index.exit.i, !dbg !4357

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4358
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4360
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4361

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4362
  br label %kmalloc_index.exit.i, !dbg !4362

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4363
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4365
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4366

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4367
  br label %kmalloc_index.exit.i, !dbg !4367

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4368
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4370
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4371

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4372
  br label %kmalloc_index.exit.i, !dbg !4372

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4373
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4375
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4376

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4377
  br label %kmalloc_index.exit.i, !dbg !4377

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4378
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4380
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4381

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4382
  br label %kmalloc_index.exit.i, !dbg !4382

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4383
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4385
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4386

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4387
  br label %kmalloc_index.exit.i, !dbg !4387

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4388, !srcloc !4391
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #10, !dbg !4392, !srcloc !4395
  unreachable, !dbg !4396

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4397
  store i32 %45, i32* %index.i, align 4, !dbg !4398
  %46 = load i32, i32* %index.i, align 4, !dbg !4399
  %tobool.i = icmp ne i32 %46, 0, !dbg !4399
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4401

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4402
  br label %kmalloc.exit, !dbg !4402

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4403
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4404
  %and.i.i = and i32 %48, 17, !dbg !4404
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4404
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4404
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4404
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4404
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4406

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4407
  br label %kmalloc_type.exit.i, !dbg !4407

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4408
  %and2.i.i = and i32 %49, 1, !dbg !4409
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4408
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4408
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4408
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4410
  br label %kmalloc_type.exit.i, !dbg !4410

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4411
  %idxprom.i = zext i32 %51 to i64, !dbg !4412
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4412
  %52 = load i32, i32* %index.i, align 4, !dbg !4413
  %idxprom6.i = zext i32 %52 to i64, !dbg !4412
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4412
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4412
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4414
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4415
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4416
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4417
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4418
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4418
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4418
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4418
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4418
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4179
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4419
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4420
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4421
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4422
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4423
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4424
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4425
  store i8* %62, i8** %retval.i, align 8, !dbg !4426
  br label %kmalloc.exit, !dbg !4426

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4427
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4428
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4429
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4429
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4429
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4429
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4429
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4430
  br label %kmalloc.exit, !dbg !4430

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4431
  ret i8* %65, !dbg !4432
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cypress_reset(%struct.psmouse* %psmouse) #0 !dbg !4433 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %cytp = alloca %struct.cytp_data*, align 8
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4434, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.declare(metadata %struct.cytp_data** %cytp, metadata !4436, metadata !DIExpression()), !dbg !4437
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4438
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 0, !dbg !4439
  %1 = load i8*, i8** %private, align 8, !dbg !4439
  %2 = bitcast i8* %1 to %struct.cytp_data*, !dbg !4438
  store %struct.cytp_data* %2, %struct.cytp_data** %cytp, align 8, !dbg !4437
  %3 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !4440
  %mode = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %3, i32 0, i32 2, !dbg !4441
  store i32 0, i32* %mode, align 4, !dbg !4442
  %4 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4443
  %call = call i32 @psmouse_reset(%struct.psmouse* %4) #8, !dbg !4444
  ret void, !dbg !4445
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cypress_query_hardware(%struct.psmouse* %psmouse) #0 !dbg !4446 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %ret = alloca i32, align 4
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4447, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4449, metadata !DIExpression()), !dbg !4450
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4451
  %call = call i32 @cypress_read_fw_version(%struct.psmouse* %0) #8, !dbg !4452
  store i32 %call, i32* %ret, align 4, !dbg !4453
  %1 = load i32, i32* %ret, align 4, !dbg !4454
  %tobool = icmp ne i32 %1, 0, !dbg !4454
  br i1 %tobool, label %if.then, label %if.end, !dbg !4456

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !4457
  store i32 %2, i32* %retval, align 4, !dbg !4458
  br label %return, !dbg !4458

if.end:                                           ; preds = %entry
  %3 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4459
  %call1 = call i32 @cypress_read_tp_metrics(%struct.psmouse* %3) #8, !dbg !4460
  store i32 %call1, i32* %ret, align 4, !dbg !4461
  %4 = load i32, i32* %ret, align 4, !dbg !4462
  %tobool2 = icmp ne i32 %4, 0, !dbg !4462
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4464

if.then3:                                         ; preds = %if.end
  %5 = load i32, i32* %ret, align 4, !dbg !4465
  store i32 %5, i32* %retval, align 4, !dbg !4466
  br label %return, !dbg !4466

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4467
  br label %return, !dbg !4467

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !4468
  ret i32 %6, !dbg !4468
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cypress_set_absolute_mode(%struct.psmouse* %psmouse) #0 !dbg !4469 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %cytp = alloca %struct.cytp_data*, align 8
  %param = alloca [3 x i8], align 1
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4470, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.declare(metadata %struct.cytp_data** %cytp, metadata !4472, metadata !DIExpression()), !dbg !4473
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4474
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 0, !dbg !4475
  %1 = load i8*, i8** %private, align 8, !dbg !4475
  %2 = bitcast i8* %1 to %struct.cytp_data*, !dbg !4474
  store %struct.cytp_data* %2, %struct.cytp_data** %cytp, align 8, !dbg !4473
  call void @llvm.dbg.declare(metadata [3 x i8]* %param, metadata !4476, metadata !DIExpression()), !dbg !4477
  %3 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4478
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %param, i64 0, i64 0, !dbg !4480
  %call = call i32 @cypress_send_ext_cmd(%struct.psmouse* %3, i8 zeroext 17, i8* %arraydecay) #8, !dbg !4481
  %cmp = icmp slt i32 %call, 0, !dbg !4482
  br i1 %cmp, label %if.then, label %if.end, !dbg !4483

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !4484
  br label %return, !dbg !4484

if.end:                                           ; preds = %entry
  %4 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !4485
  %mode = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %4, i32 0, i32 2, !dbg !4486
  %5 = load i32, i32* %mode, align 4, !dbg !4486
  %and = and i32 %5, -16, !dbg !4487
  %or = or i32 %and, 8, !dbg !4488
  %6 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !4489
  %mode1 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %6, i32 0, i32 2, !dbg !4490
  store i32 %or, i32* %mode1, align 4, !dbg !4491
  %7 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4492
  call void @cypress_set_packet_size(%struct.psmouse* %7, i32 5) #8, !dbg !4493
  store i32 0, i32* %retval, align 4, !dbg !4494
  br label %return, !dbg !4494

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !4495
  ret i32 %8, !dbg !4495
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cypress_set_input_params(%struct.input_dev* %input, %struct.cytp_data* %cytp) #0 !dbg !4496 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca %struct.input_dev*, align 8
  %cytp.addr = alloca %struct.cytp_data*, align 8
  %ret = alloca i32, align 4
  store %struct.input_dev* %input, %struct.input_dev** %input.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input.addr, metadata !4499, metadata !DIExpression()), !dbg !4500
  store %struct.cytp_data* %cytp, %struct.cytp_data** %cytp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cytp_data** %cytp.addr, metadata !4501, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4503, metadata !DIExpression()), !dbg !4504
  %0 = load %struct.cytp_data*, %struct.cytp_data** %cytp.addr, align 8, !dbg !4505
  %tp_res_x = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %0, i32 0, i32 9, !dbg !4507
  %1 = load i32, i32* %tp_res_x, align 4, !dbg !4507
  %tobool = icmp ne i32 %1, 0, !dbg !4505
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4508

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.cytp_data*, %struct.cytp_data** %cytp.addr, align 8, !dbg !4509
  %tp_res_y = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %2, i32 0, i32 10, !dbg !4510
  %3 = load i32, i32* %tp_res_y, align 4, !dbg !4510
  %tobool1 = icmp ne i32 %3, 0, !dbg !4509
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4511

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !4512
  br label %return, !dbg !4512

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4513
  %evbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %4, i32 0, i32 5, !dbg !4514
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %evbit, i64 0, i64 0, !dbg !4513
  call void @__set_bit(i64 3, i64* %arraydecay) #8, !dbg !4515
  %5 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4516
  %6 = load %struct.cytp_data*, %struct.cytp_data** %cytp.addr, align 8, !dbg !4517
  %tp_max_abs_x = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %6, i32 0, i32 7, !dbg !4518
  %7 = load i32, i32* %tp_max_abs_x, align 4, !dbg !4518
  call void @input_set_abs_params(%struct.input_dev* %5, i32 0, i32 0, i32 %7, i32 0, i32 0) #8, !dbg !4519
  %8 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4520
  %9 = load %struct.cytp_data*, %struct.cytp_data** %cytp.addr, align 8, !dbg !4521
  %tp_max_abs_y = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %9, i32 0, i32 8, !dbg !4522
  %10 = load i32, i32* %tp_max_abs_y, align 4, !dbg !4522
  call void @input_set_abs_params(%struct.input_dev* %8, i32 1, i32 0, i32 %10, i32 0, i32 0) #8, !dbg !4523
  %11 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4524
  %12 = load %struct.cytp_data*, %struct.cytp_data** %cytp.addr, align 8, !dbg !4525
  %tp_min_pressure = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %12, i32 0, i32 3, !dbg !4526
  %13 = load i32, i32* %tp_min_pressure, align 4, !dbg !4526
  %14 = load %struct.cytp_data*, %struct.cytp_data** %cytp.addr, align 8, !dbg !4527
  %tp_max_pressure = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %14, i32 0, i32 4, !dbg !4528
  %15 = load i32, i32* %tp_max_pressure, align 4, !dbg !4528
  call void @input_set_abs_params(%struct.input_dev* %11, i32 24, i32 %13, i32 %15, i32 0, i32 0) #8, !dbg !4529
  %16 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4530
  call void @input_set_abs_params(%struct.input_dev* %16, i32 28, i32 0, i32 255, i32 0, i32 0) #8, !dbg !4531
  %17 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4532
  %18 = load %struct.cytp_data*, %struct.cytp_data** %cytp.addr, align 8, !dbg !4533
  %tp_max_abs_x2 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %18, i32 0, i32 7, !dbg !4534
  %19 = load i32, i32* %tp_max_abs_x2, align 4, !dbg !4534
  call void @input_set_abs_params(%struct.input_dev* %17, i32 53, i32 0, i32 %19, i32 0, i32 0) #8, !dbg !4535
  %20 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4536
  %21 = load %struct.cytp_data*, %struct.cytp_data** %cytp.addr, align 8, !dbg !4537
  %tp_max_abs_y3 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %21, i32 0, i32 8, !dbg !4538
  %22 = load i32, i32* %tp_max_abs_y3, align 4, !dbg !4538
  call void @input_set_abs_params(%struct.input_dev* %20, i32 54, i32 0, i32 %22, i32 0, i32 0) #8, !dbg !4539
  %23 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4540
  call void @input_set_abs_params(%struct.input_dev* %23, i32 58, i32 0, i32 255, i32 0, i32 0) #8, !dbg !4541
  %24 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4542
  %call = call i32 @input_mt_init_slots(%struct.input_dev* %24, i32 2, i32 12) #8, !dbg !4543
  store i32 %call, i32* %ret, align 4, !dbg !4544
  %25 = load i32, i32* %ret, align 4, !dbg !4545
  %cmp = icmp slt i32 %25, 0, !dbg !4547
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !4548

if.then4:                                         ; preds = %if.end
  %26 = load i32, i32* %ret, align 4, !dbg !4549
  store i32 %26, i32* %retval, align 4, !dbg !4550
  br label %return, !dbg !4550

if.end5:                                          ; preds = %if.end
  %27 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4551
  %propbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %27, i32 0, i32 4, !dbg !4552
  %arraydecay6 = getelementptr inbounds [1 x i64], [1 x i64]* %propbit, i64 0, i64 0, !dbg !4551
  call void @__set_bit(i64 3, i64* %arraydecay6) #8, !dbg !4553
  %28 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4554
  %29 = load %struct.cytp_data*, %struct.cytp_data** %cytp.addr, align 8, !dbg !4555
  %tp_res_x7 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %29, i32 0, i32 9, !dbg !4556
  %30 = load i32, i32* %tp_res_x7, align 4, !dbg !4556
  call void @input_abs_set_res(%struct.input_dev* %28, i32 0, i32 %30) #8, !dbg !4557
  %31 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4558
  %32 = load %struct.cytp_data*, %struct.cytp_data** %cytp.addr, align 8, !dbg !4559
  %tp_res_y8 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %32, i32 0, i32 10, !dbg !4560
  %33 = load i32, i32* %tp_res_y8, align 4, !dbg !4560
  call void @input_abs_set_res(%struct.input_dev* %31, i32 1, i32 %33) #8, !dbg !4561
  %34 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4562
  %35 = load %struct.cytp_data*, %struct.cytp_data** %cytp.addr, align 8, !dbg !4563
  %tp_res_x9 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %35, i32 0, i32 9, !dbg !4564
  %36 = load i32, i32* %tp_res_x9, align 4, !dbg !4564
  call void @input_abs_set_res(%struct.input_dev* %34, i32 53, i32 %36) #8, !dbg !4565
  %37 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4566
  %38 = load %struct.cytp_data*, %struct.cytp_data** %cytp.addr, align 8, !dbg !4567
  %tp_res_y10 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %38, i32 0, i32 10, !dbg !4568
  %39 = load i32, i32* %tp_res_y10, align 4, !dbg !4568
  call void @input_abs_set_res(%struct.input_dev* %37, i32 54, i32 %39) #8, !dbg !4569
  %40 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4570
  %keybit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %40, i32 0, i32 6, !dbg !4571
  %arraydecay11 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit, i64 0, i64 0, !dbg !4570
  call void @__set_bit(i64 330, i64* %arraydecay11) #8, !dbg !4572
  %41 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4573
  %keybit12 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 6, !dbg !4574
  %arraydecay13 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit12, i64 0, i64 0, !dbg !4573
  call void @__set_bit(i64 325, i64* %arraydecay13) #8, !dbg !4575
  %42 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4576
  %keybit14 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %42, i32 0, i32 6, !dbg !4577
  %arraydecay15 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit14, i64 0, i64 0, !dbg !4576
  call void @__set_bit(i64 333, i64* %arraydecay15) #8, !dbg !4578
  %43 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4579
  %keybit16 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %43, i32 0, i32 6, !dbg !4580
  %arraydecay17 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit16, i64 0, i64 0, !dbg !4579
  call void @__set_bit(i64 334, i64* %arraydecay17) #8, !dbg !4581
  %44 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4582
  %keybit18 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %44, i32 0, i32 6, !dbg !4583
  %arraydecay19 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit18, i64 0, i64 0, !dbg !4582
  call void @__set_bit(i64 335, i64* %arraydecay19) #8, !dbg !4584
  %45 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4585
  %keybit20 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %45, i32 0, i32 6, !dbg !4586
  %arraydecay21 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit20, i64 0, i64 0, !dbg !4585
  call void @__set_bit(i64 328, i64* %arraydecay21) #8, !dbg !4587
  %46 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4588
  %evbit22 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 5, !dbg !4589
  %arraydecay23 = getelementptr inbounds [1 x i64], [1 x i64]* %evbit22, i64 0, i64 0, !dbg !4588
  call void @__clear_bit(i64 2, i64* %arraydecay23) #8, !dbg !4590
  %47 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4591
  %relbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %47, i32 0, i32 7, !dbg !4592
  %arraydecay24 = getelementptr inbounds [1 x i64], [1 x i64]* %relbit, i64 0, i64 0, !dbg !4591
  call void @__clear_bit(i64 0, i64* %arraydecay24) #8, !dbg !4593
  %48 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4594
  %relbit25 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %48, i32 0, i32 7, !dbg !4595
  %arraydecay26 = getelementptr inbounds [1 x i64], [1 x i64]* %relbit25, i64 0, i64 0, !dbg !4594
  call void @__clear_bit(i64 1, i64* %arraydecay26) #8, !dbg !4596
  %49 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4597
  %evbit27 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %49, i32 0, i32 5, !dbg !4598
  %arraydecay28 = getelementptr inbounds [1 x i64], [1 x i64]* %evbit27, i64 0, i64 0, !dbg !4597
  call void @__set_bit(i64 1, i64* %arraydecay28) #8, !dbg !4599
  %50 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4600
  %keybit29 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %50, i32 0, i32 6, !dbg !4601
  %arraydecay30 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit29, i64 0, i64 0, !dbg !4600
  call void @__set_bit(i64 272, i64* %arraydecay30) #8, !dbg !4602
  %51 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4603
  %keybit31 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %51, i32 0, i32 6, !dbg !4604
  %arraydecay32 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit31, i64 0, i64 0, !dbg !4603
  call void @__set_bit(i64 273, i64* %arraydecay32) #8, !dbg !4605
  %52 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4606
  %keybit33 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %52, i32 0, i32 6, !dbg !4607
  %arraydecay34 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit33, i64 0, i64 0, !dbg !4606
  call void @__set_bit(i64 274, i64* %arraydecay34) #8, !dbg !4608
  store i32 0, i32* %retval, align 4, !dbg !4609
  br label %return, !dbg !4609

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %53 = load i32, i32* %retval, align 4, !dbg !4610
  ret i32 %53, !dbg !4610
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cypress_protocol_handler(%struct.psmouse* %psmouse) #0 !dbg !4611 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %cytp = alloca %struct.cytp_data*, align 8
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4612, metadata !DIExpression()), !dbg !4613
  call void @llvm.dbg.declare(metadata %struct.cytp_data** %cytp, metadata !4614, metadata !DIExpression()), !dbg !4615
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4616
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 0, !dbg !4617
  %1 = load i8*, i8** %private, align 8, !dbg !4617
  %2 = bitcast i8* %1 to %struct.cytp_data*, !dbg !4616
  store %struct.cytp_data* %2, %struct.cytp_data** %cytp, align 8, !dbg !4615
  %3 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4618
  %pktcnt = getelementptr inbounds %struct.psmouse, %struct.psmouse* %3, i32 0, i32 9, !dbg !4620
  %4 = load i8, i8* %pktcnt, align 1, !dbg !4620
  %conv = zext i8 %4 to i32, !dbg !4618
  %5 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !4621
  %pkt_size = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %5, i32 0, i32 1, !dbg !4622
  %6 = load i32, i32* %pkt_size, align 4, !dbg !4622
  %cmp = icmp sge i32 %conv, %6, !dbg !4623
  br i1 %cmp, label %if.then, label %if.end, !dbg !4624

if.then:                                          ; preds = %entry
  %7 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4625
  call void @cypress_process_packet(%struct.psmouse* %7, i1 zeroext false) #8, !dbg !4627
  store i32 2, i32* %retval, align 4, !dbg !4628
  br label %return, !dbg !4628

if.end:                                           ; preds = %entry
  %8 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4629
  %call = call i32 @cypress_validate_byte(%struct.psmouse* %8) #8, !dbg !4630
  store i32 %call, i32* %retval, align 4, !dbg !4631
  br label %return, !dbg !4631

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !4632
  ret i32 %9, !dbg !4632
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cypress_set_rate(%struct.psmouse* %psmouse, i32 %rate) #0 !dbg !4633 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %rate.addr = alloca i32, align 4
  %cytp = alloca %struct.cytp_data*, align 8
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4634, metadata !DIExpression()), !dbg !4635
  store i32 %rate, i32* %rate.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %rate.addr, metadata !4636, metadata !DIExpression()), !dbg !4637
  call void @llvm.dbg.declare(metadata %struct.cytp_data** %cytp, metadata !4638, metadata !DIExpression()), !dbg !4639
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4640
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 0, !dbg !4641
  %1 = load i8*, i8** %private, align 8, !dbg !4641
  %2 = bitcast i8* %1 to %struct.cytp_data*, !dbg !4640
  store %struct.cytp_data* %2, %struct.cytp_data** %cytp, align 8, !dbg !4639
  %3 = load i32, i32* %rate.addr, align 4, !dbg !4642
  %cmp = icmp uge i32 %3, 80, !dbg !4644
  br i1 %cmp, label %if.then, label %if.else, !dbg !4645

if.then:                                          ; preds = %entry
  %4 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4646
  %rate1 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %4, i32 0, i32 21, !dbg !4648
  store i32 80, i32* %rate1, align 4, !dbg !4649
  %5 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !4650
  %mode = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %5, i32 0, i32 2, !dbg !4651
  %6 = load i32, i32* %mode, align 4, !dbg !4652
  %or = or i32 %6, 16, !dbg !4652
  store i32 %or, i32* %mode, align 4, !dbg !4652
  br label %if.end, !dbg !4653

if.else:                                          ; preds = %entry
  %7 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4654
  %rate2 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %7, i32 0, i32 21, !dbg !4656
  store i32 40, i32* %rate2, align 4, !dbg !4657
  %8 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !4658
  %mode3 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %8, i32 0, i32 2, !dbg !4659
  %9 = load i32, i32* %mode3, align 4, !dbg !4660
  %and = and i32 %9, -17, !dbg !4660
  store i32 %and, i32* %mode3, align 4, !dbg !4660
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4661
  %ps2dev = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 2, !dbg !4662
  %11 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4663
  %rate4 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 21, !dbg !4664
  %12 = bitcast i32* %rate4 to i8*, !dbg !4665
  %call = call i32 @ps2_command(%struct.ps2dev* %ps2dev, i8* %12, i32 4339) #8, !dbg !4666
  ret void, !dbg !4667
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cypress_disconnect(%struct.psmouse* %psmouse) #0 !dbg !4668 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4669, metadata !DIExpression()), !dbg !4670
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4671
  call void @cypress_reset(%struct.psmouse* %0) #8, !dbg !4672
  %1 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4673
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %1, i32 0, i32 0, !dbg !4674
  %2 = load i8*, i8** %private, align 8, !dbg !4674
  call void @kfree(i8* %2) #8, !dbg !4675
  %3 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4676
  %private1 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %3, i32 0, i32 0, !dbg !4677
  store i8* null, i8** %private1, align 8, !dbg !4678
  ret void, !dbg !4679
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cypress_reconnect(%struct.psmouse* %psmouse) #0 !dbg !4680 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %tries = alloca i32, align 4
  %rc = alloca i32, align 4
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4681, metadata !DIExpression()), !dbg !4682
  call void @llvm.dbg.declare(metadata i32* %tries, metadata !4683, metadata !DIExpression()), !dbg !4684
  store i32 3, i32* %tries, align 4, !dbg !4684
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4685, metadata !DIExpression()), !dbg !4686
  br label %do.body, !dbg !4687

do.body:                                          ; preds = %land.end, %entry
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4688
  call void @cypress_reset(%struct.psmouse* %0) #8, !dbg !4690
  %1 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4691
  %call = call i32 @cypress_detect(%struct.psmouse* %1, i1 zeroext false) #8, !dbg !4692
  store i32 %call, i32* %rc, align 4, !dbg !4693
  br label %do.cond, !dbg !4694

do.cond:                                          ; preds = %do.body
  %2 = load i32, i32* %rc, align 4, !dbg !4695
  %tobool = icmp ne i32 %2, 0, !dbg !4695
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !4696

land.rhs:                                         ; preds = %do.cond
  %3 = load i32, i32* %tries, align 4, !dbg !4697
  %dec = add i32 %3, -1, !dbg !4697
  store i32 %dec, i32* %tries, align 4, !dbg !4697
  %cmp = icmp sgt i32 %dec, 0, !dbg !4698
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %4 = phi i1 [ false, %do.cond ], [ %cmp, %land.rhs ], !dbg !4699
  br i1 %4, label %do.body, label %do.end, !dbg !4694, !llvm.loop !4700

do.end:                                           ; preds = %land.end
  %5 = load i32, i32* %rc, align 4, !dbg !4702
  %tobool1 = icmp ne i32 %5, 0, !dbg !4702
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4704

if.then:                                          ; preds = %do.end
  %6 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4705
  %ps2dev = getelementptr inbounds %struct.psmouse, %struct.psmouse* %6, i32 0, i32 2, !dbg !4705
  %serio = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %ps2dev, i32 0, i32 0, !dbg !4705
  %7 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4705
  %dev = getelementptr inbounds %struct.serio, %struct.serio* %7, i32 0, i32 18, !dbg !4705
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !4705
  store i32 -1, i32* %retval, align 4, !dbg !4707
  br label %return, !dbg !4707

if.end:                                           ; preds = %do.end
  %8 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4708
  %call2 = call i32 @cypress_set_absolute_mode(%struct.psmouse* %8) #8, !dbg !4710
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4710
  br i1 %tobool3, label %if.then4, label %if.end8, !dbg !4711

if.then4:                                         ; preds = %if.end
  %9 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4712
  %ps2dev5 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 2, !dbg !4712
  %serio6 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %ps2dev5, i32 0, i32 0, !dbg !4712
  %10 = load %struct.serio*, %struct.serio** %serio6, align 8, !dbg !4712
  %dev7 = getelementptr inbounds %struct.serio, %struct.serio* %10, i32 0, i32 18, !dbg !4712
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev7, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !4712
  store i32 -1, i32* %retval, align 4, !dbg !4714
  br label %return, !dbg !4714

if.end8:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4715
  br label %return, !dbg !4715

return:                                           ; preds = %if.end8, %if.then4, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !4716
  ret i32 %11, !dbg !4716
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cypress_ps2_ext_cmd(%struct.psmouse* %psmouse, i16 zeroext %cmd, i8 zeroext %data) #0 !dbg !4717 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %cmd.addr = alloca i16, align 2
  %data.addr = alloca i8, align 1
  %ps2dev = alloca %struct.ps2dev*, align 8
  %tries = alloca i32, align 4
  %rc = alloca i32, align 4
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4720, metadata !DIExpression()), !dbg !4721
  store i16 %cmd, i16* %cmd.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %cmd.addr, metadata !4722, metadata !DIExpression()), !dbg !4723
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !4724, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev, metadata !4726, metadata !DIExpression()), !dbg !4728
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4729
  %ps2dev1 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 2, !dbg !4730
  store %struct.ps2dev* %ps2dev1, %struct.ps2dev** %ps2dev, align 8, !dbg !4728
  call void @llvm.dbg.declare(metadata i32* %tries, metadata !4731, metadata !DIExpression()), !dbg !4732
  store i32 3, i32* %tries, align 4, !dbg !4732
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4733, metadata !DIExpression()), !dbg !4734
  %1 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev, align 8, !dbg !4735
  call void @ps2_begin_command(%struct.ps2dev* %1) #8, !dbg !4736
  br label %do.body, !dbg !4737

do.body:                                          ; preds = %do.cond, %entry
  %2 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4738
  %3 = load i16, i16* %cmd.addr, align 2, !dbg !4740
  %conv = zext i16 %3 to i32, !dbg !4740
  %and = and i32 %conv, 255, !dbg !4741
  %call = call i32 @cypress_ps2_sendbyte(%struct.psmouse* %2, i32 %and) #8, !dbg !4742
  store i32 %call, i32* %rc, align 4, !dbg !4743
  %4 = load i32, i32* %rc, align 4, !dbg !4744
  %cmp = icmp eq i32 %4, 254, !dbg !4746
  br i1 %cmp, label %if.then, label %if.end8, !dbg !4747

if.then:                                          ; preds = %do.body
  %5 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4748
  %call3 = call i32 @cypress_ps2_sendbyte(%struct.psmouse* %5, i32 0) #8, !dbg !4750
  store i32 %call3, i32* %rc, align 4, !dbg !4751
  %6 = load i32, i32* %rc, align 4, !dbg !4752
  %cmp4 = icmp eq i32 %6, 254, !dbg !4754
  br i1 %cmp4, label %if.then6, label %if.end, !dbg !4755

if.then6:                                         ; preds = %if.then
  %7 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4756
  %call7 = call i32 @cypress_ps2_sendbyte(%struct.psmouse* %7, i32 10) #8, !dbg !4757
  store i32 %call7, i32* %rc, align 4, !dbg !4758
  br label %if.end, !dbg !4759

if.end:                                           ; preds = %if.then6, %if.then
  br label %if.end8, !dbg !4760

if.end8:                                          ; preds = %if.end, %do.body
  %8 = load i32, i32* %rc, align 4, !dbg !4761
  %cmp9 = icmp eq i32 %8, 252, !dbg !4763
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !4764

if.then11:                                        ; preds = %if.end8
  br label %do.cond, !dbg !4765

if.end12:                                         ; preds = %if.end8
  %9 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4766
  %10 = load i8, i8* %data.addr, align 1, !dbg !4767
  %conv13 = zext i8 %10 to i32, !dbg !4767
  %call14 = call i32 @cypress_ps2_sendbyte(%struct.psmouse* %9, i32 %conv13) #8, !dbg !4768
  store i32 %call14, i32* %rc, align 4, !dbg !4769
  %11 = load i32, i32* %rc, align 4, !dbg !4770
  %cmp15 = icmp eq i32 %11, 254, !dbg !4772
  br i1 %cmp15, label %if.then17, label %if.end20, !dbg !4773

if.then17:                                        ; preds = %if.end12
  %12 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4774
  %13 = load i8, i8* %data.addr, align 1, !dbg !4775
  %conv18 = zext i8 %13 to i32, !dbg !4775
  %call19 = call i32 @cypress_ps2_sendbyte(%struct.psmouse* %12, i32 %conv18) #8, !dbg !4776
  store i32 %call19, i32* %rc, align 4, !dbg !4777
  br label %if.end20, !dbg !4778

if.end20:                                         ; preds = %if.then17, %if.end12
  %14 = load i32, i32* %rc, align 4, !dbg !4779
  %cmp21 = icmp eq i32 %14, 252, !dbg !4781
  br i1 %cmp21, label %if.then23, label %if.else, !dbg !4782

if.then23:                                        ; preds = %if.end20
  br label %do.cond, !dbg !4783

if.else:                                          ; preds = %if.end20
  br label %do.end, !dbg !4784

do.cond:                                          ; preds = %if.then23, %if.then11
  %15 = load i32, i32* %tries, align 4, !dbg !4785
  %dec = add i32 %15, -1, !dbg !4785
  store i32 %dec, i32* %tries, align 4, !dbg !4785
  %cmp24 = icmp sgt i32 %dec, 0, !dbg !4786
  br i1 %cmp24, label %do.body, label %do.end, !dbg !4787, !llvm.loop !4788

do.end:                                           ; preds = %do.cond, %if.else
  %16 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev, align 8, !dbg !4790
  call void @ps2_end_command(%struct.ps2dev* %16) #8, !dbg !4791
  %17 = load i32, i32* %rc, align 4, !dbg !4792
  ret i32 %17, !dbg !4793
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cypress_ps2_read_cmd_status(%struct.psmouse* %psmouse, i8 zeroext %cmd, i8* %param) #0 !dbg !4794 {
entry:
  %retval.i57 = alloca i64, align 8
  %m.addr.i58 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i58, metadata !4795, metadata !DIExpression()), !dbg !4800
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !4795, metadata !DIExpression()), !dbg !4805
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %cmd.addr = alloca i8, align 1
  %param.addr = alloca i8*, align 8
  %rc = alloca i32, align 4
  %ps2dev = alloca %struct.ps2dev*, align 8
  %old_state = alloca i32, align 4
  %pktsize = alloca i32, align 4
  %__ret = alloca i64, align 8
  %__cond = alloca i8, align 1
  %tmp = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret23 = alloca i64, align 8
  %__int = alloca i64, align 8
  %__cond26 = alloca i8, align 1
  %tmp38 = alloca i32, align 4
  %tmp51 = alloca i64, align 8
  %tmp53 = alloca i64, align 8
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4807, metadata !DIExpression()), !dbg !4808
  store i8 %cmd, i8* %cmd.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %cmd.addr, metadata !4809, metadata !DIExpression()), !dbg !4810
  store i8* %param, i8** %param.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %param.addr, metadata !4811, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4813, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev, metadata !4815, metadata !DIExpression()), !dbg !4816
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4817
  %ps2dev1 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 2, !dbg !4818
  store %struct.ps2dev* %ps2dev1, %struct.ps2dev** %ps2dev, align 8, !dbg !4816
  call void @llvm.dbg.declare(metadata i32* %old_state, metadata !4819, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.declare(metadata i32* %pktsize, metadata !4821, metadata !DIExpression()), !dbg !4822
  %1 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev, align 8, !dbg !4823
  call void @ps2_begin_command(%struct.ps2dev* %1) #8, !dbg !4824
  %2 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4825
  %state = getelementptr inbounds %struct.psmouse, %struct.psmouse* %2, i32 0, i32 18, !dbg !4826
  %3 = load i32, i32* %state, align 8, !dbg !4826
  store i32 %3, i32* %old_state, align 4, !dbg !4827
  %4 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4828
  %state2 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %4, i32 0, i32 18, !dbg !4829
  store i32 3, i32* %state2, align 8, !dbg !4830
  %5 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4831
  %pktcnt = getelementptr inbounds %struct.psmouse, %struct.psmouse* %5, i32 0, i32 9, !dbg !4832
  store i8 0, i8* %pktcnt, align 1, !dbg !4833
  %6 = load i8, i8* %cmd.addr, align 1, !dbg !4834
  %conv = zext i8 %6 to i32, !dbg !4834
  %cmp = icmp eq i32 %conv, 1, !dbg !4835
  %7 = zext i1 %cmp to i64, !dbg !4836
  %cond = select i1 %cmp, i32 8, i32 3, !dbg !4836
  store i32 %cond, i32* %pktsize, align 4, !dbg !4837
  %8 = load i8*, i8** %param.addr, align 8, !dbg !4838
  %9 = load i32, i32* %pktsize, align 4, !dbg !4839
  %conv4 = sext i32 %9 to i64, !dbg !4839
  call void @llvm.memset.p0i8.i64(i8* align 1 %8, i8 0, i64 %conv4, i1 false), !dbg !4840
  %10 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4841
  %call = call i32 @cypress_ps2_sendbyte(%struct.psmouse* %10, i32 233) #8, !dbg !4842
  store i32 %call, i32* %rc, align 4, !dbg !4843
  %11 = load i32, i32* %rc, align 4, !dbg !4844
  %cmp5 = icmp slt i32 %11, 0, !dbg !4846
  br i1 %cmp5, label %if.then, label %if.end, !dbg !4847

if.then:                                          ; preds = %entry
  br label %out, !dbg !4848

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !4849, metadata !DIExpression()), !dbg !4850
  store i32 200, i32* %m.addr.i, align 4
  %12 = load i32, i32* %m.addr.i, align 4, !dbg !4851
  %13 = call i1 @llvm.is.constant.i32(i32 %12) #10, !dbg !4853
  br i1 %13, label %if.then.i, label %if.else.i, !dbg !4854

if.then.i:                                        ; preds = %if.end
  %14 = load i32, i32* %m.addr.i, align 4, !dbg !4855
  %cmp.i = icmp slt i32 %14, 0, !dbg !4858
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4859

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !4860
  br label %msecs_to_jiffies.exit, !dbg !4860

if.end.i:                                         ; preds = %if.then.i
  %15 = load i32, i32* %m.addr.i, align 4, !dbg !4861
  %call.i = call i64 @_msecs_to_jiffies(i32 %15) #12, !dbg !4862
  store i64 %call.i, i64* %retval.i, align 8, !dbg !4863
  br label %msecs_to_jiffies.exit, !dbg !4863

if.else.i:                                        ; preds = %if.end
  %16 = load i32, i32* %m.addr.i, align 4, !dbg !4864
  %call2.i = call i64 @__msecs_to_jiffies(i32 %16) #12, !dbg !4866
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !4867
  br label %msecs_to_jiffies.exit, !dbg !4867

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %17 = load i64, i64* %retval.i, align 8, !dbg !4868
  store i64 %17, i64* %__ret, align 8, !dbg !4850
  br label %do.body, !dbg !4850

do.body:                                          ; preds = %msecs_to_jiffies.exit
  br label %do.body8, !dbg !4869

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !4871

do.end:                                           ; preds = %do.body8
  br label %do.end9, !dbg !4869

do.end9:                                          ; preds = %do.end
  call void @llvm.dbg.declare(metadata i8* %__cond, metadata !4873, metadata !DIExpression()), !dbg !4875
  %18 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4875
  %pktcnt10 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %18, i32 0, i32 9, !dbg !4875
  %19 = load i8, i8* %pktcnt10, align 1, !dbg !4875
  %conv11 = zext i8 %19 to i32, !dbg !4875
  %20 = load i32, i32* %pktsize, align 4, !dbg !4875
  %cmp12 = icmp sge i32 %conv11, %20, !dbg !4875
  %frombool = zext i1 %cmp12 to i8, !dbg !4875
  store i8 %frombool, i8* %__cond, align 1, !dbg !4875
  %21 = load i8, i8* %__cond, align 1, !dbg !4876
  %tobool = trunc i8 %21 to i1, !dbg !4876
  br i1 %tobool, label %land.lhs.true, label %if.end17, !dbg !4876

land.lhs.true:                                    ; preds = %do.end9
  %22 = load i64, i64* %__ret, align 8, !dbg !4876
  %tobool15 = icmp ne i64 %22, 0, !dbg !4876
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !4875

if.then16:                                        ; preds = %land.lhs.true
  store i64 1, i64* %__ret, align 8, !dbg !4876
  br label %if.end17, !dbg !4876

if.end17:                                         ; preds = %if.then16, %land.lhs.true, %do.end9
  %23 = load i8, i8* %__cond, align 1, !dbg !4875
  %tobool18 = trunc i8 %23 to i1, !dbg !4875
  br i1 %tobool18, label %lor.end, label %lor.rhs, !dbg !4875

lor.rhs:                                          ; preds = %if.end17
  %24 = load i64, i64* %__ret, align 8, !dbg !4875
  %tobool20 = icmp ne i64 %24, 0, !dbg !4875
  %lnot = xor i1 %tobool20, true, !dbg !4875
  br label %lor.end, !dbg !4875

lor.end:                                          ; preds = %lor.rhs, %if.end17
  %25 = phi i1 [ true, %if.end17 ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %25 to i32, !dbg !4875
  store i32 %lor.ext, i32* %tmp, align 4, !dbg !4876
  %26 = load i32, i32* %tmp, align 4, !dbg !4875
  %tobool21 = icmp ne i32 %26, 0, !dbg !4878
  br i1 %tobool21, label %if.end52, label %if.then22, !dbg !4850

if.then22:                                        ; preds = %lor.end
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !4879, metadata !DIExpression()), !dbg !4891
  call void @llvm.dbg.declare(metadata i64* %__ret23, metadata !4892, metadata !DIExpression()), !dbg !4891
  store i32 200, i32* %m.addr.i58, align 4
  %27 = load i32, i32* %m.addr.i58, align 4, !dbg !4893
  %28 = call i1 @llvm.is.constant.i32(i32 %27) #10, !dbg !4894
  br i1 %28, label %if.then.i60, label %if.else.i65, !dbg !4895

if.then.i60:                                      ; preds = %if.then22
  %29 = load i32, i32* %m.addr.i58, align 4, !dbg !4896
  %cmp.i59 = icmp slt i32 %29, 0, !dbg !4897
  br i1 %cmp.i59, label %if.then1.i61, label %if.end.i63, !dbg !4898

if.then1.i61:                                     ; preds = %if.then.i60
  store i64 4611686018427387902, i64* %retval.i57, align 8, !dbg !4899
  br label %msecs_to_jiffies.exit66, !dbg !4899

if.end.i63:                                       ; preds = %if.then.i60
  %30 = load i32, i32* %m.addr.i58, align 4, !dbg !4900
  %call.i62 = call i64 @_msecs_to_jiffies(i32 %30) #12, !dbg !4901
  store i64 %call.i62, i64* %retval.i57, align 8, !dbg !4902
  br label %msecs_to_jiffies.exit66, !dbg !4902

if.else.i65:                                      ; preds = %if.then22
  %31 = load i32, i32* %m.addr.i58, align 4, !dbg !4903
  %call2.i64 = call i64 @__msecs_to_jiffies(i32 %31) #12, !dbg !4904
  store i64 %call2.i64, i64* %retval.i57, align 8, !dbg !4905
  br label %msecs_to_jiffies.exit66, !dbg !4905

msecs_to_jiffies.exit66:                          ; preds = %if.then1.i61, %if.end.i63, %if.else.i65
  %32 = load i64, i64* %retval.i57, align 8, !dbg !4906
  store i64 %32, i64* %__ret23, align 8, !dbg !4891
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #8, !dbg !4891
  br label %for.cond, !dbg !4891

for.cond:                                         ; preds = %if.end48, %msecs_to_jiffies.exit66
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !4907, metadata !DIExpression()), !dbg !4911
  %33 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev, align 8, !dbg !4911
  %wait = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %33, i32 0, i32 2, !dbg !4911
  %call25 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* %wait, %struct.wait_queue_entry* %__wq_entry, i32 2) #8, !dbg !4911
  store i64 %call25, i64* %__int, align 8, !dbg !4911
  call void @llvm.dbg.declare(metadata i8* %__cond26, metadata !4912, metadata !DIExpression()), !dbg !4915
  %34 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4915
  %pktcnt27 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %34, i32 0, i32 9, !dbg !4915
  %35 = load i8, i8* %pktcnt27, align 1, !dbg !4915
  %conv28 = zext i8 %35 to i32, !dbg !4915
  %36 = load i32, i32* %pktsize, align 4, !dbg !4915
  %cmp29 = icmp sge i32 %conv28, %36, !dbg !4915
  %frombool31 = zext i1 %cmp29 to i8, !dbg !4915
  store i8 %frombool31, i8* %__cond26, align 1, !dbg !4915
  %37 = load i8, i8* %__cond26, align 1, !dbg !4916
  %tobool32 = trunc i8 %37 to i1, !dbg !4916
  br i1 %tobool32, label %land.lhs.true34, label %if.end37, !dbg !4916

land.lhs.true34:                                  ; preds = %for.cond
  %38 = load i64, i64* %__ret23, align 8, !dbg !4916
  %tobool35 = icmp ne i64 %38, 0, !dbg !4916
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !4915

if.then36:                                        ; preds = %land.lhs.true34
  store i64 1, i64* %__ret23, align 8, !dbg !4916
  br label %if.end37, !dbg !4916

if.end37:                                         ; preds = %if.then36, %land.lhs.true34, %for.cond
  %39 = load i8, i8* %__cond26, align 1, !dbg !4915
  %tobool39 = trunc i8 %39 to i1, !dbg !4915
  br i1 %tobool39, label %lor.end44, label %lor.rhs41, !dbg !4915

lor.rhs41:                                        ; preds = %if.end37
  %40 = load i64, i64* %__ret23, align 8, !dbg !4915
  %tobool42 = icmp ne i64 %40, 0, !dbg !4915
  %lnot43 = xor i1 %tobool42, true, !dbg !4915
  br label %lor.end44, !dbg !4915

lor.end44:                                        ; preds = %lor.rhs41, %if.end37
  %41 = phi i1 [ true, %if.end37 ], [ %lnot43, %lor.rhs41 ]
  %lor.ext45 = zext i1 %41 to i32, !dbg !4915
  store i32 %lor.ext45, i32* %tmp38, align 4, !dbg !4916
  %42 = load i32, i32* %tmp38, align 4, !dbg !4915
  %tobool46 = icmp ne i32 %42, 0, !dbg !4918
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !4911

if.then47:                                        ; preds = %lor.end44
  br label %for.end, !dbg !4918

if.end48:                                         ; preds = %lor.end44
  %43 = load i64, i64* %__ret23, align 8, !dbg !4911
  %call49 = call i64 @schedule_timeout(i64 %43) #8, !dbg !4911
  store i64 %call49, i64* %__ret23, align 8, !dbg !4911
  br label %for.cond, !dbg !4919, !llvm.loop !4920

for.end:                                          ; preds = %if.then47
  %44 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev, align 8, !dbg !4891
  %wait50 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %44, i32 0, i32 2, !dbg !4891
  call void @finish_wait(%struct.wait_queue_head* %wait50, %struct.wait_queue_entry* %__wq_entry) #8, !dbg !4891
  br label %__out, !dbg !4891

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !4922), !dbg !4891
  %45 = load i64, i64* %__ret23, align 8, !dbg !4891
  store i64 %45, i64* %tmp51, align 8, !dbg !4891
  %46 = load i64, i64* %tmp51, align 8, !dbg !4891
  store i64 %46, i64* %__ret, align 8, !dbg !4878
  br label %if.end52, !dbg !4878

if.end52:                                         ; preds = %__out, %lor.end
  %47 = load i64, i64* %__ret, align 8, !dbg !4850
  store i64 %47, i64* %tmp53, align 8, !dbg !4878
  %48 = load i64, i64* %tmp53, align 8, !dbg !4850
  %49 = load i8*, i8** %param.addr, align 8, !dbg !4923
  %50 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4924
  %packet = getelementptr inbounds %struct.psmouse, %struct.psmouse* %50, i32 0, i32 7, !dbg !4925
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %packet, i64 0, i64 0, !dbg !4926
  %51 = load i32, i32* %pktsize, align 4, !dbg !4927
  %conv54 = sext i32 %51 to i64, !dbg !4927
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %49, i8* align 8 %arraydecay, i64 %conv54, i1 false), !dbg !4926
  br label %out, !dbg !4928

out:                                              ; preds = %if.end52, %if.then
  call void @llvm.dbg.label(metadata !4929), !dbg !4930
  %52 = load i32, i32* %old_state, align 4, !dbg !4931
  %53 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4932
  %state55 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %53, i32 0, i32 18, !dbg !4933
  store i32 %52, i32* %state55, align 8, !dbg !4934
  %54 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4935
  %pktcnt56 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %54, i32 0, i32 9, !dbg !4936
  store i8 0, i8* %pktcnt56, align 1, !dbg !4937
  %55 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev, align 8, !dbg !4938
  call void @ps2_end_command(%struct.ps2dev* %55) #8, !dbg !4939
  %56 = load i32, i32* %rc, align 4, !dbg !4940
  ret i32 %56, !dbg !4941
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @cypress_verify_cmd_state(%struct.psmouse* %psmouse, i8 zeroext %cmd, i8* %param) #0 !dbg !4942 {
entry:
  %retval = alloca i1, align 1
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %cmd.addr = alloca i8, align 1
  %param.addr = alloca i8*, align 8
  %rate_match = alloca i8, align 1
  %resolution_match = alloca i8, align 1
  %i = alloca i32, align 4
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4945, metadata !DIExpression()), !dbg !4946
  store i8 %cmd, i8* %cmd.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %cmd.addr, metadata !4947, metadata !DIExpression()), !dbg !4948
  store i8* %param, i8** %param.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %param.addr, metadata !4949, metadata !DIExpression()), !dbg !4950
  call void @llvm.dbg.declare(metadata i8* %rate_match, metadata !4951, metadata !DIExpression()), !dbg !4952
  store i8 0, i8* %rate_match, align 1, !dbg !4952
  call void @llvm.dbg.declare(metadata i8* %resolution_match, metadata !4953, metadata !DIExpression()), !dbg !4954
  store i8 0, i8* %resolution_match, align 1, !dbg !4954
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4955, metadata !DIExpression()), !dbg !4956
  %0 = load i8, i8* %cmd.addr, align 1, !dbg !4957
  %conv = zext i8 %0 to i32, !dbg !4957
  %cmp = icmp eq i32 %conv, 0, !dbg !4959
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4960

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* %cmd.addr, align 1, !dbg !4961
  %conv2 = zext i8 %1 to i32, !dbg !4961
  %cmp3 = icmp eq i32 %conv2, 32, !dbg !4962
  br i1 %cmp3, label %if.then, label %lor.lhs.false5, !dbg !4963

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %2 = load i8, i8* %cmd.addr, align 1, !dbg !4964
  %conv6 = zext i8 %2 to i32, !dbg !4964
  %cmp7 = icmp eq i32 %conv6, 1, !dbg !4965
  br i1 %cmp7, label %if.then, label %if.end, !dbg !4966

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false, %entry
  store i1 true, i1* %retval, align 1, !dbg !4967
  br label %return, !dbg !4967

if.end:                                           ; preds = %lor.lhs.false5
  %3 = load i8*, i8** %param.addr, align 8, !dbg !4968
  %arrayidx = getelementptr i8, i8* %3, i64 0, !dbg !4968
  %4 = load i8, i8* %arrayidx, align 1, !dbg !4968
  %conv9 = zext i8 %4 to i32, !dbg !4968
  %neg = xor i32 %conv9, -1, !dbg !4970
  %and = and i32 %neg, 136, !dbg !4971
  %cmp10 = icmp eq i32 %and, 136, !dbg !4972
  br i1 %cmp10, label %land.lhs.true, label %if.end52, !dbg !4973

land.lhs.true:                                    ; preds = %if.end
  %5 = load i8*, i8** %param.addr, align 8, !dbg !4974
  %arrayidx12 = getelementptr i8, i8* %5, i64 0, !dbg !4974
  %6 = load i8, i8* %arrayidx12, align 1, !dbg !4974
  %conv13 = zext i8 %6 to i32, !dbg !4974
  %and14 = and i32 %conv13, 64, !dbg !4975
  %cmp15 = icmp eq i32 %and14, 0, !dbg !4976
  br i1 %cmp15, label %if.then17, label %if.end52, !dbg !4977

if.then17:                                        ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4, !dbg !4978
  br label %for.cond, !dbg !4981

for.cond:                                         ; preds = %for.inc, %if.then17
  %7 = load i32, i32* %i, align 4, !dbg !4982
  %conv18 = sext i32 %7 to i64, !dbg !4982
  %cmp19 = icmp ult i64 %conv18, 4, !dbg !4984
  br i1 %cmp19, label %for.body, label %for.end, !dbg !4985

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !4986
  %idxprom = sext i32 %8 to i64, !dbg !4988
  %arrayidx21 = getelementptr [4 x i8], [4 x i8]* @cytp_resolution, i64 0, i64 %idxprom, !dbg !4988
  %9 = load i8, i8* %arrayidx21, align 1, !dbg !4988
  %conv22 = zext i8 %9 to i32, !dbg !4988
  %10 = load i8*, i8** %param.addr, align 8, !dbg !4989
  %arrayidx23 = getelementptr i8, i8* %10, i64 1, !dbg !4989
  %11 = load i8, i8* %arrayidx23, align 1, !dbg !4989
  %conv24 = zext i8 %11 to i32, !dbg !4989
  %cmp25 = icmp eq i32 %conv22, %conv24, !dbg !4990
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !4991

if.then27:                                        ; preds = %for.body
  store i8 1, i8* %resolution_match, align 1, !dbg !4992
  br label %if.end28, !dbg !4993

if.end28:                                         ; preds = %if.then27, %for.body
  br label %for.inc, !dbg !4994

for.inc:                                          ; preds = %if.end28
  %12 = load i32, i32* %i, align 4, !dbg !4995
  %inc = add i32 %12, 1, !dbg !4995
  store i32 %inc, i32* %i, align 4, !dbg !4995
  br label %for.cond, !dbg !4996, !llvm.loop !4997

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !4999
  br label %for.cond29, !dbg !5001

for.cond29:                                       ; preds = %for.inc43, %for.end
  %13 = load i32, i32* %i, align 4, !dbg !5002
  %conv30 = sext i32 %13 to i64, !dbg !5002
  %cmp31 = icmp ult i64 %conv30, 6, !dbg !5004
  br i1 %cmp31, label %for.body33, label %for.end45, !dbg !5005

for.body33:                                       ; preds = %for.cond29
  %14 = load i32, i32* %i, align 4, !dbg !5006
  %idxprom34 = sext i32 %14 to i64, !dbg !5008
  %arrayidx35 = getelementptr [6 x i8], [6 x i8]* @cytp_rate, i64 0, i64 %idxprom34, !dbg !5008
  %15 = load i8, i8* %arrayidx35, align 1, !dbg !5008
  %conv36 = zext i8 %15 to i32, !dbg !5008
  %16 = load i8*, i8** %param.addr, align 8, !dbg !5009
  %arrayidx37 = getelementptr i8, i8* %16, i64 2, !dbg !5009
  %17 = load i8, i8* %arrayidx37, align 1, !dbg !5009
  %conv38 = zext i8 %17 to i32, !dbg !5009
  %cmp39 = icmp eq i32 %conv36, %conv38, !dbg !5010
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !5011

if.then41:                                        ; preds = %for.body33
  store i8 1, i8* %rate_match, align 1, !dbg !5012
  br label %if.end42, !dbg !5013

if.end42:                                         ; preds = %if.then41, %for.body33
  br label %for.inc43, !dbg !5014

for.inc43:                                        ; preds = %if.end42
  %18 = load i32, i32* %i, align 4, !dbg !5015
  %inc44 = add i32 %18, 1, !dbg !5015
  store i32 %inc44, i32* %i, align 4, !dbg !5015
  br label %for.cond29, !dbg !5016, !llvm.loop !5017

for.end45:                                        ; preds = %for.cond29
  %19 = load i8, i8* %resolution_match, align 1, !dbg !5019
  %tobool = trunc i8 %19 to i1, !dbg !5019
  br i1 %tobool, label %land.lhs.true47, label %if.end51, !dbg !5021

land.lhs.true47:                                  ; preds = %for.end45
  %20 = load i8, i8* %rate_match, align 1, !dbg !5022
  %tobool48 = trunc i8 %20 to i1, !dbg !5022
  br i1 %tobool48, label %if.then50, label %if.end51, !dbg !5023

if.then50:                                        ; preds = %land.lhs.true47
  store i1 true, i1* %retval, align 1, !dbg !5024
  br label %return, !dbg !5024

if.end51:                                         ; preds = %land.lhs.true47, %for.end45
  br label %if.end52, !dbg !5025

if.end52:                                         ; preds = %if.end51, %land.lhs.true, %if.end
  store i1 false, i1* %retval, align 1, !dbg !5026
  br label %return, !dbg !5026

return:                                           ; preds = %if.end52, %if.then50, %if.then
  %21 = load i1, i1* %retval, align 1, !dbg !5027
  ret i1 %21, !dbg !5027
}

; Function Attrs: noredzone
declare dso_local void @ps2_begin_command(%struct.ps2dev*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cypress_ps2_sendbyte(%struct.psmouse* %psmouse, i32 %value) #0 !dbg !5028 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %value.addr = alloca i32, align 4
  %ps2dev = alloca %struct.ps2dev*, align 8
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !5031, metadata !DIExpression()), !dbg !5032
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5033, metadata !DIExpression()), !dbg !5034
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev, metadata !5035, metadata !DIExpression()), !dbg !5036
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !5037
  %ps2dev1 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 2, !dbg !5038
  store %struct.ps2dev* %ps2dev1, %struct.ps2dev** %ps2dev, align 8, !dbg !5036
  %1 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev, align 8, !dbg !5039
  %2 = load i32, i32* %value.addr, align 4, !dbg !5041
  %and = and i32 %2, 255, !dbg !5042
  %conv = trunc i32 %and to i8, !dbg !5041
  %call = call i32 @ps2_sendbyte(%struct.ps2dev* %1, i8 zeroext %conv, i32 200) #8, !dbg !5043
  %cmp = icmp slt i32 %call, 0, !dbg !5044
  br i1 %cmp, label %if.then, label %if.end, !dbg !5045

if.then:                                          ; preds = %entry
  %3 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev, align 8, !dbg !5046
  %nak = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %3, i32 0, i32 6, !dbg !5049
  %4 = load i8, i8* %nak, align 1, !dbg !5049
  %conv3 = zext i8 %4 to i32, !dbg !5046
  %cmp4 = icmp eq i32 %conv3, 254, !dbg !5050
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !5051

if.then6:                                         ; preds = %if.then
  store i32 254, i32* %retval, align 4, !dbg !5052
  br label %return, !dbg !5052

if.else:                                          ; preds = %if.then
  store i32 252, i32* %retval, align 4, !dbg !5053
  br label %return, !dbg !5053

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5054
  br label %return, !dbg !5054

return:                                           ; preds = %if.end, %if.else, %if.then6
  %5 = load i32, i32* %retval, align 4, !dbg !5055
  ret i32 %5, !dbg !5055
}

; Function Attrs: noredzone
declare dso_local void @ps2_end_command(%struct.ps2dev*) #3

; Function Attrs: noredzone
declare dso_local i32 @ps2_sendbyte(%struct.ps2dev*, i8 zeroext, i32) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local void @init_wait_entry(%struct.wait_queue_entry*, i32) #3

; Function Attrs: noredzone
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head*, %struct.wait_queue_entry*, i32) #3

; Function Attrs: noredzone
declare dso_local i64 @schedule_timeout(i64) #3

; Function Attrs: noredzone
declare dso_local void @finish_wait(%struct.wait_queue_head*, %struct.wait_queue_entry*) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #0 !dbg !5056 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !5057, metadata !DIExpression()), !dbg !5058
  %0 = load i32, i32* %m.addr, align 4, !dbg !5059
  %conv = zext i32 %0 to i64, !dbg !5059
  %add = add i64 %conv, 4, !dbg !5060
  %sub = sub i64 %add, 1, !dbg !5061
  %div = sdiv i64 %sub, 4, !dbg !5062
  ret i64 %div, !dbg !5063
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5064 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5068, metadata !DIExpression()), !dbg !5073
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5075, metadata !DIExpression()), !dbg !5076
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5077, metadata !DIExpression()), !dbg !5078
  %0 = load i64, i64* %size.addr, align 8, !dbg !5079
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5081
  br i1 %1, label %if.then, label %if.end447, !dbg !5082

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5083
  %tobool = icmp ne i64 %2, 0, !dbg !5083
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5086

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5087
  br label %return, !dbg !5087

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5088
  %cmp = icmp ult i64 %3, 4096, !dbg !5090
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5091

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5092
  br label %return, !dbg !5092

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub = sub i64 %4, 1, !dbg !5093
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5093
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5093

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub4 = sub i64 %6, 1, !dbg !5093
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5093
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5093

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub6 = sub i64 %8, 1, !dbg !5093
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5093
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5093

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5093

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub9 = sub i64 %9, 1, !dbg !5093
  %and = and i64 %sub9, -9223372036854775808, !dbg !5093
  %tobool10 = icmp ne i64 %and, 0, !dbg !5093
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5093

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5093

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub13 = sub i64 %10, 1, !dbg !5093
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5093
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5093
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5093

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5093

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub18 = sub i64 %11, 1, !dbg !5093
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5093
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5093
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5093

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5093

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub23 = sub i64 %12, 1, !dbg !5093
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5093
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5093
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5093

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5093

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub28 = sub i64 %13, 1, !dbg !5093
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5093
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5093
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5093

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5093

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub33 = sub i64 %14, 1, !dbg !5093
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5093
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5093
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5093

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5093

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub38 = sub i64 %15, 1, !dbg !5093
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5093
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5093
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5093

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5093

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub43 = sub i64 %16, 1, !dbg !5093
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5093
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5093
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5093

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5093

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub48 = sub i64 %17, 1, !dbg !5093
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5093
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5093
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5093

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5093

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub53 = sub i64 %18, 1, !dbg !5093
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5093
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5093
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5093

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5093

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub58 = sub i64 %19, 1, !dbg !5093
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5093
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5093
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5093

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5093

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub63 = sub i64 %20, 1, !dbg !5093
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5093
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5093
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5093

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5093

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub68 = sub i64 %21, 1, !dbg !5093
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5093
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5093
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5093

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5093

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub73 = sub i64 %22, 1, !dbg !5093
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5093
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5093
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5093

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5093

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub78 = sub i64 %23, 1, !dbg !5093
  %and79 = and i64 %sub78, 562949953421312, !dbg !5093
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5093
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5093

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5093

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub83 = sub i64 %24, 1, !dbg !5093
  %and84 = and i64 %sub83, 281474976710656, !dbg !5093
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5093
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5093

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5093

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub88 = sub i64 %25, 1, !dbg !5093
  %and89 = and i64 %sub88, 140737488355328, !dbg !5093
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5093
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5093

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5093

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub93 = sub i64 %26, 1, !dbg !5093
  %and94 = and i64 %sub93, 70368744177664, !dbg !5093
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5093
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5093

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5093

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub98 = sub i64 %27, 1, !dbg !5093
  %and99 = and i64 %sub98, 35184372088832, !dbg !5093
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5093
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5093

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5093

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub103 = sub i64 %28, 1, !dbg !5093
  %and104 = and i64 %sub103, 17592186044416, !dbg !5093
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5093
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5093

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5093

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub108 = sub i64 %29, 1, !dbg !5093
  %and109 = and i64 %sub108, 8796093022208, !dbg !5093
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5093
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5093

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5093

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub113 = sub i64 %30, 1, !dbg !5093
  %and114 = and i64 %sub113, 4398046511104, !dbg !5093
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5093
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5093

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5093

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub118 = sub i64 %31, 1, !dbg !5093
  %and119 = and i64 %sub118, 2199023255552, !dbg !5093
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5093
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5093

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5093

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub123 = sub i64 %32, 1, !dbg !5093
  %and124 = and i64 %sub123, 1099511627776, !dbg !5093
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5093
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5093

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5093

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub128 = sub i64 %33, 1, !dbg !5093
  %and129 = and i64 %sub128, 549755813888, !dbg !5093
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5093
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5093

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5093

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub133 = sub i64 %34, 1, !dbg !5093
  %and134 = and i64 %sub133, 274877906944, !dbg !5093
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5093
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5093

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5093

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub138 = sub i64 %35, 1, !dbg !5093
  %and139 = and i64 %sub138, 137438953472, !dbg !5093
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5093
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5093

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5093

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub143 = sub i64 %36, 1, !dbg !5093
  %and144 = and i64 %sub143, 68719476736, !dbg !5093
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5093
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5093

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5093

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub148 = sub i64 %37, 1, !dbg !5093
  %and149 = and i64 %sub148, 34359738368, !dbg !5093
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5093
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5093

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5093

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub153 = sub i64 %38, 1, !dbg !5093
  %and154 = and i64 %sub153, 17179869184, !dbg !5093
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5093
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5093

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5093

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub158 = sub i64 %39, 1, !dbg !5093
  %and159 = and i64 %sub158, 8589934592, !dbg !5093
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5093
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5093

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5093

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub163 = sub i64 %40, 1, !dbg !5093
  %and164 = and i64 %sub163, 4294967296, !dbg !5093
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5093
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5093

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5093

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub168 = sub i64 %41, 1, !dbg !5093
  %and169 = and i64 %sub168, 2147483648, !dbg !5093
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5093
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5093

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5093

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub173 = sub i64 %42, 1, !dbg !5093
  %and174 = and i64 %sub173, 1073741824, !dbg !5093
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5093
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5093

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5093

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub178 = sub i64 %43, 1, !dbg !5093
  %and179 = and i64 %sub178, 536870912, !dbg !5093
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5093
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5093

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5093

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub183 = sub i64 %44, 1, !dbg !5093
  %and184 = and i64 %sub183, 268435456, !dbg !5093
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5093
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5093

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5093

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub188 = sub i64 %45, 1, !dbg !5093
  %and189 = and i64 %sub188, 134217728, !dbg !5093
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5093
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5093

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5093

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub193 = sub i64 %46, 1, !dbg !5093
  %and194 = and i64 %sub193, 67108864, !dbg !5093
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5093
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5093

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5093

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub198 = sub i64 %47, 1, !dbg !5093
  %and199 = and i64 %sub198, 33554432, !dbg !5093
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5093
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5093

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5093

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub203 = sub i64 %48, 1, !dbg !5093
  %and204 = and i64 %sub203, 16777216, !dbg !5093
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5093
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5093

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5093

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub208 = sub i64 %49, 1, !dbg !5093
  %and209 = and i64 %sub208, 8388608, !dbg !5093
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5093
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5093

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5093

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub213 = sub i64 %50, 1, !dbg !5093
  %and214 = and i64 %sub213, 4194304, !dbg !5093
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5093
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5093

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5093

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub218 = sub i64 %51, 1, !dbg !5093
  %and219 = and i64 %sub218, 2097152, !dbg !5093
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5093
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5093

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5093

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub223 = sub i64 %52, 1, !dbg !5093
  %and224 = and i64 %sub223, 1048576, !dbg !5093
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5093
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5093

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5093

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub228 = sub i64 %53, 1, !dbg !5093
  %and229 = and i64 %sub228, 524288, !dbg !5093
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5093
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5093

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5093

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub233 = sub i64 %54, 1, !dbg !5093
  %and234 = and i64 %sub233, 262144, !dbg !5093
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5093
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5093

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5093

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub238 = sub i64 %55, 1, !dbg !5093
  %and239 = and i64 %sub238, 131072, !dbg !5093
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5093
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5093

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5093

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub243 = sub i64 %56, 1, !dbg !5093
  %and244 = and i64 %sub243, 65536, !dbg !5093
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5093
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5093

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5093

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub248 = sub i64 %57, 1, !dbg !5093
  %and249 = and i64 %sub248, 32768, !dbg !5093
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5093
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5093

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5093

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub253 = sub i64 %58, 1, !dbg !5093
  %and254 = and i64 %sub253, 16384, !dbg !5093
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5093
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5093

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5093

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub258 = sub i64 %59, 1, !dbg !5093
  %and259 = and i64 %sub258, 8192, !dbg !5093
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5093
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5093

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5093

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub263 = sub i64 %60, 1, !dbg !5093
  %and264 = and i64 %sub263, 4096, !dbg !5093
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5093
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5093

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5093

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub268 = sub i64 %61, 1, !dbg !5093
  %and269 = and i64 %sub268, 2048, !dbg !5093
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5093
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5093

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5093

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub273 = sub i64 %62, 1, !dbg !5093
  %and274 = and i64 %sub273, 1024, !dbg !5093
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5093
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5093

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5093

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub278 = sub i64 %63, 1, !dbg !5093
  %and279 = and i64 %sub278, 512, !dbg !5093
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5093
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5093

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5093

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub283 = sub i64 %64, 1, !dbg !5093
  %and284 = and i64 %sub283, 256, !dbg !5093
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5093
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5093

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5093

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub288 = sub i64 %65, 1, !dbg !5093
  %and289 = and i64 %sub288, 128, !dbg !5093
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5093
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5093

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5093

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub293 = sub i64 %66, 1, !dbg !5093
  %and294 = and i64 %sub293, 64, !dbg !5093
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5093
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5093

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5093

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub298 = sub i64 %67, 1, !dbg !5093
  %and299 = and i64 %sub298, 32, !dbg !5093
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5093
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5093

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5093

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub303 = sub i64 %68, 1, !dbg !5093
  %and304 = and i64 %sub303, 16, !dbg !5093
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5093
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5093

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5093

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub308 = sub i64 %69, 1, !dbg !5093
  %and309 = and i64 %sub308, 8, !dbg !5093
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5093
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5093

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5093

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub313 = sub i64 %70, 1, !dbg !5093
  %and314 = and i64 %sub313, 4, !dbg !5093
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5093
  %71 = zext i1 %tobool315 to i64, !dbg !5093
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5093
  br label %cond.end, !dbg !5093

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5093
  br label %cond.end317, !dbg !5093

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5093
  br label %cond.end319, !dbg !5093

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5093
  br label %cond.end321, !dbg !5093

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5093
  br label %cond.end323, !dbg !5093

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5093
  br label %cond.end325, !dbg !5093

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5093
  br label %cond.end327, !dbg !5093

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5093
  br label %cond.end329, !dbg !5093

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5093
  br label %cond.end331, !dbg !5093

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5093
  br label %cond.end333, !dbg !5093

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5093
  br label %cond.end335, !dbg !5093

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5093
  br label %cond.end337, !dbg !5093

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5093
  br label %cond.end339, !dbg !5093

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5093
  br label %cond.end341, !dbg !5093

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5093
  br label %cond.end343, !dbg !5093

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5093
  br label %cond.end345, !dbg !5093

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5093
  br label %cond.end347, !dbg !5093

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5093
  br label %cond.end349, !dbg !5093

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5093
  br label %cond.end351, !dbg !5093

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5093
  br label %cond.end353, !dbg !5093

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5093
  br label %cond.end355, !dbg !5093

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5093
  br label %cond.end357, !dbg !5093

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5093
  br label %cond.end359, !dbg !5093

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5093
  br label %cond.end361, !dbg !5093

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5093
  br label %cond.end363, !dbg !5093

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5093
  br label %cond.end365, !dbg !5093

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5093
  br label %cond.end367, !dbg !5093

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5093
  br label %cond.end369, !dbg !5093

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5093
  br label %cond.end371, !dbg !5093

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5093
  br label %cond.end373, !dbg !5093

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5093
  br label %cond.end375, !dbg !5093

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5093
  br label %cond.end377, !dbg !5093

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5093
  br label %cond.end379, !dbg !5093

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5093
  br label %cond.end381, !dbg !5093

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5093
  br label %cond.end383, !dbg !5093

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5093
  br label %cond.end385, !dbg !5093

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5093
  br label %cond.end387, !dbg !5093

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5093
  br label %cond.end389, !dbg !5093

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5093
  br label %cond.end391, !dbg !5093

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5093
  br label %cond.end393, !dbg !5093

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5093
  br label %cond.end395, !dbg !5093

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5093
  br label %cond.end397, !dbg !5093

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5093
  br label %cond.end399, !dbg !5093

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5093
  br label %cond.end401, !dbg !5093

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5093
  br label %cond.end403, !dbg !5093

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5093
  br label %cond.end405, !dbg !5093

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5093
  br label %cond.end407, !dbg !5093

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5093
  br label %cond.end409, !dbg !5093

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5093
  br label %cond.end411, !dbg !5093

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5093
  br label %cond.end413, !dbg !5093

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5093
  br label %cond.end415, !dbg !5093

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5093
  br label %cond.end417, !dbg !5093

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5093
  br label %cond.end419, !dbg !5093

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5093
  br label %cond.end421, !dbg !5093

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5093
  br label %cond.end423, !dbg !5093

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5093
  br label %cond.end425, !dbg !5093

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5093
  br label %cond.end427, !dbg !5093

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5093
  br label %cond.end429, !dbg !5093

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5093
  br label %cond.end431, !dbg !5093

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5093
  br label %cond.end433, !dbg !5093

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5093
  br label %cond.end435, !dbg !5093

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5093
  br label %cond.end437, !dbg !5093

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5093
  br label %cond.end440, !dbg !5093

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5093

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5093
  br label %cond.end444, !dbg !5093

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5093
  %sub443 = sub i64 %72, 1, !dbg !5093
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5093
  br label %cond.end444, !dbg !5093

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5093
  %sub446 = sub i32 %cond445, 12, !dbg !5094
  %add = add i32 %sub446, 1, !dbg !5095
  store i32 %add, i32* %retval, align 4, !dbg !5096
  br label %return, !dbg !5096

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5097
  %dec = add i64 %73, -1, !dbg !5097
  store i64 %dec, i64* %size.addr, align 8, !dbg !5097
  %74 = load i64, i64* %size.addr, align 8, !dbg !5098
  %shr = lshr i64 %74, 12, !dbg !5098
  store i64 %shr, i64* %size.addr, align 8, !dbg !5098
  %75 = load i64, i64* %size.addr, align 8, !dbg !5099
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5076
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5100
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5101
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !5100, !srcloc !5102
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5100
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5103
  %add.i = add i32 %79, 1, !dbg !5104
  store i32 %add.i, i32* %retval, align 4, !dbg !5105
  br label %return, !dbg !5105

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5106
  ret i32 %80, !dbg !5106
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5107 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5068, metadata !DIExpression()), !dbg !5111
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5075, metadata !DIExpression()), !dbg !5113
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5114, metadata !DIExpression()), !dbg !5115
  %0 = load i64, i64* %n.addr, align 8, !dbg !5116
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5113
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5117
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5118
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !5117, !srcloc !5102
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5117
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5119
  %add.i = add i32 %4, 1, !dbg !5120
  %sub = sub i32 %add.i, 1, !dbg !5121
  ret i32 %sub, !dbg !5122
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5123 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5126, metadata !DIExpression()), !dbg !5127
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5128, metadata !DIExpression()), !dbg !5129
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5130, metadata !DIExpression()), !dbg !5131
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5132, metadata !DIExpression()), !dbg !5133
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5134
  ret i8* %0, !dbg !5135
}

; Function Attrs: noredzone
declare dso_local i32 @psmouse_reset(%struct.psmouse*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cypress_read_fw_version(%struct.psmouse* %psmouse) #0 !dbg !5136 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %cytp = alloca %struct.cytp_data*, align 8
  %param = alloca [3 x i8], align 1
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !5137, metadata !DIExpression()), !dbg !5138
  call void @llvm.dbg.declare(metadata %struct.cytp_data** %cytp, metadata !5139, metadata !DIExpression()), !dbg !5140
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !5141
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 0, !dbg !5142
  %1 = load i8*, i8** %private, align 8, !dbg !5142
  %2 = bitcast i8* %1 to %struct.cytp_data*, !dbg !5141
  store %struct.cytp_data* %2, %struct.cytp_data** %cytp, align 8, !dbg !5140
  call void @llvm.dbg.declare(metadata [3 x i8]* %param, metadata !5143, metadata !DIExpression()), !dbg !5144
  %3 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !5145
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %param, i64 0, i64 0, !dbg !5147
  %call = call i32 @cypress_send_ext_cmd(%struct.psmouse* %3, i8 zeroext 0, i8* %arraydecay) #8, !dbg !5148
  %tobool = icmp ne i32 %call, 0, !dbg !5148
  br i1 %tobool, label %if.then, label %if.end, !dbg !5149

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !5150
  br label %return, !dbg !5150

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %param, i64 0, i64 0, !dbg !5151
  %4 = load i8, i8* %arrayidx, align 1, !dbg !5151
  %conv = zext i8 %4 to i32, !dbg !5151
  %cmp = icmp ne i32 %conv, 51, !dbg !5153
  br i1 %cmp, label %if.then6, label %lor.lhs.false, !dbg !5154

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx2 = getelementptr [3 x i8], [3 x i8]* %param, i64 0, i64 1, !dbg !5155
  %5 = load i8, i8* %arrayidx2, align 1, !dbg !5155
  %conv3 = zext i8 %5 to i32, !dbg !5155
  %cmp4 = icmp ne i32 %conv3, 204, !dbg !5156
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !5157

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -19, i32* %retval, align 4, !dbg !5158
  br label %return, !dbg !5158

if.end7:                                          ; preds = %lor.lhs.false
  %arrayidx8 = getelementptr [3 x i8], [3 x i8]* %param, i64 0, i64 2, !dbg !5159
  %6 = load i8, i8* %arrayidx8, align 1, !dbg !5159
  %conv9 = zext i8 %6 to i32, !dbg !5159
  %and = and i32 %conv9, 127, !dbg !5160
  %7 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5161
  %fw_version = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %7, i32 0, i32 0, !dbg !5162
  store i32 %and, i32* %fw_version, align 4, !dbg !5163
  %arrayidx10 = getelementptr [3 x i8], [3 x i8]* %param, i64 0, i64 2, !dbg !5164
  %8 = load i8, i8* %arrayidx10, align 1, !dbg !5164
  %conv11 = zext i8 %8 to i32, !dbg !5164
  %and12 = and i32 %conv11, 128, !dbg !5165
  %tobool13 = icmp ne i32 %and12, 0, !dbg !5166
  %9 = zext i1 %tobool13 to i64, !dbg !5166
  %cond = select i1 %tobool13, i32 1, i32 0, !dbg !5166
  %10 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5167
  %tp_metrics_supported = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %10, i32 0, i32 11, !dbg !5168
  store i32 %cond, i32* %tp_metrics_supported, align 4, !dbg !5169
  %11 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5170
  %fw_version14 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %11, i32 0, i32 0, !dbg !5172
  %12 = load i32, i32* %fw_version14, align 4, !dbg !5172
  %cmp15 = icmp sge i32 %12, 11, !dbg !5173
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !5174

if.then17:                                        ; preds = %if.end7
  %13 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5175
  %tp_metrics_supported18 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %13, i32 0, i32 11, !dbg !5176
  store i32 0, i32* %tp_metrics_supported18, align 4, !dbg !5177
  br label %if.end19, !dbg !5175

if.end19:                                         ; preds = %if.then17, %if.end7
  store i32 0, i32* %retval, align 4, !dbg !5178
  br label %return, !dbg !5178

return:                                           ; preds = %if.end19, %if.then6, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !5179
  ret i32 %14, !dbg !5179
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cypress_read_tp_metrics(%struct.psmouse* %psmouse) #0 !dbg !5180 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %cytp = alloca %struct.cytp_data*, align 8
  %param = alloca [8 x i8], align 1
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !5181, metadata !DIExpression()), !dbg !5182
  call void @llvm.dbg.declare(metadata %struct.cytp_data** %cytp, metadata !5183, metadata !DIExpression()), !dbg !5184
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !5185
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 0, !dbg !5186
  %1 = load i8*, i8** %private, align 8, !dbg !5186
  %2 = bitcast i8* %1 to %struct.cytp_data*, !dbg !5185
  store %struct.cytp_data* %2, %struct.cytp_data** %cytp, align 8, !dbg !5184
  call void @llvm.dbg.declare(metadata [8 x i8]* %param, metadata !5187, metadata !DIExpression()), !dbg !5188
  %3 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5189
  %tp_width = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %3, i32 0, i32 5, !dbg !5190
  store i32 97, i32* %tp_width, align 4, !dbg !5191
  %4 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5192
  %tp_high = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %4, i32 0, i32 6, !dbg !5193
  store i32 59, i32* %tp_high, align 4, !dbg !5194
  %5 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5195
  %tp_max_abs_x = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %5, i32 0, i32 7, !dbg !5196
  store i32 1600, i32* %tp_max_abs_x, align 4, !dbg !5197
  %6 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5198
  %tp_max_abs_y = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %6, i32 0, i32 8, !dbg !5199
  store i32 900, i32* %tp_max_abs_y, align 4, !dbg !5200
  %7 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5201
  %tp_min_pressure = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %7, i32 0, i32 3, !dbg !5202
  store i32 0, i32* %tp_min_pressure, align 4, !dbg !5203
  %8 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5204
  %tp_max_pressure = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %8, i32 0, i32 4, !dbg !5205
  store i32 255, i32* %tp_max_pressure, align 4, !dbg !5206
  %9 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5207
  %tp_max_abs_x1 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %9, i32 0, i32 7, !dbg !5208
  %10 = load i32, i32* %tp_max_abs_x1, align 4, !dbg !5208
  %11 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5209
  %tp_width2 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %11, i32 0, i32 5, !dbg !5210
  %12 = load i32, i32* %tp_width2, align 4, !dbg !5210
  %div = sdiv i32 %10, %12, !dbg !5211
  %13 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5212
  %tp_res_x = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %13, i32 0, i32 9, !dbg !5213
  store i32 %div, i32* %tp_res_x, align 4, !dbg !5214
  %14 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5215
  %tp_max_abs_y3 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %14, i32 0, i32 8, !dbg !5216
  %15 = load i32, i32* %tp_max_abs_y3, align 4, !dbg !5216
  %16 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5217
  %tp_high4 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %16, i32 0, i32 6, !dbg !5218
  %17 = load i32, i32* %tp_high4, align 4, !dbg !5218
  %div5 = sdiv i32 %15, %17, !dbg !5219
  %18 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5220
  %tp_res_y = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %18, i32 0, i32 10, !dbg !5221
  store i32 %div5, i32* %tp_res_y, align 4, !dbg !5222
  %19 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5223
  %tp_metrics_supported = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %19, i32 0, i32 11, !dbg !5225
  %20 = load i32, i32* %tp_metrics_supported, align 4, !dbg !5225
  %tobool = icmp ne i32 %20, 0, !dbg !5223
  br i1 %tobool, label %if.end, label %if.then, !dbg !5226

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5227
  br label %return, !dbg !5227

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %param, i64 0, i64 0, !dbg !5228
  call void @llvm.memset.p0i8.i64(i8* align 1 %arraydecay, i8 0, i64 8, i1 false), !dbg !5228
  %21 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !5229
  %arraydecay6 = getelementptr inbounds [8 x i8], [8 x i8]* %param, i64 0, i64 0, !dbg !5231
  %call = call i32 @cypress_send_ext_cmd(%struct.psmouse* %21, i8 zeroext 1, i8* %arraydecay6) #8, !dbg !5232
  %cmp = icmp eq i32 %call, 0, !dbg !5233
  br i1 %cmp, label %if.then7, label %if.end24, !dbg !5234

if.then7:                                         ; preds = %if.end
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %param, i64 0, i64 1, !dbg !5235
  %22 = load i8, i8* %arrayidx, align 1, !dbg !5235
  %conv = zext i8 %22 to i32, !dbg !5235
  %shl = shl i32 %conv, 8, !dbg !5237
  %arrayidx8 = getelementptr [8 x i8], [8 x i8]* %param, i64 0, i64 0, !dbg !5238
  %23 = load i8, i8* %arrayidx8, align 1, !dbg !5238
  %conv9 = zext i8 %23 to i32, !dbg !5238
  %or = or i32 %shl, %conv9, !dbg !5239
  %24 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5240
  %tp_max_abs_x10 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %24, i32 0, i32 7, !dbg !5241
  store i32 %or, i32* %tp_max_abs_x10, align 4, !dbg !5242
  %arrayidx11 = getelementptr [8 x i8], [8 x i8]* %param, i64 0, i64 3, !dbg !5243
  %25 = load i8, i8* %arrayidx11, align 1, !dbg !5243
  %conv12 = zext i8 %25 to i32, !dbg !5243
  %shl13 = shl i32 %conv12, 8, !dbg !5244
  %arrayidx14 = getelementptr [8 x i8], [8 x i8]* %param, i64 0, i64 2, !dbg !5245
  %26 = load i8, i8* %arrayidx14, align 1, !dbg !5245
  %conv15 = zext i8 %26 to i32, !dbg !5245
  %or16 = or i32 %shl13, %conv15, !dbg !5246
  %27 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5247
  %tp_max_abs_y17 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %27, i32 0, i32 8, !dbg !5248
  store i32 %or16, i32* %tp_max_abs_y17, align 4, !dbg !5249
  %arrayidx18 = getelementptr [8 x i8], [8 x i8]* %param, i64 0, i64 4, !dbg !5250
  %28 = load i8, i8* %arrayidx18, align 1, !dbg !5250
  %conv19 = zext i8 %28 to i32, !dbg !5250
  %29 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5251
  %tp_min_pressure20 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %29, i32 0, i32 3, !dbg !5252
  store i32 %conv19, i32* %tp_min_pressure20, align 4, !dbg !5253
  %arrayidx21 = getelementptr [8 x i8], [8 x i8]* %param, i64 0, i64 5, !dbg !5254
  %30 = load i8, i8* %arrayidx21, align 1, !dbg !5254
  %conv22 = zext i8 %30 to i32, !dbg !5254
  %31 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5255
  %tp_max_pressure23 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %31, i32 0, i32 4, !dbg !5256
  store i32 %conv22, i32* %tp_max_pressure23, align 4, !dbg !5257
  br label %if.end24, !dbg !5258

if.end24:                                         ; preds = %if.then7, %if.end
  %32 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5259
  %tp_max_pressure25 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %32, i32 0, i32 4, !dbg !5261
  %33 = load i32, i32* %tp_max_pressure25, align 4, !dbg !5261
  %tobool26 = icmp ne i32 %33, 0, !dbg !5259
  br i1 %tobool26, label %lor.lhs.false, label %if.then53, !dbg !5262

lor.lhs.false:                                    ; preds = %if.end24
  %34 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5263
  %tp_max_pressure27 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %34, i32 0, i32 4, !dbg !5264
  %35 = load i32, i32* %tp_max_pressure27, align 4, !dbg !5264
  %36 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5265
  %tp_min_pressure28 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %36, i32 0, i32 3, !dbg !5266
  %37 = load i32, i32* %tp_min_pressure28, align 4, !dbg !5266
  %cmp29 = icmp slt i32 %35, %37, !dbg !5267
  br i1 %cmp29, label %if.then53, label %lor.lhs.false31, !dbg !5268

lor.lhs.false31:                                  ; preds = %lor.lhs.false
  %38 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5269
  %tp_width32 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %38, i32 0, i32 5, !dbg !5270
  %39 = load i32, i32* %tp_width32, align 4, !dbg !5270
  %tobool33 = icmp ne i32 %39, 0, !dbg !5269
  br i1 %tobool33, label %lor.lhs.false34, label %if.then53, !dbg !5271

lor.lhs.false34:                                  ; preds = %lor.lhs.false31
  %40 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5272
  %tp_high35 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %40, i32 0, i32 6, !dbg !5273
  %41 = load i32, i32* %tp_high35, align 4, !dbg !5273
  %tobool36 = icmp ne i32 %41, 0, !dbg !5272
  br i1 %tobool36, label %lor.lhs.false37, label %if.then53, !dbg !5274

lor.lhs.false37:                                  ; preds = %lor.lhs.false34
  %42 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5275
  %tp_max_abs_x38 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %42, i32 0, i32 7, !dbg !5276
  %43 = load i32, i32* %tp_max_abs_x38, align 4, !dbg !5276
  %tobool39 = icmp ne i32 %43, 0, !dbg !5275
  br i1 %tobool39, label %lor.lhs.false40, label %if.then53, !dbg !5277

lor.lhs.false40:                                  ; preds = %lor.lhs.false37
  %44 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5278
  %tp_max_abs_x41 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %44, i32 0, i32 7, !dbg !5279
  %45 = load i32, i32* %tp_max_abs_x41, align 4, !dbg !5279
  %46 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5280
  %tp_width42 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %46, i32 0, i32 5, !dbg !5281
  %47 = load i32, i32* %tp_width42, align 4, !dbg !5281
  %cmp43 = icmp slt i32 %45, %47, !dbg !5282
  br i1 %cmp43, label %if.then53, label %lor.lhs.false45, !dbg !5283

lor.lhs.false45:                                  ; preds = %lor.lhs.false40
  %48 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5284
  %tp_max_abs_y46 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %48, i32 0, i32 8, !dbg !5285
  %49 = load i32, i32* %tp_max_abs_y46, align 4, !dbg !5285
  %tobool47 = icmp ne i32 %49, 0, !dbg !5284
  br i1 %tobool47, label %lor.lhs.false48, label %if.then53, !dbg !5286

lor.lhs.false48:                                  ; preds = %lor.lhs.false45
  %50 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5287
  %tp_max_abs_y49 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %50, i32 0, i32 8, !dbg !5288
  %51 = load i32, i32* %tp_max_abs_y49, align 4, !dbg !5288
  %52 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5289
  %tp_high50 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %52, i32 0, i32 6, !dbg !5290
  %53 = load i32, i32* %tp_high50, align 4, !dbg !5290
  %cmp51 = icmp slt i32 %51, %53, !dbg !5291
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !5292

if.then53:                                        ; preds = %lor.lhs.false48, %lor.lhs.false45, %lor.lhs.false40, %lor.lhs.false37, %lor.lhs.false34, %lor.lhs.false31, %lor.lhs.false, %if.end24
  store i32 -22, i32* %retval, align 4, !dbg !5293
  br label %return, !dbg !5293

if.end54:                                         ; preds = %lor.lhs.false48
  %54 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5294
  %tp_max_abs_x55 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %54, i32 0, i32 7, !dbg !5295
  %55 = load i32, i32* %tp_max_abs_x55, align 4, !dbg !5295
  %56 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5296
  %tp_width56 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %56, i32 0, i32 5, !dbg !5297
  %57 = load i32, i32* %tp_width56, align 4, !dbg !5297
  %div57 = sdiv i32 %55, %57, !dbg !5298
  %58 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5299
  %tp_res_x58 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %58, i32 0, i32 9, !dbg !5300
  store i32 %div57, i32* %tp_res_x58, align 4, !dbg !5301
  %59 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5302
  %tp_max_abs_y59 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %59, i32 0, i32 8, !dbg !5303
  %60 = load i32, i32* %tp_max_abs_y59, align 4, !dbg !5303
  %61 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5304
  %tp_high60 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %61, i32 0, i32 6, !dbg !5305
  %62 = load i32, i32* %tp_high60, align 4, !dbg !5305
  %div61 = sdiv i32 %60, %62, !dbg !5306
  %63 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5307
  %tp_res_y62 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %63, i32 0, i32 10, !dbg !5308
  store i32 %div61, i32* %tp_res_y62, align 4, !dbg !5309
  store i32 0, i32* %retval, align 4, !dbg !5310
  br label %return, !dbg !5310

return:                                           ; preds = %if.end54, %if.then53, %if.then
  %64 = load i32, i32* %retval, align 4, !dbg !5311
  ret i32 %64, !dbg !5311
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cypress_set_packet_size(%struct.psmouse* %psmouse, i32 %n) #0 !dbg !5312 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %n.addr = alloca i32, align 4
  %cytp = alloca %struct.cytp_data*, align 8
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !5313, metadata !DIExpression()), !dbg !5314
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !5315, metadata !DIExpression()), !dbg !5316
  call void @llvm.dbg.declare(metadata %struct.cytp_data** %cytp, metadata !5317, metadata !DIExpression()), !dbg !5318
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !5319
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 0, !dbg !5320
  %1 = load i8*, i8** %private, align 8, !dbg !5320
  %2 = bitcast i8* %1 to %struct.cytp_data*, !dbg !5319
  store %struct.cytp_data* %2, %struct.cytp_data** %cytp, align 8, !dbg !5318
  %3 = load i32, i32* %n.addr, align 4, !dbg !5321
  %4 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5322
  %pkt_size = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %4, i32 0, i32 1, !dbg !5323
  store i32 %3, i32* %pkt_size, align 4, !dbg !5324
  ret void, !dbg !5325
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__set_bit(i64 %nr, i64* %addr) #0 !dbg !5326 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5332, metadata !DIExpression()), !dbg !5334
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5336, metadata !DIExpression()), !dbg !5337
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5338, metadata !DIExpression()), !dbg !5346
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5348, metadata !DIExpression()), !dbg !5349
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5350, metadata !DIExpression()), !dbg !5351
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5352, metadata !DIExpression()), !dbg !5353
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5354
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5355
  %div = sdiv i64 %1, 64, !dbg !5355
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5356
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5354
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5357
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5358
  %conv.i = trunc i64 %4 to i32, !dbg !5358
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !5359
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5360
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5360
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #12, !dbg !5360
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5361
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5362
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !5363
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !5364
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #10, !dbg !5365, !srcloc !5366
  ret void, !dbg !5367
}

; Function Attrs: noredzone
declare dso_local void @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #3

; Function Attrs: noredzone
declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_abs_set_res(%struct.input_dev* %dev, i32 %axis, i32 %val) #0 !dbg !5368 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %axis.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5371, metadata !DIExpression()), !dbg !5372
  store i32 %axis, i32* %axis.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %axis.addr, metadata !5373, metadata !DIExpression()), !dbg !5372
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5374, metadata !DIExpression()), !dbg !5372
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5372
  call void @input_alloc_absinfo(%struct.input_dev* %0) #8, !dbg !5372
  %1 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5375
  %absinfo = getelementptr inbounds %struct.input_dev, %struct.input_dev* %1, i32 0, i32 26, !dbg !5375
  %2 = load %struct.input_absinfo*, %struct.input_absinfo** %absinfo, align 8, !dbg !5375
  %tobool = icmp ne %struct.input_absinfo* %2, null, !dbg !5375
  br i1 %tobool, label %if.then, label %if.end, !dbg !5372

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !5375
  %4 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5375
  %absinfo1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %4, i32 0, i32 26, !dbg !5375
  %5 = load %struct.input_absinfo*, %struct.input_absinfo** %absinfo1, align 8, !dbg !5375
  %6 = load i32, i32* %axis.addr, align 4, !dbg !5375
  %idxprom = zext i32 %6 to i64, !dbg !5375
  %arrayidx = getelementptr %struct.input_absinfo, %struct.input_absinfo* %5, i64 %idxprom, !dbg !5375
  %resolution = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %arrayidx, i32 0, i32 5, !dbg !5375
  store i32 %3, i32* %resolution, align 4, !dbg !5375
  br label %if.end, !dbg !5375

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5372
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__clear_bit(i64 %nr, i64* %addr) #0 !dbg !5377 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5378, metadata !DIExpression()), !dbg !5380
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5382, metadata !DIExpression()), !dbg !5383
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5338, metadata !DIExpression()), !dbg !5384
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5348, metadata !DIExpression()), !dbg !5386
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5387, metadata !DIExpression()), !dbg !5388
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5389, metadata !DIExpression()), !dbg !5390
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5391
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5392
  %div = sdiv i64 %1, 64, !dbg !5392
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5393
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5391
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5394
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5395
  %conv.i = trunc i64 %4 to i32, !dbg !5395
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !5396
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5397
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5397
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #12, !dbg !5397
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5398
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5399
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !5400
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !5401
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #10, !dbg !5402, !srcloc !5403
  ret void, !dbg !5404
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5405 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5409, metadata !DIExpression()), !dbg !5410
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5411, metadata !DIExpression()), !dbg !5412
  ret i1 true, !dbg !5413
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5414 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5418, metadata !DIExpression()), !dbg !5419
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5420, metadata !DIExpression()), !dbg !5421
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5422, metadata !DIExpression()), !dbg !5423
  ret void, !dbg !5424
}

; Function Attrs: noredzone
declare dso_local void @input_alloc_absinfo(%struct.input_dev*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cypress_process_packet(%struct.psmouse* %psmouse, i1 zeroext %zero_pkt) #0 !dbg !5425 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %zero_pkt.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %input = alloca %struct.input_dev*, align 8
  %cytp = alloca %struct.cytp_data*, align 8
  %report_data = alloca %struct.cytp_report_data, align 4
  %contact = alloca %struct.cytp_contact*, align 8
  %pos = alloca [2 x %struct.input_mt_pos], align 2
  %slots = alloca [2 x i32], align 4
  %n = alloca i32, align 4
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !5428, metadata !DIExpression()), !dbg !5429
  %frombool = zext i1 %zero_pkt to i8
  store i8 %frombool, i8* %zero_pkt.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %zero_pkt.addr, metadata !5430, metadata !DIExpression()), !dbg !5431
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5432, metadata !DIExpression()), !dbg !5433
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input, metadata !5434, metadata !DIExpression()), !dbg !5435
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !5436
  %dev = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 1, !dbg !5437
  %1 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !5437
  store %struct.input_dev* %1, %struct.input_dev** %input, align 8, !dbg !5435
  call void @llvm.dbg.declare(metadata %struct.cytp_data** %cytp, metadata !5438, metadata !DIExpression()), !dbg !5439
  %2 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !5440
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %2, i32 0, i32 0, !dbg !5441
  %3 = load i8*, i8** %private, align 8, !dbg !5441
  %4 = bitcast i8* %3 to %struct.cytp_data*, !dbg !5440
  store %struct.cytp_data* %4, %struct.cytp_data** %cytp, align 8, !dbg !5439
  call void @llvm.dbg.declare(metadata %struct.cytp_report_data* %report_data, metadata !5442, metadata !DIExpression()), !dbg !5457
  call void @llvm.dbg.declare(metadata %struct.cytp_contact** %contact, metadata !5458, metadata !DIExpression()), !dbg !5460
  call void @llvm.dbg.declare(metadata [2 x %struct.input_mt_pos]* %pos, metadata !5461, metadata !DIExpression()), !dbg !5467
  call void @llvm.dbg.declare(metadata [2 x i32]* %slots, metadata !5468, metadata !DIExpression()), !dbg !5469
  call void @llvm.dbg.declare(metadata i32* %n, metadata !5470, metadata !DIExpression()), !dbg !5471
  %5 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !5472
  %6 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5473
  %call = call i32 @cypress_parse_packet(%struct.psmouse* %5, %struct.cytp_data* %6, %struct.cytp_report_data* %report_data) #8, !dbg !5474
  %contact_cnt = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %report_data, i32 0, i32 0, !dbg !5475
  %7 = load i32, i32* %contact_cnt, align 4, !dbg !5475
  store i32 %7, i32* %n, align 4, !dbg !5476
  %8 = load i32, i32* %n, align 4, !dbg !5477
  %cmp = icmp sgt i32 %8, 2, !dbg !5479
  br i1 %cmp, label %if.then, label %if.end, !dbg !5480

if.then:                                          ; preds = %entry
  store i32 2, i32* %n, align 4, !dbg !5481
  br label %if.end, !dbg !5482

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !dbg !5483
  br label %for.cond, !dbg !5485

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4, !dbg !5486
  %10 = load i32, i32* %n, align 4, !dbg !5488
  %cmp1 = icmp slt i32 %9, %10, !dbg !5489
  br i1 %cmp1, label %for.body, label %for.end, !dbg !5490

for.body:                                         ; preds = %for.cond
  %contacts = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %report_data, i32 0, i32 1, !dbg !5491
  %11 = load i32, i32* %i, align 4, !dbg !5493
  %idxprom = sext i32 %11 to i64, !dbg !5494
  %arrayidx = getelementptr [2 x %struct.cytp_contact], [2 x %struct.cytp_contact]* %contacts, i64 0, i64 %idxprom, !dbg !5494
  store %struct.cytp_contact* %arrayidx, %struct.cytp_contact** %contact, align 8, !dbg !5495
  %12 = load %struct.cytp_contact*, %struct.cytp_contact** %contact, align 8, !dbg !5496
  %x = getelementptr inbounds %struct.cytp_contact, %struct.cytp_contact* %12, i32 0, i32 0, !dbg !5497
  %13 = load i32, i32* %x, align 4, !dbg !5497
  %conv = trunc i32 %13 to i16, !dbg !5496
  %14 = load i32, i32* %i, align 4, !dbg !5498
  %idxprom2 = sext i32 %14 to i64, !dbg !5499
  %arrayidx3 = getelementptr [2 x %struct.input_mt_pos], [2 x %struct.input_mt_pos]* %pos, i64 0, i64 %idxprom2, !dbg !5499
  %x4 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %arrayidx3, i32 0, i32 0, !dbg !5500
  store i16 %conv, i16* %x4, align 2, !dbg !5501
  %15 = load %struct.cytp_contact*, %struct.cytp_contact** %contact, align 8, !dbg !5502
  %y = getelementptr inbounds %struct.cytp_contact, %struct.cytp_contact* %15, i32 0, i32 1, !dbg !5503
  %16 = load i32, i32* %y, align 4, !dbg !5503
  %conv5 = trunc i32 %16 to i16, !dbg !5502
  %17 = load i32, i32* %i, align 4, !dbg !5504
  %idxprom6 = sext i32 %17 to i64, !dbg !5505
  %arrayidx7 = getelementptr [2 x %struct.input_mt_pos], [2 x %struct.input_mt_pos]* %pos, i64 0, i64 %idxprom6, !dbg !5505
  %y8 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %arrayidx7, i32 0, i32 1, !dbg !5506
  store i16 %conv5, i16* %y8, align 2, !dbg !5507
  br label %for.inc, !dbg !5508

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !5509
  %inc = add i32 %18, 1, !dbg !5509
  store i32 %inc, i32* %i, align 4, !dbg !5509
  br label %for.cond, !dbg !5510, !llvm.loop !5511

for.end:                                          ; preds = %for.cond
  %19 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5513
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %slots, i64 0, i64 0, !dbg !5514
  %arraydecay9 = getelementptr inbounds [2 x %struct.input_mt_pos], [2 x %struct.input_mt_pos]* %pos, i64 0, i64 0, !dbg !5515
  %20 = load i32, i32* %n, align 4, !dbg !5516
  %call10 = call i32 @input_mt_assign_slots(%struct.input_dev* %19, i32* %arraydecay, %struct.input_mt_pos* %arraydecay9, i32 %20, i32 0) #8, !dbg !5517
  store i32 0, i32* %i, align 4, !dbg !5518
  br label %for.cond11, !dbg !5520

for.cond11:                                       ; preds = %for.inc23, %for.end
  %21 = load i32, i32* %i, align 4, !dbg !5521
  %22 = load i32, i32* %n, align 4, !dbg !5523
  %cmp12 = icmp slt i32 %21, %22, !dbg !5524
  br i1 %cmp12, label %for.body14, label %for.end25, !dbg !5525

for.body14:                                       ; preds = %for.cond11
  %contacts15 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %report_data, i32 0, i32 1, !dbg !5526
  %23 = load i32, i32* %i, align 4, !dbg !5528
  %idxprom16 = sext i32 %23 to i64, !dbg !5529
  %arrayidx17 = getelementptr [2 x %struct.cytp_contact], [2 x %struct.cytp_contact]* %contacts15, i64 0, i64 %idxprom16, !dbg !5529
  store %struct.cytp_contact* %arrayidx17, %struct.cytp_contact** %contact, align 8, !dbg !5530
  %24 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5531
  %25 = load i32, i32* %i, align 4, !dbg !5532
  %idxprom18 = sext i32 %25 to i64, !dbg !5533
  %arrayidx19 = getelementptr [2 x i32], [2 x i32]* %slots, i64 0, i64 %idxprom18, !dbg !5533
  %26 = load i32, i32* %arrayidx19, align 4, !dbg !5533
  call void @input_mt_slot(%struct.input_dev* %24, i32 %26) #8, !dbg !5534
  %27 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5535
  %call20 = call zeroext i1 @input_mt_report_slot_state(%struct.input_dev* %27, i32 0, i1 zeroext true) #8, !dbg !5536
  %28 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5537
  %29 = load %struct.cytp_contact*, %struct.cytp_contact** %contact, align 8, !dbg !5538
  %x21 = getelementptr inbounds %struct.cytp_contact, %struct.cytp_contact* %29, i32 0, i32 0, !dbg !5539
  %30 = load i32, i32* %x21, align 4, !dbg !5539
  call void @input_report_abs(%struct.input_dev* %28, i32 53, i32 %30) #8, !dbg !5540
  %31 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5541
  %32 = load %struct.cytp_contact*, %struct.cytp_contact** %contact, align 8, !dbg !5542
  %y22 = getelementptr inbounds %struct.cytp_contact, %struct.cytp_contact* %32, i32 0, i32 1, !dbg !5543
  %33 = load i32, i32* %y22, align 4, !dbg !5543
  call void @input_report_abs(%struct.input_dev* %31, i32 54, i32 %33) #8, !dbg !5544
  %34 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5545
  %35 = load %struct.cytp_contact*, %struct.cytp_contact** %contact, align 8, !dbg !5546
  %z = getelementptr inbounds %struct.cytp_contact, %struct.cytp_contact* %35, i32 0, i32 2, !dbg !5547
  %36 = load i32, i32* %z, align 4, !dbg !5547
  call void @input_report_abs(%struct.input_dev* %34, i32 58, i32 %36) #8, !dbg !5548
  br label %for.inc23, !dbg !5549

for.inc23:                                        ; preds = %for.body14
  %37 = load i32, i32* %i, align 4, !dbg !5550
  %inc24 = add i32 %37, 1, !dbg !5550
  store i32 %inc24, i32* %i, align 4, !dbg !5550
  br label %for.cond11, !dbg !5551, !llvm.loop !5552

for.end25:                                        ; preds = %for.cond11
  %38 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5554
  call void @input_mt_sync_frame(%struct.input_dev* %38) #8, !dbg !5555
  %39 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5556
  %contact_cnt26 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %report_data, i32 0, i32 0, !dbg !5557
  %40 = load i32, i32* %contact_cnt26, align 4, !dbg !5557
  call void @input_mt_report_finger_count(%struct.input_dev* %39, i32 %40) #8, !dbg !5558
  %41 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5559
  %left = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %report_data, i32 0, i32 2, !dbg !5560
  %bf.load = load i8, i8* %left, align 4, !dbg !5560
  %bf.clear = and i8 %bf.load, 1, !dbg !5560
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5560
  call void @input_report_key(%struct.input_dev* %41, i32 272, i32 %bf.cast) #8, !dbg !5561
  %42 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5562
  %right = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %report_data, i32 0, i32 2, !dbg !5563
  %bf.load27 = load i8, i8* %right, align 4, !dbg !5563
  %bf.lshr = lshr i8 %bf.load27, 1, !dbg !5563
  %bf.clear28 = and i8 %bf.lshr, 1, !dbg !5563
  %bf.cast29 = zext i8 %bf.clear28 to i32, !dbg !5563
  call void @input_report_key(%struct.input_dev* %42, i32 273, i32 %bf.cast29) #8, !dbg !5564
  %43 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5565
  %middle = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %report_data, i32 0, i32 2, !dbg !5566
  %bf.load30 = load i8, i8* %middle, align 4, !dbg !5566
  %bf.lshr31 = lshr i8 %bf.load30, 2, !dbg !5566
  %bf.clear32 = and i8 %bf.lshr31, 1, !dbg !5566
  %bf.cast33 = zext i8 %bf.clear32 to i32, !dbg !5566
  call void @input_report_key(%struct.input_dev* %43, i32 274, i32 %bf.cast33) #8, !dbg !5567
  %44 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5568
  call void @input_sync(%struct.input_dev* %44) #8, !dbg !5569
  ret void, !dbg !5570
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cypress_validate_byte(%struct.psmouse* %psmouse) #0 !dbg !5571 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %contact_cnt = alloca i32, align 4
  %index = alloca i32, align 4
  %packet = alloca i8*, align 8
  %cytp = alloca %struct.cytp_data*, align 8
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !5572, metadata !DIExpression()), !dbg !5573
  call void @llvm.dbg.declare(metadata i32* %contact_cnt, metadata !5574, metadata !DIExpression()), !dbg !5575
  call void @llvm.dbg.declare(metadata i32* %index, metadata !5576, metadata !DIExpression()), !dbg !5577
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !5578
  %pktcnt = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 9, !dbg !5579
  %1 = load i8, i8* %pktcnt, align 1, !dbg !5579
  %conv = zext i8 %1 to i32, !dbg !5578
  %sub = sub i32 %conv, 1, !dbg !5580
  store i32 %sub, i32* %index, align 4, !dbg !5577
  call void @llvm.dbg.declare(metadata i8** %packet, metadata !5581, metadata !DIExpression()), !dbg !5582
  %2 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !5583
  %packet1 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %2, i32 0, i32 7, !dbg !5584
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %packet1, i64 0, i64 0, !dbg !5583
  store i8* %arraydecay, i8** %packet, align 8, !dbg !5582
  call void @llvm.dbg.declare(metadata %struct.cytp_data** %cytp, metadata !5585, metadata !DIExpression()), !dbg !5586
  %3 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !5587
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %3, i32 0, i32 0, !dbg !5588
  %4 = load i8*, i8** %private, align 8, !dbg !5588
  %5 = bitcast i8* %4 to %struct.cytp_data*, !dbg !5587
  store %struct.cytp_data* %5, %struct.cytp_data** %cytp, align 8, !dbg !5586
  %6 = load i32, i32* %index, align 4, !dbg !5589
  %cmp = icmp slt i32 %6, 0, !dbg !5591
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5592

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %index, align 4, !dbg !5593
  %8 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5594
  %pkt_size = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %8, i32 0, i32 1, !dbg !5595
  %9 = load i32, i32* %pkt_size, align 4, !dbg !5595
  %cmp3 = icmp sgt i32 %7, %9, !dbg !5596
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5597

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !5598
  br label %return, !dbg !5598

if.end:                                           ; preds = %lor.lhs.false
  %10 = load i32, i32* %index, align 4, !dbg !5599
  %cmp5 = icmp eq i32 %10, 0, !dbg !5601
  br i1 %cmp5, label %land.lhs.true, label %if.end11, !dbg !5602

land.lhs.true:                                    ; preds = %if.end
  %11 = load i8*, i8** %packet, align 8, !dbg !5603
  %arrayidx = getelementptr i8, i8* %11, i64 0, !dbg !5603
  %12 = load i8, i8* %arrayidx, align 1, !dbg !5603
  %conv7 = zext i8 %12 to i32, !dbg !5603
  %and = and i32 %conv7, 252, !dbg !5604
  %cmp8 = icmp eq i32 %and, 0, !dbg !5605
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !5606

if.then10:                                        ; preds = %land.lhs.true
  %13 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !5607
  call void @cypress_process_packet(%struct.psmouse* %13, i1 zeroext true) #8, !dbg !5609
  store i32 2, i32* %retval, align 4, !dbg !5610
  br label %return, !dbg !5610

if.end11:                                         ; preds = %land.lhs.true, %if.end
  %14 = load i32, i32* %index, align 4, !dbg !5611
  %cmp12 = icmp ne i32 %14, 0, !dbg !5613
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !5614

if.then14:                                        ; preds = %if.end11
  store i32 1, i32* %retval, align 4, !dbg !5615
  br label %return, !dbg !5615

if.end15:                                         ; preds = %if.end11
  %15 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5616
  %mode = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %15, i32 0, i32 2, !dbg !5618
  %16 = load i32, i32* %mode, align 4, !dbg !5618
  %and16 = and i32 %16, 15, !dbg !5619
  %cmp17 = icmp eq i32 %and16, 0, !dbg !5620
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !5621

if.then19:                                        ; preds = %if.end15
  store i32 1, i32* %retval, align 4, !dbg !5622
  br label %return, !dbg !5622

if.end20:                                         ; preds = %if.end15
  %17 = load i8*, i8** %packet, align 8, !dbg !5623
  %arrayidx21 = getelementptr i8, i8* %17, i64 0, !dbg !5623
  %18 = load i8, i8* %arrayidx21, align 1, !dbg !5623
  %conv22 = zext i8 %18 to i32, !dbg !5623
  %and23 = and i32 %conv22, 8, !dbg !5625
  %cmp24 = icmp eq i32 %and23, 8, !dbg !5626
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !5627

if.then26:                                        ; preds = %if.end20
  store i32 0, i32* %retval, align 4, !dbg !5628
  br label %return, !dbg !5628

if.end27:                                         ; preds = %if.end20
  %19 = load i8*, i8** %packet, align 8, !dbg !5629
  %arrayidx28 = getelementptr i8, i8* %19, i64 0, !dbg !5629
  %20 = load i8, i8* %arrayidx28, align 1, !dbg !5629
  %call = call i32 @cypress_get_finger_count(i8 zeroext %20) #8, !dbg !5630
  store i32 %call, i32* %contact_cnt, align 4, !dbg !5631
  %21 = load %struct.cytp_data*, %struct.cytp_data** %cytp, align 8, !dbg !5632
  %mode29 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %21, i32 0, i32 2, !dbg !5634
  %22 = load i32, i32* %mode29, align 4, !dbg !5634
  %and30 = and i32 %22, 4, !dbg !5635
  %tobool = icmp ne i32 %and30, 0, !dbg !5635
  br i1 %tobool, label %if.then31, label %if.else, !dbg !5636

if.then31:                                        ; preds = %if.end27
  %23 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !5637
  %24 = load i32, i32* %contact_cnt, align 4, !dbg !5638
  %cmp32 = icmp eq i32 %24, 2, !dbg !5639
  %25 = zext i1 %cmp32 to i64, !dbg !5638
  %cond = select i1 %cmp32, i32 7, i32 4, !dbg !5638
  call void @cypress_set_packet_size(%struct.psmouse* %23, i32 %cond) #8, !dbg !5640
  br label %if.end37, !dbg !5640

if.else:                                          ; preds = %if.end27
  %26 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !5641
  %27 = load i32, i32* %contact_cnt, align 4, !dbg !5642
  %cmp34 = icmp eq i32 %27, 2, !dbg !5643
  %28 = zext i1 %cmp34 to i64, !dbg !5642
  %cond36 = select i1 %cmp34, i32 8, i32 5, !dbg !5642
  call void @cypress_set_packet_size(%struct.psmouse* %26, i32 %cond36) #8, !dbg !5644
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then31
  store i32 1, i32* %retval, align 4, !dbg !5645
  br label %return, !dbg !5645

return:                                           ; preds = %if.end37, %if.then26, %if.then19, %if.then14, %if.then10, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !5646
  ret i32 %29, !dbg !5646
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cypress_parse_packet(%struct.psmouse* %psmouse, %struct.cytp_data* %cytp, %struct.cytp_report_data* %report_data) #0 !dbg !5647 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %cytp.addr = alloca %struct.cytp_data*, align 8
  %report_data.addr = alloca %struct.cytp_report_data*, align 8
  %packet = alloca i8*, align 8
  %header_byte = alloca i8, align 1
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !5651, metadata !DIExpression()), !dbg !5652
  store %struct.cytp_data* %cytp, %struct.cytp_data** %cytp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cytp_data** %cytp.addr, metadata !5653, metadata !DIExpression()), !dbg !5654
  store %struct.cytp_report_data* %report_data, %struct.cytp_report_data** %report_data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cytp_report_data** %report_data.addr, metadata !5655, metadata !DIExpression()), !dbg !5656
  call void @llvm.dbg.declare(metadata i8** %packet, metadata !5657, metadata !DIExpression()), !dbg !5658
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !5659
  %packet1 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 7, !dbg !5660
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %packet1, i64 0, i64 0, !dbg !5659
  store i8* %arraydecay, i8** %packet, align 8, !dbg !5658
  call void @llvm.dbg.declare(metadata i8* %header_byte, metadata !5661, metadata !DIExpression()), !dbg !5662
  %1 = load i8*, i8** %packet, align 8, !dbg !5663
  %arrayidx = getelementptr i8, i8* %1, i64 0, !dbg !5663
  %2 = load i8, i8* %arrayidx, align 1, !dbg !5663
  store i8 %2, i8* %header_byte, align 1, !dbg !5662
  %3 = load %struct.cytp_report_data*, %struct.cytp_report_data** %report_data.addr, align 8, !dbg !5664
  %4 = bitcast %struct.cytp_report_data* %3 to i8*, !dbg !5665
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 32, i1 false), !dbg !5665
  %5 = load i8, i8* %header_byte, align 1, !dbg !5666
  %call = call i32 @cypress_get_finger_count(i8 zeroext %5) #8, !dbg !5667
  %6 = load %struct.cytp_report_data*, %struct.cytp_report_data** %report_data.addr, align 8, !dbg !5668
  %contact_cnt = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %6, i32 0, i32 0, !dbg !5669
  store i32 %call, i32* %contact_cnt, align 4, !dbg !5670
  %7 = load i8, i8* %header_byte, align 1, !dbg !5671
  %conv = zext i8 %7 to i32, !dbg !5671
  %and = and i32 %conv, 4, !dbg !5672
  %tobool = icmp ne i32 %and, 0, !dbg !5673
  %8 = zext i1 %tobool to i64, !dbg !5673
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !5673
  %9 = load %struct.cytp_report_data*, %struct.cytp_report_data** %report_data.addr, align 8, !dbg !5674
  %tap = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %9, i32 0, i32 2, !dbg !5675
  %10 = trunc i32 %cond to i8, !dbg !5676
  %bf.load = load i8, i8* %tap, align 4, !dbg !5676
  %bf.value = and i8 %10, 1, !dbg !5676
  %bf.shl = shl i8 %bf.value, 3, !dbg !5676
  %bf.clear = and i8 %bf.load, -9, !dbg !5676
  %bf.set = or i8 %bf.clear, %bf.shl, !dbg !5676
  store i8 %bf.set, i8* %tap, align 4, !dbg !5676
  %bf.result.cast = zext i8 %bf.value to i32, !dbg !5676
  %11 = load %struct.cytp_report_data*, %struct.cytp_report_data** %report_data.addr, align 8, !dbg !5677
  %contact_cnt2 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %11, i32 0, i32 0, !dbg !5679
  %12 = load i32, i32* %contact_cnt2, align 4, !dbg !5679
  %cmp = icmp eq i32 %12, 1, !dbg !5680
  br i1 %cmp, label %if.then, label %if.else, !dbg !5681

if.then:                                          ; preds = %entry
  %13 = load i8*, i8** %packet, align 8, !dbg !5682
  %arrayidx4 = getelementptr i8, i8* %13, i64 1, !dbg !5682
  %14 = load i8, i8* %arrayidx4, align 1, !dbg !5682
  %conv5 = zext i8 %14 to i32, !dbg !5682
  %and6 = and i32 %conv5, 112, !dbg !5684
  %shl = shl i32 %and6, 4, !dbg !5685
  %15 = load i8*, i8** %packet, align 8, !dbg !5686
  %arrayidx7 = getelementptr i8, i8* %15, i64 2, !dbg !5686
  %16 = load i8, i8* %arrayidx7, align 1, !dbg !5686
  %conv8 = zext i8 %16 to i32, !dbg !5686
  %or = or i32 %shl, %conv8, !dbg !5687
  %17 = load %struct.cytp_report_data*, %struct.cytp_report_data** %report_data.addr, align 8, !dbg !5688
  %contacts = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %17, i32 0, i32 1, !dbg !5689
  %arrayidx9 = getelementptr [2 x %struct.cytp_contact], [2 x %struct.cytp_contact]* %contacts, i64 0, i64 0, !dbg !5688
  %x = getelementptr inbounds %struct.cytp_contact, %struct.cytp_contact* %arrayidx9, i32 0, i32 0, !dbg !5690
  store i32 %or, i32* %x, align 4, !dbg !5691
  %18 = load i8*, i8** %packet, align 8, !dbg !5692
  %arrayidx10 = getelementptr i8, i8* %18, i64 1, !dbg !5692
  %19 = load i8, i8* %arrayidx10, align 1, !dbg !5692
  %conv11 = zext i8 %19 to i32, !dbg !5692
  %and12 = and i32 %conv11, 7, !dbg !5693
  %shl13 = shl i32 %and12, 8, !dbg !5694
  %20 = load i8*, i8** %packet, align 8, !dbg !5695
  %arrayidx14 = getelementptr i8, i8* %20, i64 3, !dbg !5695
  %21 = load i8, i8* %arrayidx14, align 1, !dbg !5695
  %conv15 = zext i8 %21 to i32, !dbg !5695
  %or16 = or i32 %shl13, %conv15, !dbg !5696
  %22 = load %struct.cytp_report_data*, %struct.cytp_report_data** %report_data.addr, align 8, !dbg !5697
  %contacts17 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %22, i32 0, i32 1, !dbg !5698
  %arrayidx18 = getelementptr [2 x %struct.cytp_contact], [2 x %struct.cytp_contact]* %contacts17, i64 0, i64 0, !dbg !5697
  %y = getelementptr inbounds %struct.cytp_contact, %struct.cytp_contact* %arrayidx18, i32 0, i32 1, !dbg !5699
  store i32 %or16, i32* %y, align 4, !dbg !5700
  %23 = load %struct.cytp_data*, %struct.cytp_data** %cytp.addr, align 8, !dbg !5701
  %mode = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %23, i32 0, i32 2, !dbg !5703
  %24 = load i32, i32* %mode, align 4, !dbg !5703
  %and19 = and i32 %24, 8, !dbg !5704
  %tobool20 = icmp ne i32 %and19, 0, !dbg !5704
  br i1 %tobool20, label %if.then21, label %if.end, !dbg !5705

if.then21:                                        ; preds = %if.then
  %25 = load i8*, i8** %packet, align 8, !dbg !5706
  %arrayidx22 = getelementptr i8, i8* %25, i64 4, !dbg !5706
  %26 = load i8, i8* %arrayidx22, align 1, !dbg !5706
  %conv23 = zext i8 %26 to i32, !dbg !5706
  %27 = load %struct.cytp_report_data*, %struct.cytp_report_data** %report_data.addr, align 8, !dbg !5707
  %contacts24 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %27, i32 0, i32 1, !dbg !5708
  %arrayidx25 = getelementptr [2 x %struct.cytp_contact], [2 x %struct.cytp_contact]* %contacts24, i64 0, i64 0, !dbg !5707
  %z = getelementptr inbounds %struct.cytp_contact, %struct.cytp_contact* %arrayidx25, i32 0, i32 2, !dbg !5709
  store i32 %conv23, i32* %z, align 4, !dbg !5710
  br label %if.end, !dbg !5707

if.end:                                           ; preds = %if.then21, %if.then
  br label %if.end92, !dbg !5711

if.else:                                          ; preds = %entry
  %28 = load %struct.cytp_report_data*, %struct.cytp_report_data** %report_data.addr, align 8, !dbg !5712
  %contact_cnt26 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %28, i32 0, i32 0, !dbg !5714
  %29 = load i32, i32* %contact_cnt26, align 4, !dbg !5714
  %cmp27 = icmp sge i32 %29, 2, !dbg !5715
  br i1 %cmp27, label %if.then29, label %if.end91, !dbg !5716

if.then29:                                        ; preds = %if.else
  %30 = load i8*, i8** %packet, align 8, !dbg !5717
  %arrayidx30 = getelementptr i8, i8* %30, i64 1, !dbg !5717
  %31 = load i8, i8* %arrayidx30, align 1, !dbg !5717
  %conv31 = zext i8 %31 to i32, !dbg !5717
  %and32 = and i32 %conv31, 112, !dbg !5719
  %shl33 = shl i32 %and32, 4, !dbg !5720
  %32 = load i8*, i8** %packet, align 8, !dbg !5721
  %arrayidx34 = getelementptr i8, i8* %32, i64 2, !dbg !5721
  %33 = load i8, i8* %arrayidx34, align 1, !dbg !5721
  %conv35 = zext i8 %33 to i32, !dbg !5721
  %or36 = or i32 %shl33, %conv35, !dbg !5722
  %34 = load %struct.cytp_report_data*, %struct.cytp_report_data** %report_data.addr, align 8, !dbg !5723
  %contacts37 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %34, i32 0, i32 1, !dbg !5724
  %arrayidx38 = getelementptr [2 x %struct.cytp_contact], [2 x %struct.cytp_contact]* %contacts37, i64 0, i64 0, !dbg !5723
  %x39 = getelementptr inbounds %struct.cytp_contact, %struct.cytp_contact* %arrayidx38, i32 0, i32 0, !dbg !5725
  store i32 %or36, i32* %x39, align 4, !dbg !5726
  %35 = load i8*, i8** %packet, align 8, !dbg !5727
  %arrayidx40 = getelementptr i8, i8* %35, i64 1, !dbg !5727
  %36 = load i8, i8* %arrayidx40, align 1, !dbg !5727
  %conv41 = zext i8 %36 to i32, !dbg !5727
  %and42 = and i32 %conv41, 7, !dbg !5728
  %shl43 = shl i32 %and42, 8, !dbg !5729
  %37 = load i8*, i8** %packet, align 8, !dbg !5730
  %arrayidx44 = getelementptr i8, i8* %37, i64 3, !dbg !5730
  %38 = load i8, i8* %arrayidx44, align 1, !dbg !5730
  %conv45 = zext i8 %38 to i32, !dbg !5730
  %or46 = or i32 %shl43, %conv45, !dbg !5731
  %39 = load %struct.cytp_report_data*, %struct.cytp_report_data** %report_data.addr, align 8, !dbg !5732
  %contacts47 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %39, i32 0, i32 1, !dbg !5733
  %arrayidx48 = getelementptr [2 x %struct.cytp_contact], [2 x %struct.cytp_contact]* %contacts47, i64 0, i64 0, !dbg !5732
  %y49 = getelementptr inbounds %struct.cytp_contact, %struct.cytp_contact* %arrayidx48, i32 0, i32 1, !dbg !5734
  store i32 %or46, i32* %y49, align 4, !dbg !5735
  %40 = load %struct.cytp_data*, %struct.cytp_data** %cytp.addr, align 8, !dbg !5736
  %mode50 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %40, i32 0, i32 2, !dbg !5738
  %41 = load i32, i32* %mode50, align 4, !dbg !5738
  %and51 = and i32 %41, 8, !dbg !5739
  %tobool52 = icmp ne i32 %and51, 0, !dbg !5739
  br i1 %tobool52, label %if.then53, label %if.end59, !dbg !5740

if.then53:                                        ; preds = %if.then29
  %42 = load i8*, i8** %packet, align 8, !dbg !5741
  %arrayidx54 = getelementptr i8, i8* %42, i64 4, !dbg !5741
  %43 = load i8, i8* %arrayidx54, align 1, !dbg !5741
  %conv55 = zext i8 %43 to i32, !dbg !5741
  %44 = load %struct.cytp_report_data*, %struct.cytp_report_data** %report_data.addr, align 8, !dbg !5742
  %contacts56 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %44, i32 0, i32 1, !dbg !5743
  %arrayidx57 = getelementptr [2 x %struct.cytp_contact], [2 x %struct.cytp_contact]* %contacts56, i64 0, i64 0, !dbg !5742
  %z58 = getelementptr inbounds %struct.cytp_contact, %struct.cytp_contact* %arrayidx57, i32 0, i32 2, !dbg !5744
  store i32 %conv55, i32* %z58, align 4, !dbg !5745
  br label %if.end59, !dbg !5742

if.end59:                                         ; preds = %if.then53, %if.then29
  %45 = load i8*, i8** %packet, align 8, !dbg !5746
  %arrayidx60 = getelementptr i8, i8* %45, i64 5, !dbg !5746
  %46 = load i8, i8* %arrayidx60, align 1, !dbg !5746
  %conv61 = zext i8 %46 to i32, !dbg !5746
  %and62 = and i32 %conv61, 240, !dbg !5747
  %shl63 = shl i32 %and62, 4, !dbg !5748
  %47 = load i8*, i8** %packet, align 8, !dbg !5749
  %arrayidx64 = getelementptr i8, i8* %47, i64 6, !dbg !5749
  %48 = load i8, i8* %arrayidx64, align 1, !dbg !5749
  %conv65 = zext i8 %48 to i32, !dbg !5749
  %or66 = or i32 %shl63, %conv65, !dbg !5750
  %49 = load %struct.cytp_report_data*, %struct.cytp_report_data** %report_data.addr, align 8, !dbg !5751
  %contacts67 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %49, i32 0, i32 1, !dbg !5752
  %arrayidx68 = getelementptr [2 x %struct.cytp_contact], [2 x %struct.cytp_contact]* %contacts67, i64 0, i64 1, !dbg !5751
  %x69 = getelementptr inbounds %struct.cytp_contact, %struct.cytp_contact* %arrayidx68, i32 0, i32 0, !dbg !5753
  store i32 %or66, i32* %x69, align 4, !dbg !5754
  %50 = load i8*, i8** %packet, align 8, !dbg !5755
  %arrayidx70 = getelementptr i8, i8* %50, i64 5, !dbg !5755
  %51 = load i8, i8* %arrayidx70, align 1, !dbg !5755
  %conv71 = zext i8 %51 to i32, !dbg !5755
  %and72 = and i32 %conv71, 15, !dbg !5756
  %shl73 = shl i32 %and72, 8, !dbg !5757
  %52 = load i8*, i8** %packet, align 8, !dbg !5758
  %arrayidx74 = getelementptr i8, i8* %52, i64 7, !dbg !5758
  %53 = load i8, i8* %arrayidx74, align 1, !dbg !5758
  %conv75 = zext i8 %53 to i32, !dbg !5758
  %or76 = or i32 %shl73, %conv75, !dbg !5759
  %54 = load %struct.cytp_report_data*, %struct.cytp_report_data** %report_data.addr, align 8, !dbg !5760
  %contacts77 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %54, i32 0, i32 1, !dbg !5761
  %arrayidx78 = getelementptr [2 x %struct.cytp_contact], [2 x %struct.cytp_contact]* %contacts77, i64 0, i64 1, !dbg !5760
  %y79 = getelementptr inbounds %struct.cytp_contact, %struct.cytp_contact* %arrayidx78, i32 0, i32 1, !dbg !5762
  store i32 %or76, i32* %y79, align 4, !dbg !5763
  %55 = load %struct.cytp_data*, %struct.cytp_data** %cytp.addr, align 8, !dbg !5764
  %mode80 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %55, i32 0, i32 2, !dbg !5766
  %56 = load i32, i32* %mode80, align 4, !dbg !5766
  %and81 = and i32 %56, 8, !dbg !5767
  %tobool82 = icmp ne i32 %and81, 0, !dbg !5767
  br i1 %tobool82, label %if.then83, label %if.end90, !dbg !5768

if.then83:                                        ; preds = %if.end59
  %57 = load %struct.cytp_report_data*, %struct.cytp_report_data** %report_data.addr, align 8, !dbg !5769
  %contacts84 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %57, i32 0, i32 1, !dbg !5770
  %arrayidx85 = getelementptr [2 x %struct.cytp_contact], [2 x %struct.cytp_contact]* %contacts84, i64 0, i64 0, !dbg !5769
  %z86 = getelementptr inbounds %struct.cytp_contact, %struct.cytp_contact* %arrayidx85, i32 0, i32 2, !dbg !5771
  %58 = load i32, i32* %z86, align 4, !dbg !5771
  %59 = load %struct.cytp_report_data*, %struct.cytp_report_data** %report_data.addr, align 8, !dbg !5772
  %contacts87 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %59, i32 0, i32 1, !dbg !5773
  %arrayidx88 = getelementptr [2 x %struct.cytp_contact], [2 x %struct.cytp_contact]* %contacts87, i64 0, i64 1, !dbg !5772
  %z89 = getelementptr inbounds %struct.cytp_contact, %struct.cytp_contact* %arrayidx88, i32 0, i32 2, !dbg !5774
  store i32 %58, i32* %z89, align 4, !dbg !5775
  br label %if.end90, !dbg !5772

if.end90:                                         ; preds = %if.then83, %if.end59
  br label %if.end91, !dbg !5776

if.end91:                                         ; preds = %if.end90, %if.else
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.end
  %60 = load i8, i8* %header_byte, align 1, !dbg !5777
  %conv93 = zext i8 %60 to i32, !dbg !5777
  %and94 = and i32 %conv93, 1, !dbg !5778
  %tobool95 = icmp ne i32 %and94, 0, !dbg !5779
  %61 = zext i1 %tobool95 to i64, !dbg !5779
  %cond96 = select i1 %tobool95, i32 1, i32 0, !dbg !5779
  %62 = load %struct.cytp_report_data*, %struct.cytp_report_data** %report_data.addr, align 8, !dbg !5780
  %left = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %62, i32 0, i32 2, !dbg !5781
  %63 = trunc i32 %cond96 to i8, !dbg !5782
  %bf.load97 = load i8, i8* %left, align 4, !dbg !5782
  %bf.value98 = and i8 %63, 1, !dbg !5782
  %bf.clear99 = and i8 %bf.load97, -2, !dbg !5782
  %bf.set100 = or i8 %bf.clear99, %bf.value98, !dbg !5782
  store i8 %bf.set100, i8* %left, align 4, !dbg !5782
  %bf.result.cast101 = zext i8 %bf.value98 to i32, !dbg !5782
  %64 = load i8, i8* %header_byte, align 1, !dbg !5783
  %conv102 = zext i8 %64 to i32, !dbg !5783
  %and103 = and i32 %conv102, 2, !dbg !5784
  %tobool104 = icmp ne i32 %and103, 0, !dbg !5785
  %65 = zext i1 %tobool104 to i64, !dbg !5785
  %cond105 = select i1 %tobool104, i32 1, i32 0, !dbg !5785
  %66 = load %struct.cytp_report_data*, %struct.cytp_report_data** %report_data.addr, align 8, !dbg !5786
  %right = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %66, i32 0, i32 2, !dbg !5787
  %67 = trunc i32 %cond105 to i8, !dbg !5788
  %bf.load106 = load i8, i8* %right, align 4, !dbg !5788
  %bf.value107 = and i8 %67, 1, !dbg !5788
  %bf.shl108 = shl i8 %bf.value107, 1, !dbg !5788
  %bf.clear109 = and i8 %bf.load106, -3, !dbg !5788
  %bf.set110 = or i8 %bf.clear109, %bf.shl108, !dbg !5788
  store i8 %bf.set110, i8* %right, align 4, !dbg !5788
  %bf.result.cast111 = zext i8 %bf.value107 to i32, !dbg !5788
  %68 = load %struct.cytp_report_data*, %struct.cytp_report_data** %report_data.addr, align 8, !dbg !5789
  %tap112 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %68, i32 0, i32 2, !dbg !5791
  %bf.load113 = load i8, i8* %tap112, align 4, !dbg !5791
  %bf.lshr = lshr i8 %bf.load113, 3, !dbg !5791
  %bf.clear114 = and i8 %bf.lshr, 1, !dbg !5791
  %bf.cast = zext i8 %bf.clear114 to i32, !dbg !5791
  %tobool115 = icmp ne i32 %bf.cast, 0, !dbg !5789
  br i1 %tobool115, label %if.then116, label %if.end120, !dbg !5792

if.then116:                                       ; preds = %if.end92
  %69 = load %struct.cytp_report_data*, %struct.cytp_report_data** %report_data.addr, align 8, !dbg !5793
  %left117 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %69, i32 0, i32 2, !dbg !5794
  %bf.load118 = load i8, i8* %left117, align 4, !dbg !5795
  %bf.clear119 = and i8 %bf.load118, -2, !dbg !5795
  store i8 %bf.clear119, i8* %left117, align 4, !dbg !5795
  br label %if.end120, !dbg !5793

if.end120:                                        ; preds = %if.then116, %if.end92
  ret i32 0, !dbg !5796
}

; Function Attrs: noredzone
declare dso_local i32 @input_mt_assign_slots(%struct.input_dev*, i32*, %struct.input_mt_pos*, i32, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_mt_slot(%struct.input_dev* %dev, i32 %slot) #0 !dbg !5797 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %slot.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5800, metadata !DIExpression()), !dbg !5801
  store i32 %slot, i32* %slot.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %slot.addr, metadata !5802, metadata !DIExpression()), !dbg !5803
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5804
  %1 = load i32, i32* %slot.addr, align 4, !dbg !5805
  call void @input_event(%struct.input_dev* %0, i32 3, i32 47, i32 %1) #8, !dbg !5806
  ret void, !dbg !5807
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @input_mt_report_slot_state(%struct.input_dev*, i32, i1 zeroext) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_abs(%struct.input_dev* %dev, i32 %code, i32 %value) #0 !dbg !5808 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5809, metadata !DIExpression()), !dbg !5810
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !5811, metadata !DIExpression()), !dbg !5812
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5813, metadata !DIExpression()), !dbg !5814
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5815
  %1 = load i32, i32* %code.addr, align 4, !dbg !5816
  %2 = load i32, i32* %value.addr, align 4, !dbg !5817
  call void @input_event(%struct.input_dev* %0, i32 3, i32 %1, i32 %2) #8, !dbg !5818
  ret void, !dbg !5819
}

; Function Attrs: noredzone
declare dso_local void @input_mt_sync_frame(%struct.input_dev*) #3

; Function Attrs: noredzone
declare dso_local void @input_mt_report_finger_count(%struct.input_dev*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_key(%struct.input_dev* %dev, i32 %code, i32 %value) #0 !dbg !5820 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5821, metadata !DIExpression()), !dbg !5822
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !5823, metadata !DIExpression()), !dbg !5824
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5825, metadata !DIExpression()), !dbg !5826
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5827
  %1 = load i32, i32* %code.addr, align 4, !dbg !5828
  %2 = load i32, i32* %value.addr, align 4, !dbg !5829
  %tobool = icmp ne i32 %2, 0, !dbg !5830
  %lnot = xor i1 %tobool, true, !dbg !5830
  %lnot1 = xor i1 %lnot, true, !dbg !5831
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5831
  call void @input_event(%struct.input_dev* %0, i32 1, i32 %1, i32 %lnot.ext) #8, !dbg !5832
  ret void, !dbg !5833
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_sync(%struct.input_dev* %dev) #0 !dbg !5834 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5835, metadata !DIExpression()), !dbg !5836
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5837
  call void @input_event(%struct.input_dev* %0, i32 0, i32 0, i32 0) #8, !dbg !5838
  ret void, !dbg !5839
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cypress_get_finger_count(i8 zeroext %header_byte) #0 !dbg !5840 {
entry:
  %retval = alloca i32, align 4
  %header_byte.addr = alloca i8, align 1
  %bits6_7 = alloca i8, align 1
  %finger_count = alloca i32, align 4
  store i8 %header_byte, i8* %header_byte.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %header_byte.addr, metadata !5843, metadata !DIExpression()), !dbg !5844
  call void @llvm.dbg.declare(metadata i8* %bits6_7, metadata !5845, metadata !DIExpression()), !dbg !5846
  call void @llvm.dbg.declare(metadata i32* %finger_count, metadata !5847, metadata !DIExpression()), !dbg !5848
  %0 = load i8, i8* %header_byte.addr, align 1, !dbg !5849
  %conv = zext i8 %0 to i32, !dbg !5849
  %shr = ashr i32 %conv, 6, !dbg !5850
  %conv1 = trunc i32 %shr to i8, !dbg !5849
  store i8 %conv1, i8* %bits6_7, align 1, !dbg !5851
  %1 = load i8, i8* %bits6_7, align 1, !dbg !5852
  %conv2 = zext i8 %1 to i32, !dbg !5852
  %and = and i32 %conv2, 3, !dbg !5853
  store i32 %and, i32* %finger_count, align 4, !dbg !5854
  %2 = load i32, i32* %finger_count, align 4, !dbg !5855
  %cmp = icmp eq i32 %2, 1, !dbg !5857
  br i1 %cmp, label %if.then, label %if.end, !dbg !5858

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !5859
  br label %return, !dbg !5859

if.end:                                           ; preds = %entry
  %3 = load i8, i8* %header_byte.addr, align 1, !dbg !5860
  %conv4 = zext i8 %3 to i32, !dbg !5860
  %and5 = and i32 %conv4, 32, !dbg !5862
  %tobool = icmp ne i32 %and5, 0, !dbg !5862
  br i1 %tobool, label %if.then6, label %if.end8, !dbg !5863

if.then6:                                         ; preds = %if.end
  %4 = load i32, i32* %finger_count, align 4, !dbg !5864
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb7
  ], !dbg !5866

sw.bb:                                            ; preds = %if.then6
  store i32 4, i32* %retval, align 4, !dbg !5867
  br label %return, !dbg !5867

sw.bb7:                                           ; preds = %if.then6
  store i32 5, i32* %retval, align 4, !dbg !5869
  br label %return, !dbg !5869

sw.default:                                       ; preds = %if.then6
  store i32 0, i32* %retval, align 4, !dbg !5870
  br label %return, !dbg !5870

if.end8:                                          ; preds = %if.end
  %5 = load i32, i32* %finger_count, align 4, !dbg !5871
  store i32 %5, i32* %retval, align 4, !dbg !5872
  br label %return, !dbg !5872

return:                                           ; preds = %if.end8, %sw.default, %sw.bb7, %sw.bb, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !5873
  ret i32 %6, !dbg !5873
}

; Function Attrs: noredzone
declare dso_local void @input_event(%struct.input_dev*, i32, i32, i32) #3

; Function Attrs: noredzone
declare dso_local i32 @ps2_command(%struct.ps2dev*, i8*, i32) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!161, !162, !163, !164}
!llvm.ident = !{!165}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cytp_resolution", scope: !2, file: !3, line: 36, type: !158, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !141, globals: !151, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/mouse/cypress_ps2.c", directory: "/home/lizy2001/genbc/linux")
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
!141 = !{!142, !144, !145, !146, !147, !149}
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !143, line: 148, baseType: !7)
!143 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!145 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!146 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !146)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!151 = !{!0, !152}
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "cytp_rate", scope: !2, file: !3, line: 35, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 48, elements: !156)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!156 = !{!157}
!157 = !DISubrange(count: 6)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 32, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 4)
!161 = !{i32 7, !"Dwarf Version", i32 4}
!162 = !{i32 2, !"Debug Info Version", i32 3}
!163 = !{i32 1, !"wchar_size", i32 2}
!164 = !{i32 1, !"Code Model", i32 2}
!165 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!166 = distinct !DISubprogram(name: "cypress_detect", scope: !3, file: !3, line: 201, type: !167, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !366)
!167 = !DISubroutineType(types: !168)
!168 = !{!145, !169, !513}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse", file: !87, line: 89, size: 3648, elements: !171)
!171 = !{!172, !173, !3836, !3912, !3919, !3920, !3921, !3939, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3965, !3969, !3970, !3974, !3975, !3976, !3980, !3981, !3982, !3983}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !170, file: !87, line: 90, baseType: !144, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !170, file: !87, line: 91, baseType: !174, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !176, line: 131, size: 10432, elements: !177)
!176 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!177 = !{!178, !182, !183, !184, !195, !200, !201, !205, !206, !207, !208, !209, !210, !214, !215, !216, !217, !218, !219, !238, !243, !3027, !3030, !3031, !3043, !3045, !3066, !3076, !3077, !3078, !3079, !3080, !3084, !3088, !3092, !3096, !3174, !3175, !3176, !3177, !3178, !3827, !3828, !3829, !3830, !3831, !3833, !3834}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !175, file: !176, line: 132, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!181 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !175, file: !176, line: 133, baseType: !179, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !175, file: !176, line: 134, baseType: !179, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !175, file: !176, line: 135, baseType: !185, size: 64, offset: 192)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !186, line: 59, size: 64, elements: !187)
!186 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!187 = !{!188, !192, !193, !194}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !185, file: !186, line: 60, baseType: !189, size: 16)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !190, line: 24, baseType: !191)
!190 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!191 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !185, file: !186, line: 61, baseType: !189, size: 16, offset: 16)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !185, file: !186, line: 62, baseType: !189, size: 16, offset: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !185, file: !186, line: 63, baseType: !189, size: 16, offset: 48)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !175, file: !176, line: 137, baseType: !196, size: 64, offset: 256)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 64, elements: !198)
!197 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!198 = !{!199}
!199 = !DISubrange(count: 1)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !175, file: !176, line: 139, baseType: !196, size: 64, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !175, file: !176, line: 140, baseType: !202, size: 768, offset: 384)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 768, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 12)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !175, file: !176, line: 141, baseType: !196, size: 64, offset: 1152)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !175, file: !176, line: 142, baseType: !196, size: 64, offset: 1216)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !175, file: !176, line: 143, baseType: !196, size: 64, offset: 1280)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !175, file: !176, line: 144, baseType: !196, size: 64, offset: 1344)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !175, file: !176, line: 145, baseType: !196, size: 64, offset: 1408)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !175, file: !176, line: 146, baseType: !211, size: 128, offset: 1472)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 128, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 2)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !175, file: !176, line: 147, baseType: !196, size: 64, offset: 1600)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !175, file: !176, line: 149, baseType: !7, size: 32, offset: 1664)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !175, file: !176, line: 151, baseType: !7, size: 32, offset: 1696)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !175, file: !176, line: 152, baseType: !7, size: 32, offset: 1728)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !175, file: !176, line: 153, baseType: !144, size: 64, offset: 1792)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !175, file: !176, line: 155, baseType: !220, size: 64, offset: 1856)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!145, !174, !223, !237}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !186, line: 114, size: 320, elements: !226)
!226 = !{!227, !229, !230, !231, !233}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !225, file: !186, line: 116, baseType: !228, size: 8)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !190, line: 21, baseType: !150)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !225, file: !186, line: 117, baseType: !228, size: 8, offset: 8)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !225, file: !186, line: 118, baseType: !189, size: 16, offset: 16)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !225, file: !186, line: 119, baseType: !232, size: 32, offset: 32)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !190, line: 27, baseType: !7)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !225, file: !186, line: 120, baseType: !234, size: 256, offset: 64)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 256, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 32)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !175, file: !176, line: 158, baseType: !239, size: 64, offset: 1920)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!145, !174, !242}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !175, file: !176, line: 161, baseType: !244, size: 64, offset: 1984)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !176, line: 534, size: 896, elements: !246)
!246 = !{!247, !316, !320, !324, !330, !331, !335, !336, !337, !373, !374, !375}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !245, file: !176, line: 535, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!145, !174, !251, !251}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !186, line: 450, size: 384, elements: !253)
!253 = !{!254, !255, !258, !259, !264, !269}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !252, file: !186, line: 451, baseType: !189, size: 16)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !252, file: !186, line: 452, baseType: !256, size: 16, offset: 16)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !190, line: 23, baseType: !257)
!257 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !252, file: !186, line: 453, baseType: !189, size: 16, offset: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !252, file: !186, line: 454, baseType: !260, size: 32, offset: 48)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !186, line: 316, size: 32, elements: !261)
!261 = !{!262, !263}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !260, file: !186, line: 317, baseType: !189, size: 16)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !260, file: !186, line: 318, baseType: !189, size: 16, offset: 16)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !252, file: !186, line: 455, baseType: !265, size: 32, offset: 80)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !186, line: 306, size: 32, elements: !266)
!266 = !{!267, !268}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !265, file: !186, line: 307, baseType: !189, size: 16)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !265, file: !186, line: 308, baseType: !189, size: 16, offset: 16)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !252, file: !186, line: 463, baseType: !270, size: 256, offset: 128)
!270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !252, file: !186, line: 457, size: 256, elements: !271)
!271 = !{!272, !283, !289, !301, !311}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !270, file: !186, line: 458, baseType: !273, size: 80)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !186, line: 345, size: 80, elements: !274)
!274 = !{!275, !276}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !273, file: !186, line: 346, baseType: !256, size: 16)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !273, file: !186, line: 347, baseType: !277, size: 64, offset: 16)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !186, line: 333, size: 64, elements: !278)
!278 = !{!279, !280, !281, !282}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !277, file: !186, line: 334, baseType: !189, size: 16)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !277, file: !186, line: 335, baseType: !189, size: 16, offset: 16)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !277, file: !186, line: 336, baseType: !189, size: 16, offset: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !277, file: !186, line: 337, baseType: !189, size: 16, offset: 48)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !270, file: !186, line: 459, baseType: !284, size: 96)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !186, line: 356, size: 96, elements: !285)
!285 = !{!286, !287, !288}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !284, file: !186, line: 357, baseType: !256, size: 16)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !284, file: !186, line: 358, baseType: !256, size: 16, offset: 16)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !284, file: !186, line: 359, baseType: !277, size: 64, offset: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !270, file: !186, line: 460, baseType: !290, size: 256)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !186, line: 401, size: 256, elements: !291)
!291 = !{!292, !293, !294, !295, !296, !297, !298, !299}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !290, file: !186, line: 402, baseType: !189, size: 16)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !290, file: !186, line: 403, baseType: !189, size: 16, offset: 16)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !290, file: !186, line: 404, baseType: !256, size: 16, offset: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !290, file: !186, line: 405, baseType: !256, size: 16, offset: 48)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !290, file: !186, line: 406, baseType: !189, size: 16, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !290, file: !186, line: 408, baseType: !277, size: 64, offset: 80)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !290, file: !186, line: 410, baseType: !232, size: 32, offset: 160)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !290, file: !186, line: 411, baseType: !300, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !270, file: !186, line: 461, baseType: !302, size: 192)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 192, elements: !212)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !186, line: 372, size: 96, elements: !304)
!304 = !{!305, !306, !307, !308, !309, !310}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !303, file: !186, line: 373, baseType: !189, size: 16)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !303, file: !186, line: 374, baseType: !189, size: 16, offset: 16)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !303, file: !186, line: 376, baseType: !256, size: 16, offset: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !303, file: !186, line: 377, baseType: !256, size: 16, offset: 48)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !303, file: !186, line: 379, baseType: !189, size: 16, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !303, file: !186, line: 380, baseType: !256, size: 16, offset: 80)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !270, file: !186, line: 462, baseType: !312, size: 32)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !186, line: 422, size: 32, elements: !313)
!313 = !{!314, !315}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !312, file: !186, line: 423, baseType: !189, size: 16)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !312, file: !186, line: 424, baseType: !189, size: 16, offset: 16)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !245, file: !176, line: 537, baseType: !317, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!145, !174, !145}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !245, file: !176, line: 539, baseType: !321, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!145, !174, !145, !145}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !245, file: !176, line: 540, baseType: !325, size: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !174, !328}
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !329, line: 19, baseType: !189)
!329 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!330 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !245, file: !176, line: 541, baseType: !325, size: 64, offset: 256)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !245, file: !176, line: 543, baseType: !332, size: 64, offset: 320)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !244}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !245, file: !176, line: 545, baseType: !144, size: 64, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !245, file: !176, line: 547, baseType: !211, size: 128, offset: 448)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !245, file: !176, line: 549, baseType: !338, size: 192, offset: 576)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !339, line: 53, size: 192, elements: !340)
!339 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!340 = !{!341, !351, !367}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !338, file: !339, line: 54, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !343, line: 13, baseType: !344)
!343 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !143, line: 175, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 173, size: 64, elements: !346)
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !345, file: !143, line: 174, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !329, line: 22, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !190, line: 30, baseType: !350)
!350 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !338, file: !339, line: 55, baseType: !352, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !353, line: 83, baseType: !354)
!353 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !353, line: 71, elements: !355)
!355 = !{!356}
!356 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !353, line: 72, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !354, file: !353, line: 72, elements: !358)
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !357, file: !353, line: 73, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !353, line: 20, elements: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !360, file: !353, line: 21, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !364, line: 25, baseType: !365)
!364 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !364, line: 25, elements: !366)
!366 = !{}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !338, file: !339, line: 59, baseType: !368, size: 128, offset: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !143, line: 178, size: 128, elements: !369)
!369 = !{!370, !372}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !368, file: !143, line: 179, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !368, file: !143, line: 179, baseType: !371, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !245, file: !176, line: 551, baseType: !145, size: 32, offset: 768)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !245, file: !176, line: 552, baseType: !251, size: 64, offset: 832)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !245, file: !176, line: 553, baseType: !376, offset: 896)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, elements: !2243)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !379)
!379 = !{!380, !398, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3010, !3011, !3020, !3021, !3022, !3023, !3024, !3025, !3026}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !378, file: !31, line: 920, baseType: !381, size: 128)
!381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !378, file: !31, line: 917, size: 128, elements: !382)
!382 = !{!383, !389}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !381, file: !31, line: 918, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !385, line: 58, size: 64, elements: !386)
!385 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!386 = !{!387}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !384, file: !385, line: 59, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !381, file: !31, line: 919, baseType: !390, size: 128, align: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !143, line: 216, size: 128, align: 64, elements: !391)
!391 = !{!392, !394}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !390, file: !143, line: 217, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !390, file: !143, line: 218, baseType: !395, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !393}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !378, file: !31, line: 921, baseType: !399, size: 128, offset: 128)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !400, line: 8, size: 128, elements: !401)
!400 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!401 = !{!402, !406}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !399, file: !400, line: 9, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !405, line: 18, flags: DIFlagFwdDecl)
!405 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!406 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !399, file: !400, line: 10, baseType: !407, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !405, line: 89, size: 1536, elements: !409)
!409 = !{!410, !411, !421, !429, !430, !448, !2960, !2962, !2974, !2975, !2976, !2977, !2978, !2984, !2985, !2986}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !408, file: !405, line: 91, baseType: !7, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !408, file: !405, line: 92, baseType: !412, size: 32, offset: 32)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !413, line: 277, baseType: !414)
!413 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !413, line: 277, size: 32, elements: !415)
!415 = !{!416}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !414, file: !413, line: 277, baseType: !417, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !413, line: 70, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !413, line: 65, size: 32, elements: !419)
!419 = !{!420}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !418, file: !413, line: 66, baseType: !7, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !408, file: !405, line: 93, baseType: !422, size: 128, offset: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !423, line: 38, size: 128, elements: !424)
!423 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!424 = !{!425, !427}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !422, file: !423, line: 39, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !422, file: !423, line: 39, baseType: !428, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !408, file: !405, line: 94, baseType: !407, size: 64, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !408, file: !405, line: 95, baseType: !431, size: 128, offset: 256)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !405, line: 47, size: 128, elements: !432)
!432 = !{!433, !446}
!433 = !DIDerivedType(tag: DW_TAG_member, scope: !431, file: !405, line: 48, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !431, file: !405, line: 48, size: 64, elements: !435)
!435 = !{!436, !442}
!436 = !DIDerivedType(tag: DW_TAG_member, scope: !434, file: !405, line: 49, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !434, file: !405, line: 49, size: 64, elements: !438)
!438 = !{!439, !441}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !437, file: !405, line: 50, baseType: !440, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !329, line: 21, baseType: !232)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !437, file: !405, line: 50, baseType: !440, size: 32, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !434, file: !405, line: 52, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !329, line: 23, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !190, line: 31, baseType: !445)
!445 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !431, file: !405, line: 54, baseType: !447, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !408, file: !405, line: 96, baseType: !449, size: 64, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !451)
!451 = !{!452, !454, !455, !464, !471, !472, !625, !2671, !2672, !2673, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2936, !2944, !2945, !2946, !2956, !2957, !2958, !2959}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !450, file: !31, line: 611, baseType: !453, size: 16)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !143, line: 19, baseType: !191)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !450, file: !31, line: 612, baseType: !191, size: 16, offset: 16)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !450, file: !31, line: 613, baseType: !456, size: 32, offset: 32)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !457, line: 23, baseType: !458)
!457 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !457, line: 21, size: 32, elements: !459)
!459 = !{!460}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !458, file: !457, line: 22, baseType: !461, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !143, line: 32, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !463, line: 49, baseType: !7)
!463 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!464 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !450, file: !31, line: 614, baseType: !465, size: 32, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !457, line: 28, baseType: !466)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !457, line: 26, size: 32, elements: !467)
!467 = !{!468}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !466, file: !457, line: 27, baseType: !469, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !143, line: 33, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !463, line: 50, baseType: !7)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !450, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !450, file: !31, line: 622, baseType: !473, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !476)
!476 = !{!477, !481, !494, !498, !504, !509, !515, !519, !523, !527, !531, !532, !538, !542, !566, !595, !605, !611, !616, !620, !621}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !475, file: !31, line: 1865, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!407, !449, !407, !7}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !475, file: !31, line: 1866, baseType: !482, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!179, !407, !449, !485}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !487, line: 10, size: 128, elements: !488)
!487 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!488 = !{!489, !493}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !486, file: !487, line: 11, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !144}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !486, file: !487, line: 12, baseType: !144, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !475, file: !31, line: 1867, baseType: !495, size: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!145, !449, !145}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !475, file: !31, line: 1868, baseType: !499, size: 64, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!502, !449, !145}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !475, file: !31, line: 1870, baseType: !505, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!145, !407, !508, !145}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !475, file: !31, line: 1872, baseType: !510, size: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!145, !449, !407, !453, !513}
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !143, line: 30, baseType: !514)
!514 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !475, file: !31, line: 1873, baseType: !516, size: 64, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!145, !407, !449, !407}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !475, file: !31, line: 1874, baseType: !520, size: 64, offset: 448)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!145, !449, !407}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !475, file: !31, line: 1875, baseType: !524, size: 64, offset: 512)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!145, !449, !407, !179}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !475, file: !31, line: 1876, baseType: !528, size: 64, offset: 576)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!145, !449, !407, !453}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !475, file: !31, line: 1877, baseType: !520, size: 64, offset: 640)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !475, file: !31, line: 1878, baseType: !533, size: 64, offset: 704)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!145, !449, !407, !453, !536}
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !143, line: 16, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !143, line: 13, baseType: !440)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !475, file: !31, line: 1879, baseType: !539, size: 64, offset: 768)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!145, !449, !407, !449, !407, !7}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !475, file: !31, line: 1881, baseType: !543, size: 64, offset: 832)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!145, !407, !546}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !548)
!548 = !{!549, !550, !551, !552, !553, !556, !563, !564, !565}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !547, file: !31, line: 220, baseType: !7, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !547, file: !31, line: 221, baseType: !453, size: 16, offset: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !547, file: !31, line: 222, baseType: !456, size: 32, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !547, file: !31, line: 223, baseType: !465, size: 32, offset: 96)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !547, file: !31, line: 224, baseType: !554, size: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !143, line: 46, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !463, line: 88, baseType: !350)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !547, file: !31, line: 225, baseType: !557, size: 128, offset: 192)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !558, line: 13, size: 128, elements: !559)
!558 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!559 = !{!560, !562}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !557, file: !558, line: 14, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !558, line: 8, baseType: !349)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !557, file: !558, line: 15, baseType: !146, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !547, file: !31, line: 226, baseType: !557, size: 128, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !547, file: !31, line: 227, baseType: !557, size: 128, offset: 448)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !547, file: !31, line: 234, baseType: !377, size: 64, offset: 576)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !475, file: !31, line: 1882, baseType: !567, size: 64, offset: 896)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!145, !570, !572, !440, !7}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !574, line: 22, size: 1152, elements: !575)
!574 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!575 = !{!576, !577, !578, !579, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !573, file: !574, line: 23, baseType: !440, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !573, file: !574, line: 24, baseType: !453, size: 16, offset: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !573, file: !574, line: 25, baseType: !7, size: 32, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !573, file: !574, line: 26, baseType: !580, size: 32, offset: 96)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !143, line: 104, baseType: !440)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !573, file: !574, line: 27, baseType: !443, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !573, file: !574, line: 28, baseType: !443, size: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !573, file: !574, line: 37, baseType: !443, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !573, file: !574, line: 38, baseType: !536, size: 32, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !573, file: !574, line: 39, baseType: !536, size: 32, offset: 352)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !573, file: !574, line: 40, baseType: !456, size: 32, offset: 384)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !573, file: !574, line: 41, baseType: !465, size: 32, offset: 416)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !573, file: !574, line: 42, baseType: !554, size: 64, offset: 448)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !573, file: !574, line: 43, baseType: !557, size: 128, offset: 512)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !573, file: !574, line: 44, baseType: !557, size: 128, offset: 640)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !573, file: !574, line: 45, baseType: !557, size: 128, offset: 768)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !573, file: !574, line: 46, baseType: !557, size: 128, offset: 896)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !573, file: !574, line: 47, baseType: !443, size: 64, offset: 1024)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !573, file: !574, line: 48, baseType: !443, size: 64, offset: 1088)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !475, file: !31, line: 1883, baseType: !596, size: 64, offset: 960)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!599, !407, !508, !602}
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !143, line: 60, baseType: !600)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !463, line: 73, baseType: !601)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !463, line: 15, baseType: !146)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !143, line: 55, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !463, line: 72, baseType: !604)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !463, line: 16, baseType: !197)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !475, file: !31, line: 1884, baseType: !606, size: 64, offset: 1024)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!145, !449, !609, !443, !443}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !475, file: !31, line: 1886, baseType: !612, size: 64, offset: 1088)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!145, !449, !615, !145}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !475, file: !31, line: 1887, baseType: !617, size: 64, offset: 1152)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!145, !449, !407, !377, !7, !453}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !475, file: !31, line: 1890, baseType: !528, size: 64, offset: 1216)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !475, file: !31, line: 1891, baseType: !622, size: 64, offset: 1280)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!145, !449, !502, !145}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !450, file: !31, line: 623, baseType: !626, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !628)
!628 = !{!629, !630, !631, !632, !633, !634, !686, !2279, !2361, !2444, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2460, !2464, !2465, !2468, !2469, !2472, !2473, !2474, !2515, !2541, !2542, !2543, !2544, !2545, !2546, !2549, !2551, !2558, !2559, !2561, !2562, !2563, !2622, !2623, !2638, !2639, !2640, !2641, !2642, !2645, !2646, !2647, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !627, file: !31, line: 1417, baseType: !368, size: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !627, file: !31, line: 1418, baseType: !536, size: 32, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !627, file: !31, line: 1419, baseType: !150, size: 8, offset: 160)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !627, file: !31, line: 1420, baseType: !197, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !627, file: !31, line: 1421, baseType: !554, size: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !627, file: !31, line: 1422, baseType: !635, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !637)
!637 = !{!638, !639, !640, !647, !651, !655, !659, !663, !664, !674, !677, !678, !679, !683, !684, !685}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !636, file: !31, line: 2229, baseType: !179, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !636, file: !31, line: 2230, baseType: !145, size: 32, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !636, file: !31, line: 2238, baseType: !641, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!145, !644}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !646, line: 28, flags: DIFlagFwdDecl)
!646 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!647 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !636, file: !31, line: 2239, baseType: !648, size: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!650 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !636, file: !31, line: 2240, baseType: !652, size: 64, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!407, !635, !145, !179, !144}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !636, file: !31, line: 2242, baseType: !656, size: 64, offset: 320)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !626}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !636, file: !31, line: 2243, baseType: !660, size: 64, offset: 384)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !662, line: 76, flags: DIFlagFwdDecl)
!662 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!663 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !636, file: !31, line: 2244, baseType: !635, size: 64, offset: 448)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !636, file: !31, line: 2245, baseType: !665, size: 64, offset: 512)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !143, line: 182, size: 64, elements: !666)
!666 = !{!667}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !665, file: !143, line: 183, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !143, line: 186, size: 128, elements: !670)
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !669, file: !143, line: 187, baseType: !668, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !669, file: !143, line: 187, baseType: !673, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !636, file: !31, line: 2247, baseType: !675, offset: 576)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !676, line: 187, elements: !366)
!676 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!677 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !636, file: !31, line: 2248, baseType: !675, offset: 576)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !636, file: !31, line: 2249, baseType: !675, offset: 576)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !636, file: !31, line: 2250, baseType: !680, offset: 576)
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, elements: !681)
!681 = !{!682}
!682 = !DISubrange(count: 3)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !636, file: !31, line: 2252, baseType: !675, offset: 576)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !636, file: !31, line: 2253, baseType: !675, offset: 576)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !636, file: !31, line: 2254, baseType: !675, offset: 576)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !627, file: !31, line: 1423, baseType: !687, size: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !689)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !690)
!690 = !{!691, !695, !699, !700, !704, !710, !714, !715, !716, !720, !724, !725, !726, !727, !733, !738, !739, !746, !747, !748, !749, !2263, !2278}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !689, file: !31, line: 1936, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!449, !626}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !689, file: !31, line: 1937, baseType: !696, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{null, !449}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !689, file: !31, line: 1938, baseType: !696, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !689, file: !31, line: 1940, baseType: !701, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{null, !449, !145}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !689, file: !31, line: 1941, baseType: !705, size: 64, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!145, !449, !708}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 289, flags: DIFlagFwdDecl)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !689, file: !31, line: 1942, baseType: !711, size: 64, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!145, !449}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !689, file: !31, line: 1943, baseType: !696, size: 64, offset: 384)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !689, file: !31, line: 1944, baseType: !656, size: 64, offset: 448)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !689, file: !31, line: 1945, baseType: !717, size: 64, offset: 512)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!145, !626, !145}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !689, file: !31, line: 1946, baseType: !721, size: 64, offset: 576)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!145, !626}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !689, file: !31, line: 1947, baseType: !721, size: 64, offset: 640)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !689, file: !31, line: 1948, baseType: !721, size: 64, offset: 704)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !689, file: !31, line: 1949, baseType: !721, size: 64, offset: 768)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !689, file: !31, line: 1950, baseType: !728, size: 64, offset: 832)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!145, !407, !731}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !689, file: !31, line: 1951, baseType: !734, size: 64, offset: 896)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!145, !626, !737, !508}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !689, file: !31, line: 1952, baseType: !656, size: 64, offset: 960)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !689, file: !31, line: 1954, baseType: !740, size: 64, offset: 1024)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!145, !743, !407}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !745, line: 539, flags: DIFlagFwdDecl)
!745 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!746 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !689, file: !31, line: 1955, baseType: !740, size: 64, offset: 1088)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !689, file: !31, line: 1956, baseType: !740, size: 64, offset: 1152)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !689, file: !31, line: 1957, baseType: !740, size: 64, offset: 1216)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !689, file: !31, line: 1963, baseType: !750, size: 64, offset: 1280)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!145, !626, !753, !142}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !755, line: 68, size: 512, align: 128, elements: !756)
!755 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!756 = !{!757, !758, !2255, !2262}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !754, file: !755, line: 69, baseType: !197, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, scope: !754, file: !755, line: 77, baseType: !759, size: 320, offset: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !754, file: !755, line: 77, size: 320, elements: !760)
!760 = !{!761, !939, !944, !972, !980, !986, !2247, !2254}
!761 = !DIDerivedType(tag: DW_TAG_member, scope: !759, file: !755, line: 78, baseType: !762, size: 320)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !759, file: !755, line: 78, size: 320, elements: !763)
!763 = !{!764, !765, !937, !938}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !762, file: !755, line: 84, baseType: !368, size: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !762, file: !755, line: 86, baseType: !766, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !768)
!768 = !{!769, !770, !777, !778, !783, !798, !807, !808, !809, !810, !930, !931, !934, !935, !936}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !767, file: !31, line: 452, baseType: !449, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !767, file: !31, line: 453, baseType: !771, size: 128, offset: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !772, line: 292, size: 128, elements: !773)
!772 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!773 = !{!774, !775, !776}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !771, file: !772, line: 293, baseType: !352)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !771, file: !772, line: 295, baseType: !142, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !771, file: !772, line: 296, baseType: !144, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !767, file: !31, line: 454, baseType: !142, size: 32, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !767, file: !31, line: 455, baseType: !779, size: 32, offset: 224)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !143, line: 168, baseType: !780)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 166, size: 32, elements: !781)
!781 = !{!782}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !780, file: !143, line: 167, baseType: !145, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !767, file: !31, line: 460, baseType: !784, size: 128, offset: 256)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !785, line: 125, size: 128, elements: !786)
!785 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!786 = !{!787, !797}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !784, file: !785, line: 126, baseType: !788, size: 64)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !785, line: 31, size: 64, elements: !789)
!789 = !{!790}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !788, file: !785, line: 32, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !785, line: 24, size: 192, align: 64, elements: !793)
!793 = !{!794, !795, !796}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !792, file: !785, line: 25, baseType: !197, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !792, file: !785, line: 26, baseType: !791, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !792, file: !785, line: 27, baseType: !791, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !784, file: !785, line: 127, baseType: !791, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !767, file: !31, line: 461, baseType: !799, size: 256, offset: 384)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !800, line: 35, size: 256, elements: !801)
!800 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!801 = !{!802, !803, !804, !806}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !799, file: !800, line: 36, baseType: !342, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !799, file: !800, line: 42, baseType: !342, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !799, file: !800, line: 46, baseType: !805, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !353, line: 29, baseType: !360)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !799, file: !800, line: 47, baseType: !368, size: 128, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !767, file: !31, line: 462, baseType: !197, size: 64, offset: 640)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !767, file: !31, line: 463, baseType: !197, size: 64, offset: 704)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !767, file: !31, line: 464, baseType: !197, size: 64, offset: 768)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !767, file: !31, line: 465, baseType: !811, size: 64, offset: 832)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !813)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !814)
!814 = !{!815, !819, !823, !827, !831, !835, !841, !847, !851, !856, !860, !864, !868, !894, !898, !904, !905, !906, !910, !915, !919, !926}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !813, file: !31, line: 368, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!145, !753, !708}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !813, file: !31, line: 369, baseType: !820, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!145, !377, !753}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !813, file: !31, line: 372, baseType: !824, size: 64, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!145, !766, !708}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !813, file: !31, line: 375, baseType: !828, size: 64, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!145, !753}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !813, file: !31, line: 381, baseType: !832, size: 64, offset: 256)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!145, !377, !766, !371, !7}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !813, file: !31, line: 383, baseType: !836, size: 64, offset: 320)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !839}
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !813, file: !31, line: 385, baseType: !842, size: 64, offset: 384)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!145, !377, !766, !554, !7, !7, !845, !846}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !813, file: !31, line: 388, baseType: !848, size: 64, offset: 448)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!145, !377, !766, !554, !7, !7, !753, !144}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !813, file: !31, line: 393, baseType: !852, size: 64, offset: 512)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!855, !766, !855}
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !143, line: 125, baseType: !443)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !813, file: !31, line: 394, baseType: !857, size: 64, offset: 576)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !753, !7, !7}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !813, file: !31, line: 395, baseType: !861, size: 64, offset: 640)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!145, !753, !142}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !813, file: !31, line: 396, baseType: !865, size: 64, offset: 704)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !753}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !813, file: !31, line: 397, baseType: !869, size: 64, offset: 768)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!599, !872, !892}
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !874)
!874 = !{!875, !876, !877, !881, !882, !883, !884, !885}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !873, file: !31, line: 321, baseType: !377, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !873, file: !31, line: 326, baseType: !554, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !873, file: !31, line: 327, baseType: !878, size: 64, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{null, !872, !146, !146}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !873, file: !31, line: 328, baseType: !144, size: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !873, file: !31, line: 329, baseType: !145, size: 32, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !873, file: !31, line: 330, baseType: !328, size: 16, offset: 288)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !873, file: !31, line: 331, baseType: !328, size: 16, offset: 304)
!885 = !DIDerivedType(tag: DW_TAG_member, scope: !873, file: !31, line: 332, baseType: !886, size: 64, offset: 320)
!886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !873, file: !31, line: 332, size: 64, elements: !887)
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !886, file: !31, line: 333, baseType: !7, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !886, file: !31, line: 334, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !813, file: !31, line: 402, baseType: !895, size: 64, offset: 832)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{!145, !766, !753, !753, !5}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !813, file: !31, line: 404, baseType: !899, size: 64, offset: 896)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!513, !753, !902}
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !903, line: 305, baseType: !7)
!903 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!904 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !813, file: !31, line: 405, baseType: !865, size: 64, offset: 960)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !813, file: !31, line: 406, baseType: !828, size: 64, offset: 1024)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !813, file: !31, line: 407, baseType: !907, size: 64, offset: 1088)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!145, !753, !197, !197}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !813, file: !31, line: 409, baseType: !911, size: 64, offset: 1152)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{null, !753, !914, !914}
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !813, file: !31, line: 410, baseType: !916, size: 64, offset: 1216)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!145, !766, !753}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !813, file: !31, line: 413, baseType: !920, size: 64, offset: 1280)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!145, !923, !377, !925}
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !813, file: !31, line: 415, baseType: !927, size: 64, offset: 1344)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{null, !377}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !767, file: !31, line: 466, baseType: !197, size: 64, offset: 896)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !767, file: !31, line: 467, baseType: !932, size: 32, offset: 960)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !933, line: 8, baseType: !440)
!933 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!934 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !767, file: !31, line: 468, baseType: !352, offset: 992)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !767, file: !31, line: 469, baseType: !368, size: 128, offset: 1024)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !767, file: !31, line: 470, baseType: !144, size: 64, offset: 1152)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !762, file: !755, line: 87, baseType: !197, size: 64, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !762, file: !755, line: 94, baseType: !197, size: 64, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_member, scope: !759, file: !755, line: 96, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !759, file: !755, line: 96, size: 64, elements: !941)
!941 = !{!942}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !940, file: !755, line: 101, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !143, line: 143, baseType: !443)
!944 = !DIDerivedType(tag: DW_TAG_member, scope: !759, file: !755, line: 103, baseType: !945, size: 320)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !759, file: !755, line: 103, size: 320, elements: !946)
!946 = !{!947, !957, !960, !961}
!947 = !DIDerivedType(tag: DW_TAG_member, scope: !945, file: !755, line: 104, baseType: !948, size: 128)
!948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !945, file: !755, line: 104, size: 128, elements: !949)
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !948, file: !755, line: 105, baseType: !368, size: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, scope: !948, file: !755, line: 106, baseType: !952, size: 128)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !948, file: !755, line: 106, size: 128, elements: !953)
!953 = !{!954, !955, !956}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !952, file: !755, line: 107, baseType: !753, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !952, file: !755, line: 109, baseType: !145, size: 32, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !952, file: !755, line: 110, baseType: !145, size: 32, offset: 96)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !945, file: !755, line: 117, baseType: !958, size: 64, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !755, line: 117, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !945, file: !755, line: 119, baseType: !144, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, scope: !945, file: !755, line: 120, baseType: !962, size: 64, offset: 256)
!962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !945, file: !755, line: 120, size: 64, elements: !963)
!963 = !{!964, !965, !966}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !962, file: !755, line: 121, baseType: !144, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !962, file: !755, line: 122, baseType: !197, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !962, file: !755, line: 123, baseType: !967, size: 32)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !962, file: !755, line: 123, size: 32, elements: !968)
!968 = !{!969, !970, !971}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !967, file: !755, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !967, file: !755, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !967, file: !755, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!972 = !DIDerivedType(tag: DW_TAG_member, scope: !759, file: !755, line: 130, baseType: !973, size: 192)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !759, file: !755, line: 130, size: 192, elements: !974)
!974 = !{!975, !976, !977, !978, !979}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !973, file: !755, line: 131, baseType: !197, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !973, file: !755, line: 134, baseType: !150, size: 8, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !973, file: !755, line: 135, baseType: !150, size: 8, offset: 72)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !973, file: !755, line: 136, baseType: !779, size: 32, offset: 96)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !973, file: !755, line: 137, baseType: !7, size: 32, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, scope: !759, file: !755, line: 139, baseType: !981, size: 256)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !759, file: !755, line: 139, size: 256, elements: !982)
!982 = !{!983, !984, !985}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !981, file: !755, line: 140, baseType: !197, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !981, file: !755, line: 141, baseType: !779, size: 32, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !981, file: !755, line: 143, baseType: !368, size: 128, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, scope: !759, file: !755, line: 145, baseType: !987, size: 256)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !759, file: !755, line: 145, size: 256, elements: !988)
!988 = !{!989, !990, !992, !993, !2246}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !987, file: !755, line: 146, baseType: !197, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !987, file: !755, line: 147, baseType: !991, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !745, line: 509, baseType: !753)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !987, file: !755, line: 148, baseType: !197, size: 64, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, scope: !987, file: !755, line: 149, baseType: !994, size: 64, offset: 192)
!994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !987, file: !755, line: 149, size: 64, elements: !995)
!995 = !{!996, !2245}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !994, file: !755, line: 150, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !755, line: 388, size: 7296, elements: !999)
!999 = !{!1000, !2241}
!1000 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !755, line: 389, baseType: !1001, size: 7296)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !998, file: !755, line: 389, size: 7296, elements: !1002)
!1002 = !{!1003, !1041, !1042, !1043, !1047, !1048, !1049, !1050, !1051, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1092, !1098, !1101, !1139, !1140, !2225, !2226, !2229, !2230, !2231, !2234, !2235, !2236, !2239, !2240}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1001, file: !755, line: 390, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !755, line: 305, size: 1472, elements: !1006)
!1006 = !{!1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1021, !1022, !1027, !1028, !1031, !1035, !1036, !1037, !1038, !1039}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1005, file: !755, line: 308, baseType: !197, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1005, file: !755, line: 309, baseType: !197, size: 64, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1005, file: !755, line: 313, baseType: !1004, size: 64, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1005, file: !755, line: 313, baseType: !1004, size: 64, offset: 192)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1005, file: !755, line: 315, baseType: !792, size: 192, align: 64, offset: 256)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1005, file: !755, line: 323, baseType: !197, size: 64, offset: 448)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1005, file: !755, line: 327, baseType: !997, size: 64, offset: 512)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1005, file: !755, line: 333, baseType: !1015, size: 64, offset: 576)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !745, line: 284, baseType: !1016)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !745, line: 284, size: 64, elements: !1017)
!1017 = !{!1018}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1016, file: !745, line: 284, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1020, line: 19, baseType: !197)
!1020 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1005, file: !755, line: 334, baseType: !197, size: 64, offset: 640)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1005, file: !755, line: 343, baseType: !1023, size: 256, offset: 704)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !755, line: 340, size: 256, elements: !1024)
!1024 = !{!1025, !1026}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1023, file: !755, line: 341, baseType: !792, size: 192, align: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1023, file: !755, line: 342, baseType: !197, size: 64, offset: 192)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1005, file: !755, line: 351, baseType: !368, size: 128, offset: 960)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1005, file: !755, line: 353, baseType: !1029, size: 64, offset: 1088)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !755, line: 353, flags: DIFlagFwdDecl)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1005, file: !755, line: 356, baseType: !1032, size: 64, offset: 1152)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1034)
!1034 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !755, line: 356, flags: DIFlagFwdDecl)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1005, file: !755, line: 359, baseType: !197, size: 64, offset: 1216)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1005, file: !755, line: 361, baseType: !377, size: 64, offset: 1280)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1005, file: !755, line: 362, baseType: !144, size: 64, offset: 1344)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1005, file: !755, line: 365, baseType: !342, size: 64, offset: 1408)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1005, file: !755, line: 373, baseType: !1040, offset: 1472)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !755, line: 296, elements: !366)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1001, file: !755, line: 391, baseType: !788, size: 64, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1001, file: !755, line: 392, baseType: !443, size: 64, offset: 128)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1001, file: !755, line: 394, baseType: !1044, size: 64, offset: 192)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!197, !377, !197, !197, !197, !197}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1001, file: !755, line: 398, baseType: !197, size: 64, offset: 256)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1001, file: !755, line: 399, baseType: !197, size: 64, offset: 320)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1001, file: !755, line: 405, baseType: !197, size: 64, offset: 384)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1001, file: !755, line: 406, baseType: !197, size: 64, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1001, file: !755, line: 407, baseType: !1052, size: 64, offset: 512)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !745, line: 286, baseType: !1054)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !745, line: 286, size: 64, elements: !1055)
!1055 = !{!1056}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1054, file: !745, line: 286, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1020, line: 18, baseType: !197)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1001, file: !755, line: 416, baseType: !779, size: 32, offset: 576)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1001, file: !755, line: 428, baseType: !779, size: 32, offset: 608)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1001, file: !755, line: 437, baseType: !779, size: 32, offset: 640)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1001, file: !755, line: 447, baseType: !779, size: 32, offset: 672)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1001, file: !755, line: 450, baseType: !342, size: 64, offset: 704)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1001, file: !755, line: 452, baseType: !145, size: 32, offset: 768)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1001, file: !755, line: 454, baseType: !352, offset: 800)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1001, file: !755, line: 457, baseType: !799, size: 256, offset: 832)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1001, file: !755, line: 459, baseType: !368, size: 128, offset: 1088)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1001, file: !755, line: 466, baseType: !197, size: 64, offset: 1216)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1001, file: !755, line: 467, baseType: !197, size: 64, offset: 1280)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1001, file: !755, line: 469, baseType: !197, size: 64, offset: 1344)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1001, file: !755, line: 470, baseType: !197, size: 64, offset: 1408)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1001, file: !755, line: 471, baseType: !344, size: 64, offset: 1472)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1001, file: !755, line: 472, baseType: !197, size: 64, offset: 1536)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1001, file: !755, line: 473, baseType: !197, size: 64, offset: 1600)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1001, file: !755, line: 474, baseType: !197, size: 64, offset: 1664)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1001, file: !755, line: 475, baseType: !197, size: 64, offset: 1728)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1001, file: !755, line: 477, baseType: !352, offset: 1792)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1001, file: !755, line: 478, baseType: !197, size: 64, offset: 1792)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1001, file: !755, line: 478, baseType: !197, size: 64, offset: 1856)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1001, file: !755, line: 478, baseType: !197, size: 64, offset: 1920)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1001, file: !755, line: 478, baseType: !197, size: 64, offset: 1984)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1001, file: !755, line: 479, baseType: !197, size: 64, offset: 2048)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1001, file: !755, line: 479, baseType: !197, size: 64, offset: 2112)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1001, file: !755, line: 479, baseType: !197, size: 64, offset: 2176)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1001, file: !755, line: 480, baseType: !197, size: 64, offset: 2240)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1001, file: !755, line: 480, baseType: !197, size: 64, offset: 2304)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1001, file: !755, line: 480, baseType: !197, size: 64, offset: 2368)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1001, file: !755, line: 480, baseType: !197, size: 64, offset: 2432)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1001, file: !755, line: 482, baseType: !1089, size: 2816, offset: 2496)
!1089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 2816, elements: !1090)
!1090 = !{!1091}
!1091 = !DISubrange(count: 44)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1001, file: !755, line: 488, baseType: !1093, size: 256, offset: 5312)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1094, line: 60, size: 256, elements: !1095)
!1094 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1095 = !{!1096}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1093, file: !1094, line: 61, baseType: !1097, size: 256)
!1097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 256, elements: !159)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1001, file: !755, line: 490, baseType: !1099, size: 64, offset: 5568)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !755, line: 490, flags: DIFlagFwdDecl)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1001, file: !755, line: 493, baseType: !1102, size: 896, offset: 5632)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1103, line: 53, baseType: !1104)
!1103 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1103, line: 13, size: 896, elements: !1105)
!1105 = !{!1106, !1107, !1108, !1109, !1112, !1113, !1114, !1115, !1135, !1136, !1137}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1104, file: !1103, line: 18, baseType: !443, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1104, file: !1103, line: 28, baseType: !344, size: 64, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1104, file: !1103, line: 31, baseType: !799, size: 256, offset: 128)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1104, file: !1103, line: 32, baseType: !1110, size: 64, offset: 384)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1103, line: 32, flags: DIFlagFwdDecl)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1104, file: !1103, line: 37, baseType: !191, size: 16, offset: 448)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1104, file: !1103, line: 40, baseType: !338, size: 192, offset: 512)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1104, file: !1103, line: 41, baseType: !144, size: 64, offset: 704)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1104, file: !1103, line: 42, baseType: !1116, size: 64, offset: 768)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1118)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1119, line: 13, size: 896, elements: !1120)
!1119 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1120 = !{!1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1118, file: !1119, line: 14, baseType: !144, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1118, file: !1119, line: 15, baseType: !197, size: 64, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1118, file: !1119, line: 17, baseType: !197, size: 64, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1118, file: !1119, line: 17, baseType: !197, size: 64, offset: 192)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1118, file: !1119, line: 19, baseType: !146, size: 64, offset: 256)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1118, file: !1119, line: 21, baseType: !146, size: 64, offset: 320)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1118, file: !1119, line: 22, baseType: !146, size: 64, offset: 384)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1118, file: !1119, line: 23, baseType: !146, size: 64, offset: 448)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1118, file: !1119, line: 24, baseType: !146, size: 64, offset: 512)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1118, file: !1119, line: 25, baseType: !146, size: 64, offset: 576)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1118, file: !1119, line: 26, baseType: !146, size: 64, offset: 640)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1118, file: !1119, line: 27, baseType: !146, size: 64, offset: 704)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1118, file: !1119, line: 28, baseType: !146, size: 64, offset: 768)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1118, file: !1119, line: 29, baseType: !146, size: 64, offset: 832)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1104, file: !1103, line: 44, baseType: !779, size: 32, offset: 832)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1104, file: !1103, line: 50, baseType: !328, size: 16, offset: 864)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1104, file: !1103, line: 51, baseType: !1138, size: 16, offset: 880)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !329, line: 18, baseType: !256)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1001, file: !755, line: 495, baseType: !197, size: 64, offset: 6528)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1001, file: !755, line: 497, baseType: !1141, size: 64, offset: 6592)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !755, line: 381, size: 384, elements: !1143)
!1143 = !{!1144, !1145, !2224}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1142, file: !755, line: 382, baseType: !779, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1142, file: !755, line: 383, baseType: !1146, size: 128, offset: 64)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !755, line: 376, size: 128, elements: !1147)
!1147 = !{!1148, !2222}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1146, file: !755, line: 377, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1151, line: 640, size: 48640, elements: !1152)
!1151 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1152 = !{!1153, !1159, !1160, !1161, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1178, !1196, !1207, !1291, !1292, !1293, !1301, !1302, !1304, !1305, !1306, !1307, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1386, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1424, !1426, !1427, !1428, !1440, !1441, !1442, !1443, !1444, !1445, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1469, !1474, !1654, !1655, !1656, !1657, !1661, !1664, !1667, !1670, !1673, !1677, !1778, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1826, !1827, !1828, !1829, !1830, !1835, !1836, !1837, !1840, !1841, !1844, !1847, !1850, !1853, !1896, !1899, !1900, !1979, !1980, !1983, !1984, !1987, !1988, !1989, !1993, !1994, !1995, !2008, !2009, !2010, !2020, !2025, !2028, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1150, file: !1151, line: 646, baseType: !1154, size: 128)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1155, line: 56, size: 128, elements: !1156)
!1155 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1156 = !{!1157, !1158}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1154, file: !1155, line: 57, baseType: !197, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1154, file: !1155, line: 58, baseType: !440, size: 32, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1150, file: !1151, line: 649, baseType: !148, size: 64, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1150, file: !1151, line: 657, baseType: !144, size: 64, offset: 192)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1150, file: !1151, line: 658, baseType: !1162, size: 32, offset: 256)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1163, line: 113, baseType: !1164)
!1163 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1163, line: 111, size: 32, elements: !1165)
!1165 = !{!1166}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1164, file: !1163, line: 112, baseType: !779, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1150, file: !1151, line: 660, baseType: !7, size: 32, offset: 288)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1150, file: !1151, line: 661, baseType: !7, size: 32, offset: 320)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1150, file: !1151, line: 684, baseType: !145, size: 32, offset: 352)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1150, file: !1151, line: 686, baseType: !145, size: 32, offset: 384)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1150, file: !1151, line: 687, baseType: !145, size: 32, offset: 416)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1150, file: !1151, line: 688, baseType: !145, size: 32, offset: 448)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1150, file: !1151, line: 689, baseType: !7, size: 32, offset: 480)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1150, file: !1151, line: 691, baseType: !1175, size: 64, offset: 512)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1177)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1151, line: 691, flags: DIFlagFwdDecl)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1150, file: !1151, line: 692, baseType: !1179, size: 832, offset: 576)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1151, line: 451, size: 832, elements: !1180)
!1180 = !{!1181, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1179, file: !1151, line: 453, baseType: !1182, size: 128)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1151, line: 325, size: 128, elements: !1183)
!1183 = !{!1184, !1185}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1182, file: !1151, line: 326, baseType: !197, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1182, file: !1151, line: 327, baseType: !440, size: 32, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1179, file: !1151, line: 454, baseType: !792, size: 192, align: 64, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1179, file: !1151, line: 455, baseType: !368, size: 128, offset: 320)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1179, file: !1151, line: 456, baseType: !7, size: 32, offset: 448)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1179, file: !1151, line: 458, baseType: !443, size: 64, offset: 512)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1179, file: !1151, line: 459, baseType: !443, size: 64, offset: 576)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1179, file: !1151, line: 460, baseType: !443, size: 64, offset: 640)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1179, file: !1151, line: 461, baseType: !443, size: 64, offset: 704)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1179, file: !1151, line: 463, baseType: !443, size: 64, offset: 768)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1179, file: !1151, line: 465, baseType: !1195, offset: 832)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1151, line: 415, elements: !366)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1150, file: !1151, line: 693, baseType: !1197, size: 384, offset: 1408)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1151, line: 489, size: 384, elements: !1198)
!1198 = !{!1199, !1200, !1201, !1202, !1203, !1204, !1205}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1197, file: !1151, line: 490, baseType: !368, size: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1197, file: !1151, line: 491, baseType: !197, size: 64, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1197, file: !1151, line: 492, baseType: !197, size: 64, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1197, file: !1151, line: 493, baseType: !7, size: 32, offset: 256)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1197, file: !1151, line: 494, baseType: !191, size: 16, offset: 288)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1197, file: !1151, line: 495, baseType: !191, size: 16, offset: 304)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1197, file: !1151, line: 497, baseType: !1206, size: 64, offset: 320)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1150, file: !1151, line: 697, baseType: !1208, size: 1792, offset: 1792)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1151, line: 507, size: 1792, elements: !1209)
!1209 = !{!1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1288, !1289}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1208, file: !1151, line: 508, baseType: !792, size: 192, align: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1208, file: !1151, line: 515, baseType: !443, size: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1208, file: !1151, line: 516, baseType: !443, size: 64, offset: 256)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1208, file: !1151, line: 517, baseType: !443, size: 64, offset: 320)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1208, file: !1151, line: 518, baseType: !443, size: 64, offset: 384)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1208, file: !1151, line: 519, baseType: !443, size: 64, offset: 448)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1208, file: !1151, line: 526, baseType: !348, size: 64, offset: 512)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1208, file: !1151, line: 527, baseType: !443, size: 64, offset: 576)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1208, file: !1151, line: 528, baseType: !7, size: 32, offset: 640)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1208, file: !1151, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1208, file: !1151, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1208, file: !1151, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1208, file: !1151, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1208, file: !1151, line: 563, baseType: !1224, size: 512, offset: 704)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !14, line: 118, size: 512, elements: !1225)
!1225 = !{!1226, !1234, !1235, !1240, !1283, !1285, !1286, !1287}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1224, file: !14, line: 119, baseType: !1227, size: 256)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1228, line: 9, size: 256, elements: !1229)
!1228 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1229 = !{!1230, !1231}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1227, file: !1228, line: 10, baseType: !792, size: 192, align: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1227, file: !1228, line: 11, baseType: !1232, size: 64, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1233, line: 29, baseType: !348)
!1233 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1224, file: !14, line: 120, baseType: !1232, size: 64, offset: 256)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1224, file: !14, line: 121, baseType: !1236, size: 64, offset: 320)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!13, !1239}
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1224, file: !14, line: 122, baseType: !1241, size: 64, offset: 384)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !14, line: 159, size: 512, align: 512, elements: !1243)
!1243 = !{!1244, !1264, !1265, !1268, !1273, !1274, !1278, !1282}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1242, file: !14, line: 160, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !14, line: 214, size: 4608, align: 512, elements: !1247)
!1247 = !{!1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1246, file: !14, line: 215, baseType: !805)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1246, file: !14, line: 216, baseType: !7, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1246, file: !14, line: 217, baseType: !7, size: 32, offset: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1246, file: !14, line: 218, baseType: !7, size: 32, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1246, file: !14, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1246, file: !14, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1246, file: !14, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1246, file: !14, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1246, file: !14, line: 233, baseType: !1232, size: 64, offset: 128)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1246, file: !14, line: 234, baseType: !1239, size: 64, offset: 192)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1246, file: !14, line: 235, baseType: !1232, size: 64, offset: 256)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1246, file: !14, line: 236, baseType: !1239, size: 64, offset: 320)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1246, file: !14, line: 237, baseType: !1261, size: 4096, offset: 512)
!1261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1242, size: 4096, elements: !1262)
!1262 = !{!1263}
!1263 = !DISubrange(count: 8)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1242, file: !14, line: 161, baseType: !7, size: 32, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1242, file: !14, line: 162, baseType: !1266, size: 32, offset: 96)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !143, line: 27, baseType: !1267)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !463, line: 96, baseType: !145)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1242, file: !14, line: 163, baseType: !1269, size: 32, offset: 128)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !413, line: 276, baseType: !1270)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !413, line: 276, size: 32, elements: !1271)
!1271 = !{!1272}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1270, file: !413, line: 276, baseType: !417, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1242, file: !14, line: 164, baseType: !1239, size: 64, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1242, file: !14, line: 165, baseType: !1275, size: 128, offset: 256)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1228, line: 14, size: 128, elements: !1276)
!1276 = !{!1277}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1275, file: !1228, line: 15, baseType: !784, size: 128)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1242, file: !14, line: 166, baseType: !1279, size: 64, offset: 384)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!1232}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1242, file: !14, line: 167, baseType: !1232, size: 64, offset: 448)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1224, file: !14, line: 123, baseType: !1284, size: 8, offset: 448)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !329, line: 17, baseType: !228)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1224, file: !14, line: 124, baseType: !1284, size: 8, offset: 456)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1224, file: !14, line: 125, baseType: !1284, size: 8, offset: 464)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1224, file: !14, line: 126, baseType: !1284, size: 8, offset: 472)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1208, file: !1151, line: 572, baseType: !1224, size: 512, offset: 1216)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1208, file: !1151, line: 580, baseType: !1290, size: 64, offset: 1728)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1150, file: !1151, line: 721, baseType: !7, size: 32, offset: 3584)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1150, file: !1151, line: 722, baseType: !145, size: 32, offset: 3616)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1150, file: !1151, line: 723, baseType: !1294, size: 64, offset: 3648)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1296)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1297, line: 17, baseType: !1298)
!1297 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1297, line: 17, size: 64, elements: !1299)
!1299 = !{!1300}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1298, file: !1297, line: 17, baseType: !196, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1150, file: !1151, line: 724, baseType: !1296, size: 64, offset: 3712)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1150, file: !1151, line: 749, baseType: !1303, offset: 3776)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1151, line: 290, elements: !366)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1150, file: !1151, line: 751, baseType: !368, size: 128, offset: 3776)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1150, file: !1151, line: 757, baseType: !997, size: 64, offset: 3904)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1150, file: !1151, line: 758, baseType: !997, size: 64, offset: 3968)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1150, file: !1151, line: 761, baseType: !1308, size: 320, offset: 4032)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1094, line: 34, size: 320, elements: !1309)
!1309 = !{!1310, !1311}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1308, file: !1094, line: 35, baseType: !443, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1308, file: !1094, line: 36, baseType: !1312, size: 256, offset: 64)
!1312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1004, size: 256, elements: !159)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1150, file: !1151, line: 766, baseType: !145, size: 32, offset: 4352)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1150, file: !1151, line: 767, baseType: !145, size: 32, offset: 4384)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1150, file: !1151, line: 768, baseType: !145, size: 32, offset: 4416)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1150, file: !1151, line: 770, baseType: !145, size: 32, offset: 4448)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1150, file: !1151, line: 772, baseType: !197, size: 64, offset: 4480)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1150, file: !1151, line: 775, baseType: !7, size: 32, offset: 4544)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1150, file: !1151, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1150, file: !1151, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1150, file: !1151, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1150, file: !1151, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1150, file: !1151, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1150, file: !1151, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1150, file: !1151, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1150, file: !1151, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1150, file: !1151, line: 831, baseType: !197, size: 64, offset: 4672)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1150, file: !1151, line: 833, baseType: !1329, size: 384, offset: 4736)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !19, line: 25, size: 384, elements: !1330)
!1330 = !{!1331, !1336}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1329, file: !19, line: 26, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!146, !1335}
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, scope: !1329, file: !19, line: 27, baseType: !1337, size: 320, offset: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1329, file: !19, line: 27, size: 320, elements: !1338)
!1338 = !{!1339, !1349, !1376}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1337, file: !19, line: 36, baseType: !1340, size: 320)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1337, file: !19, line: 29, size: 320, elements: !1341)
!1341 = !{!1342, !1344, !1345, !1346, !1347, !1348}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1340, file: !19, line: 30, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1340, file: !19, line: 31, baseType: !440, size: 32, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1340, file: !19, line: 32, baseType: !440, size: 32, offset: 96)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1340, file: !19, line: 33, baseType: !440, size: 32, offset: 128)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1340, file: !19, line: 34, baseType: !443, size: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1340, file: !19, line: 35, baseType: !1343, size: 64, offset: 256)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1337, file: !19, line: 46, baseType: !1350, size: 192)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1337, file: !19, line: 38, size: 192, elements: !1351)
!1351 = !{!1352, !1353, !1354, !1375}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1350, file: !19, line: 39, baseType: !1266, size: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1350, file: !19, line: 40, baseType: !18, size: 32, offset: 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, scope: !1350, file: !19, line: 41, baseType: !1355, size: 64, offset: 64)
!1355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1350, file: !19, line: 41, size: 64, elements: !1356)
!1356 = !{!1357, !1365}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1355, file: !19, line: 42, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1360, line: 7, size: 128, elements: !1361)
!1360 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1361 = !{!1362, !1364}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1359, file: !1360, line: 8, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !463, line: 93, baseType: !350)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1359, file: !1360, line: 9, baseType: !350, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1355, file: !19, line: 43, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1368, line: 7, size: 64, elements: !1369)
!1368 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1369 = !{!1370, !1374}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1367, file: !1368, line: 8, baseType: !1371, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1368, line: 5, baseType: !1372)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !329, line: 20, baseType: !1373)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !190, line: 26, baseType: !145)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1367, file: !1368, line: 9, baseType: !1372, size: 32, offset: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1350, file: !19, line: 45, baseType: !443, size: 64, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1337, file: !19, line: 54, baseType: !1377, size: 256)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1337, file: !19, line: 48, size: 256, elements: !1378)
!1378 = !{!1379, !1382, !1383, !1384, !1385}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1377, file: !19, line: 49, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !19, line: 14, flags: DIFlagFwdDecl)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1377, file: !19, line: 50, baseType: !145, size: 32, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1377, file: !19, line: 51, baseType: !145, size: 32, offset: 96)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1377, file: !19, line: 52, baseType: !197, size: 64, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1377, file: !19, line: 53, baseType: !197, size: 64, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1150, file: !1151, line: 835, baseType: !1387, size: 32, offset: 5120)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !143, line: 22, baseType: !1388)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !463, line: 28, baseType: !145)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1150, file: !1151, line: 836, baseType: !1387, size: 32, offset: 5152)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1150, file: !1151, line: 840, baseType: !197, size: 64, offset: 5184)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1150, file: !1151, line: 849, baseType: !1149, size: 64, offset: 5248)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1150, file: !1151, line: 852, baseType: !1149, size: 64, offset: 5312)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1150, file: !1151, line: 857, baseType: !368, size: 128, offset: 5376)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1150, file: !1151, line: 858, baseType: !368, size: 128, offset: 5504)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1150, file: !1151, line: 859, baseType: !1149, size: 64, offset: 5632)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1150, file: !1151, line: 867, baseType: !368, size: 128, offset: 5696)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1150, file: !1151, line: 868, baseType: !368, size: 128, offset: 5824)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1150, file: !1151, line: 871, baseType: !1399, size: 64, offset: 5952)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !1401)
!1401 = !{!1402, !1403, !1404, !1405, !1407, !1408, !1415, !1416}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1400, file: !40, line: 61, baseType: !1162, size: 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1400, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1400, file: !40, line: 63, baseType: !352, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1400, file: !40, line: 65, baseType: !1406, size: 256, offset: 64)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, size: 256, elements: !159)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1400, file: !40, line: 66, baseType: !665, size: 64, offset: 320)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1400, file: !40, line: 68, baseType: !1409, size: 128, offset: 384)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1410, line: 40, baseType: !1411)
!1410 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1410, line: 36, size: 128, elements: !1412)
!1412 = !{!1413, !1414}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1411, file: !1410, line: 37, baseType: !352)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1411, file: !1410, line: 38, baseType: !368, size: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1400, file: !40, line: 69, baseType: !390, size: 128, align: 64, offset: 512)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1400, file: !40, line: 70, baseType: !1417, size: 128, offset: 640)
!1417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1418, size: 128, elements: !198)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !1419)
!1419 = !{!1420, !1421}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1418, file: !40, line: 55, baseType: !145, size: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1418, file: !40, line: 56, baseType: !1422, size: 64, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1150, file: !1151, line: 872, baseType: !1425, size: 512, offset: 6016)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !669, size: 512, elements: !159)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1150, file: !1151, line: 873, baseType: !368, size: 128, offset: 6528)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1150, file: !1151, line: 874, baseType: !368, size: 128, offset: 6656)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1150, file: !1151, line: 876, baseType: !1429, size: 64, offset: 6784)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1431, line: 26, size: 192, elements: !1432)
!1431 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1432 = !{!1433, !1434}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1430, file: !1431, line: 27, baseType: !7, size: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1430, file: !1431, line: 28, baseType: !1435, size: 128, offset: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1436, line: 43, size: 128, elements: !1437)
!1436 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1437 = !{!1438, !1439}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1435, file: !1436, line: 44, baseType: !805)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1435, file: !1436, line: 45, baseType: !368, size: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1150, file: !1151, line: 879, baseType: !737, size: 64, offset: 6848)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1150, file: !1151, line: 882, baseType: !737, size: 64, offset: 6912)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1150, file: !1151, line: 884, baseType: !443, size: 64, offset: 6976)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1150, file: !1151, line: 885, baseType: !443, size: 64, offset: 7040)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1150, file: !1151, line: 890, baseType: !443, size: 64, offset: 7104)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1150, file: !1151, line: 891, baseType: !1446, size: 128, offset: 7168)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1151, line: 242, size: 128, elements: !1447)
!1447 = !{!1448, !1449, !1450}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1446, file: !1151, line: 244, baseType: !443, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1446, file: !1151, line: 245, baseType: !443, size: 64, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1446, file: !1151, line: 246, baseType: !805, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1150, file: !1151, line: 900, baseType: !197, size: 64, offset: 7296)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1150, file: !1151, line: 901, baseType: !197, size: 64, offset: 7360)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1150, file: !1151, line: 904, baseType: !443, size: 64, offset: 7424)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1150, file: !1151, line: 907, baseType: !443, size: 64, offset: 7488)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1150, file: !1151, line: 910, baseType: !197, size: 64, offset: 7552)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1150, file: !1151, line: 911, baseType: !197, size: 64, offset: 7616)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1150, file: !1151, line: 914, baseType: !1458, size: 640, offset: 7680)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1459, line: 123, size: 640, elements: !1460)
!1459 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1460 = !{!1461, !1467, !1468}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1458, file: !1459, line: 124, baseType: !1462, size: 576)
!1462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1463, size: 576, elements: !681)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1459, line: 108, size: 192, elements: !1464)
!1464 = !{!1465, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1463, file: !1459, line: 109, baseType: !443, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1463, file: !1459, line: 110, baseType: !1275, size: 128, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1458, file: !1459, line: 125, baseType: !7, size: 32, offset: 576)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1458, file: !1459, line: 126, baseType: !7, size: 32, offset: 608)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1150, file: !1151, line: 917, baseType: !1470, size: 192, offset: 8320)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1459, line: 134, size: 192, elements: !1471)
!1471 = !{!1472, !1473}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1470, file: !1459, line: 135, baseType: !390, size: 128, align: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1470, file: !1459, line: 136, baseType: !7, size: 32, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1150, file: !1151, line: 923, baseType: !1475, size: 64, offset: 8512)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1477)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1478, line: 111, size: 1280, elements: !1479)
!1478 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1479 = !{!1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1497, !1498, !1499, !1500, !1501, !1502, !1607, !1608, !1609, !1610, !1636, !1639, !1649}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1477, file: !1478, line: 112, baseType: !779, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1477, file: !1478, line: 120, baseType: !456, size: 32, offset: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1477, file: !1478, line: 121, baseType: !465, size: 32, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1477, file: !1478, line: 122, baseType: !456, size: 32, offset: 96)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1477, file: !1478, line: 123, baseType: !465, size: 32, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1477, file: !1478, line: 124, baseType: !456, size: 32, offset: 160)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1477, file: !1478, line: 125, baseType: !465, size: 32, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1477, file: !1478, line: 126, baseType: !456, size: 32, offset: 224)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1477, file: !1478, line: 127, baseType: !465, size: 32, offset: 256)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1477, file: !1478, line: 128, baseType: !7, size: 32, offset: 288)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1477, file: !1478, line: 129, baseType: !1491, size: 64, offset: 320)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1492, line: 26, baseType: !1493)
!1492 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1492, line: 24, size: 64, elements: !1494)
!1494 = !{!1495}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1493, file: !1492, line: 25, baseType: !1496, size: 64)
!1496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 64, elements: !212)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1477, file: !1478, line: 130, baseType: !1491, size: 64, offset: 384)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1477, file: !1478, line: 131, baseType: !1491, size: 64, offset: 448)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1477, file: !1478, line: 132, baseType: !1491, size: 64, offset: 512)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1477, file: !1478, line: 133, baseType: !1491, size: 64, offset: 576)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1477, file: !1478, line: 135, baseType: !150, size: 8, offset: 640)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1477, file: !1478, line: 137, baseType: !1503, size: 64, offset: 704)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1505, line: 189, size: 1664, elements: !1506)
!1505 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1506 = !{!1507, !1508, !1511, !1516, !1517, !1520, !1521, !1526, !1527, !1528, !1529, !1531, !1532, !1533, !1534, !1535, !1571, !1592}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1504, file: !1505, line: 190, baseType: !1162, size: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1504, file: !1505, line: 191, baseType: !1509, size: 32, offset: 32)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1505, line: 28, baseType: !1510)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !143, line: 98, baseType: !1372)
!1511 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !1505, line: 192, baseType: !1512, size: 192, offset: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1504, file: !1505, line: 192, size: 192, elements: !1513)
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1512, file: !1505, line: 193, baseType: !368, size: 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1512, file: !1505, line: 194, baseType: !792, size: 192, align: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1504, file: !1505, line: 199, baseType: !799, size: 256, offset: 256)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1504, file: !1505, line: 200, baseType: !1518, size: 64, offset: 512)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1505, line: 200, flags: DIFlagFwdDecl)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1504, file: !1505, line: 201, baseType: !144, size: 64, offset: 576)
!1521 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !1505, line: 202, baseType: !1522, size: 64, offset: 640)
!1522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1504, file: !1505, line: 202, size: 64, elements: !1523)
!1523 = !{!1524, !1525}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1522, file: !1505, line: 203, baseType: !561, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1522, file: !1505, line: 204, baseType: !561, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1504, file: !1505, line: 206, baseType: !561, size: 64, offset: 704)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1504, file: !1505, line: 207, baseType: !456, size: 32, offset: 768)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1504, file: !1505, line: 208, baseType: !465, size: 32, offset: 800)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1504, file: !1505, line: 209, baseType: !1530, size: 32, offset: 832)
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1505, line: 31, baseType: !580)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1504, file: !1505, line: 210, baseType: !191, size: 16, offset: 864)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1504, file: !1505, line: 211, baseType: !191, size: 16, offset: 880)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1504, file: !1505, line: 215, baseType: !257, size: 16, offset: 896)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1504, file: !1505, line: 222, baseType: !197, size: 64, offset: 960)
!1535 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !1505, line: 239, baseType: !1536, size: 320, offset: 1024)
!1536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1504, file: !1505, line: 239, size: 320, elements: !1537)
!1537 = !{!1538, !1563}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1536, file: !1505, line: 240, baseType: !1539, size: 320)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1505, line: 108, size: 320, elements: !1540)
!1540 = !{!1541, !1542, !1552, !1555, !1562}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1539, file: !1505, line: 110, baseType: !197, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, scope: !1539, file: !1505, line: 111, baseType: !1543, size: 64, offset: 64)
!1543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1539, file: !1505, line: 111, size: 64, elements: !1544)
!1544 = !{!1545, !1551}
!1545 = !DIDerivedType(tag: DW_TAG_member, scope: !1543, file: !1505, line: 112, baseType: !1546, size: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1543, file: !1505, line: 112, size: 64, elements: !1547)
!1547 = !{!1548, !1549}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1546, file: !1505, line: 114, baseType: !328, size: 16)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1546, file: !1505, line: 115, baseType: !1550, size: 48, offset: 16)
!1550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 48, elements: !156)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1543, file: !1505, line: 121, baseType: !197, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1539, file: !1505, line: 123, baseType: !1553, size: 64, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1505, line: 96, flags: DIFlagFwdDecl)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1539, file: !1505, line: 124, baseType: !1556, size: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1505, line: 102, size: 192, elements: !1558)
!1558 = !{!1559, !1560, !1561}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1557, file: !1505, line: 103, baseType: !390, size: 128, align: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1557, file: !1505, line: 104, baseType: !1162, size: 32, offset: 128)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1557, file: !1505, line: 105, baseType: !513, size: 8, offset: 160)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1539, file: !1505, line: 125, baseType: !179, size: 64, offset: 256)
!1563 = !DIDerivedType(tag: DW_TAG_member, scope: !1536, file: !1505, line: 241, baseType: !1564, size: 320)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1536, file: !1505, line: 241, size: 320, elements: !1565)
!1565 = !{!1566, !1567, !1568, !1569, !1570}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1564, file: !1505, line: 242, baseType: !197, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1564, file: !1505, line: 243, baseType: !197, size: 64, offset: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1564, file: !1505, line: 244, baseType: !1553, size: 64, offset: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1564, file: !1505, line: 245, baseType: !1556, size: 64, offset: 192)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1564, file: !1505, line: 246, baseType: !508, size: 64, offset: 256)
!1571 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !1505, line: 254, baseType: !1572, size: 256, offset: 1344)
!1572 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1504, file: !1505, line: 254, size: 256, elements: !1573)
!1573 = !{!1574, !1580}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1572, file: !1505, line: 255, baseType: !1575, size: 256)
!1575 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1505, line: 128, size: 256, elements: !1576)
!1576 = !{!1577, !1578}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1575, file: !1505, line: 129, baseType: !144, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1575, file: !1505, line: 130, baseType: !1579, size: 256)
!1579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 256, elements: !159)
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1572, file: !1505, line: 256, baseType: !1581, size: 256)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1572, file: !1505, line: 256, size: 256, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1581, file: !1505, line: 258, baseType: !368, size: 128)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1581, file: !1505, line: 259, baseType: !1585, size: 128, offset: 128)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1586, line: 22, size: 128, elements: !1587)
!1586 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1587 = !{!1588, !1591}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1585, file: !1586, line: 23, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1586, line: 23, flags: DIFlagFwdDecl)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1585, file: !1586, line: 24, baseType: !197, size: 64, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1504, file: !1505, line: 274, baseType: !1593, size: 64, offset: 1600)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1505, line: 170, size: 192, elements: !1595)
!1595 = !{!1596, !1605, !1606}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1594, file: !1505, line: 171, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1505, line: 165, baseType: !1598)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!145, !1503, !1601, !1603, !1503}
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1554)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1575)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1594, file: !1505, line: 172, baseType: !1503, size: 64, offset: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1594, file: !1505, line: 173, baseType: !1553, size: 64, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1477, file: !1478, line: 138, baseType: !1503, size: 64, offset: 768)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1477, file: !1478, line: 139, baseType: !1503, size: 64, offset: 832)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1477, file: !1478, line: 140, baseType: !1503, size: 64, offset: 896)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1477, file: !1478, line: 145, baseType: !1611, size: 64, offset: 960)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1613, line: 13, size: 896, elements: !1614)
!1613 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1614 = !{!1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1612, file: !1613, line: 14, baseType: !1162, size: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1612, file: !1613, line: 15, baseType: !779, size: 32, offset: 32)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1612, file: !1613, line: 16, baseType: !779, size: 32, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1612, file: !1613, line: 21, baseType: !342, size: 64, offset: 128)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1612, file: !1613, line: 27, baseType: !197, size: 64, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1612, file: !1613, line: 28, baseType: !197, size: 64, offset: 256)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1612, file: !1613, line: 29, baseType: !342, size: 64, offset: 320)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1612, file: !1613, line: 32, baseType: !669, size: 128, offset: 384)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1612, file: !1613, line: 33, baseType: !456, size: 32, offset: 512)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1612, file: !1613, line: 37, baseType: !342, size: 64, offset: 576)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1612, file: !1613, line: 44, baseType: !1626, size: 256, offset: 640)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1627, line: 15, size: 256, elements: !1628)
!1627 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1628 = !{!1629, !1630, !1631, !1632, !1633, !1634, !1635}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1626, file: !1627, line: 16, baseType: !805)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1626, file: !1627, line: 18, baseType: !145, size: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1626, file: !1627, line: 19, baseType: !145, size: 32, offset: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1626, file: !1627, line: 20, baseType: !145, size: 32, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1626, file: !1627, line: 21, baseType: !145, size: 32, offset: 96)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1626, file: !1627, line: 22, baseType: !197, size: 64, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1626, file: !1627, line: 23, baseType: !197, size: 64, offset: 192)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1477, file: !1478, line: 146, baseType: !1637, size: 64, offset: 1024)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !457, line: 18, flags: DIFlagFwdDecl)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1477, file: !1478, line: 147, baseType: !1640, size: 64, offset: 1088)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1478, line: 25, size: 64, elements: !1642)
!1642 = !{!1643, !1644, !1645}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1641, file: !1478, line: 26, baseType: !779, size: 32)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1641, file: !1478, line: 27, baseType: !145, size: 32, offset: 32)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1641, file: !1478, line: 28, baseType: !1646, offset: 64)
!1646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, elements: !1647)
!1647 = !{!1648}
!1648 = !DISubrange(count: 0)
!1649 = !DIDerivedType(tag: DW_TAG_member, scope: !1477, file: !1478, line: 149, baseType: !1650, size: 128, offset: 1152)
!1650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1477, file: !1478, line: 149, size: 128, elements: !1651)
!1651 = !{!1652, !1653}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1650, file: !1478, line: 150, baseType: !145, size: 32)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1650, file: !1478, line: 151, baseType: !390, size: 128, align: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1150, file: !1151, line: 926, baseType: !1475, size: 64, offset: 8576)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1150, file: !1151, line: 929, baseType: !1475, size: 64, offset: 8640)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1150, file: !1151, line: 933, baseType: !1503, size: 64, offset: 8704)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1150, file: !1151, line: 943, baseType: !1658, size: 128, offset: 8768)
!1658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 128, elements: !1659)
!1659 = !{!1660}
!1660 = !DISubrange(count: 16)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1150, file: !1151, line: 945, baseType: !1662, size: 64, offset: 8896)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1151, line: 49, flags: DIFlagFwdDecl)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1150, file: !1151, line: 956, baseType: !1665, size: 64, offset: 8960)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1151, line: 45, flags: DIFlagFwdDecl)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1150, file: !1151, line: 959, baseType: !1668, size: 64, offset: 9024)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1151, line: 959, flags: DIFlagFwdDecl)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1150, file: !1151, line: 962, baseType: !1671, size: 64, offset: 9088)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1151, line: 66, flags: DIFlagFwdDecl)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1150, file: !1151, line: 966, baseType: !1674, size: 64, offset: 9152)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1676, line: 35, flags: DIFlagFwdDecl)
!1676 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1150, file: !1151, line: 969, baseType: !1678, size: 64, offset: 9216)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1680, line: 82, size: 7296, elements: !1681)
!1680 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1681 = !{!1682, !1683, !1684, !1685, !1686, !1687, !1688, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1717, !1726, !1727, !1729, !1730, !1731, !1734, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1764, !1765, !1772, !1773, !1774, !1775, !1776, !1777}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1679, file: !1680, line: 83, baseType: !1162, size: 32)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1679, file: !1680, line: 84, baseType: !779, size: 32, offset: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1679, file: !1680, line: 85, baseType: !145, size: 32, offset: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1679, file: !1680, line: 86, baseType: !368, size: 128, offset: 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1679, file: !1680, line: 88, baseType: !1409, size: 128, offset: 256)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1679, file: !1680, line: 91, baseType: !1149, size: 64, offset: 384)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1679, file: !1680, line: 94, baseType: !1689, size: 192, offset: 448)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1690, line: 30, size: 192, elements: !1691)
!1690 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1691 = !{!1692, !1693}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1689, file: !1690, line: 31, baseType: !368, size: 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1689, file: !1690, line: 32, baseType: !1694, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1695, line: 25, baseType: !1696)
!1695 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1695, line: 23, size: 64, elements: !1697)
!1697 = !{!1698}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1696, file: !1695, line: 24, baseType: !196, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1679, file: !1680, line: 97, baseType: !665, size: 64, offset: 640)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1679, file: !1680, line: 100, baseType: !145, size: 32, offset: 704)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1679, file: !1680, line: 106, baseType: !145, size: 32, offset: 736)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1679, file: !1680, line: 107, baseType: !1149, size: 64, offset: 768)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1679, file: !1680, line: 110, baseType: !145, size: 32, offset: 832)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1679, file: !1680, line: 111, baseType: !7, size: 32, offset: 864)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1679, file: !1680, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1679, file: !1680, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1679, file: !1680, line: 128, baseType: !145, size: 32, offset: 928)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1679, file: !1680, line: 129, baseType: !368, size: 128, offset: 960)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1679, file: !1680, line: 132, baseType: !1224, size: 512, offset: 1088)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1679, file: !1680, line: 133, baseType: !1232, size: 64, offset: 1600)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1679, file: !1680, line: 140, baseType: !1712, size: 256, offset: 1664)
!1712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1713, size: 256, elements: !212)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1680, line: 38, size: 128, elements: !1714)
!1714 = !{!1715, !1716}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1713, file: !1680, line: 39, baseType: !443, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1713, file: !1680, line: 40, baseType: !443, size: 64, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1679, file: !1680, line: 146, baseType: !1718, size: 192, offset: 1920)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1680, line: 66, size: 192, elements: !1719)
!1719 = !{!1720}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1718, file: !1680, line: 67, baseType: !1721, size: 192)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1680, line: 47, size: 192, elements: !1722)
!1722 = !{!1723, !1724, !1725}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1721, file: !1680, line: 48, baseType: !344, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1721, file: !1680, line: 49, baseType: !344, size: 64, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1721, file: !1680, line: 50, baseType: !344, size: 64, offset: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1679, file: !1680, line: 150, baseType: !1458, size: 640, offset: 2112)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1679, file: !1680, line: 153, baseType: !1728, size: 256, offset: 2752)
!1728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1399, size: 256, elements: !159)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1679, file: !1680, line: 159, baseType: !1399, size: 64, offset: 3008)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1679, file: !1680, line: 162, baseType: !145, size: 32, offset: 3072)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1679, file: !1680, line: 164, baseType: !1732, size: 64, offset: 3136)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1680, line: 164, flags: DIFlagFwdDecl)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1679, file: !1680, line: 175, baseType: !1735, size: 32, offset: 3200)
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !413, line: 805, baseType: !1736)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !413, line: 798, size: 32, elements: !1737)
!1737 = !{!1738, !1739}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1736, file: !413, line: 803, baseType: !412, size: 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1736, file: !413, line: 804, baseType: !352, offset: 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1679, file: !1680, line: 176, baseType: !443, size: 64, offset: 3264)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1679, file: !1680, line: 176, baseType: !443, size: 64, offset: 3328)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1679, file: !1680, line: 176, baseType: !443, size: 64, offset: 3392)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1679, file: !1680, line: 176, baseType: !443, size: 64, offset: 3456)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1679, file: !1680, line: 177, baseType: !443, size: 64, offset: 3520)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1679, file: !1680, line: 178, baseType: !443, size: 64, offset: 3584)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1679, file: !1680, line: 179, baseType: !1446, size: 128, offset: 3648)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1679, file: !1680, line: 180, baseType: !197, size: 64, offset: 3776)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1679, file: !1680, line: 180, baseType: !197, size: 64, offset: 3840)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1679, file: !1680, line: 180, baseType: !197, size: 64, offset: 3904)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1679, file: !1680, line: 180, baseType: !197, size: 64, offset: 3968)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1679, file: !1680, line: 181, baseType: !197, size: 64, offset: 4032)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1679, file: !1680, line: 181, baseType: !197, size: 64, offset: 4096)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1679, file: !1680, line: 181, baseType: !197, size: 64, offset: 4160)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1679, file: !1680, line: 181, baseType: !197, size: 64, offset: 4224)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1679, file: !1680, line: 182, baseType: !197, size: 64, offset: 4288)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1679, file: !1680, line: 182, baseType: !197, size: 64, offset: 4352)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1679, file: !1680, line: 182, baseType: !197, size: 64, offset: 4416)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1679, file: !1680, line: 182, baseType: !197, size: 64, offset: 4480)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1679, file: !1680, line: 183, baseType: !197, size: 64, offset: 4544)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1679, file: !1680, line: 183, baseType: !197, size: 64, offset: 4608)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1679, file: !1680, line: 184, baseType: !1762, offset: 4672)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1763, line: 12, elements: !366)
!1763 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1679, file: !1680, line: 192, baseType: !445, size: 64, offset: 4672)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1679, file: !1680, line: 203, baseType: !1766, size: 2048, offset: 4736)
!1766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1767, size: 2048, elements: !1659)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1768, line: 43, size: 128, elements: !1769)
!1768 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1769 = !{!1770, !1771}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1767, file: !1768, line: 44, baseType: !604, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1767, file: !1768, line: 45, baseType: !604, size: 64, offset: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1679, file: !1680, line: 220, baseType: !513, size: 8, offset: 6784)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1679, file: !1680, line: 221, baseType: !257, size: 16, offset: 6800)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1679, file: !1680, line: 222, baseType: !257, size: 16, offset: 6816)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1679, file: !1680, line: 224, baseType: !997, size: 64, offset: 6848)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1679, file: !1680, line: 227, baseType: !338, size: 192, offset: 6912)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1679, file: !1680, line: 233, baseType: !338, size: 192, offset: 7104)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1150, file: !1151, line: 970, baseType: !1779, size: 64, offset: 9280)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1680, line: 20, size: 16576, elements: !1781)
!1781 = !{!1782, !1783, !1784, !1785}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1780, file: !1680, line: 21, baseType: !352)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1780, file: !1680, line: 22, baseType: !1162, size: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1780, file: !1680, line: 23, baseType: !1409, size: 128, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1780, file: !1680, line: 24, baseType: !1786, size: 16384, offset: 192)
!1786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1787, size: 16384, elements: !1807)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1690, line: 49, size: 256, elements: !1788)
!1788 = !{!1789}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1787, file: !1690, line: 50, baseType: !1790, size: 256)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1690, line: 35, size: 256, elements: !1791)
!1791 = !{!1792, !1799, !1800, !1806}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1790, file: !1690, line: 37, baseType: !1793, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1794, line: 19, baseType: !1795)
!1794 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1794, line: 18, baseType: !1797)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{null, !145}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1790, file: !1690, line: 38, baseType: !197, size: 64, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1790, file: !1690, line: 44, baseType: !1801, size: 64, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1794, line: 22, baseType: !1802)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1794, line: 21, baseType: !1804)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{null}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1790, file: !1690, line: 46, baseType: !1694, size: 64, offset: 192)
!1807 = !{!1808}
!1808 = !DISubrange(count: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1150, file: !1151, line: 971, baseType: !1694, size: 64, offset: 9344)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1150, file: !1151, line: 972, baseType: !1694, size: 64, offset: 9408)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1150, file: !1151, line: 974, baseType: !1694, size: 64, offset: 9472)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1150, file: !1151, line: 975, baseType: !1689, size: 192, offset: 9536)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1150, file: !1151, line: 976, baseType: !197, size: 64, offset: 9728)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1150, file: !1151, line: 977, baseType: !602, size: 64, offset: 9792)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1150, file: !1151, line: 978, baseType: !7, size: 32, offset: 9856)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1150, file: !1151, line: 980, baseType: !393, size: 64, offset: 9920)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1150, file: !1151, line: 989, baseType: !1818, size: 128, offset: 9984)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1819, line: 35, size: 128, elements: !1820)
!1819 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1820 = !{!1821, !1822, !1823}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1818, file: !1819, line: 36, baseType: !145, size: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1818, file: !1819, line: 37, baseType: !779, size: 32, offset: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1818, file: !1819, line: 38, baseType: !1824, size: 64, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1819, line: 23, flags: DIFlagFwdDecl)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1150, file: !1151, line: 992, baseType: !443, size: 64, offset: 10112)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1150, file: !1151, line: 993, baseType: !443, size: 64, offset: 10176)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1150, file: !1151, line: 996, baseType: !352, offset: 10240)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1150, file: !1151, line: 999, baseType: !805, offset: 10240)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1150, file: !1151, line: 1001, baseType: !1831, size: 64, offset: 10240)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1151, line: 636, size: 64, elements: !1832)
!1832 = !{!1833}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1831, file: !1151, line: 637, baseType: !1834, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1150, file: !1151, line: 1005, baseType: !784, size: 128, offset: 10304)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1150, file: !1151, line: 1007, baseType: !1149, size: 64, offset: 10432)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1150, file: !1151, line: 1009, baseType: !1838, size: 64, offset: 10496)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1151, line: 1009, flags: DIFlagFwdDecl)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1150, file: !1151, line: 1043, baseType: !144, size: 64, offset: 10560)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1150, file: !1151, line: 1046, baseType: !1842, size: 64, offset: 10624)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1151, line: 41, flags: DIFlagFwdDecl)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1150, file: !1151, line: 1050, baseType: !1845, size: 64, offset: 10688)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1151, line: 42, flags: DIFlagFwdDecl)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1150, file: !1151, line: 1054, baseType: !1848, size: 64, offset: 10752)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1151, line: 55, flags: DIFlagFwdDecl)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1150, file: !1151, line: 1056, baseType: !1851, size: 64, offset: 10816)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1151, line: 40, flags: DIFlagFwdDecl)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1150, file: !1151, line: 1058, baseType: !1854, size: 64, offset: 10880)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1856, line: 99, size: 704, elements: !1857)
!1856 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1857 = !{!1858, !1859, !1860, !1861, !1862, !1863, !1864, !1883, !1884}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1855, file: !1856, line: 100, baseType: !342, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1855, file: !1856, line: 101, baseType: !779, size: 32, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1855, file: !1856, line: 102, baseType: !779, size: 32, offset: 96)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1855, file: !1856, line: 105, baseType: !352, offset: 128)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1855, file: !1856, line: 107, baseType: !191, size: 16, offset: 128)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1855, file: !1856, line: 109, baseType: !771, size: 128, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1855, file: !1856, line: 110, baseType: !1865, size: 64, offset: 320)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1856, line: 73, size: 448, elements: !1867)
!1867 = !{!1868, !1871, !1872, !1877, !1882}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1866, file: !1856, line: 74, baseType: !1869, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1856, line: 74, flags: DIFlagFwdDecl)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1866, file: !1856, line: 75, baseType: !1854, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, scope: !1866, file: !1856, line: 83, baseType: !1873, size: 128, offset: 128)
!1873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1866, file: !1856, line: 83, size: 128, elements: !1874)
!1874 = !{!1875, !1876}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1873, file: !1856, line: 84, baseType: !368, size: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1873, file: !1856, line: 85, baseType: !958, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, scope: !1866, file: !1856, line: 87, baseType: !1878, size: 128, offset: 256)
!1878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1866, file: !1856, line: 87, size: 128, elements: !1879)
!1879 = !{!1880, !1881}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1878, file: !1856, line: 88, baseType: !669, size: 128)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1878, file: !1856, line: 89, baseType: !390, size: 128, align: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1866, file: !1856, line: 92, baseType: !7, size: 32, offset: 384)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1855, file: !1856, line: 111, baseType: !665, size: 64, offset: 384)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1855, file: !1856, line: 113, baseType: !1885, size: 256, offset: 448)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1886, line: 102, size: 256, elements: !1887)
!1886 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1887 = !{!1888, !1889, !1890}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1885, file: !1886, line: 103, baseType: !342, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1885, file: !1886, line: 104, baseType: !368, size: 128, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1885, file: !1886, line: 105, baseType: !1891, size: 64, offset: 192)
!1891 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1886, line: 21, baseType: !1892)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{null, !1895}
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1150, file: !1151, line: 1061, baseType: !1897, size: 64, offset: 10944)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1151, line: 43, flags: DIFlagFwdDecl)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1150, file: !1151, line: 1064, baseType: !197, size: 64, offset: 11008)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1150, file: !1151, line: 1065, baseType: !1901, size: 64, offset: 11072)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1690, line: 14, baseType: !1903)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1690, line: 12, size: 384, elements: !1904)
!1904 = !{!1905}
!1905 = !DIDerivedType(tag: DW_TAG_member, scope: !1903, file: !1690, line: 13, baseType: !1906, size: 384)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1903, file: !1690, line: 13, size: 384, elements: !1907)
!1907 = !{!1908, !1909, !1910, !1911}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1906, file: !1690, line: 13, baseType: !145, size: 32)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1906, file: !1690, line: 13, baseType: !145, size: 32, offset: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1906, file: !1690, line: 13, baseType: !145, size: 32, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1906, file: !1690, line: 13, baseType: !1912, size: 256, offset: 128)
!1912 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1913, line: 32, size: 256, elements: !1914)
!1913 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1914 = !{!1915, !1920, !1933, !1939, !1948, !1968, !1973}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1912, file: !1913, line: 37, baseType: !1916, size: 64)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1912, file: !1913, line: 34, size: 64, elements: !1917)
!1917 = !{!1918, !1919}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1916, file: !1913, line: 35, baseType: !1388, size: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1916, file: !1913, line: 36, baseType: !462, size: 32, offset: 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1912, file: !1913, line: 45, baseType: !1921, size: 192)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1912, file: !1913, line: 40, size: 192, elements: !1922)
!1922 = !{!1923, !1925, !1926, !1932}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1921, file: !1913, line: 41, baseType: !1924, size: 32)
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !463, line: 95, baseType: !145)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1921, file: !1913, line: 42, baseType: !145, size: 32, offset: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1921, file: !1913, line: 43, baseType: !1927, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1913, line: 11, baseType: !1928)
!1928 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1913, line: 8, size: 64, elements: !1929)
!1929 = !{!1930, !1931}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1928, file: !1913, line: 9, baseType: !145, size: 32)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1928, file: !1913, line: 10, baseType: !144, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1921, file: !1913, line: 44, baseType: !145, size: 32, offset: 128)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1912, file: !1913, line: 52, baseType: !1934, size: 128)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1912, file: !1913, line: 48, size: 128, elements: !1935)
!1935 = !{!1936, !1937, !1938}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1934, file: !1913, line: 49, baseType: !1388, size: 32)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1934, file: !1913, line: 50, baseType: !462, size: 32, offset: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1934, file: !1913, line: 51, baseType: !1927, size: 64, offset: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1912, file: !1913, line: 61, baseType: !1940, size: 256)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1912, file: !1913, line: 55, size: 256, elements: !1941)
!1941 = !{!1942, !1943, !1944, !1945, !1947}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1940, file: !1913, line: 56, baseType: !1388, size: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1940, file: !1913, line: 57, baseType: !462, size: 32, offset: 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1940, file: !1913, line: 58, baseType: !145, size: 32, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1940, file: !1913, line: 59, baseType: !1946, size: 64, offset: 128)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !463, line: 94, baseType: !601)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1940, file: !1913, line: 60, baseType: !1946, size: 64, offset: 192)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1912, file: !1913, line: 95, baseType: !1949, size: 256)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1912, file: !1913, line: 64, size: 256, elements: !1950)
!1950 = !{!1951, !1952}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1949, file: !1913, line: 65, baseType: !144, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, scope: !1949, file: !1913, line: 77, baseType: !1953, size: 192, offset: 64)
!1953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1949, file: !1913, line: 77, size: 192, elements: !1954)
!1954 = !{!1955, !1956, !1963}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1953, file: !1913, line: 82, baseType: !257, size: 16)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1953, file: !1913, line: 88, baseType: !1957, size: 192)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1953, file: !1913, line: 84, size: 192, elements: !1958)
!1958 = !{!1959, !1961, !1962}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1957, file: !1913, line: 85, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 64, elements: !1262)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1957, file: !1913, line: 86, baseType: !144, size: 64, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1957, file: !1913, line: 87, baseType: !144, size: 64, offset: 128)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1953, file: !1913, line: 93, baseType: !1964, size: 96)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1953, file: !1913, line: 90, size: 96, elements: !1965)
!1965 = !{!1966, !1967}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1964, file: !1913, line: 91, baseType: !1960, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1964, file: !1913, line: 92, baseType: !232, size: 32, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1912, file: !1913, line: 101, baseType: !1969, size: 128)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1912, file: !1913, line: 98, size: 128, elements: !1970)
!1970 = !{!1971, !1972}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1969, file: !1913, line: 99, baseType: !146, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1969, file: !1913, line: 100, baseType: !145, size: 32, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1912, file: !1913, line: 108, baseType: !1974, size: 128)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1912, file: !1913, line: 104, size: 128, elements: !1975)
!1975 = !{!1976, !1977, !1978}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1974, file: !1913, line: 105, baseType: !144, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1974, file: !1913, line: 106, baseType: !145, size: 32, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1974, file: !1913, line: 107, baseType: !7, size: 32, offset: 96)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1150, file: !1151, line: 1067, baseType: !1762, offset: 11136)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1150, file: !1151, line: 1099, baseType: !1981, size: 64, offset: 11136)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1151, line: 56, flags: DIFlagFwdDecl)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1150, file: !1151, line: 1103, baseType: !368, size: 128, offset: 11200)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1150, file: !1151, line: 1104, baseType: !1985, size: 64, offset: 11328)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1151, line: 46, flags: DIFlagFwdDecl)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1150, file: !1151, line: 1105, baseType: !338, size: 192, offset: 11392)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1150, file: !1151, line: 1106, baseType: !7, size: 32, offset: 11584)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1150, file: !1151, line: 1109, baseType: !1990, size: 128, offset: 11648)
!1990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1991, size: 128, elements: !212)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1151, line: 51, flags: DIFlagFwdDecl)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1150, file: !1151, line: 1110, baseType: !338, size: 192, offset: 11776)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1150, file: !1151, line: 1111, baseType: !368, size: 128, offset: 11968)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1150, file: !1151, line: 1173, baseType: !1996, size: 64, offset: 12096)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1998, line: 62, size: 256, align: 256, elements: !1999)
!1998 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1999 = !{!2000, !2001, !2002, !2007}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1997, file: !1998, line: 75, baseType: !232, size: 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1997, file: !1998, line: 90, baseType: !232, size: 32, offset: 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1997, file: !1998, line: 124, baseType: !2003, size: 64, offset: 64)
!2003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1997, file: !1998, line: 109, size: 64, elements: !2004)
!2004 = !{!2005, !2006}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2003, file: !1998, line: 110, baseType: !444, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2003, file: !1998, line: 112, baseType: !444, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1997, file: !1998, line: 144, baseType: !232, size: 32, offset: 128)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1150, file: !1151, line: 1174, baseType: !440, size: 32, offset: 12160)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1150, file: !1151, line: 1179, baseType: !197, size: 64, offset: 12224)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1150, file: !1151, line: 1182, baseType: !2011, size: 128, offset: 12288)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1094, line: 76, size: 128, elements: !2012)
!2012 = !{!2013, !2018, !2019}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2011, file: !1094, line: 85, baseType: !2014, size: 64)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2015, line: 7, size: 64, elements: !2016)
!2015 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2016 = !{!2017}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2014, file: !2015, line: 12, baseType: !1298, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2011, file: !1094, line: 88, baseType: !513, size: 8, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2011, file: !1094, line: 95, baseType: !513, size: 8, offset: 72)
!2020 = !DIDerivedType(tag: DW_TAG_member, scope: !1150, file: !1151, line: 1184, baseType: !2021, size: 128, offset: 12416)
!2021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1150, file: !1151, line: 1184, size: 128, elements: !2022)
!2022 = !{!2023, !2024}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2021, file: !1151, line: 1185, baseType: !1162, size: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2021, file: !1151, line: 1186, baseType: !390, size: 128, align: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1150, file: !1151, line: 1190, baseType: !2026, size: 64, offset: 12544)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1151, line: 53, flags: DIFlagFwdDecl)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1150, file: !1151, line: 1192, baseType: !2029, size: 128, offset: 12608)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1094, line: 64, size: 128, elements: !2030)
!2030 = !{!2031, !2032, !2033}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2029, file: !1094, line: 65, baseType: !753, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2029, file: !1094, line: 67, baseType: !232, size: 32, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2029, file: !1094, line: 68, baseType: !232, size: 32, offset: 96)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1150, file: !1151, line: 1206, baseType: !145, size: 32, offset: 12736)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1150, file: !1151, line: 1207, baseType: !145, size: 32, offset: 12768)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1150, file: !1151, line: 1209, baseType: !197, size: 64, offset: 12800)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1150, file: !1151, line: 1219, baseType: !443, size: 64, offset: 12864)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1150, file: !1151, line: 1220, baseType: !443, size: 64, offset: 12928)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1150, file: !1151, line: 1317, baseType: !145, size: 32, offset: 12992)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1150, file: !1151, line: 1319, baseType: !1149, size: 64, offset: 13056)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1150, file: !1151, line: 1322, baseType: !2042, size: 64, offset: 13120)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2044, line: 9, flags: DIFlagFwdDecl)
!2044 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1150, file: !1151, line: 1326, baseType: !1162, size: 32, offset: 13184)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1150, file: !1151, line: 1342, baseType: !144, size: 64, offset: 13248)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1150, file: !1151, line: 1343, baseType: !444, size: 64, offset: 13312)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1150, file: !1151, line: 1344, baseType: !443, size: 64, offset: 13376)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1150, file: !1151, line: 1345, baseType: !444, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1150, file: !1151, line: 1346, baseType: !444, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1150, file: !1151, line: 1347, baseType: !444, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1150, file: !1151, line: 1348, baseType: !390, size: 128, align: 64, offset: 13504)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1150, file: !1151, line: 1358, baseType: !2054, size: 34816, offset: 13824)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2055, line: 485, size: 34816, elements: !2056)
!2055 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2056 = !{!2057, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2086, !2087, !2088, !2089, !2090, !2091, !2094, !2095, !2096}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2054, file: !2055, line: 487, baseType: !2058, size: 192)
!2058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2059, size: 192, elements: !681)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2060, line: 16, size: 64, elements: !2061)
!2060 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2061 = !{!2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2059, file: !2060, line: 17, baseType: !328, size: 16)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2059, file: !2060, line: 18, baseType: !328, size: 16, offset: 16)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2059, file: !2060, line: 19, baseType: !328, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2059, file: !2060, line: 19, baseType: !328, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2059, file: !2060, line: 19, baseType: !328, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2059, file: !2060, line: 19, baseType: !328, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2059, file: !2060, line: 19, baseType: !328, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2059, file: !2060, line: 20, baseType: !328, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2059, file: !2060, line: 20, baseType: !328, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2059, file: !2060, line: 20, baseType: !328, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2059, file: !2060, line: 20, baseType: !328, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2059, file: !2060, line: 20, baseType: !328, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2059, file: !2060, line: 20, baseType: !328, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2054, file: !2055, line: 491, baseType: !197, size: 64, offset: 192)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2054, file: !2055, line: 495, baseType: !191, size: 16, offset: 256)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2054, file: !2055, line: 496, baseType: !191, size: 16, offset: 272)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2054, file: !2055, line: 497, baseType: !191, size: 16, offset: 288)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2054, file: !2055, line: 498, baseType: !191, size: 16, offset: 304)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2054, file: !2055, line: 502, baseType: !197, size: 64, offset: 320)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2054, file: !2055, line: 503, baseType: !197, size: 64, offset: 384)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2054, file: !2055, line: 514, baseType: !2083, size: 256, offset: 448)
!2083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2084, size: 256, elements: !159)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2055, line: 483, flags: DIFlagFwdDecl)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2054, file: !2055, line: 516, baseType: !197, size: 64, offset: 704)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2054, file: !2055, line: 518, baseType: !197, size: 64, offset: 768)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2054, file: !2055, line: 520, baseType: !197, size: 64, offset: 832)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2054, file: !2055, line: 521, baseType: !197, size: 64, offset: 896)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2054, file: !2055, line: 522, baseType: !197, size: 64, offset: 960)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2054, file: !2055, line: 528, baseType: !2092, size: 64, offset: 1024)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2055, line: 10, flags: DIFlagFwdDecl)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2054, file: !2055, line: 535, baseType: !197, size: 64, offset: 1088)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2054, file: !2055, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2054, file: !2055, line: 540, baseType: !2097, size: 33280, offset: 1536)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2098, line: 317, size: 33280, elements: !2099)
!2098 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2099 = !{!2100, !2101, !2102}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2097, file: !2098, line: 330, baseType: !7, size: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2097, file: !2098, line: 337, baseType: !197, size: 64, offset: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2097, file: !2098, line: 348, baseType: !2103, size: 32768, offset: 512)
!2103 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2098, line: 304, size: 32768, elements: !2104)
!2104 = !{!2105, !2120, !2155, !2205, !2218}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2103, file: !2098, line: 305, baseType: !2106, size: 896)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2098, line: 12, size: 896, elements: !2107)
!2107 = !{!2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2119}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2106, file: !2098, line: 13, baseType: !440, size: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2106, file: !2098, line: 14, baseType: !440, size: 32, offset: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2106, file: !2098, line: 15, baseType: !440, size: 32, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2106, file: !2098, line: 16, baseType: !440, size: 32, offset: 96)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2106, file: !2098, line: 17, baseType: !440, size: 32, offset: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2106, file: !2098, line: 18, baseType: !440, size: 32, offset: 160)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2106, file: !2098, line: 19, baseType: !440, size: 32, offset: 192)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2106, file: !2098, line: 22, baseType: !2116, size: 640, offset: 224)
!2116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 640, elements: !2117)
!2117 = !{!2118}
!2118 = !DISubrange(count: 20)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2106, file: !2098, line: 25, baseType: !440, size: 32, offset: 864)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2103, file: !2098, line: 306, baseType: !2121, size: 4096, align: 128)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2098, line: 34, size: 4096, align: 128, elements: !2122)
!2122 = !{!2123, !2124, !2125, !2126, !2127, !2142, !2143, !2144, !2146, !2148, !2150}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2121, file: !2098, line: 35, baseType: !328, size: 16)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2121, file: !2098, line: 36, baseType: !328, size: 16, offset: 16)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2121, file: !2098, line: 37, baseType: !328, size: 16, offset: 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2121, file: !2098, line: 38, baseType: !328, size: 16, offset: 48)
!2127 = !DIDerivedType(tag: DW_TAG_member, scope: !2121, file: !2098, line: 39, baseType: !2128, size: 128, offset: 64)
!2128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2121, file: !2098, line: 39, size: 128, elements: !2129)
!2129 = !{!2130, !2135}
!2130 = !DIDerivedType(tag: DW_TAG_member, scope: !2128, file: !2098, line: 40, baseType: !2131, size: 128)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2128, file: !2098, line: 40, size: 128, elements: !2132)
!2132 = !{!2133, !2134}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2131, file: !2098, line: 41, baseType: !443, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2131, file: !2098, line: 42, baseType: !443, size: 64, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, scope: !2128, file: !2098, line: 44, baseType: !2136, size: 128)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2128, file: !2098, line: 44, size: 128, elements: !2137)
!2137 = !{!2138, !2139, !2140, !2141}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2136, file: !2098, line: 45, baseType: !440, size: 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2136, file: !2098, line: 46, baseType: !440, size: 32, offset: 32)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2136, file: !2098, line: 47, baseType: !440, size: 32, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2136, file: !2098, line: 48, baseType: !440, size: 32, offset: 96)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2121, file: !2098, line: 51, baseType: !440, size: 32, offset: 192)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2121, file: !2098, line: 52, baseType: !440, size: 32, offset: 224)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2121, file: !2098, line: 55, baseType: !2145, size: 1024, offset: 256)
!2145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 1024, elements: !235)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2121, file: !2098, line: 58, baseType: !2147, size: 2048, offset: 1280)
!2147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 2048, elements: !1807)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2121, file: !2098, line: 60, baseType: !2149, size: 384, offset: 3328)
!2149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 384, elements: !203)
!2150 = !DIDerivedType(tag: DW_TAG_member, scope: !2121, file: !2098, line: 62, baseType: !2151, size: 384, offset: 3712)
!2151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2121, file: !2098, line: 62, size: 384, elements: !2152)
!2152 = !{!2153, !2154}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2151, file: !2098, line: 63, baseType: !2149, size: 384)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2151, file: !2098, line: 64, baseType: !2149, size: 384)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2103, file: !2098, line: 307, baseType: !2156, size: 1088)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2098, line: 79, size: 1088, elements: !2157)
!2157 = !{!2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2204}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2156, file: !2098, line: 80, baseType: !440, size: 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2156, file: !2098, line: 81, baseType: !440, size: 32, offset: 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2156, file: !2098, line: 82, baseType: !440, size: 32, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2156, file: !2098, line: 83, baseType: !440, size: 32, offset: 96)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2156, file: !2098, line: 84, baseType: !440, size: 32, offset: 128)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2156, file: !2098, line: 85, baseType: !440, size: 32, offset: 160)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2156, file: !2098, line: 86, baseType: !440, size: 32, offset: 192)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2156, file: !2098, line: 88, baseType: !2116, size: 640, offset: 224)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2156, file: !2098, line: 89, baseType: !1284, size: 8, offset: 864)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2156, file: !2098, line: 90, baseType: !1284, size: 8, offset: 872)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2156, file: !2098, line: 91, baseType: !1284, size: 8, offset: 880)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2156, file: !2098, line: 92, baseType: !1284, size: 8, offset: 888)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2156, file: !2098, line: 93, baseType: !1284, size: 8, offset: 896)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2156, file: !2098, line: 94, baseType: !1284, size: 8, offset: 904)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2156, file: !2098, line: 95, baseType: !2173, size: 64, offset: 960)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2175, line: 11, size: 128, elements: !2176)
!2175 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2176 = !{!2177, !2178}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2174, file: !2175, line: 12, baseType: !146, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2174, file: !2175, line: 13, baseType: !2179, size: 64, offset: 64)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2181, line: 56, size: 1344, elements: !2182)
!2181 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2182 = !{!2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2180, file: !2181, line: 61, baseType: !197, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2180, file: !2181, line: 62, baseType: !197, size: 64, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2180, file: !2181, line: 63, baseType: !197, size: 64, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2180, file: !2181, line: 64, baseType: !197, size: 64, offset: 192)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2180, file: !2181, line: 65, baseType: !197, size: 64, offset: 256)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2180, file: !2181, line: 66, baseType: !197, size: 64, offset: 320)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2180, file: !2181, line: 68, baseType: !197, size: 64, offset: 384)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2180, file: !2181, line: 69, baseType: !197, size: 64, offset: 448)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2180, file: !2181, line: 70, baseType: !197, size: 64, offset: 512)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2180, file: !2181, line: 71, baseType: !197, size: 64, offset: 576)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2180, file: !2181, line: 72, baseType: !197, size: 64, offset: 640)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2180, file: !2181, line: 73, baseType: !197, size: 64, offset: 704)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2180, file: !2181, line: 74, baseType: !197, size: 64, offset: 768)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2180, file: !2181, line: 75, baseType: !197, size: 64, offset: 832)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2180, file: !2181, line: 76, baseType: !197, size: 64, offset: 896)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2180, file: !2181, line: 81, baseType: !197, size: 64, offset: 960)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2180, file: !2181, line: 83, baseType: !197, size: 64, offset: 1024)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2180, file: !2181, line: 84, baseType: !197, size: 64, offset: 1088)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2180, file: !2181, line: 85, baseType: !197, size: 64, offset: 1152)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2180, file: !2181, line: 86, baseType: !197, size: 64, offset: 1216)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2180, file: !2181, line: 87, baseType: !197, size: 64, offset: 1280)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2156, file: !2098, line: 96, baseType: !440, size: 32, offset: 1024)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2103, file: !2098, line: 308, baseType: !2206, size: 4608, align: 512)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2098, line: 289, size: 4608, align: 512, elements: !2207)
!2207 = !{!2208, !2209, !2216}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2206, file: !2098, line: 290, baseType: !2121, size: 4096, align: 128)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2206, file: !2098, line: 291, baseType: !2210, size: 512, offset: 4096)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2098, line: 268, size: 512, elements: !2211)
!2211 = !{!2212, !2213, !2214}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2210, file: !2098, line: 269, baseType: !443, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2210, file: !2098, line: 270, baseType: !443, size: 64, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2210, file: !2098, line: 271, baseType: !2215, size: 384, offset: 128)
!2215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 384, elements: !156)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2206, file: !2098, line: 292, baseType: !2217, offset: 4608)
!2217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1284, elements: !1647)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2103, file: !2098, line: 309, baseType: !2219, size: 32768)
!2219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1284, size: 32768, elements: !2220)
!2220 = !{!2221}
!2221 = !DISubrange(count: 4096)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1146, file: !755, line: 378, baseType: !2223, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1142, file: !755, line: 384, baseType: !1430, size: 192, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1001, file: !755, line: 500, baseType: !352, offset: 6656)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1001, file: !755, line: 501, baseType: !2227, size: 64, offset: 6656)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !755, line: 387, flags: DIFlagFwdDecl)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1001, file: !755, line: 516, baseType: !1637, size: 64, offset: 6720)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1001, file: !755, line: 519, baseType: !377, size: 64, offset: 6784)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1001, file: !755, line: 521, baseType: !2232, size: 64, offset: 6848)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !755, line: 521, flags: DIFlagFwdDecl)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1001, file: !755, line: 545, baseType: !779, size: 32, offset: 6912)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1001, file: !755, line: 548, baseType: !513, size: 8, offset: 6944)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1001, file: !755, line: 550, baseType: !2237, offset: 6952)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2238, line: 142, elements: !366)
!2238 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1001, file: !755, line: 554, baseType: !1885, size: 256, offset: 6976)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1001, file: !755, line: 557, baseType: !440, size: 32, offset: 7232)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !998, file: !755, line: 565, baseType: !2242, offset: 7296)
!2242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, elements: !2243)
!2243 = !{!2244}
!2244 = !DISubrange(count: -1)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !994, file: !755, line: 151, baseType: !779, size: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !987, file: !755, line: 156, baseType: !352, offset: 256)
!2247 = !DIDerivedType(tag: DW_TAG_member, scope: !759, file: !755, line: 159, baseType: !2248, size: 128)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !759, file: !755, line: 159, size: 128, elements: !2249)
!2249 = !{!2250, !2253}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2248, file: !755, line: 161, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !755, line: 161, flags: DIFlagFwdDecl)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2248, file: !755, line: 162, baseType: !144, size: 64, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !759, file: !755, line: 176, baseType: !390, size: 128, align: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, scope: !754, file: !755, line: 179, baseType: !2256, size: 32, offset: 384)
!2256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !754, file: !755, line: 179, size: 32, elements: !2257)
!2257 = !{!2258, !2259, !2260, !2261}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2256, file: !755, line: 184, baseType: !779, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2256, file: !755, line: 192, baseType: !7, size: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2256, file: !755, line: 194, baseType: !7, size: 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2256, file: !755, line: 195, baseType: !145, size: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !754, file: !755, line: 199, baseType: !779, size: 32, offset: 416)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !689, file: !31, line: 1964, baseType: !2264, size: 64, offset: 1344)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!146, !626, !2267}
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2269, line: 12, size: 256, elements: !2270)
!2269 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2270 = !{!2271, !2272, !2273, !2274, !2275}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2268, file: !2269, line: 13, baseType: !142, size: 32)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2268, file: !2269, line: 16, baseType: !145, size: 32, offset: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2268, file: !2269, line: 23, baseType: !197, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2268, file: !2269, line: 30, baseType: !197, size: 64, offset: 128)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2268, file: !2269, line: 33, baseType: !2276, size: 64, offset: 192)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !755, line: 27, flags: DIFlagFwdDecl)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !689, file: !31, line: 1966, baseType: !2264, size: 64, offset: 1408)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !627, file: !31, line: 1424, baseType: !2280, size: 64, offset: 448)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2282)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 322, size: 704, elements: !2283)
!2283 = !{!2284, !2330, !2334, !2338, !2339, !2340, !2341, !2342, !2347, !2352, !2356}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2282, file: !25, line: 323, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!145, !2288}
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 294, size: 1600, elements: !2290)
!2290 = !{!2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2315, !2316, !2317}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2289, file: !25, line: 295, baseType: !669, size: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2289, file: !25, line: 296, baseType: !368, size: 128, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2289, file: !25, line: 297, baseType: !368, size: 128, offset: 256)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2289, file: !25, line: 298, baseType: !368, size: 128, offset: 384)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2289, file: !25, line: 299, baseType: !338, size: 192, offset: 512)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2289, file: !25, line: 300, baseType: !352, offset: 704)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2289, file: !25, line: 301, baseType: !779, size: 32, offset: 704)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2289, file: !25, line: 302, baseType: !626, size: 64, offset: 768)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2289, file: !25, line: 303, baseType: !2300, size: 64, offset: 832)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !2301)
!2301 = !{!2302, !2314}
!2302 = !DIDerivedType(tag: DW_TAG_member, scope: !2300, file: !25, line: 69, baseType: !2303, size: 32)
!2303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2300, file: !25, line: 69, size: 32, elements: !2304)
!2304 = !{!2305, !2306, !2307}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2303, file: !25, line: 70, baseType: !456, size: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2303, file: !25, line: 71, baseType: !465, size: 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2303, file: !25, line: 72, baseType: !2308, size: 32)
!2308 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2309, line: 24, baseType: !2310)
!2309 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2309, line: 22, size: 32, elements: !2311)
!2311 = !{!2312}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2310, file: !2309, line: 23, baseType: !2313, size: 32)
!2313 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2309, line: 20, baseType: !462)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2300, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2289, file: !25, line: 304, baseType: !554, size: 64, offset: 896)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2289, file: !25, line: 305, baseType: !197, size: 64, offset: 960)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2289, file: !25, line: 306, baseType: !2318, size: 576, offset: 1024)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !2319)
!2319 = !{!2320, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2318, file: !25, line: 206, baseType: !2321, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !350)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2318, file: !25, line: 207, baseType: !2321, size: 64, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2318, file: !25, line: 208, baseType: !2321, size: 64, offset: 128)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2318, file: !25, line: 209, baseType: !2321, size: 64, offset: 192)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2318, file: !25, line: 210, baseType: !2321, size: 64, offset: 256)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2318, file: !25, line: 211, baseType: !2321, size: 64, offset: 320)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2318, file: !25, line: 212, baseType: !2321, size: 64, offset: 384)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2318, file: !25, line: 213, baseType: !561, size: 64, offset: 448)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2318, file: !25, line: 214, baseType: !561, size: 64, offset: 512)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2282, file: !25, line: 324, baseType: !2331, size: 64, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!2288, !626, !145}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2282, file: !25, line: 325, baseType: !2335, size: 64, offset: 128)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{null, !2288}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2282, file: !25, line: 326, baseType: !2285, size: 64, offset: 192)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2282, file: !25, line: 327, baseType: !2285, size: 64, offset: 256)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2282, file: !25, line: 328, baseType: !2285, size: 64, offset: 320)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2282, file: !25, line: 329, baseType: !717, size: 64, offset: 384)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2282, file: !25, line: 332, baseType: !2343, size: 64, offset: 448)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!2346, !449}
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2282, file: !25, line: 333, baseType: !2348, size: 64, offset: 512)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!145, !449, !2351}
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2282, file: !25, line: 335, baseType: !2353, size: 64, offset: 576)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!145, !449, !2346}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2282, file: !25, line: 337, baseType: !2357, size: 64, offset: 640)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!145, !626, !2360}
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !627, file: !31, line: 1425, baseType: !2362, size: 64, offset: 512)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2364)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 428, size: 704, elements: !2365)
!2365 = !{!2366, !2370, !2371, !2375, !2376, !2377, !2392, !2415, !2419, !2420, !2443}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2364, file: !25, line: 429, baseType: !2367, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!145, !626, !145, !145, !570}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2364, file: !25, line: 430, baseType: !717, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2364, file: !25, line: 431, baseType: !2372, size: 64, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!145, !626, !7}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2364, file: !25, line: 432, baseType: !2372, size: 64, offset: 192)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2364, file: !25, line: 433, baseType: !717, size: 64, offset: 256)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2364, file: !25, line: 434, baseType: !2378, size: 64, offset: 320)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!145, !626, !145, !2381}
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 415, size: 256, elements: !2383)
!2383 = !{!2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2382, file: !25, line: 416, baseType: !145, size: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2382, file: !25, line: 417, baseType: !7, size: 32, offset: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2382, file: !25, line: 418, baseType: !7, size: 32, offset: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2382, file: !25, line: 420, baseType: !7, size: 32, offset: 96)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2382, file: !25, line: 421, baseType: !7, size: 32, offset: 128)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2382, file: !25, line: 422, baseType: !7, size: 32, offset: 160)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2382, file: !25, line: 423, baseType: !7, size: 32, offset: 192)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2382, file: !25, line: 424, baseType: !7, size: 32, offset: 224)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2364, file: !25, line: 435, baseType: !2393, size: 64, offset: 384)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!145, !626, !2300, !2396}
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 343, size: 960, elements: !2398)
!2398 = !{!2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2397, file: !25, line: 344, baseType: !145, size: 32)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2397, file: !25, line: 345, baseType: !443, size: 64, offset: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2397, file: !25, line: 346, baseType: !443, size: 64, offset: 128)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2397, file: !25, line: 347, baseType: !443, size: 64, offset: 192)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2397, file: !25, line: 348, baseType: !443, size: 64, offset: 256)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2397, file: !25, line: 349, baseType: !443, size: 64, offset: 320)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2397, file: !25, line: 350, baseType: !443, size: 64, offset: 384)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2397, file: !25, line: 351, baseType: !348, size: 64, offset: 448)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2397, file: !25, line: 353, baseType: !348, size: 64, offset: 512)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2397, file: !25, line: 354, baseType: !145, size: 32, offset: 576)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2397, file: !25, line: 355, baseType: !145, size: 32, offset: 608)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2397, file: !25, line: 356, baseType: !443, size: 64, offset: 640)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2397, file: !25, line: 357, baseType: !443, size: 64, offset: 704)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2397, file: !25, line: 358, baseType: !443, size: 64, offset: 768)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2397, file: !25, line: 359, baseType: !348, size: 64, offset: 832)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2397, file: !25, line: 360, baseType: !145, size: 32, offset: 896)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2364, file: !25, line: 436, baseType: !2416, size: 64, offset: 448)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!145, !626, !2360, !2396}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2364, file: !25, line: 438, baseType: !2393, size: 64, offset: 512)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2364, file: !25, line: 439, baseType: !2421, size: 64, offset: 576)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!145, !626, !2424}
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 409, size: 1408, elements: !2426)
!2426 = !{!2427, !2428}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2425, file: !25, line: 410, baseType: !7, size: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2425, file: !25, line: 411, baseType: !2429, size: 1344, offset: 64)
!2429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2430, size: 1344, elements: !681)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 395, size: 448, elements: !2431)
!2431 = !{!2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2442}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2430, file: !25, line: 396, baseType: !7, size: 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2430, file: !25, line: 397, baseType: !7, size: 32, offset: 32)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2430, file: !25, line: 399, baseType: !7, size: 32, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2430, file: !25, line: 400, baseType: !7, size: 32, offset: 96)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2430, file: !25, line: 401, baseType: !7, size: 32, offset: 128)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2430, file: !25, line: 402, baseType: !7, size: 32, offset: 160)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2430, file: !25, line: 403, baseType: !7, size: 32, offset: 192)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2430, file: !25, line: 404, baseType: !445, size: 64, offset: 256)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2430, file: !25, line: 405, baseType: !2441, size: 64, offset: 320)
!2441 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !143, line: 126, baseType: !443)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2430, file: !25, line: 406, baseType: !2441, size: 64, offset: 384)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2364, file: !25, line: 440, baseType: !2372, size: 64, offset: 640)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !627, file: !31, line: 1426, baseType: !2445, size: 64, offset: 576)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2447)
!2447 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !627, file: !31, line: 1427, baseType: !197, size: 64, offset: 640)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !627, file: !31, line: 1428, baseType: !197, size: 64, offset: 704)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !627, file: !31, line: 1429, baseType: !197, size: 64, offset: 768)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !627, file: !31, line: 1430, baseType: !407, size: 64, offset: 832)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !627, file: !31, line: 1431, baseType: !799, size: 256, offset: 896)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !627, file: !31, line: 1432, baseType: !145, size: 32, offset: 1152)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !627, file: !31, line: 1433, baseType: !779, size: 32, offset: 1184)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !627, file: !31, line: 1437, baseType: !2456, size: 64, offset: 1216)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2459)
!2459 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !627, file: !31, line: 1449, baseType: !2461, size: 64, offset: 1280)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !423, line: 34, size: 64, elements: !2462)
!2462 = !{!2463}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2461, file: !423, line: 35, baseType: !426, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !627, file: !31, line: 1450, baseType: !368, size: 128, offset: 1344)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !627, file: !31, line: 1451, baseType: !2466, size: 64, offset: 1472)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !627, file: !31, line: 1452, baseType: !1851, size: 64, offset: 1536)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !627, file: !31, line: 1453, baseType: !2470, size: 64, offset: 1600)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !627, file: !31, line: 1454, baseType: !669, size: 128, offset: 1664)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !627, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !627, file: !31, line: 1456, baseType: !2475, size: 2432, offset: 1856)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 518, size: 2432, elements: !2476)
!2476 = !{!2477, !2478, !2479, !2481, !2513}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2475, file: !25, line: 519, baseType: !7, size: 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2475, file: !25, line: 520, baseType: !799, size: 256, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2475, file: !25, line: 521, baseType: !2480, size: 192, offset: 320)
!2480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 192, elements: !681)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2475, file: !25, line: 522, baseType: !2482, size: 1728, offset: 512)
!2482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2483, size: 1728, elements: !681)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !2484)
!2484 = !{!2485, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2483, file: !25, line: 223, baseType: !2486, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 443, size: 256, elements: !2488)
!2488 = !{!2489, !2490, !2503, !2504}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2487, file: !25, line: 444, baseType: !145, size: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2487, file: !25, line: 445, baseType: !2491, size: 64, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2493)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 310, size: 512, elements: !2494)
!2494 = !{!2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2493, file: !25, line: 311, baseType: !717, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2493, file: !25, line: 312, baseType: !717, size: 64, offset: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2493, file: !25, line: 313, baseType: !717, size: 64, offset: 128)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2493, file: !25, line: 314, baseType: !717, size: 64, offset: 192)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2493, file: !25, line: 315, baseType: !2285, size: 64, offset: 256)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2493, file: !25, line: 316, baseType: !2285, size: 64, offset: 320)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2493, file: !25, line: 317, baseType: !2285, size: 64, offset: 384)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2493, file: !25, line: 318, baseType: !2357, size: 64, offset: 448)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2487, file: !25, line: 446, baseType: !660, size: 64, offset: 128)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2487, file: !25, line: 447, baseType: !2486, size: 64, offset: 192)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2483, file: !25, line: 224, baseType: !145, size: 32, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2483, file: !25, line: 226, baseType: !368, size: 128, offset: 128)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2483, file: !25, line: 227, baseType: !197, size: 64, offset: 256)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2483, file: !25, line: 228, baseType: !7, size: 32, offset: 320)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2483, file: !25, line: 229, baseType: !7, size: 32, offset: 352)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2483, file: !25, line: 230, baseType: !2321, size: 64, offset: 384)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2483, file: !25, line: 231, baseType: !2321, size: 64, offset: 448)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2483, file: !25, line: 232, baseType: !144, size: 64, offset: 512)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2475, file: !25, line: 523, baseType: !2514, size: 192, offset: 2240)
!2514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2491, size: 192, elements: !681)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !627, file: !31, line: 1458, baseType: !2516, size: 2112, offset: 4288)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !2517)
!2517 = !{!2518, !2519, !2520}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2516, file: !31, line: 1411, baseType: !145, size: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2516, file: !31, line: 1412, baseType: !1409, size: 128, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2516, file: !31, line: 1413, baseType: !2521, size: 1920, offset: 192)
!2521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2522, size: 1920, elements: !681)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2523, line: 12, size: 640, elements: !2524)
!2523 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2524 = !{!2525, !2533, !2534, !2539, !2540}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2522, file: !2523, line: 13, baseType: !2526, size: 320)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2527, line: 17, size: 320, elements: !2528)
!2527 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2528 = !{!2529, !2530, !2531, !2532}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2526, file: !2527, line: 18, baseType: !145, size: 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2526, file: !2527, line: 19, baseType: !145, size: 32, offset: 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2526, file: !2527, line: 20, baseType: !1409, size: 128, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2526, file: !2527, line: 22, baseType: !390, size: 128, align: 64, offset: 192)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2522, file: !2523, line: 14, baseType: !237, size: 64, offset: 320)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2522, file: !2523, line: 15, baseType: !2535, size: 64, offset: 384)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2536, line: 16, size: 64, elements: !2537)
!2536 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2537 = !{!2538}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2535, file: !2536, line: 17, baseType: !1149, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2522, file: !2523, line: 16, baseType: !1409, size: 128, offset: 448)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2522, file: !2523, line: 17, baseType: !779, size: 32, offset: 576)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !627, file: !31, line: 1465, baseType: !144, size: 64, offset: 6400)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !627, file: !31, line: 1468, baseType: !440, size: 32, offset: 6464)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !627, file: !31, line: 1470, baseType: !561, size: 64, offset: 6528)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !627, file: !31, line: 1471, baseType: !561, size: 64, offset: 6592)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !627, file: !31, line: 1473, baseType: !232, size: 32, offset: 6656)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !627, file: !31, line: 1474, baseType: !2547, size: 64, offset: 6720)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !627, file: !31, line: 1477, baseType: !2550, size: 256, offset: 6784)
!2550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 256, elements: !235)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !627, file: !31, line: 1478, baseType: !2552, size: 128, offset: 7040)
!2552 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2553, line: 18, baseType: !2554)
!2553 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2553, line: 16, size: 128, elements: !2555)
!2555 = !{!2556}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2554, file: !2553, line: 17, baseType: !2557, size: 128)
!2557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 128, elements: !1659)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !627, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !627, file: !31, line: 1481, baseType: !2560, size: 32, offset: 7200)
!2560 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !143, line: 150, baseType: !7)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !627, file: !31, line: 1487, baseType: !338, size: 192, offset: 7232)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !627, file: !31, line: 1493, baseType: !179, size: 64, offset: 7424)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !627, file: !31, line: 1495, baseType: !2564, size: 64, offset: 7488)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2566)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !405, line: 135, size: 1024, align: 512, elements: !2567)
!2567 = !{!2568, !2572, !2573, !2580, !2586, !2590, !2594, !2598, !2599, !2603, !2607, !2612, !2616}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2566, file: !405, line: 136, baseType: !2569, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!145, !407, !7}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2566, file: !405, line: 137, baseType: !2569, size: 64, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2566, file: !405, line: 138, baseType: !2574, size: 64, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!145, !2577, !2579}
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2566, file: !405, line: 139, baseType: !2581, size: 64, offset: 192)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!145, !2577, !7, !179, !2584}
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2566, file: !405, line: 141, baseType: !2587, size: 64, offset: 256)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!145, !2577}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2566, file: !405, line: 142, baseType: !2591, size: 64, offset: 320)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!145, !407}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2566, file: !405, line: 143, baseType: !2595, size: 64, offset: 384)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{null, !407}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2566, file: !405, line: 144, baseType: !2595, size: 64, offset: 448)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2566, file: !405, line: 145, baseType: !2600, size: 64, offset: 512)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{null, !407, !449}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2566, file: !405, line: 146, baseType: !2604, size: 64, offset: 576)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!508, !407, !508, !145}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2566, file: !405, line: 147, baseType: !2608, size: 64, offset: 640)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!403, !2611}
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2566, file: !405, line: 148, baseType: !2613, size: 64, offset: 704)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!145, !570, !513}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2566, file: !405, line: 149, baseType: !2617, size: 64, offset: 768)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!407, !407, !2620}
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !627, file: !31, line: 1500, baseType: !145, size: 32, offset: 7552)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !627, file: !31, line: 1502, baseType: !2624, size: 448, offset: 7616)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2269, line: 60, size: 448, elements: !2625)
!2625 = !{!2626, !2631, !2632, !2633, !2634, !2635, !2636}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2624, file: !2269, line: 61, baseType: !2627, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!197, !2630, !2267}
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2624, file: !2269, line: 63, baseType: !2627, size: 64, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2624, file: !2269, line: 66, baseType: !146, size: 64, offset: 128)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2624, file: !2269, line: 67, baseType: !145, size: 32, offset: 192)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2624, file: !2269, line: 68, baseType: !7, size: 32, offset: 224)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2624, file: !2269, line: 71, baseType: !368, size: 128, offset: 256)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2624, file: !2269, line: 77, baseType: !2637, size: 64, offset: 384)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !627, file: !31, line: 1505, baseType: !342, size: 64, offset: 8064)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !627, file: !31, line: 1508, baseType: !342, size: 64, offset: 8128)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !627, file: !31, line: 1511, baseType: !145, size: 32, offset: 8192)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !627, file: !31, line: 1514, baseType: !932, size: 32, offset: 8224)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !627, file: !31, line: 1517, baseType: !2643, size: 64, offset: 8256)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1886, line: 18, flags: DIFlagFwdDecl)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !627, file: !31, line: 1518, baseType: !665, size: 64, offset: 8320)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !627, file: !31, line: 1525, baseType: !1637, size: 64, offset: 8384)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !627, file: !31, line: 1532, baseType: !2648, size: 64, offset: 8448)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2649, line: 52, size: 64, elements: !2650)
!2649 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2650 = !{!2651}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2648, file: !2649, line: 53, baseType: !2652, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2649, line: 40, size: 256, elements: !2654)
!2654 = !{!2655, !2656, !2661}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2653, file: !2649, line: 42, baseType: !352)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2653, file: !2649, line: 44, baseType: !2657, size: 192)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2649, line: 28, size: 192, elements: !2658)
!2658 = !{!2659, !2660}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2657, file: !2649, line: 29, baseType: !368, size: 128)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2657, file: !2649, line: 31, baseType: !146, size: 64, offset: 128)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2653, file: !2649, line: 49, baseType: !146, size: 64, offset: 192)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !627, file: !31, line: 1533, baseType: !2648, size: 64, offset: 8512)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !627, file: !31, line: 1534, baseType: !390, size: 128, align: 64, offset: 8576)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !627, file: !31, line: 1535, baseType: !1885, size: 256, offset: 8704)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !627, file: !31, line: 1537, baseType: !338, size: 192, offset: 8960)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !627, file: !31, line: 1542, baseType: !145, size: 32, offset: 9152)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !627, file: !31, line: 1545, baseType: !352, offset: 9184)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !627, file: !31, line: 1546, baseType: !368, size: 128, offset: 9216)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !627, file: !31, line: 1548, baseType: !352, offset: 9344)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !627, file: !31, line: 1549, baseType: !368, size: 128, offset: 9344)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !450, file: !31, line: 624, baseType: !766, size: 64, offset: 256)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !450, file: !31, line: 631, baseType: !197, size: 64, offset: 320)
!2673 = !DIDerivedType(tag: DW_TAG_member, scope: !450, file: !31, line: 639, baseType: !2674, size: 32, offset: 384)
!2674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !450, file: !31, line: 639, size: 32, elements: !2675)
!2675 = !{!2676, !2678}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2674, file: !31, line: 640, baseType: !2677, size: 32)
!2677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2674, file: !31, line: 641, baseType: !7, size: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !450, file: !31, line: 643, baseType: !536, size: 32, offset: 416)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !450, file: !31, line: 644, baseType: !554, size: 64, offset: 448)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !450, file: !31, line: 645, baseType: !557, size: 128, offset: 512)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !450, file: !31, line: 646, baseType: !557, size: 128, offset: 640)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !450, file: !31, line: 647, baseType: !557, size: 128, offset: 768)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !450, file: !31, line: 648, baseType: !352, offset: 896)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !450, file: !31, line: 649, baseType: !191, size: 16, offset: 896)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !450, file: !31, line: 650, baseType: !1284, size: 8, offset: 912)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !450, file: !31, line: 651, baseType: !1284, size: 8, offset: 920)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !450, file: !31, line: 652, baseType: !2441, size: 64, offset: 960)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !450, file: !31, line: 659, baseType: !197, size: 64, offset: 1024)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !450, file: !31, line: 660, baseType: !799, size: 256, offset: 1088)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !450, file: !31, line: 662, baseType: !197, size: 64, offset: 1344)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !450, file: !31, line: 663, baseType: !197, size: 64, offset: 1408)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !450, file: !31, line: 665, baseType: !669, size: 128, offset: 1472)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !450, file: !31, line: 666, baseType: !368, size: 128, offset: 1600)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !450, file: !31, line: 675, baseType: !368, size: 128, offset: 1728)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !450, file: !31, line: 676, baseType: !368, size: 128, offset: 1856)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !450, file: !31, line: 677, baseType: !368, size: 128, offset: 1984)
!2698 = !DIDerivedType(tag: DW_TAG_member, scope: !450, file: !31, line: 678, baseType: !2699, size: 128, offset: 2112)
!2699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !450, file: !31, line: 678, size: 128, elements: !2700)
!2700 = !{!2701, !2702}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2699, file: !31, line: 679, baseType: !665, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2699, file: !31, line: 680, baseType: !390, size: 128, align: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !450, file: !31, line: 682, baseType: !344, size: 64, offset: 2240)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !450, file: !31, line: 683, baseType: !344, size: 64, offset: 2304)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !450, file: !31, line: 684, baseType: !779, size: 32, offset: 2368)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !450, file: !31, line: 685, baseType: !779, size: 32, offset: 2400)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !450, file: !31, line: 686, baseType: !779, size: 32, offset: 2432)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !450, file: !31, line: 688, baseType: !779, size: 32, offset: 2464)
!2709 = !DIDerivedType(tag: DW_TAG_member, scope: !450, file: !31, line: 690, baseType: !2710, size: 64, offset: 2496)
!2710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !450, file: !31, line: 690, size: 64, elements: !2711)
!2711 = !{!2712, !2935}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2710, file: !31, line: 691, baseType: !2713, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2715)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !2716)
!2716 = !{!2717, !2718, !2722, !2727, !2731, !2732, !2733, !2737, !2750, !2751, !2759, !2763, !2764, !2768, !2769, !2773, !2778, !2779, !2783, !2787, !2895, !2899, !2900, !2904, !2905, !2909, !2913, !2918, !2922, !2926, !2930, !2934}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2715, file: !31, line: 1823, baseType: !660, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2715, file: !31, line: 1824, baseType: !2719, size: 64, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!554, !377, !554, !145}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2715, file: !31, line: 1825, baseType: !2723, size: 64, offset: 128)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!599, !377, !508, !602, !2726}
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2715, file: !31, line: 1826, baseType: !2728, size: 64, offset: 192)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!599, !377, !179, !602, !2726}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2715, file: !31, line: 1827, baseType: !869, size: 64, offset: 256)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2715, file: !31, line: 1828, baseType: !869, size: 64, offset: 320)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2715, file: !31, line: 1829, baseType: !2734, size: 64, offset: 384)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!145, !872, !513}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2715, file: !31, line: 1830, baseType: !2738, size: 64, offset: 448)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!145, !377, !2741}
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !2743)
!2743 = !{!2744, !2749}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2742, file: !31, line: 1777, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !2746)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!145, !2741, !179, !145, !554, !443, !7}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2742, file: !31, line: 1778, baseType: !554, size: 64, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2715, file: !31, line: 1831, baseType: !2738, size: 64, offset: 512)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2715, file: !31, line: 1832, baseType: !2752, size: 64, offset: 576)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!2755, !377, !2757}
!2755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2756, line: 52, baseType: !7)
!2756 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !646, line: 27, flags: DIFlagFwdDecl)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2715, file: !31, line: 1833, baseType: !2760, size: 64, offset: 640)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!146, !377, !7, !197}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2715, file: !31, line: 1834, baseType: !2760, size: 64, offset: 704)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2715, file: !31, line: 1835, baseType: !2765, size: 64, offset: 768)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!145, !377, !1004}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2715, file: !31, line: 1836, baseType: !197, size: 64, offset: 832)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2715, file: !31, line: 1837, baseType: !2770, size: 64, offset: 896)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!145, !449, !377}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2715, file: !31, line: 1838, baseType: !2774, size: 64, offset: 960)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!145, !377, !2777}
!2777 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !144)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2715, file: !31, line: 1839, baseType: !2770, size: 64, offset: 1024)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2715, file: !31, line: 1840, baseType: !2780, size: 64, offset: 1088)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!145, !377, !554, !554, !145}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2715, file: !31, line: 1841, baseType: !2784, size: 64, offset: 1152)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!145, !145, !377, !145}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2715, file: !31, line: 1842, baseType: !2788, size: 64, offset: 1216)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!145, !377, !145, !2791}
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !2793)
!2793 = !{!2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2825, !2826, !2827, !2840, !2871}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2792, file: !31, line: 1063, baseType: !2791, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2792, file: !31, line: 1064, baseType: !368, size: 128, offset: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2792, file: !31, line: 1065, baseType: !669, size: 128, offset: 192)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2792, file: !31, line: 1066, baseType: !368, size: 128, offset: 320)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2792, file: !31, line: 1069, baseType: !368, size: 128, offset: 448)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2792, file: !31, line: 1072, baseType: !2777, size: 64, offset: 576)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2792, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2792, file: !31, line: 1074, baseType: !150, size: 8, offset: 672)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2792, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2792, file: !31, line: 1076, baseType: !145, size: 32, offset: 736)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2792, file: !31, line: 1077, baseType: !1409, size: 128, offset: 768)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2792, file: !31, line: 1078, baseType: !377, size: 64, offset: 896)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2792, file: !31, line: 1079, baseType: !554, size: 64, offset: 960)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2792, file: !31, line: 1080, baseType: !554, size: 64, offset: 1024)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2792, file: !31, line: 1082, baseType: !2809, size: 64, offset: 1088)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !2811)
!2811 = !{!2812, !2820, !2821, !2822, !2823, !2824}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2810, file: !31, line: 1315, baseType: !2813)
!2813 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2814, line: 20, baseType: !2815)
!2814 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2814, line: 11, elements: !2816)
!2816 = !{!2817}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2815, file: !2814, line: 12, baseType: !2818)
!2818 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !364, line: 33, baseType: !2819)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !364, line: 31, elements: !366)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2810, file: !31, line: 1316, baseType: !145, size: 32)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2810, file: !31, line: 1317, baseType: !145, size: 32, offset: 32)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2810, file: !31, line: 1318, baseType: !2809, size: 64, offset: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2810, file: !31, line: 1319, baseType: !377, size: 64, offset: 128)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2810, file: !31, line: 1320, baseType: !390, size: 128, align: 64, offset: 192)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2792, file: !31, line: 1084, baseType: !197, size: 64, offset: 1152)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2792, file: !31, line: 1085, baseType: !197, size: 64, offset: 1216)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2792, file: !31, line: 1087, baseType: !2828, size: 64, offset: 1280)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2830)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !2831)
!2831 = !{!2832, !2836}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2830, file: !31, line: 1012, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{null, !2791, !2791}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2830, file: !31, line: 1013, baseType: !2837, size: 64, offset: 64)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{null, !2791}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2792, file: !31, line: 1088, baseType: !2841, size: 64, offset: 1344)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2843)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !2844)
!2844 = !{!2845, !2849, !2853, !2854, !2858, !2862, !2866, !2870}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2843, file: !31, line: 1017, baseType: !2846, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!2777, !2777}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2843, file: !31, line: 1018, baseType: !2850, size: 64, offset: 64)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{null, !2777}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2843, file: !31, line: 1019, baseType: !2837, size: 64, offset: 128)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2843, file: !31, line: 1020, baseType: !2855, size: 64, offset: 192)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!145, !2791, !145}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2843, file: !31, line: 1021, baseType: !2859, size: 64, offset: 256)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!513, !2791}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2843, file: !31, line: 1022, baseType: !2863, size: 64, offset: 320)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!145, !2791, !145, !371}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2843, file: !31, line: 1023, baseType: !2867, size: 64, offset: 384)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{null, !2791, !846}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2843, file: !31, line: 1024, baseType: !2859, size: 64, offset: 448)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2792, file: !31, line: 1097, baseType: !2872, size: 256, offset: 1408)
!2872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2792, file: !31, line: 1089, size: 256, elements: !2873)
!2873 = !{!2874, !2883, !2889}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2872, file: !31, line: 1090, baseType: !2875, size: 256)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2876, line: 10, size: 256, elements: !2877)
!2876 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2877 = !{!2878, !2879, !2882}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2875, file: !2876, line: 11, baseType: !440, size: 32)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2875, file: !2876, line: 12, baseType: !2880, size: 64, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2876, line: 5, flags: DIFlagFwdDecl)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2875, file: !2876, line: 13, baseType: !368, size: 128, offset: 128)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2872, file: !31, line: 1091, baseType: !2884, size: 64)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2876, line: 17, size: 64, elements: !2885)
!2885 = !{!2886}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2884, file: !2876, line: 18, baseType: !2887, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2876, line: 16, flags: DIFlagFwdDecl)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2872, file: !31, line: 1096, baseType: !2890, size: 192)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2872, file: !31, line: 1092, size: 192, elements: !2891)
!2891 = !{!2892, !2893, !2894}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2890, file: !31, line: 1093, baseType: !368, size: 128)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2890, file: !31, line: 1094, baseType: !145, size: 32, offset: 128)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2890, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2715, file: !31, line: 1843, baseType: !2896, size: 64, offset: 1280)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!599, !377, !753, !145, !602, !2726, !145}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2715, file: !31, line: 1844, baseType: !1044, size: 64, offset: 1344)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2715, file: !31, line: 1845, baseType: !2901, size: 64, offset: 1408)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!145, !145}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2715, file: !31, line: 1846, baseType: !2788, size: 64, offset: 1472)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2715, file: !31, line: 1847, baseType: !2906, size: 64, offset: 1536)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!599, !2026, !377, !2726, !602, !7}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2715, file: !31, line: 1848, baseType: !2910, size: 64, offset: 1600)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!599, !377, !2726, !2026, !602, !7}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2715, file: !31, line: 1849, baseType: !2914, size: 64, offset: 1664)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!145, !377, !146, !2917, !846}
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2715, file: !31, line: 1850, baseType: !2919, size: 64, offset: 1728)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!146, !377, !145, !554, !554}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2715, file: !31, line: 1852, baseType: !2923, size: 64, offset: 1792)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{null, !743, !377}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2715, file: !31, line: 1856, baseType: !2927, size: 64, offset: 1856)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!599, !377, !554, !377, !554, !602, !7}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2715, file: !31, line: 1858, baseType: !2931, size: 64, offset: 1920)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!554, !377, !554, !377, !554, !554, !7}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2715, file: !31, line: 1861, baseType: !2780, size: 64, offset: 1984)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2710, file: !31, line: 692, baseType: !696, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !450, file: !31, line: 694, baseType: !2937, size: 64, offset: 2560)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !2939)
!2939 = !{!2940, !2941, !2942, !2943}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2938, file: !31, line: 1101, baseType: !352)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2938, file: !31, line: 1102, baseType: !368, size: 128)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2938, file: !31, line: 1103, baseType: !368, size: 128, offset: 128)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2938, file: !31, line: 1104, baseType: !368, size: 128, offset: 256)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !450, file: !31, line: 695, baseType: !767, size: 1216, align: 64, offset: 2624)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !450, file: !31, line: 696, baseType: !368, size: 128, offset: 3840)
!2946 = !DIDerivedType(tag: DW_TAG_member, scope: !450, file: !31, line: 697, baseType: !2947, size: 64, offset: 3968)
!2947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !450, file: !31, line: 697, size: 64, elements: !2948)
!2948 = !{!2949, !2950, !2951, !2954, !2955}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2947, file: !31, line: 698, baseType: !2026, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2947, file: !31, line: 699, baseType: !2466, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2947, file: !31, line: 700, baseType: !2952, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !31, line: 700, flags: DIFlagFwdDecl)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2947, file: !31, line: 701, baseType: !508, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2947, file: !31, line: 702, baseType: !7, size: 32)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !450, file: !31, line: 705, baseType: !232, size: 32, offset: 4032)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !450, file: !31, line: 708, baseType: !232, size: 32, offset: 4064)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !450, file: !31, line: 709, baseType: !2547, size: 64, offset: 4096)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !450, file: !31, line: 720, baseType: !144, size: 64, offset: 4160)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !408, file: !405, line: 98, baseType: !2961, size: 256, offset: 448)
!2961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 256, elements: !235)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !408, file: !405, line: 101, baseType: !2963, size: 32, offset: 704)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2964, line: 25, size: 32, elements: !2965)
!2964 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2965 = !{!2966}
!2966 = !DIDerivedType(tag: DW_TAG_member, scope: !2963, file: !2964, line: 26, baseType: !2967, size: 32)
!2967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2963, file: !2964, line: 26, size: 32, elements: !2968)
!2968 = !{!2969}
!2969 = !DIDerivedType(tag: DW_TAG_member, scope: !2967, file: !2964, line: 30, baseType: !2970, size: 32)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2967, file: !2964, line: 30, size: 32, elements: !2971)
!2971 = !{!2972, !2973}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2970, file: !2964, line: 31, baseType: !352)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2970, file: !2964, line: 32, baseType: !145, size: 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !408, file: !405, line: 102, baseType: !2564, size: 64, offset: 768)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !408, file: !405, line: 103, baseType: !626, size: 64, offset: 832)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !408, file: !405, line: 104, baseType: !197, size: 64, offset: 896)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !408, file: !405, line: 105, baseType: !144, size: 64, offset: 960)
!2978 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !405, line: 107, baseType: !2979, size: 128, offset: 1024)
!2979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !405, line: 107, size: 128, elements: !2980)
!2980 = !{!2981, !2982}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2979, file: !405, line: 108, baseType: !368, size: 128)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2979, file: !405, line: 109, baseType: !2983, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !408, file: !405, line: 111, baseType: !368, size: 128, offset: 1152)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !408, file: !405, line: 112, baseType: !368, size: 128, offset: 1280)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !408, file: !405, line: 120, baseType: !2987, size: 128, offset: 1408)
!2987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !405, line: 116, size: 128, elements: !2988)
!2988 = !{!2989, !2990, !2991}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2987, file: !405, line: 117, baseType: !669, size: 128)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2987, file: !405, line: 118, baseType: !422, size: 128)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2987, file: !405, line: 119, baseType: !390, size: 128, align: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !378, file: !31, line: 922, baseType: !449, size: 64, offset: 256)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !378, file: !31, line: 923, baseType: !2713, size: 64, offset: 320)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !378, file: !31, line: 929, baseType: !352, offset: 384)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !378, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !378, file: !31, line: 931, baseType: !342, size: 64, offset: 448)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !378, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !378, file: !31, line: 933, baseType: !2560, size: 32, offset: 544)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !378, file: !31, line: 934, baseType: !338, size: 192, offset: 576)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !378, file: !31, line: 935, baseType: !554, size: 64, offset: 768)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !378, file: !31, line: 936, baseType: !3002, size: 192, offset: 832)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !3003)
!3003 = !{!3004, !3005, !3006, !3007, !3008, !3009}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3002, file: !31, line: 886, baseType: !2813)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3002, file: !31, line: 887, baseType: !1399, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3002, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3002, file: !31, line: 889, baseType: !456, size: 32, offset: 96)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3002, file: !31, line: 889, baseType: !456, size: 32, offset: 128)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3002, file: !31, line: 890, baseType: !145, size: 32, offset: 160)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !378, file: !31, line: 937, baseType: !1475, size: 64, offset: 1024)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !378, file: !31, line: 938, baseType: !3012, size: 256, offset: 1088)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !3013)
!3013 = !{!3014, !3015, !3016, !3017, !3018, !3019}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3012, file: !31, line: 897, baseType: !197, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3012, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3012, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3012, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3012, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3012, file: !31, line: 904, baseType: !554, size: 64, offset: 192)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !378, file: !31, line: 940, baseType: !443, size: 64, offset: 1344)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !378, file: !31, line: 945, baseType: !144, size: 64, offset: 1408)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !378, file: !31, line: 949, baseType: !368, size: 128, offset: 1472)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !378, file: !31, line: 950, baseType: !368, size: 128, offset: 1600)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !378, file: !31, line: 952, baseType: !766, size: 64, offset: 1728)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !378, file: !31, line: 953, baseType: !932, size: 32, offset: 1792)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !378, file: !31, line: 954, baseType: !932, size: 32, offset: 1824)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !175, file: !176, line: 163, baseType: !3028, size: 64, offset: 2048)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !176, line: 24, flags: DIFlagFwdDecl)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !175, file: !176, line: 165, baseType: !7, size: 32, offset: 2112)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !175, file: !176, line: 166, baseType: !3032, size: 320, offset: 2176)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3033, line: 11, size: 320, elements: !3034)
!3033 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3034 = !{!3035, !3036, !3037, !3042}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3032, file: !3033, line: 16, baseType: !669, size: 128)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3032, file: !3033, line: 17, baseType: !197, size: 64, offset: 128)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3032, file: !3033, line: 18, baseType: !3038, size: 64, offset: 192)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{null, !3041}
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3032, file: !3033, line: 19, baseType: !440, size: 32, offset: 256)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !175, file: !176, line: 168, baseType: !3044, size: 64, offset: 2496)
!3044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 64, elements: !212)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !175, file: !176, line: 170, baseType: !3046, size: 64, offset: 2560)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !3048, line: 43, size: 256, elements: !3049)
!3048 = !DIFile(filename: "./include/linux/input/mt.h", directory: "/home/lizy2001/genbc/linux")
!3049 = !{!3050, !3051, !3052, !3053, !3054, !3055, !3056}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "trkid", scope: !3047, file: !3048, line: 44, baseType: !145, size: 32)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "num_slots", scope: !3047, file: !3048, line: 45, baseType: !145, size: 32, offset: 32)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !3047, file: !3048, line: 46, baseType: !145, size: 32, offset: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3047, file: !3048, line: 47, baseType: !7, size: 32, offset: 96)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !3047, file: !3048, line: 48, baseType: !7, size: 32, offset: 128)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !3047, file: !3048, line: 49, baseType: !737, size: 64, offset: 192)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !3047, file: !3048, line: 50, baseType: !3057, offset: 256)
!3057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3058, elements: !2243)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt_slot", file: !3048, line: 27, size: 512, elements: !3059)
!3059 = !{!3060, !3064, !3065}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "abs", scope: !3058, file: !3048, line: 28, baseType: !3061, size: 448)
!3061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 448, elements: !3062)
!3062 = !{!3063}
!3063 = !DISubrange(count: 14)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !3058, file: !3048, line: 29, baseType: !7, size: 32, offset: 448)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3058, file: !3048, line: 30, baseType: !7, size: 32, offset: 480)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !175, file: !176, line: 172, baseType: !3067, size: 64, offset: 2624)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !186, line: 90, size: 192, elements: !3069)
!3069 = !{!3070, !3071, !3072, !3073, !3074, !3075}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3068, file: !186, line: 91, baseType: !1373, size: 32)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !3068, file: !186, line: 92, baseType: !1373, size: 32, offset: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !3068, file: !186, line: 93, baseType: !1373, size: 32, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !3068, file: !186, line: 94, baseType: !1373, size: 32, offset: 96)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !3068, file: !186, line: 95, baseType: !1373, size: 32, offset: 128)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !3068, file: !186, line: 96, baseType: !1373, size: 32, offset: 160)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !175, file: !176, line: 174, baseType: !202, size: 768, offset: 2688)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !175, file: !176, line: 175, baseType: !196, size: 64, offset: 3456)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !175, file: !176, line: 176, baseType: !196, size: 64, offset: 3520)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !175, file: !176, line: 177, baseType: !196, size: 64, offset: 3584)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !175, file: !176, line: 179, baseType: !3081, size: 64, offset: 3648)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!145, !174}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !175, file: !176, line: 180, baseType: !3085, size: 64, offset: 3712)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{null, !174}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !175, file: !176, line: 181, baseType: !3089, size: 64, offset: 3776)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!145, !174, !377}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !175, file: !176, line: 182, baseType: !3093, size: 64, offset: 3840)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!145, !174, !7, !7, !145}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !175, file: !176, line: 184, baseType: !3097, size: 64, offset: 3904)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !176, line: 337, size: 576, elements: !3099)
!3099 = !{!3100, !3101, !3102, !3103, !3104, !3172, !3173}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3098, file: !176, line: 339, baseType: !144, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3098, file: !176, line: 341, baseType: !145, size: 32, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3098, file: !176, line: 342, baseType: !179, size: 64, offset: 128)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3098, file: !176, line: 344, baseType: !174, size: 64, offset: 192)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3098, file: !176, line: 345, baseType: !3105, size: 64, offset: 256)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !176, line: 302, size: 960, elements: !3107)
!3107 = !{!3108, !3109, !3113, !3124, !3128, !3132, !3161, !3165, !3166, !3167, !3168, !3169, !3170, !3171}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3106, file: !176, line: 304, baseType: !144, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3106, file: !176, line: 306, baseType: !3110, size: 64, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{null, !3097, !7, !7, !145}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3106, file: !176, line: 307, baseType: !3114, size: 64, offset: 128)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{null, !3097, !3117, !7}
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3119)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !176, line: 32, size: 64, elements: !3120)
!3120 = !{!3121, !3122, !3123}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3119, file: !176, line: 33, baseType: !189, size: 16)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3119, file: !176, line: 34, baseType: !189, size: 16, offset: 16)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3119, file: !176, line: 35, baseType: !1373, size: 32, offset: 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3106, file: !176, line: 309, baseType: !3125, size: 64, offset: 192)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!513, !3097, !7, !7, !145}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3106, file: !176, line: 310, baseType: !3129, size: 64, offset: 256)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!513, !3105, !174}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !3106, file: !176, line: 311, baseType: !3133, size: 64, offset: 320)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!145, !3105, !174, !3136}
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3138)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3139, line: 342, size: 1600, elements: !3140)
!3139 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3140 = !{!3141, !3143, !3144, !3145, !3146, !3147, !3149, !3151, !3152, !3153, !3154, !3155, !3156, !3158, !3159, !3160}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3138, file: !3139, line: 344, baseType: !3142, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3139, line: 14, baseType: !197)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !3138, file: !3139, line: 346, baseType: !189, size: 16, offset: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3138, file: !3139, line: 347, baseType: !189, size: 16, offset: 80)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3138, file: !3139, line: 348, baseType: !189, size: 16, offset: 96)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3138, file: !3139, line: 349, baseType: !189, size: 16, offset: 112)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !3138, file: !3139, line: 351, baseType: !3148, size: 64, offset: 128)
!3148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3142, size: 64, elements: !198)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !3138, file: !3139, line: 352, baseType: !3150, size: 768, offset: 192)
!3150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3142, size: 768, elements: !203)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !3138, file: !3139, line: 353, baseType: !3148, size: 64, offset: 960)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !3138, file: !3139, line: 354, baseType: !3148, size: 64, offset: 1024)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !3138, file: !3139, line: 355, baseType: !3148, size: 64, offset: 1088)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !3138, file: !3139, line: 356, baseType: !3148, size: 64, offset: 1152)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !3138, file: !3139, line: 357, baseType: !3148, size: 64, offset: 1216)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3138, file: !3139, line: 358, baseType: !3157, size: 128, offset: 1280)
!3157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3142, size: 128, elements: !212)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !3138, file: !3139, line: 359, baseType: !3148, size: 64, offset: 1408)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !3138, file: !3139, line: 360, baseType: !3148, size: 64, offset: 1472)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3138, file: !3139, line: 362, baseType: !3142, size: 64, offset: 1536)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3106, file: !176, line: 312, baseType: !3162, size: 64, offset: 384)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{null, !3097}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3106, file: !176, line: 313, baseType: !3162, size: 64, offset: 448)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !3106, file: !176, line: 315, baseType: !513, size: 8, offset: 512)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3106, file: !176, line: 316, baseType: !145, size: 32, offset: 544)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3106, file: !176, line: 317, baseType: !179, size: 64, offset: 576)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3106, file: !176, line: 319, baseType: !3136, size: 64, offset: 640)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !3106, file: !176, line: 321, baseType: !368, size: 128, offset: 704)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3106, file: !176, line: 322, baseType: !368, size: 128, offset: 832)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !3098, file: !176, line: 347, baseType: !368, size: 128, offset: 320)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !3098, file: !176, line: 348, baseType: !368, size: 128, offset: 448)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !175, file: !176, line: 186, baseType: !352, offset: 3968)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !175, file: !176, line: 187, baseType: !338, size: 192, offset: 3968)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !175, file: !176, line: 189, baseType: !7, size: 32, offset: 4160)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !175, file: !176, line: 190, baseType: !513, size: 8, offset: 4192)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !175, file: !176, line: 192, baseType: !3179, size: 5568, offset: 4224)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !3180)
!3180 = !{!3181, !3480, !3482, !3485, !3486, !3537, !3626, !3627, !3628, !3629, !3630, !3639, !3733, !3746, !3749, !3750, !3754, !3756, !3757, !3758, !3762, !3768, !3769, !3772, !3776, !3779, !3780, !3781, !3782, !3783, !3815, !3816, !3817, !3820, !3823, !3824, !3825, !3826}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3179, file: !60, line: 462, baseType: !3182, size: 512)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !3183, line: 64, size: 512, elements: !3184)
!3183 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!3184 = !{!3185, !3186, !3187, !3189, !3229, !3331, !3470, !3475, !3476, !3477, !3478, !3479}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3182, file: !3183, line: 65, baseType: !179, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3182, file: !3183, line: 66, baseType: !368, size: 128, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3182, file: !3183, line: 67, baseType: !3188, size: 64, offset: 192)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !3182, file: !3183, line: 68, baseType: !3190, size: 64, offset: 256)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !3183, line: 192, size: 704, elements: !3192)
!3192 = !{!3193, !3194, !3195, !3196}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3191, file: !3183, line: 193, baseType: !368, size: 128)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3191, file: !3183, line: 194, baseType: !352, offset: 128)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3191, file: !3183, line: 195, baseType: !3182, size: 512, offset: 128)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !3191, file: !3183, line: 196, baseType: !3197, size: 64, offset: 640)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3199)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !3183, line: 156, size: 192, elements: !3200)
!3200 = !{!3201, !3206, !3211}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3199, file: !3183, line: 157, baseType: !3202, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3203)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!145, !3190, !3188}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3199, file: !3183, line: 158, baseType: !3207, size: 64, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3208)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!179, !3190, !3188}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3199, file: !3183, line: 159, baseType: !3212, size: 64, offset: 128)
!3212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3213)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!145, !3190, !3188, !3216}
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !3183, line: 148, size: 20736, elements: !3218)
!3218 = !{!3219, !3221, !3223, !3224, !3228}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !3217, file: !3183, line: 149, baseType: !3220, size: 192)
!3220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !508, size: 192, elements: !681)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !3217, file: !3183, line: 150, baseType: !3222, size: 4096, offset: 192)
!3222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !508, size: 4096, elements: !1807)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !3217, file: !3183, line: 151, baseType: !145, size: 32, offset: 4288)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3217, file: !3183, line: 152, baseType: !3225, size: 16384, offset: 4320)
!3225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 16384, elements: !3226)
!3226 = !{!3227}
!3227 = !DISubrange(count: 2048)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !3217, file: !3183, line: 153, baseType: !145, size: 32, offset: 20704)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !3182, file: !3183, line: 69, baseType: !3230, size: 64, offset: 320)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !3183, line: 138, size: 448, elements: !3232)
!3232 = !{!3233, !3237, !3256, !3258, !3291, !3321, !3325}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3231, file: !3183, line: 139, baseType: !3234, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{null, !3188}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !3231, file: !3183, line: 140, baseType: !3238, size: 64, offset: 64)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3240)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !3241, line: 230, size: 128, elements: !3242)
!3241 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!3242 = !{!3243, !3252}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3240, file: !3241, line: 231, baseType: !3244, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!599, !3188, !3247, !508}
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !3241, line: 30, size: 128, elements: !3249)
!3249 = !{!3250, !3251}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3248, file: !3241, line: 31, baseType: !179, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3248, file: !3241, line: 32, baseType: !453, size: 16, offset: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3240, file: !3241, line: 232, baseType: !3253, size: 64, offset: 64)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!599, !3188, !3247, !179, !602}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !3231, file: !3183, line: 141, baseType: !3257, size: 64, offset: 128)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !3231, file: !3183, line: 142, baseType: !3259, size: 64, offset: 192)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3262)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !3241, line: 84, size: 320, elements: !3263)
!3263 = !{!3264, !3265, !3269, !3288, !3289}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3262, file: !3241, line: 85, baseType: !179, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !3262, file: !3241, line: 86, baseType: !3266, size: 64, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!453, !3188, !3247, !145}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !3262, file: !3241, line: 88, baseType: !3270, size: 64, offset: 128)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!453, !3188, !3273, !145}
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !3241, line: 168, size: 448, elements: !3275)
!3275 = !{!3276, !3277, !3278, !3279, !3283, !3284}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3274, file: !3241, line: 169, baseType: !3248, size: 128)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3274, file: !3241, line: 170, baseType: !602, size: 64, offset: 128)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3274, file: !3241, line: 171, baseType: !144, size: 64, offset: 192)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3274, file: !3241, line: 172, baseType: !3280, size: 64, offset: 256)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!599, !377, !3188, !3273, !508, !554, !602}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3274, file: !3241, line: 174, baseType: !3280, size: 64, offset: 320)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3274, file: !3241, line: 176, baseType: !3285, size: 64, offset: 384)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!145, !377, !3188, !3273, !1004}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3262, file: !3241, line: 90, baseType: !3257, size: 64, offset: 192)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !3262, file: !3241, line: 91, baseType: !3290, size: 64, offset: 256)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !3231, file: !3183, line: 143, baseType: !3292, size: 64, offset: 256)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!3295, !3188}
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3297)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !48, line: 39, size: 384, elements: !3298)
!3298 = !{!3299, !3300, !3304, !3308, !3316, !3320}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3297, file: !48, line: 40, baseType: !47, size: 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3297, file: !48, line: 41, baseType: !3301, size: 64, offset: 64)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!513}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3297, file: !48, line: 42, baseType: !3305, size: 64, offset: 128)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!144}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3297, file: !48, line: 43, baseType: !3309, size: 64, offset: 192)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!3312, !3314}
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !48, line: 19, flags: DIFlagFwdDecl)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3297, file: !48, line: 44, baseType: !3317, size: 64, offset: 256)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!3312}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3297, file: !48, line: 45, baseType: !490, size: 64, offset: 320)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3231, file: !3183, line: 144, baseType: !3322, size: 64, offset: 320)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!3312, !3188}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3231, file: !3183, line: 145, baseType: !3326, size: 64, offset: 384)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{null, !3188, !3329, !3330}
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !3182, file: !3183, line: 70, baseType: !3332, size: 64, offset: 384)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !646, line: 123, size: 1024, elements: !3334)
!3334 = !{!3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3463, !3464, !3465, !3466, !3467}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3333, file: !646, line: 124, baseType: !779, size: 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3333, file: !646, line: 125, baseType: !779, size: 32, offset: 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3333, file: !646, line: 135, baseType: !3332, size: 64, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3333, file: !646, line: 136, baseType: !179, size: 64, offset: 128)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3333, file: !646, line: 138, baseType: !792, size: 192, align: 64, offset: 192)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3333, file: !646, line: 140, baseType: !3312, size: 64, offset: 384)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3333, file: !646, line: 141, baseType: !7, size: 32, offset: 448)
!3342 = !DIDerivedType(tag: DW_TAG_member, scope: !3333, file: !646, line: 142, baseType: !3343, size: 256, offset: 512)
!3343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3333, file: !646, line: 142, size: 256, elements: !3344)
!3344 = !{!3345, !3391, !3395}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3343, file: !646, line: 143, baseType: !3346, size: 192)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !646, line: 91, size: 192, elements: !3347)
!3347 = !{!3348, !3349, !3350}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3346, file: !646, line: 92, baseType: !197, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3346, file: !646, line: 94, baseType: !788, size: 64, offset: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3346, file: !646, line: 100, baseType: !3351, size: 64, offset: 128)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !646, line: 180, size: 704, elements: !3353)
!3353 = !{!3354, !3355, !3356, !3363, !3364, !3365, !3389, !3390}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3352, file: !646, line: 182, baseType: !3332, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3352, file: !646, line: 183, baseType: !7, size: 32, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3352, file: !646, line: 186, baseType: !3357, size: 192, offset: 128)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3358, line: 19, size: 192, elements: !3359)
!3358 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3359 = !{!3360, !3361, !3362}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3357, file: !3358, line: 20, baseType: !771, size: 128)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3357, file: !3358, line: 21, baseType: !7, size: 32, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3357, file: !3358, line: 22, baseType: !7, size: 32, offset: 160)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3352, file: !646, line: 187, baseType: !440, size: 32, offset: 320)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3352, file: !646, line: 188, baseType: !440, size: 32, offset: 352)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3352, file: !646, line: 189, baseType: !3366, size: 64, offset: 384)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !646, line: 168, size: 320, elements: !3368)
!3368 = !{!3369, !3373, !3377, !3381, !3385}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3367, file: !646, line: 169, baseType: !3370, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!145, !743, !3351}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3367, file: !646, line: 171, baseType: !3374, size: 64, offset: 64)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!145, !3332, !179, !453}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3367, file: !646, line: 173, baseType: !3378, size: 64, offset: 128)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!145, !3332}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3367, file: !646, line: 174, baseType: !3382, size: 64, offset: 192)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!145, !3332, !3332, !179}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3367, file: !646, line: 176, baseType: !3386, size: 64, offset: 256)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!145, !743, !3332, !3351}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3352, file: !646, line: 192, baseType: !368, size: 128, offset: 448)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3352, file: !646, line: 194, baseType: !1409, size: 128, offset: 576)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3343, file: !646, line: 144, baseType: !3392, size: 64)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !646, line: 103, size: 64, elements: !3393)
!3393 = !{!3394}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3392, file: !646, line: 104, baseType: !3332, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3343, file: !646, line: 145, baseType: !3396, size: 256)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !646, line: 107, size: 256, elements: !3397)
!3397 = !{!3398, !3458, !3461, !3462}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3396, file: !646, line: 108, baseType: !3399, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3401)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !646, line: 217, size: 768, elements: !3402)
!3402 = !{!3403, !3423, !3427, !3431, !3435, !3439, !3443, !3447, !3448, !3449, !3450, !3454}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3401, file: !646, line: 222, baseType: !3404, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!145, !3407}
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !646, line: 197, size: 1088, elements: !3409)
!3409 = !{!3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3408, file: !646, line: 199, baseType: !3332, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3408, file: !646, line: 200, baseType: !377, size: 64, offset: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3408, file: !646, line: 201, baseType: !743, size: 64, offset: 128)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3408, file: !646, line: 202, baseType: !144, size: 64, offset: 192)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3408, file: !646, line: 205, baseType: !338, size: 192, offset: 256)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3408, file: !646, line: 206, baseType: !338, size: 192, offset: 448)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3408, file: !646, line: 207, baseType: !145, size: 32, offset: 640)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3408, file: !646, line: 208, baseType: !368, size: 128, offset: 704)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3408, file: !646, line: 209, baseType: !508, size: 64, offset: 832)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3408, file: !646, line: 211, baseType: !602, size: 64, offset: 896)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3408, file: !646, line: 212, baseType: !513, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3408, file: !646, line: 213, baseType: !513, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3408, file: !646, line: 214, baseType: !1032, size: 64, offset: 1024)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3401, file: !646, line: 223, baseType: !3424, size: 64, offset: 64)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{null, !3407}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3401, file: !646, line: 236, baseType: !3428, size: 64, offset: 128)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!145, !743, !144}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3401, file: !646, line: 238, baseType: !3432, size: 64, offset: 192)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!144, !743, !2726}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3401, file: !646, line: 239, baseType: !3436, size: 64, offset: 256)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!144, !743, !144, !2726}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3401, file: !646, line: 240, baseType: !3440, size: 64, offset: 320)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{null, !743, !144}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3401, file: !646, line: 242, baseType: !3444, size: 64, offset: 384)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!599, !3407, !508, !602, !554}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3401, file: !646, line: 252, baseType: !602, size: 64, offset: 448)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3401, file: !646, line: 259, baseType: !513, size: 8, offset: 512)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3401, file: !646, line: 260, baseType: !3444, size: 64, offset: 576)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3401, file: !646, line: 263, baseType: !3451, size: 64, offset: 640)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!2755, !3407, !2757}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3401, file: !646, line: 266, baseType: !3455, size: 64, offset: 704)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!145, !3407, !1004}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3396, file: !646, line: 109, baseType: !3459, size: 64, offset: 64)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !646, line: 31, flags: DIFlagFwdDecl)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3396, file: !646, line: 110, baseType: !554, size: 64, offset: 128)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3396, file: !646, line: 111, baseType: !3332, size: 64, offset: 192)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3333, file: !646, line: 148, baseType: !144, size: 64, offset: 768)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3333, file: !646, line: 154, baseType: !443, size: 64, offset: 832)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3333, file: !646, line: 156, baseType: !191, size: 16, offset: 896)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3333, file: !646, line: 157, baseType: !453, size: 16, offset: 912)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3333, file: !646, line: 158, baseType: !3468, size: 64, offset: 960)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !646, line: 32, flags: DIFlagFwdDecl)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3182, file: !3183, line: 71, baseType: !3471, size: 32, offset: 448)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3472, line: 19, size: 32, elements: !3473)
!3472 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3473 = !{!3474}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3471, file: !3472, line: 20, baseType: !1162, size: 32)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !3182, file: !3183, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !3182, file: !3183, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !3182, file: !3183, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !3182, file: !3183, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !3182, file: !3183, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3179, file: !60, line: 463, baseType: !3481, size: 64, offset: 512)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3179, file: !60, line: 465, baseType: !3483, size: 64, offset: 576)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3179, file: !60, line: 467, baseType: !179, size: 64, offset: 640)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3179, file: !60, line: 468, baseType: !3487, size: 64, offset: 704)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3489)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3490)
!3490 = !{!3491, !3492, !3493, !3497, !3502, !3506}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3489, file: !60, line: 88, baseType: !179, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3489, file: !60, line: 89, baseType: !3259, size: 64, offset: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3489, file: !60, line: 90, baseType: !3494, size: 64, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!145, !3481, !3216}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3489, file: !60, line: 91, baseType: !3498, size: 64, offset: 192)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!508, !3481, !3501, !3329, !3330}
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3489, file: !60, line: 93, baseType: !3503, size: 64, offset: 256)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{null, !3481}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3489, file: !60, line: 95, baseType: !3507, size: 64, offset: 320)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3509)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3510)
!3510 = !{!3511, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3509, file: !67, line: 279, baseType: !3512, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!145, !3481}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3509, file: !67, line: 280, baseType: !3503, size: 64, offset: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3509, file: !67, line: 281, baseType: !3512, size: 64, offset: 128)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3509, file: !67, line: 282, baseType: !3512, size: 64, offset: 192)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3509, file: !67, line: 283, baseType: !3512, size: 64, offset: 256)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3509, file: !67, line: 284, baseType: !3512, size: 64, offset: 320)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3509, file: !67, line: 285, baseType: !3512, size: 64, offset: 384)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3509, file: !67, line: 286, baseType: !3512, size: 64, offset: 448)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3509, file: !67, line: 287, baseType: !3512, size: 64, offset: 512)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3509, file: !67, line: 288, baseType: !3512, size: 64, offset: 576)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3509, file: !67, line: 289, baseType: !3512, size: 64, offset: 640)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3509, file: !67, line: 290, baseType: !3512, size: 64, offset: 704)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3509, file: !67, line: 291, baseType: !3512, size: 64, offset: 768)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3509, file: !67, line: 292, baseType: !3512, size: 64, offset: 832)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3509, file: !67, line: 293, baseType: !3512, size: 64, offset: 896)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3509, file: !67, line: 294, baseType: !3512, size: 64, offset: 960)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3509, file: !67, line: 295, baseType: !3512, size: 64, offset: 1024)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3509, file: !67, line: 296, baseType: !3512, size: 64, offset: 1088)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3509, file: !67, line: 297, baseType: !3512, size: 64, offset: 1152)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3509, file: !67, line: 298, baseType: !3512, size: 64, offset: 1216)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3509, file: !67, line: 299, baseType: !3512, size: 64, offset: 1280)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3509, file: !67, line: 300, baseType: !3512, size: 64, offset: 1344)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3509, file: !67, line: 301, baseType: !3512, size: 64, offset: 1408)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3179, file: !60, line: 470, baseType: !3538, size: 64, offset: 768)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3540, line: 82, size: 1408, elements: !3541)
!3540 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3541 = !{!3542, !3543, !3544, !3545, !3546, !3547, !3548, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3621, !3624, !3625}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3539, file: !3540, line: 83, baseType: !179, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3539, file: !3540, line: 84, baseType: !179, size: 64, offset: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3539, file: !3540, line: 85, baseType: !3481, size: 64, offset: 128)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3539, file: !3540, line: 86, baseType: !3259, size: 64, offset: 192)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3539, file: !3540, line: 87, baseType: !3259, size: 64, offset: 256)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3539, file: !3540, line: 88, baseType: !3259, size: 64, offset: 320)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3539, file: !3540, line: 90, baseType: !3549, size: 64, offset: 384)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!145, !3481, !3552}
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3554)
!3554 = !{!3555, !3556, !3557, !3558, !3559, !3560, !3561, !3573, !3585, !3586, !3587, !3588, !3589, !3597, !3598, !3599, !3600, !3601, !3602}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3553, file: !54, line: 96, baseType: !179, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3553, file: !54, line: 97, baseType: !3538, size: 64, offset: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3553, file: !54, line: 99, baseType: !660, size: 64, offset: 128)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3553, file: !54, line: 100, baseType: !179, size: 64, offset: 192)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3553, file: !54, line: 102, baseType: !513, size: 8, offset: 256)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3553, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3553, file: !54, line: 105, baseType: !3562, size: 64, offset: 320)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3564)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3139, line: 262, size: 1600, elements: !3565)
!3565 = !{!3566, !3567, !3568, !3572}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3564, file: !3139, line: 263, baseType: !2550, size: 256)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3564, file: !3139, line: 264, baseType: !2550, size: 256, offset: 256)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3564, file: !3139, line: 265, baseType: !3569, size: 1024, offset: 512)
!3569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 1024, elements: !3570)
!3570 = !{!3571}
!3571 = !DISubrange(count: 128)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3564, file: !3139, line: 266, baseType: !3312, size: 64, offset: 1536)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3553, file: !54, line: 106, baseType: !3574, size: 64, offset: 384)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3576)
!3576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3139, line: 210, size: 256, elements: !3577)
!3577 = !{!3578, !3582, !3583, !3584}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3576, file: !3139, line: 211, baseType: !3579, size: 72)
!3579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 72, elements: !3580)
!3580 = !{!3581}
!3581 = !DISubrange(count: 9)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3576, file: !3139, line: 212, baseType: !3142, size: 64, offset: 128)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3576, file: !3139, line: 213, baseType: !232, size: 32, offset: 192)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3576, file: !3139, line: 214, baseType: !232, size: 32, offset: 224)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3553, file: !54, line: 108, baseType: !3512, size: 64, offset: 448)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3553, file: !54, line: 109, baseType: !3503, size: 64, offset: 512)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3553, file: !54, line: 110, baseType: !3512, size: 64, offset: 576)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3553, file: !54, line: 111, baseType: !3503, size: 64, offset: 640)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3553, file: !54, line: 112, baseType: !3590, size: 64, offset: 704)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!145, !3481, !3593}
!3593 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3594)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3595)
!3595 = !{!3596}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3594, file: !67, line: 51, baseType: !145, size: 32)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3553, file: !54, line: 113, baseType: !3512, size: 64, offset: 768)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3553, file: !54, line: 114, baseType: !3259, size: 64, offset: 832)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3553, file: !54, line: 115, baseType: !3259, size: 64, offset: 896)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3553, file: !54, line: 117, baseType: !3507, size: 64, offset: 960)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3553, file: !54, line: 118, baseType: !3503, size: 64, offset: 1024)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3553, file: !54, line: 120, baseType: !3603, size: 64, offset: 1088)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3539, file: !3540, line: 91, baseType: !3494, size: 64, offset: 448)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3539, file: !3540, line: 92, baseType: !3512, size: 64, offset: 512)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3539, file: !3540, line: 93, baseType: !3503, size: 64, offset: 576)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3539, file: !3540, line: 94, baseType: !3512, size: 64, offset: 640)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3539, file: !3540, line: 95, baseType: !3503, size: 64, offset: 704)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3539, file: !3540, line: 97, baseType: !3512, size: 64, offset: 768)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3539, file: !3540, line: 98, baseType: !3512, size: 64, offset: 832)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3539, file: !3540, line: 100, baseType: !3590, size: 64, offset: 896)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3539, file: !3540, line: 101, baseType: !3512, size: 64, offset: 960)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3539, file: !3540, line: 103, baseType: !3512, size: 64, offset: 1024)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3539, file: !3540, line: 105, baseType: !3512, size: 64, offset: 1088)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3539, file: !3540, line: 107, baseType: !3507, size: 64, offset: 1152)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3539, file: !3540, line: 109, baseType: !3618, size: 64, offset: 1216)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3620)
!3620 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3540, line: 109, flags: DIFlagFwdDecl)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3539, file: !3540, line: 111, baseType: !3622, size: 64, offset: 1280)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3540, line: 111, flags: DIFlagFwdDecl)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3539, file: !3540, line: 112, baseType: !675, offset: 1344)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3539, file: !3540, line: 114, baseType: !513, size: 8, offset: 1344)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3179, file: !60, line: 471, baseType: !3552, size: 64, offset: 832)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3179, file: !60, line: 473, baseType: !144, size: 64, offset: 896)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3179, file: !60, line: 475, baseType: !144, size: 64, offset: 960)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3179, file: !60, line: 480, baseType: !338, size: 192, offset: 1024)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3179, file: !60, line: 484, baseType: !3631, size: 576, offset: 1216)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3632)
!3632 = !{!3633, !3634, !3635, !3636, !3637, !3638}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3631, file: !60, line: 362, baseType: !368, size: 128)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3631, file: !60, line: 363, baseType: !368, size: 128, offset: 128)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3631, file: !60, line: 364, baseType: !368, size: 128, offset: 256)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3631, file: !60, line: 365, baseType: !368, size: 128, offset: 384)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3631, file: !60, line: 366, baseType: !513, size: 8, offset: 512)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3631, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3179, file: !60, line: 485, baseType: !3640, size: 2304, offset: 1792)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3641)
!3641 = !{!3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3726, !3730}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3640, file: !67, line: 566, baseType: !3593, size: 32)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3640, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3640, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3640, file: !67, line: 569, baseType: !513, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3640, file: !67, line: 570, baseType: !513, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3640, file: !67, line: 571, baseType: !513, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3640, file: !67, line: 572, baseType: !513, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3640, file: !67, line: 573, baseType: !513, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3640, file: !67, line: 574, baseType: !513, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3640, file: !67, line: 575, baseType: !513, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3640, file: !67, line: 576, baseType: !513, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3640, file: !67, line: 577, baseType: !440, size: 32, offset: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3640, file: !67, line: 578, baseType: !352, offset: 96)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3640, file: !67, line: 580, baseType: !368, size: 128, offset: 128)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3640, file: !67, line: 581, baseType: !1430, size: 192, offset: 256)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3640, file: !67, line: 582, baseType: !3658, size: 64, offset: 448)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3660, line: 43, size: 1472, elements: !3661)
!3660 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3661 = !{!3662, !3663, !3664, !3665, !3666, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3659, file: !3660, line: 44, baseType: !179, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3659, file: !3660, line: 45, baseType: !145, size: 32, offset: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3659, file: !3660, line: 46, baseType: !368, size: 128, offset: 128)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3659, file: !3660, line: 47, baseType: !352, offset: 256)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3659, file: !3660, line: 48, baseType: !3667, size: 64, offset: 256)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3659, file: !3660, line: 49, baseType: !3032, size: 320, offset: 320)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3659, file: !3660, line: 50, baseType: !197, size: 64, offset: 640)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3659, file: !3660, line: 51, baseType: !1232, size: 64, offset: 704)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3659, file: !3660, line: 52, baseType: !1232, size: 64, offset: 768)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3659, file: !3660, line: 53, baseType: !1232, size: 64, offset: 832)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3659, file: !3660, line: 54, baseType: !1232, size: 64, offset: 896)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3659, file: !3660, line: 55, baseType: !1232, size: 64, offset: 960)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3659, file: !3660, line: 56, baseType: !197, size: 64, offset: 1024)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3659, file: !3660, line: 57, baseType: !197, size: 64, offset: 1088)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3659, file: !3660, line: 58, baseType: !197, size: 64, offset: 1152)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3659, file: !3660, line: 59, baseType: !197, size: 64, offset: 1216)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3659, file: !3660, line: 60, baseType: !197, size: 64, offset: 1280)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3659, file: !3660, line: 61, baseType: !3481, size: 64, offset: 1344)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3659, file: !3660, line: 62, baseType: !513, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3659, file: !3660, line: 63, baseType: !513, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3640, file: !67, line: 583, baseType: !513, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3640, file: !67, line: 584, baseType: !513, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3640, file: !67, line: 585, baseType: !513, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3640, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3640, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3640, file: !67, line: 592, baseType: !1224, size: 512, offset: 576)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3640, file: !67, line: 593, baseType: !443, size: 64, offset: 1088)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3640, file: !67, line: 594, baseType: !1885, size: 256, offset: 1152)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3640, file: !67, line: 595, baseType: !1409, size: 128, offset: 1408)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3640, file: !67, line: 596, baseType: !3667, size: 64, offset: 1536)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3640, file: !67, line: 597, baseType: !779, size: 32, offset: 1600)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3640, file: !67, line: 598, baseType: !779, size: 32, offset: 1632)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3640, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3640, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3640, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3640, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3640, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3640, file: !67, line: 604, baseType: !513, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3640, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3640, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3640, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3640, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3640, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3640, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3640, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3640, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3640, file: !67, line: 613, baseType: !145, size: 32, offset: 1792)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3640, file: !67, line: 614, baseType: !145, size: 32, offset: 1824)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3640, file: !67, line: 615, baseType: !443, size: 64, offset: 1856)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3640, file: !67, line: 616, baseType: !443, size: 64, offset: 1920)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3640, file: !67, line: 617, baseType: !443, size: 64, offset: 1984)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3640, file: !67, line: 618, baseType: !443, size: 64, offset: 2048)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3640, file: !67, line: 620, baseType: !3717, size: 64, offset: 2112)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3719)
!3719 = !{!3720, !3721, !3722, !3723}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3718, file: !67, line: 537, baseType: !352)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3718, file: !67, line: 538, baseType: !7, size: 32)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3718, file: !67, line: 540, baseType: !368, size: 128, offset: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3718, file: !67, line: 543, baseType: !3724, size: 64, offset: 192)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3640, file: !67, line: 621, baseType: !3727, size: 64, offset: 2176)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{null, !3481, !1372}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3640, file: !67, line: 622, baseType: !3731, size: 64, offset: 2240)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3179, file: !60, line: 486, baseType: !3734, size: 64, offset: 4096)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3736)
!3736 = !{!3737, !3738, !3739, !3743, !3744, !3745}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3735, file: !67, line: 643, baseType: !3509, size: 1472)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3735, file: !67, line: 644, baseType: !3512, size: 64, offset: 1472)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3735, file: !67, line: 645, baseType: !3740, size: 64, offset: 1536)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{null, !3481, !513}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3735, file: !67, line: 646, baseType: !3512, size: 64, offset: 1600)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3735, file: !67, line: 647, baseType: !3503, size: 64, offset: 1664)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3735, file: !67, line: 648, baseType: !3503, size: 64, offset: 1728)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3179, file: !60, line: 493, baseType: !3747, size: 64, offset: 4160)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !60, line: 493, flags: DIFlagFwdDecl)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3179, file: !60, line: 499, baseType: !368, size: 128, offset: 4224)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3179, file: !60, line: 502, baseType: !3751, size: 64, offset: 4352)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3753)
!3753 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3179, file: !60, line: 504, baseType: !3755, size: 64, offset: 4416)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3179, file: !60, line: 505, baseType: !443, size: 64, offset: 4480)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3179, file: !60, line: 510, baseType: !443, size: 64, offset: 4544)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3179, file: !60, line: 511, baseType: !3759, size: 64, offset: 4608)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3761)
!3761 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3179, file: !60, line: 513, baseType: !3763, size: 64, offset: 4672)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !3765)
!3765 = !{!3766, !3767}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3764, file: !60, line: 293, baseType: !7, size: 32)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3764, file: !60, line: 294, baseType: !197, size: 64, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3179, file: !60, line: 515, baseType: !368, size: 128, offset: 4736)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3179, file: !60, line: 526, baseType: !3770, offset: 4864)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3771, line: 5, elements: !366)
!3771 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3179, file: !60, line: 528, baseType: !3773, size: 64, offset: 4864)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3775, line: 14, flags: DIFlagFwdDecl)
!3775 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3179, file: !60, line: 529, baseType: !3777, size: 64, offset: 4928)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3540, line: 22, flags: DIFlagFwdDecl)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3179, file: !60, line: 534, baseType: !536, size: 32, offset: 4992)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3179, file: !60, line: 535, baseType: !440, size: 32, offset: 5024)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3179, file: !60, line: 537, baseType: !352, offset: 5056)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3179, file: !60, line: 538, baseType: !368, size: 128, offset: 5056)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3179, file: !60, line: 540, baseType: !3784, size: 64, offset: 5184)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3786, line: 54, size: 960, elements: !3787)
!3786 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3787 = !{!3788, !3789, !3790, !3791, !3792, !3793, !3794, !3798, !3802, !3803, !3804, !3805, !3809, !3813, !3814}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3785, file: !3786, line: 55, baseType: !179, size: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3785, file: !3786, line: 56, baseType: !660, size: 64, offset: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3785, file: !3786, line: 58, baseType: !3259, size: 64, offset: 128)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3785, file: !3786, line: 59, baseType: !3259, size: 64, offset: 192)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3785, file: !3786, line: 60, baseType: !3188, size: 64, offset: 256)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3785, file: !3786, line: 62, baseType: !3494, size: 64, offset: 320)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3785, file: !3786, line: 63, baseType: !3795, size: 64, offset: 384)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!508, !3481, !3501}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3785, file: !3786, line: 65, baseType: !3799, size: 64, offset: 448)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{null, !3784}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3785, file: !3786, line: 66, baseType: !3503, size: 64, offset: 512)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3785, file: !3786, line: 68, baseType: !3512, size: 64, offset: 576)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3785, file: !3786, line: 70, baseType: !3295, size: 64, offset: 640)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3785, file: !3786, line: 71, baseType: !3806, size: 64, offset: 704)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!3312, !3481}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3785, file: !3786, line: 73, baseType: !3810, size: 64, offset: 768)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{null, !3481, !3329, !3330}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3785, file: !3786, line: 75, baseType: !3507, size: 64, offset: 832)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3785, file: !3786, line: 77, baseType: !3622, size: 64, offset: 896)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3179, file: !60, line: 541, baseType: !3259, size: 64, offset: 5248)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3179, file: !60, line: 543, baseType: !3503, size: 64, offset: 5312)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3179, file: !60, line: 544, baseType: !3818, size: 64, offset: 5376)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3179, file: !60, line: 545, baseType: !3821, size: 64, offset: 5440)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3179, file: !60, line: 547, baseType: !513, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3179, file: !60, line: 548, baseType: !513, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3179, file: !60, line: 549, baseType: !513, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3179, file: !60, line: 550, baseType: !513, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !175, file: !176, line: 194, baseType: !368, size: 128, offset: 9792)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !175, file: !176, line: 195, baseType: !368, size: 128, offset: 9920)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !175, file: !176, line: 197, baseType: !7, size: 32, offset: 10048)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !175, file: !176, line: 198, baseType: !7, size: 32, offset: 10080)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !175, file: !176, line: 199, baseType: !3832, size: 64, offset: 10112)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !175, file: !176, line: 201, baseType: !513, size: 8, offset: 10176)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !175, file: !176, line: 203, baseType: !3835, size: 192, offset: 10240)
!3835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1232, size: 192, elements: !681)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "ps2dev", scope: !170, file: !87, line: 92, baseType: !3837, size: 576, offset: 128)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ps2dev", file: !3838, line: 33, size: 576, elements: !3839)
!3838 = !DIFile(filename: "./include/linux/libps2.h", directory: "/home/lizy2001/genbc/linux")
!3839 = !{!3840, !3905, !3906, !3907, !3908, !3910, !3911}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "serio", scope: !3837, file: !3838, line: 34, baseType: !3841, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio", file: !3843, line: 20, size: 8384, elements: !3844)
!3843 = !DIFile(filename: "./include/linux/serio.h", directory: "/home/lizy2001/genbc/linux")
!3844 = !{!3845, !3846, !3847, !3848, !3849, !3850, !3857, !3858, !3862, !3866, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3900, !3901, !3902, !3903}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "port_data", scope: !3842, file: !3843, line: 21, baseType: !144, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3842, file: !3843, line: 23, baseType: !2550, size: 256, offset: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !3842, file: !3843, line: 24, baseType: !2550, size: 256, offset: 320)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_id", scope: !3842, file: !3843, line: 25, baseType: !3569, size: 1024, offset: 576)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !3842, file: !3843, line: 27, baseType: !513, size: 8, offset: 1600)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3842, file: !3843, line: 29, baseType: !3851, size: 32, offset: 1608)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_device_id", file: !3139, line: 236, size: 32, elements: !3852)
!3852 = !{!3853, !3854, !3855, !3856}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3851, file: !3139, line: 237, baseType: !228, size: 8)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3851, file: !3139, line: 238, baseType: !228, size: 8, offset: 8)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3851, file: !3139, line: 239, baseType: !228, size: 8, offset: 16)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !3851, file: !3139, line: 240, baseType: !228, size: 8, offset: 24)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3842, file: !3843, line: 32, baseType: !352, offset: 1640)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3842, file: !3843, line: 34, baseType: !3859, size: 64, offset: 1664)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!145, !3841, !150}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3842, file: !3843, line: 35, baseType: !3863, size: 64, offset: 1728)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!145, !3841}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3842, file: !3843, line: 36, baseType: !3867, size: 64, offset: 1792)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{null, !3841}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3842, file: !3843, line: 37, baseType: !3863, size: 64, offset: 1856)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3842, file: !3843, line: 38, baseType: !3867, size: 64, offset: 1920)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3842, file: !3843, line: 40, baseType: !3841, size: 64, offset: 1984)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "child_node", scope: !3842, file: !3843, line: 42, baseType: !368, size: 128, offset: 2048)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3842, file: !3843, line: 43, baseType: !368, size: 128, offset: 2176)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3842, file: !3843, line: 45, baseType: !7, size: 32, offset: 2304)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !3842, file: !3843, line: 51, baseType: !3877, size: 64, offset: 2368)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_driver", file: !3843, line: 67, size: 1792, elements: !3879)
!3879 = !{!3880, !3881, !3884, !3885, !3886, !3891, !3895, !3896, !3897, !3898, !3899}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !3878, file: !3843, line: 68, baseType: !179, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3878, file: !3843, line: 70, baseType: !3882, size: 64, offset: 64)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3851)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !3878, file: !3843, line: 71, baseType: !513, size: 8, offset: 128)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !3878, file: !3843, line: 73, baseType: !3867, size: 64, offset: 192)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !3878, file: !3843, line: 74, baseType: !3887, size: 64, offset: 256)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!3890, !3841, !150, !7}
!3890 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !81, line: 17, baseType: !80)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !3878, file: !3843, line: 75, baseType: !3892, size: 64, offset: 320)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!145, !3841, !3877}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !3878, file: !3843, line: 76, baseType: !3863, size: 64, offset: 384)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !3878, file: !3843, line: 77, baseType: !3863, size: 64, offset: 448)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3878, file: !3843, line: 78, baseType: !3867, size: 64, offset: 512)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3878, file: !3843, line: 79, baseType: !3867, size: 64, offset: 576)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3878, file: !3843, line: 81, baseType: !3553, size: 1152, offset: 640)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "drv_mutex", scope: !3842, file: !3843, line: 53, baseType: !338, size: 192, offset: 2432)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3842, file: !3843, line: 55, baseType: !3179, size: 5568, offset: 2624)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3842, file: !3843, line: 57, baseType: !368, size: 128, offset: 8192)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "ps2_cmd_mutex", scope: !3842, file: !3843, line: 63, baseType: !3904, size: 64, offset: 8320)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_mutex", scope: !3837, file: !3838, line: 37, baseType: !338, size: 192, offset: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3837, file: !3838, line: 40, baseType: !1409, size: 128, offset: 256)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3837, file: !3838, line: 42, baseType: !197, size: 64, offset: 384)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "cmdbuf", scope: !3837, file: !3838, line: 43, baseType: !3909, size: 64, offset: 448)
!3909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1284, size: 64, elements: !1262)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcnt", scope: !3837, file: !3838, line: 44, baseType: !1284, size: 8, offset: 512)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "nak", scope: !3837, file: !3838, line: 45, baseType: !1284, size: 8, offset: 520)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "resync_work", scope: !170, file: !87, line: 93, baseType: !3913, size: 704, offset: 704)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1886, line: 115, size: 704, elements: !3914)
!3914 = !{!3915, !3916, !3917, !3918}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3913, file: !1886, line: 116, baseType: !1885, size: 256)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3913, file: !1886, line: 117, baseType: !3032, size: 320, offset: 256)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3913, file: !1886, line: 120, baseType: !2643, size: 64, offset: 576)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3913, file: !1886, line: 121, baseType: !145, size: 32, offset: 640)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !170, file: !87, line: 94, baseType: !179, size: 64, offset: 1408)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !170, file: !87, line: 95, baseType: !179, size: 64, offset: 1472)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !170, file: !87, line: 96, baseType: !3922, size: 64, offset: 1536)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3924)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse_protocol", file: !87, line: 77, size: 320, elements: !3925)
!3925 = !{!3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3935}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3924, file: !87, line: 78, baseType: !86, size: 32)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "maxproto", scope: !3924, file: !87, line: 79, baseType: !513, size: 8, offset: 32)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parity", scope: !3924, file: !87, line: 80, baseType: !513, size: 8, offset: 40)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "try_passthru", scope: !3924, file: !87, line: 81, baseType: !513, size: 8, offset: 48)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_companion", scope: !3924, file: !87, line: 82, baseType: !513, size: 8, offset: 56)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3924, file: !87, line: 83, baseType: !179, size: 64, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !3924, file: !87, line: 84, baseType: !179, size: 64, offset: 128)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !3924, file: !87, line: 85, baseType: !3934, size: 64, offset: 192)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !3924, file: !87, line: 86, baseType: !3936, size: 64, offset: 256)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!145, !169}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !170, file: !87, line: 97, baseType: !3940, size: 64, offset: 1600)
!3940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 64, elements: !1262)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "badbyte", scope: !170, file: !87, line: 98, baseType: !150, size: 8, offset: 1664)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "pktcnt", scope: !170, file: !87, line: 99, baseType: !150, size: 8, offset: 1672)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "pktsize", scope: !170, file: !87, line: 100, baseType: !150, size: 8, offset: 1680)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "oob_data_type", scope: !170, file: !87, line: 101, baseType: !150, size: 8, offset: 1688)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "extra_buttons", scope: !170, file: !87, line: 102, baseType: !150, size: 8, offset: 1696)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "acks_disable_command", scope: !170, file: !87, line: 103, baseType: !513, size: 8, offset: 1704)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !170, file: !87, line: 104, baseType: !7, size: 32, offset: 1728)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !170, file: !87, line: 105, baseType: !197, size: 64, offset: 1792)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "out_of_sync_cnt", scope: !170, file: !87, line: 106, baseType: !197, size: 64, offset: 1856)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "num_resyncs", scope: !170, file: !87, line: 107, baseType: !197, size: 64, offset: 1920)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !170, file: !87, line: 108, baseType: !113, size: 32, offset: 1984)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "devname", scope: !170, file: !87, line: 109, baseType: !3953, size: 512, offset: 2016)
!3953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 512, elements: !1807)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !170, file: !87, line: 110, baseType: !2550, size: 256, offset: 2528)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !170, file: !87, line: 112, baseType: !7, size: 32, offset: 2784)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !170, file: !87, line: 113, baseType: !7, size: 32, offset: 2816)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "resetafter", scope: !170, file: !87, line: 114, baseType: !7, size: 32, offset: 2848)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "resync_time", scope: !170, file: !87, line: 115, baseType: !7, size: 32, offset: 2880)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "smartscroll", scope: !170, file: !87, line: 116, baseType: !513, size: 8, offset: 2912)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_handler", scope: !170, file: !87, line: 118, baseType: !3961, size: 64, offset: 2944)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!3964, !169}
!3964 = !DIDerivedType(tag: DW_TAG_typedef, name: "psmouse_ret_t", file: !87, line: 41, baseType: !120)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !170, file: !87, line: 119, baseType: !3966, size: 64, offset: 3008)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{null, !169, !7}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "set_resolution", scope: !170, file: !87, line: 120, baseType: !3966, size: 64, offset: 3072)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "set_scale", scope: !170, file: !87, line: 121, baseType: !3971, size: 64, offset: 3136)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{null, !169, !125}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !170, file: !87, line: 123, baseType: !3936, size: 64, offset: 3200)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !170, file: !87, line: 124, baseType: !3936, size: 64, offset: 3264)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !170, file: !87, line: 125, baseType: !3977, size: 64, offset: 3328)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{null, !169}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !170, file: !87, line: 126, baseType: !3977, size: 64, offset: 3392)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !170, file: !87, line: 127, baseType: !3936, size: 64, offset: 3456)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "pt_activate", scope: !170, file: !87, line: 129, baseType: !3977, size: 64, offset: 3520)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "pt_deactivate", scope: !170, file: !87, line: 130, baseType: !3977, size: 64, offset: 3584)
!3984 = !DILocalVariable(name: "psmouse", arg: 1, scope: !166, file: !3, line: 201, type: !169)
!3985 = !DILocation(line: 201, column: 36, scope: !166)
!3986 = !DILocalVariable(name: "set_properties", arg: 2, scope: !166, file: !3, line: 201, type: !513)
!3987 = !DILocation(line: 201, column: 50, scope: !166)
!3988 = !DILocalVariable(name: "param", scope: !166, file: !3, line: 203, type: !3989)
!3989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 24, elements: !681)
!3990 = !DILocation(line: 203, column: 16, scope: !166)
!3991 = !DILocation(line: 205, column: 27, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !166, file: !3, line: 205, column: 6)
!3993 = !DILocation(line: 205, column: 62, scope: !3992)
!3994 = !DILocation(line: 205, column: 6, scope: !3992)
!3995 = !DILocation(line: 205, column: 6, scope: !166)
!3996 = !DILocation(line: 206, column: 3, scope: !3992)
!3997 = !DILocation(line: 209, column: 6, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !166, file: !3, line: 209, column: 6)
!3999 = !DILocation(line: 209, column: 15, scope: !3998)
!4000 = !DILocation(line: 209, column: 23, scope: !3998)
!4001 = !DILocation(line: 209, column: 26, scope: !3998)
!4002 = !DILocation(line: 209, column: 35, scope: !3998)
!4003 = !DILocation(line: 209, column: 6, scope: !166)
!4004 = !DILocation(line: 210, column: 3, scope: !3998)
!4005 = !DILocation(line: 212, column: 6, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !166, file: !3, line: 212, column: 6)
!4007 = !DILocation(line: 212, column: 6, scope: !166)
!4008 = !DILocation(line: 213, column: 3, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !4006, file: !3, line: 212, column: 22)
!4010 = !DILocation(line: 213, column: 12, scope: !4009)
!4011 = !DILocation(line: 213, column: 19, scope: !4009)
!4012 = !DILocation(line: 214, column: 3, scope: !4009)
!4013 = !DILocation(line: 214, column: 12, scope: !4009)
!4014 = !DILocation(line: 214, column: 17, scope: !4009)
!4015 = !DILocation(line: 215, column: 2, scope: !4009)
!4016 = !DILocation(line: 217, column: 2, scope: !166)
!4017 = !DILocation(line: 218, column: 1, scope: !166)
!4018 = distinct !DISubprogram(name: "cypress_send_ext_cmd", scope: !3, file: !3, line: 169, type: !4019, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!145, !169, !150, !149}
!4021 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4018, file: !3, line: 169, type: !169)
!4022 = !DILocation(line: 169, column: 49, scope: !4018)
!4023 = !DILocalVariable(name: "cmd", arg: 2, scope: !4018, file: !3, line: 169, type: !150)
!4024 = !DILocation(line: 169, column: 72, scope: !4018)
!4025 = !DILocalVariable(name: "param", arg: 3, scope: !4018, file: !3, line: 170, type: !149)
!4026 = !DILocation(line: 170, column: 20, scope: !4018)
!4027 = !DILocalVariable(name: "tries", scope: !4018, file: !3, line: 172, type: !145)
!4028 = !DILocation(line: 172, column: 6, scope: !4018)
!4029 = !DILocalVariable(name: "rc", scope: !4018, file: !3, line: 173, type: !145)
!4030 = !DILocation(line: 173, column: 6, scope: !4018)
!4031 = !DILocation(line: 179, column: 2, scope: !4018)
!4032 = !DILocation(line: 180, column: 23, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4018, file: !3, line: 179, column: 5)
!4034 = !DILocation(line: 181, column: 29, scope: !4033)
!4035 = !DILocation(line: 180, column: 3, scope: !4033)
!4036 = !DILocation(line: 182, column: 23, scope: !4033)
!4037 = !DILocation(line: 183, column: 29, scope: !4033)
!4038 = !DILocation(line: 182, column: 3, scope: !4033)
!4039 = !DILocation(line: 184, column: 23, scope: !4033)
!4040 = !DILocation(line: 185, column: 29, scope: !4033)
!4041 = !DILocation(line: 184, column: 3, scope: !4033)
!4042 = !DILocation(line: 186, column: 23, scope: !4033)
!4043 = !DILocation(line: 187, column: 29, scope: !4033)
!4044 = !DILocation(line: 186, column: 3, scope: !4033)
!4045 = !DILocation(line: 189, column: 36, scope: !4033)
!4046 = !DILocation(line: 189, column: 45, scope: !4033)
!4047 = !DILocation(line: 189, column: 50, scope: !4033)
!4048 = !DILocation(line: 189, column: 8, scope: !4033)
!4049 = !DILocation(line: 189, column: 6, scope: !4033)
!4050 = !DILocation(line: 190, column: 7, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4033, file: !3, line: 190, column: 7)
!4052 = !DILocation(line: 190, column: 7, scope: !4033)
!4053 = !DILocation(line: 191, column: 4, scope: !4051)
!4054 = !DILocation(line: 193, column: 32, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4033, file: !3, line: 193, column: 7)
!4056 = !DILocation(line: 193, column: 41, scope: !4055)
!4057 = !DILocation(line: 193, column: 46, scope: !4055)
!4058 = !DILocation(line: 193, column: 7, scope: !4055)
!4059 = !DILocation(line: 193, column: 7, scope: !4033)
!4060 = !DILocation(line: 194, column: 4, scope: !4055)
!4061 = !DILocation(line: 196, column: 2, scope: !4033)
!4062 = !DILocation(line: 196, column: 11, scope: !4018)
!4063 = !DILocation(line: 196, column: 19, scope: !4018)
!4064 = distinct !{!4064, !4031, !4065}
!4065 = !DILocation(line: 196, column: 22, scope: !4018)
!4066 = !DILocation(line: 198, column: 2, scope: !4018)
!4067 = !DILocation(line: 199, column: 1, scope: !4018)
!4068 = distinct !DISubprogram(name: "cypress_init", scope: !3, file: !3, line: 658, type: !3937, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !366)
!4069 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4068, file: !3, line: 658, type: !169)
!4070 = !DILocation(line: 658, column: 34, scope: !4068)
!4071 = !DILocalVariable(name: "cytp", scope: !4068, file: !3, line: 660, type: !4072)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cytp_data", file: !4074, line: 153, size: 384, elements: !4075)
!4074 = !DIFile(filename: "drivers/input/mouse/cypress_ps2.h", directory: "/home/lizy2001/genbc/linux")
!4075 = !{!4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "fw_version", scope: !4073, file: !4074, line: 154, baseType: !145, size: 32)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_size", scope: !4073, file: !4074, line: 156, baseType: !145, size: 32, offset: 32)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4073, file: !4074, line: 157, baseType: !145, size: 32, offset: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "tp_min_pressure", scope: !4073, file: !4074, line: 159, baseType: !145, size: 32, offset: 96)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "tp_max_pressure", scope: !4073, file: !4074, line: 160, baseType: !145, size: 32, offset: 128)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "tp_width", scope: !4073, file: !4074, line: 161, baseType: !145, size: 32, offset: 160)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "tp_high", scope: !4073, file: !4074, line: 162, baseType: !145, size: 32, offset: 192)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "tp_max_abs_x", scope: !4073, file: !4074, line: 163, baseType: !145, size: 32, offset: 224)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "tp_max_abs_y", scope: !4073, file: !4074, line: 164, baseType: !145, size: 32, offset: 256)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "tp_res_x", scope: !4073, file: !4074, line: 166, baseType: !145, size: 32, offset: 288)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "tp_res_y", scope: !4073, file: !4074, line: 167, baseType: !145, size: 32, offset: 320)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "tp_metrics_supported", scope: !4073, file: !4074, line: 169, baseType: !145, size: 32, offset: 352)
!4088 = !DILocation(line: 660, column: 20, scope: !4068)
!4089 = !DILocation(line: 662, column: 9, scope: !4068)
!4090 = !DILocation(line: 662, column: 7, scope: !4068)
!4091 = !DILocation(line: 663, column: 7, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 663, column: 6)
!4093 = !DILocation(line: 663, column: 6, scope: !4068)
!4094 = !DILocation(line: 664, column: 3, scope: !4092)
!4095 = !DILocation(line: 666, column: 21, scope: !4068)
!4096 = !DILocation(line: 666, column: 2, scope: !4068)
!4097 = !DILocation(line: 666, column: 11, scope: !4068)
!4098 = !DILocation(line: 666, column: 19, scope: !4068)
!4099 = !DILocation(line: 667, column: 2, scope: !4068)
!4100 = !DILocation(line: 667, column: 11, scope: !4068)
!4101 = !DILocation(line: 667, column: 19, scope: !4068)
!4102 = !DILocation(line: 669, column: 16, scope: !4068)
!4103 = !DILocation(line: 669, column: 2, scope: !4068)
!4104 = !DILocation(line: 671, column: 29, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 671, column: 6)
!4106 = !DILocation(line: 671, column: 6, scope: !4105)
!4107 = !DILocation(line: 671, column: 6, scope: !4068)
!4108 = !DILocation(line: 672, column: 3, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4105, file: !3, line: 671, column: 39)
!4110 = !DILocation(line: 673, column: 3, scope: !4109)
!4111 = !DILocation(line: 676, column: 32, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 676, column: 6)
!4113 = !DILocation(line: 676, column: 6, scope: !4112)
!4114 = !DILocation(line: 676, column: 6, scope: !4068)
!4115 = !DILocation(line: 677, column: 3, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4112, file: !3, line: 676, column: 42)
!4117 = !DILocation(line: 678, column: 3, scope: !4116)
!4118 = !DILocation(line: 681, column: 31, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 681, column: 6)
!4120 = !DILocation(line: 681, column: 40, scope: !4119)
!4121 = !DILocation(line: 681, column: 45, scope: !4119)
!4122 = !DILocation(line: 681, column: 6, scope: !4119)
!4123 = !DILocation(line: 681, column: 51, scope: !4119)
!4124 = !DILocation(line: 681, column: 6, scope: !4068)
!4125 = !DILocation(line: 682, column: 3, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4119, file: !3, line: 681, column: 56)
!4127 = !DILocation(line: 683, column: 3, scope: !4126)
!4128 = !DILocation(line: 686, column: 2, scope: !4068)
!4129 = !DILocation(line: 686, column: 11, scope: !4068)
!4130 = !DILocation(line: 686, column: 17, scope: !4068)
!4131 = !DILocation(line: 687, column: 2, scope: !4068)
!4132 = !DILocation(line: 687, column: 11, scope: !4068)
!4133 = !DILocation(line: 687, column: 28, scope: !4068)
!4134 = !DILocation(line: 688, column: 2, scope: !4068)
!4135 = !DILocation(line: 688, column: 11, scope: !4068)
!4136 = !DILocation(line: 688, column: 20, scope: !4068)
!4137 = !DILocation(line: 689, column: 2, scope: !4068)
!4138 = !DILocation(line: 689, column: 11, scope: !4068)
!4139 = !DILocation(line: 689, column: 22, scope: !4068)
!4140 = !DILocation(line: 690, column: 2, scope: !4068)
!4141 = !DILocation(line: 690, column: 11, scope: !4068)
!4142 = !DILocation(line: 690, column: 21, scope: !4068)
!4143 = !DILocation(line: 691, column: 2, scope: !4068)
!4144 = !DILocation(line: 691, column: 11, scope: !4068)
!4145 = !DILocation(line: 691, column: 19, scope: !4068)
!4146 = !DILocation(line: 692, column: 2, scope: !4068)
!4147 = !DILocation(line: 692, column: 11, scope: !4068)
!4148 = !DILocation(line: 692, column: 23, scope: !4068)
!4149 = !DILocation(line: 694, column: 2, scope: !4068)
!4150 = !DILabel(scope: !4068, name: "err_exit", file: !3, line: 696)
!4151 = !DILocation(line: 696, column: 1, scope: !4068)
!4152 = !DILocation(line: 701, column: 16, scope: !4068)
!4153 = !DILocation(line: 701, column: 2, scope: !4068)
!4154 = !DILocation(line: 703, column: 2, scope: !4068)
!4155 = !DILocation(line: 703, column: 11, scope: !4068)
!4156 = !DILocation(line: 703, column: 19, scope: !4068)
!4157 = !DILocation(line: 704, column: 8, scope: !4068)
!4158 = !DILocation(line: 704, column: 2, scope: !4068)
!4159 = !DILocation(line: 706, column: 2, scope: !4068)
!4160 = !DILocation(line: 707, column: 1, scope: !4068)
!4161 = distinct !DISubprogram(name: "kzalloc", scope: !135, file: !135, line: 662, type: !4162, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!144, !602, !142}
!4164 = !DILocalVariable(name: "s", arg: 1, scope: !4165, file: !135, line: 445, type: !958)
!4165 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !135, file: !135, line: 445, type: !4166, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!144, !958, !142, !602}
!4168 = !DILocation(line: 445, column: 72, scope: !4165, inlinedAt: !4169)
!4169 = distinct !DILocation(line: 552, column: 10, scope: !4170, inlinedAt: !4173)
!4170 = distinct !DILexicalBlock(scope: !4171, file: !135, line: 540, column: 34)
!4171 = distinct !DILexicalBlock(scope: !4172, file: !135, line: 540, column: 6)
!4172 = distinct !DISubprogram(name: "kmalloc", scope: !135, file: !135, line: 538, type: !4162, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!4173 = distinct !DILocation(line: 664, column: 9, scope: !4161)
!4174 = !DILocalVariable(name: "flags", arg: 2, scope: !4165, file: !135, line: 446, type: !142)
!4175 = !DILocation(line: 446, column: 9, scope: !4165, inlinedAt: !4169)
!4176 = !DILocalVariable(name: "size", arg: 3, scope: !4165, file: !135, line: 446, type: !602)
!4177 = !DILocation(line: 446, column: 23, scope: !4165, inlinedAt: !4169)
!4178 = !DILocalVariable(name: "ret", scope: !4165, file: !135, line: 448, type: !144)
!4179 = !DILocation(line: 448, column: 8, scope: !4165, inlinedAt: !4169)
!4180 = !DILocalVariable(name: "flags", arg: 1, scope: !4181, file: !135, line: 318, type: !142)
!4181 = distinct !DISubprogram(name: "kmalloc_type", scope: !135, file: !135, line: 318, type: !4182, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!134, !142}
!4184 = !DILocation(line: 318, column: 67, scope: !4181, inlinedAt: !4185)
!4185 = distinct !DILocation(line: 553, column: 20, scope: !4170, inlinedAt: !4173)
!4186 = !DILocalVariable(name: "size", arg: 1, scope: !4187, file: !135, line: 346, type: !602)
!4187 = distinct !DISubprogram(name: "kmalloc_index", scope: !135, file: !135, line: 346, type: !4188, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!7, !602}
!4190 = !DILocation(line: 346, column: 58, scope: !4187, inlinedAt: !4191)
!4191 = distinct !DILocation(line: 547, column: 11, scope: !4170, inlinedAt: !4173)
!4192 = !DILocalVariable(name: "size", arg: 1, scope: !4193, file: !135, line: 472, type: !602)
!4193 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !135, file: !135, line: 472, type: !4194, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!144, !602, !142, !7}
!4196 = !DILocation(line: 472, column: 28, scope: !4193, inlinedAt: !4197)
!4197 = distinct !DILocation(line: 481, column: 9, scope: !4198, inlinedAt: !4199)
!4198 = distinct !DISubprogram(name: "kmalloc_large", scope: !135, file: !135, line: 478, type: !4162, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!4199 = distinct !DILocation(line: 545, column: 11, scope: !4200, inlinedAt: !4173)
!4200 = distinct !DILexicalBlock(scope: !4170, file: !135, line: 544, column: 7)
!4201 = !DILocalVariable(name: "flags", arg: 2, scope: !4193, file: !135, line: 472, type: !142)
!4202 = !DILocation(line: 472, column: 40, scope: !4193, inlinedAt: !4197)
!4203 = !DILocalVariable(name: "order", arg: 3, scope: !4193, file: !135, line: 472, type: !7)
!4204 = !DILocation(line: 472, column: 60, scope: !4193, inlinedAt: !4197)
!4205 = !DILocalVariable(name: "size", arg: 1, scope: !4198, file: !135, line: 478, type: !602)
!4206 = !DILocation(line: 478, column: 51, scope: !4198, inlinedAt: !4199)
!4207 = !DILocalVariable(name: "flags", arg: 2, scope: !4198, file: !135, line: 478, type: !142)
!4208 = !DILocation(line: 478, column: 63, scope: !4198, inlinedAt: !4199)
!4209 = !DILocalVariable(name: "order", scope: !4198, file: !135, line: 480, type: !7)
!4210 = !DILocation(line: 480, column: 15, scope: !4198, inlinedAt: !4199)
!4211 = !DILocalVariable(name: "size", arg: 1, scope: !4172, file: !135, line: 538, type: !602)
!4212 = !DILocation(line: 538, column: 45, scope: !4172, inlinedAt: !4173)
!4213 = !DILocalVariable(name: "flags", arg: 2, scope: !4172, file: !135, line: 538, type: !142)
!4214 = !DILocation(line: 538, column: 57, scope: !4172, inlinedAt: !4173)
!4215 = !DILocalVariable(name: "index", scope: !4170, file: !135, line: 542, type: !7)
!4216 = !DILocation(line: 542, column: 16, scope: !4170, inlinedAt: !4173)
!4217 = !DILocalVariable(name: "size", arg: 1, scope: !4161, file: !135, line: 662, type: !602)
!4218 = !DILocation(line: 662, column: 36, scope: !4161)
!4219 = !DILocalVariable(name: "flags", arg: 2, scope: !4161, file: !135, line: 662, type: !142)
!4220 = !DILocation(line: 662, column: 48, scope: !4161)
!4221 = !DILocation(line: 664, column: 17, scope: !4161)
!4222 = !DILocation(line: 664, column: 23, scope: !4161)
!4223 = !DILocation(line: 664, column: 29, scope: !4161)
!4224 = !DILocation(line: 540, column: 27, scope: !4171, inlinedAt: !4173)
!4225 = !DILocation(line: 540, column: 6, scope: !4171, inlinedAt: !4173)
!4226 = !DILocation(line: 540, column: 6, scope: !4172, inlinedAt: !4173)
!4227 = !DILocation(line: 544, column: 7, scope: !4200, inlinedAt: !4173)
!4228 = !DILocation(line: 544, column: 12, scope: !4200, inlinedAt: !4173)
!4229 = !DILocation(line: 544, column: 7, scope: !4170, inlinedAt: !4173)
!4230 = !DILocation(line: 545, column: 25, scope: !4200, inlinedAt: !4173)
!4231 = !DILocation(line: 545, column: 31, scope: !4200, inlinedAt: !4173)
!4232 = !DILocation(line: 480, column: 33, scope: !4198, inlinedAt: !4199)
!4233 = !DILocation(line: 480, column: 23, scope: !4198, inlinedAt: !4199)
!4234 = !DILocation(line: 481, column: 29, scope: !4198, inlinedAt: !4199)
!4235 = !DILocation(line: 481, column: 35, scope: !4198, inlinedAt: !4199)
!4236 = !DILocation(line: 481, column: 42, scope: !4198, inlinedAt: !4199)
!4237 = !DILocation(line: 474, column: 23, scope: !4193, inlinedAt: !4197)
!4238 = !DILocation(line: 474, column: 29, scope: !4193, inlinedAt: !4197)
!4239 = !DILocation(line: 474, column: 36, scope: !4193, inlinedAt: !4197)
!4240 = !DILocation(line: 474, column: 9, scope: !4193, inlinedAt: !4197)
!4241 = !DILocation(line: 545, column: 4, scope: !4200, inlinedAt: !4173)
!4242 = !DILocation(line: 547, column: 25, scope: !4170, inlinedAt: !4173)
!4243 = !DILocation(line: 348, column: 7, scope: !4244, inlinedAt: !4191)
!4244 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 348, column: 6)
!4245 = !DILocation(line: 348, column: 6, scope: !4187, inlinedAt: !4191)
!4246 = !DILocation(line: 349, column: 3, scope: !4244, inlinedAt: !4191)
!4247 = !DILocation(line: 351, column: 6, scope: !4248, inlinedAt: !4191)
!4248 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 351, column: 6)
!4249 = !DILocation(line: 351, column: 11, scope: !4248, inlinedAt: !4191)
!4250 = !DILocation(line: 351, column: 6, scope: !4187, inlinedAt: !4191)
!4251 = !DILocation(line: 352, column: 3, scope: !4248, inlinedAt: !4191)
!4252 = !DILocation(line: 354, column: 32, scope: !4253, inlinedAt: !4191)
!4253 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 354, column: 6)
!4254 = !DILocation(line: 354, column: 37, scope: !4253, inlinedAt: !4191)
!4255 = !DILocation(line: 354, column: 42, scope: !4253, inlinedAt: !4191)
!4256 = !DILocation(line: 354, column: 45, scope: !4253, inlinedAt: !4191)
!4257 = !DILocation(line: 354, column: 50, scope: !4253, inlinedAt: !4191)
!4258 = !DILocation(line: 354, column: 6, scope: !4187, inlinedAt: !4191)
!4259 = !DILocation(line: 355, column: 3, scope: !4253, inlinedAt: !4191)
!4260 = !DILocation(line: 356, column: 32, scope: !4261, inlinedAt: !4191)
!4261 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 356, column: 6)
!4262 = !DILocation(line: 356, column: 37, scope: !4261, inlinedAt: !4191)
!4263 = !DILocation(line: 356, column: 43, scope: !4261, inlinedAt: !4191)
!4264 = !DILocation(line: 356, column: 46, scope: !4261, inlinedAt: !4191)
!4265 = !DILocation(line: 356, column: 51, scope: !4261, inlinedAt: !4191)
!4266 = !DILocation(line: 356, column: 6, scope: !4187, inlinedAt: !4191)
!4267 = !DILocation(line: 357, column: 3, scope: !4261, inlinedAt: !4191)
!4268 = !DILocation(line: 358, column: 6, scope: !4269, inlinedAt: !4191)
!4269 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 358, column: 6)
!4270 = !DILocation(line: 358, column: 11, scope: !4269, inlinedAt: !4191)
!4271 = !DILocation(line: 358, column: 6, scope: !4187, inlinedAt: !4191)
!4272 = !DILocation(line: 358, column: 26, scope: !4269, inlinedAt: !4191)
!4273 = !DILocation(line: 359, column: 6, scope: !4274, inlinedAt: !4191)
!4274 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 359, column: 6)
!4275 = !DILocation(line: 359, column: 11, scope: !4274, inlinedAt: !4191)
!4276 = !DILocation(line: 359, column: 6, scope: !4187, inlinedAt: !4191)
!4277 = !DILocation(line: 359, column: 26, scope: !4274, inlinedAt: !4191)
!4278 = !DILocation(line: 360, column: 6, scope: !4279, inlinedAt: !4191)
!4279 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 360, column: 6)
!4280 = !DILocation(line: 360, column: 11, scope: !4279, inlinedAt: !4191)
!4281 = !DILocation(line: 360, column: 6, scope: !4187, inlinedAt: !4191)
!4282 = !DILocation(line: 360, column: 26, scope: !4279, inlinedAt: !4191)
!4283 = !DILocation(line: 361, column: 6, scope: !4284, inlinedAt: !4191)
!4284 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 361, column: 6)
!4285 = !DILocation(line: 361, column: 11, scope: !4284, inlinedAt: !4191)
!4286 = !DILocation(line: 361, column: 6, scope: !4187, inlinedAt: !4191)
!4287 = !DILocation(line: 361, column: 26, scope: !4284, inlinedAt: !4191)
!4288 = !DILocation(line: 362, column: 6, scope: !4289, inlinedAt: !4191)
!4289 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 362, column: 6)
!4290 = !DILocation(line: 362, column: 11, scope: !4289, inlinedAt: !4191)
!4291 = !DILocation(line: 362, column: 6, scope: !4187, inlinedAt: !4191)
!4292 = !DILocation(line: 362, column: 26, scope: !4289, inlinedAt: !4191)
!4293 = !DILocation(line: 363, column: 6, scope: !4294, inlinedAt: !4191)
!4294 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 363, column: 6)
!4295 = !DILocation(line: 363, column: 11, scope: !4294, inlinedAt: !4191)
!4296 = !DILocation(line: 363, column: 6, scope: !4187, inlinedAt: !4191)
!4297 = !DILocation(line: 363, column: 26, scope: !4294, inlinedAt: !4191)
!4298 = !DILocation(line: 364, column: 6, scope: !4299, inlinedAt: !4191)
!4299 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 364, column: 6)
!4300 = !DILocation(line: 364, column: 11, scope: !4299, inlinedAt: !4191)
!4301 = !DILocation(line: 364, column: 6, scope: !4187, inlinedAt: !4191)
!4302 = !DILocation(line: 364, column: 26, scope: !4299, inlinedAt: !4191)
!4303 = !DILocation(line: 365, column: 6, scope: !4304, inlinedAt: !4191)
!4304 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 365, column: 6)
!4305 = !DILocation(line: 365, column: 11, scope: !4304, inlinedAt: !4191)
!4306 = !DILocation(line: 365, column: 6, scope: !4187, inlinedAt: !4191)
!4307 = !DILocation(line: 365, column: 26, scope: !4304, inlinedAt: !4191)
!4308 = !DILocation(line: 366, column: 6, scope: !4309, inlinedAt: !4191)
!4309 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 366, column: 6)
!4310 = !DILocation(line: 366, column: 11, scope: !4309, inlinedAt: !4191)
!4311 = !DILocation(line: 366, column: 6, scope: !4187, inlinedAt: !4191)
!4312 = !DILocation(line: 366, column: 26, scope: !4309, inlinedAt: !4191)
!4313 = !DILocation(line: 367, column: 6, scope: !4314, inlinedAt: !4191)
!4314 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 367, column: 6)
!4315 = !DILocation(line: 367, column: 11, scope: !4314, inlinedAt: !4191)
!4316 = !DILocation(line: 367, column: 6, scope: !4187, inlinedAt: !4191)
!4317 = !DILocation(line: 367, column: 26, scope: !4314, inlinedAt: !4191)
!4318 = !DILocation(line: 368, column: 6, scope: !4319, inlinedAt: !4191)
!4319 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 368, column: 6)
!4320 = !DILocation(line: 368, column: 11, scope: !4319, inlinedAt: !4191)
!4321 = !DILocation(line: 368, column: 6, scope: !4187, inlinedAt: !4191)
!4322 = !DILocation(line: 368, column: 26, scope: !4319, inlinedAt: !4191)
!4323 = !DILocation(line: 369, column: 6, scope: !4324, inlinedAt: !4191)
!4324 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 369, column: 6)
!4325 = !DILocation(line: 369, column: 11, scope: !4324, inlinedAt: !4191)
!4326 = !DILocation(line: 369, column: 6, scope: !4187, inlinedAt: !4191)
!4327 = !DILocation(line: 369, column: 26, scope: !4324, inlinedAt: !4191)
!4328 = !DILocation(line: 370, column: 6, scope: !4329, inlinedAt: !4191)
!4329 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 370, column: 6)
!4330 = !DILocation(line: 370, column: 11, scope: !4329, inlinedAt: !4191)
!4331 = !DILocation(line: 370, column: 6, scope: !4187, inlinedAt: !4191)
!4332 = !DILocation(line: 370, column: 26, scope: !4329, inlinedAt: !4191)
!4333 = !DILocation(line: 371, column: 6, scope: !4334, inlinedAt: !4191)
!4334 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 371, column: 6)
!4335 = !DILocation(line: 371, column: 11, scope: !4334, inlinedAt: !4191)
!4336 = !DILocation(line: 371, column: 6, scope: !4187, inlinedAt: !4191)
!4337 = !DILocation(line: 371, column: 26, scope: !4334, inlinedAt: !4191)
!4338 = !DILocation(line: 372, column: 6, scope: !4339, inlinedAt: !4191)
!4339 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 372, column: 6)
!4340 = !DILocation(line: 372, column: 11, scope: !4339, inlinedAt: !4191)
!4341 = !DILocation(line: 372, column: 6, scope: !4187, inlinedAt: !4191)
!4342 = !DILocation(line: 372, column: 26, scope: !4339, inlinedAt: !4191)
!4343 = !DILocation(line: 373, column: 6, scope: !4344, inlinedAt: !4191)
!4344 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 373, column: 6)
!4345 = !DILocation(line: 373, column: 11, scope: !4344, inlinedAt: !4191)
!4346 = !DILocation(line: 373, column: 6, scope: !4187, inlinedAt: !4191)
!4347 = !DILocation(line: 373, column: 26, scope: !4344, inlinedAt: !4191)
!4348 = !DILocation(line: 374, column: 6, scope: !4349, inlinedAt: !4191)
!4349 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 374, column: 6)
!4350 = !DILocation(line: 374, column: 11, scope: !4349, inlinedAt: !4191)
!4351 = !DILocation(line: 374, column: 6, scope: !4187, inlinedAt: !4191)
!4352 = !DILocation(line: 374, column: 26, scope: !4349, inlinedAt: !4191)
!4353 = !DILocation(line: 375, column: 6, scope: !4354, inlinedAt: !4191)
!4354 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 375, column: 6)
!4355 = !DILocation(line: 375, column: 11, scope: !4354, inlinedAt: !4191)
!4356 = !DILocation(line: 375, column: 6, scope: !4187, inlinedAt: !4191)
!4357 = !DILocation(line: 375, column: 27, scope: !4354, inlinedAt: !4191)
!4358 = !DILocation(line: 376, column: 6, scope: !4359, inlinedAt: !4191)
!4359 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 376, column: 6)
!4360 = !DILocation(line: 376, column: 11, scope: !4359, inlinedAt: !4191)
!4361 = !DILocation(line: 376, column: 6, scope: !4187, inlinedAt: !4191)
!4362 = !DILocation(line: 376, column: 32, scope: !4359, inlinedAt: !4191)
!4363 = !DILocation(line: 377, column: 6, scope: !4364, inlinedAt: !4191)
!4364 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 377, column: 6)
!4365 = !DILocation(line: 377, column: 11, scope: !4364, inlinedAt: !4191)
!4366 = !DILocation(line: 377, column: 6, scope: !4187, inlinedAt: !4191)
!4367 = !DILocation(line: 377, column: 32, scope: !4364, inlinedAt: !4191)
!4368 = !DILocation(line: 378, column: 6, scope: !4369, inlinedAt: !4191)
!4369 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 378, column: 6)
!4370 = !DILocation(line: 378, column: 11, scope: !4369, inlinedAt: !4191)
!4371 = !DILocation(line: 378, column: 6, scope: !4187, inlinedAt: !4191)
!4372 = !DILocation(line: 378, column: 32, scope: !4369, inlinedAt: !4191)
!4373 = !DILocation(line: 379, column: 6, scope: !4374, inlinedAt: !4191)
!4374 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 379, column: 6)
!4375 = !DILocation(line: 379, column: 11, scope: !4374, inlinedAt: !4191)
!4376 = !DILocation(line: 379, column: 6, scope: !4187, inlinedAt: !4191)
!4377 = !DILocation(line: 379, column: 33, scope: !4374, inlinedAt: !4191)
!4378 = !DILocation(line: 380, column: 6, scope: !4379, inlinedAt: !4191)
!4379 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 380, column: 6)
!4380 = !DILocation(line: 380, column: 11, scope: !4379, inlinedAt: !4191)
!4381 = !DILocation(line: 380, column: 6, scope: !4187, inlinedAt: !4191)
!4382 = !DILocation(line: 380, column: 33, scope: !4379, inlinedAt: !4191)
!4383 = !DILocation(line: 381, column: 6, scope: !4384, inlinedAt: !4191)
!4384 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 381, column: 6)
!4385 = !DILocation(line: 381, column: 11, scope: !4384, inlinedAt: !4191)
!4386 = !DILocation(line: 381, column: 6, scope: !4187, inlinedAt: !4191)
!4387 = !DILocation(line: 381, column: 33, scope: !4384, inlinedAt: !4191)
!4388 = !DILocation(line: 382, column: 2, scope: !4389, inlinedAt: !4191)
!4389 = distinct !DILexicalBlock(scope: !4390, file: !135, line: 382, column: 2)
!4390 = distinct !DILexicalBlock(scope: !4187, file: !135, line: 382, column: 2)
!4391 = !{i32 -2144228848, i32 -2144228819, i32 -2144228773, i32 -2144228715, i32 -2144228661, i32 -2144228607, i32 -2144228552, i32 -2144228521}
!4392 = !DILocation(line: 382, column: 2, scope: !4393, inlinedAt: !4191)
!4393 = distinct !DILexicalBlock(scope: !4394, file: !135, line: 382, column: 2)
!4394 = distinct !DILexicalBlock(scope: !4390, file: !135, line: 382, column: 2)
!4395 = !{i32 -2144228078, i32 -2144228071, i32 -2144228017, i32 -2144227986, i32 -2144227956}
!4396 = !DILocation(line: 382, column: 2, scope: !4394, inlinedAt: !4191)
!4397 = !DILocation(line: 386, column: 1, scope: !4187, inlinedAt: !4191)
!4398 = !DILocation(line: 547, column: 9, scope: !4170, inlinedAt: !4173)
!4399 = !DILocation(line: 549, column: 8, scope: !4400, inlinedAt: !4173)
!4400 = distinct !DILexicalBlock(scope: !4170, file: !135, line: 549, column: 7)
!4401 = !DILocation(line: 549, column: 7, scope: !4170, inlinedAt: !4173)
!4402 = !DILocation(line: 550, column: 4, scope: !4400, inlinedAt: !4173)
!4403 = !DILocation(line: 553, column: 33, scope: !4170, inlinedAt: !4173)
!4404 = !DILocation(line: 325, column: 6, scope: !4405, inlinedAt: !4185)
!4405 = distinct !DILexicalBlock(scope: !4181, file: !135, line: 325, column: 6)
!4406 = !DILocation(line: 325, column: 6, scope: !4181, inlinedAt: !4185)
!4407 = !DILocation(line: 326, column: 3, scope: !4405, inlinedAt: !4185)
!4408 = !DILocation(line: 332, column: 9, scope: !4181, inlinedAt: !4185)
!4409 = !DILocation(line: 332, column: 15, scope: !4181, inlinedAt: !4185)
!4410 = !DILocation(line: 332, column: 2, scope: !4181, inlinedAt: !4185)
!4411 = !DILocation(line: 336, column: 1, scope: !4181, inlinedAt: !4185)
!4412 = !DILocation(line: 553, column: 5, scope: !4170, inlinedAt: !4173)
!4413 = !DILocation(line: 553, column: 41, scope: !4170, inlinedAt: !4173)
!4414 = !DILocation(line: 554, column: 5, scope: !4170, inlinedAt: !4173)
!4415 = !DILocation(line: 554, column: 12, scope: !4170, inlinedAt: !4173)
!4416 = !DILocation(line: 448, column: 31, scope: !4165, inlinedAt: !4169)
!4417 = !DILocation(line: 448, column: 34, scope: !4165, inlinedAt: !4169)
!4418 = !DILocation(line: 448, column: 14, scope: !4165, inlinedAt: !4169)
!4419 = !DILocation(line: 450, column: 22, scope: !4165, inlinedAt: !4169)
!4420 = !DILocation(line: 450, column: 25, scope: !4165, inlinedAt: !4169)
!4421 = !DILocation(line: 450, column: 30, scope: !4165, inlinedAt: !4169)
!4422 = !DILocation(line: 450, column: 36, scope: !4165, inlinedAt: !4169)
!4423 = !DILocation(line: 450, column: 8, scope: !4165, inlinedAt: !4169)
!4424 = !DILocation(line: 450, column: 6, scope: !4165, inlinedAt: !4169)
!4425 = !DILocation(line: 451, column: 9, scope: !4165, inlinedAt: !4169)
!4426 = !DILocation(line: 552, column: 3, scope: !4170, inlinedAt: !4173)
!4427 = !DILocation(line: 557, column: 19, scope: !4172, inlinedAt: !4173)
!4428 = !DILocation(line: 557, column: 25, scope: !4172, inlinedAt: !4173)
!4429 = !DILocation(line: 557, column: 9, scope: !4172, inlinedAt: !4173)
!4430 = !DILocation(line: 557, column: 2, scope: !4172, inlinedAt: !4173)
!4431 = !DILocation(line: 558, column: 1, scope: !4172, inlinedAt: !4173)
!4432 = !DILocation(line: 664, column: 2, scope: !4161)
!4433 = distinct !DISubprogram(name: "cypress_reset", scope: !3, file: !3, line: 356, type: !3978, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!4434 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4433, file: !3, line: 356, type: !169)
!4435 = !DILocation(line: 356, column: 43, scope: !4433)
!4436 = !DILocalVariable(name: "cytp", scope: !4433, file: !3, line: 358, type: !4072)
!4437 = !DILocation(line: 358, column: 20, scope: !4433)
!4438 = !DILocation(line: 358, column: 27, scope: !4433)
!4439 = !DILocation(line: 358, column: 36, scope: !4433)
!4440 = !DILocation(line: 360, column: 2, scope: !4433)
!4441 = !DILocation(line: 360, column: 8, scope: !4433)
!4442 = !DILocation(line: 360, column: 13, scope: !4433)
!4443 = !DILocation(line: 362, column: 16, scope: !4433)
!4444 = !DILocation(line: 362, column: 2, scope: !4433)
!4445 = !DILocation(line: 363, column: 1, scope: !4433)
!4446 = distinct !DISubprogram(name: "cypress_query_hardware", scope: !3, file: !3, line: 322, type: !3937, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!4447 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4446, file: !3, line: 322, type: !169)
!4448 = !DILocation(line: 322, column: 51, scope: !4446)
!4449 = !DILocalVariable(name: "ret", scope: !4446, file: !3, line: 324, type: !145)
!4450 = !DILocation(line: 324, column: 6, scope: !4446)
!4451 = !DILocation(line: 326, column: 32, scope: !4446)
!4452 = !DILocation(line: 326, column: 8, scope: !4446)
!4453 = !DILocation(line: 326, column: 6, scope: !4446)
!4454 = !DILocation(line: 327, column: 6, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4446, file: !3, line: 327, column: 6)
!4456 = !DILocation(line: 327, column: 6, scope: !4446)
!4457 = !DILocation(line: 328, column: 10, scope: !4455)
!4458 = !DILocation(line: 328, column: 3, scope: !4455)
!4459 = !DILocation(line: 330, column: 32, scope: !4446)
!4460 = !DILocation(line: 330, column: 8, scope: !4446)
!4461 = !DILocation(line: 330, column: 6, scope: !4446)
!4462 = !DILocation(line: 331, column: 6, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4446, file: !3, line: 331, column: 6)
!4464 = !DILocation(line: 331, column: 6, scope: !4446)
!4465 = !DILocation(line: 332, column: 10, scope: !4463)
!4466 = !DILocation(line: 332, column: 3, scope: !4463)
!4467 = !DILocation(line: 334, column: 2, scope: !4446)
!4468 = !DILocation(line: 335, column: 1, scope: !4446)
!4469 = distinct !DISubprogram(name: "cypress_set_absolute_mode", scope: !3, file: !3, line: 337, type: !3937, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!4470 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4469, file: !3, line: 337, type: !169)
!4471 = !DILocation(line: 337, column: 54, scope: !4469)
!4472 = !DILocalVariable(name: "cytp", scope: !4469, file: !3, line: 339, type: !4072)
!4473 = !DILocation(line: 339, column: 20, scope: !4469)
!4474 = !DILocation(line: 339, column: 27, scope: !4469)
!4475 = !DILocation(line: 339, column: 36, scope: !4469)
!4476 = !DILocalVariable(name: "param", scope: !4469, file: !3, line: 340, type: !3989)
!4477 = !DILocation(line: 340, column: 16, scope: !4469)
!4478 = !DILocation(line: 342, column: 27, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4469, file: !3, line: 342, column: 6)
!4480 = !DILocation(line: 342, column: 69, scope: !4479)
!4481 = !DILocation(line: 342, column: 6, scope: !4479)
!4482 = !DILocation(line: 342, column: 76, scope: !4479)
!4483 = !DILocation(line: 342, column: 6, scope: !4469)
!4484 = !DILocation(line: 343, column: 3, scope: !4479)
!4485 = !DILocation(line: 345, column: 16, scope: !4469)
!4486 = !DILocation(line: 345, column: 22, scope: !4469)
!4487 = !DILocation(line: 345, column: 27, scope: !4469)
!4488 = !DILocation(line: 346, column: 4, scope: !4469)
!4489 = !DILocation(line: 345, column: 2, scope: !4469)
!4490 = !DILocation(line: 345, column: 8, scope: !4469)
!4491 = !DILocation(line: 345, column: 13, scope: !4469)
!4492 = !DILocation(line: 347, column: 26, scope: !4469)
!4493 = !DILocation(line: 347, column: 2, scope: !4469)
!4494 = !DILocation(line: 349, column: 2, scope: !4469)
!4495 = !DILocation(line: 350, column: 1, scope: !4469)
!4496 = distinct !DISubprogram(name: "cypress_set_input_params", scope: !3, file: !3, line: 365, type: !4497, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!145, !174, !4072}
!4499 = !DILocalVariable(name: "input", arg: 1, scope: !4496, file: !3, line: 365, type: !174)
!4500 = !DILocation(line: 365, column: 55, scope: !4496)
!4501 = !DILocalVariable(name: "cytp", arg: 2, scope: !4496, file: !3, line: 366, type: !4072)
!4502 = !DILocation(line: 366, column: 27, scope: !4496)
!4503 = !DILocalVariable(name: "ret", scope: !4496, file: !3, line: 368, type: !145)
!4504 = !DILocation(line: 368, column: 6, scope: !4496)
!4505 = !DILocation(line: 370, column: 7, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4496, file: !3, line: 370, column: 6)
!4507 = !DILocation(line: 370, column: 13, scope: !4506)
!4508 = !DILocation(line: 370, column: 22, scope: !4506)
!4509 = !DILocation(line: 370, column: 26, scope: !4506)
!4510 = !DILocation(line: 370, column: 32, scope: !4506)
!4511 = !DILocation(line: 370, column: 6, scope: !4496)
!4512 = !DILocation(line: 371, column: 3, scope: !4506)
!4513 = !DILocation(line: 373, column: 20, scope: !4496)
!4514 = !DILocation(line: 373, column: 27, scope: !4496)
!4515 = !DILocation(line: 373, column: 2, scope: !4496)
!4516 = !DILocation(line: 374, column: 23, scope: !4496)
!4517 = !DILocation(line: 374, column: 40, scope: !4496)
!4518 = !DILocation(line: 374, column: 46, scope: !4496)
!4519 = !DILocation(line: 374, column: 2, scope: !4496)
!4520 = !DILocation(line: 375, column: 23, scope: !4496)
!4521 = !DILocation(line: 375, column: 40, scope: !4496)
!4522 = !DILocation(line: 375, column: 46, scope: !4496)
!4523 = !DILocation(line: 375, column: 2, scope: !4496)
!4524 = !DILocation(line: 376, column: 23, scope: !4496)
!4525 = !DILocation(line: 377, column: 9, scope: !4496)
!4526 = !DILocation(line: 377, column: 15, scope: !4496)
!4527 = !DILocation(line: 377, column: 32, scope: !4496)
!4528 = !DILocation(line: 377, column: 38, scope: !4496)
!4529 = !DILocation(line: 376, column: 2, scope: !4496)
!4530 = !DILocation(line: 378, column: 23, scope: !4496)
!4531 = !DILocation(line: 378, column: 2, scope: !4496)
!4532 = !DILocation(line: 381, column: 23, scope: !4496)
!4533 = !DILocation(line: 381, column: 52, scope: !4496)
!4534 = !DILocation(line: 381, column: 58, scope: !4496)
!4535 = !DILocation(line: 381, column: 2, scope: !4496)
!4536 = !DILocation(line: 382, column: 23, scope: !4496)
!4537 = !DILocation(line: 382, column: 52, scope: !4496)
!4538 = !DILocation(line: 382, column: 58, scope: !4496)
!4539 = !DILocation(line: 382, column: 2, scope: !4496)
!4540 = !DILocation(line: 383, column: 23, scope: !4496)
!4541 = !DILocation(line: 383, column: 2, scope: !4496)
!4542 = !DILocation(line: 385, column: 28, scope: !4496)
!4543 = !DILocation(line: 385, column: 8, scope: !4496)
!4544 = !DILocation(line: 385, column: 6, scope: !4496)
!4545 = !DILocation(line: 387, column: 6, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4496, file: !3, line: 387, column: 6)
!4547 = !DILocation(line: 387, column: 10, scope: !4546)
!4548 = !DILocation(line: 387, column: 6, scope: !4496)
!4549 = !DILocation(line: 388, column: 10, scope: !4546)
!4550 = !DILocation(line: 388, column: 3, scope: !4546)
!4551 = !DILocation(line: 390, column: 32, scope: !4496)
!4552 = !DILocation(line: 390, column: 39, scope: !4496)
!4553 = !DILocation(line: 390, column: 2, scope: !4496)
!4554 = !DILocation(line: 392, column: 20, scope: !4496)
!4555 = !DILocation(line: 392, column: 34, scope: !4496)
!4556 = !DILocation(line: 392, column: 40, scope: !4496)
!4557 = !DILocation(line: 392, column: 2, scope: !4496)
!4558 = !DILocation(line: 393, column: 20, scope: !4496)
!4559 = !DILocation(line: 393, column: 34, scope: !4496)
!4560 = !DILocation(line: 393, column: 40, scope: !4496)
!4561 = !DILocation(line: 393, column: 2, scope: !4496)
!4562 = !DILocation(line: 395, column: 20, scope: !4496)
!4563 = !DILocation(line: 395, column: 46, scope: !4496)
!4564 = !DILocation(line: 395, column: 52, scope: !4496)
!4565 = !DILocation(line: 395, column: 2, scope: !4496)
!4566 = !DILocation(line: 396, column: 20, scope: !4496)
!4567 = !DILocation(line: 396, column: 46, scope: !4496)
!4568 = !DILocation(line: 396, column: 52, scope: !4496)
!4569 = !DILocation(line: 396, column: 2, scope: !4496)
!4570 = !DILocation(line: 398, column: 23, scope: !4496)
!4571 = !DILocation(line: 398, column: 30, scope: !4496)
!4572 = !DILocation(line: 398, column: 2, scope: !4496)
!4573 = !DILocation(line: 399, column: 29, scope: !4496)
!4574 = !DILocation(line: 399, column: 36, scope: !4496)
!4575 = !DILocation(line: 399, column: 2, scope: !4496)
!4576 = !DILocation(line: 400, column: 32, scope: !4496)
!4577 = !DILocation(line: 400, column: 39, scope: !4496)
!4578 = !DILocation(line: 400, column: 2, scope: !4496)
!4579 = !DILocation(line: 401, column: 32, scope: !4496)
!4580 = !DILocation(line: 401, column: 39, scope: !4496)
!4581 = !DILocation(line: 401, column: 2, scope: !4496)
!4582 = !DILocation(line: 402, column: 30, scope: !4496)
!4583 = !DILocation(line: 402, column: 37, scope: !4496)
!4584 = !DILocation(line: 402, column: 2, scope: !4496)
!4585 = !DILocation(line: 403, column: 31, scope: !4496)
!4586 = !DILocation(line: 403, column: 38, scope: !4496)
!4587 = !DILocation(line: 403, column: 2, scope: !4496)
!4588 = !DILocation(line: 405, column: 22, scope: !4496)
!4589 = !DILocation(line: 405, column: 29, scope: !4496)
!4590 = !DILocation(line: 405, column: 2, scope: !4496)
!4591 = !DILocation(line: 406, column: 21, scope: !4496)
!4592 = !DILocation(line: 406, column: 28, scope: !4496)
!4593 = !DILocation(line: 406, column: 2, scope: !4496)
!4594 = !DILocation(line: 407, column: 21, scope: !4496)
!4595 = !DILocation(line: 407, column: 28, scope: !4496)
!4596 = !DILocation(line: 407, column: 2, scope: !4496)
!4597 = !DILocation(line: 409, column: 20, scope: !4496)
!4598 = !DILocation(line: 409, column: 27, scope: !4496)
!4599 = !DILocation(line: 409, column: 2, scope: !4496)
!4600 = !DILocation(line: 410, column: 22, scope: !4496)
!4601 = !DILocation(line: 410, column: 29, scope: !4496)
!4602 = !DILocation(line: 410, column: 2, scope: !4496)
!4603 = !DILocation(line: 411, column: 23, scope: !4496)
!4604 = !DILocation(line: 411, column: 30, scope: !4496)
!4605 = !DILocation(line: 411, column: 2, scope: !4496)
!4606 = !DILocation(line: 412, column: 24, scope: !4496)
!4607 = !DILocation(line: 412, column: 31, scope: !4496)
!4608 = !DILocation(line: 412, column: 2, scope: !4496)
!4609 = !DILocation(line: 414, column: 2, scope: !4496)
!4610 = !DILocation(line: 415, column: 1, scope: !4496)
!4611 = distinct !DISubprogram(name: "cypress_protocol_handler", scope: !3, file: !3, line: 600, type: !3962, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!4612 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4611, file: !3, line: 600, type: !169)
!4613 = !DILocation(line: 600, column: 63, scope: !4611)
!4614 = !DILocalVariable(name: "cytp", scope: !4611, file: !3, line: 602, type: !4072)
!4615 = !DILocation(line: 602, column: 20, scope: !4611)
!4616 = !DILocation(line: 602, column: 27, scope: !4611)
!4617 = !DILocation(line: 602, column: 36, scope: !4611)
!4618 = !DILocation(line: 604, column: 6, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 604, column: 6)
!4620 = !DILocation(line: 604, column: 15, scope: !4619)
!4621 = !DILocation(line: 604, column: 25, scope: !4619)
!4622 = !DILocation(line: 604, column: 31, scope: !4619)
!4623 = !DILocation(line: 604, column: 22, scope: !4619)
!4624 = !DILocation(line: 604, column: 6, scope: !4611)
!4625 = !DILocation(line: 605, column: 26, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4619, file: !3, line: 604, column: 41)
!4627 = !DILocation(line: 605, column: 3, scope: !4626)
!4628 = !DILocation(line: 606, column: 3, scope: !4626)
!4629 = !DILocation(line: 609, column: 31, scope: !4611)
!4630 = !DILocation(line: 609, column: 9, scope: !4611)
!4631 = !DILocation(line: 609, column: 2, scope: !4611)
!4632 = !DILocation(line: 610, column: 1, scope: !4611)
!4633 = distinct !DISubprogram(name: "cypress_set_rate", scope: !3, file: !3, line: 612, type: !3967, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!4634 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4633, file: !3, line: 612, type: !169)
!4635 = !DILocation(line: 612, column: 46, scope: !4633)
!4636 = !DILocalVariable(name: "rate", arg: 2, scope: !4633, file: !3, line: 612, type: !7)
!4637 = !DILocation(line: 612, column: 68, scope: !4633)
!4638 = !DILocalVariable(name: "cytp", scope: !4633, file: !3, line: 614, type: !4072)
!4639 = !DILocation(line: 614, column: 20, scope: !4633)
!4640 = !DILocation(line: 614, column: 27, scope: !4633)
!4641 = !DILocation(line: 614, column: 36, scope: !4633)
!4642 = !DILocation(line: 616, column: 6, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4633, file: !3, line: 616, column: 6)
!4644 = !DILocation(line: 616, column: 11, scope: !4643)
!4645 = !DILocation(line: 616, column: 6, scope: !4633)
!4646 = !DILocation(line: 617, column: 3, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4643, file: !3, line: 616, column: 18)
!4648 = !DILocation(line: 617, column: 12, scope: !4647)
!4649 = !DILocation(line: 617, column: 17, scope: !4647)
!4650 = !DILocation(line: 618, column: 3, scope: !4647)
!4651 = !DILocation(line: 618, column: 9, scope: !4647)
!4652 = !DILocation(line: 618, column: 14, scope: !4647)
!4653 = !DILocation(line: 619, column: 2, scope: !4647)
!4654 = !DILocation(line: 620, column: 3, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4643, file: !3, line: 619, column: 9)
!4656 = !DILocation(line: 620, column: 12, scope: !4655)
!4657 = !DILocation(line: 620, column: 17, scope: !4655)
!4658 = !DILocation(line: 621, column: 3, scope: !4655)
!4659 = !DILocation(line: 621, column: 9, scope: !4655)
!4660 = !DILocation(line: 621, column: 14, scope: !4655)
!4661 = !DILocation(line: 624, column: 15, scope: !4633)
!4662 = !DILocation(line: 624, column: 24, scope: !4633)
!4663 = !DILocation(line: 624, column: 50, scope: !4633)
!4664 = !DILocation(line: 624, column: 59, scope: !4633)
!4665 = !DILocation(line: 624, column: 32, scope: !4633)
!4666 = !DILocation(line: 624, column: 2, scope: !4633)
!4667 = !DILocation(line: 626, column: 1, scope: !4633)
!4668 = distinct !DISubprogram(name: "cypress_disconnect", scope: !3, file: !3, line: 628, type: !3978, scopeLine: 629, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!4669 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4668, file: !3, line: 628, type: !169)
!4670 = !DILocation(line: 628, column: 48, scope: !4668)
!4671 = !DILocation(line: 630, column: 16, scope: !4668)
!4672 = !DILocation(line: 630, column: 2, scope: !4668)
!4673 = !DILocation(line: 631, column: 8, scope: !4668)
!4674 = !DILocation(line: 631, column: 17, scope: !4668)
!4675 = !DILocation(line: 631, column: 2, scope: !4668)
!4676 = !DILocation(line: 632, column: 2, scope: !4668)
!4677 = !DILocation(line: 632, column: 11, scope: !4668)
!4678 = !DILocation(line: 632, column: 19, scope: !4668)
!4679 = !DILocation(line: 633, column: 1, scope: !4668)
!4680 = distinct !DISubprogram(name: "cypress_reconnect", scope: !3, file: !3, line: 635, type: !3937, scopeLine: 636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!4681 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4680, file: !3, line: 635, type: !169)
!4682 = !DILocation(line: 635, column: 46, scope: !4680)
!4683 = !DILocalVariable(name: "tries", scope: !4680, file: !3, line: 637, type: !145)
!4684 = !DILocation(line: 637, column: 6, scope: !4680)
!4685 = !DILocalVariable(name: "rc", scope: !4680, file: !3, line: 638, type: !145)
!4686 = !DILocation(line: 638, column: 6, scope: !4680)
!4687 = !DILocation(line: 640, column: 2, scope: !4680)
!4688 = !DILocation(line: 641, column: 17, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4680, file: !3, line: 640, column: 5)
!4690 = !DILocation(line: 641, column: 3, scope: !4689)
!4691 = !DILocation(line: 642, column: 23, scope: !4689)
!4692 = !DILocation(line: 642, column: 8, scope: !4689)
!4693 = !DILocation(line: 642, column: 6, scope: !4689)
!4694 = !DILocation(line: 643, column: 2, scope: !4689)
!4695 = !DILocation(line: 643, column: 11, scope: !4680)
!4696 = !DILocation(line: 643, column: 14, scope: !4680)
!4697 = !DILocation(line: 643, column: 18, scope: !4680)
!4698 = !DILocation(line: 643, column: 26, scope: !4680)
!4699 = !DILocation(line: 0, scope: !4680)
!4700 = distinct !{!4700, !4687, !4701}
!4701 = !DILocation(line: 643, column: 30, scope: !4680)
!4702 = !DILocation(line: 645, column: 6, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4680, file: !3, line: 645, column: 6)
!4704 = !DILocation(line: 645, column: 6, scope: !4680)
!4705 = !DILocation(line: 646, column: 3, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4703, file: !3, line: 645, column: 10)
!4707 = !DILocation(line: 647, column: 3, scope: !4706)
!4708 = !DILocation(line: 650, column: 32, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4680, file: !3, line: 650, column: 6)
!4710 = !DILocation(line: 650, column: 6, scope: !4709)
!4711 = !DILocation(line: 650, column: 6, scope: !4680)
!4712 = !DILocation(line: 651, column: 3, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 650, column: 42)
!4714 = !DILocation(line: 652, column: 3, scope: !4713)
!4715 = !DILocation(line: 655, column: 2, scope: !4680)
!4716 = !DILocation(line: 656, column: 1, scope: !4680)
!4717 = distinct !DISubprogram(name: "cypress_ps2_ext_cmd", scope: !3, file: !3, line: 60, type: !4718, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{!145, !169, !191, !150}
!4720 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4717, file: !3, line: 60, type: !169)
!4721 = !DILocation(line: 60, column: 48, scope: !4717)
!4722 = !DILocalVariable(name: "cmd", arg: 2, scope: !4717, file: !3, line: 60, type: !191)
!4723 = !DILocation(line: 60, column: 72, scope: !4717)
!4724 = !DILocalVariable(name: "data", arg: 3, scope: !4717, file: !3, line: 61, type: !150)
!4725 = !DILocation(line: 61, column: 25, scope: !4717)
!4726 = !DILocalVariable(name: "ps2dev", scope: !4717, file: !3, line: 63, type: !4727)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!4728 = !DILocation(line: 63, column: 17, scope: !4717)
!4729 = !DILocation(line: 63, column: 27, scope: !4717)
!4730 = !DILocation(line: 63, column: 36, scope: !4717)
!4731 = !DILocalVariable(name: "tries", scope: !4717, file: !3, line: 64, type: !145)
!4732 = !DILocation(line: 64, column: 6, scope: !4717)
!4733 = !DILocalVariable(name: "rc", scope: !4717, file: !3, line: 65, type: !145)
!4734 = !DILocation(line: 65, column: 6, scope: !4717)
!4735 = !DILocation(line: 67, column: 20, scope: !4717)
!4736 = !DILocation(line: 67, column: 2, scope: !4717)
!4737 = !DILocation(line: 69, column: 2, scope: !4717)
!4738 = !DILocation(line: 75, column: 29, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4717, file: !3, line: 69, column: 5)
!4740 = !DILocation(line: 75, column: 38, scope: !4739)
!4741 = !DILocation(line: 75, column: 42, scope: !4739)
!4742 = !DILocation(line: 75, column: 8, scope: !4739)
!4743 = !DILocation(line: 75, column: 6, scope: !4739)
!4744 = !DILocation(line: 76, column: 7, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 76, column: 7)
!4746 = !DILocation(line: 76, column: 10, scope: !4745)
!4747 = !DILocation(line: 76, column: 7, scope: !4739)
!4748 = !DILocation(line: 77, column: 30, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4745, file: !3, line: 76, column: 29)
!4750 = !DILocation(line: 77, column: 9, scope: !4749)
!4751 = !DILocation(line: 77, column: 7, scope: !4749)
!4752 = !DILocation(line: 78, column: 8, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4749, file: !3, line: 78, column: 8)
!4754 = !DILocation(line: 78, column: 11, scope: !4753)
!4755 = !DILocation(line: 78, column: 8, scope: !4749)
!4756 = !DILocation(line: 79, column: 31, scope: !4753)
!4757 = !DILocation(line: 79, column: 10, scope: !4753)
!4758 = !DILocation(line: 79, column: 8, scope: !4753)
!4759 = !DILocation(line: 79, column: 5, scope: !4753)
!4760 = !DILocation(line: 80, column: 3, scope: !4749)
!4761 = !DILocation(line: 81, column: 7, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 81, column: 7)
!4763 = !DILocation(line: 81, column: 10, scope: !4762)
!4764 = !DILocation(line: 81, column: 7, scope: !4739)
!4765 = !DILocation(line: 82, column: 4, scope: !4762)
!4766 = !DILocation(line: 84, column: 29, scope: !4739)
!4767 = !DILocation(line: 84, column: 38, scope: !4739)
!4768 = !DILocation(line: 84, column: 8, scope: !4739)
!4769 = !DILocation(line: 84, column: 6, scope: !4739)
!4770 = !DILocation(line: 85, column: 7, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 85, column: 7)
!4772 = !DILocation(line: 85, column: 10, scope: !4771)
!4773 = !DILocation(line: 85, column: 7, scope: !4739)
!4774 = !DILocation(line: 86, column: 30, scope: !4771)
!4775 = !DILocation(line: 86, column: 39, scope: !4771)
!4776 = !DILocation(line: 86, column: 9, scope: !4771)
!4777 = !DILocation(line: 86, column: 7, scope: !4771)
!4778 = !DILocation(line: 86, column: 4, scope: !4771)
!4779 = !DILocation(line: 87, column: 7, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 87, column: 7)
!4781 = !DILocation(line: 87, column: 10, scope: !4780)
!4782 = !DILocation(line: 87, column: 7, scope: !4739)
!4783 = !DILocation(line: 88, column: 4, scope: !4780)
!4784 = !DILocation(line: 90, column: 4, scope: !4780)
!4785 = !DILocation(line: 91, column: 11, scope: !4717)
!4786 = !DILocation(line: 91, column: 19, scope: !4717)
!4787 = !DILocation(line: 91, column: 2, scope: !4739)
!4788 = distinct !{!4788, !4737, !4789}
!4789 = !DILocation(line: 91, column: 22, scope: !4717)
!4790 = !DILocation(line: 93, column: 18, scope: !4717)
!4791 = !DILocation(line: 93, column: 2, scope: !4717)
!4792 = !DILocation(line: 95, column: 9, scope: !4717)
!4793 = !DILocation(line: 95, column: 2, scope: !4717)
!4794 = distinct !DISubprogram(name: "cypress_ps2_read_cmd_status", scope: !3, file: !3, line: 98, type: !4019, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!4795 = !DILocalVariable(name: "m", arg: 1, scope: !4796, file: !4797, line: 363, type: !2677)
!4796 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !4797, file: !4797, line: 363, type: !4798, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!4797 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!4798 = !DISubroutineType(types: !4799)
!4799 = !{!197, !2677}
!4800 = !DILocation(line: 363, column: 74, scope: !4796, inlinedAt: !4801)
!4801 = distinct !DILocation(line: 120, column: 2, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4803, file: !3, line: 120, column: 2)
!4803 = distinct !DILexicalBlock(scope: !4804, file: !3, line: 120, column: 2)
!4804 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 120, column: 2)
!4805 = !DILocation(line: 363, column: 74, scope: !4796, inlinedAt: !4806)
!4806 = distinct !DILocation(line: 120, column: 2, scope: !4804)
!4807 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4794, file: !3, line: 98, type: !169)
!4808 = !DILocation(line: 98, column: 56, scope: !4794)
!4809 = !DILocalVariable(name: "cmd", arg: 2, scope: !4794, file: !3, line: 99, type: !150)
!4810 = !DILocation(line: 99, column: 26, scope: !4794)
!4811 = !DILocalVariable(name: "param", arg: 3, scope: !4794, file: !3, line: 100, type: !149)
!4812 = !DILocation(line: 100, column: 27, scope: !4794)
!4813 = !DILocalVariable(name: "rc", scope: !4794, file: !3, line: 102, type: !145)
!4814 = !DILocation(line: 102, column: 6, scope: !4794)
!4815 = !DILocalVariable(name: "ps2dev", scope: !4794, file: !3, line: 103, type: !4727)
!4816 = !DILocation(line: 103, column: 17, scope: !4794)
!4817 = !DILocation(line: 103, column: 27, scope: !4794)
!4818 = !DILocation(line: 103, column: 36, scope: !4794)
!4819 = !DILocalVariable(name: "old_state", scope: !4794, file: !3, line: 104, type: !113)
!4820 = !DILocation(line: 104, column: 21, scope: !4794)
!4821 = !DILocalVariable(name: "pktsize", scope: !4794, file: !3, line: 105, type: !145)
!4822 = !DILocation(line: 105, column: 6, scope: !4794)
!4823 = !DILocation(line: 107, column: 20, scope: !4794)
!4824 = !DILocation(line: 107, column: 2, scope: !4794)
!4825 = !DILocation(line: 109, column: 14, scope: !4794)
!4826 = !DILocation(line: 109, column: 23, scope: !4794)
!4827 = !DILocation(line: 109, column: 12, scope: !4794)
!4828 = !DILocation(line: 110, column: 2, scope: !4794)
!4829 = !DILocation(line: 110, column: 11, scope: !4794)
!4830 = !DILocation(line: 110, column: 17, scope: !4794)
!4831 = !DILocation(line: 111, column: 2, scope: !4794)
!4832 = !DILocation(line: 111, column: 11, scope: !4794)
!4833 = !DILocation(line: 111, column: 18, scope: !4794)
!4834 = !DILocation(line: 113, column: 13, scope: !4794)
!4835 = !DILocation(line: 113, column: 17, scope: !4794)
!4836 = !DILocation(line: 113, column: 12, scope: !4794)
!4837 = !DILocation(line: 113, column: 10, scope: !4794)
!4838 = !DILocation(line: 114, column: 9, scope: !4794)
!4839 = !DILocation(line: 114, column: 19, scope: !4794)
!4840 = !DILocation(line: 114, column: 2, scope: !4794)
!4841 = !DILocation(line: 116, column: 28, scope: !4794)
!4842 = !DILocation(line: 116, column: 7, scope: !4794)
!4843 = !DILocation(line: 116, column: 5, scope: !4794)
!4844 = !DILocation(line: 117, column: 6, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 117, column: 6)
!4846 = !DILocation(line: 117, column: 9, scope: !4845)
!4847 = !DILocation(line: 117, column: 6, scope: !4794)
!4848 = !DILocation(line: 118, column: 3, scope: !4845)
!4849 = !DILocalVariable(name: "__ret", scope: !4804, file: !3, line: 120, type: !146)
!4850 = !DILocation(line: 120, column: 2, scope: !4804)
!4851 = !DILocation(line: 365, column: 27, scope: !4852, inlinedAt: !4806)
!4852 = distinct !DILexicalBlock(scope: !4796, file: !4797, line: 365, column: 6)
!4853 = !DILocation(line: 365, column: 6, scope: !4852, inlinedAt: !4806)
!4854 = !DILocation(line: 365, column: 6, scope: !4796, inlinedAt: !4806)
!4855 = !DILocation(line: 366, column: 12, scope: !4856, inlinedAt: !4806)
!4856 = distinct !DILexicalBlock(scope: !4857, file: !4797, line: 366, column: 7)
!4857 = distinct !DILexicalBlock(scope: !4852, file: !4797, line: 365, column: 31)
!4858 = !DILocation(line: 366, column: 14, scope: !4856, inlinedAt: !4806)
!4859 = !DILocation(line: 366, column: 7, scope: !4857, inlinedAt: !4806)
!4860 = !DILocation(line: 367, column: 4, scope: !4856, inlinedAt: !4806)
!4861 = !DILocation(line: 368, column: 28, scope: !4857, inlinedAt: !4806)
!4862 = !DILocation(line: 368, column: 10, scope: !4857, inlinedAt: !4806)
!4863 = !DILocation(line: 368, column: 3, scope: !4857, inlinedAt: !4806)
!4864 = !DILocation(line: 370, column: 29, scope: !4865, inlinedAt: !4806)
!4865 = distinct !DILexicalBlock(scope: !4852, file: !4797, line: 369, column: 9)
!4866 = !DILocation(line: 370, column: 10, scope: !4865, inlinedAt: !4806)
!4867 = !DILocation(line: 370, column: 3, scope: !4865, inlinedAt: !4806)
!4868 = !DILocation(line: 372, column: 1, scope: !4796, inlinedAt: !4806)
!4869 = !DILocation(line: 120, column: 2, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4804, file: !3, line: 120, column: 2)
!4871 = !DILocation(line: 120, column: 2, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4870, file: !3, line: 120, column: 2)
!4873 = !DILocalVariable(name: "__cond", scope: !4874, file: !3, line: 120, type: !513)
!4874 = distinct !DILexicalBlock(scope: !4803, file: !3, line: 120, column: 2)
!4875 = !DILocation(line: 120, column: 2, scope: !4874)
!4876 = !DILocation(line: 120, column: 2, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4874, file: !3, line: 120, column: 2)
!4878 = !DILocation(line: 120, column: 2, scope: !4803)
!4879 = !DILocalVariable(name: "__wq_entry", scope: !4802, file: !3, line: 120, type: !4880)
!4880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1410, line: 29, size: 320, elements: !4881)
!4881 = !{!4882, !4883, !4884, !4890}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4880, file: !1410, line: 30, baseType: !7, size: 32)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4880, file: !1410, line: 31, baseType: !144, size: 64, offset: 64)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4880, file: !1410, line: 32, baseType: !4885, size: 64, offset: 128)
!4885 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1410, line: 16, baseType: !4886)
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4887, size: 64)
!4887 = !DISubroutineType(types: !4888)
!4888 = !{!145, !4889, !7, !145, !144}
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4880, file: !1410, line: 33, baseType: !368, size: 128, offset: 192)
!4891 = !DILocation(line: 120, column: 2, scope: !4802)
!4892 = !DILocalVariable(name: "__ret", scope: !4802, file: !3, line: 120, type: !146)
!4893 = !DILocation(line: 365, column: 27, scope: !4852, inlinedAt: !4801)
!4894 = !DILocation(line: 365, column: 6, scope: !4852, inlinedAt: !4801)
!4895 = !DILocation(line: 365, column: 6, scope: !4796, inlinedAt: !4801)
!4896 = !DILocation(line: 366, column: 12, scope: !4856, inlinedAt: !4801)
!4897 = !DILocation(line: 366, column: 14, scope: !4856, inlinedAt: !4801)
!4898 = !DILocation(line: 366, column: 7, scope: !4857, inlinedAt: !4801)
!4899 = !DILocation(line: 367, column: 4, scope: !4856, inlinedAt: !4801)
!4900 = !DILocation(line: 368, column: 28, scope: !4857, inlinedAt: !4801)
!4901 = !DILocation(line: 368, column: 10, scope: !4857, inlinedAt: !4801)
!4902 = !DILocation(line: 368, column: 3, scope: !4857, inlinedAt: !4801)
!4903 = !DILocation(line: 370, column: 29, scope: !4865, inlinedAt: !4801)
!4904 = !DILocation(line: 370, column: 10, scope: !4865, inlinedAt: !4801)
!4905 = !DILocation(line: 370, column: 3, scope: !4865, inlinedAt: !4801)
!4906 = !DILocation(line: 372, column: 1, scope: !4796, inlinedAt: !4801)
!4907 = !DILocalVariable(name: "__int", scope: !4908, file: !3, line: 120, type: !146)
!4908 = distinct !DILexicalBlock(scope: !4909, file: !3, line: 120, column: 2)
!4909 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 120, column: 2)
!4910 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 120, column: 2)
!4911 = !DILocation(line: 120, column: 2, scope: !4908)
!4912 = !DILocalVariable(name: "__cond", scope: !4913, file: !3, line: 120, type: !513)
!4913 = distinct !DILexicalBlock(scope: !4914, file: !3, line: 120, column: 2)
!4914 = distinct !DILexicalBlock(scope: !4908, file: !3, line: 120, column: 2)
!4915 = !DILocation(line: 120, column: 2, scope: !4913)
!4916 = !DILocation(line: 120, column: 2, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4913, file: !3, line: 120, column: 2)
!4918 = !DILocation(line: 120, column: 2, scope: !4914)
!4919 = !DILocation(line: 120, column: 2, scope: !4909)
!4920 = distinct !{!4920, !4921, !4921}
!4921 = !DILocation(line: 120, column: 2, scope: !4910)
!4922 = !DILabel(scope: !4802, name: "__out", file: !3, line: 120)
!4923 = !DILocation(line: 124, column: 9, scope: !4794)
!4924 = !DILocation(line: 124, column: 16, scope: !4794)
!4925 = !DILocation(line: 124, column: 25, scope: !4794)
!4926 = !DILocation(line: 124, column: 2, scope: !4794)
!4927 = !DILocation(line: 124, column: 33, scope: !4794)
!4928 = !DILocation(line: 126, column: 2, scope: !4794)
!4929 = !DILabel(scope: !4794, name: "out", file: !3, line: 129)
!4930 = !DILocation(line: 129, column: 1, scope: !4794)
!4931 = !DILocation(line: 130, column: 19, scope: !4794)
!4932 = !DILocation(line: 130, column: 2, scope: !4794)
!4933 = !DILocation(line: 130, column: 11, scope: !4794)
!4934 = !DILocation(line: 130, column: 17, scope: !4794)
!4935 = !DILocation(line: 131, column: 2, scope: !4794)
!4936 = !DILocation(line: 131, column: 11, scope: !4794)
!4937 = !DILocation(line: 131, column: 18, scope: !4794)
!4938 = !DILocation(line: 133, column: 18, scope: !4794)
!4939 = !DILocation(line: 133, column: 2, scope: !4794)
!4940 = !DILocation(line: 135, column: 9, scope: !4794)
!4941 = !DILocation(line: 135, column: 2, scope: !4794)
!4942 = distinct !DISubprogram(name: "cypress_verify_cmd_state", scope: !3, file: !3, line: 138, type: !4943, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!513, !169, !150, !149}
!4945 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4942, file: !3, line: 138, type: !169)
!4946 = !DILocation(line: 138, column: 54, scope: !4942)
!4947 = !DILocalVariable(name: "cmd", arg: 2, scope: !4942, file: !3, line: 139, type: !150)
!4948 = !DILocation(line: 139, column: 24, scope: !4942)
!4949 = !DILocalVariable(name: "param", arg: 3, scope: !4942, file: !3, line: 139, type: !149)
!4950 = !DILocation(line: 139, column: 44, scope: !4942)
!4951 = !DILocalVariable(name: "rate_match", scope: !4942, file: !3, line: 141, type: !513)
!4952 = !DILocation(line: 141, column: 7, scope: !4942)
!4953 = !DILocalVariable(name: "resolution_match", scope: !4942, file: !3, line: 142, type: !513)
!4954 = !DILocation(line: 142, column: 7, scope: !4942)
!4955 = !DILocalVariable(name: "i", scope: !4942, file: !3, line: 143, type: !145)
!4956 = !DILocation(line: 143, column: 6, scope: !4942)
!4957 = !DILocation(line: 146, column: 6, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4942, file: !3, line: 146, column: 6)
!4959 = !DILocation(line: 146, column: 10, scope: !4958)
!4960 = !DILocation(line: 146, column: 38, scope: !4958)
!4961 = !DILocation(line: 147, column: 6, scope: !4958)
!4962 = !DILocation(line: 147, column: 10, scope: !4958)
!4963 = !DILocation(line: 147, column: 36, scope: !4958)
!4964 = !DILocation(line: 148, column: 6, scope: !4958)
!4965 = !DILocation(line: 148, column: 10, scope: !4958)
!4966 = !DILocation(line: 146, column: 6, scope: !4942)
!4967 = !DILocation(line: 149, column: 3, scope: !4958)
!4968 = !DILocation(line: 151, column: 8, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4942, file: !3, line: 151, column: 6)
!4970 = !DILocation(line: 151, column: 7, scope: !4969)
!4971 = !DILocation(line: 151, column: 17, scope: !4969)
!4972 = !DILocation(line: 151, column: 41, scope: !4969)
!4973 = !DILocation(line: 151, column: 65, scope: !4969)
!4974 = !DILocation(line: 152, column: 7, scope: !4969)
!4975 = !DILocation(line: 152, column: 16, scope: !4969)
!4976 = !DILocation(line: 152, column: 38, scope: !4969)
!4977 = !DILocation(line: 151, column: 6, scope: !4942)
!4978 = !DILocation(line: 153, column: 10, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4980, file: !3, line: 153, column: 3)
!4980 = distinct !DILexicalBlock(scope: !4969, file: !3, line: 152, column: 64)
!4981 = !DILocation(line: 153, column: 8, scope: !4979)
!4982 = !DILocation(line: 153, column: 15, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4979, file: !3, line: 153, column: 3)
!4984 = !DILocation(line: 153, column: 17, scope: !4983)
!4985 = !DILocation(line: 153, column: 3, scope: !4979)
!4986 = !DILocation(line: 154, column: 24, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4983, file: !3, line: 154, column: 8)
!4988 = !DILocation(line: 154, column: 8, scope: !4987)
!4989 = !DILocation(line: 154, column: 30, scope: !4987)
!4990 = !DILocation(line: 154, column: 27, scope: !4987)
!4991 = !DILocation(line: 154, column: 8, scope: !4983)
!4992 = !DILocation(line: 155, column: 22, scope: !4987)
!4993 = !DILocation(line: 155, column: 5, scope: !4987)
!4994 = !DILocation(line: 154, column: 37, scope: !4987)
!4995 = !DILocation(line: 153, column: 45, scope: !4983)
!4996 = !DILocation(line: 153, column: 3, scope: !4983)
!4997 = distinct !{!4997, !4985, !4998}
!4998 = !DILocation(line: 155, column: 24, scope: !4979)
!4999 = !DILocation(line: 157, column: 10, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4980, file: !3, line: 157, column: 3)
!5001 = !DILocation(line: 157, column: 8, scope: !5000)
!5002 = !DILocation(line: 157, column: 15, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 157, column: 3)
!5004 = !DILocation(line: 157, column: 17, scope: !5003)
!5005 = !DILocation(line: 157, column: 3, scope: !5000)
!5006 = !DILocation(line: 158, column: 18, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !5003, file: !3, line: 158, column: 8)
!5008 = !DILocation(line: 158, column: 8, scope: !5007)
!5009 = !DILocation(line: 158, column: 24, scope: !5007)
!5010 = !DILocation(line: 158, column: 21, scope: !5007)
!5011 = !DILocation(line: 158, column: 8, scope: !5003)
!5012 = !DILocation(line: 159, column: 16, scope: !5007)
!5013 = !DILocation(line: 159, column: 5, scope: !5007)
!5014 = !DILocation(line: 158, column: 31, scope: !5007)
!5015 = !DILocation(line: 157, column: 39, scope: !5003)
!5016 = !DILocation(line: 157, column: 3, scope: !5003)
!5017 = distinct !{!5017, !5005, !5018}
!5018 = !DILocation(line: 159, column: 18, scope: !5000)
!5019 = !DILocation(line: 161, column: 7, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !4980, file: !3, line: 161, column: 7)
!5021 = !DILocation(line: 161, column: 24, scope: !5020)
!5022 = !DILocation(line: 161, column: 27, scope: !5020)
!5023 = !DILocation(line: 161, column: 7, scope: !4980)
!5024 = !DILocation(line: 162, column: 4, scope: !5020)
!5025 = !DILocation(line: 163, column: 2, scope: !4980)
!5026 = !DILocation(line: 166, column: 2, scope: !4942)
!5027 = !DILocation(line: 167, column: 1, scope: !4942)
!5028 = distinct !DISubprogram(name: "cypress_ps2_sendbyte", scope: !3, file: !3, line: 38, type: !5029, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!5029 = !DISubroutineType(types: !5030)
!5030 = !{!145, !169, !145}
!5031 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5028, file: !3, line: 38, type: !169)
!5032 = !DILocation(line: 38, column: 49, scope: !5028)
!5033 = !DILocalVariable(name: "value", arg: 2, scope: !5028, file: !3, line: 38, type: !145)
!5034 = !DILocation(line: 38, column: 62, scope: !5028)
!5035 = !DILocalVariable(name: "ps2dev", scope: !5028, file: !3, line: 40, type: !4727)
!5036 = !DILocation(line: 40, column: 17, scope: !5028)
!5037 = !DILocation(line: 40, column: 27, scope: !5028)
!5038 = !DILocation(line: 40, column: 36, scope: !5028)
!5039 = !DILocation(line: 42, column: 19, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 42, column: 6)
!5041 = !DILocation(line: 42, column: 27, scope: !5040)
!5042 = !DILocation(line: 42, column: 33, scope: !5040)
!5043 = !DILocation(line: 42, column: 6, scope: !5040)
!5044 = !DILocation(line: 42, column: 59, scope: !5040)
!5045 = !DILocation(line: 42, column: 6, scope: !5028)
!5046 = !DILocation(line: 46, column: 7, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5048, file: !3, line: 46, column: 7)
!5048 = distinct !DILexicalBlock(scope: !5040, file: !3, line: 42, column: 64)
!5049 = !DILocation(line: 46, column: 15, scope: !5047)
!5050 = !DILocation(line: 46, column: 19, scope: !5047)
!5051 = !DILocation(line: 46, column: 7, scope: !5048)
!5052 = !DILocation(line: 47, column: 4, scope: !5047)
!5053 = !DILocation(line: 49, column: 4, scope: !5047)
!5054 = !DILocation(line: 57, column: 2, scope: !5028)
!5055 = !DILocation(line: 58, column: 1, scope: !5028)
!5056 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !4797, file: !4797, line: 308, type: !4798, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!5057 = !DILocalVariable(name: "m", arg: 1, scope: !5056, file: !4797, line: 308, type: !2677)
!5058 = !DILocation(line: 308, column: 66, scope: !5056)
!5059 = !DILocation(line: 310, column: 10, scope: !5056)
!5060 = !DILocation(line: 310, column: 12, scope: !5056)
!5061 = !DILocation(line: 310, column: 34, scope: !5056)
!5062 = !DILocation(line: 310, column: 39, scope: !5056)
!5063 = !DILocation(line: 310, column: 2, scope: !5056)
!5064 = distinct !DISubprogram(name: "get_order", scope: !5065, file: !5065, line: 29, type: !5066, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!5065 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5066 = !DISubroutineType(types: !5067)
!5067 = !{!145, !197}
!5068 = !DILocalVariable(name: "x", arg: 1, scope: !5069, file: !5070, line: 366, type: !444)
!5069 = distinct !DISubprogram(name: "fls64", scope: !5070, file: !5070, line: 366, type: !5071, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!5070 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5071 = !DISubroutineType(types: !5072)
!5072 = !{!145, !444}
!5073 = !DILocation(line: 366, column: 40, scope: !5069, inlinedAt: !5074)
!5074 = distinct !DILocation(line: 46, column: 9, scope: !5064)
!5075 = !DILocalVariable(name: "bitpos", scope: !5069, file: !5070, line: 368, type: !145)
!5076 = !DILocation(line: 368, column: 6, scope: !5069, inlinedAt: !5074)
!5077 = !DILocalVariable(name: "size", arg: 1, scope: !5064, file: !5065, line: 29, type: !197)
!5078 = !DILocation(line: 29, column: 63, scope: !5064)
!5079 = !DILocation(line: 31, column: 27, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5064, file: !5065, line: 31, column: 6)
!5081 = !DILocation(line: 31, column: 6, scope: !5080)
!5082 = !DILocation(line: 31, column: 6, scope: !5064)
!5083 = !DILocation(line: 32, column: 8, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5085, file: !5065, line: 32, column: 7)
!5085 = distinct !DILexicalBlock(scope: !5080, file: !5065, line: 31, column: 34)
!5086 = !DILocation(line: 32, column: 7, scope: !5085)
!5087 = !DILocation(line: 33, column: 4, scope: !5084)
!5088 = !DILocation(line: 35, column: 7, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5085, file: !5065, line: 35, column: 7)
!5090 = !DILocation(line: 35, column: 12, scope: !5089)
!5091 = !DILocation(line: 35, column: 7, scope: !5085)
!5092 = !DILocation(line: 36, column: 4, scope: !5089)
!5093 = !DILocation(line: 38, column: 10, scope: !5085)
!5094 = !DILocation(line: 38, column: 28, scope: !5085)
!5095 = !DILocation(line: 38, column: 41, scope: !5085)
!5096 = !DILocation(line: 38, column: 3, scope: !5085)
!5097 = !DILocation(line: 41, column: 6, scope: !5064)
!5098 = !DILocation(line: 42, column: 7, scope: !5064)
!5099 = !DILocation(line: 46, column: 15, scope: !5064)
!5100 = !DILocation(line: 374, column: 2, scope: !5069, inlinedAt: !5074)
!5101 = !DILocation(line: 376, column: 14, scope: !5069, inlinedAt: !5074)
!5102 = !{i32 315477}
!5103 = !DILocation(line: 377, column: 9, scope: !5069, inlinedAt: !5074)
!5104 = !DILocation(line: 377, column: 16, scope: !5069, inlinedAt: !5074)
!5105 = !DILocation(line: 46, column: 2, scope: !5064)
!5106 = !DILocation(line: 48, column: 1, scope: !5064)
!5107 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5108, file: !5108, line: 30, type: !5109, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!5108 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5109 = !DISubroutineType(types: !5110)
!5110 = !{!145, !443}
!5111 = !DILocation(line: 366, column: 40, scope: !5069, inlinedAt: !5112)
!5112 = distinct !DILocation(line: 32, column: 9, scope: !5107)
!5113 = !DILocation(line: 368, column: 6, scope: !5069, inlinedAt: !5112)
!5114 = !DILocalVariable(name: "n", arg: 1, scope: !5107, file: !5108, line: 30, type: !443)
!5115 = !DILocation(line: 30, column: 21, scope: !5107)
!5116 = !DILocation(line: 32, column: 15, scope: !5107)
!5117 = !DILocation(line: 374, column: 2, scope: !5069, inlinedAt: !5112)
!5118 = !DILocation(line: 376, column: 14, scope: !5069, inlinedAt: !5112)
!5119 = !DILocation(line: 377, column: 9, scope: !5069, inlinedAt: !5112)
!5120 = !DILocation(line: 377, column: 16, scope: !5069, inlinedAt: !5112)
!5121 = !DILocation(line: 32, column: 18, scope: !5107)
!5122 = !DILocation(line: 32, column: 2, scope: !5107)
!5123 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2044, file: !2044, line: 137, type: !5124, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!5124 = !DISubroutineType(types: !5125)
!5125 = !{!144, !958, !3312, !602, !142}
!5126 = !DILocalVariable(name: "s", arg: 1, scope: !5123, file: !2044, line: 137, type: !958)
!5127 = !DILocation(line: 137, column: 54, scope: !5123)
!5128 = !DILocalVariable(name: "object", arg: 2, scope: !5123, file: !2044, line: 137, type: !3312)
!5129 = !DILocation(line: 137, column: 69, scope: !5123)
!5130 = !DILocalVariable(name: "size", arg: 3, scope: !5123, file: !2044, line: 138, type: !602)
!5131 = !DILocation(line: 138, column: 12, scope: !5123)
!5132 = !DILocalVariable(name: "flags", arg: 4, scope: !5123, file: !2044, line: 138, type: !142)
!5133 = !DILocation(line: 138, column: 24, scope: !5123)
!5134 = !DILocation(line: 140, column: 17, scope: !5123)
!5135 = !DILocation(line: 140, column: 2, scope: !5123)
!5136 = distinct !DISubprogram(name: "cypress_read_fw_version", scope: !3, file: !3, line: 220, type: !3937, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!5137 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5136, file: !3, line: 220, type: !169)
!5138 = !DILocation(line: 220, column: 52, scope: !5136)
!5139 = !DILocalVariable(name: "cytp", scope: !5136, file: !3, line: 222, type: !4072)
!5140 = !DILocation(line: 222, column: 20, scope: !5136)
!5141 = !DILocation(line: 222, column: 27, scope: !5136)
!5142 = !DILocation(line: 222, column: 36, scope: !5136)
!5143 = !DILocalVariable(name: "param", scope: !5136, file: !3, line: 223, type: !3989)
!5144 = !DILocation(line: 223, column: 16, scope: !5136)
!5145 = !DILocation(line: 225, column: 27, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 225, column: 6)
!5147 = !DILocation(line: 225, column: 62, scope: !5146)
!5148 = !DILocation(line: 225, column: 6, scope: !5146)
!5149 = !DILocation(line: 225, column: 6, scope: !5136)
!5150 = !DILocation(line: 226, column: 3, scope: !5146)
!5151 = !DILocation(line: 229, column: 6, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 229, column: 6)
!5153 = !DILocation(line: 229, column: 15, scope: !5152)
!5154 = !DILocation(line: 229, column: 23, scope: !5152)
!5155 = !DILocation(line: 229, column: 26, scope: !5152)
!5156 = !DILocation(line: 229, column: 35, scope: !5152)
!5157 = !DILocation(line: 229, column: 6, scope: !5136)
!5158 = !DILocation(line: 230, column: 3, scope: !5152)
!5159 = !DILocation(line: 232, column: 21, scope: !5136)
!5160 = !DILocation(line: 232, column: 30, scope: !5136)
!5161 = !DILocation(line: 232, column: 2, scope: !5136)
!5162 = !DILocation(line: 232, column: 8, scope: !5136)
!5163 = !DILocation(line: 232, column: 19, scope: !5136)
!5164 = !DILocation(line: 233, column: 32, scope: !5136)
!5165 = !DILocation(line: 233, column: 41, scope: !5136)
!5166 = !DILocation(line: 233, column: 31, scope: !5136)
!5167 = !DILocation(line: 233, column: 2, scope: !5136)
!5168 = !DILocation(line: 233, column: 8, scope: !5136)
!5169 = !DILocation(line: 233, column: 29, scope: !5136)
!5170 = !DILocation(line: 239, column: 6, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 239, column: 6)
!5172 = !DILocation(line: 239, column: 12, scope: !5171)
!5173 = !DILocation(line: 239, column: 23, scope: !5171)
!5174 = !DILocation(line: 239, column: 6, scope: !5136)
!5175 = !DILocation(line: 240, column: 3, scope: !5171)
!5176 = !DILocation(line: 240, column: 9, scope: !5171)
!5177 = !DILocation(line: 240, column: 30, scope: !5171)
!5178 = !DILocation(line: 246, column: 2, scope: !5136)
!5179 = !DILocation(line: 247, column: 1, scope: !5136)
!5180 = distinct !DISubprogram(name: "cypress_read_tp_metrics", scope: !3, file: !3, line: 249, type: !3937, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!5181 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5180, file: !3, line: 249, type: !169)
!5182 = !DILocation(line: 249, column: 52, scope: !5180)
!5183 = !DILocalVariable(name: "cytp", scope: !5180, file: !3, line: 251, type: !4072)
!5184 = !DILocation(line: 251, column: 20, scope: !5180)
!5185 = !DILocation(line: 251, column: 27, scope: !5180)
!5186 = !DILocation(line: 251, column: 36, scope: !5180)
!5187 = !DILocalVariable(name: "param", scope: !5180, file: !3, line: 252, type: !3940)
!5188 = !DILocation(line: 252, column: 16, scope: !5180)
!5189 = !DILocation(line: 255, column: 2, scope: !5180)
!5190 = !DILocation(line: 255, column: 8, scope: !5180)
!5191 = !DILocation(line: 255, column: 17, scope: !5180)
!5192 = !DILocation(line: 256, column: 2, scope: !5180)
!5193 = !DILocation(line: 256, column: 8, scope: !5180)
!5194 = !DILocation(line: 256, column: 16, scope: !5180)
!5195 = !DILocation(line: 257, column: 2, scope: !5180)
!5196 = !DILocation(line: 257, column: 8, scope: !5180)
!5197 = !DILocation(line: 257, column: 21, scope: !5180)
!5198 = !DILocation(line: 258, column: 2, scope: !5180)
!5199 = !DILocation(line: 258, column: 8, scope: !5180)
!5200 = !DILocation(line: 258, column: 21, scope: !5180)
!5201 = !DILocation(line: 259, column: 2, scope: !5180)
!5202 = !DILocation(line: 259, column: 8, scope: !5180)
!5203 = !DILocation(line: 259, column: 24, scope: !5180)
!5204 = !DILocation(line: 260, column: 2, scope: !5180)
!5205 = !DILocation(line: 260, column: 8, scope: !5180)
!5206 = !DILocation(line: 260, column: 24, scope: !5180)
!5207 = !DILocation(line: 261, column: 19, scope: !5180)
!5208 = !DILocation(line: 261, column: 25, scope: !5180)
!5209 = !DILocation(line: 261, column: 40, scope: !5180)
!5210 = !DILocation(line: 261, column: 46, scope: !5180)
!5211 = !DILocation(line: 261, column: 38, scope: !5180)
!5212 = !DILocation(line: 261, column: 2, scope: !5180)
!5213 = !DILocation(line: 261, column: 8, scope: !5180)
!5214 = !DILocation(line: 261, column: 17, scope: !5180)
!5215 = !DILocation(line: 262, column: 19, scope: !5180)
!5216 = !DILocation(line: 262, column: 25, scope: !5180)
!5217 = !DILocation(line: 262, column: 40, scope: !5180)
!5218 = !DILocation(line: 262, column: 46, scope: !5180)
!5219 = !DILocation(line: 262, column: 38, scope: !5180)
!5220 = !DILocation(line: 262, column: 2, scope: !5180)
!5221 = !DILocation(line: 262, column: 8, scope: !5180)
!5222 = !DILocation(line: 262, column: 17, scope: !5180)
!5223 = !DILocation(line: 264, column: 7, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 264, column: 6)
!5225 = !DILocation(line: 264, column: 13, scope: !5224)
!5226 = !DILocation(line: 264, column: 6, scope: !5180)
!5227 = !DILocation(line: 265, column: 3, scope: !5224)
!5228 = !DILocation(line: 267, column: 2, scope: !5180)
!5229 = !DILocation(line: 268, column: 27, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 268, column: 6)
!5231 = !DILocation(line: 268, column: 62, scope: !5230)
!5232 = !DILocation(line: 268, column: 6, scope: !5230)
!5233 = !DILocation(line: 268, column: 69, scope: !5230)
!5234 = !DILocation(line: 268, column: 6, scope: !5180)
!5235 = !DILocation(line: 270, column: 25, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5230, file: !3, line: 268, column: 75)
!5237 = !DILocation(line: 270, column: 34, scope: !5236)
!5238 = !DILocation(line: 270, column: 42, scope: !5236)
!5239 = !DILocation(line: 270, column: 40, scope: !5236)
!5240 = !DILocation(line: 270, column: 3, scope: !5236)
!5241 = !DILocation(line: 270, column: 9, scope: !5236)
!5242 = !DILocation(line: 270, column: 22, scope: !5236)
!5243 = !DILocation(line: 271, column: 25, scope: !5236)
!5244 = !DILocation(line: 271, column: 34, scope: !5236)
!5245 = !DILocation(line: 271, column: 42, scope: !5236)
!5246 = !DILocation(line: 271, column: 40, scope: !5236)
!5247 = !DILocation(line: 271, column: 3, scope: !5236)
!5248 = !DILocation(line: 271, column: 9, scope: !5236)
!5249 = !DILocation(line: 271, column: 22, scope: !5236)
!5250 = !DILocation(line: 272, column: 27, scope: !5236)
!5251 = !DILocation(line: 272, column: 3, scope: !5236)
!5252 = !DILocation(line: 272, column: 9, scope: !5236)
!5253 = !DILocation(line: 272, column: 25, scope: !5236)
!5254 = !DILocation(line: 273, column: 27, scope: !5236)
!5255 = !DILocation(line: 273, column: 3, scope: !5236)
!5256 = !DILocation(line: 273, column: 9, scope: !5236)
!5257 = !DILocation(line: 273, column: 25, scope: !5236)
!5258 = !DILocation(line: 274, column: 2, scope: !5236)
!5259 = !DILocation(line: 276, column: 7, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 276, column: 6)
!5261 = !DILocation(line: 276, column: 13, scope: !5260)
!5262 = !DILocation(line: 276, column: 29, scope: !5260)
!5263 = !DILocation(line: 277, column: 6, scope: !5260)
!5264 = !DILocation(line: 277, column: 12, scope: !5260)
!5265 = !DILocation(line: 277, column: 30, scope: !5260)
!5266 = !DILocation(line: 277, column: 36, scope: !5260)
!5267 = !DILocation(line: 277, column: 28, scope: !5260)
!5268 = !DILocation(line: 277, column: 52, scope: !5260)
!5269 = !DILocation(line: 278, column: 7, scope: !5260)
!5270 = !DILocation(line: 278, column: 13, scope: !5260)
!5271 = !DILocation(line: 278, column: 22, scope: !5260)
!5272 = !DILocation(line: 278, column: 26, scope: !5260)
!5273 = !DILocation(line: 278, column: 32, scope: !5260)
!5274 = !DILocation(line: 278, column: 40, scope: !5260)
!5275 = !DILocation(line: 279, column: 7, scope: !5260)
!5276 = !DILocation(line: 279, column: 13, scope: !5260)
!5277 = !DILocation(line: 279, column: 26, scope: !5260)
!5278 = !DILocation(line: 280, column: 6, scope: !5260)
!5279 = !DILocation(line: 280, column: 12, scope: !5260)
!5280 = !DILocation(line: 280, column: 27, scope: !5260)
!5281 = !DILocation(line: 280, column: 33, scope: !5260)
!5282 = !DILocation(line: 280, column: 25, scope: !5260)
!5283 = !DILocation(line: 280, column: 42, scope: !5260)
!5284 = !DILocation(line: 281, column: 7, scope: !5260)
!5285 = !DILocation(line: 281, column: 13, scope: !5260)
!5286 = !DILocation(line: 281, column: 26, scope: !5260)
!5287 = !DILocation(line: 282, column: 6, scope: !5260)
!5288 = !DILocation(line: 282, column: 12, scope: !5260)
!5289 = !DILocation(line: 282, column: 27, scope: !5260)
!5290 = !DILocation(line: 282, column: 33, scope: !5260)
!5291 = !DILocation(line: 282, column: 25, scope: !5260)
!5292 = !DILocation(line: 276, column: 6, scope: !5180)
!5293 = !DILocation(line: 283, column: 3, scope: !5260)
!5294 = !DILocation(line: 285, column: 19, scope: !5180)
!5295 = !DILocation(line: 285, column: 25, scope: !5180)
!5296 = !DILocation(line: 285, column: 40, scope: !5180)
!5297 = !DILocation(line: 285, column: 46, scope: !5180)
!5298 = !DILocation(line: 285, column: 38, scope: !5180)
!5299 = !DILocation(line: 285, column: 2, scope: !5180)
!5300 = !DILocation(line: 285, column: 8, scope: !5180)
!5301 = !DILocation(line: 285, column: 17, scope: !5180)
!5302 = !DILocation(line: 286, column: 19, scope: !5180)
!5303 = !DILocation(line: 286, column: 25, scope: !5180)
!5304 = !DILocation(line: 286, column: 40, scope: !5180)
!5305 = !DILocation(line: 286, column: 46, scope: !5180)
!5306 = !DILocation(line: 286, column: 38, scope: !5180)
!5307 = !DILocation(line: 286, column: 2, scope: !5180)
!5308 = !DILocation(line: 286, column: 8, scope: !5180)
!5309 = !DILocation(line: 286, column: 17, scope: !5180)
!5310 = !DILocation(line: 319, column: 2, scope: !5180)
!5311 = !DILocation(line: 320, column: 1, scope: !5180)
!5312 = distinct !DISubprogram(name: "cypress_set_packet_size", scope: !3, file: !3, line: 29, type: !3967, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!5313 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5312, file: !3, line: 29, type: !169)
!5314 = !DILocation(line: 29, column: 53, scope: !5312)
!5315 = !DILocalVariable(name: "n", arg: 2, scope: !5312, file: !3, line: 29, type: !7)
!5316 = !DILocation(line: 29, column: 75, scope: !5312)
!5317 = !DILocalVariable(name: "cytp", scope: !5312, file: !3, line: 31, type: !4072)
!5318 = !DILocation(line: 31, column: 20, scope: !5312)
!5319 = !DILocation(line: 31, column: 27, scope: !5312)
!5320 = !DILocation(line: 31, column: 36, scope: !5312)
!5321 = !DILocation(line: 32, column: 19, scope: !5312)
!5322 = !DILocation(line: 32, column: 2, scope: !5312)
!5323 = !DILocation(line: 32, column: 8, scope: !5312)
!5324 = !DILocation(line: 32, column: 17, scope: !5312)
!5325 = !DILocation(line: 33, column: 1, scope: !5312)
!5326 = distinct !DISubprogram(name: "__set_bit", scope: !5327, file: !5327, line: 25, type: !5328, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!5327 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5328 = !DISubroutineType(types: !5329)
!5329 = !{null, !146, !5330}
!5330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5331, size: 64)
!5331 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !197)
!5332 = !DILocalVariable(name: "nr", arg: 1, scope: !5333, file: !5070, line: 66, type: !146)
!5333 = distinct !DISubprogram(name: "arch___set_bit", scope: !5070, file: !5070, line: 66, type: !5328, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!5334 = !DILocation(line: 66, column: 21, scope: !5333, inlinedAt: !5335)
!5335 = distinct !DILocation(line: 28, column: 2, scope: !5326)
!5336 = !DILocalVariable(name: "addr", arg: 2, scope: !5333, file: !5070, line: 66, type: !5330)
!5337 = !DILocation(line: 66, column: 49, scope: !5333, inlinedAt: !5335)
!5338 = !DILocalVariable(name: "v", arg: 1, scope: !5339, file: !5340, line: 39, type: !5343)
!5339 = distinct !DISubprogram(name: "instrument_write", scope: !5340, file: !5340, line: 39, type: !5341, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!5340 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5341 = !DISubroutineType(types: !5342)
!5342 = !{null, !5343, !602}
!5343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5344, size: 64)
!5344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5345)
!5345 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5346 = !DILocation(line: 39, column: 67, scope: !5339, inlinedAt: !5347)
!5347 = distinct !DILocation(line: 27, column: 2, scope: !5326)
!5348 = !DILocalVariable(name: "size", arg: 2, scope: !5339, file: !5340, line: 39, type: !602)
!5349 = !DILocation(line: 39, column: 77, scope: !5339, inlinedAt: !5347)
!5350 = !DILocalVariable(name: "nr", arg: 1, scope: !5326, file: !5327, line: 25, type: !146)
!5351 = !DILocation(line: 25, column: 35, scope: !5326)
!5352 = !DILocalVariable(name: "addr", arg: 2, scope: !5326, file: !5327, line: 25, type: !5330)
!5353 = !DILocation(line: 25, column: 63, scope: !5326)
!5354 = !DILocation(line: 27, column: 19, scope: !5326)
!5355 = !DILocation(line: 27, column: 26, scope: !5326)
!5356 = !DILocation(line: 27, column: 24, scope: !5326)
!5357 = !DILocation(line: 41, column: 20, scope: !5339, inlinedAt: !5347)
!5358 = !DILocation(line: 41, column: 23, scope: !5339, inlinedAt: !5347)
!5359 = !DILocation(line: 41, column: 2, scope: !5339, inlinedAt: !5347)
!5360 = !DILocation(line: 42, column: 2, scope: !5339, inlinedAt: !5347)
!5361 = !DILocation(line: 28, column: 17, scope: !5326)
!5362 = !DILocation(line: 28, column: 21, scope: !5326)
!5363 = !DILocation(line: 68, column: 44, scope: !5333, inlinedAt: !5335)
!5364 = !DILocation(line: 68, column: 56, scope: !5333, inlinedAt: !5335)
!5365 = !DILocation(line: 68, column: 2, scope: !5333, inlinedAt: !5335)
!5366 = !{i32 -2147136108}
!5367 = !DILocation(line: 29, column: 1, scope: !5326)
!5368 = distinct !DISubprogram(name: "input_abs_set_res", scope: !176, file: !176, line: 491, type: !5369, scopeLine: 491, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!5369 = !DISubroutineType(types: !5370)
!5370 = !{null, !174, !7, !145}
!5371 = !DILocalVariable(name: "dev", arg: 1, scope: !5368, file: !176, line: 491, type: !174)
!5372 = !DILocation(line: 491, column: 1, scope: !5368)
!5373 = !DILocalVariable(name: "axis", arg: 2, scope: !5368, file: !176, line: 491, type: !7)
!5374 = !DILocalVariable(name: "val", arg: 3, scope: !5368, file: !176, line: 491, type: !145)
!5375 = !DILocation(line: 491, column: 1, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5368, file: !176, line: 491, column: 1)
!5377 = distinct !DISubprogram(name: "__clear_bit", scope: !5327, file: !5327, line: 40, type: !5328, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!5378 = !DILocalVariable(name: "nr", arg: 1, scope: !5379, file: !5070, line: 92, type: !146)
!5379 = distinct !DISubprogram(name: "arch___clear_bit", scope: !5070, file: !5070, line: 92, type: !5328, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!5380 = !DILocation(line: 92, column: 23, scope: !5379, inlinedAt: !5381)
!5381 = distinct !DILocation(line: 43, column: 2, scope: !5377)
!5382 = !DILocalVariable(name: "addr", arg: 2, scope: !5379, file: !5070, line: 92, type: !5330)
!5383 = !DILocation(line: 92, column: 51, scope: !5379, inlinedAt: !5381)
!5384 = !DILocation(line: 39, column: 67, scope: !5339, inlinedAt: !5385)
!5385 = distinct !DILocation(line: 42, column: 2, scope: !5377)
!5386 = !DILocation(line: 39, column: 77, scope: !5339, inlinedAt: !5385)
!5387 = !DILocalVariable(name: "nr", arg: 1, scope: !5377, file: !5327, line: 40, type: !146)
!5388 = !DILocation(line: 40, column: 37, scope: !5377)
!5389 = !DILocalVariable(name: "addr", arg: 2, scope: !5377, file: !5327, line: 40, type: !5330)
!5390 = !DILocation(line: 40, column: 65, scope: !5377)
!5391 = !DILocation(line: 42, column: 19, scope: !5377)
!5392 = !DILocation(line: 42, column: 26, scope: !5377)
!5393 = !DILocation(line: 42, column: 24, scope: !5377)
!5394 = !DILocation(line: 41, column: 20, scope: !5339, inlinedAt: !5385)
!5395 = !DILocation(line: 41, column: 23, scope: !5339, inlinedAt: !5385)
!5396 = !DILocation(line: 41, column: 2, scope: !5339, inlinedAt: !5385)
!5397 = !DILocation(line: 42, column: 2, scope: !5339, inlinedAt: !5385)
!5398 = !DILocation(line: 43, column: 19, scope: !5377)
!5399 = !DILocation(line: 43, column: 23, scope: !5377)
!5400 = !DILocation(line: 94, column: 44, scope: !5379, inlinedAt: !5381)
!5401 = !DILocation(line: 94, column: 56, scope: !5379, inlinedAt: !5381)
!5402 = !DILocation(line: 94, column: 2, scope: !5379, inlinedAt: !5381)
!5403 = !{i32 -2147134909}
!5404 = !DILocation(line: 44, column: 1, scope: !5377)
!5405 = distinct !DISubprogram(name: "kasan_check_write", scope: !5406, file: !5406, line: 38, type: !5407, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!5406 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5407 = !DISubroutineType(types: !5408)
!5408 = !{!513, !5343, !7}
!5409 = !DILocalVariable(name: "p", arg: 1, scope: !5405, file: !5406, line: 38, type: !5343)
!5410 = !DILocation(line: 38, column: 59, scope: !5405)
!5411 = !DILocalVariable(name: "size", arg: 2, scope: !5405, file: !5406, line: 38, type: !7)
!5412 = !DILocation(line: 38, column: 75, scope: !5405)
!5413 = !DILocation(line: 40, column: 2, scope: !5405)
!5414 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5415, file: !5415, line: 178, type: !5416, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!5415 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5416 = !DISubroutineType(types: !5417)
!5417 = !{null, !5343, !602, !145}
!5418 = !DILocalVariable(name: "ptr", arg: 1, scope: !5414, file: !5415, line: 178, type: !5343)
!5419 = !DILocation(line: 178, column: 60, scope: !5414)
!5420 = !DILocalVariable(name: "size", arg: 2, scope: !5414, file: !5415, line: 178, type: !602)
!5421 = !DILocation(line: 178, column: 72, scope: !5414)
!5422 = !DILocalVariable(name: "type", arg: 3, scope: !5414, file: !5415, line: 179, type: !145)
!5423 = !DILocation(line: 179, column: 15, scope: !5414)
!5424 = !DILocation(line: 179, column: 23, scope: !5414)
!5425 = distinct !DISubprogram(name: "cypress_process_packet", scope: !3, file: !3, line: 513, type: !5426, scopeLine: 514, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!5426 = !DISubroutineType(types: !5427)
!5427 = !{null, !169, !513}
!5428 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5425, file: !3, line: 513, type: !169)
!5429 = !DILocation(line: 513, column: 52, scope: !5425)
!5430 = !DILocalVariable(name: "zero_pkt", arg: 2, scope: !5425, file: !3, line: 513, type: !513)
!5431 = !DILocation(line: 513, column: 66, scope: !5425)
!5432 = !DILocalVariable(name: "i", scope: !5425, file: !3, line: 515, type: !145)
!5433 = !DILocation(line: 515, column: 6, scope: !5425)
!5434 = !DILocalVariable(name: "input", scope: !5425, file: !3, line: 516, type: !174)
!5435 = !DILocation(line: 516, column: 20, scope: !5425)
!5436 = !DILocation(line: 516, column: 28, scope: !5425)
!5437 = !DILocation(line: 516, column: 37, scope: !5425)
!5438 = !DILocalVariable(name: "cytp", scope: !5425, file: !3, line: 517, type: !4072)
!5439 = !DILocation(line: 517, column: 20, scope: !5425)
!5440 = !DILocation(line: 517, column: 27, scope: !5425)
!5441 = !DILocation(line: 517, column: 36, scope: !5425)
!5442 = !DILocalVariable(name: "report_data", scope: !5425, file: !3, line: 518, type: !5443)
!5443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cytp_report_data", file: !4074, line: 143, size: 256, elements: !5444)
!5444 = !{!5445, !5446, !5453, !5454, !5455, !5456}
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "contact_cnt", scope: !5443, file: !4074, line: 144, baseType: !145, size: 32)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "contacts", scope: !5443, file: !4074, line: 145, baseType: !5447, size: 192, offset: 32)
!5447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5448, size: 192, elements: !212)
!5448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cytp_contact", file: !4074, line: 136, size: 96, elements: !5449)
!5449 = !{!5450, !5451, !5452}
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5448, file: !4074, line: 137, baseType: !145, size: 32)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !5448, file: !4074, line: 138, baseType: !145, size: 32, offset: 32)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !5448, file: !4074, line: 139, baseType: !145, size: 32, offset: 64)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !5443, file: !4074, line: 146, baseType: !7, size: 1, offset: 224, flags: DIFlagBitField, extraData: i64 224)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !5443, file: !4074, line: 147, baseType: !7, size: 1, offset: 225, flags: DIFlagBitField, extraData: i64 224)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "middle", scope: !5443, file: !4074, line: 148, baseType: !7, size: 1, offset: 226, flags: DIFlagBitField, extraData: i64 224)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "tap", scope: !5443, file: !4074, line: 149, baseType: !7, size: 1, offset: 227, flags: DIFlagBitField, extraData: i64 224)
!5457 = !DILocation(line: 518, column: 26, scope: !5425)
!5458 = !DILocalVariable(name: "contact", scope: !5425, file: !3, line: 519, type: !5459)
!5459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5448, size: 64)
!5460 = !DILocation(line: 519, column: 23, scope: !5425)
!5461 = !DILocalVariable(name: "pos", scope: !5425, file: !3, line: 520, type: !5462)
!5462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5463, size: 64, elements: !212)
!5463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt_pos", file: !3048, line: 119, size: 32, elements: !5464)
!5464 = !{!5465, !5466}
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5463, file: !3048, line: 120, baseType: !1138, size: 16)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !5463, file: !3048, line: 120, baseType: !1138, size: 16, offset: 16)
!5467 = !DILocation(line: 520, column: 22, scope: !5425)
!5468 = !DILocalVariable(name: "slots", scope: !5425, file: !3, line: 521, type: !3044)
!5469 = !DILocation(line: 521, column: 6, scope: !5425)
!5470 = !DILocalVariable(name: "n", scope: !5425, file: !3, line: 522, type: !145)
!5471 = !DILocation(line: 522, column: 6, scope: !5425)
!5472 = !DILocation(line: 524, column: 23, scope: !5425)
!5473 = !DILocation(line: 524, column: 32, scope: !5425)
!5474 = !DILocation(line: 524, column: 2, scope: !5425)
!5475 = !DILocation(line: 526, column: 18, scope: !5425)
!5476 = !DILocation(line: 526, column: 4, scope: !5425)
!5477 = !DILocation(line: 527, column: 6, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5425, file: !3, line: 527, column: 6)
!5479 = !DILocation(line: 527, column: 8, scope: !5478)
!5480 = !DILocation(line: 527, column: 6, scope: !5425)
!5481 = !DILocation(line: 528, column: 5, scope: !5478)
!5482 = !DILocation(line: 528, column: 3, scope: !5478)
!5483 = !DILocation(line: 530, column: 9, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5425, file: !3, line: 530, column: 2)
!5485 = !DILocation(line: 530, column: 7, scope: !5484)
!5486 = !DILocation(line: 530, column: 14, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5484, file: !3, line: 530, column: 2)
!5488 = !DILocation(line: 530, column: 18, scope: !5487)
!5489 = !DILocation(line: 530, column: 16, scope: !5487)
!5490 = !DILocation(line: 530, column: 2, scope: !5484)
!5491 = !DILocation(line: 531, column: 26, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5487, file: !3, line: 530, column: 26)
!5493 = !DILocation(line: 531, column: 35, scope: !5492)
!5494 = !DILocation(line: 531, column: 14, scope: !5492)
!5495 = !DILocation(line: 531, column: 11, scope: !5492)
!5496 = !DILocation(line: 532, column: 14, scope: !5492)
!5497 = !DILocation(line: 532, column: 23, scope: !5492)
!5498 = !DILocation(line: 532, column: 7, scope: !5492)
!5499 = !DILocation(line: 532, column: 3, scope: !5492)
!5500 = !DILocation(line: 532, column: 10, scope: !5492)
!5501 = !DILocation(line: 532, column: 12, scope: !5492)
!5502 = !DILocation(line: 533, column: 14, scope: !5492)
!5503 = !DILocation(line: 533, column: 23, scope: !5492)
!5504 = !DILocation(line: 533, column: 7, scope: !5492)
!5505 = !DILocation(line: 533, column: 3, scope: !5492)
!5506 = !DILocation(line: 533, column: 10, scope: !5492)
!5507 = !DILocation(line: 533, column: 12, scope: !5492)
!5508 = !DILocation(line: 534, column: 2, scope: !5492)
!5509 = !DILocation(line: 530, column: 22, scope: !5487)
!5510 = !DILocation(line: 530, column: 2, scope: !5487)
!5511 = distinct !{!5511, !5490, !5512}
!5512 = !DILocation(line: 534, column: 2, scope: !5484)
!5513 = !DILocation(line: 536, column: 24, scope: !5425)
!5514 = !DILocation(line: 536, column: 31, scope: !5425)
!5515 = !DILocation(line: 536, column: 38, scope: !5425)
!5516 = !DILocation(line: 536, column: 43, scope: !5425)
!5517 = !DILocation(line: 536, column: 2, scope: !5425)
!5518 = !DILocation(line: 538, column: 9, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5425, file: !3, line: 538, column: 2)
!5520 = !DILocation(line: 538, column: 7, scope: !5519)
!5521 = !DILocation(line: 538, column: 14, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 538, column: 2)
!5523 = !DILocation(line: 538, column: 18, scope: !5522)
!5524 = !DILocation(line: 538, column: 16, scope: !5522)
!5525 = !DILocation(line: 538, column: 2, scope: !5519)
!5526 = !DILocation(line: 539, column: 26, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5522, file: !3, line: 538, column: 26)
!5528 = !DILocation(line: 539, column: 35, scope: !5527)
!5529 = !DILocation(line: 539, column: 14, scope: !5527)
!5530 = !DILocation(line: 539, column: 11, scope: !5527)
!5531 = !DILocation(line: 540, column: 17, scope: !5527)
!5532 = !DILocation(line: 540, column: 30, scope: !5527)
!5533 = !DILocation(line: 540, column: 24, scope: !5527)
!5534 = !DILocation(line: 540, column: 3, scope: !5527)
!5535 = !DILocation(line: 541, column: 30, scope: !5527)
!5536 = !DILocation(line: 541, column: 3, scope: !5527)
!5537 = !DILocation(line: 542, column: 20, scope: !5527)
!5538 = !DILocation(line: 542, column: 46, scope: !5527)
!5539 = !DILocation(line: 542, column: 55, scope: !5527)
!5540 = !DILocation(line: 542, column: 3, scope: !5527)
!5541 = !DILocation(line: 543, column: 20, scope: !5527)
!5542 = !DILocation(line: 543, column: 46, scope: !5527)
!5543 = !DILocation(line: 543, column: 55, scope: !5527)
!5544 = !DILocation(line: 543, column: 3, scope: !5527)
!5545 = !DILocation(line: 544, column: 20, scope: !5527)
!5546 = !DILocation(line: 544, column: 44, scope: !5527)
!5547 = !DILocation(line: 544, column: 53, scope: !5527)
!5548 = !DILocation(line: 544, column: 3, scope: !5527)
!5549 = !DILocation(line: 545, column: 2, scope: !5527)
!5550 = !DILocation(line: 538, column: 22, scope: !5522)
!5551 = !DILocation(line: 538, column: 2, scope: !5522)
!5552 = distinct !{!5552, !5525, !5553}
!5553 = !DILocation(line: 545, column: 2, scope: !5519)
!5554 = !DILocation(line: 547, column: 22, scope: !5425)
!5555 = !DILocation(line: 547, column: 2, scope: !5425)
!5556 = !DILocation(line: 549, column: 31, scope: !5425)
!5557 = !DILocation(line: 549, column: 50, scope: !5425)
!5558 = !DILocation(line: 549, column: 2, scope: !5425)
!5559 = !DILocation(line: 551, column: 19, scope: !5425)
!5560 = !DILocation(line: 551, column: 48, scope: !5425)
!5561 = !DILocation(line: 551, column: 2, scope: !5425)
!5562 = !DILocation(line: 552, column: 19, scope: !5425)
!5563 = !DILocation(line: 552, column: 49, scope: !5425)
!5564 = !DILocation(line: 552, column: 2, scope: !5425)
!5565 = !DILocation(line: 553, column: 19, scope: !5425)
!5566 = !DILocation(line: 553, column: 50, scope: !5425)
!5567 = !DILocation(line: 553, column: 2, scope: !5425)
!5568 = !DILocation(line: 555, column: 13, scope: !5425)
!5569 = !DILocation(line: 555, column: 2, scope: !5425)
!5570 = !DILocation(line: 556, column: 1, scope: !5425)
!5571 = distinct !DISubprogram(name: "cypress_validate_byte", scope: !3, file: !3, line: 558, type: !3962, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!5572 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5571, file: !3, line: 558, type: !169)
!5573 = !DILocation(line: 558, column: 60, scope: !5571)
!5574 = !DILocalVariable(name: "contact_cnt", scope: !5571, file: !3, line: 560, type: !145)
!5575 = !DILocation(line: 560, column: 6, scope: !5571)
!5576 = !DILocalVariable(name: "index", scope: !5571, file: !3, line: 561, type: !145)
!5577 = !DILocation(line: 561, column: 6, scope: !5571)
!5578 = !DILocation(line: 561, column: 14, scope: !5571)
!5579 = !DILocation(line: 561, column: 23, scope: !5571)
!5580 = !DILocation(line: 561, column: 30, scope: !5571)
!5581 = !DILocalVariable(name: "packet", scope: !5571, file: !3, line: 562, type: !149)
!5582 = !DILocation(line: 562, column: 17, scope: !5571)
!5583 = !DILocation(line: 562, column: 26, scope: !5571)
!5584 = !DILocation(line: 562, column: 35, scope: !5571)
!5585 = !DILocalVariable(name: "cytp", scope: !5571, file: !3, line: 563, type: !4072)
!5586 = !DILocation(line: 563, column: 20, scope: !5571)
!5587 = !DILocation(line: 563, column: 27, scope: !5571)
!5588 = !DILocation(line: 563, column: 36, scope: !5571)
!5589 = !DILocation(line: 565, column: 6, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5571, file: !3, line: 565, column: 6)
!5591 = !DILocation(line: 565, column: 12, scope: !5590)
!5592 = !DILocation(line: 565, column: 16, scope: !5590)
!5593 = !DILocation(line: 565, column: 19, scope: !5590)
!5594 = !DILocation(line: 565, column: 27, scope: !5590)
!5595 = !DILocation(line: 565, column: 33, scope: !5590)
!5596 = !DILocation(line: 565, column: 25, scope: !5590)
!5597 = !DILocation(line: 565, column: 6, scope: !5571)
!5598 = !DILocation(line: 566, column: 3, scope: !5590)
!5599 = !DILocation(line: 568, column: 6, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !5571, file: !3, line: 568, column: 6)
!5601 = !DILocation(line: 568, column: 12, scope: !5600)
!5602 = !DILocation(line: 568, column: 17, scope: !5600)
!5603 = !DILocation(line: 568, column: 21, scope: !5600)
!5604 = !DILocation(line: 568, column: 31, scope: !5600)
!5605 = !DILocation(line: 568, column: 39, scope: !5600)
!5606 = !DILocation(line: 568, column: 6, scope: !5571)
!5607 = !DILocation(line: 570, column: 26, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5600, file: !3, line: 568, column: 45)
!5609 = !DILocation(line: 570, column: 3, scope: !5608)
!5610 = !DILocation(line: 571, column: 3, scope: !5608)
!5611 = !DILocation(line: 578, column: 6, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5571, file: !3, line: 578, column: 6)
!5613 = !DILocation(line: 578, column: 12, scope: !5612)
!5614 = !DILocation(line: 578, column: 6, scope: !5571)
!5615 = !DILocation(line: 579, column: 3, scope: !5612)
!5616 = !DILocation(line: 585, column: 7, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5571, file: !3, line: 585, column: 6)
!5618 = !DILocation(line: 585, column: 13, scope: !5617)
!5619 = !DILocation(line: 585, column: 18, scope: !5617)
!5620 = !DILocation(line: 585, column: 43, scope: !5617)
!5621 = !DILocation(line: 585, column: 6, scope: !5571)
!5622 = !DILocation(line: 586, column: 3, scope: !5617)
!5623 = !DILocation(line: 588, column: 7, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5571, file: !3, line: 588, column: 6)
!5625 = !DILocation(line: 588, column: 17, scope: !5624)
!5626 = !DILocation(line: 588, column: 25, scope: !5624)
!5627 = !DILocation(line: 588, column: 6, scope: !5571)
!5628 = !DILocation(line: 589, column: 3, scope: !5624)
!5629 = !DILocation(line: 591, column: 41, scope: !5571)
!5630 = !DILocation(line: 591, column: 16, scope: !5571)
!5631 = !DILocation(line: 591, column: 14, scope: !5571)
!5632 = !DILocation(line: 592, column: 6, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5571, file: !3, line: 592, column: 6)
!5634 = !DILocation(line: 592, column: 12, scope: !5633)
!5635 = !DILocation(line: 592, column: 17, scope: !5633)
!5636 = !DILocation(line: 592, column: 6, scope: !5571)
!5637 = !DILocation(line: 593, column: 27, scope: !5633)
!5638 = !DILocation(line: 593, column: 36, scope: !5633)
!5639 = !DILocation(line: 593, column: 48, scope: !5633)
!5640 = !DILocation(line: 593, column: 3, scope: !5633)
!5641 = !DILocation(line: 595, column: 27, scope: !5633)
!5642 = !DILocation(line: 595, column: 36, scope: !5633)
!5643 = !DILocation(line: 595, column: 48, scope: !5633)
!5644 = !DILocation(line: 595, column: 3, scope: !5633)
!5645 = !DILocation(line: 597, column: 2, scope: !5571)
!5646 = !DILocation(line: 598, column: 1, scope: !5571)
!5647 = distinct !DISubprogram(name: "cypress_parse_packet", scope: !3, file: !3, line: 443, type: !5648, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!5648 = !DISubroutineType(types: !5649)
!5649 = !{!145, !169, !4072, !5650}
!5650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5443, size: 64)
!5651 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5647, file: !3, line: 443, type: !169)
!5652 = !DILocation(line: 443, column: 49, scope: !5647)
!5653 = !DILocalVariable(name: "cytp", arg: 2, scope: !5647, file: !3, line: 444, type: !4072)
!5654 = !DILocation(line: 444, column: 23, scope: !5647)
!5655 = !DILocalVariable(name: "report_data", arg: 3, scope: !5647, file: !3, line: 444, type: !5650)
!5656 = !DILocation(line: 444, column: 54, scope: !5647)
!5657 = !DILocalVariable(name: "packet", scope: !5647, file: !3, line: 446, type: !149)
!5658 = !DILocation(line: 446, column: 17, scope: !5647)
!5659 = !DILocation(line: 446, column: 26, scope: !5647)
!5660 = !DILocation(line: 446, column: 35, scope: !5647)
!5661 = !DILocalVariable(name: "header_byte", scope: !5647, file: !3, line: 447, type: !150)
!5662 = !DILocation(line: 447, column: 16, scope: !5647)
!5663 = !DILocation(line: 447, column: 30, scope: !5647)
!5664 = !DILocation(line: 449, column: 9, scope: !5647)
!5665 = !DILocation(line: 449, column: 2, scope: !5647)
!5666 = !DILocation(line: 451, column: 54, scope: !5647)
!5667 = !DILocation(line: 451, column: 29, scope: !5647)
!5668 = !DILocation(line: 451, column: 2, scope: !5647)
!5669 = !DILocation(line: 451, column: 15, scope: !5647)
!5670 = !DILocation(line: 451, column: 27, scope: !5647)
!5671 = !DILocation(line: 452, column: 22, scope: !5647)
!5672 = !DILocation(line: 452, column: 34, scope: !5647)
!5673 = !DILocation(line: 452, column: 21, scope: !5647)
!5674 = !DILocation(line: 452, column: 2, scope: !5647)
!5675 = !DILocation(line: 452, column: 15, scope: !5647)
!5676 = !DILocation(line: 452, column: 19, scope: !5647)
!5677 = !DILocation(line: 454, column: 6, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5647, file: !3, line: 454, column: 6)
!5679 = !DILocation(line: 454, column: 19, scope: !5678)
!5680 = !DILocation(line: 454, column: 31, scope: !5678)
!5681 = !DILocation(line: 454, column: 6, scope: !5647)
!5682 = !DILocation(line: 456, column: 6, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5678, file: !3, line: 454, column: 37)
!5684 = !DILocation(line: 456, column: 16, scope: !5683)
!5685 = !DILocation(line: 456, column: 24, scope: !5683)
!5686 = !DILocation(line: 456, column: 32, scope: !5683)
!5687 = !DILocation(line: 456, column: 30, scope: !5683)
!5688 = !DILocation(line: 455, column: 3, scope: !5683)
!5689 = !DILocation(line: 455, column: 16, scope: !5683)
!5690 = !DILocation(line: 455, column: 28, scope: !5683)
!5691 = !DILocation(line: 455, column: 30, scope: !5683)
!5692 = !DILocation(line: 458, column: 6, scope: !5683)
!5693 = !DILocation(line: 458, column: 16, scope: !5683)
!5694 = !DILocation(line: 458, column: 24, scope: !5683)
!5695 = !DILocation(line: 458, column: 32, scope: !5683)
!5696 = !DILocation(line: 458, column: 30, scope: !5683)
!5697 = !DILocation(line: 457, column: 3, scope: !5683)
!5698 = !DILocation(line: 457, column: 16, scope: !5683)
!5699 = !DILocation(line: 457, column: 28, scope: !5683)
!5700 = !DILocation(line: 457, column: 30, scope: !5683)
!5701 = !DILocation(line: 459, column: 7, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5683, file: !3, line: 459, column: 7)
!5703 = !DILocation(line: 459, column: 13, scope: !5702)
!5704 = !DILocation(line: 459, column: 18, scope: !5702)
!5705 = !DILocation(line: 459, column: 7, scope: !5683)
!5706 = !DILocation(line: 460, column: 33, scope: !5702)
!5707 = !DILocation(line: 460, column: 4, scope: !5702)
!5708 = !DILocation(line: 460, column: 17, scope: !5702)
!5709 = !DILocation(line: 460, column: 29, scope: !5702)
!5710 = !DILocation(line: 460, column: 31, scope: !5702)
!5711 = !DILocation(line: 462, column: 2, scope: !5683)
!5712 = !DILocation(line: 462, column: 13, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5678, file: !3, line: 462, column: 13)
!5714 = !DILocation(line: 462, column: 26, scope: !5713)
!5715 = !DILocation(line: 462, column: 38, scope: !5713)
!5716 = !DILocation(line: 462, column: 13, scope: !5678)
!5717 = !DILocation(line: 464, column: 6, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !5713, file: !3, line: 462, column: 44)
!5719 = !DILocation(line: 464, column: 16, scope: !5718)
!5720 = !DILocation(line: 464, column: 24, scope: !5718)
!5721 = !DILocation(line: 464, column: 32, scope: !5718)
!5722 = !DILocation(line: 464, column: 30, scope: !5718)
!5723 = !DILocation(line: 463, column: 3, scope: !5718)
!5724 = !DILocation(line: 463, column: 16, scope: !5718)
!5725 = !DILocation(line: 463, column: 28, scope: !5718)
!5726 = !DILocation(line: 463, column: 30, scope: !5718)
!5727 = !DILocation(line: 466, column: 6, scope: !5718)
!5728 = !DILocation(line: 466, column: 16, scope: !5718)
!5729 = !DILocation(line: 466, column: 24, scope: !5718)
!5730 = !DILocation(line: 466, column: 32, scope: !5718)
!5731 = !DILocation(line: 466, column: 30, scope: !5718)
!5732 = !DILocation(line: 465, column: 3, scope: !5718)
!5733 = !DILocation(line: 465, column: 16, scope: !5718)
!5734 = !DILocation(line: 465, column: 28, scope: !5718)
!5735 = !DILocation(line: 465, column: 30, scope: !5718)
!5736 = !DILocation(line: 467, column: 7, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5718, file: !3, line: 467, column: 7)
!5738 = !DILocation(line: 467, column: 13, scope: !5737)
!5739 = !DILocation(line: 467, column: 18, scope: !5737)
!5740 = !DILocation(line: 467, column: 7, scope: !5718)
!5741 = !DILocation(line: 468, column: 33, scope: !5737)
!5742 = !DILocation(line: 468, column: 4, scope: !5737)
!5743 = !DILocation(line: 468, column: 17, scope: !5737)
!5744 = !DILocation(line: 468, column: 29, scope: !5737)
!5745 = !DILocation(line: 468, column: 31, scope: !5737)
!5746 = !DILocation(line: 471, column: 6, scope: !5718)
!5747 = !DILocation(line: 471, column: 16, scope: !5718)
!5748 = !DILocation(line: 471, column: 24, scope: !5718)
!5749 = !DILocation(line: 471, column: 32, scope: !5718)
!5750 = !DILocation(line: 471, column: 30, scope: !5718)
!5751 = !DILocation(line: 470, column: 3, scope: !5718)
!5752 = !DILocation(line: 470, column: 16, scope: !5718)
!5753 = !DILocation(line: 470, column: 28, scope: !5718)
!5754 = !DILocation(line: 470, column: 30, scope: !5718)
!5755 = !DILocation(line: 473, column: 6, scope: !5718)
!5756 = !DILocation(line: 473, column: 16, scope: !5718)
!5757 = !DILocation(line: 473, column: 24, scope: !5718)
!5758 = !DILocation(line: 473, column: 32, scope: !5718)
!5759 = !DILocation(line: 473, column: 30, scope: !5718)
!5760 = !DILocation(line: 472, column: 3, scope: !5718)
!5761 = !DILocation(line: 472, column: 16, scope: !5718)
!5762 = !DILocation(line: 472, column: 28, scope: !5718)
!5763 = !DILocation(line: 472, column: 30, scope: !5718)
!5764 = !DILocation(line: 474, column: 7, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !5718, file: !3, line: 474, column: 7)
!5766 = !DILocation(line: 474, column: 13, scope: !5765)
!5767 = !DILocation(line: 474, column: 18, scope: !5765)
!5768 = !DILocation(line: 474, column: 7, scope: !5718)
!5769 = !DILocation(line: 475, column: 33, scope: !5765)
!5770 = !DILocation(line: 475, column: 46, scope: !5765)
!5771 = !DILocation(line: 475, column: 58, scope: !5765)
!5772 = !DILocation(line: 475, column: 4, scope: !5765)
!5773 = !DILocation(line: 475, column: 17, scope: !5765)
!5774 = !DILocation(line: 475, column: 29, scope: !5765)
!5775 = !DILocation(line: 475, column: 31, scope: !5765)
!5776 = !DILocation(line: 476, column: 2, scope: !5718)
!5777 = !DILocation(line: 478, column: 23, scope: !5647)
!5778 = !DILocation(line: 478, column: 35, scope: !5647)
!5779 = !DILocation(line: 478, column: 22, scope: !5647)
!5780 = !DILocation(line: 478, column: 2, scope: !5647)
!5781 = !DILocation(line: 478, column: 15, scope: !5647)
!5782 = !DILocation(line: 478, column: 20, scope: !5647)
!5783 = !DILocation(line: 479, column: 24, scope: !5647)
!5784 = !DILocation(line: 479, column: 36, scope: !5647)
!5785 = !DILocation(line: 479, column: 23, scope: !5647)
!5786 = !DILocation(line: 479, column: 2, scope: !5647)
!5787 = !DILocation(line: 479, column: 15, scope: !5647)
!5788 = !DILocation(line: 479, column: 21, scope: !5647)
!5789 = !DILocation(line: 487, column: 6, scope: !5790)
!5790 = distinct !DILexicalBlock(scope: !5647, file: !3, line: 487, column: 6)
!5791 = !DILocation(line: 487, column: 19, scope: !5790)
!5792 = !DILocation(line: 487, column: 6, scope: !5647)
!5793 = !DILocation(line: 488, column: 3, scope: !5790)
!5794 = !DILocation(line: 488, column: 16, scope: !5790)
!5795 = !DILocation(line: 488, column: 21, scope: !5790)
!5796 = !DILocation(line: 510, column: 2, scope: !5647)
!5797 = distinct !DISubprogram(name: "input_mt_slot", scope: !3048, file: !3048, line: 85, type: !5798, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!5798 = !DISubroutineType(types: !5799)
!5799 = !{null, !174, !145}
!5800 = !DILocalVariable(name: "dev", arg: 1, scope: !5797, file: !3048, line: 85, type: !174)
!5801 = !DILocation(line: 85, column: 52, scope: !5797)
!5802 = !DILocalVariable(name: "slot", arg: 2, scope: !5797, file: !3048, line: 85, type: !145)
!5803 = !DILocation(line: 85, column: 61, scope: !5797)
!5804 = !DILocation(line: 87, column: 14, scope: !5797)
!5805 = !DILocation(line: 87, column: 40, scope: !5797)
!5806 = !DILocation(line: 87, column: 2, scope: !5797)
!5807 = !DILocation(line: 88, column: 1, scope: !5797)
!5808 = distinct !DISubprogram(name: "input_report_abs", scope: !176, file: !176, line: 425, type: !5369, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!5809 = !DILocalVariable(name: "dev", arg: 1, scope: !5808, file: !176, line: 425, type: !174)
!5810 = !DILocation(line: 425, column: 55, scope: !5808)
!5811 = !DILocalVariable(name: "code", arg: 2, scope: !5808, file: !176, line: 425, type: !7)
!5812 = !DILocation(line: 425, column: 73, scope: !5808)
!5813 = !DILocalVariable(name: "value", arg: 3, scope: !5808, file: !176, line: 425, type: !145)
!5814 = !DILocation(line: 425, column: 83, scope: !5808)
!5815 = !DILocation(line: 427, column: 14, scope: !5808)
!5816 = !DILocation(line: 427, column: 27, scope: !5808)
!5817 = !DILocation(line: 427, column: 33, scope: !5808)
!5818 = !DILocation(line: 427, column: 2, scope: !5808)
!5819 = !DILocation(line: 428, column: 1, scope: !5808)
!5820 = distinct !DISubprogram(name: "input_report_key", scope: !176, file: !176, line: 415, type: !5369, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!5821 = !DILocalVariable(name: "dev", arg: 1, scope: !5820, file: !176, line: 415, type: !174)
!5822 = !DILocation(line: 415, column: 55, scope: !5820)
!5823 = !DILocalVariable(name: "code", arg: 2, scope: !5820, file: !176, line: 415, type: !7)
!5824 = !DILocation(line: 415, column: 73, scope: !5820)
!5825 = !DILocalVariable(name: "value", arg: 3, scope: !5820, file: !176, line: 415, type: !145)
!5826 = !DILocation(line: 415, column: 83, scope: !5820)
!5827 = !DILocation(line: 417, column: 14, scope: !5820)
!5828 = !DILocation(line: 417, column: 27, scope: !5820)
!5829 = !DILocation(line: 417, column: 35, scope: !5820)
!5830 = !DILocation(line: 417, column: 34, scope: !5820)
!5831 = !DILocation(line: 417, column: 33, scope: !5820)
!5832 = !DILocation(line: 417, column: 2, scope: !5820)
!5833 = !DILocation(line: 418, column: 1, scope: !5820)
!5834 = distinct !DISubprogram(name: "input_sync", scope: !176, file: !176, line: 440, type: !3086, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!5835 = !DILocalVariable(name: "dev", arg: 1, scope: !5834, file: !176, line: 440, type: !174)
!5836 = !DILocation(line: 440, column: 49, scope: !5834)
!5837 = !DILocation(line: 442, column: 14, scope: !5834)
!5838 = !DILocation(line: 442, column: 2, scope: !5834)
!5839 = !DILocation(line: 443, column: 1, scope: !5834)
!5840 = distinct !DISubprogram(name: "cypress_get_finger_count", scope: !3, file: !3, line: 417, type: !5841, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !366)
!5841 = !DISubroutineType(types: !5842)
!5842 = !{!145, !150}
!5843 = !DILocalVariable(name: "header_byte", arg: 1, scope: !5840, file: !3, line: 417, type: !150)
!5844 = !DILocation(line: 417, column: 51, scope: !5840)
!5845 = !DILocalVariable(name: "bits6_7", scope: !5840, file: !3, line: 419, type: !150)
!5846 = !DILocation(line: 419, column: 16, scope: !5840)
!5847 = !DILocalVariable(name: "finger_count", scope: !5840, file: !3, line: 420, type: !145)
!5848 = !DILocation(line: 420, column: 6, scope: !5840)
!5849 = !DILocation(line: 422, column: 12, scope: !5840)
!5850 = !DILocation(line: 422, column: 24, scope: !5840)
!5851 = !DILocation(line: 422, column: 10, scope: !5840)
!5852 = !DILocation(line: 423, column: 17, scope: !5840)
!5853 = !DILocation(line: 423, column: 25, scope: !5840)
!5854 = !DILocation(line: 423, column: 15, scope: !5840)
!5855 = !DILocation(line: 425, column: 6, scope: !5856)
!5856 = distinct !DILexicalBlock(scope: !5840, file: !3, line: 425, column: 6)
!5857 = !DILocation(line: 425, column: 19, scope: !5856)
!5858 = !DILocation(line: 425, column: 6, scope: !5840)
!5859 = !DILocation(line: 426, column: 3, scope: !5856)
!5860 = !DILocation(line: 428, column: 6, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5840, file: !3, line: 428, column: 6)
!5862 = !DILocation(line: 428, column: 18, scope: !5861)
!5863 = !DILocation(line: 428, column: 6, scope: !5840)
!5864 = !DILocation(line: 430, column: 11, scope: !5865)
!5865 = distinct !DILexicalBlock(scope: !5861, file: !3, line: 428, column: 37)
!5866 = !DILocation(line: 430, column: 3, scope: !5865)
!5867 = !DILocation(line: 431, column: 12, scope: !5868)
!5868 = distinct !DILexicalBlock(scope: !5865, file: !3, line: 430, column: 25)
!5869 = !DILocation(line: 432, column: 12, scope: !5868)
!5870 = !DILocation(line: 435, column: 5, scope: !5868)
!5871 = !DILocation(line: 439, column: 9, scope: !5840)
!5872 = !DILocation(line: 439, column: 2, scope: !5840)
!5873 = !DILocation(line: 440, column: 1, scope: !5840)
