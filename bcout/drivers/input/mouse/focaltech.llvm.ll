; ModuleID = '../bcout/drivers/input/mouse/focaltech.llvm.bc'
source_filename = "drivers/input/mouse/focaltech.c"
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
%struct.focaltech_data = type { i32, i32, %struct.focaltech_hw_state }
%struct.focaltech_hw_state = type { [5 x %struct.focaltech_finger_state], i32, i8 }
%struct.focaltech_finger_state = type { i8, i8, i32, i32 }

@focaltech_pnp_ids = internal constant [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* null], align 16, !dbg !0
@.str = private unnamed_addr constant [10 x i8] c"FocalTech\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Touchpad\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"focaltech: Unable to read the size of the touchpad\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"focaltech: Unable to initialize the device\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"FLT0101\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"FLT0102\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"FLT0103\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.7 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"focaltech: Unknown packet type: %02x\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"focaltech: Invalid finger in abs packet: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"focaltech: First finger in rel packet invalid: %d\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @focaltech_detect(%struct.psmouse* %psmouse, i1 zeroext %set_properties) #0 !dbg !162 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %set_properties.addr = alloca i8, align 1
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !3963, metadata !DIExpression()), !dbg !3964
  %frombool = zext i1 %set_properties to i8
  store i8 %frombool, i8* %set_properties.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %set_properties.addr, metadata !3965, metadata !DIExpression()), !dbg !3966
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !3967
  %call = call zeroext i1 @psmouse_matches_pnp_id(%struct.psmouse* %0, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @focaltech_pnp_ids, i64 0, i64 0)) #7, !dbg !3969
  br i1 %call, label %if.end, label %if.then, !dbg !3970

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !3971
  br label %return, !dbg !3971

if.end:                                           ; preds = %entry
  %1 = load i8, i8* %set_properties.addr, align 1, !dbg !3972
  %tobool = trunc i8 %1 to i1, !dbg !3972
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !3974

if.then1:                                         ; preds = %if.end
  %2 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !3975
  %vendor = getelementptr inbounds %struct.psmouse, %struct.psmouse* %2, i32 0, i32 4, !dbg !3977
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %vendor, align 8, !dbg !3978
  %3 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !3979
  %name = getelementptr inbounds %struct.psmouse, %struct.psmouse* %3, i32 0, i32 5, !dbg !3980
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %name, align 8, !dbg !3981
  br label %if.end2, !dbg !3982

if.end2:                                          ; preds = %if.then1, %if.end
  store i32 0, i32* %retval, align 4, !dbg !3983
  br label %return, !dbg !3983

return:                                           ; preds = %if.end2, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !3984
  ret i32 %4, !dbg !3984
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local zeroext i1 @psmouse_matches_pnp_id(%struct.psmouse*, i8**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @focaltech_init(%struct.psmouse* %psmouse) #0 !dbg !3985 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %priv = alloca %struct.focaltech_data*, align 8
  %error = alloca i32, align 4
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !3986, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.declare(metadata %struct.focaltech_data** %priv, metadata !3988, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4010, metadata !DIExpression()), !dbg !4011
  %call = call i8* @kzalloc(i64 76, i32 3264) #7, !dbg !4012
  %0 = bitcast i8* %call to %struct.focaltech_data*, !dbg !4012
  store %struct.focaltech_data* %0, %struct.focaltech_data** %priv, align 8, !dbg !4013
  %1 = bitcast %struct.focaltech_data* %0 to i8*, !dbg !4014
  %2 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4015
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %2, i32 0, i32 0, !dbg !4016
  store i8* %1, i8** %private, align 8, !dbg !4017
  %3 = load %struct.focaltech_data*, %struct.focaltech_data** %priv, align 8, !dbg !4018
  %tobool = icmp ne %struct.focaltech_data* %3, null, !dbg !4018
  br i1 %tobool, label %if.end, label %if.then, !dbg !4020

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4021
  br label %return, !dbg !4021

if.end:                                           ; preds = %entry
  %4 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4022
  call void @focaltech_reset(%struct.psmouse* %4) #7, !dbg !4023
  %5 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4024
  %call1 = call i32 @focaltech_read_size(%struct.psmouse* %5) #7, !dbg !4025
  store i32 %call1, i32* %error, align 4, !dbg !4026
  %6 = load i32, i32* %error, align 4, !dbg !4027
  %tobool2 = icmp ne i32 %6, 0, !dbg !4027
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4029

if.then3:                                         ; preds = %if.end
  %7 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4030
  %ps2dev = getelementptr inbounds %struct.psmouse, %struct.psmouse* %7, i32 0, i32 2, !dbg !4030
  %serio = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %ps2dev, i32 0, i32 0, !dbg !4030
  %8 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4030
  %dev = getelementptr inbounds %struct.serio, %struct.serio* %8, i32 0, i32 18, !dbg !4030
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !4030
  br label %fail, !dbg !4032

if.end4:                                          ; preds = %if.end
  %9 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4033
  %call5 = call i32 @focaltech_switch_protocol(%struct.psmouse* %9) #7, !dbg !4034
  store i32 %call5, i32* %error, align 4, !dbg !4035
  %10 = load i32, i32* %error, align 4, !dbg !4036
  %tobool6 = icmp ne i32 %10, 0, !dbg !4036
  br i1 %tobool6, label %if.then7, label %if.end11, !dbg !4038

if.then7:                                         ; preds = %if.end4
  %11 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4039
  %ps2dev8 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 2, !dbg !4039
  %serio9 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %ps2dev8, i32 0, i32 0, !dbg !4039
  %12 = load %struct.serio*, %struct.serio** %serio9, align 8, !dbg !4039
  %dev10 = getelementptr inbounds %struct.serio, %struct.serio* %12, i32 0, i32 18, !dbg !4039
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev10, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !4039
  br label %fail, !dbg !4041

if.end11:                                         ; preds = %if.end4
  %13 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4042
  call void @focaltech_set_input_params(%struct.psmouse* %13) #7, !dbg !4043
  %14 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4044
  %protocol_handler = getelementptr inbounds %struct.psmouse, %struct.psmouse* %14, i32 0, i32 26, !dbg !4045
  store i32 (%struct.psmouse*)* @focaltech_process_byte, i32 (%struct.psmouse*)** %protocol_handler, align 8, !dbg !4046
  %15 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4047
  %pktsize = getelementptr inbounds %struct.psmouse, %struct.psmouse* %15, i32 0, i32 10, !dbg !4048
  store i8 6, i8* %pktsize, align 2, !dbg !4049
  %16 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4050
  %disconnect = getelementptr inbounds %struct.psmouse, %struct.psmouse* %16, i32 0, i32 32, !dbg !4051
  store void (%struct.psmouse*)* @focaltech_disconnect, void (%struct.psmouse*)** %disconnect, align 8, !dbg !4052
  %17 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4053
  %reconnect = getelementptr inbounds %struct.psmouse, %struct.psmouse* %17, i32 0, i32 30, !dbg !4054
  store i32 (%struct.psmouse*)* @focaltech_reconnect, i32 (%struct.psmouse*)** %reconnect, align 8, !dbg !4055
  %18 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4056
  %cleanup = getelementptr inbounds %struct.psmouse, %struct.psmouse* %18, i32 0, i32 33, !dbg !4057
  store void (%struct.psmouse*)* @focaltech_reset, void (%struct.psmouse*)** %cleanup, align 8, !dbg !4058
  %19 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4059
  %resync_time = getelementptr inbounds %struct.psmouse, %struct.psmouse* %19, i32 0, i32 24, !dbg !4060
  store i32 0, i32* %resync_time, align 8, !dbg !4061
  %20 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4062
  %set_resolution = getelementptr inbounds %struct.psmouse, %struct.psmouse* %20, i32 0, i32 28, !dbg !4063
  store void (%struct.psmouse*, i32)* @focaltech_set_resolution, void (%struct.psmouse*, i32)** %set_resolution, align 8, !dbg !4064
  %21 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4065
  %set_rate = getelementptr inbounds %struct.psmouse, %struct.psmouse* %21, i32 0, i32 27, !dbg !4066
  store void (%struct.psmouse*, i32)* @focaltech_set_rate, void (%struct.psmouse*, i32)** %set_rate, align 8, !dbg !4067
  %22 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4068
  %set_scale = getelementptr inbounds %struct.psmouse, %struct.psmouse* %22, i32 0, i32 29, !dbg !4069
  store void (%struct.psmouse*, i32)* @focaltech_set_scale, void (%struct.psmouse*, i32)** %set_scale, align 8, !dbg !4070
  store i32 0, i32* %retval, align 4, !dbg !4071
  br label %return, !dbg !4071

fail:                                             ; preds = %if.then7, %if.then3
  call void @llvm.dbg.label(metadata !4072), !dbg !4073
  %23 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4074
  call void @focaltech_reset(%struct.psmouse* %23) #7, !dbg !4075
  %24 = load %struct.focaltech_data*, %struct.focaltech_data** %priv, align 8, !dbg !4076
  %25 = bitcast %struct.focaltech_data* %24 to i8*, !dbg !4076
  call void @kfree(i8* %25) #7, !dbg !4077
  %26 = load i32, i32* %error, align 4, !dbg !4078
  store i32 %26, i32* %retval, align 4, !dbg !4079
  br label %return, !dbg !4079

return:                                           ; preds = %fail, %if.end11, %if.then
  %27 = load i32, i32* %retval, align 4, !dbg !4080
  ret i32 %27, !dbg !4080
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4081 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4084, metadata !DIExpression()), !dbg !4088
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4094, metadata !DIExpression()), !dbg !4095
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4096, metadata !DIExpression()), !dbg !4097
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4098, metadata !DIExpression()), !dbg !4099
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4100, metadata !DIExpression()), !dbg !4104
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4106, metadata !DIExpression()), !dbg !4110
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4112, metadata !DIExpression()), !dbg !4116
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4121, metadata !DIExpression()), !dbg !4122
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4123, metadata !DIExpression()), !dbg !4124
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4125, metadata !DIExpression()), !dbg !4126
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4127, metadata !DIExpression()), !dbg !4128
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4129, metadata !DIExpression()), !dbg !4130
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4131, metadata !DIExpression()), !dbg !4132
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4133, metadata !DIExpression()), !dbg !4134
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4135, metadata !DIExpression()), !dbg !4136
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4137, metadata !DIExpression()), !dbg !4138
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4139, metadata !DIExpression()), !dbg !4140
  %0 = load i64, i64* %size.addr, align 8, !dbg !4141
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4142
  %or = or i32 %1, 256, !dbg !4143
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4144
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4145
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4146

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4147
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4148
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4149

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4150
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4151
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4152
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !4153
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4130
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4154
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4155
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4156
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4157
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4158
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4159
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !4160
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4160
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4160
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4160
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4160
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4161
  br label %kmalloc.exit, !dbg !4161

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4162
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4163
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4163
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4165

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4166
  br label %kmalloc_index.exit.i, !dbg !4166

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4167
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4169
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4170

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4171
  br label %kmalloc_index.exit.i, !dbg !4171

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4172
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4174
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4175

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4176
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4177
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4178

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4179
  br label %kmalloc_index.exit.i, !dbg !4179

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4180
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4182
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4183

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4184
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4185
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4186

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4187
  br label %kmalloc_index.exit.i, !dbg !4187

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4188
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4190
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4191

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4192
  br label %kmalloc_index.exit.i, !dbg !4192

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4193
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4195
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4196

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4197
  br label %kmalloc_index.exit.i, !dbg !4197

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4198
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4200
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4201

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4202
  br label %kmalloc_index.exit.i, !dbg !4202

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4203
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4205
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4206

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4207
  br label %kmalloc_index.exit.i, !dbg !4207

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4208
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4210
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4211

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4212
  br label %kmalloc_index.exit.i, !dbg !4212

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4213
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4215
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4216

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4217
  br label %kmalloc_index.exit.i, !dbg !4217

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4218
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4220
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4221

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4222
  br label %kmalloc_index.exit.i, !dbg !4222

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4223
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4225
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4226

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4227
  br label %kmalloc_index.exit.i, !dbg !4227

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4228
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4230
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4231

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4232
  br label %kmalloc_index.exit.i, !dbg !4232

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4233
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4235
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4236

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4237
  br label %kmalloc_index.exit.i, !dbg !4237

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4238
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4240
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4241

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4242
  br label %kmalloc_index.exit.i, !dbg !4242

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4243
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4245
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4246

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4247
  br label %kmalloc_index.exit.i, !dbg !4247

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4248
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4250
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4251

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4252
  br label %kmalloc_index.exit.i, !dbg !4252

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4253
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4255
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4256

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4257
  br label %kmalloc_index.exit.i, !dbg !4257

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4258
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4260
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4261

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4262
  br label %kmalloc_index.exit.i, !dbg !4262

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4263
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4265
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4266

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4267
  br label %kmalloc_index.exit.i, !dbg !4267

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4268
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4270
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4271

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4272
  br label %kmalloc_index.exit.i, !dbg !4272

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4273
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4275
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4276

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4277
  br label %kmalloc_index.exit.i, !dbg !4277

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4278
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4280
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4281

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4282
  br label %kmalloc_index.exit.i, !dbg !4282

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4283
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4285
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4286

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4287
  br label %kmalloc_index.exit.i, !dbg !4287

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4288
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4290
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4291

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4292
  br label %kmalloc_index.exit.i, !dbg !4292

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4293
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4295
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4296

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4297
  br label %kmalloc_index.exit.i, !dbg !4297

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4298
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4300
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4301

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4302
  br label %kmalloc_index.exit.i, !dbg !4302

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4303
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4305
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4306

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4307
  br label %kmalloc_index.exit.i, !dbg !4307

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4308, !srcloc !4311
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 199) #9, !dbg !4312, !srcloc !4315
  unreachable, !dbg !4316

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4317
  store i32 %45, i32* %index.i, align 4, !dbg !4318
  %46 = load i32, i32* %index.i, align 4, !dbg !4319
  %tobool.i = icmp ne i32 %46, 0, !dbg !4319
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4321

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4322
  br label %kmalloc.exit, !dbg !4322

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4323
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4324
  %and.i.i = and i32 %48, 17, !dbg !4324
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4324
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4324
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4324
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4324
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4326

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4327
  br label %kmalloc_type.exit.i, !dbg !4327

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4328
  %and2.i.i = and i32 %49, 1, !dbg !4329
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4328
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4328
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4328
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4330
  br label %kmalloc_type.exit.i, !dbg !4330

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4331
  %idxprom.i = zext i32 %51 to i64, !dbg !4332
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4332
  %52 = load i32, i32* %index.i, align 4, !dbg !4333
  %idxprom6.i = zext i32 %52 to i64, !dbg !4332
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4332
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4332
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4334
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4335
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4336
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4337
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !4338
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4338
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4338
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4338
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4338
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4099
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4339
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4340
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4341
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4342
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !4343
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4344
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4345
  store i8* %62, i8** %retval.i, align 8, !dbg !4346
  br label %kmalloc.exit, !dbg !4346

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4347
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4348
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !4349
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4349
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4349
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4349
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4349
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4350
  br label %kmalloc.exit, !dbg !4350

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4351
  ret i8* %65, !dbg !4352
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @focaltech_reset(%struct.psmouse* %psmouse) #0 !dbg !4353 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4354, metadata !DIExpression()), !dbg !4355
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4356
  %ps2dev = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 2, !dbg !4357
  %call = call i32 @ps2_command(%struct.ps2dev* %ps2dev, i8* null, i32 246) #7, !dbg !4358
  %1 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4359
  %call1 = call i32 @psmouse_reset(%struct.psmouse* %1) #7, !dbg !4360
  ret void, !dbg !4361
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @focaltech_read_size(%struct.psmouse* %psmouse) #0 !dbg !4362 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %ps2dev = alloca %struct.ps2dev*, align 8
  %priv = alloca %struct.focaltech_data*, align 8
  %param = alloca [3 x i8], align 1
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4363, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev, metadata !4365, metadata !DIExpression()), !dbg !4367
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4368
  %ps2dev1 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 2, !dbg !4369
  store %struct.ps2dev* %ps2dev1, %struct.ps2dev** %ps2dev, align 8, !dbg !4367
  call void @llvm.dbg.declare(metadata %struct.focaltech_data** %priv, metadata !4370, metadata !DIExpression()), !dbg !4371
  %1 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4372
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %1, i32 0, i32 0, !dbg !4373
  %2 = load i8*, i8** %private, align 8, !dbg !4373
  %3 = bitcast i8* %2 to %struct.focaltech_data*, !dbg !4372
  store %struct.focaltech_data* %3, %struct.focaltech_data** %priv, align 8, !dbg !4371
  call void @llvm.dbg.declare(metadata [3 x i8]* %param, metadata !4374, metadata !DIExpression()), !dbg !4376
  %4 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev, align 8, !dbg !4377
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %param, i64 0, i64 0, !dbg !4379
  %call = call i32 @focaltech_read_register(%struct.ps2dev* %4, i32 2, i8* %arraydecay) #7, !dbg !4380
  %tobool = icmp ne i32 %call, 0, !dbg !4380
  br i1 %tobool, label %if.then, label %if.end, !dbg !4381

if.then:                                          ; preds = %entry
  store i32 -5, i32* %retval, align 4, !dbg !4382
  br label %return, !dbg !4382

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %param, i64 0, i64 1, !dbg !4383
  %5 = load i8, i8* %arrayidx, align 1, !dbg !4383
  %conv = zext i8 %5 to i32, !dbg !4384
  %mul = mul i32 %conv, 128, !dbg !4385
  %6 = load %struct.focaltech_data*, %struct.focaltech_data** %priv, align 8, !dbg !4386
  %x_max = getelementptr inbounds %struct.focaltech_data, %struct.focaltech_data* %6, i32 0, i32 0, !dbg !4387
  store i32 %mul, i32* %x_max, align 4, !dbg !4388
  %arrayidx2 = getelementptr [3 x i8], [3 x i8]* %param, i64 0, i64 2, !dbg !4389
  %7 = load i8, i8* %arrayidx2, align 1, !dbg !4389
  %conv3 = zext i8 %7 to i32, !dbg !4390
  %mul4 = mul i32 %conv3, 128, !dbg !4391
  %8 = load %struct.focaltech_data*, %struct.focaltech_data** %priv, align 8, !dbg !4392
  %y_max = getelementptr inbounds %struct.focaltech_data, %struct.focaltech_data* %8, i32 0, i32 1, !dbg !4393
  store i32 %mul4, i32* %y_max, align 4, !dbg !4394
  store i32 0, i32* %retval, align 4, !dbg !4395
  br label %return, !dbg !4395

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !4396
  ret i32 %9, !dbg !4396
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @focaltech_switch_protocol(%struct.psmouse* %psmouse) #0 !dbg !4397 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %ps2dev = alloca %struct.ps2dev*, align 8
  %param = alloca [3 x i8], align 1
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4398, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev, metadata !4400, metadata !DIExpression()), !dbg !4401
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4402
  %ps2dev1 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 2, !dbg !4403
  store %struct.ps2dev* %ps2dev1, %struct.ps2dev** %ps2dev, align 8, !dbg !4401
  call void @llvm.dbg.declare(metadata [3 x i8]* %param, metadata !4404, metadata !DIExpression()), !dbg !4406
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %param, i64 0, i64 0, !dbg !4407
  store i8 0, i8* %arrayidx, align 1, !dbg !4408
  %1 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev, align 8, !dbg !4409
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %param, i64 0, i64 0, !dbg !4411
  %call = call i32 @ps2_command(%struct.ps2dev* %1, i8* %arraydecay, i32 4344) #7, !dbg !4412
  %tobool = icmp ne i32 %call, 0, !dbg !4412
  br i1 %tobool, label %if.then, label %if.end, !dbg !4413

if.then:                                          ; preds = %entry
  store i32 -5, i32* %retval, align 4, !dbg !4414
  br label %return, !dbg !4414

if.end:                                           ; preds = %entry
  %2 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev, align 8, !dbg !4415
  %arraydecay2 = getelementptr inbounds [3 x i8], [3 x i8]* %param, i64 0, i64 0, !dbg !4417
  %call3 = call i32 @ps2_command(%struct.ps2dev* %2, i8* %arraydecay2, i32 4344) #7, !dbg !4418
  %tobool4 = icmp ne i32 %call3, 0, !dbg !4418
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4419

if.then5:                                         ; preds = %if.end
  store i32 -5, i32* %retval, align 4, !dbg !4420
  br label %return, !dbg !4420

if.end6:                                          ; preds = %if.end
  %3 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev, align 8, !dbg !4421
  %arraydecay7 = getelementptr inbounds [3 x i8], [3 x i8]* %param, i64 0, i64 0, !dbg !4423
  %call8 = call i32 @ps2_command(%struct.ps2dev* %3, i8* %arraydecay7, i32 4344) #7, !dbg !4424
  %tobool9 = icmp ne i32 %call8, 0, !dbg !4424
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4425

if.then10:                                        ; preds = %if.end6
  store i32 -5, i32* %retval, align 4, !dbg !4426
  br label %return, !dbg !4426

if.end11:                                         ; preds = %if.end6
  %arrayidx12 = getelementptr [3 x i8], [3 x i8]* %param, i64 0, i64 0, !dbg !4427
  store i8 1, i8* %arrayidx12, align 1, !dbg !4428
  %4 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev, align 8, !dbg !4429
  %arraydecay13 = getelementptr inbounds [3 x i8], [3 x i8]* %param, i64 0, i64 0, !dbg !4431
  %call14 = call i32 @ps2_command(%struct.ps2dev* %4, i8* %arraydecay13, i32 4344) #7, !dbg !4432
  %tobool15 = icmp ne i32 %call14, 0, !dbg !4432
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4433

if.then16:                                        ; preds = %if.end11
  store i32 -5, i32* %retval, align 4, !dbg !4434
  br label %return, !dbg !4434

if.end17:                                         ; preds = %if.end11
  %5 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev, align 8, !dbg !4435
  %arraydecay18 = getelementptr inbounds [3 x i8], [3 x i8]* %param, i64 0, i64 0, !dbg !4437
  %call19 = call i32 @ps2_command(%struct.ps2dev* %5, i8* %arraydecay18, i32 230) #7, !dbg !4438
  %tobool20 = icmp ne i32 %call19, 0, !dbg !4438
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !4439

if.then21:                                        ; preds = %if.end17
  store i32 -5, i32* %retval, align 4, !dbg !4440
  br label %return, !dbg !4440

if.end22:                                         ; preds = %if.end17
  %6 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev, align 8, !dbg !4441
  %arraydecay23 = getelementptr inbounds [3 x i8], [3 x i8]* %param, i64 0, i64 0, !dbg !4443
  %call24 = call i32 @ps2_command(%struct.ps2dev* %6, i8* %arraydecay23, i32 244) #7, !dbg !4444
  %tobool25 = icmp ne i32 %call24, 0, !dbg !4444
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !4445

if.then26:                                        ; preds = %if.end22
  store i32 -5, i32* %retval, align 4, !dbg !4446
  br label %return, !dbg !4446

if.end27:                                         ; preds = %if.end22
  store i32 0, i32* %retval, align 4, !dbg !4447
  br label %return, !dbg !4447

return:                                           ; preds = %if.end27, %if.then26, %if.then21, %if.then16, %if.then10, %if.then5, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !4448
  ret i32 %7, !dbg !4448
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @focaltech_set_input_params(%struct.psmouse* %psmouse) #0 !dbg !4449 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %dev = alloca %struct.input_dev*, align 8
  %priv = alloca %struct.focaltech_data*, align 8
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4450, metadata !DIExpression()), !dbg !4451
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev, metadata !4452, metadata !DIExpression()), !dbg !4453
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4454
  %dev1 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 1, !dbg !4455
  %1 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8, !dbg !4455
  store %struct.input_dev* %1, %struct.input_dev** %dev, align 8, !dbg !4453
  call void @llvm.dbg.declare(metadata %struct.focaltech_data** %priv, metadata !4456, metadata !DIExpression()), !dbg !4457
  %2 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4458
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %2, i32 0, i32 0, !dbg !4459
  %3 = load i8*, i8** %private, align 8, !dbg !4459
  %4 = bitcast i8* %3 to %struct.focaltech_data*, !dbg !4458
  store %struct.focaltech_data* %4, %struct.focaltech_data** %priv, align 8, !dbg !4457
  %5 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4460
  %evbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %5, i32 0, i32 5, !dbg !4461
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %evbit, i64 0, i64 0, !dbg !4460
  call void @__clear_bit(i64 2, i64* %arraydecay) #7, !dbg !4462
  %6 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4463
  %relbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %6, i32 0, i32 7, !dbg !4464
  %arraydecay2 = getelementptr inbounds [1 x i64], [1 x i64]* %relbit, i64 0, i64 0, !dbg !4463
  call void @__clear_bit(i64 0, i64* %arraydecay2) #7, !dbg !4465
  %7 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4466
  %relbit3 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %7, i32 0, i32 7, !dbg !4467
  %arraydecay4 = getelementptr inbounds [1 x i64], [1 x i64]* %relbit3, i64 0, i64 0, !dbg !4466
  call void @__clear_bit(i64 1, i64* %arraydecay4) #7, !dbg !4468
  %8 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4469
  %keybit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %8, i32 0, i32 6, !dbg !4470
  %arraydecay5 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit, i64 0, i64 0, !dbg !4469
  call void @__clear_bit(i64 273, i64* %arraydecay5) #7, !dbg !4471
  %9 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4472
  %keybit6 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %9, i32 0, i32 6, !dbg !4473
  %arraydecay7 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit6, i64 0, i64 0, !dbg !4472
  call void @__clear_bit(i64 274, i64* %arraydecay7) #7, !dbg !4474
  %10 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4475
  %evbit8 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %10, i32 0, i32 5, !dbg !4476
  %arraydecay9 = getelementptr inbounds [1 x i64], [1 x i64]* %evbit8, i64 0, i64 0, !dbg !4475
  call void @__set_bit(i64 3, i64* %arraydecay9) #7, !dbg !4477
  %11 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4478
  %12 = load %struct.focaltech_data*, %struct.focaltech_data** %priv, align 8, !dbg !4479
  %x_max = getelementptr inbounds %struct.focaltech_data, %struct.focaltech_data* %12, i32 0, i32 0, !dbg !4480
  %13 = load i32, i32* %x_max, align 4, !dbg !4480
  call void @input_set_abs_params(%struct.input_dev* %11, i32 53, i32 0, i32 %13, i32 0, i32 0) #7, !dbg !4481
  %14 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4482
  %15 = load %struct.focaltech_data*, %struct.focaltech_data** %priv, align 8, !dbg !4483
  %y_max = getelementptr inbounds %struct.focaltech_data, %struct.focaltech_data* %15, i32 0, i32 1, !dbg !4484
  %16 = load i32, i32* %y_max, align 4, !dbg !4484
  call void @input_set_abs_params(%struct.input_dev* %14, i32 54, i32 0, i32 %16, i32 0, i32 0) #7, !dbg !4485
  %17 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4486
  call void @input_set_abs_params(%struct.input_dev* %17, i32 28, i32 0, i32 15, i32 0, i32 0) #7, !dbg !4487
  %18 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4488
  %call = call i32 @input_mt_init_slots(%struct.input_dev* %18, i32 5, i32 1) #7, !dbg !4489
  %19 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4490
  %propbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %19, i32 0, i32 4, !dbg !4491
  %arraydecay10 = getelementptr inbounds [1 x i64], [1 x i64]* %propbit, i64 0, i64 0, !dbg !4490
  call void @__set_bit(i64 2, i64* %arraydecay10) #7, !dbg !4492
  ret void, !dbg !4493
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @focaltech_process_byte(%struct.psmouse* %psmouse) #0 !dbg !4494 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4495, metadata !DIExpression()), !dbg !4496
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4497
  %pktcnt = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 9, !dbg !4499
  %1 = load i8, i8* %pktcnt, align 1, !dbg !4499
  %conv = zext i8 %1 to i32, !dbg !4497
  %cmp = icmp sge i32 %conv, 6, !dbg !4500
  br i1 %cmp, label %if.then, label %if.end, !dbg !4501

if.then:                                          ; preds = %entry
  %2 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4502
  call void @focaltech_process_packet(%struct.psmouse* %2) #7, !dbg !4504
  store i32 2, i32* %retval, align 4, !dbg !4505
  br label %return, !dbg !4505

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !4506
  br label %return, !dbg !4506

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !4507
  ret i32 %3, !dbg !4507
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @focaltech_disconnect(%struct.psmouse* %psmouse) #0 !dbg !4508 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4509, metadata !DIExpression()), !dbg !4510
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4511
  call void @focaltech_reset(%struct.psmouse* %0) #7, !dbg !4512
  %1 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4513
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %1, i32 0, i32 0, !dbg !4514
  %2 = load i8*, i8** %private, align 8, !dbg !4514
  call void @kfree(i8* %2) #7, !dbg !4515
  %3 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4516
  %private1 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %3, i32 0, i32 0, !dbg !4517
  store i8* null, i8** %private1, align 8, !dbg !4518
  ret void, !dbg !4519
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @focaltech_reconnect(%struct.psmouse* %psmouse) #0 !dbg !4520 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %error = alloca i32, align 4
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4521, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4523, metadata !DIExpression()), !dbg !4524
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4525
  call void @focaltech_reset(%struct.psmouse* %0) #7, !dbg !4526
  %1 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4527
  %call = call i32 @focaltech_switch_protocol(%struct.psmouse* %1) #7, !dbg !4528
  store i32 %call, i32* %error, align 4, !dbg !4529
  %2 = load i32, i32* %error, align 4, !dbg !4530
  %tobool = icmp ne i32 %2, 0, !dbg !4530
  br i1 %tobool, label %if.then, label %if.end, !dbg !4532

if.then:                                          ; preds = %entry
  %3 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4533
  %ps2dev = getelementptr inbounds %struct.psmouse, %struct.psmouse* %3, i32 0, i32 2, !dbg !4533
  %serio = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %ps2dev, i32 0, i32 0, !dbg !4533
  %4 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4533
  %dev = getelementptr inbounds %struct.serio, %struct.serio* %4, i32 0, i32 18, !dbg !4533
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !4533
  %5 = load i32, i32* %error, align 4, !dbg !4535
  store i32 %5, i32* %retval, align 4, !dbg !4536
  br label %return, !dbg !4536

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4537
  br label %return, !dbg !4537

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !4538
  ret i32 %6, !dbg !4538
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @focaltech_set_resolution(%struct.psmouse* %psmouse, i32 %resolution) #0 !dbg !4539 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %resolution.addr = alloca i32, align 4
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4540, metadata !DIExpression()), !dbg !4541
  store i32 %resolution, i32* %resolution.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %resolution.addr, metadata !4542, metadata !DIExpression()), !dbg !4543
  ret void, !dbg !4544
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @focaltech_set_rate(%struct.psmouse* %psmouse, i32 %rate) #0 !dbg !4545 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %rate.addr = alloca i32, align 4
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4546, metadata !DIExpression()), !dbg !4547
  store i32 %rate, i32* %rate.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %rate.addr, metadata !4548, metadata !DIExpression()), !dbg !4549
  ret void, !dbg !4550
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @focaltech_set_scale(%struct.psmouse* %psmouse, i32 %scale) #0 !dbg !4551 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %scale.addr = alloca i32, align 4
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4552, metadata !DIExpression()), !dbg !4553
  store i32 %scale, i32* %scale.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %scale.addr, metadata !4554, metadata !DIExpression()), !dbg !4555
  ret void, !dbg !4556
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !4557 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4561, metadata !DIExpression()), !dbg !4566
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4568, metadata !DIExpression()), !dbg !4569
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4570, metadata !DIExpression()), !dbg !4571
  %0 = load i64, i64* %size.addr, align 8, !dbg !4572
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4574
  br i1 %1, label %if.then, label %if.end447, !dbg !4575

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4576
  %tobool = icmp ne i64 %2, 0, !dbg !4576
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4579

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4580
  br label %return, !dbg !4580

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4581
  %cmp = icmp ult i64 %3, 4096, !dbg !4583
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4584

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4585
  br label %return, !dbg !4585

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub = sub i64 %4, 1, !dbg !4586
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4586
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4586

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub4 = sub i64 %6, 1, !dbg !4586
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4586
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4586

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub6 = sub i64 %8, 1, !dbg !4586
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4586
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4586

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4586

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub9 = sub i64 %9, 1, !dbg !4586
  %and = and i64 %sub9, -9223372036854775808, !dbg !4586
  %tobool10 = icmp ne i64 %and, 0, !dbg !4586
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4586

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4586

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub13 = sub i64 %10, 1, !dbg !4586
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4586
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4586
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4586

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4586

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub18 = sub i64 %11, 1, !dbg !4586
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4586
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4586
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4586

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4586

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub23 = sub i64 %12, 1, !dbg !4586
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4586
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4586
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4586

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4586

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub28 = sub i64 %13, 1, !dbg !4586
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4586
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4586
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4586

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4586

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub33 = sub i64 %14, 1, !dbg !4586
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4586
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4586
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4586

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4586

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub38 = sub i64 %15, 1, !dbg !4586
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4586
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4586
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4586

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4586

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub43 = sub i64 %16, 1, !dbg !4586
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4586
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4586
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4586

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4586

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub48 = sub i64 %17, 1, !dbg !4586
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4586
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4586
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4586

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4586

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub53 = sub i64 %18, 1, !dbg !4586
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4586
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4586
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4586

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4586

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub58 = sub i64 %19, 1, !dbg !4586
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4586
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4586
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4586

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4586

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub63 = sub i64 %20, 1, !dbg !4586
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4586
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4586
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4586

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4586

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub68 = sub i64 %21, 1, !dbg !4586
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4586
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4586
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4586

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4586

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub73 = sub i64 %22, 1, !dbg !4586
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4586
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4586
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4586

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4586

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub78 = sub i64 %23, 1, !dbg !4586
  %and79 = and i64 %sub78, 562949953421312, !dbg !4586
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4586
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4586

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4586

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub83 = sub i64 %24, 1, !dbg !4586
  %and84 = and i64 %sub83, 281474976710656, !dbg !4586
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4586
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4586

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4586

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub88 = sub i64 %25, 1, !dbg !4586
  %and89 = and i64 %sub88, 140737488355328, !dbg !4586
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4586
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4586

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4586

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub93 = sub i64 %26, 1, !dbg !4586
  %and94 = and i64 %sub93, 70368744177664, !dbg !4586
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4586
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4586

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4586

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub98 = sub i64 %27, 1, !dbg !4586
  %and99 = and i64 %sub98, 35184372088832, !dbg !4586
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4586
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4586

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4586

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub103 = sub i64 %28, 1, !dbg !4586
  %and104 = and i64 %sub103, 17592186044416, !dbg !4586
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4586
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4586

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4586

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub108 = sub i64 %29, 1, !dbg !4586
  %and109 = and i64 %sub108, 8796093022208, !dbg !4586
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4586
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4586

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4586

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub113 = sub i64 %30, 1, !dbg !4586
  %and114 = and i64 %sub113, 4398046511104, !dbg !4586
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4586
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4586

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4586

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub118 = sub i64 %31, 1, !dbg !4586
  %and119 = and i64 %sub118, 2199023255552, !dbg !4586
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4586
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4586

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4586

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub123 = sub i64 %32, 1, !dbg !4586
  %and124 = and i64 %sub123, 1099511627776, !dbg !4586
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4586
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4586

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4586

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub128 = sub i64 %33, 1, !dbg !4586
  %and129 = and i64 %sub128, 549755813888, !dbg !4586
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4586
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4586

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4586

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub133 = sub i64 %34, 1, !dbg !4586
  %and134 = and i64 %sub133, 274877906944, !dbg !4586
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4586
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4586

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4586

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub138 = sub i64 %35, 1, !dbg !4586
  %and139 = and i64 %sub138, 137438953472, !dbg !4586
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4586
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4586

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4586

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub143 = sub i64 %36, 1, !dbg !4586
  %and144 = and i64 %sub143, 68719476736, !dbg !4586
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4586
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4586

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4586

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub148 = sub i64 %37, 1, !dbg !4586
  %and149 = and i64 %sub148, 34359738368, !dbg !4586
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4586
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4586

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4586

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub153 = sub i64 %38, 1, !dbg !4586
  %and154 = and i64 %sub153, 17179869184, !dbg !4586
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4586
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4586

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4586

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub158 = sub i64 %39, 1, !dbg !4586
  %and159 = and i64 %sub158, 8589934592, !dbg !4586
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4586
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4586

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4586

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub163 = sub i64 %40, 1, !dbg !4586
  %and164 = and i64 %sub163, 4294967296, !dbg !4586
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4586
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4586

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4586

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub168 = sub i64 %41, 1, !dbg !4586
  %and169 = and i64 %sub168, 2147483648, !dbg !4586
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4586
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4586

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4586

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub173 = sub i64 %42, 1, !dbg !4586
  %and174 = and i64 %sub173, 1073741824, !dbg !4586
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4586
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4586

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4586

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub178 = sub i64 %43, 1, !dbg !4586
  %and179 = and i64 %sub178, 536870912, !dbg !4586
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4586
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4586

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4586

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub183 = sub i64 %44, 1, !dbg !4586
  %and184 = and i64 %sub183, 268435456, !dbg !4586
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4586
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4586

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4586

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub188 = sub i64 %45, 1, !dbg !4586
  %and189 = and i64 %sub188, 134217728, !dbg !4586
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4586
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4586

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4586

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub193 = sub i64 %46, 1, !dbg !4586
  %and194 = and i64 %sub193, 67108864, !dbg !4586
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4586
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4586

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4586

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub198 = sub i64 %47, 1, !dbg !4586
  %and199 = and i64 %sub198, 33554432, !dbg !4586
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4586
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4586

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4586

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub203 = sub i64 %48, 1, !dbg !4586
  %and204 = and i64 %sub203, 16777216, !dbg !4586
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4586
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4586

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4586

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub208 = sub i64 %49, 1, !dbg !4586
  %and209 = and i64 %sub208, 8388608, !dbg !4586
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4586
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4586

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4586

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub213 = sub i64 %50, 1, !dbg !4586
  %and214 = and i64 %sub213, 4194304, !dbg !4586
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4586
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4586

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4586

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub218 = sub i64 %51, 1, !dbg !4586
  %and219 = and i64 %sub218, 2097152, !dbg !4586
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4586
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4586

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4586

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub223 = sub i64 %52, 1, !dbg !4586
  %and224 = and i64 %sub223, 1048576, !dbg !4586
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4586
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4586

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4586

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub228 = sub i64 %53, 1, !dbg !4586
  %and229 = and i64 %sub228, 524288, !dbg !4586
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4586
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4586

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4586

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub233 = sub i64 %54, 1, !dbg !4586
  %and234 = and i64 %sub233, 262144, !dbg !4586
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4586
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4586

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4586

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub238 = sub i64 %55, 1, !dbg !4586
  %and239 = and i64 %sub238, 131072, !dbg !4586
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4586
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4586

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4586

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub243 = sub i64 %56, 1, !dbg !4586
  %and244 = and i64 %sub243, 65536, !dbg !4586
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4586
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4586

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4586

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub248 = sub i64 %57, 1, !dbg !4586
  %and249 = and i64 %sub248, 32768, !dbg !4586
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4586
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4586

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4586

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub253 = sub i64 %58, 1, !dbg !4586
  %and254 = and i64 %sub253, 16384, !dbg !4586
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4586
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4586

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4586

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub258 = sub i64 %59, 1, !dbg !4586
  %and259 = and i64 %sub258, 8192, !dbg !4586
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4586
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4586

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4586

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub263 = sub i64 %60, 1, !dbg !4586
  %and264 = and i64 %sub263, 4096, !dbg !4586
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4586
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4586

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4586

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub268 = sub i64 %61, 1, !dbg !4586
  %and269 = and i64 %sub268, 2048, !dbg !4586
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4586
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4586

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4586

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub273 = sub i64 %62, 1, !dbg !4586
  %and274 = and i64 %sub273, 1024, !dbg !4586
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4586
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4586

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4586

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub278 = sub i64 %63, 1, !dbg !4586
  %and279 = and i64 %sub278, 512, !dbg !4586
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4586
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4586

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4586

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub283 = sub i64 %64, 1, !dbg !4586
  %and284 = and i64 %sub283, 256, !dbg !4586
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4586
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4586

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4586

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub288 = sub i64 %65, 1, !dbg !4586
  %and289 = and i64 %sub288, 128, !dbg !4586
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4586
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4586

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4586

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub293 = sub i64 %66, 1, !dbg !4586
  %and294 = and i64 %sub293, 64, !dbg !4586
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4586
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4586

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4586

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub298 = sub i64 %67, 1, !dbg !4586
  %and299 = and i64 %sub298, 32, !dbg !4586
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4586
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4586

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4586

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub303 = sub i64 %68, 1, !dbg !4586
  %and304 = and i64 %sub303, 16, !dbg !4586
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4586
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4586

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4586

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub308 = sub i64 %69, 1, !dbg !4586
  %and309 = and i64 %sub308, 8, !dbg !4586
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4586
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4586

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4586

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub313 = sub i64 %70, 1, !dbg !4586
  %and314 = and i64 %sub313, 4, !dbg !4586
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4586
  %71 = zext i1 %tobool315 to i64, !dbg !4586
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4586
  br label %cond.end, !dbg !4586

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4586
  br label %cond.end317, !dbg !4586

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4586
  br label %cond.end319, !dbg !4586

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4586
  br label %cond.end321, !dbg !4586

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4586
  br label %cond.end323, !dbg !4586

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4586
  br label %cond.end325, !dbg !4586

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4586
  br label %cond.end327, !dbg !4586

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4586
  br label %cond.end329, !dbg !4586

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4586
  br label %cond.end331, !dbg !4586

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4586
  br label %cond.end333, !dbg !4586

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4586
  br label %cond.end335, !dbg !4586

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4586
  br label %cond.end337, !dbg !4586

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4586
  br label %cond.end339, !dbg !4586

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4586
  br label %cond.end341, !dbg !4586

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4586
  br label %cond.end343, !dbg !4586

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4586
  br label %cond.end345, !dbg !4586

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4586
  br label %cond.end347, !dbg !4586

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4586
  br label %cond.end349, !dbg !4586

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4586
  br label %cond.end351, !dbg !4586

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4586
  br label %cond.end353, !dbg !4586

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4586
  br label %cond.end355, !dbg !4586

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4586
  br label %cond.end357, !dbg !4586

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4586
  br label %cond.end359, !dbg !4586

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4586
  br label %cond.end361, !dbg !4586

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4586
  br label %cond.end363, !dbg !4586

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4586
  br label %cond.end365, !dbg !4586

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4586
  br label %cond.end367, !dbg !4586

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4586
  br label %cond.end369, !dbg !4586

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4586
  br label %cond.end371, !dbg !4586

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4586
  br label %cond.end373, !dbg !4586

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4586
  br label %cond.end375, !dbg !4586

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4586
  br label %cond.end377, !dbg !4586

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4586
  br label %cond.end379, !dbg !4586

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4586
  br label %cond.end381, !dbg !4586

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4586
  br label %cond.end383, !dbg !4586

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4586
  br label %cond.end385, !dbg !4586

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4586
  br label %cond.end387, !dbg !4586

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4586
  br label %cond.end389, !dbg !4586

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4586
  br label %cond.end391, !dbg !4586

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4586
  br label %cond.end393, !dbg !4586

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4586
  br label %cond.end395, !dbg !4586

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4586
  br label %cond.end397, !dbg !4586

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4586
  br label %cond.end399, !dbg !4586

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4586
  br label %cond.end401, !dbg !4586

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4586
  br label %cond.end403, !dbg !4586

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4586
  br label %cond.end405, !dbg !4586

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4586
  br label %cond.end407, !dbg !4586

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4586
  br label %cond.end409, !dbg !4586

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4586
  br label %cond.end411, !dbg !4586

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4586
  br label %cond.end413, !dbg !4586

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4586
  br label %cond.end415, !dbg !4586

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4586
  br label %cond.end417, !dbg !4586

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4586
  br label %cond.end419, !dbg !4586

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4586
  br label %cond.end421, !dbg !4586

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4586
  br label %cond.end423, !dbg !4586

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4586
  br label %cond.end425, !dbg !4586

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4586
  br label %cond.end427, !dbg !4586

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4586
  br label %cond.end429, !dbg !4586

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4586
  br label %cond.end431, !dbg !4586

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4586
  br label %cond.end433, !dbg !4586

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4586
  br label %cond.end435, !dbg !4586

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4586
  br label %cond.end437, !dbg !4586

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4586
  br label %cond.end440, !dbg !4586

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4586

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4586
  br label %cond.end444, !dbg !4586

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4586
  %sub443 = sub i64 %72, 1, !dbg !4586
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !4586
  br label %cond.end444, !dbg !4586

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4586
  %sub446 = sub i32 %cond445, 12, !dbg !4587
  %add = add i32 %sub446, 1, !dbg !4588
  store i32 %add, i32* %retval, align 4, !dbg !4589
  br label %return, !dbg !4589

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4590
  %dec = add i64 %73, -1, !dbg !4590
  store i64 %dec, i64* %size.addr, align 8, !dbg !4590
  %74 = load i64, i64* %size.addr, align 8, !dbg !4591
  %shr = lshr i64 %74, 12, !dbg !4591
  store i64 %shr, i64* %size.addr, align 8, !dbg !4591
  %75 = load i64, i64* %size.addr, align 8, !dbg !4592
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4569
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4593
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4594
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !4593, !srcloc !4595
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4593
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4596
  %add.i = add i32 %79, 1, !dbg !4597
  store i32 %add.i, i32* %retval, align 4, !dbg !4598
  br label %return, !dbg !4598

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4599
  ret i32 %80, !dbg !4599
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !4600 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4561, metadata !DIExpression()), !dbg !4604
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4568, metadata !DIExpression()), !dbg !4606
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4607, metadata !DIExpression()), !dbg !4608
  %0 = load i64, i64* %n.addr, align 8, !dbg !4609
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4606
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4610
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4611
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !4610, !srcloc !4595
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4610
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4612
  %add.i = add i32 %4, 1, !dbg !4613
  %sub = sub i32 %add.i, 1, !dbg !4614
  ret i32 %sub, !dbg !4615
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4616 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4620, metadata !DIExpression()), !dbg !4621
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4622, metadata !DIExpression()), !dbg !4623
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4624, metadata !DIExpression()), !dbg !4625
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4626, metadata !DIExpression()), !dbg !4627
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4628
  ret i8* %0, !dbg !4629
}

; Function Attrs: noredzone
declare dso_local i32 @ps2_command(%struct.ps2dev*, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @psmouse_reset(%struct.psmouse*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @focaltech_read_register(%struct.ps2dev* %ps2dev, i32 %reg, i8* %param) #0 !dbg !4630 {
entry:
  %retval = alloca i32, align 4
  %ps2dev.addr = alloca %struct.ps2dev*, align 8
  %reg.addr = alloca i32, align 4
  %param.addr = alloca i8*, align 8
  store %struct.ps2dev* %ps2dev, %struct.ps2dev** %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev.addr, metadata !4634, metadata !DIExpression()), !dbg !4635
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !4636, metadata !DIExpression()), !dbg !4637
  store i8* %param, i8** %param.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %param.addr, metadata !4638, metadata !DIExpression()), !dbg !4639
  %0 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4640
  %1 = load i8*, i8** %param.addr, align 8, !dbg !4642
  %call = call i32 @ps2_command(%struct.ps2dev* %0, i8* %1, i32 230) #7, !dbg !4643
  %tobool = icmp ne i32 %call, 0, !dbg !4643
  br i1 %tobool, label %if.then, label %if.end, !dbg !4644

if.then:                                          ; preds = %entry
  store i32 -5, i32* %retval, align 4, !dbg !4645
  br label %return, !dbg !4645

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %param.addr, align 8, !dbg !4646
  %arrayidx = getelementptr i8, i8* %2, i64 0, !dbg !4646
  store i8 0, i8* %arrayidx, align 1, !dbg !4647
  %3 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4648
  %4 = load i8*, i8** %param.addr, align 8, !dbg !4650
  %call1 = call i32 @ps2_command(%struct.ps2dev* %3, i8* %4, i32 4328) #7, !dbg !4651
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4651
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4652

if.then3:                                         ; preds = %if.end
  store i32 -5, i32* %retval, align 4, !dbg !4653
  br label %return, !dbg !4653

if.end4:                                          ; preds = %if.end
  %5 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4654
  %6 = load i8*, i8** %param.addr, align 8, !dbg !4656
  %call5 = call i32 @ps2_command(%struct.ps2dev* %5, i8* %6, i32 4328) #7, !dbg !4657
  %tobool6 = icmp ne i32 %call5, 0, !dbg !4657
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4658

if.then7:                                         ; preds = %if.end4
  store i32 -5, i32* %retval, align 4, !dbg !4659
  br label %return, !dbg !4659

if.end8:                                          ; preds = %if.end4
  %7 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4660
  %8 = load i8*, i8** %param.addr, align 8, !dbg !4662
  %call9 = call i32 @ps2_command(%struct.ps2dev* %7, i8* %8, i32 4328) #7, !dbg !4663
  %tobool10 = icmp ne i32 %call9, 0, !dbg !4663
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !4664

if.then11:                                        ; preds = %if.end8
  store i32 -5, i32* %retval, align 4, !dbg !4665
  br label %return, !dbg !4665

if.end12:                                         ; preds = %if.end8
  %9 = load i32, i32* %reg.addr, align 4, !dbg !4666
  %conv = trunc i32 %9 to i8, !dbg !4666
  %10 = load i8*, i8** %param.addr, align 8, !dbg !4667
  %arrayidx13 = getelementptr i8, i8* %10, i64 0, !dbg !4667
  store i8 %conv, i8* %arrayidx13, align 1, !dbg !4668
  %11 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4669
  %12 = load i8*, i8** %param.addr, align 8, !dbg !4671
  %call14 = call i32 @ps2_command(%struct.ps2dev* %11, i8* %12, i32 4328) #7, !dbg !4672
  %tobool15 = icmp ne i32 %call14, 0, !dbg !4672
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4673

if.then16:                                        ; preds = %if.end12
  store i32 -5, i32* %retval, align 4, !dbg !4674
  br label %return, !dbg !4674

if.end17:                                         ; preds = %if.end12
  %13 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4675
  %14 = load i8*, i8** %param.addr, align 8, !dbg !4677
  %call18 = call i32 @ps2_command(%struct.ps2dev* %13, i8* %14, i32 1001) #7, !dbg !4678
  %tobool19 = icmp ne i32 %call18, 0, !dbg !4678
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !4679

if.then20:                                        ; preds = %if.end17
  store i32 -5, i32* %retval, align 4, !dbg !4680
  br label %return, !dbg !4680

if.end21:                                         ; preds = %if.end17
  store i32 0, i32* %retval, align 4, !dbg !4681
  br label %return, !dbg !4681

return:                                           ; preds = %if.end21, %if.then20, %if.then16, %if.then11, %if.then7, %if.then3, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !4682
  ret i32 %15, !dbg !4682
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__clear_bit(i64 %nr, i64* %addr) #0 !dbg !4683 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4689, metadata !DIExpression()), !dbg !4691
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4693, metadata !DIExpression()), !dbg !4694
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4695, metadata !DIExpression()), !dbg !4703
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4705, metadata !DIExpression()), !dbg !4706
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4707, metadata !DIExpression()), !dbg !4708
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4709, metadata !DIExpression()), !dbg !4710
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4711
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4712
  %div = sdiv i64 %1, 64, !dbg !4712
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4713
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4711
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4714
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4715
  %conv.i = trunc i64 %4 to i32, !dbg !4715
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !4716
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4717
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4717
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #11, !dbg !4717
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4718
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4719
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !4720
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !4721
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #9, !dbg !4722, !srcloc !4723
  ret void, !dbg !4724
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__set_bit(i64 %nr, i64* %addr) #0 !dbg !4725 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4726, metadata !DIExpression()), !dbg !4728
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4730, metadata !DIExpression()), !dbg !4731
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4695, metadata !DIExpression()), !dbg !4732
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4705, metadata !DIExpression()), !dbg !4734
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4735, metadata !DIExpression()), !dbg !4736
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4737, metadata !DIExpression()), !dbg !4738
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4739
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4740
  %div = sdiv i64 %1, 64, !dbg !4740
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4741
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4739
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4742
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4743
  %conv.i = trunc i64 %4 to i32, !dbg !4743
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !4744
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4745
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4745
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #11, !dbg !4745
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4746
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4747
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !4748
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !4749
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #9, !dbg !4750, !srcloc !4751
  ret void, !dbg !4752
}

; Function Attrs: noredzone
declare dso_local void @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !4753 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4757, metadata !DIExpression()), !dbg !4758
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4759, metadata !DIExpression()), !dbg !4760
  ret i1 true, !dbg !4761
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !4762 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4766, metadata !DIExpression()), !dbg !4767
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4768, metadata !DIExpression()), !dbg !4769
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4770, metadata !DIExpression()), !dbg !4771
  ret void, !dbg !4772
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @focaltech_process_packet(%struct.psmouse* %psmouse) #0 !dbg !4773 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %packet = alloca i8*, align 8
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4774, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.declare(metadata i8** %packet, metadata !4776, metadata !DIExpression()), !dbg !4777
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4778
  %packet1 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 7, !dbg !4779
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %packet1, i64 0, i64 0, !dbg !4778
  store i8* %arraydecay, i8** %packet, align 8, !dbg !4777
  %1 = load i8*, i8** %packet, align 8, !dbg !4780
  %arrayidx = getelementptr i8, i8* %1, i64 0, !dbg !4780
  %2 = load i8, i8* %arrayidx, align 1, !dbg !4780
  %conv = zext i8 %2 to i32, !dbg !4780
  %and = and i32 %conv, 15, !dbg !4781
  switch i32 %and, label %sw.default [
    i32 3, label %sw.bb
    i32 6, label %sw.bb2
    i32 9, label %sw.bb3
  ], !dbg !4782

sw.bb:                                            ; preds = %entry
  %3 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4783
  %4 = load i8*, i8** %packet, align 8, !dbg !4785
  call void @focaltech_process_touch_packet(%struct.psmouse* %3, i8* %4) #7, !dbg !4786
  br label %sw.epilog, !dbg !4787

sw.bb2:                                           ; preds = %entry
  %5 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4788
  %6 = load i8*, i8** %packet, align 8, !dbg !4789
  call void @focaltech_process_abs_packet(%struct.psmouse* %5, i8* %6) #7, !dbg !4790
  br label %sw.epilog, !dbg !4791

sw.bb3:                                           ; preds = %entry
  %7 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4792
  %8 = load i8*, i8** %packet, align 8, !dbg !4793
  call void @focaltech_process_rel_packet(%struct.psmouse* %7, i8* %8) #7, !dbg !4794
  br label %sw.epilog, !dbg !4795

sw.default:                                       ; preds = %entry
  %9 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4796
  %ps2dev = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 2, !dbg !4796
  %serio = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %ps2dev, i32 0, i32 0, !dbg !4796
  %10 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4796
  %dev = getelementptr inbounds %struct.serio, %struct.serio* %10, i32 0, i32 18, !dbg !4796
  %11 = load i8*, i8** %packet, align 8, !dbg !4796
  %arrayidx4 = getelementptr i8, i8* %11, i64 0, !dbg !4796
  %12 = load i8, i8* %arrayidx4, align 1, !dbg !4796
  %conv5 = zext i8 %12 to i32, !dbg !4796
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %conv5) #8, !dbg !4796
  br label %sw.epilog, !dbg !4797

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb
  %13 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4798
  call void @focaltech_report_state(%struct.psmouse* %13) #7, !dbg !4799
  ret void, !dbg !4800
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @focaltech_process_touch_packet(%struct.psmouse* %psmouse, i8* %packet) #0 !dbg !4801 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %packet.addr = alloca i8*, align 8
  %priv = alloca %struct.focaltech_data*, align 8
  %state = alloca %struct.focaltech_hw_state*, align 8
  %fingers = alloca i8, align 1
  %i = alloca i32, align 4
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4804, metadata !DIExpression()), !dbg !4805
  store i8* %packet, i8** %packet.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %packet.addr, metadata !4806, metadata !DIExpression()), !dbg !4807
  call void @llvm.dbg.declare(metadata %struct.focaltech_data** %priv, metadata !4808, metadata !DIExpression()), !dbg !4809
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4810
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 0, !dbg !4811
  %1 = load i8*, i8** %private, align 8, !dbg !4811
  %2 = bitcast i8* %1 to %struct.focaltech_data*, !dbg !4810
  store %struct.focaltech_data* %2, %struct.focaltech_data** %priv, align 8, !dbg !4809
  call void @llvm.dbg.declare(metadata %struct.focaltech_hw_state** %state, metadata !4812, metadata !DIExpression()), !dbg !4814
  %3 = load %struct.focaltech_data*, %struct.focaltech_data** %priv, align 8, !dbg !4815
  %state1 = getelementptr inbounds %struct.focaltech_data, %struct.focaltech_data* %3, i32 0, i32 2, !dbg !4816
  store %struct.focaltech_hw_state* %state1, %struct.focaltech_hw_state** %state, align 8, !dbg !4814
  call void @llvm.dbg.declare(metadata i8* %fingers, metadata !4817, metadata !DIExpression()), !dbg !4818
  %4 = load i8*, i8** %packet.addr, align 8, !dbg !4819
  %arrayidx = getelementptr i8, i8* %4, i64 1, !dbg !4819
  %5 = load i8, i8* %arrayidx, align 1, !dbg !4819
  store i8 %5, i8* %fingers, align 1, !dbg !4818
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4820, metadata !DIExpression()), !dbg !4821
  %6 = load i8*, i8** %packet.addr, align 8, !dbg !4822
  %arrayidx2 = getelementptr i8, i8* %6, i64 0, !dbg !4822
  %7 = load i8, i8* %arrayidx2, align 1, !dbg !4822
  %conv = zext i8 %7 to i32, !dbg !4822
  %shr = ashr i32 %conv, 4, !dbg !4823
  %and = and i32 %shr, 1, !dbg !4824
  %tobool = icmp ne i32 %and, 0, !dbg !4825
  %8 = load %struct.focaltech_hw_state*, %struct.focaltech_hw_state** %state, align 8, !dbg !4826
  %pressed = getelementptr inbounds %struct.focaltech_hw_state, %struct.focaltech_hw_state* %8, i32 0, i32 2, !dbg !4827
  %frombool = zext i1 %tobool to i8, !dbg !4828
  store i8 %frombool, i8* %pressed, align 4, !dbg !4828
  store i32 0, i32* %i, align 4, !dbg !4829
  br label %for.cond, !dbg !4831

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4, !dbg !4832
  %cmp = icmp slt i32 %9, 5, !dbg !4834
  br i1 %cmp, label %for.body, label %for.end, !dbg !4835

for.body:                                         ; preds = %for.cond
  %10 = load i8, i8* %fingers, align 1, !dbg !4836
  %conv4 = zext i8 %10 to i32, !dbg !4836
  %and5 = and i32 %conv4, 1, !dbg !4838
  %tobool6 = icmp ne i32 %and5, 0, !dbg !4836
  %11 = load %struct.focaltech_hw_state*, %struct.focaltech_hw_state** %state, align 8, !dbg !4839
  %fingers7 = getelementptr inbounds %struct.focaltech_hw_state, %struct.focaltech_hw_state* %11, i32 0, i32 0, !dbg !4840
  %12 = load i32, i32* %i, align 4, !dbg !4841
  %idxprom = sext i32 %12 to i64, !dbg !4839
  %arrayidx8 = getelementptr [5 x %struct.focaltech_finger_state], [5 x %struct.focaltech_finger_state]* %fingers7, i64 0, i64 %idxprom, !dbg !4839
  %active = getelementptr inbounds %struct.focaltech_finger_state, %struct.focaltech_finger_state* %arrayidx8, i32 0, i32 0, !dbg !4842
  %frombool9 = zext i1 %tobool6 to i8, !dbg !4843
  store i8 %frombool9, i8* %active, align 4, !dbg !4843
  %13 = load %struct.focaltech_hw_state*, %struct.focaltech_hw_state** %state, align 8, !dbg !4844
  %fingers10 = getelementptr inbounds %struct.focaltech_hw_state, %struct.focaltech_hw_state* %13, i32 0, i32 0, !dbg !4846
  %14 = load i32, i32* %i, align 4, !dbg !4847
  %idxprom11 = sext i32 %14 to i64, !dbg !4844
  %arrayidx12 = getelementptr [5 x %struct.focaltech_finger_state], [5 x %struct.focaltech_finger_state]* %fingers10, i64 0, i64 %idxprom11, !dbg !4844
  %active13 = getelementptr inbounds %struct.focaltech_finger_state, %struct.focaltech_finger_state* %arrayidx12, i32 0, i32 0, !dbg !4848
  %15 = load i8, i8* %active13, align 4, !dbg !4848
  %tobool14 = trunc i8 %15 to i1, !dbg !4848
  br i1 %tobool14, label %if.end, label %if.then, !dbg !4849

if.then:                                          ; preds = %for.body
  %16 = load %struct.focaltech_hw_state*, %struct.focaltech_hw_state** %state, align 8, !dbg !4850
  %fingers15 = getelementptr inbounds %struct.focaltech_hw_state, %struct.focaltech_hw_state* %16, i32 0, i32 0, !dbg !4852
  %17 = load i32, i32* %i, align 4, !dbg !4853
  %idxprom16 = sext i32 %17 to i64, !dbg !4850
  %arrayidx17 = getelementptr [5 x %struct.focaltech_finger_state], [5 x %struct.focaltech_finger_state]* %fingers15, i64 0, i64 %idxprom16, !dbg !4850
  %valid = getelementptr inbounds %struct.focaltech_finger_state, %struct.focaltech_finger_state* %arrayidx17, i32 0, i32 1, !dbg !4854
  store i8 0, i8* %valid, align 1, !dbg !4855
  br label %if.end, !dbg !4856

if.end:                                           ; preds = %if.then, %for.body
  %18 = load i8, i8* %fingers, align 1, !dbg !4857
  %conv18 = zext i8 %18 to i32, !dbg !4857
  %shr19 = ashr i32 %conv18, 1, !dbg !4857
  %conv20 = trunc i32 %shr19 to i8, !dbg !4857
  store i8 %conv20, i8* %fingers, align 1, !dbg !4857
  br label %for.inc, !dbg !4858

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4, !dbg !4859
  %inc = add i32 %19, 1, !dbg !4859
  store i32 %inc, i32* %i, align 4, !dbg !4859
  br label %for.cond, !dbg !4860, !llvm.loop !4861

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4863
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @focaltech_process_abs_packet(%struct.psmouse* %psmouse, i8* %packet) #0 !dbg !4864 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %packet.addr = alloca i8*, align 8
  %priv = alloca %struct.focaltech_data*, align 8
  %state = alloca %struct.focaltech_hw_state*, align 8
  %finger = alloca i32, align 4
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4865, metadata !DIExpression()), !dbg !4866
  store i8* %packet, i8** %packet.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %packet.addr, metadata !4867, metadata !DIExpression()), !dbg !4868
  call void @llvm.dbg.declare(metadata %struct.focaltech_data** %priv, metadata !4869, metadata !DIExpression()), !dbg !4870
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4871
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 0, !dbg !4872
  %1 = load i8*, i8** %private, align 8, !dbg !4872
  %2 = bitcast i8* %1 to %struct.focaltech_data*, !dbg !4871
  store %struct.focaltech_data* %2, %struct.focaltech_data** %priv, align 8, !dbg !4870
  call void @llvm.dbg.declare(metadata %struct.focaltech_hw_state** %state, metadata !4873, metadata !DIExpression()), !dbg !4874
  %3 = load %struct.focaltech_data*, %struct.focaltech_data** %priv, align 8, !dbg !4875
  %state1 = getelementptr inbounds %struct.focaltech_data, %struct.focaltech_data* %3, i32 0, i32 2, !dbg !4876
  store %struct.focaltech_hw_state* %state1, %struct.focaltech_hw_state** %state, align 8, !dbg !4874
  call void @llvm.dbg.declare(metadata i32* %finger, metadata !4877, metadata !DIExpression()), !dbg !4878
  %4 = load i8*, i8** %packet.addr, align 8, !dbg !4879
  %arrayidx = getelementptr i8, i8* %4, i64 1, !dbg !4879
  %5 = load i8, i8* %arrayidx, align 1, !dbg !4879
  %conv = zext i8 %5 to i32, !dbg !4879
  %shr = ashr i32 %conv, 4, !dbg !4880
  %sub = sub i32 %shr, 1, !dbg !4881
  store i32 %sub, i32* %finger, align 4, !dbg !4882
  %6 = load i32, i32* %finger, align 4, !dbg !4883
  %cmp = icmp uge i32 %6, 5, !dbg !4885
  br i1 %cmp, label %if.then, label %if.end, !dbg !4886

if.then:                                          ; preds = %entry
  %7 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4887
  %ps2dev = getelementptr inbounds %struct.psmouse, %struct.psmouse* %7, i32 0, i32 2, !dbg !4887
  %serio = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %ps2dev, i32 0, i32 0, !dbg !4887
  %8 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4887
  %dev = getelementptr inbounds %struct.serio, %struct.serio* %8, i32 0, i32 18, !dbg !4887
  %9 = load i32, i32* %finger, align 4, !dbg !4887
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 %9) #8, !dbg !4887
  br label %return, !dbg !4889

if.end:                                           ; preds = %entry
  %10 = load i8*, i8** %packet.addr, align 8, !dbg !4890
  %arrayidx3 = getelementptr i8, i8* %10, i64 0, !dbg !4890
  %11 = load i8, i8* %arrayidx3, align 1, !dbg !4890
  %conv4 = zext i8 %11 to i32, !dbg !4890
  %shr5 = ashr i32 %conv4, 4, !dbg !4891
  %and = and i32 %shr5, 1, !dbg !4892
  %tobool = icmp ne i32 %and, 0, !dbg !4893
  %12 = load %struct.focaltech_hw_state*, %struct.focaltech_hw_state** %state, align 8, !dbg !4894
  %pressed = getelementptr inbounds %struct.focaltech_hw_state, %struct.focaltech_hw_state* %12, i32 0, i32 2, !dbg !4895
  %frombool = zext i1 %tobool to i8, !dbg !4896
  store i8 %frombool, i8* %pressed, align 4, !dbg !4896
  %13 = load i8*, i8** %packet.addr, align 8, !dbg !4897
  %arrayidx6 = getelementptr i8, i8* %13, i64 1, !dbg !4897
  %14 = load i8, i8* %arrayidx6, align 1, !dbg !4897
  %conv7 = zext i8 %14 to i32, !dbg !4897
  %and8 = and i32 %conv7, 15, !dbg !4898
  %shl = shl i32 %and8, 8, !dbg !4899
  %15 = load i8*, i8** %packet.addr, align 8, !dbg !4900
  %arrayidx9 = getelementptr i8, i8* %15, i64 2, !dbg !4900
  %16 = load i8, i8* %arrayidx9, align 1, !dbg !4900
  %conv10 = zext i8 %16 to i32, !dbg !4900
  %or = or i32 %shl, %conv10, !dbg !4901
  %17 = load %struct.focaltech_hw_state*, %struct.focaltech_hw_state** %state, align 8, !dbg !4902
  %fingers = getelementptr inbounds %struct.focaltech_hw_state, %struct.focaltech_hw_state* %17, i32 0, i32 0, !dbg !4903
  %18 = load i32, i32* %finger, align 4, !dbg !4904
  %idxprom = zext i32 %18 to i64, !dbg !4902
  %arrayidx11 = getelementptr [5 x %struct.focaltech_finger_state], [5 x %struct.focaltech_finger_state]* %fingers, i64 0, i64 %idxprom, !dbg !4902
  %x = getelementptr inbounds %struct.focaltech_finger_state, %struct.focaltech_finger_state* %arrayidx11, i32 0, i32 2, !dbg !4905
  store i32 %or, i32* %x, align 4, !dbg !4906
  %19 = load i8*, i8** %packet.addr, align 8, !dbg !4907
  %arrayidx12 = getelementptr i8, i8* %19, i64 3, !dbg !4907
  %20 = load i8, i8* %arrayidx12, align 1, !dbg !4907
  %conv13 = zext i8 %20 to i32, !dbg !4907
  %shl14 = shl i32 %conv13, 8, !dbg !4908
  %21 = load i8*, i8** %packet.addr, align 8, !dbg !4909
  %arrayidx15 = getelementptr i8, i8* %21, i64 4, !dbg !4909
  %22 = load i8, i8* %arrayidx15, align 1, !dbg !4909
  %conv16 = zext i8 %22 to i32, !dbg !4909
  %or17 = or i32 %shl14, %conv16, !dbg !4910
  %23 = load %struct.focaltech_hw_state*, %struct.focaltech_hw_state** %state, align 8, !dbg !4911
  %fingers18 = getelementptr inbounds %struct.focaltech_hw_state, %struct.focaltech_hw_state* %23, i32 0, i32 0, !dbg !4912
  %24 = load i32, i32* %finger, align 4, !dbg !4913
  %idxprom19 = zext i32 %24 to i64, !dbg !4911
  %arrayidx20 = getelementptr [5 x %struct.focaltech_finger_state], [5 x %struct.focaltech_finger_state]* %fingers18, i64 0, i64 %idxprom19, !dbg !4911
  %y = getelementptr inbounds %struct.focaltech_finger_state, %struct.focaltech_finger_state* %arrayidx20, i32 0, i32 3, !dbg !4914
  store i32 %or17, i32* %y, align 4, !dbg !4915
  %25 = load i8*, i8** %packet.addr, align 8, !dbg !4916
  %arrayidx21 = getelementptr i8, i8* %25, i64 5, !dbg !4916
  %26 = load i8, i8* %arrayidx21, align 1, !dbg !4916
  %conv22 = zext i8 %26 to i32, !dbg !4916
  %shr23 = ashr i32 %conv22, 4, !dbg !4917
  %27 = load %struct.focaltech_hw_state*, %struct.focaltech_hw_state** %state, align 8, !dbg !4918
  %width = getelementptr inbounds %struct.focaltech_hw_state, %struct.focaltech_hw_state* %27, i32 0, i32 1, !dbg !4919
  store i32 %shr23, i32* %width, align 4, !dbg !4920
  %28 = load %struct.focaltech_hw_state*, %struct.focaltech_hw_state** %state, align 8, !dbg !4921
  %fingers24 = getelementptr inbounds %struct.focaltech_hw_state, %struct.focaltech_hw_state* %28, i32 0, i32 0, !dbg !4922
  %29 = load i32, i32* %finger, align 4, !dbg !4923
  %idxprom25 = zext i32 %29 to i64, !dbg !4921
  %arrayidx26 = getelementptr [5 x %struct.focaltech_finger_state], [5 x %struct.focaltech_finger_state]* %fingers24, i64 0, i64 %idxprom25, !dbg !4921
  %valid = getelementptr inbounds %struct.focaltech_finger_state, %struct.focaltech_finger_state* %arrayidx26, i32 0, i32 1, !dbg !4924
  store i8 1, i8* %valid, align 1, !dbg !4925
  br label %return, !dbg !4926

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4926
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @focaltech_process_rel_packet(%struct.psmouse* %psmouse, i8* %packet) #0 !dbg !4927 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %packet.addr = alloca i8*, align 8
  %priv = alloca %struct.focaltech_data*, align 8
  %state = alloca %struct.focaltech_hw_state*, align 8
  %finger1 = alloca i32, align 4
  %finger2 = alloca i32, align 4
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4928, metadata !DIExpression()), !dbg !4929
  store i8* %packet, i8** %packet.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %packet.addr, metadata !4930, metadata !DIExpression()), !dbg !4931
  call void @llvm.dbg.declare(metadata %struct.focaltech_data** %priv, metadata !4932, metadata !DIExpression()), !dbg !4933
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4934
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 0, !dbg !4935
  %1 = load i8*, i8** %private, align 8, !dbg !4935
  %2 = bitcast i8* %1 to %struct.focaltech_data*, !dbg !4934
  store %struct.focaltech_data* %2, %struct.focaltech_data** %priv, align 8, !dbg !4933
  call void @llvm.dbg.declare(metadata %struct.focaltech_hw_state** %state, metadata !4936, metadata !DIExpression()), !dbg !4937
  %3 = load %struct.focaltech_data*, %struct.focaltech_data** %priv, align 8, !dbg !4938
  %state1 = getelementptr inbounds %struct.focaltech_data, %struct.focaltech_data* %3, i32 0, i32 2, !dbg !4939
  store %struct.focaltech_hw_state* %state1, %struct.focaltech_hw_state** %state, align 8, !dbg !4937
  call void @llvm.dbg.declare(metadata i32* %finger1, metadata !4940, metadata !DIExpression()), !dbg !4941
  call void @llvm.dbg.declare(metadata i32* %finger2, metadata !4942, metadata !DIExpression()), !dbg !4943
  %4 = load i8*, i8** %packet.addr, align 8, !dbg !4944
  %arrayidx = getelementptr i8, i8* %4, i64 0, !dbg !4944
  %5 = load i8, i8* %arrayidx, align 1, !dbg !4944
  %conv = zext i8 %5 to i32, !dbg !4944
  %shr = ashr i32 %conv, 7, !dbg !4945
  %tobool = icmp ne i32 %shr, 0, !dbg !4944
  %6 = load %struct.focaltech_hw_state*, %struct.focaltech_hw_state** %state, align 8, !dbg !4946
  %pressed = getelementptr inbounds %struct.focaltech_hw_state, %struct.focaltech_hw_state* %6, i32 0, i32 2, !dbg !4947
  %frombool = zext i1 %tobool to i8, !dbg !4948
  store i8 %frombool, i8* %pressed, align 4, !dbg !4948
  %7 = load i8*, i8** %packet.addr, align 8, !dbg !4949
  %arrayidx2 = getelementptr i8, i8* %7, i64 0, !dbg !4949
  %8 = load i8, i8* %arrayidx2, align 1, !dbg !4949
  %conv3 = zext i8 %8 to i32, !dbg !4949
  %shr4 = ashr i32 %conv3, 4, !dbg !4950
  %and = and i32 %shr4, 7, !dbg !4951
  %sub = sub i32 %and, 1, !dbg !4952
  store i32 %sub, i32* %finger1, align 4, !dbg !4953
  %9 = load i32, i32* %finger1, align 4, !dbg !4954
  %cmp = icmp slt i32 %9, 5, !dbg !4956
  br i1 %cmp, label %if.then, label %if.else, !dbg !4957

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** %packet.addr, align 8, !dbg !4958
  %arrayidx6 = getelementptr i8, i8* %10, i64 1, !dbg !4958
  %11 = load i8, i8* %arrayidx6, align 1, !dbg !4958
  %conv7 = sext i8 %11 to i32, !dbg !4960
  %12 = load %struct.focaltech_hw_state*, %struct.focaltech_hw_state** %state, align 8, !dbg !4961
  %fingers = getelementptr inbounds %struct.focaltech_hw_state, %struct.focaltech_hw_state* %12, i32 0, i32 0, !dbg !4962
  %13 = load i32, i32* %finger1, align 4, !dbg !4963
  %idxprom = sext i32 %13 to i64, !dbg !4961
  %arrayidx8 = getelementptr [5 x %struct.focaltech_finger_state], [5 x %struct.focaltech_finger_state]* %fingers, i64 0, i64 %idxprom, !dbg !4961
  %x = getelementptr inbounds %struct.focaltech_finger_state, %struct.focaltech_finger_state* %arrayidx8, i32 0, i32 2, !dbg !4964
  %14 = load i32, i32* %x, align 4, !dbg !4965
  %add = add i32 %14, %conv7, !dbg !4965
  store i32 %add, i32* %x, align 4, !dbg !4965
  %15 = load i8*, i8** %packet.addr, align 8, !dbg !4966
  %arrayidx9 = getelementptr i8, i8* %15, i64 2, !dbg !4966
  %16 = load i8, i8* %arrayidx9, align 1, !dbg !4966
  %conv10 = sext i8 %16 to i32, !dbg !4967
  %17 = load %struct.focaltech_hw_state*, %struct.focaltech_hw_state** %state, align 8, !dbg !4968
  %fingers11 = getelementptr inbounds %struct.focaltech_hw_state, %struct.focaltech_hw_state* %17, i32 0, i32 0, !dbg !4969
  %18 = load i32, i32* %finger1, align 4, !dbg !4970
  %idxprom12 = sext i32 %18 to i64, !dbg !4968
  %arrayidx13 = getelementptr [5 x %struct.focaltech_finger_state], [5 x %struct.focaltech_finger_state]* %fingers11, i64 0, i64 %idxprom12, !dbg !4968
  %y = getelementptr inbounds %struct.focaltech_finger_state, %struct.focaltech_finger_state* %arrayidx13, i32 0, i32 3, !dbg !4971
  %19 = load i32, i32* %y, align 4, !dbg !4972
  %add14 = add i32 %19, %conv10, !dbg !4972
  store i32 %add14, i32* %y, align 4, !dbg !4972
  br label %if.end, !dbg !4973

if.else:                                          ; preds = %entry
  %20 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4974
  %ps2dev = getelementptr inbounds %struct.psmouse, %struct.psmouse* %20, i32 0, i32 2, !dbg !4974
  %serio = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %ps2dev, i32 0, i32 0, !dbg !4974
  %21 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4974
  %dev = getelementptr inbounds %struct.serio, %struct.serio* %21, i32 0, i32 18, !dbg !4974
  %22 = load i32, i32* %finger1, align 4, !dbg !4974
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0), i32 %22) #8, !dbg !4974
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = load i8*, i8** %packet.addr, align 8, !dbg !4976
  %arrayidx15 = getelementptr i8, i8* %23, i64 3, !dbg !4976
  %24 = load i8, i8* %arrayidx15, align 1, !dbg !4976
  %conv16 = zext i8 %24 to i32, !dbg !4976
  %shr17 = ashr i32 %conv16, 4, !dbg !4977
  %and18 = and i32 %shr17, 7, !dbg !4978
  %sub19 = sub i32 %and18, 1, !dbg !4979
  store i32 %sub19, i32* %finger2, align 4, !dbg !4980
  %25 = load i32, i32* %finger2, align 4, !dbg !4981
  %cmp20 = icmp slt i32 %25, 5, !dbg !4983
  br i1 %cmp20, label %if.then22, label %if.end37, !dbg !4984

if.then22:                                        ; preds = %if.end
  %26 = load i8*, i8** %packet.addr, align 8, !dbg !4985
  %arrayidx23 = getelementptr i8, i8* %26, i64 4, !dbg !4985
  %27 = load i8, i8* %arrayidx23, align 1, !dbg !4985
  %conv24 = sext i8 %27 to i32, !dbg !4987
  %28 = load %struct.focaltech_hw_state*, %struct.focaltech_hw_state** %state, align 8, !dbg !4988
  %fingers25 = getelementptr inbounds %struct.focaltech_hw_state, %struct.focaltech_hw_state* %28, i32 0, i32 0, !dbg !4989
  %29 = load i32, i32* %finger2, align 4, !dbg !4990
  %idxprom26 = sext i32 %29 to i64, !dbg !4988
  %arrayidx27 = getelementptr [5 x %struct.focaltech_finger_state], [5 x %struct.focaltech_finger_state]* %fingers25, i64 0, i64 %idxprom26, !dbg !4988
  %x28 = getelementptr inbounds %struct.focaltech_finger_state, %struct.focaltech_finger_state* %arrayidx27, i32 0, i32 2, !dbg !4991
  %30 = load i32, i32* %x28, align 4, !dbg !4992
  %add29 = add i32 %30, %conv24, !dbg !4992
  store i32 %add29, i32* %x28, align 4, !dbg !4992
  %31 = load i8*, i8** %packet.addr, align 8, !dbg !4993
  %arrayidx30 = getelementptr i8, i8* %31, i64 5, !dbg !4993
  %32 = load i8, i8* %arrayidx30, align 1, !dbg !4993
  %conv31 = sext i8 %32 to i32, !dbg !4994
  %33 = load %struct.focaltech_hw_state*, %struct.focaltech_hw_state** %state, align 8, !dbg !4995
  %fingers32 = getelementptr inbounds %struct.focaltech_hw_state, %struct.focaltech_hw_state* %33, i32 0, i32 0, !dbg !4996
  %34 = load i32, i32* %finger2, align 4, !dbg !4997
  %idxprom33 = sext i32 %34 to i64, !dbg !4995
  %arrayidx34 = getelementptr [5 x %struct.focaltech_finger_state], [5 x %struct.focaltech_finger_state]* %fingers32, i64 0, i64 %idxprom33, !dbg !4995
  %y35 = getelementptr inbounds %struct.focaltech_finger_state, %struct.focaltech_finger_state* %arrayidx34, i32 0, i32 3, !dbg !4998
  %35 = load i32, i32* %y35, align 4, !dbg !4999
  %add36 = add i32 %35, %conv31, !dbg !4999
  store i32 %add36, i32* %y35, align 4, !dbg !4999
  br label %if.end37, !dbg !5000

if.end37:                                         ; preds = %if.then22, %if.end
  ret void, !dbg !5001
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @focaltech_report_state(%struct.psmouse* %psmouse) #0 !dbg !5002 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %priv = alloca %struct.focaltech_data*, align 8
  %state = alloca %struct.focaltech_hw_state*, align 8
  %dev = alloca %struct.input_dev*, align 8
  %i = alloca i32, align 4
  %finger = alloca %struct.focaltech_finger_state*, align 8
  %active = alloca i8, align 1
  %clamped_x = alloca i32, align 4
  %clamped_y = alloca i32, align 4
  %__UNIQUE_ID___x202 = alloca i32, align 4
  %__UNIQUE_ID___x200 = alloca i32, align 4
  %__UNIQUE_ID___y201 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___y203 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %__UNIQUE_ID___x206 = alloca i32, align 4
  %__UNIQUE_ID___x204 = alloca i32, align 4
  %__UNIQUE_ID___y205 = alloca i32, align 4
  %tmp14 = alloca i32, align 4
  %__UNIQUE_ID___y207 = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !5003, metadata !DIExpression()), !dbg !5004
  call void @llvm.dbg.declare(metadata %struct.focaltech_data** %priv, metadata !5005, metadata !DIExpression()), !dbg !5006
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !5007
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 0, !dbg !5008
  %1 = load i8*, i8** %private, align 8, !dbg !5008
  %2 = bitcast i8* %1 to %struct.focaltech_data*, !dbg !5007
  store %struct.focaltech_data* %2, %struct.focaltech_data** %priv, align 8, !dbg !5006
  call void @llvm.dbg.declare(metadata %struct.focaltech_hw_state** %state, metadata !5009, metadata !DIExpression()), !dbg !5010
  %3 = load %struct.focaltech_data*, %struct.focaltech_data** %priv, align 8, !dbg !5011
  %state1 = getelementptr inbounds %struct.focaltech_data, %struct.focaltech_data* %3, i32 0, i32 2, !dbg !5012
  store %struct.focaltech_hw_state* %state1, %struct.focaltech_hw_state** %state, align 8, !dbg !5010
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev, metadata !5013, metadata !DIExpression()), !dbg !5014
  %4 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !5015
  %dev2 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %4, i32 0, i32 1, !dbg !5016
  %5 = load %struct.input_dev*, %struct.input_dev** %dev2, align 8, !dbg !5016
  store %struct.input_dev* %5, %struct.input_dev** %dev, align 8, !dbg !5014
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5017, metadata !DIExpression()), !dbg !5018
  store i32 0, i32* %i, align 4, !dbg !5019
  br label %for.cond, !dbg !5021

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !dbg !5022
  %cmp = icmp slt i32 %6, 5, !dbg !5024
  br i1 %cmp, label %for.body, label %for.end, !dbg !5025

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.focaltech_finger_state** %finger, metadata !5026, metadata !DIExpression()), !dbg !5029
  %7 = load %struct.focaltech_hw_state*, %struct.focaltech_hw_state** %state, align 8, !dbg !5030
  %fingers = getelementptr inbounds %struct.focaltech_hw_state, %struct.focaltech_hw_state* %7, i32 0, i32 0, !dbg !5031
  %8 = load i32, i32* %i, align 4, !dbg !5032
  %idxprom = sext i32 %8 to i64, !dbg !5030
  %arrayidx = getelementptr [5 x %struct.focaltech_finger_state], [5 x %struct.focaltech_finger_state]* %fingers, i64 0, i64 %idxprom, !dbg !5030
  store %struct.focaltech_finger_state* %arrayidx, %struct.focaltech_finger_state** %finger, align 8, !dbg !5029
  call void @llvm.dbg.declare(metadata i8* %active, metadata !5033, metadata !DIExpression()), !dbg !5034
  %9 = load %struct.focaltech_finger_state*, %struct.focaltech_finger_state** %finger, align 8, !dbg !5035
  %active3 = getelementptr inbounds %struct.focaltech_finger_state, %struct.focaltech_finger_state* %9, i32 0, i32 0, !dbg !5036
  %10 = load i8, i8* %active3, align 4, !dbg !5036
  %tobool = trunc i8 %10 to i1, !dbg !5036
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5037

land.rhs:                                         ; preds = %for.body
  %11 = load %struct.focaltech_finger_state*, %struct.focaltech_finger_state** %finger, align 8, !dbg !5038
  %valid = getelementptr inbounds %struct.focaltech_finger_state, %struct.focaltech_finger_state* %11, i32 0, i32 1, !dbg !5039
  %12 = load i8, i8* %valid, align 1, !dbg !5039
  %tobool4 = trunc i8 %12 to i1, !dbg !5039
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %13 = phi i1 [ false, %for.body ], [ %tobool4, %land.rhs ], !dbg !5040
  %frombool = zext i1 %13 to i8, !dbg !5034
  store i8 %frombool, i8* %active, align 1, !dbg !5034
  %14 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !5041
  %15 = load i32, i32* %i, align 4, !dbg !5042
  call void @input_mt_slot(%struct.input_dev* %14, i32 %15) #7, !dbg !5043
  %16 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !5044
  %17 = load i8, i8* %active, align 1, !dbg !5045
  %tobool5 = trunc i8 %17 to i1, !dbg !5045
  %call = call zeroext i1 @input_mt_report_slot_state(%struct.input_dev* %16, i32 0, i1 zeroext %tobool5) #7, !dbg !5046
  %18 = load i8, i8* %active, align 1, !dbg !5047
  %tobool6 = trunc i8 %18 to i1, !dbg !5047
  br i1 %tobool6, label %if.then, label %if.end, !dbg !5049

if.then:                                          ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %clamped_x, metadata !5050, metadata !DIExpression()), !dbg !5052
  call void @llvm.dbg.declare(metadata i32* %clamped_y, metadata !5053, metadata !DIExpression()), !dbg !5054
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x202, metadata !5055, metadata !DIExpression()), !dbg !5057
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x200, metadata !5058, metadata !DIExpression()), !dbg !5060
  %19 = load %struct.focaltech_finger_state*, %struct.focaltech_finger_state** %finger, align 8, !dbg !5060
  %x = getelementptr inbounds %struct.focaltech_finger_state, %struct.focaltech_finger_state* %19, i32 0, i32 2, !dbg !5060
  %20 = load i32, i32* %x, align 4, !dbg !5060
  store i32 %20, i32* %__UNIQUE_ID___x200, align 4, !dbg !5060
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y201, metadata !5061, metadata !DIExpression()), !dbg !5060
  store i32 0, i32* %__UNIQUE_ID___y201, align 4, !dbg !5060
  %21 = load i32, i32* %__UNIQUE_ID___x200, align 4, !dbg !5060
  %22 = load i32, i32* %__UNIQUE_ID___y201, align 4, !dbg !5060
  %cmp7 = icmp ugt i32 %21, %22, !dbg !5060
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !5060

cond.true:                                        ; preds = %if.then
  %23 = load i32, i32* %__UNIQUE_ID___x200, align 4, !dbg !5060
  br label %cond.end, !dbg !5060

cond.false:                                       ; preds = %if.then
  %24 = load i32, i32* %__UNIQUE_ID___y201, align 4, !dbg !5060
  br label %cond.end, !dbg !5060

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %24, %cond.false ], !dbg !5060
  store i32 %cond, i32* %tmp, align 4, !dbg !5060
  %25 = load i32, i32* %tmp, align 4, !dbg !5060
  store i32 %25, i32* %__UNIQUE_ID___x202, align 4, !dbg !5057
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y203, metadata !5062, metadata !DIExpression()), !dbg !5057
  %26 = load %struct.focaltech_data*, %struct.focaltech_data** %priv, align 8, !dbg !5057
  %x_max = getelementptr inbounds %struct.focaltech_data, %struct.focaltech_data* %26, i32 0, i32 0, !dbg !5057
  %27 = load i32, i32* %x_max, align 4, !dbg !5057
  store i32 %27, i32* %__UNIQUE_ID___y203, align 4, !dbg !5057
  %28 = load i32, i32* %__UNIQUE_ID___x202, align 4, !dbg !5057
  %29 = load i32, i32* %__UNIQUE_ID___y203, align 4, !dbg !5057
  %cmp9 = icmp ult i32 %28, %29, !dbg !5057
  br i1 %cmp9, label %cond.true10, label %cond.false11, !dbg !5057

cond.true10:                                      ; preds = %cond.end
  %30 = load i32, i32* %__UNIQUE_ID___x202, align 4, !dbg !5057
  br label %cond.end12, !dbg !5057

cond.false11:                                     ; preds = %cond.end
  %31 = load i32, i32* %__UNIQUE_ID___y203, align 4, !dbg !5057
  br label %cond.end12, !dbg !5057

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i32 [ %30, %cond.true10 ], [ %31, %cond.false11 ], !dbg !5057
  store i32 %cond13, i32* %tmp8, align 4, !dbg !5057
  %32 = load i32, i32* %tmp8, align 4, !dbg !5057
  store i32 %32, i32* %clamped_x, align 4, !dbg !5063
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x206, metadata !5064, metadata !DIExpression()), !dbg !5066
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x204, metadata !5067, metadata !DIExpression()), !dbg !5069
  %33 = load %struct.focaltech_finger_state*, %struct.focaltech_finger_state** %finger, align 8, !dbg !5069
  %y = getelementptr inbounds %struct.focaltech_finger_state, %struct.focaltech_finger_state* %33, i32 0, i32 3, !dbg !5069
  %34 = load i32, i32* %y, align 4, !dbg !5069
  store i32 %34, i32* %__UNIQUE_ID___x204, align 4, !dbg !5069
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y205, metadata !5070, metadata !DIExpression()), !dbg !5069
  store i32 0, i32* %__UNIQUE_ID___y205, align 4, !dbg !5069
  %35 = load i32, i32* %__UNIQUE_ID___x204, align 4, !dbg !5069
  %36 = load i32, i32* %__UNIQUE_ID___y205, align 4, !dbg !5069
  %cmp15 = icmp ugt i32 %35, %36, !dbg !5069
  br i1 %cmp15, label %cond.true16, label %cond.false17, !dbg !5069

cond.true16:                                      ; preds = %cond.end12
  %37 = load i32, i32* %__UNIQUE_ID___x204, align 4, !dbg !5069
  br label %cond.end18, !dbg !5069

cond.false17:                                     ; preds = %cond.end12
  %38 = load i32, i32* %__UNIQUE_ID___y205, align 4, !dbg !5069
  br label %cond.end18, !dbg !5069

cond.end18:                                       ; preds = %cond.false17, %cond.true16
  %cond19 = phi i32 [ %37, %cond.true16 ], [ %38, %cond.false17 ], !dbg !5069
  store i32 %cond19, i32* %tmp14, align 4, !dbg !5069
  %39 = load i32, i32* %tmp14, align 4, !dbg !5069
  store i32 %39, i32* %__UNIQUE_ID___x206, align 4, !dbg !5066
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y207, metadata !5071, metadata !DIExpression()), !dbg !5066
  %40 = load %struct.focaltech_data*, %struct.focaltech_data** %priv, align 8, !dbg !5066
  %y_max = getelementptr inbounds %struct.focaltech_data, %struct.focaltech_data* %40, i32 0, i32 1, !dbg !5066
  %41 = load i32, i32* %y_max, align 4, !dbg !5066
  store i32 %41, i32* %__UNIQUE_ID___y207, align 4, !dbg !5066
  %42 = load i32, i32* %__UNIQUE_ID___x206, align 4, !dbg !5066
  %43 = load i32, i32* %__UNIQUE_ID___y207, align 4, !dbg !5066
  %cmp21 = icmp ult i32 %42, %43, !dbg !5066
  br i1 %cmp21, label %cond.true22, label %cond.false23, !dbg !5066

cond.true22:                                      ; preds = %cond.end18
  %44 = load i32, i32* %__UNIQUE_ID___x206, align 4, !dbg !5066
  br label %cond.end24, !dbg !5066

cond.false23:                                     ; preds = %cond.end18
  %45 = load i32, i32* %__UNIQUE_ID___y207, align 4, !dbg !5066
  br label %cond.end24, !dbg !5066

cond.end24:                                       ; preds = %cond.false23, %cond.true22
  %cond25 = phi i32 [ %44, %cond.true22 ], [ %45, %cond.false23 ], !dbg !5066
  store i32 %cond25, i32* %tmp20, align 4, !dbg !5066
  %46 = load i32, i32* %tmp20, align 4, !dbg !5066
  store i32 %46, i32* %clamped_y, align 4, !dbg !5072
  %47 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !5073
  %48 = load i32, i32* %clamped_x, align 4, !dbg !5074
  call void @input_report_abs(%struct.input_dev* %47, i32 53, i32 %48) #7, !dbg !5075
  %49 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !5076
  %50 = load %struct.focaltech_data*, %struct.focaltech_data** %priv, align 8, !dbg !5077
  %y_max26 = getelementptr inbounds %struct.focaltech_data, %struct.focaltech_data* %50, i32 0, i32 1, !dbg !5078
  %51 = load i32, i32* %y_max26, align 4, !dbg !5078
  %52 = load i32, i32* %clamped_y, align 4, !dbg !5079
  %sub = sub i32 %51, %52, !dbg !5080
  call void @input_report_abs(%struct.input_dev* %49, i32 54, i32 %sub) #7, !dbg !5081
  %53 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !5082
  %54 = load %struct.focaltech_hw_state*, %struct.focaltech_hw_state** %state, align 8, !dbg !5083
  %width = getelementptr inbounds %struct.focaltech_hw_state, %struct.focaltech_hw_state* %54, i32 0, i32 1, !dbg !5084
  %55 = load i32, i32* %width, align 4, !dbg !5084
  call void @input_report_abs(%struct.input_dev* %53, i32 28, i32 %55) #7, !dbg !5085
  br label %if.end, !dbg !5086

if.end:                                           ; preds = %cond.end24, %land.end
  br label %for.inc, !dbg !5087

for.inc:                                          ; preds = %if.end
  %56 = load i32, i32* %i, align 4, !dbg !5088
  %inc = add i32 %56, 1, !dbg !5088
  store i32 %inc, i32* %i, align 4, !dbg !5088
  br label %for.cond, !dbg !5089, !llvm.loop !5090

for.end:                                          ; preds = %for.cond
  %57 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !5092
  call void @input_mt_report_pointer_emulation(%struct.input_dev* %57, i1 zeroext true) #7, !dbg !5093
  %58 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !5094
  %59 = load %struct.focaltech_hw_state*, %struct.focaltech_hw_state** %state, align 8, !dbg !5095
  %pressed = getelementptr inbounds %struct.focaltech_hw_state, %struct.focaltech_hw_state* %59, i32 0, i32 2, !dbg !5096
  %60 = load i8, i8* %pressed, align 4, !dbg !5096
  %tobool27 = trunc i8 %60 to i1, !dbg !5096
  %conv = zext i1 %tobool27 to i32, !dbg !5095
  call void @input_report_key(%struct.input_dev* %58, i32 272, i32 %conv) #7, !dbg !5097
  %61 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !5098
  call void @input_sync(%struct.input_dev* %61) #7, !dbg !5099
  ret void, !dbg !5100
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_mt_slot(%struct.input_dev* %dev, i32 %slot) #0 !dbg !5101 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %slot.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5104, metadata !DIExpression()), !dbg !5105
  store i32 %slot, i32* %slot.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %slot.addr, metadata !5106, metadata !DIExpression()), !dbg !5107
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5108
  %1 = load i32, i32* %slot.addr, align 4, !dbg !5109
  call void @input_event(%struct.input_dev* %0, i32 3, i32 47, i32 %1) #7, !dbg !5110
  ret void, !dbg !5111
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @input_mt_report_slot_state(%struct.input_dev*, i32, i1 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_abs(%struct.input_dev* %dev, i32 %code, i32 %value) #0 !dbg !5112 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5115, metadata !DIExpression()), !dbg !5116
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !5117, metadata !DIExpression()), !dbg !5118
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5119, metadata !DIExpression()), !dbg !5120
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5121
  %1 = load i32, i32* %code.addr, align 4, !dbg !5122
  %2 = load i32, i32* %value.addr, align 4, !dbg !5123
  call void @input_event(%struct.input_dev* %0, i32 3, i32 %1, i32 %2) #7, !dbg !5124
  ret void, !dbg !5125
}

; Function Attrs: noredzone
declare dso_local void @input_mt_report_pointer_emulation(%struct.input_dev*, i1 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_key(%struct.input_dev* %dev, i32 %code, i32 %value) #0 !dbg !5126 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5127, metadata !DIExpression()), !dbg !5128
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !5129, metadata !DIExpression()), !dbg !5130
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5131, metadata !DIExpression()), !dbg !5132
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5133
  %1 = load i32, i32* %code.addr, align 4, !dbg !5134
  %2 = load i32, i32* %value.addr, align 4, !dbg !5135
  %tobool = icmp ne i32 %2, 0, !dbg !5136
  %lnot = xor i1 %tobool, true, !dbg !5136
  %lnot1 = xor i1 %lnot, true, !dbg !5137
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5137
  call void @input_event(%struct.input_dev* %0, i32 1, i32 %1, i32 %lnot.ext) #7, !dbg !5138
  ret void, !dbg !5139
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_sync(%struct.input_dev* %dev) #0 !dbg !5140 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5141, metadata !DIExpression()), !dbg !5142
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5143
  call void @input_event(%struct.input_dev* %0, i32 0, i32 0, i32 0) #7, !dbg !5144
  ret void, !dbg !5145
}

; Function Attrs: noredzone
declare dso_local void @input_event(%struct.input_dev*, i32, i32, i32) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!157, !158, !159, !160}
!llvm.ident = !{!161}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "focaltech_pnp_ids", scope: !2, file: !3, line: 22, type: !151, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !141, globals: !150, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/mouse/focaltech.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18, !24, !30, !39, !47, !53, !59, !66, !74, !80, !86, !113, !120, !125, !129, !136}
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
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !130, line: 305, baseType: !7, size: 32, elements: !131)
!130 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!131 = !{!132, !133, !134, !135}
!132 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!133 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!134 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!135 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !137, line: 10, baseType: !7, size: 32, elements: !138)
!137 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!138 = !{!139, !140}
!139 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!140 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!141 = !{!142, !144, !145, !146, !149, !7}
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !143, line: 148, baseType: !7)
!143 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!145 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !148)
!148 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!149 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!150 = !{!0}
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 256, elements: !155)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!155 = !{!156}
!156 = !DISubrange(count: 4)
!157 = !{i32 7, !"Dwarf Version", i32 4}
!158 = !{i32 2, !"Debug Info Version", i32 3}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 1, !"Code Model", i32 2}
!161 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!162 = distinct !DISubprogram(name: "focaltech_detect", scope: !3, file: !3, line: 35, type: !163, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !360)
!163 = !DISubroutineType(types: !164)
!164 = !{!165, !166, !508}
!165 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse", file: !87, line: 89, size: 3648, elements: !168)
!168 = !{!169, !170, !3815, !3891, !3898, !3899, !3900, !3918, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3944, !3948, !3949, !3953, !3954, !3955, !3959, !3960, !3961, !3962}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !167, file: !87, line: 90, baseType: !144, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !167, file: !87, line: 91, baseType: !171, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !173, line: 131, size: 10432, elements: !174)
!173 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!174 = !{!175, !176, !177, !178, !189, !194, !195, !199, !200, !201, !202, !203, !204, !208, !209, !210, !211, !212, !213, !232, !237, !3006, !3009, !3010, !3022, !3024, !3045, !3055, !3056, !3057, !3058, !3059, !3063, !3067, !3071, !3075, !3153, !3154, !3155, !3156, !3157, !3806, !3807, !3808, !3809, !3810, !3812, !3813}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !172, file: !173, line: 132, baseType: !153, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !172, file: !173, line: 133, baseType: !153, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !172, file: !173, line: 134, baseType: !153, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !172, file: !173, line: 135, baseType: !179, size: 64, offset: 192)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !180, line: 59, size: 64, elements: !181)
!180 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!181 = !{!182, !186, !187, !188}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !179, file: !180, line: 60, baseType: !183, size: 16)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !184, line: 24, baseType: !185)
!184 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!185 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !179, file: !180, line: 61, baseType: !183, size: 16, offset: 16)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !179, file: !180, line: 62, baseType: !183, size: 16, offset: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !179, file: !180, line: 63, baseType: !183, size: 16, offset: 48)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !172, file: !173, line: 137, baseType: !190, size: 64, offset: 256)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 64, elements: !192)
!191 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!192 = !{!193}
!193 = !DISubrange(count: 1)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !172, file: !173, line: 139, baseType: !190, size: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !172, file: !173, line: 140, baseType: !196, size: 768, offset: 384)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 768, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 12)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !172, file: !173, line: 141, baseType: !190, size: 64, offset: 1152)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !172, file: !173, line: 142, baseType: !190, size: 64, offset: 1216)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !172, file: !173, line: 143, baseType: !190, size: 64, offset: 1280)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !172, file: !173, line: 144, baseType: !190, size: 64, offset: 1344)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !172, file: !173, line: 145, baseType: !190, size: 64, offset: 1408)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !172, file: !173, line: 146, baseType: !205, size: 128, offset: 1472)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 128, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 2)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !172, file: !173, line: 147, baseType: !190, size: 64, offset: 1600)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !172, file: !173, line: 149, baseType: !7, size: 32, offset: 1664)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !172, file: !173, line: 151, baseType: !7, size: 32, offset: 1696)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !172, file: !173, line: 152, baseType: !7, size: 32, offset: 1728)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !172, file: !173, line: 153, baseType: !144, size: 64, offset: 1792)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !172, file: !173, line: 155, baseType: !214, size: 64, offset: 1856)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!165, !171, !217, !231}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !180, line: 114, size: 320, elements: !220)
!220 = !{!221, !223, !224, !225, !227}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !219, file: !180, line: 116, baseType: !222, size: 8)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !184, line: 21, baseType: !145)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !219, file: !180, line: 117, baseType: !222, size: 8, offset: 8)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !219, file: !180, line: 118, baseType: !183, size: 16, offset: 16)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !219, file: !180, line: 119, baseType: !226, size: 32, offset: 32)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !184, line: 27, baseType: !7)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !219, file: !180, line: 120, baseType: !228, size: 256, offset: 64)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 256, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 32)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !172, file: !173, line: 158, baseType: !233, size: 64, offset: 1920)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!165, !171, !236}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !172, file: !173, line: 161, baseType: !238, size: 64, offset: 1984)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !173, line: 534, size: 896, elements: !240)
!240 = !{!241, !310, !314, !318, !324, !325, !329, !330, !331, !367, !368, !369}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !239, file: !173, line: 535, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!165, !171, !245, !245}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !180, line: 450, size: 384, elements: !247)
!247 = !{!248, !249, !252, !253, !258, !263}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !246, file: !180, line: 451, baseType: !183, size: 16)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !246, file: !180, line: 452, baseType: !250, size: 16, offset: 16)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !184, line: 23, baseType: !251)
!251 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !246, file: !180, line: 453, baseType: !183, size: 16, offset: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !246, file: !180, line: 454, baseType: !254, size: 32, offset: 48)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !180, line: 316, size: 32, elements: !255)
!255 = !{!256, !257}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !254, file: !180, line: 317, baseType: !183, size: 16)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !254, file: !180, line: 318, baseType: !183, size: 16, offset: 16)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !246, file: !180, line: 455, baseType: !259, size: 32, offset: 80)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !180, line: 306, size: 32, elements: !260)
!260 = !{!261, !262}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !259, file: !180, line: 307, baseType: !183, size: 16)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !259, file: !180, line: 308, baseType: !183, size: 16, offset: 16)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !246, file: !180, line: 463, baseType: !264, size: 256, offset: 128)
!264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !246, file: !180, line: 457, size: 256, elements: !265)
!265 = !{!266, !277, !283, !295, !305}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !264, file: !180, line: 458, baseType: !267, size: 80)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !180, line: 345, size: 80, elements: !268)
!268 = !{!269, !270}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !267, file: !180, line: 346, baseType: !250, size: 16)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !267, file: !180, line: 347, baseType: !271, size: 64, offset: 16)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !180, line: 333, size: 64, elements: !272)
!272 = !{!273, !274, !275, !276}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !271, file: !180, line: 334, baseType: !183, size: 16)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !271, file: !180, line: 335, baseType: !183, size: 16, offset: 16)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !271, file: !180, line: 336, baseType: !183, size: 16, offset: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !271, file: !180, line: 337, baseType: !183, size: 16, offset: 48)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !264, file: !180, line: 459, baseType: !278, size: 96)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !180, line: 356, size: 96, elements: !279)
!279 = !{!280, !281, !282}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !278, file: !180, line: 357, baseType: !250, size: 16)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !278, file: !180, line: 358, baseType: !250, size: 16, offset: 16)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !278, file: !180, line: 359, baseType: !271, size: 64, offset: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !264, file: !180, line: 460, baseType: !284, size: 256)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !180, line: 401, size: 256, elements: !285)
!285 = !{!286, !287, !288, !289, !290, !291, !292, !293}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !284, file: !180, line: 402, baseType: !183, size: 16)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !284, file: !180, line: 403, baseType: !183, size: 16, offset: 16)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !284, file: !180, line: 404, baseType: !250, size: 16, offset: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !284, file: !180, line: 405, baseType: !250, size: 16, offset: 48)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !284, file: !180, line: 406, baseType: !183, size: 16, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !284, file: !180, line: 408, baseType: !271, size: 64, offset: 80)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !284, file: !180, line: 410, baseType: !226, size: 32, offset: 160)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !284, file: !180, line: 411, baseType: !294, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !264, file: !180, line: 461, baseType: !296, size: 192)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 192, elements: !206)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !180, line: 372, size: 96, elements: !298)
!298 = !{!299, !300, !301, !302, !303, !304}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !297, file: !180, line: 373, baseType: !183, size: 16)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !297, file: !180, line: 374, baseType: !183, size: 16, offset: 16)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !297, file: !180, line: 376, baseType: !250, size: 16, offset: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !297, file: !180, line: 377, baseType: !250, size: 16, offset: 48)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !297, file: !180, line: 379, baseType: !183, size: 16, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !297, file: !180, line: 380, baseType: !250, size: 16, offset: 80)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !264, file: !180, line: 462, baseType: !306, size: 32)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !180, line: 422, size: 32, elements: !307)
!307 = !{!308, !309}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !306, file: !180, line: 423, baseType: !183, size: 16)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !306, file: !180, line: 424, baseType: !183, size: 16, offset: 16)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !239, file: !173, line: 537, baseType: !311, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!165, !171, !165}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !239, file: !173, line: 539, baseType: !315, size: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!165, !171, !165, !165}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !239, file: !173, line: 540, baseType: !319, size: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !171, !322}
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !323, line: 19, baseType: !183)
!323 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!324 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !239, file: !173, line: 541, baseType: !319, size: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !239, file: !173, line: 543, baseType: !326, size: 64, offset: 320)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !238}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !239, file: !173, line: 545, baseType: !144, size: 64, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !239, file: !173, line: 547, baseType: !205, size: 128, offset: 448)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !239, file: !173, line: 549, baseType: !332, size: 192, offset: 576)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !333, line: 53, size: 192, elements: !334)
!333 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!334 = !{!335, !345, !361}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !332, file: !333, line: 54, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !337, line: 13, baseType: !338)
!337 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !143, line: 175, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 173, size: 64, elements: !340)
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !339, file: !143, line: 174, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !323, line: 22, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !184, line: 30, baseType: !344)
!344 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !332, file: !333, line: 55, baseType: !346, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !347, line: 83, baseType: !348)
!347 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !347, line: 71, elements: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, scope: !348, file: !347, line: 72, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !348, file: !347, line: 72, elements: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !351, file: !347, line: 73, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !347, line: 20, elements: !355)
!355 = !{!356}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !354, file: !347, line: 21, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !358, line: 25, baseType: !359)
!358 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !358, line: 25, elements: !360)
!360 = !{}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !332, file: !333, line: 59, baseType: !362, size: 128, offset: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !143, line: 178, size: 128, elements: !363)
!363 = !{!364, !366}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !362, file: !143, line: 179, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !362, file: !143, line: 179, baseType: !365, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !239, file: !173, line: 551, baseType: !165, size: 32, offset: 768)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !239, file: !173, line: 552, baseType: !245, size: 64, offset: 832)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !239, file: !173, line: 553, baseType: !370, offset: 896)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, elements: !2222)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !373)
!373 = !{!374, !392, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2989, !2990, !2999, !3000, !3001, !3002, !3003, !3004, !3005}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !372, file: !31, line: 920, baseType: !375, size: 128)
!375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !372, file: !31, line: 917, size: 128, elements: !376)
!376 = !{!377, !383}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !375, file: !31, line: 918, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !379, line: 58, size: 64, elements: !380)
!379 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !378, file: !379, line: 59, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !375, file: !31, line: 919, baseType: !384, size: 128, align: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !143, line: 216, size: 128, align: 64, elements: !385)
!385 = !{!386, !388}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !384, file: !143, line: 217, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !384, file: !143, line: 218, baseType: !389, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !387}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !372, file: !31, line: 921, baseType: !393, size: 128, offset: 128)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !394, line: 8, size: 128, elements: !395)
!394 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!395 = !{!396, !400}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !393, file: !394, line: 9, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !399, line: 18, flags: DIFlagFwdDecl)
!399 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!400 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !393, file: !394, line: 10, baseType: !401, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !399, line: 89, size: 1536, elements: !403)
!403 = !{!404, !405, !415, !423, !424, !443, !2939, !2941, !2953, !2954, !2955, !2956, !2957, !2963, !2964, !2965}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !402, file: !399, line: 91, baseType: !7, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !402, file: !399, line: 92, baseType: !406, size: 32, offset: 32)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !407, line: 277, baseType: !408)
!407 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !407, line: 277, size: 32, elements: !409)
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !408, file: !407, line: 277, baseType: !411, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !407, line: 70, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !407, line: 65, size: 32, elements: !413)
!413 = !{!414}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !412, file: !407, line: 66, baseType: !7, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !402, file: !399, line: 93, baseType: !416, size: 128, offset: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !417, line: 38, size: 128, elements: !418)
!417 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!418 = !{!419, !421}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !416, file: !417, line: 39, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !416, file: !417, line: 39, baseType: !422, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !402, file: !399, line: 94, baseType: !401, size: 64, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !402, file: !399, line: 95, baseType: !425, size: 128, offset: 256)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !399, line: 47, size: 128, elements: !426)
!426 = !{!427, !440}
!427 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !399, line: 48, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !399, line: 48, size: 64, elements: !429)
!429 = !{!430, !436}
!430 = !DIDerivedType(tag: DW_TAG_member, scope: !428, file: !399, line: 49, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !428, file: !399, line: 49, size: 64, elements: !432)
!432 = !{!433, !435}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !431, file: !399, line: 50, baseType: !434, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !323, line: 21, baseType: !226)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !431, file: !399, line: 50, baseType: !434, size: 32, offset: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !428, file: !399, line: 52, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !323, line: 23, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !184, line: 31, baseType: !439)
!439 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !425, file: !399, line: 54, baseType: !441, size: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !402, file: !399, line: 96, baseType: !444, size: 64, offset: 384)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !446)
!446 = !{!447, !449, !450, !459, !466, !467, !620, !2650, !2651, !2652, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2915, !2923, !2924, !2925, !2935, !2936, !2937, !2938}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !445, file: !31, line: 611, baseType: !448, size: 16)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !143, line: 19, baseType: !185)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !445, file: !31, line: 612, baseType: !185, size: 16, offset: 16)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !445, file: !31, line: 613, baseType: !451, size: 32, offset: 32)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !452, line: 23, baseType: !453)
!452 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !452, line: 21, size: 32, elements: !454)
!454 = !{!455}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !453, file: !452, line: 22, baseType: !456, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !143, line: 32, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !458, line: 49, baseType: !7)
!458 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!459 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !445, file: !31, line: 614, baseType: !460, size: 32, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !452, line: 28, baseType: !461)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !452, line: 26, size: 32, elements: !462)
!462 = !{!463}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !461, file: !452, line: 27, baseType: !464, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !143, line: 33, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !458, line: 50, baseType: !7)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !445, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !445, file: !31, line: 622, baseType: !468, size: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !471)
!471 = !{!472, !476, !489, !493, !499, !504, !510, !514, !518, !522, !526, !527, !533, !537, !561, !590, !600, !606, !611, !615, !616}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !470, file: !31, line: 1865, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!401, !444, !401, !7}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !470, file: !31, line: 1866, baseType: !477, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!153, !401, !444, !480}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !482, line: 10, size: 128, elements: !483)
!482 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!483 = !{!484, !488}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !481, file: !482, line: 11, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !144}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !481, file: !482, line: 12, baseType: !144, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !470, file: !31, line: 1867, baseType: !490, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!165, !444, !165}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !470, file: !31, line: 1868, baseType: !494, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!497, !444, !165}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !470, file: !31, line: 1870, baseType: !500, size: 64, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!165, !401, !503, !165}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !470, file: !31, line: 1872, baseType: !505, size: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!165, !444, !401, !448, !508}
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !143, line: 30, baseType: !509)
!509 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !470, file: !31, line: 1873, baseType: !511, size: 64, offset: 384)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!165, !401, !444, !401}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !470, file: !31, line: 1874, baseType: !515, size: 64, offset: 448)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!165, !444, !401}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !470, file: !31, line: 1875, baseType: !519, size: 64, offset: 512)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!165, !444, !401, !153}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !470, file: !31, line: 1876, baseType: !523, size: 64, offset: 576)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!165, !444, !401, !448}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !470, file: !31, line: 1877, baseType: !515, size: 64, offset: 640)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !470, file: !31, line: 1878, baseType: !528, size: 64, offset: 704)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!165, !444, !401, !448, !531}
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !143, line: 16, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !143, line: 13, baseType: !434)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !470, file: !31, line: 1879, baseType: !534, size: 64, offset: 768)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!165, !444, !401, !444, !401, !7}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !470, file: !31, line: 1881, baseType: !538, size: 64, offset: 832)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!165, !401, !541}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !543)
!543 = !{!544, !545, !546, !547, !548, !551, !558, !559, !560}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !542, file: !31, line: 220, baseType: !7, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !542, file: !31, line: 221, baseType: !448, size: 16, offset: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !542, file: !31, line: 222, baseType: !451, size: 32, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !542, file: !31, line: 223, baseType: !460, size: 32, offset: 96)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !542, file: !31, line: 224, baseType: !549, size: 64, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !143, line: 46, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !458, line: 88, baseType: !344)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !542, file: !31, line: 225, baseType: !552, size: 128, offset: 192)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !553, line: 13, size: 128, elements: !554)
!553 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!554 = !{!555, !557}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !552, file: !553, line: 14, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !553, line: 8, baseType: !343)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !552, file: !553, line: 15, baseType: !148, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !542, file: !31, line: 226, baseType: !552, size: 128, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !542, file: !31, line: 227, baseType: !552, size: 128, offset: 448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !542, file: !31, line: 234, baseType: !371, size: 64, offset: 576)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !470, file: !31, line: 1882, baseType: !562, size: 64, offset: 896)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!165, !565, !567, !434, !7}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !569, line: 22, size: 1152, elements: !570)
!569 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!570 = !{!571, !572, !573, !574, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !568, file: !569, line: 23, baseType: !434, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !568, file: !569, line: 24, baseType: !448, size: 16, offset: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !568, file: !569, line: 25, baseType: !7, size: 32, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !568, file: !569, line: 26, baseType: !575, size: 32, offset: 96)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !143, line: 104, baseType: !434)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !568, file: !569, line: 27, baseType: !437, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !568, file: !569, line: 28, baseType: !437, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !568, file: !569, line: 37, baseType: !437, size: 64, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !568, file: !569, line: 38, baseType: !531, size: 32, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !568, file: !569, line: 39, baseType: !531, size: 32, offset: 352)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !568, file: !569, line: 40, baseType: !451, size: 32, offset: 384)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !568, file: !569, line: 41, baseType: !460, size: 32, offset: 416)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !568, file: !569, line: 42, baseType: !549, size: 64, offset: 448)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !568, file: !569, line: 43, baseType: !552, size: 128, offset: 512)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !568, file: !569, line: 44, baseType: !552, size: 128, offset: 640)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !568, file: !569, line: 45, baseType: !552, size: 128, offset: 768)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !568, file: !569, line: 46, baseType: !552, size: 128, offset: 896)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !568, file: !569, line: 47, baseType: !437, size: 64, offset: 1024)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !568, file: !569, line: 48, baseType: !437, size: 64, offset: 1088)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !470, file: !31, line: 1883, baseType: !591, size: 64, offset: 960)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!594, !401, !503, !597}
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !143, line: 60, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !458, line: 73, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !458, line: 15, baseType: !148)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !143, line: 55, baseType: !598)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !458, line: 72, baseType: !599)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !458, line: 16, baseType: !191)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !470, file: !31, line: 1884, baseType: !601, size: 64, offset: 1024)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!165, !444, !604, !437, !437}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !470, file: !31, line: 1886, baseType: !607, size: 64, offset: 1088)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!165, !444, !610, !165}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !470, file: !31, line: 1887, baseType: !612, size: 64, offset: 1152)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!165, !444, !401, !371, !7, !448}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !470, file: !31, line: 1890, baseType: !523, size: 64, offset: 1216)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !470, file: !31, line: 1891, baseType: !617, size: 64, offset: 1280)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!165, !444, !497, !165}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !445, file: !31, line: 623, baseType: !621, size: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !623)
!623 = !{!624, !625, !626, !627, !628, !629, !681, !2258, !2340, !2423, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2439, !2443, !2444, !2447, !2448, !2451, !2452, !2453, !2494, !2520, !2521, !2522, !2523, !2524, !2525, !2528, !2530, !2537, !2538, !2540, !2541, !2542, !2601, !2602, !2617, !2618, !2619, !2620, !2621, !2624, !2625, !2626, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !622, file: !31, line: 1417, baseType: !362, size: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !622, file: !31, line: 1418, baseType: !531, size: 32, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !622, file: !31, line: 1419, baseType: !145, size: 8, offset: 160)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !622, file: !31, line: 1420, baseType: !191, size: 64, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !622, file: !31, line: 1421, baseType: !549, size: 64, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !622, file: !31, line: 1422, baseType: !630, size: 64, offset: 320)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !632)
!632 = !{!633, !634, !635, !642, !646, !650, !654, !658, !659, !669, !672, !673, !674, !678, !679, !680}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !631, file: !31, line: 2229, baseType: !153, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !631, file: !31, line: 2230, baseType: !165, size: 32, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !631, file: !31, line: 2238, baseType: !636, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!165, !639}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !641, line: 28, flags: DIFlagFwdDecl)
!641 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!642 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !631, file: !31, line: 2239, baseType: !643, size: 64, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !645)
!645 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !631, file: !31, line: 2240, baseType: !647, size: 64, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!401, !630, !165, !153, !144}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !631, file: !31, line: 2242, baseType: !651, size: 64, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !621}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !631, file: !31, line: 2243, baseType: !655, size: 64, offset: 384)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !657, line: 76, flags: DIFlagFwdDecl)
!657 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!658 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !631, file: !31, line: 2244, baseType: !630, size: 64, offset: 448)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !631, file: !31, line: 2245, baseType: !660, size: 64, offset: 512)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !143, line: 182, size: 64, elements: !661)
!661 = !{!662}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !660, file: !143, line: 183, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !143, line: 186, size: 128, elements: !665)
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !664, file: !143, line: 187, baseType: !663, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !664, file: !143, line: 187, baseType: !668, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !631, file: !31, line: 2247, baseType: !670, offset: 576)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !671, line: 187, elements: !360)
!671 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!672 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !631, file: !31, line: 2248, baseType: !670, offset: 576)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !631, file: !31, line: 2249, baseType: !670, offset: 576)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !631, file: !31, line: 2250, baseType: !675, offset: 576)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, elements: !676)
!676 = !{!677}
!677 = !DISubrange(count: 3)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !631, file: !31, line: 2252, baseType: !670, offset: 576)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !631, file: !31, line: 2253, baseType: !670, offset: 576)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !631, file: !31, line: 2254, baseType: !670, offset: 576)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !622, file: !31, line: 1423, baseType: !682, size: 64, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !684)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !685)
!685 = !{!686, !690, !694, !695, !699, !705, !709, !710, !711, !715, !719, !720, !721, !722, !728, !733, !734, !741, !742, !743, !744, !2242, !2257}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !684, file: !31, line: 1936, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!444, !621}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !684, file: !31, line: 1937, baseType: !691, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{null, !444}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !684, file: !31, line: 1938, baseType: !691, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !684, file: !31, line: 1940, baseType: !696, size: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{null, !444, !165}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !684, file: !31, line: 1941, baseType: !700, size: 64, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!165, !444, !703}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 289, flags: DIFlagFwdDecl)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !684, file: !31, line: 1942, baseType: !706, size: 64, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!165, !444}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !684, file: !31, line: 1943, baseType: !691, size: 64, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !684, file: !31, line: 1944, baseType: !651, size: 64, offset: 448)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !684, file: !31, line: 1945, baseType: !712, size: 64, offset: 512)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!165, !621, !165}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !684, file: !31, line: 1946, baseType: !716, size: 64, offset: 576)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!165, !621}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !684, file: !31, line: 1947, baseType: !716, size: 64, offset: 640)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !684, file: !31, line: 1948, baseType: !716, size: 64, offset: 704)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !684, file: !31, line: 1949, baseType: !716, size: 64, offset: 768)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !684, file: !31, line: 1950, baseType: !723, size: 64, offset: 832)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!165, !401, !726}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !684, file: !31, line: 1951, baseType: !729, size: 64, offset: 896)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!165, !621, !732, !503}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !684, file: !31, line: 1952, baseType: !651, size: 64, offset: 960)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !684, file: !31, line: 1954, baseType: !735, size: 64, offset: 1024)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!165, !738, !401}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !740, line: 539, flags: DIFlagFwdDecl)
!740 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!741 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !684, file: !31, line: 1955, baseType: !735, size: 64, offset: 1088)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !684, file: !31, line: 1956, baseType: !735, size: 64, offset: 1152)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !684, file: !31, line: 1957, baseType: !735, size: 64, offset: 1216)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !684, file: !31, line: 1963, baseType: !745, size: 64, offset: 1280)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!165, !621, !748, !142}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !750, line: 68, size: 512, align: 128, elements: !751)
!750 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!751 = !{!752, !753, !2234, !2241}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !749, file: !750, line: 69, baseType: !191, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, scope: !749, file: !750, line: 77, baseType: !754, size: 320, offset: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !749, file: !750, line: 77, size: 320, elements: !755)
!755 = !{!756, !934, !939, !967, !975, !981, !2226, !2233}
!756 = !DIDerivedType(tag: DW_TAG_member, scope: !754, file: !750, line: 78, baseType: !757, size: 320)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !754, file: !750, line: 78, size: 320, elements: !758)
!758 = !{!759, !760, !932, !933}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !757, file: !750, line: 84, baseType: !362, size: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !757, file: !750, line: 86, baseType: !761, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !763)
!763 = !{!764, !765, !772, !773, !778, !793, !802, !803, !804, !805, !925, !926, !929, !930, !931}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !762, file: !31, line: 452, baseType: !444, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !762, file: !31, line: 453, baseType: !766, size: 128, offset: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !767, line: 292, size: 128, elements: !768)
!767 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!768 = !{!769, !770, !771}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !766, file: !767, line: 293, baseType: !346)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !766, file: !767, line: 295, baseType: !142, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !766, file: !767, line: 296, baseType: !144, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !762, file: !31, line: 454, baseType: !142, size: 32, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !762, file: !31, line: 455, baseType: !774, size: 32, offset: 224)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !143, line: 168, baseType: !775)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 166, size: 32, elements: !776)
!776 = !{!777}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !775, file: !143, line: 167, baseType: !165, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !762, file: !31, line: 460, baseType: !779, size: 128, offset: 256)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !780, line: 125, size: 128, elements: !781)
!780 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!781 = !{!782, !792}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !779, file: !780, line: 126, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !780, line: 31, size: 64, elements: !784)
!784 = !{!785}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !783, file: !780, line: 32, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !780, line: 24, size: 192, align: 64, elements: !788)
!788 = !{!789, !790, !791}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !787, file: !780, line: 25, baseType: !191, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !787, file: !780, line: 26, baseType: !786, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !787, file: !780, line: 27, baseType: !786, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !779, file: !780, line: 127, baseType: !786, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !762, file: !31, line: 461, baseType: !794, size: 256, offset: 384)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !795, line: 35, size: 256, elements: !796)
!795 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!796 = !{!797, !798, !799, !801}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !794, file: !795, line: 36, baseType: !336, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !794, file: !795, line: 42, baseType: !336, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !794, file: !795, line: 46, baseType: !800, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !347, line: 29, baseType: !354)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !794, file: !795, line: 47, baseType: !362, size: 128, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !762, file: !31, line: 462, baseType: !191, size: 64, offset: 640)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !762, file: !31, line: 463, baseType: !191, size: 64, offset: 704)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !762, file: !31, line: 464, baseType: !191, size: 64, offset: 768)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !762, file: !31, line: 465, baseType: !806, size: 64, offset: 832)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !808)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !809)
!809 = !{!810, !814, !818, !822, !826, !830, !836, !842, !846, !851, !855, !859, !863, !889, !893, !899, !900, !901, !905, !910, !914, !921}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !808, file: !31, line: 368, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!165, !748, !703}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !808, file: !31, line: 369, baseType: !815, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{!165, !371, !748}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !808, file: !31, line: 372, baseType: !819, size: 64, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!165, !761, !703}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !808, file: !31, line: 375, baseType: !823, size: 64, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!165, !748}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !808, file: !31, line: 381, baseType: !827, size: 64, offset: 256)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!165, !371, !761, !365, !7}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !808, file: !31, line: 383, baseType: !831, size: 64, offset: 320)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{null, !834}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !808, file: !31, line: 385, baseType: !837, size: 64, offset: 384)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!165, !371, !761, !549, !7, !7, !840, !841}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !808, file: !31, line: 388, baseType: !843, size: 64, offset: 448)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!165, !371, !761, !549, !7, !7, !748, !144}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !808, file: !31, line: 393, baseType: !847, size: 64, offset: 512)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!850, !761, !850}
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !143, line: 125, baseType: !437)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !808, file: !31, line: 394, baseType: !852, size: 64, offset: 576)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{null, !748, !7, !7}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !808, file: !31, line: 395, baseType: !856, size: 64, offset: 640)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!165, !748, !142}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !808, file: !31, line: 396, baseType: !860, size: 64, offset: 704)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !748}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !808, file: !31, line: 397, baseType: !864, size: 64, offset: 768)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{!594, !867, !887}
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !869)
!869 = !{!870, !871, !872, !876, !877, !878, !879, !880}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !868, file: !31, line: 321, baseType: !371, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !868, file: !31, line: 326, baseType: !549, size: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !868, file: !31, line: 327, baseType: !873, size: 64, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !867, !148, !148}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !868, file: !31, line: 328, baseType: !144, size: 64, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !868, file: !31, line: 329, baseType: !165, size: 32, offset: 256)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !868, file: !31, line: 330, baseType: !322, size: 16, offset: 288)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !868, file: !31, line: 331, baseType: !322, size: 16, offset: 304)
!880 = !DIDerivedType(tag: DW_TAG_member, scope: !868, file: !31, line: 332, baseType: !881, size: 64, offset: 320)
!881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !868, file: !31, line: 332, size: 64, elements: !882)
!882 = !{!883, !884}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !881, file: !31, line: 333, baseType: !7, size: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !881, file: !31, line: 334, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !808, file: !31, line: 402, baseType: !890, size: 64, offset: 832)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!165, !761, !748, !748, !5}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !808, file: !31, line: 404, baseType: !894, size: 64, offset: 896)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!508, !748, !897}
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !898, line: 305, baseType: !7)
!898 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!899 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !808, file: !31, line: 405, baseType: !860, size: 64, offset: 960)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !808, file: !31, line: 406, baseType: !823, size: 64, offset: 1024)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !808, file: !31, line: 407, baseType: !902, size: 64, offset: 1088)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{!165, !748, !191, !191}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !808, file: !31, line: 409, baseType: !906, size: 64, offset: 1152)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{null, !748, !909, !909}
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !808, file: !31, line: 410, baseType: !911, size: 64, offset: 1216)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!165, !761, !748}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !808, file: !31, line: 413, baseType: !915, size: 64, offset: 1280)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{!165, !918, !371, !920}
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !808, file: !31, line: 415, baseType: !922, size: 64, offset: 1344)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{null, !371}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !762, file: !31, line: 466, baseType: !191, size: 64, offset: 896)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !762, file: !31, line: 467, baseType: !927, size: 32, offset: 960)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !928, line: 8, baseType: !434)
!928 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!929 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !762, file: !31, line: 468, baseType: !346, offset: 992)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !762, file: !31, line: 469, baseType: !362, size: 128, offset: 1024)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !762, file: !31, line: 470, baseType: !144, size: 64, offset: 1152)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !757, file: !750, line: 87, baseType: !191, size: 64, offset: 192)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !757, file: !750, line: 94, baseType: !191, size: 64, offset: 256)
!934 = !DIDerivedType(tag: DW_TAG_member, scope: !754, file: !750, line: 96, baseType: !935, size: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !754, file: !750, line: 96, size: 64, elements: !936)
!936 = !{!937}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !935, file: !750, line: 101, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !143, line: 143, baseType: !437)
!939 = !DIDerivedType(tag: DW_TAG_member, scope: !754, file: !750, line: 103, baseType: !940, size: 320)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !754, file: !750, line: 103, size: 320, elements: !941)
!941 = !{!942, !952, !955, !956}
!942 = !DIDerivedType(tag: DW_TAG_member, scope: !940, file: !750, line: 104, baseType: !943, size: 128)
!943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !940, file: !750, line: 104, size: 128, elements: !944)
!944 = !{!945, !946}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !943, file: !750, line: 105, baseType: !362, size: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !943, file: !750, line: 106, baseType: !947, size: 128)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !943, file: !750, line: 106, size: 128, elements: !948)
!948 = !{!949, !950, !951}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !947, file: !750, line: 107, baseType: !748, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !947, file: !750, line: 109, baseType: !165, size: 32, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !947, file: !750, line: 110, baseType: !165, size: 32, offset: 96)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !940, file: !750, line: 117, baseType: !953, size: 64, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !750, line: 117, flags: DIFlagFwdDecl)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !940, file: !750, line: 119, baseType: !144, size: 64, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_member, scope: !940, file: !750, line: 120, baseType: !957, size: 64, offset: 256)
!957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !940, file: !750, line: 120, size: 64, elements: !958)
!958 = !{!959, !960, !961}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !957, file: !750, line: 121, baseType: !144, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !957, file: !750, line: 122, baseType: !191, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, scope: !957, file: !750, line: 123, baseType: !962, size: 32)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !957, file: !750, line: 123, size: 32, elements: !963)
!963 = !{!964, !965, !966}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !962, file: !750, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !962, file: !750, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !962, file: !750, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!967 = !DIDerivedType(tag: DW_TAG_member, scope: !754, file: !750, line: 130, baseType: !968, size: 192)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !754, file: !750, line: 130, size: 192, elements: !969)
!969 = !{!970, !971, !972, !973, !974}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !968, file: !750, line: 131, baseType: !191, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !968, file: !750, line: 134, baseType: !145, size: 8, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !968, file: !750, line: 135, baseType: !145, size: 8, offset: 72)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !968, file: !750, line: 136, baseType: !774, size: 32, offset: 96)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !968, file: !750, line: 137, baseType: !7, size: 32, offset: 128)
!975 = !DIDerivedType(tag: DW_TAG_member, scope: !754, file: !750, line: 139, baseType: !976, size: 256)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !754, file: !750, line: 139, size: 256, elements: !977)
!977 = !{!978, !979, !980}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !976, file: !750, line: 140, baseType: !191, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !976, file: !750, line: 141, baseType: !774, size: 32, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !976, file: !750, line: 143, baseType: !362, size: 128, offset: 128)
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !754, file: !750, line: 145, baseType: !982, size: 256)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !754, file: !750, line: 145, size: 256, elements: !983)
!983 = !{!984, !985, !987, !988, !2225}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !982, file: !750, line: 146, baseType: !191, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !982, file: !750, line: 147, baseType: !986, size: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !740, line: 509, baseType: !748)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !982, file: !750, line: 148, baseType: !191, size: 64, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_member, scope: !982, file: !750, line: 149, baseType: !989, size: 64, offset: 192)
!989 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !982, file: !750, line: 149, size: 64, elements: !990)
!990 = !{!991, !2224}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !989, file: !750, line: 150, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !750, line: 388, size: 7296, elements: !994)
!994 = !{!995, !2220}
!995 = !DIDerivedType(tag: DW_TAG_member, scope: !993, file: !750, line: 389, baseType: !996, size: 7296)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !993, file: !750, line: 389, size: 7296, elements: !997)
!997 = !{!998, !1036, !1037, !1038, !1042, !1043, !1044, !1045, !1046, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1087, !1093, !1096, !1118, !1119, !2204, !2205, !2208, !2209, !2210, !2213, !2214, !2215, !2218, !2219}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !996, file: !750, line: 390, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !750, line: 305, size: 1472, elements: !1001)
!1001 = !{!1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1016, !1017, !1022, !1023, !1026, !1030, !1031, !1032, !1033, !1034}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1000, file: !750, line: 308, baseType: !191, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1000, file: !750, line: 309, baseType: !191, size: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1000, file: !750, line: 313, baseType: !999, size: 64, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1000, file: !750, line: 313, baseType: !999, size: 64, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1000, file: !750, line: 315, baseType: !787, size: 192, align: 64, offset: 256)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1000, file: !750, line: 323, baseType: !191, size: 64, offset: 448)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1000, file: !750, line: 327, baseType: !992, size: 64, offset: 512)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1000, file: !750, line: 333, baseType: !1010, size: 64, offset: 576)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !740, line: 284, baseType: !1011)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !740, line: 284, size: 64, elements: !1012)
!1012 = !{!1013}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1011, file: !740, line: 284, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1015, line: 19, baseType: !191)
!1015 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1000, file: !750, line: 334, baseType: !191, size: 64, offset: 640)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1000, file: !750, line: 343, baseType: !1018, size: 256, offset: 704)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !750, line: 340, size: 256, elements: !1019)
!1019 = !{!1020, !1021}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1018, file: !750, line: 341, baseType: !787, size: 192, align: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1018, file: !750, line: 342, baseType: !191, size: 64, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1000, file: !750, line: 351, baseType: !362, size: 128, offset: 960)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1000, file: !750, line: 353, baseType: !1024, size: 64, offset: 1088)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !750, line: 353, flags: DIFlagFwdDecl)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1000, file: !750, line: 356, baseType: !1027, size: 64, offset: 1152)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1029)
!1029 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !750, line: 356, flags: DIFlagFwdDecl)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1000, file: !750, line: 359, baseType: !191, size: 64, offset: 1216)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1000, file: !750, line: 361, baseType: !371, size: 64, offset: 1280)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1000, file: !750, line: 362, baseType: !144, size: 64, offset: 1344)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1000, file: !750, line: 365, baseType: !336, size: 64, offset: 1408)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1000, file: !750, line: 373, baseType: !1035, offset: 1472)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !750, line: 296, elements: !360)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !996, file: !750, line: 391, baseType: !783, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !996, file: !750, line: 392, baseType: !437, size: 64, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !996, file: !750, line: 394, baseType: !1039, size: 64, offset: 192)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!191, !371, !191, !191, !191, !191}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !996, file: !750, line: 398, baseType: !191, size: 64, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !996, file: !750, line: 399, baseType: !191, size: 64, offset: 320)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !996, file: !750, line: 405, baseType: !191, size: 64, offset: 384)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !996, file: !750, line: 406, baseType: !191, size: 64, offset: 448)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !996, file: !750, line: 407, baseType: !1047, size: 64, offset: 512)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !740, line: 286, baseType: !1049)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !740, line: 286, size: 64, elements: !1050)
!1050 = !{!1051}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1049, file: !740, line: 286, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1015, line: 18, baseType: !191)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !996, file: !750, line: 416, baseType: !774, size: 32, offset: 576)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !996, file: !750, line: 428, baseType: !774, size: 32, offset: 608)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !996, file: !750, line: 437, baseType: !774, size: 32, offset: 640)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !996, file: !750, line: 447, baseType: !774, size: 32, offset: 672)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !996, file: !750, line: 450, baseType: !336, size: 64, offset: 704)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !996, file: !750, line: 452, baseType: !165, size: 32, offset: 768)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !996, file: !750, line: 454, baseType: !346, offset: 800)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !996, file: !750, line: 457, baseType: !794, size: 256, offset: 832)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !996, file: !750, line: 459, baseType: !362, size: 128, offset: 1088)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !996, file: !750, line: 466, baseType: !191, size: 64, offset: 1216)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !996, file: !750, line: 467, baseType: !191, size: 64, offset: 1280)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !996, file: !750, line: 469, baseType: !191, size: 64, offset: 1344)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !996, file: !750, line: 470, baseType: !191, size: 64, offset: 1408)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !996, file: !750, line: 471, baseType: !338, size: 64, offset: 1472)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !996, file: !750, line: 472, baseType: !191, size: 64, offset: 1536)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !996, file: !750, line: 473, baseType: !191, size: 64, offset: 1600)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !996, file: !750, line: 474, baseType: !191, size: 64, offset: 1664)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !996, file: !750, line: 475, baseType: !191, size: 64, offset: 1728)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !996, file: !750, line: 477, baseType: !346, offset: 1792)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !996, file: !750, line: 478, baseType: !191, size: 64, offset: 1792)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !996, file: !750, line: 478, baseType: !191, size: 64, offset: 1856)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !996, file: !750, line: 478, baseType: !191, size: 64, offset: 1920)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !996, file: !750, line: 478, baseType: !191, size: 64, offset: 1984)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !996, file: !750, line: 479, baseType: !191, size: 64, offset: 2048)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !996, file: !750, line: 479, baseType: !191, size: 64, offset: 2112)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !996, file: !750, line: 479, baseType: !191, size: 64, offset: 2176)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !996, file: !750, line: 480, baseType: !191, size: 64, offset: 2240)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !996, file: !750, line: 480, baseType: !191, size: 64, offset: 2304)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !996, file: !750, line: 480, baseType: !191, size: 64, offset: 2368)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !996, file: !750, line: 480, baseType: !191, size: 64, offset: 2432)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !996, file: !750, line: 482, baseType: !1084, size: 2816, offset: 2496)
!1084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 2816, elements: !1085)
!1085 = !{!1086}
!1086 = !DISubrange(count: 44)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !996, file: !750, line: 488, baseType: !1088, size: 256, offset: 5312)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1089, line: 60, size: 256, elements: !1090)
!1089 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1090 = !{!1091}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1088, file: !1089, line: 61, baseType: !1092, size: 256)
!1092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 256, elements: !155)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !996, file: !750, line: 490, baseType: !1094, size: 64, offset: 5568)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !750, line: 490, flags: DIFlagFwdDecl)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !996, file: !750, line: 493, baseType: !1097, size: 896, offset: 5632)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1098, line: 53, baseType: !1099)
!1098 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1098, line: 13, size: 896, elements: !1100)
!1100 = !{!1101, !1102, !1103, !1104, !1107, !1108, !1109, !1110, !1114, !1115, !1116}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1099, file: !1098, line: 18, baseType: !437, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1099, file: !1098, line: 28, baseType: !338, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1099, file: !1098, line: 31, baseType: !794, size: 256, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1099, file: !1098, line: 32, baseType: !1105, size: 64, offset: 384)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1098, line: 32, flags: DIFlagFwdDecl)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1099, file: !1098, line: 37, baseType: !185, size: 16, offset: 448)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1099, file: !1098, line: 40, baseType: !332, size: 192, offset: 512)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1099, file: !1098, line: 41, baseType: !144, size: 64, offset: 704)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1099, file: !1098, line: 42, baseType: !1111, size: 64, offset: 768)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1113)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1098, line: 42, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1099, file: !1098, line: 44, baseType: !774, size: 32, offset: 832)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1099, file: !1098, line: 50, baseType: !322, size: 16, offset: 864)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1099, file: !1098, line: 51, baseType: !1117, size: 16, offset: 880)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !323, line: 18, baseType: !250)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !996, file: !750, line: 495, baseType: !191, size: 64, offset: 6528)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !996, file: !750, line: 497, baseType: !1120, size: 64, offset: 6592)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !750, line: 381, size: 384, elements: !1122)
!1122 = !{!1123, !1124, !2203}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1121, file: !750, line: 382, baseType: !774, size: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1121, file: !750, line: 383, baseType: !1125, size: 128, offset: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !750, line: 376, size: 128, elements: !1126)
!1126 = !{!1127, !2201}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1125, file: !750, line: 377, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1130, line: 640, size: 48640, elements: !1131)
!1130 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1131 = !{!1132, !1138, !1139, !1140, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1157, !1175, !1186, !1270, !1271, !1272, !1280, !1281, !1283, !1284, !1285, !1286, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1365, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1403, !1405, !1406, !1407, !1419, !1420, !1421, !1422, !1423, !1424, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1448, !1453, !1635, !1636, !1637, !1638, !1642, !1645, !1648, !1651, !1654, !1657, !1758, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1806, !1807, !1808, !1809, !1810, !1815, !1816, !1817, !1820, !1821, !1824, !1827, !1830, !1833, !1876, !1879, !1880, !1959, !1960, !1963, !1964, !1967, !1968, !1969, !1973, !1974, !1975, !1988, !1989, !1990, !2000, !2005, !2008, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1129, file: !1130, line: 646, baseType: !1133, size: 128)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1134, line: 56, size: 128, elements: !1135)
!1134 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1135 = !{!1136, !1137}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1133, file: !1134, line: 57, baseType: !191, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1133, file: !1134, line: 58, baseType: !434, size: 32, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1129, file: !1130, line: 649, baseType: !147, size: 64, offset: 128)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1129, file: !1130, line: 657, baseType: !144, size: 64, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1129, file: !1130, line: 658, baseType: !1141, size: 32, offset: 256)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1142, line: 113, baseType: !1143)
!1142 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1142, line: 111, size: 32, elements: !1144)
!1144 = !{!1145}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1143, file: !1142, line: 112, baseType: !774, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1129, file: !1130, line: 660, baseType: !7, size: 32, offset: 288)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1129, file: !1130, line: 661, baseType: !7, size: 32, offset: 320)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1129, file: !1130, line: 684, baseType: !165, size: 32, offset: 352)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1129, file: !1130, line: 686, baseType: !165, size: 32, offset: 384)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1129, file: !1130, line: 687, baseType: !165, size: 32, offset: 416)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1129, file: !1130, line: 688, baseType: !165, size: 32, offset: 448)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1129, file: !1130, line: 689, baseType: !7, size: 32, offset: 480)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1129, file: !1130, line: 691, baseType: !1154, size: 64, offset: 512)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1156)
!1156 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1130, line: 691, flags: DIFlagFwdDecl)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1129, file: !1130, line: 692, baseType: !1158, size: 832, offset: 576)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1130, line: 451, size: 832, elements: !1159)
!1159 = !{!1160, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1158, file: !1130, line: 453, baseType: !1161, size: 128)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1130, line: 325, size: 128, elements: !1162)
!1162 = !{!1163, !1164}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1161, file: !1130, line: 326, baseType: !191, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1161, file: !1130, line: 327, baseType: !434, size: 32, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1158, file: !1130, line: 454, baseType: !787, size: 192, align: 64, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1158, file: !1130, line: 455, baseType: !362, size: 128, offset: 320)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1158, file: !1130, line: 456, baseType: !7, size: 32, offset: 448)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1158, file: !1130, line: 458, baseType: !437, size: 64, offset: 512)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1158, file: !1130, line: 459, baseType: !437, size: 64, offset: 576)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1158, file: !1130, line: 460, baseType: !437, size: 64, offset: 640)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1158, file: !1130, line: 461, baseType: !437, size: 64, offset: 704)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1158, file: !1130, line: 463, baseType: !437, size: 64, offset: 768)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1158, file: !1130, line: 465, baseType: !1174, offset: 832)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1130, line: 415, elements: !360)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1129, file: !1130, line: 693, baseType: !1176, size: 384, offset: 1408)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1130, line: 489, size: 384, elements: !1177)
!1177 = !{!1178, !1179, !1180, !1181, !1182, !1183, !1184}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1176, file: !1130, line: 490, baseType: !362, size: 128)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1176, file: !1130, line: 491, baseType: !191, size: 64, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1176, file: !1130, line: 492, baseType: !191, size: 64, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1176, file: !1130, line: 493, baseType: !7, size: 32, offset: 256)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1176, file: !1130, line: 494, baseType: !185, size: 16, offset: 288)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1176, file: !1130, line: 495, baseType: !185, size: 16, offset: 304)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1176, file: !1130, line: 497, baseType: !1185, size: 64, offset: 320)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1129, file: !1130, line: 697, baseType: !1187, size: 1792, offset: 1792)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1130, line: 507, size: 1792, elements: !1188)
!1188 = !{!1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1267, !1268}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1187, file: !1130, line: 508, baseType: !787, size: 192, align: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1187, file: !1130, line: 515, baseType: !437, size: 64, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1187, file: !1130, line: 516, baseType: !437, size: 64, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1187, file: !1130, line: 517, baseType: !437, size: 64, offset: 320)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1187, file: !1130, line: 518, baseType: !437, size: 64, offset: 384)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1187, file: !1130, line: 519, baseType: !437, size: 64, offset: 448)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1187, file: !1130, line: 526, baseType: !342, size: 64, offset: 512)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1187, file: !1130, line: 527, baseType: !437, size: 64, offset: 576)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1187, file: !1130, line: 528, baseType: !7, size: 32, offset: 640)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1187, file: !1130, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1187, file: !1130, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1187, file: !1130, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1187, file: !1130, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1187, file: !1130, line: 563, baseType: !1203, size: 512, offset: 704)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !14, line: 118, size: 512, elements: !1204)
!1204 = !{!1205, !1213, !1214, !1219, !1262, !1264, !1265, !1266}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1203, file: !14, line: 119, baseType: !1206, size: 256)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1207, line: 9, size: 256, elements: !1208)
!1207 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1208 = !{!1209, !1210}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1206, file: !1207, line: 10, baseType: !787, size: 192, align: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1206, file: !1207, line: 11, baseType: !1211, size: 64, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1212, line: 29, baseType: !342)
!1212 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1203, file: !14, line: 120, baseType: !1211, size: 64, offset: 256)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1203, file: !14, line: 121, baseType: !1215, size: 64, offset: 320)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!13, !1218}
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1203, file: !14, line: 122, baseType: !1220, size: 64, offset: 384)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !14, line: 159, size: 512, align: 512, elements: !1222)
!1222 = !{!1223, !1243, !1244, !1247, !1252, !1253, !1257, !1261}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1221, file: !14, line: 160, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !14, line: 214, size: 4608, align: 512, elements: !1226)
!1226 = !{!1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1225, file: !14, line: 215, baseType: !800)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1225, file: !14, line: 216, baseType: !7, size: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1225, file: !14, line: 217, baseType: !7, size: 32, offset: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1225, file: !14, line: 218, baseType: !7, size: 32, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1225, file: !14, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1225, file: !14, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1225, file: !14, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1225, file: !14, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1225, file: !14, line: 233, baseType: !1211, size: 64, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1225, file: !14, line: 234, baseType: !1218, size: 64, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1225, file: !14, line: 235, baseType: !1211, size: 64, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1225, file: !14, line: 236, baseType: !1218, size: 64, offset: 320)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1225, file: !14, line: 237, baseType: !1240, size: 4096, offset: 512)
!1240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1221, size: 4096, elements: !1241)
!1241 = !{!1242}
!1242 = !DISubrange(count: 8)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1221, file: !14, line: 161, baseType: !7, size: 32, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1221, file: !14, line: 162, baseType: !1245, size: 32, offset: 96)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !143, line: 27, baseType: !1246)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !458, line: 96, baseType: !165)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1221, file: !14, line: 163, baseType: !1248, size: 32, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !407, line: 276, baseType: !1249)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !407, line: 276, size: 32, elements: !1250)
!1250 = !{!1251}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1249, file: !407, line: 276, baseType: !411, size: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1221, file: !14, line: 164, baseType: !1218, size: 64, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1221, file: !14, line: 165, baseType: !1254, size: 128, offset: 256)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1207, line: 14, size: 128, elements: !1255)
!1255 = !{!1256}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1254, file: !1207, line: 15, baseType: !779, size: 128)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1221, file: !14, line: 166, baseType: !1258, size: 64, offset: 384)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!1211}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1221, file: !14, line: 167, baseType: !1211, size: 64, offset: 448)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1203, file: !14, line: 123, baseType: !1263, size: 8, offset: 448)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !323, line: 17, baseType: !222)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1203, file: !14, line: 124, baseType: !1263, size: 8, offset: 456)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1203, file: !14, line: 125, baseType: !1263, size: 8, offset: 464)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1203, file: !14, line: 126, baseType: !1263, size: 8, offset: 472)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1187, file: !1130, line: 572, baseType: !1203, size: 512, offset: 1216)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1187, file: !1130, line: 580, baseType: !1269, size: 64, offset: 1728)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1129, file: !1130, line: 721, baseType: !7, size: 32, offset: 3584)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1129, file: !1130, line: 722, baseType: !165, size: 32, offset: 3616)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1129, file: !1130, line: 723, baseType: !1273, size: 64, offset: 3648)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1275)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1276, line: 17, baseType: !1277)
!1276 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1276, line: 17, size: 64, elements: !1278)
!1278 = !{!1279}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1277, file: !1276, line: 17, baseType: !190, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1129, file: !1130, line: 724, baseType: !1275, size: 64, offset: 3712)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1129, file: !1130, line: 749, baseType: !1282, offset: 3776)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1130, line: 290, elements: !360)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1129, file: !1130, line: 751, baseType: !362, size: 128, offset: 3776)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1129, file: !1130, line: 757, baseType: !992, size: 64, offset: 3904)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1129, file: !1130, line: 758, baseType: !992, size: 64, offset: 3968)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1129, file: !1130, line: 761, baseType: !1287, size: 320, offset: 4032)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1089, line: 34, size: 320, elements: !1288)
!1288 = !{!1289, !1290}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1287, file: !1089, line: 35, baseType: !437, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1287, file: !1089, line: 36, baseType: !1291, size: 256, offset: 64)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !999, size: 256, elements: !155)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1129, file: !1130, line: 766, baseType: !165, size: 32, offset: 4352)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1129, file: !1130, line: 767, baseType: !165, size: 32, offset: 4384)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1129, file: !1130, line: 768, baseType: !165, size: 32, offset: 4416)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1129, file: !1130, line: 770, baseType: !165, size: 32, offset: 4448)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1129, file: !1130, line: 772, baseType: !191, size: 64, offset: 4480)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1129, file: !1130, line: 775, baseType: !7, size: 32, offset: 4544)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1129, file: !1130, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1129, file: !1130, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1129, file: !1130, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1129, file: !1130, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1129, file: !1130, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1129, file: !1130, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1129, file: !1130, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1129, file: !1130, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1129, file: !1130, line: 831, baseType: !191, size: 64, offset: 4672)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1129, file: !1130, line: 833, baseType: !1308, size: 384, offset: 4736)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !19, line: 25, size: 384, elements: !1309)
!1309 = !{!1310, !1315}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1308, file: !19, line: 26, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!148, !1314}
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, scope: !1308, file: !19, line: 27, baseType: !1316, size: 320, offset: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1308, file: !19, line: 27, size: 320, elements: !1317)
!1317 = !{!1318, !1328, !1355}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1316, file: !19, line: 36, baseType: !1319, size: 320)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1316, file: !19, line: 29, size: 320, elements: !1320)
!1320 = !{!1321, !1323, !1324, !1325, !1326, !1327}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1319, file: !19, line: 30, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1319, file: !19, line: 31, baseType: !434, size: 32, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1319, file: !19, line: 32, baseType: !434, size: 32, offset: 96)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1319, file: !19, line: 33, baseType: !434, size: 32, offset: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1319, file: !19, line: 34, baseType: !437, size: 64, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1319, file: !19, line: 35, baseType: !1322, size: 64, offset: 256)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1316, file: !19, line: 46, baseType: !1329, size: 192)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1316, file: !19, line: 38, size: 192, elements: !1330)
!1330 = !{!1331, !1332, !1333, !1354}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1329, file: !19, line: 39, baseType: !1245, size: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1329, file: !19, line: 40, baseType: !18, size: 32, offset: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, scope: !1329, file: !19, line: 41, baseType: !1334, size: 64, offset: 64)
!1334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1329, file: !19, line: 41, size: 64, elements: !1335)
!1335 = !{!1336, !1344}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1334, file: !19, line: 42, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1339, line: 7, size: 128, elements: !1340)
!1339 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1340 = !{!1341, !1343}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1338, file: !1339, line: 8, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !458, line: 93, baseType: !344)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1338, file: !1339, line: 9, baseType: !344, size: 64, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1334, file: !19, line: 43, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1347, line: 7, size: 64, elements: !1348)
!1347 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1348 = !{!1349, !1353}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1346, file: !1347, line: 8, baseType: !1350, size: 32)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1347, line: 5, baseType: !1351)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !323, line: 20, baseType: !1352)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !184, line: 26, baseType: !165)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1346, file: !1347, line: 9, baseType: !1351, size: 32, offset: 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1329, file: !19, line: 45, baseType: !437, size: 64, offset: 128)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1316, file: !19, line: 54, baseType: !1356, size: 256)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1316, file: !19, line: 48, size: 256, elements: !1357)
!1357 = !{!1358, !1361, !1362, !1363, !1364}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1356, file: !19, line: 49, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !19, line: 14, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1356, file: !19, line: 50, baseType: !165, size: 32, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1356, file: !19, line: 51, baseType: !165, size: 32, offset: 96)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1356, file: !19, line: 52, baseType: !191, size: 64, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1356, file: !19, line: 53, baseType: !191, size: 64, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1129, file: !1130, line: 835, baseType: !1366, size: 32, offset: 5120)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !143, line: 22, baseType: !1367)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !458, line: 28, baseType: !165)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1129, file: !1130, line: 836, baseType: !1366, size: 32, offset: 5152)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1129, file: !1130, line: 840, baseType: !191, size: 64, offset: 5184)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1129, file: !1130, line: 849, baseType: !1128, size: 64, offset: 5248)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1129, file: !1130, line: 852, baseType: !1128, size: 64, offset: 5312)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1129, file: !1130, line: 857, baseType: !362, size: 128, offset: 5376)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1129, file: !1130, line: 858, baseType: !362, size: 128, offset: 5504)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1129, file: !1130, line: 859, baseType: !1128, size: 64, offset: 5632)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1129, file: !1130, line: 867, baseType: !362, size: 128, offset: 5696)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1129, file: !1130, line: 868, baseType: !362, size: 128, offset: 5824)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1129, file: !1130, line: 871, baseType: !1378, size: 64, offset: 5952)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !1380)
!1380 = !{!1381, !1382, !1383, !1384, !1386, !1387, !1394, !1395}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1379, file: !40, line: 61, baseType: !1141, size: 32)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1379, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1379, file: !40, line: 63, baseType: !346, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1379, file: !40, line: 65, baseType: !1385, size: 256, offset: 64)
!1385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 256, elements: !155)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1379, file: !40, line: 66, baseType: !660, size: 64, offset: 320)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1379, file: !40, line: 68, baseType: !1388, size: 128, offset: 384)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1389, line: 40, baseType: !1390)
!1389 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1389, line: 36, size: 128, elements: !1391)
!1391 = !{!1392, !1393}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1390, file: !1389, line: 37, baseType: !346)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1390, file: !1389, line: 38, baseType: !362, size: 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1379, file: !40, line: 69, baseType: !384, size: 128, align: 64, offset: 512)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1379, file: !40, line: 70, baseType: !1396, size: 128, offset: 640)
!1396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1397, size: 128, elements: !192)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !1398)
!1398 = !{!1399, !1400}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1397, file: !40, line: 55, baseType: !165, size: 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1397, file: !40, line: 56, baseType: !1401, size: 64, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1129, file: !1130, line: 872, baseType: !1404, size: 512, offset: 6016)
!1404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !664, size: 512, elements: !155)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1129, file: !1130, line: 873, baseType: !362, size: 128, offset: 6528)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1129, file: !1130, line: 874, baseType: !362, size: 128, offset: 6656)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1129, file: !1130, line: 876, baseType: !1408, size: 64, offset: 6784)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1410, line: 26, size: 192, elements: !1411)
!1410 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1411 = !{!1412, !1413}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1409, file: !1410, line: 27, baseType: !7, size: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1409, file: !1410, line: 28, baseType: !1414, size: 128, offset: 64)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1415, line: 43, size: 128, elements: !1416)
!1415 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1416 = !{!1417, !1418}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1414, file: !1415, line: 44, baseType: !800)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1414, file: !1415, line: 45, baseType: !362, size: 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1129, file: !1130, line: 879, baseType: !732, size: 64, offset: 6848)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1129, file: !1130, line: 882, baseType: !732, size: 64, offset: 6912)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1129, file: !1130, line: 884, baseType: !437, size: 64, offset: 6976)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1129, file: !1130, line: 885, baseType: !437, size: 64, offset: 7040)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1129, file: !1130, line: 890, baseType: !437, size: 64, offset: 7104)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1129, file: !1130, line: 891, baseType: !1425, size: 128, offset: 7168)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1130, line: 242, size: 128, elements: !1426)
!1426 = !{!1427, !1428, !1429}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1425, file: !1130, line: 244, baseType: !437, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1425, file: !1130, line: 245, baseType: !437, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1425, file: !1130, line: 246, baseType: !800, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1129, file: !1130, line: 900, baseType: !191, size: 64, offset: 7296)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1129, file: !1130, line: 901, baseType: !191, size: 64, offset: 7360)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1129, file: !1130, line: 904, baseType: !437, size: 64, offset: 7424)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1129, file: !1130, line: 907, baseType: !437, size: 64, offset: 7488)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1129, file: !1130, line: 910, baseType: !191, size: 64, offset: 7552)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1129, file: !1130, line: 911, baseType: !191, size: 64, offset: 7616)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1129, file: !1130, line: 914, baseType: !1437, size: 640, offset: 7680)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1438, line: 123, size: 640, elements: !1439)
!1438 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1439 = !{!1440, !1446, !1447}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1437, file: !1438, line: 124, baseType: !1441, size: 576)
!1441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1442, size: 576, elements: !676)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1438, line: 108, size: 192, elements: !1443)
!1443 = !{!1444, !1445}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1442, file: !1438, line: 109, baseType: !437, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1442, file: !1438, line: 110, baseType: !1254, size: 128, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1437, file: !1438, line: 125, baseType: !7, size: 32, offset: 576)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1437, file: !1438, line: 126, baseType: !7, size: 32, offset: 608)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1129, file: !1130, line: 917, baseType: !1449, size: 192, offset: 8320)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1438, line: 134, size: 192, elements: !1450)
!1450 = !{!1451, !1452}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1449, file: !1438, line: 135, baseType: !384, size: 128, align: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1449, file: !1438, line: 136, baseType: !7, size: 32, offset: 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1129, file: !1130, line: 923, baseType: !1454, size: 64, offset: 8512)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1456)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1457, line: 111, size: 1280, elements: !1458)
!1457 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1458 = !{!1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1476, !1477, !1478, !1479, !1480, !1481, !1588, !1589, !1590, !1591, !1617, !1620, !1630}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1456, file: !1457, line: 112, baseType: !774, size: 32)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1456, file: !1457, line: 120, baseType: !451, size: 32, offset: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1456, file: !1457, line: 121, baseType: !460, size: 32, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1456, file: !1457, line: 122, baseType: !451, size: 32, offset: 96)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1456, file: !1457, line: 123, baseType: !460, size: 32, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1456, file: !1457, line: 124, baseType: !451, size: 32, offset: 160)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1456, file: !1457, line: 125, baseType: !460, size: 32, offset: 192)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1456, file: !1457, line: 126, baseType: !451, size: 32, offset: 224)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1456, file: !1457, line: 127, baseType: !460, size: 32, offset: 256)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1456, file: !1457, line: 128, baseType: !7, size: 32, offset: 288)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1456, file: !1457, line: 129, baseType: !1470, size: 64, offset: 320)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1471, line: 26, baseType: !1472)
!1471 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1471, line: 24, size: 64, elements: !1473)
!1473 = !{!1474}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1472, file: !1471, line: 25, baseType: !1475, size: 64)
!1475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 64, elements: !206)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1456, file: !1457, line: 130, baseType: !1470, size: 64, offset: 384)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1456, file: !1457, line: 131, baseType: !1470, size: 64, offset: 448)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1456, file: !1457, line: 132, baseType: !1470, size: 64, offset: 512)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1456, file: !1457, line: 133, baseType: !1470, size: 64, offset: 576)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1456, file: !1457, line: 135, baseType: !145, size: 8, offset: 640)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1456, file: !1457, line: 137, baseType: !1482, size: 64, offset: 704)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1484, line: 189, size: 1664, elements: !1485)
!1484 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1485 = !{!1486, !1487, !1490, !1495, !1496, !1499, !1500, !1505, !1506, !1507, !1508, !1510, !1511, !1512, !1513, !1514, !1552, !1573}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1483, file: !1484, line: 190, baseType: !1141, size: 32)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1483, file: !1484, line: 191, baseType: !1488, size: 32, offset: 32)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1484, line: 28, baseType: !1489)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !143, line: 98, baseType: !1351)
!1490 = !DIDerivedType(tag: DW_TAG_member, scope: !1483, file: !1484, line: 192, baseType: !1491, size: 192, offset: 64)
!1491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1483, file: !1484, line: 192, size: 192, elements: !1492)
!1492 = !{!1493, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1491, file: !1484, line: 193, baseType: !362, size: 128)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1491, file: !1484, line: 194, baseType: !787, size: 192, align: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1483, file: !1484, line: 199, baseType: !794, size: 256, offset: 256)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1483, file: !1484, line: 200, baseType: !1497, size: 64, offset: 512)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1484, line: 200, flags: DIFlagFwdDecl)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1483, file: !1484, line: 201, baseType: !144, size: 64, offset: 576)
!1500 = !DIDerivedType(tag: DW_TAG_member, scope: !1483, file: !1484, line: 202, baseType: !1501, size: 64, offset: 640)
!1501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1483, file: !1484, line: 202, size: 64, elements: !1502)
!1502 = !{!1503, !1504}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1501, file: !1484, line: 203, baseType: !556, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1501, file: !1484, line: 204, baseType: !556, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1483, file: !1484, line: 206, baseType: !556, size: 64, offset: 704)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1483, file: !1484, line: 207, baseType: !451, size: 32, offset: 768)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1483, file: !1484, line: 208, baseType: !460, size: 32, offset: 800)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1483, file: !1484, line: 209, baseType: !1509, size: 32, offset: 832)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1484, line: 31, baseType: !575)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1483, file: !1484, line: 210, baseType: !185, size: 16, offset: 864)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1483, file: !1484, line: 211, baseType: !185, size: 16, offset: 880)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1483, file: !1484, line: 215, baseType: !251, size: 16, offset: 896)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1483, file: !1484, line: 222, baseType: !191, size: 64, offset: 960)
!1514 = !DIDerivedType(tag: DW_TAG_member, scope: !1483, file: !1484, line: 239, baseType: !1515, size: 320, offset: 1024)
!1515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1483, file: !1484, line: 239, size: 320, elements: !1516)
!1516 = !{!1517, !1544}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1515, file: !1484, line: 240, baseType: !1518, size: 320)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1484, line: 108, size: 320, elements: !1519)
!1519 = !{!1520, !1521, !1533, !1536, !1543}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1518, file: !1484, line: 110, baseType: !191, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, scope: !1518, file: !1484, line: 111, baseType: !1522, size: 64, offset: 64)
!1522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1518, file: !1484, line: 111, size: 64, elements: !1523)
!1523 = !{!1524, !1532}
!1524 = !DIDerivedType(tag: DW_TAG_member, scope: !1522, file: !1484, line: 112, baseType: !1525, size: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1522, file: !1484, line: 112, size: 64, elements: !1526)
!1526 = !{!1527, !1528}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1525, file: !1484, line: 114, baseType: !322, size: 16)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1525, file: !1484, line: 115, baseType: !1529, size: 48, offset: 16)
!1529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 48, elements: !1530)
!1530 = !{!1531}
!1531 = !DISubrange(count: 6)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1522, file: !1484, line: 121, baseType: !191, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1518, file: !1484, line: 123, baseType: !1534, size: 64, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1484, line: 96, flags: DIFlagFwdDecl)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1518, file: !1484, line: 124, baseType: !1537, size: 64, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1484, line: 102, size: 192, elements: !1539)
!1539 = !{!1540, !1541, !1542}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1538, file: !1484, line: 103, baseType: !384, size: 128, align: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1538, file: !1484, line: 104, baseType: !1141, size: 32, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1538, file: !1484, line: 105, baseType: !508, size: 8, offset: 160)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1518, file: !1484, line: 125, baseType: !153, size: 64, offset: 256)
!1544 = !DIDerivedType(tag: DW_TAG_member, scope: !1515, file: !1484, line: 241, baseType: !1545, size: 320)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1515, file: !1484, line: 241, size: 320, elements: !1546)
!1546 = !{!1547, !1548, !1549, !1550, !1551}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1545, file: !1484, line: 242, baseType: !191, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1545, file: !1484, line: 243, baseType: !191, size: 64, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1545, file: !1484, line: 244, baseType: !1534, size: 64, offset: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1545, file: !1484, line: 245, baseType: !1537, size: 64, offset: 192)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1545, file: !1484, line: 246, baseType: !503, size: 64, offset: 256)
!1552 = !DIDerivedType(tag: DW_TAG_member, scope: !1483, file: !1484, line: 254, baseType: !1553, size: 256, offset: 1344)
!1553 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1483, file: !1484, line: 254, size: 256, elements: !1554)
!1554 = !{!1555, !1561}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1553, file: !1484, line: 255, baseType: !1556, size: 256)
!1556 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1484, line: 128, size: 256, elements: !1557)
!1557 = !{!1558, !1559}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1556, file: !1484, line: 129, baseType: !144, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1556, file: !1484, line: 130, baseType: !1560, size: 256)
!1560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 256, elements: !155)
!1561 = !DIDerivedType(tag: DW_TAG_member, scope: !1553, file: !1484, line: 256, baseType: !1562, size: 256)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1553, file: !1484, line: 256, size: 256, elements: !1563)
!1563 = !{!1564, !1565}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1562, file: !1484, line: 258, baseType: !362, size: 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1562, file: !1484, line: 259, baseType: !1566, size: 128, offset: 128)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1567, line: 22, size: 128, elements: !1568)
!1567 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1568 = !{!1569, !1572}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1566, file: !1567, line: 23, baseType: !1570, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1567, line: 23, flags: DIFlagFwdDecl)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1566, file: !1567, line: 24, baseType: !191, size: 64, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1483, file: !1484, line: 274, baseType: !1574, size: 64, offset: 1600)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1484, line: 170, size: 192, elements: !1576)
!1576 = !{!1577, !1586, !1587}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1575, file: !1484, line: 171, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1484, line: 165, baseType: !1579)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!165, !1482, !1582, !1584, !1482}
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1535)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1556)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1575, file: !1484, line: 172, baseType: !1482, size: 64, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1575, file: !1484, line: 173, baseType: !1534, size: 64, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1456, file: !1457, line: 138, baseType: !1482, size: 64, offset: 768)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1456, file: !1457, line: 139, baseType: !1482, size: 64, offset: 832)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1456, file: !1457, line: 140, baseType: !1482, size: 64, offset: 896)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1456, file: !1457, line: 145, baseType: !1592, size: 64, offset: 960)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1594, line: 13, size: 896, elements: !1595)
!1594 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1595 = !{!1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1593, file: !1594, line: 14, baseType: !1141, size: 32)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1593, file: !1594, line: 15, baseType: !774, size: 32, offset: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1593, file: !1594, line: 16, baseType: !774, size: 32, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1593, file: !1594, line: 21, baseType: !336, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1593, file: !1594, line: 27, baseType: !191, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1593, file: !1594, line: 28, baseType: !191, size: 64, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1593, file: !1594, line: 29, baseType: !336, size: 64, offset: 320)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1593, file: !1594, line: 32, baseType: !664, size: 128, offset: 384)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1593, file: !1594, line: 33, baseType: !451, size: 32, offset: 512)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1593, file: !1594, line: 37, baseType: !336, size: 64, offset: 576)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1593, file: !1594, line: 44, baseType: !1607, size: 256, offset: 640)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1608, line: 15, size: 256, elements: !1609)
!1608 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1609 = !{!1610, !1611, !1612, !1613, !1614, !1615, !1616}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1607, file: !1608, line: 16, baseType: !800)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1607, file: !1608, line: 18, baseType: !165, size: 32)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1607, file: !1608, line: 19, baseType: !165, size: 32, offset: 32)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1607, file: !1608, line: 20, baseType: !165, size: 32, offset: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1607, file: !1608, line: 21, baseType: !165, size: 32, offset: 96)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1607, file: !1608, line: 22, baseType: !191, size: 64, offset: 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1607, file: !1608, line: 23, baseType: !191, size: 64, offset: 192)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1456, file: !1457, line: 146, baseType: !1618, size: 64, offset: 1024)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !452, line: 18, flags: DIFlagFwdDecl)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1456, file: !1457, line: 147, baseType: !1621, size: 64, offset: 1088)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1457, line: 25, size: 64, elements: !1623)
!1623 = !{!1624, !1625, !1626}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1622, file: !1457, line: 26, baseType: !774, size: 32)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1622, file: !1457, line: 27, baseType: !165, size: 32, offset: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1622, file: !1457, line: 28, baseType: !1627, offset: 64)
!1627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, elements: !1628)
!1628 = !{!1629}
!1629 = !DISubrange(count: 0)
!1630 = !DIDerivedType(tag: DW_TAG_member, scope: !1456, file: !1457, line: 149, baseType: !1631, size: 128, offset: 1152)
!1631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1456, file: !1457, line: 149, size: 128, elements: !1632)
!1632 = !{!1633, !1634}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1631, file: !1457, line: 150, baseType: !165, size: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1631, file: !1457, line: 151, baseType: !384, size: 128, align: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1129, file: !1130, line: 926, baseType: !1454, size: 64, offset: 8576)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1129, file: !1130, line: 929, baseType: !1454, size: 64, offset: 8640)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1129, file: !1130, line: 933, baseType: !1482, size: 64, offset: 8704)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1129, file: !1130, line: 943, baseType: !1639, size: 128, offset: 8768)
!1639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 128, elements: !1640)
!1640 = !{!1641}
!1641 = !DISubrange(count: 16)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1129, file: !1130, line: 945, baseType: !1643, size: 64, offset: 8896)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1130, line: 49, flags: DIFlagFwdDecl)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1129, file: !1130, line: 956, baseType: !1646, size: 64, offset: 8960)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1130, line: 45, flags: DIFlagFwdDecl)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1129, file: !1130, line: 959, baseType: !1649, size: 64, offset: 9024)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1130, line: 959, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1129, file: !1130, line: 962, baseType: !1652, size: 64, offset: 9088)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1130, line: 66, flags: DIFlagFwdDecl)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1129, file: !1130, line: 966, baseType: !1655, size: 64, offset: 9152)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1130, line: 50, flags: DIFlagFwdDecl)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1129, file: !1130, line: 969, baseType: !1658, size: 64, offset: 9216)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1660, line: 82, size: 7296, elements: !1661)
!1660 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1661 = !{!1662, !1663, !1664, !1665, !1666, !1667, !1668, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1697, !1706, !1707, !1709, !1710, !1711, !1714, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1744, !1745, !1752, !1753, !1754, !1755, !1756, !1757}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1659, file: !1660, line: 83, baseType: !1141, size: 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1659, file: !1660, line: 84, baseType: !774, size: 32, offset: 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1659, file: !1660, line: 85, baseType: !165, size: 32, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1659, file: !1660, line: 86, baseType: !362, size: 128, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1659, file: !1660, line: 88, baseType: !1388, size: 128, offset: 256)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1659, file: !1660, line: 91, baseType: !1128, size: 64, offset: 384)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1659, file: !1660, line: 94, baseType: !1669, size: 192, offset: 448)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1670, line: 30, size: 192, elements: !1671)
!1670 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1671 = !{!1672, !1673}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1669, file: !1670, line: 31, baseType: !362, size: 128)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1669, file: !1670, line: 32, baseType: !1674, size: 64, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1675, line: 25, baseType: !1676)
!1675 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1675, line: 23, size: 64, elements: !1677)
!1677 = !{!1678}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1676, file: !1675, line: 24, baseType: !190, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1659, file: !1660, line: 97, baseType: !660, size: 64, offset: 640)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1659, file: !1660, line: 100, baseType: !165, size: 32, offset: 704)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1659, file: !1660, line: 106, baseType: !165, size: 32, offset: 736)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1659, file: !1660, line: 107, baseType: !1128, size: 64, offset: 768)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1659, file: !1660, line: 110, baseType: !165, size: 32, offset: 832)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1659, file: !1660, line: 111, baseType: !7, size: 32, offset: 864)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1659, file: !1660, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1659, file: !1660, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1659, file: !1660, line: 128, baseType: !165, size: 32, offset: 928)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1659, file: !1660, line: 129, baseType: !362, size: 128, offset: 960)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1659, file: !1660, line: 132, baseType: !1203, size: 512, offset: 1088)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1659, file: !1660, line: 133, baseType: !1211, size: 64, offset: 1600)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1659, file: !1660, line: 140, baseType: !1692, size: 256, offset: 1664)
!1692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1693, size: 256, elements: !206)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1660, line: 38, size: 128, elements: !1694)
!1694 = !{!1695, !1696}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1693, file: !1660, line: 39, baseType: !437, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1693, file: !1660, line: 40, baseType: !437, size: 64, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1659, file: !1660, line: 146, baseType: !1698, size: 192, offset: 1920)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1660, line: 66, size: 192, elements: !1699)
!1699 = !{!1700}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1698, file: !1660, line: 67, baseType: !1701, size: 192)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1660, line: 47, size: 192, elements: !1702)
!1702 = !{!1703, !1704, !1705}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1701, file: !1660, line: 48, baseType: !338, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1701, file: !1660, line: 49, baseType: !338, size: 64, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1701, file: !1660, line: 50, baseType: !338, size: 64, offset: 128)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1659, file: !1660, line: 150, baseType: !1437, size: 640, offset: 2112)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1659, file: !1660, line: 153, baseType: !1708, size: 256, offset: 2752)
!1708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1378, size: 256, elements: !155)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1659, file: !1660, line: 159, baseType: !1378, size: 64, offset: 3008)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1659, file: !1660, line: 162, baseType: !165, size: 32, offset: 3072)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1659, file: !1660, line: 164, baseType: !1712, size: 64, offset: 3136)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1660, line: 164, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1659, file: !1660, line: 175, baseType: !1715, size: 32, offset: 3200)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !407, line: 805, baseType: !1716)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !407, line: 798, size: 32, elements: !1717)
!1717 = !{!1718, !1719}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1716, file: !407, line: 803, baseType: !406, size: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1716, file: !407, line: 804, baseType: !346, offset: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1659, file: !1660, line: 176, baseType: !437, size: 64, offset: 3264)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1659, file: !1660, line: 176, baseType: !437, size: 64, offset: 3328)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1659, file: !1660, line: 176, baseType: !437, size: 64, offset: 3392)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1659, file: !1660, line: 176, baseType: !437, size: 64, offset: 3456)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1659, file: !1660, line: 177, baseType: !437, size: 64, offset: 3520)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1659, file: !1660, line: 178, baseType: !437, size: 64, offset: 3584)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1659, file: !1660, line: 179, baseType: !1425, size: 128, offset: 3648)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1659, file: !1660, line: 180, baseType: !191, size: 64, offset: 3776)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1659, file: !1660, line: 180, baseType: !191, size: 64, offset: 3840)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1659, file: !1660, line: 180, baseType: !191, size: 64, offset: 3904)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1659, file: !1660, line: 180, baseType: !191, size: 64, offset: 3968)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1659, file: !1660, line: 181, baseType: !191, size: 64, offset: 4032)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1659, file: !1660, line: 181, baseType: !191, size: 64, offset: 4096)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1659, file: !1660, line: 181, baseType: !191, size: 64, offset: 4160)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1659, file: !1660, line: 181, baseType: !191, size: 64, offset: 4224)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1659, file: !1660, line: 182, baseType: !191, size: 64, offset: 4288)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1659, file: !1660, line: 182, baseType: !191, size: 64, offset: 4352)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1659, file: !1660, line: 182, baseType: !191, size: 64, offset: 4416)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1659, file: !1660, line: 182, baseType: !191, size: 64, offset: 4480)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1659, file: !1660, line: 183, baseType: !191, size: 64, offset: 4544)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1659, file: !1660, line: 183, baseType: !191, size: 64, offset: 4608)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1659, file: !1660, line: 184, baseType: !1742, offset: 4672)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1743, line: 12, elements: !360)
!1743 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1659, file: !1660, line: 192, baseType: !439, size: 64, offset: 4672)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1659, file: !1660, line: 203, baseType: !1746, size: 2048, offset: 4736)
!1746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1747, size: 2048, elements: !1640)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1748, line: 43, size: 128, elements: !1749)
!1748 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1749 = !{!1750, !1751}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1747, file: !1748, line: 44, baseType: !599, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1747, file: !1748, line: 45, baseType: !599, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1659, file: !1660, line: 220, baseType: !508, size: 8, offset: 6784)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1659, file: !1660, line: 221, baseType: !251, size: 16, offset: 6800)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1659, file: !1660, line: 222, baseType: !251, size: 16, offset: 6816)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1659, file: !1660, line: 224, baseType: !992, size: 64, offset: 6848)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1659, file: !1660, line: 227, baseType: !332, size: 192, offset: 6912)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1659, file: !1660, line: 233, baseType: !332, size: 192, offset: 7104)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1129, file: !1130, line: 970, baseType: !1759, size: 64, offset: 9280)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1660, line: 20, size: 16576, elements: !1761)
!1761 = !{!1762, !1763, !1764, !1765}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1760, file: !1660, line: 21, baseType: !346)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1760, file: !1660, line: 22, baseType: !1141, size: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1760, file: !1660, line: 23, baseType: !1388, size: 128, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1760, file: !1660, line: 24, baseType: !1766, size: 16384, offset: 192)
!1766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1767, size: 16384, elements: !1787)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1670, line: 49, size: 256, elements: !1768)
!1768 = !{!1769}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1767, file: !1670, line: 50, baseType: !1770, size: 256)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1670, line: 35, size: 256, elements: !1771)
!1771 = !{!1772, !1779, !1780, !1786}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1770, file: !1670, line: 37, baseType: !1773, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1774, line: 19, baseType: !1775)
!1774 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1774, line: 18, baseType: !1777)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{null, !165}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1770, file: !1670, line: 38, baseType: !191, size: 64, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1770, file: !1670, line: 44, baseType: !1781, size: 64, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1774, line: 22, baseType: !1782)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1774, line: 21, baseType: !1784)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{null}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1770, file: !1670, line: 46, baseType: !1674, size: 64, offset: 192)
!1787 = !{!1788}
!1788 = !DISubrange(count: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1129, file: !1130, line: 971, baseType: !1674, size: 64, offset: 9344)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1129, file: !1130, line: 972, baseType: !1674, size: 64, offset: 9408)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1129, file: !1130, line: 974, baseType: !1674, size: 64, offset: 9472)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1129, file: !1130, line: 975, baseType: !1669, size: 192, offset: 9536)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1129, file: !1130, line: 976, baseType: !191, size: 64, offset: 9728)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1129, file: !1130, line: 977, baseType: !597, size: 64, offset: 9792)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1129, file: !1130, line: 978, baseType: !7, size: 32, offset: 9856)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1129, file: !1130, line: 980, baseType: !387, size: 64, offset: 9920)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1129, file: !1130, line: 989, baseType: !1798, size: 128, offset: 9984)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1799, line: 35, size: 128, elements: !1800)
!1799 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1800 = !{!1801, !1802, !1803}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1798, file: !1799, line: 36, baseType: !165, size: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1798, file: !1799, line: 37, baseType: !774, size: 32, offset: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1798, file: !1799, line: 38, baseType: !1804, size: 64, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1799, line: 23, flags: DIFlagFwdDecl)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1129, file: !1130, line: 992, baseType: !437, size: 64, offset: 10112)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1129, file: !1130, line: 993, baseType: !437, size: 64, offset: 10176)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1129, file: !1130, line: 996, baseType: !346, offset: 10240)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1129, file: !1130, line: 999, baseType: !800, offset: 10240)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1129, file: !1130, line: 1001, baseType: !1811, size: 64, offset: 10240)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1130, line: 636, size: 64, elements: !1812)
!1812 = !{!1813}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1811, file: !1130, line: 637, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1129, file: !1130, line: 1005, baseType: !779, size: 128, offset: 10304)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1129, file: !1130, line: 1007, baseType: !1128, size: 64, offset: 10432)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1129, file: !1130, line: 1009, baseType: !1818, size: 64, offset: 10496)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1130, line: 1009, flags: DIFlagFwdDecl)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1129, file: !1130, line: 1043, baseType: !144, size: 64, offset: 10560)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1129, file: !1130, line: 1046, baseType: !1822, size: 64, offset: 10624)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1130, line: 41, flags: DIFlagFwdDecl)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1129, file: !1130, line: 1050, baseType: !1825, size: 64, offset: 10688)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1130, line: 42, flags: DIFlagFwdDecl)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1129, file: !1130, line: 1054, baseType: !1828, size: 64, offset: 10752)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1130, line: 55, flags: DIFlagFwdDecl)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1129, file: !1130, line: 1056, baseType: !1831, size: 64, offset: 10816)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1130, line: 40, flags: DIFlagFwdDecl)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1129, file: !1130, line: 1058, baseType: !1834, size: 64, offset: 10880)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1836, line: 99, size: 704, elements: !1837)
!1836 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1837 = !{!1838, !1839, !1840, !1841, !1842, !1843, !1844, !1863, !1864}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1835, file: !1836, line: 100, baseType: !336, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1835, file: !1836, line: 101, baseType: !774, size: 32, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1835, file: !1836, line: 102, baseType: !774, size: 32, offset: 96)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1835, file: !1836, line: 105, baseType: !346, offset: 128)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1835, file: !1836, line: 107, baseType: !185, size: 16, offset: 128)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1835, file: !1836, line: 109, baseType: !766, size: 128, offset: 192)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1835, file: !1836, line: 110, baseType: !1845, size: 64, offset: 320)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1836, line: 73, size: 448, elements: !1847)
!1847 = !{!1848, !1851, !1852, !1857, !1862}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1846, file: !1836, line: 74, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1836, line: 74, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1846, file: !1836, line: 75, baseType: !1834, size: 64, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, scope: !1846, file: !1836, line: 83, baseType: !1853, size: 128, offset: 128)
!1853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1846, file: !1836, line: 83, size: 128, elements: !1854)
!1854 = !{!1855, !1856}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1853, file: !1836, line: 84, baseType: !362, size: 128)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1853, file: !1836, line: 85, baseType: !953, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, scope: !1846, file: !1836, line: 87, baseType: !1858, size: 128, offset: 256)
!1858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1846, file: !1836, line: 87, size: 128, elements: !1859)
!1859 = !{!1860, !1861}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1858, file: !1836, line: 88, baseType: !664, size: 128)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1858, file: !1836, line: 89, baseType: !384, size: 128, align: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1846, file: !1836, line: 92, baseType: !7, size: 32, offset: 384)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1835, file: !1836, line: 111, baseType: !660, size: 64, offset: 384)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1835, file: !1836, line: 113, baseType: !1865, size: 256, offset: 448)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1866, line: 102, size: 256, elements: !1867)
!1866 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1867 = !{!1868, !1869, !1870}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1865, file: !1866, line: 103, baseType: !336, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1865, file: !1866, line: 104, baseType: !362, size: 128, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1865, file: !1866, line: 105, baseType: !1871, size: 64, offset: 192)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1866, line: 21, baseType: !1872)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{null, !1875}
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1129, file: !1130, line: 1061, baseType: !1877, size: 64, offset: 10944)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1130, line: 43, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1129, file: !1130, line: 1064, baseType: !191, size: 64, offset: 11008)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1129, file: !1130, line: 1065, baseType: !1881, size: 64, offset: 11072)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1670, line: 14, baseType: !1883)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1670, line: 12, size: 384, elements: !1884)
!1884 = !{!1885}
!1885 = !DIDerivedType(tag: DW_TAG_member, scope: !1883, file: !1670, line: 13, baseType: !1886, size: 384)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1883, file: !1670, line: 13, size: 384, elements: !1887)
!1887 = !{!1888, !1889, !1890, !1891}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1886, file: !1670, line: 13, baseType: !165, size: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1886, file: !1670, line: 13, baseType: !165, size: 32, offset: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1886, file: !1670, line: 13, baseType: !165, size: 32, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1886, file: !1670, line: 13, baseType: !1892, size: 256, offset: 128)
!1892 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1893, line: 32, size: 256, elements: !1894)
!1893 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1894 = !{!1895, !1900, !1913, !1919, !1928, !1948, !1953}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1892, file: !1893, line: 37, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1892, file: !1893, line: 34, size: 64, elements: !1897)
!1897 = !{!1898, !1899}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1896, file: !1893, line: 35, baseType: !1367, size: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1896, file: !1893, line: 36, baseType: !457, size: 32, offset: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1892, file: !1893, line: 45, baseType: !1901, size: 192)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1892, file: !1893, line: 40, size: 192, elements: !1902)
!1902 = !{!1903, !1905, !1906, !1912}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1901, file: !1893, line: 41, baseType: !1904, size: 32)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !458, line: 95, baseType: !165)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1901, file: !1893, line: 42, baseType: !165, size: 32, offset: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1901, file: !1893, line: 43, baseType: !1907, size: 64, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1893, line: 11, baseType: !1908)
!1908 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1893, line: 8, size: 64, elements: !1909)
!1909 = !{!1910, !1911}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1908, file: !1893, line: 9, baseType: !165, size: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1908, file: !1893, line: 10, baseType: !144, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1901, file: !1893, line: 44, baseType: !165, size: 32, offset: 128)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1892, file: !1893, line: 52, baseType: !1914, size: 128)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1892, file: !1893, line: 48, size: 128, elements: !1915)
!1915 = !{!1916, !1917, !1918}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1914, file: !1893, line: 49, baseType: !1367, size: 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1914, file: !1893, line: 50, baseType: !457, size: 32, offset: 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1914, file: !1893, line: 51, baseType: !1907, size: 64, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1892, file: !1893, line: 61, baseType: !1920, size: 256)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1892, file: !1893, line: 55, size: 256, elements: !1921)
!1921 = !{!1922, !1923, !1924, !1925, !1927}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1920, file: !1893, line: 56, baseType: !1367, size: 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1920, file: !1893, line: 57, baseType: !457, size: 32, offset: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1920, file: !1893, line: 58, baseType: !165, size: 32, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1920, file: !1893, line: 59, baseType: !1926, size: 64, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !458, line: 94, baseType: !596)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1920, file: !1893, line: 60, baseType: !1926, size: 64, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1892, file: !1893, line: 95, baseType: !1929, size: 256)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1892, file: !1893, line: 64, size: 256, elements: !1930)
!1930 = !{!1931, !1932}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1929, file: !1893, line: 65, baseType: !144, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, scope: !1929, file: !1893, line: 77, baseType: !1933, size: 192, offset: 64)
!1933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1929, file: !1893, line: 77, size: 192, elements: !1934)
!1934 = !{!1935, !1936, !1943}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1933, file: !1893, line: 82, baseType: !251, size: 16)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1933, file: !1893, line: 88, baseType: !1937, size: 192)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1933, file: !1893, line: 84, size: 192, elements: !1938)
!1938 = !{!1939, !1941, !1942}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1937, file: !1893, line: 85, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 64, elements: !1241)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1937, file: !1893, line: 86, baseType: !144, size: 64, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1937, file: !1893, line: 87, baseType: !144, size: 64, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1933, file: !1893, line: 93, baseType: !1944, size: 96)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1933, file: !1893, line: 90, size: 96, elements: !1945)
!1945 = !{!1946, !1947}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1944, file: !1893, line: 91, baseType: !1940, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1944, file: !1893, line: 92, baseType: !226, size: 32, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1892, file: !1893, line: 101, baseType: !1949, size: 128)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1892, file: !1893, line: 98, size: 128, elements: !1950)
!1950 = !{!1951, !1952}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1949, file: !1893, line: 99, baseType: !148, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1949, file: !1893, line: 100, baseType: !165, size: 32, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1892, file: !1893, line: 108, baseType: !1954, size: 128)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1892, file: !1893, line: 104, size: 128, elements: !1955)
!1955 = !{!1956, !1957, !1958}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1954, file: !1893, line: 105, baseType: !144, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1954, file: !1893, line: 106, baseType: !165, size: 32, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1954, file: !1893, line: 107, baseType: !7, size: 32, offset: 96)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1129, file: !1130, line: 1067, baseType: !1742, offset: 11136)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1129, file: !1130, line: 1099, baseType: !1961, size: 64, offset: 11136)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1130, line: 56, flags: DIFlagFwdDecl)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1129, file: !1130, line: 1103, baseType: !362, size: 128, offset: 11200)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1129, file: !1130, line: 1104, baseType: !1965, size: 64, offset: 11328)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1130, line: 46, flags: DIFlagFwdDecl)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1129, file: !1130, line: 1105, baseType: !332, size: 192, offset: 11392)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1129, file: !1130, line: 1106, baseType: !7, size: 32, offset: 11584)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1129, file: !1130, line: 1109, baseType: !1970, size: 128, offset: 11648)
!1970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1971, size: 128, elements: !206)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1130, line: 51, flags: DIFlagFwdDecl)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1129, file: !1130, line: 1110, baseType: !332, size: 192, offset: 11776)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1129, file: !1130, line: 1111, baseType: !362, size: 128, offset: 11968)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1129, file: !1130, line: 1173, baseType: !1976, size: 64, offset: 12096)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1978, line: 62, size: 256, align: 256, elements: !1979)
!1978 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1979 = !{!1980, !1981, !1982, !1987}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1977, file: !1978, line: 75, baseType: !226, size: 32)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1977, file: !1978, line: 90, baseType: !226, size: 32, offset: 32)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1977, file: !1978, line: 124, baseType: !1983, size: 64, offset: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1977, file: !1978, line: 109, size: 64, elements: !1984)
!1984 = !{!1985, !1986}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1983, file: !1978, line: 110, baseType: !438, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1983, file: !1978, line: 112, baseType: !438, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1977, file: !1978, line: 144, baseType: !226, size: 32, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1129, file: !1130, line: 1174, baseType: !434, size: 32, offset: 12160)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1129, file: !1130, line: 1179, baseType: !191, size: 64, offset: 12224)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1129, file: !1130, line: 1182, baseType: !1991, size: 128, offset: 12288)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1089, line: 76, size: 128, elements: !1992)
!1992 = !{!1993, !1998, !1999}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1991, file: !1089, line: 85, baseType: !1994, size: 64)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1995, line: 7, size: 64, elements: !1996)
!1995 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1996 = !{!1997}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1994, file: !1995, line: 12, baseType: !1277, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1991, file: !1089, line: 88, baseType: !508, size: 8, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1991, file: !1089, line: 95, baseType: !508, size: 8, offset: 72)
!2000 = !DIDerivedType(tag: DW_TAG_member, scope: !1129, file: !1130, line: 1184, baseType: !2001, size: 128, offset: 12416)
!2001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1129, file: !1130, line: 1184, size: 128, elements: !2002)
!2002 = !{!2003, !2004}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2001, file: !1130, line: 1185, baseType: !1141, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2001, file: !1130, line: 1186, baseType: !384, size: 128, align: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1129, file: !1130, line: 1190, baseType: !2006, size: 64, offset: 12544)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1130, line: 53, flags: DIFlagFwdDecl)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1129, file: !1130, line: 1192, baseType: !2009, size: 128, offset: 12608)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1089, line: 64, size: 128, elements: !2010)
!2010 = !{!2011, !2012, !2013}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2009, file: !1089, line: 65, baseType: !748, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2009, file: !1089, line: 67, baseType: !226, size: 32, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2009, file: !1089, line: 68, baseType: !226, size: 32, offset: 96)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1129, file: !1130, line: 1206, baseType: !165, size: 32, offset: 12736)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1129, file: !1130, line: 1207, baseType: !165, size: 32, offset: 12768)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1129, file: !1130, line: 1209, baseType: !191, size: 64, offset: 12800)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1129, file: !1130, line: 1219, baseType: !437, size: 64, offset: 12864)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1129, file: !1130, line: 1220, baseType: !437, size: 64, offset: 12928)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1129, file: !1130, line: 1317, baseType: !165, size: 32, offset: 12992)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1129, file: !1130, line: 1319, baseType: !1128, size: 64, offset: 13056)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1129, file: !1130, line: 1322, baseType: !2022, size: 64, offset: 13120)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1130, line: 1322, flags: DIFlagFwdDecl)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1129, file: !1130, line: 1326, baseType: !1141, size: 32, offset: 13184)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1129, file: !1130, line: 1342, baseType: !144, size: 64, offset: 13248)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1129, file: !1130, line: 1343, baseType: !438, size: 64, offset: 13312)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1129, file: !1130, line: 1344, baseType: !437, size: 64, offset: 13376)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1129, file: !1130, line: 1345, baseType: !438, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1129, file: !1130, line: 1346, baseType: !438, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1129, file: !1130, line: 1347, baseType: !438, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1129, file: !1130, line: 1348, baseType: !384, size: 128, align: 64, offset: 13504)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1129, file: !1130, line: 1358, baseType: !2033, size: 34816, offset: 13824)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2034, line: 485, size: 34816, elements: !2035)
!2034 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2035 = !{!2036, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2065, !2066, !2067, !2068, !2069, !2070, !2073, !2074, !2075}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2033, file: !2034, line: 487, baseType: !2037, size: 192)
!2037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2038, size: 192, elements: !676)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2039, line: 16, size: 64, elements: !2040)
!2039 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2040 = !{!2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2038, file: !2039, line: 17, baseType: !322, size: 16)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2038, file: !2039, line: 18, baseType: !322, size: 16, offset: 16)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2038, file: !2039, line: 19, baseType: !322, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2038, file: !2039, line: 19, baseType: !322, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2038, file: !2039, line: 19, baseType: !322, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2038, file: !2039, line: 19, baseType: !322, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2038, file: !2039, line: 19, baseType: !322, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2038, file: !2039, line: 20, baseType: !322, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2038, file: !2039, line: 20, baseType: !322, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2038, file: !2039, line: 20, baseType: !322, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2038, file: !2039, line: 20, baseType: !322, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2038, file: !2039, line: 20, baseType: !322, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2038, file: !2039, line: 20, baseType: !322, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2033, file: !2034, line: 491, baseType: !191, size: 64, offset: 192)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2033, file: !2034, line: 495, baseType: !185, size: 16, offset: 256)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2033, file: !2034, line: 496, baseType: !185, size: 16, offset: 272)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2033, file: !2034, line: 497, baseType: !185, size: 16, offset: 288)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2033, file: !2034, line: 498, baseType: !185, size: 16, offset: 304)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2033, file: !2034, line: 502, baseType: !191, size: 64, offset: 320)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2033, file: !2034, line: 503, baseType: !191, size: 64, offset: 384)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2033, file: !2034, line: 514, baseType: !2062, size: 256, offset: 448)
!2062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2063, size: 256, elements: !155)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2034, line: 483, flags: DIFlagFwdDecl)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2033, file: !2034, line: 516, baseType: !191, size: 64, offset: 704)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2033, file: !2034, line: 518, baseType: !191, size: 64, offset: 768)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2033, file: !2034, line: 520, baseType: !191, size: 64, offset: 832)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2033, file: !2034, line: 521, baseType: !191, size: 64, offset: 896)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2033, file: !2034, line: 522, baseType: !191, size: 64, offset: 960)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2033, file: !2034, line: 528, baseType: !2071, size: 64, offset: 1024)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2034, line: 10, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2033, file: !2034, line: 535, baseType: !191, size: 64, offset: 1088)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2033, file: !2034, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2033, file: !2034, line: 540, baseType: !2076, size: 33280, offset: 1536)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2077, line: 317, size: 33280, elements: !2078)
!2077 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2078 = !{!2079, !2080, !2081}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2076, file: !2077, line: 330, baseType: !7, size: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2076, file: !2077, line: 337, baseType: !191, size: 64, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2076, file: !2077, line: 348, baseType: !2082, size: 32768, offset: 512)
!2082 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2077, line: 304, size: 32768, elements: !2083)
!2083 = !{!2084, !2099, !2134, !2184, !2197}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2082, file: !2077, line: 305, baseType: !2085, size: 896)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2077, line: 12, size: 896, elements: !2086)
!2086 = !{!2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2098}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2085, file: !2077, line: 13, baseType: !434, size: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2085, file: !2077, line: 14, baseType: !434, size: 32, offset: 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2085, file: !2077, line: 15, baseType: !434, size: 32, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2085, file: !2077, line: 16, baseType: !434, size: 32, offset: 96)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2085, file: !2077, line: 17, baseType: !434, size: 32, offset: 128)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2085, file: !2077, line: 18, baseType: !434, size: 32, offset: 160)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2085, file: !2077, line: 19, baseType: !434, size: 32, offset: 192)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2085, file: !2077, line: 22, baseType: !2095, size: 640, offset: 224)
!2095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 640, elements: !2096)
!2096 = !{!2097}
!2097 = !DISubrange(count: 20)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2085, file: !2077, line: 25, baseType: !434, size: 32, offset: 864)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2082, file: !2077, line: 306, baseType: !2100, size: 4096, align: 128)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2077, line: 34, size: 4096, align: 128, elements: !2101)
!2101 = !{!2102, !2103, !2104, !2105, !2106, !2121, !2122, !2123, !2125, !2127, !2129}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2100, file: !2077, line: 35, baseType: !322, size: 16)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2100, file: !2077, line: 36, baseType: !322, size: 16, offset: 16)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2100, file: !2077, line: 37, baseType: !322, size: 16, offset: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2100, file: !2077, line: 38, baseType: !322, size: 16, offset: 48)
!2106 = !DIDerivedType(tag: DW_TAG_member, scope: !2100, file: !2077, line: 39, baseType: !2107, size: 128, offset: 64)
!2107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2100, file: !2077, line: 39, size: 128, elements: !2108)
!2108 = !{!2109, !2114}
!2109 = !DIDerivedType(tag: DW_TAG_member, scope: !2107, file: !2077, line: 40, baseType: !2110, size: 128)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2107, file: !2077, line: 40, size: 128, elements: !2111)
!2111 = !{!2112, !2113}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2110, file: !2077, line: 41, baseType: !437, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2110, file: !2077, line: 42, baseType: !437, size: 64, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, scope: !2107, file: !2077, line: 44, baseType: !2115, size: 128)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2107, file: !2077, line: 44, size: 128, elements: !2116)
!2116 = !{!2117, !2118, !2119, !2120}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2115, file: !2077, line: 45, baseType: !434, size: 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2115, file: !2077, line: 46, baseType: !434, size: 32, offset: 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2115, file: !2077, line: 47, baseType: !434, size: 32, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2115, file: !2077, line: 48, baseType: !434, size: 32, offset: 96)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2100, file: !2077, line: 51, baseType: !434, size: 32, offset: 192)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2100, file: !2077, line: 52, baseType: !434, size: 32, offset: 224)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2100, file: !2077, line: 55, baseType: !2124, size: 1024, offset: 256)
!2124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 1024, elements: !229)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2100, file: !2077, line: 58, baseType: !2126, size: 2048, offset: 1280)
!2126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 2048, elements: !1787)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2100, file: !2077, line: 60, baseType: !2128, size: 384, offset: 3328)
!2128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 384, elements: !197)
!2129 = !DIDerivedType(tag: DW_TAG_member, scope: !2100, file: !2077, line: 62, baseType: !2130, size: 384, offset: 3712)
!2130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2100, file: !2077, line: 62, size: 384, elements: !2131)
!2131 = !{!2132, !2133}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2130, file: !2077, line: 63, baseType: !2128, size: 384)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2130, file: !2077, line: 64, baseType: !2128, size: 384)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2082, file: !2077, line: 307, baseType: !2135, size: 1088)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2077, line: 79, size: 1088, elements: !2136)
!2136 = !{!2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2183}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2135, file: !2077, line: 80, baseType: !434, size: 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2135, file: !2077, line: 81, baseType: !434, size: 32, offset: 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2135, file: !2077, line: 82, baseType: !434, size: 32, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2135, file: !2077, line: 83, baseType: !434, size: 32, offset: 96)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2135, file: !2077, line: 84, baseType: !434, size: 32, offset: 128)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2135, file: !2077, line: 85, baseType: !434, size: 32, offset: 160)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2135, file: !2077, line: 86, baseType: !434, size: 32, offset: 192)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2135, file: !2077, line: 88, baseType: !2095, size: 640, offset: 224)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2135, file: !2077, line: 89, baseType: !1263, size: 8, offset: 864)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2135, file: !2077, line: 90, baseType: !1263, size: 8, offset: 872)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2135, file: !2077, line: 91, baseType: !1263, size: 8, offset: 880)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2135, file: !2077, line: 92, baseType: !1263, size: 8, offset: 888)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2135, file: !2077, line: 93, baseType: !1263, size: 8, offset: 896)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2135, file: !2077, line: 94, baseType: !1263, size: 8, offset: 904)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2135, file: !2077, line: 95, baseType: !2152, size: 64, offset: 960)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2154, line: 11, size: 128, elements: !2155)
!2154 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2155 = !{!2156, !2157}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2153, file: !2154, line: 12, baseType: !148, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2153, file: !2154, line: 13, baseType: !2158, size: 64, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2160, line: 56, size: 1344, elements: !2161)
!2160 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2161 = !{!2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2159, file: !2160, line: 61, baseType: !191, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2159, file: !2160, line: 62, baseType: !191, size: 64, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2159, file: !2160, line: 63, baseType: !191, size: 64, offset: 128)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2159, file: !2160, line: 64, baseType: !191, size: 64, offset: 192)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2159, file: !2160, line: 65, baseType: !191, size: 64, offset: 256)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2159, file: !2160, line: 66, baseType: !191, size: 64, offset: 320)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2159, file: !2160, line: 68, baseType: !191, size: 64, offset: 384)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2159, file: !2160, line: 69, baseType: !191, size: 64, offset: 448)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2159, file: !2160, line: 70, baseType: !191, size: 64, offset: 512)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2159, file: !2160, line: 71, baseType: !191, size: 64, offset: 576)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2159, file: !2160, line: 72, baseType: !191, size: 64, offset: 640)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2159, file: !2160, line: 73, baseType: !191, size: 64, offset: 704)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2159, file: !2160, line: 74, baseType: !191, size: 64, offset: 768)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2159, file: !2160, line: 75, baseType: !191, size: 64, offset: 832)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2159, file: !2160, line: 76, baseType: !191, size: 64, offset: 896)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2159, file: !2160, line: 81, baseType: !191, size: 64, offset: 960)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2159, file: !2160, line: 83, baseType: !191, size: 64, offset: 1024)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2159, file: !2160, line: 84, baseType: !191, size: 64, offset: 1088)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2159, file: !2160, line: 85, baseType: !191, size: 64, offset: 1152)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2159, file: !2160, line: 86, baseType: !191, size: 64, offset: 1216)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2159, file: !2160, line: 87, baseType: !191, size: 64, offset: 1280)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2135, file: !2077, line: 96, baseType: !434, size: 32, offset: 1024)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2082, file: !2077, line: 308, baseType: !2185, size: 4608, align: 512)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2077, line: 289, size: 4608, align: 512, elements: !2186)
!2186 = !{!2187, !2188, !2195}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2185, file: !2077, line: 290, baseType: !2100, size: 4096, align: 128)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2185, file: !2077, line: 291, baseType: !2189, size: 512, offset: 4096)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2077, line: 268, size: 512, elements: !2190)
!2190 = !{!2191, !2192, !2193}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2189, file: !2077, line: 269, baseType: !437, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2189, file: !2077, line: 270, baseType: !437, size: 64, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2189, file: !2077, line: 271, baseType: !2194, size: 384, offset: 128)
!2194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 384, elements: !1530)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2185, file: !2077, line: 292, baseType: !2196, offset: 4608)
!2196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1263, elements: !1628)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2082, file: !2077, line: 309, baseType: !2198, size: 32768)
!2198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1263, size: 32768, elements: !2199)
!2199 = !{!2200}
!2200 = !DISubrange(count: 4096)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1125, file: !750, line: 378, baseType: !2202, size: 64, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1121, file: !750, line: 384, baseType: !1409, size: 192, offset: 192)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !996, file: !750, line: 500, baseType: !346, offset: 6656)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !996, file: !750, line: 501, baseType: !2206, size: 64, offset: 6656)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !750, line: 387, flags: DIFlagFwdDecl)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !996, file: !750, line: 516, baseType: !1618, size: 64, offset: 6720)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !996, file: !750, line: 519, baseType: !371, size: 64, offset: 6784)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !996, file: !750, line: 521, baseType: !2211, size: 64, offset: 6848)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !750, line: 521, flags: DIFlagFwdDecl)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !996, file: !750, line: 545, baseType: !774, size: 32, offset: 6912)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !996, file: !750, line: 548, baseType: !508, size: 8, offset: 6944)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !996, file: !750, line: 550, baseType: !2216, offset: 6952)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2217, line: 142, elements: !360)
!2217 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !996, file: !750, line: 554, baseType: !1865, size: 256, offset: 6976)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !996, file: !750, line: 557, baseType: !434, size: 32, offset: 7232)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !993, file: !750, line: 565, baseType: !2221, offset: 7296)
!2221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, elements: !2222)
!2222 = !{!2223}
!2223 = !DISubrange(count: -1)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !989, file: !750, line: 151, baseType: !774, size: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !982, file: !750, line: 156, baseType: !346, offset: 256)
!2226 = !DIDerivedType(tag: DW_TAG_member, scope: !754, file: !750, line: 159, baseType: !2227, size: 128)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !754, file: !750, line: 159, size: 128, elements: !2228)
!2228 = !{!2229, !2232}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2227, file: !750, line: 161, baseType: !2230, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !750, line: 161, flags: DIFlagFwdDecl)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2227, file: !750, line: 162, baseType: !144, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !754, file: !750, line: 176, baseType: !384, size: 128, align: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, scope: !749, file: !750, line: 179, baseType: !2235, size: 32, offset: 384)
!2235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !749, file: !750, line: 179, size: 32, elements: !2236)
!2236 = !{!2237, !2238, !2239, !2240}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2235, file: !750, line: 184, baseType: !774, size: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2235, file: !750, line: 192, baseType: !7, size: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2235, file: !750, line: 194, baseType: !7, size: 32)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2235, file: !750, line: 195, baseType: !165, size: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !749, file: !750, line: 199, baseType: !774, size: 32, offset: 416)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !684, file: !31, line: 1964, baseType: !2243, size: 64, offset: 1344)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!148, !621, !2246}
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2248, line: 12, size: 256, elements: !2249)
!2248 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2249 = !{!2250, !2251, !2252, !2253, !2254}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2247, file: !2248, line: 13, baseType: !142, size: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2247, file: !2248, line: 16, baseType: !165, size: 32, offset: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2247, file: !2248, line: 23, baseType: !191, size: 64, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2247, file: !2248, line: 30, baseType: !191, size: 64, offset: 128)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2247, file: !2248, line: 33, baseType: !2255, size: 64, offset: 192)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !750, line: 27, flags: DIFlagFwdDecl)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !684, file: !31, line: 1966, baseType: !2243, size: 64, offset: 1408)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !622, file: !31, line: 1424, baseType: !2259, size: 64, offset: 448)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2261)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 322, size: 704, elements: !2262)
!2262 = !{!2263, !2309, !2313, !2317, !2318, !2319, !2320, !2321, !2326, !2331, !2335}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2261, file: !25, line: 323, baseType: !2264, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!165, !2267}
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 294, size: 1600, elements: !2269)
!2269 = !{!2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2294, !2295, !2296}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2268, file: !25, line: 295, baseType: !664, size: 128)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2268, file: !25, line: 296, baseType: !362, size: 128, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2268, file: !25, line: 297, baseType: !362, size: 128, offset: 256)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2268, file: !25, line: 298, baseType: !362, size: 128, offset: 384)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2268, file: !25, line: 299, baseType: !332, size: 192, offset: 512)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2268, file: !25, line: 300, baseType: !346, offset: 704)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2268, file: !25, line: 301, baseType: !774, size: 32, offset: 704)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2268, file: !25, line: 302, baseType: !621, size: 64, offset: 768)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2268, file: !25, line: 303, baseType: !2279, size: 64, offset: 832)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !2280)
!2280 = !{!2281, !2293}
!2281 = !DIDerivedType(tag: DW_TAG_member, scope: !2279, file: !25, line: 69, baseType: !2282, size: 32)
!2282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2279, file: !25, line: 69, size: 32, elements: !2283)
!2283 = !{!2284, !2285, !2286}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2282, file: !25, line: 70, baseType: !451, size: 32)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2282, file: !25, line: 71, baseType: !460, size: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2282, file: !25, line: 72, baseType: !2287, size: 32)
!2287 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2288, line: 24, baseType: !2289)
!2288 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2288, line: 22, size: 32, elements: !2290)
!2290 = !{!2291}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2289, file: !2288, line: 23, baseType: !2292, size: 32)
!2292 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2288, line: 20, baseType: !457)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2279, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2268, file: !25, line: 304, baseType: !549, size: 64, offset: 896)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2268, file: !25, line: 305, baseType: !191, size: 64, offset: 960)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2268, file: !25, line: 306, baseType: !2297, size: 576, offset: 1024)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !2298)
!2298 = !{!2299, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2297, file: !25, line: 206, baseType: !2300, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !344)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2297, file: !25, line: 207, baseType: !2300, size: 64, offset: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2297, file: !25, line: 208, baseType: !2300, size: 64, offset: 128)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2297, file: !25, line: 209, baseType: !2300, size: 64, offset: 192)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2297, file: !25, line: 210, baseType: !2300, size: 64, offset: 256)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2297, file: !25, line: 211, baseType: !2300, size: 64, offset: 320)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2297, file: !25, line: 212, baseType: !2300, size: 64, offset: 384)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2297, file: !25, line: 213, baseType: !556, size: 64, offset: 448)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2297, file: !25, line: 214, baseType: !556, size: 64, offset: 512)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2261, file: !25, line: 324, baseType: !2310, size: 64, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!2267, !621, !165}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2261, file: !25, line: 325, baseType: !2314, size: 64, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{null, !2267}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2261, file: !25, line: 326, baseType: !2264, size: 64, offset: 192)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2261, file: !25, line: 327, baseType: !2264, size: 64, offset: 256)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2261, file: !25, line: 328, baseType: !2264, size: 64, offset: 320)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2261, file: !25, line: 329, baseType: !712, size: 64, offset: 384)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2261, file: !25, line: 332, baseType: !2322, size: 64, offset: 448)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!2325, !444}
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2261, file: !25, line: 333, baseType: !2327, size: 64, offset: 512)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!165, !444, !2330}
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2261, file: !25, line: 335, baseType: !2332, size: 64, offset: 576)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!165, !444, !2325}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2261, file: !25, line: 337, baseType: !2336, size: 64, offset: 640)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!165, !621, !2339}
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !622, file: !31, line: 1425, baseType: !2341, size: 64, offset: 512)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2343)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 428, size: 704, elements: !2344)
!2344 = !{!2345, !2349, !2350, !2354, !2355, !2356, !2371, !2394, !2398, !2399, !2422}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2343, file: !25, line: 429, baseType: !2346, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!165, !621, !165, !165, !565}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2343, file: !25, line: 430, baseType: !712, size: 64, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2343, file: !25, line: 431, baseType: !2351, size: 64, offset: 128)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!165, !621, !7}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2343, file: !25, line: 432, baseType: !2351, size: 64, offset: 192)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2343, file: !25, line: 433, baseType: !712, size: 64, offset: 256)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2343, file: !25, line: 434, baseType: !2357, size: 64, offset: 320)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!165, !621, !165, !2360}
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 415, size: 256, elements: !2362)
!2362 = !{!2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2361, file: !25, line: 416, baseType: !165, size: 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2361, file: !25, line: 417, baseType: !7, size: 32, offset: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2361, file: !25, line: 418, baseType: !7, size: 32, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2361, file: !25, line: 420, baseType: !7, size: 32, offset: 96)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2361, file: !25, line: 421, baseType: !7, size: 32, offset: 128)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2361, file: !25, line: 422, baseType: !7, size: 32, offset: 160)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2361, file: !25, line: 423, baseType: !7, size: 32, offset: 192)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2361, file: !25, line: 424, baseType: !7, size: 32, offset: 224)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2343, file: !25, line: 435, baseType: !2372, size: 64, offset: 384)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!165, !621, !2279, !2375}
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 343, size: 960, elements: !2377)
!2377 = !{!2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2376, file: !25, line: 344, baseType: !165, size: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2376, file: !25, line: 345, baseType: !437, size: 64, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2376, file: !25, line: 346, baseType: !437, size: 64, offset: 128)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2376, file: !25, line: 347, baseType: !437, size: 64, offset: 192)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2376, file: !25, line: 348, baseType: !437, size: 64, offset: 256)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2376, file: !25, line: 349, baseType: !437, size: 64, offset: 320)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2376, file: !25, line: 350, baseType: !437, size: 64, offset: 384)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2376, file: !25, line: 351, baseType: !342, size: 64, offset: 448)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2376, file: !25, line: 353, baseType: !342, size: 64, offset: 512)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2376, file: !25, line: 354, baseType: !165, size: 32, offset: 576)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2376, file: !25, line: 355, baseType: !165, size: 32, offset: 608)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2376, file: !25, line: 356, baseType: !437, size: 64, offset: 640)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2376, file: !25, line: 357, baseType: !437, size: 64, offset: 704)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2376, file: !25, line: 358, baseType: !437, size: 64, offset: 768)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2376, file: !25, line: 359, baseType: !342, size: 64, offset: 832)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2376, file: !25, line: 360, baseType: !165, size: 32, offset: 896)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2343, file: !25, line: 436, baseType: !2395, size: 64, offset: 448)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!165, !621, !2339, !2375}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2343, file: !25, line: 438, baseType: !2372, size: 64, offset: 512)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2343, file: !25, line: 439, baseType: !2400, size: 64, offset: 576)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!165, !621, !2403}
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 409, size: 1408, elements: !2405)
!2405 = !{!2406, !2407}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2404, file: !25, line: 410, baseType: !7, size: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2404, file: !25, line: 411, baseType: !2408, size: 1344, offset: 64)
!2408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2409, size: 1344, elements: !676)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 395, size: 448, elements: !2410)
!2410 = !{!2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2421}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2409, file: !25, line: 396, baseType: !7, size: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2409, file: !25, line: 397, baseType: !7, size: 32, offset: 32)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2409, file: !25, line: 399, baseType: !7, size: 32, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2409, file: !25, line: 400, baseType: !7, size: 32, offset: 96)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2409, file: !25, line: 401, baseType: !7, size: 32, offset: 128)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2409, file: !25, line: 402, baseType: !7, size: 32, offset: 160)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2409, file: !25, line: 403, baseType: !7, size: 32, offset: 192)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2409, file: !25, line: 404, baseType: !439, size: 64, offset: 256)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2409, file: !25, line: 405, baseType: !2420, size: 64, offset: 320)
!2420 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !143, line: 126, baseType: !437)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2409, file: !25, line: 406, baseType: !2420, size: 64, offset: 384)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2343, file: !25, line: 440, baseType: !2351, size: 64, offset: 640)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !622, file: !31, line: 1426, baseType: !2424, size: 64, offset: 576)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2426)
!2426 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !622, file: !31, line: 1427, baseType: !191, size: 64, offset: 640)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !622, file: !31, line: 1428, baseType: !191, size: 64, offset: 704)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !622, file: !31, line: 1429, baseType: !191, size: 64, offset: 768)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !622, file: !31, line: 1430, baseType: !401, size: 64, offset: 832)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !622, file: !31, line: 1431, baseType: !794, size: 256, offset: 896)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !622, file: !31, line: 1432, baseType: !165, size: 32, offset: 1152)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !622, file: !31, line: 1433, baseType: !774, size: 32, offset: 1184)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !622, file: !31, line: 1437, baseType: !2435, size: 64, offset: 1216)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2438)
!2438 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !622, file: !31, line: 1449, baseType: !2440, size: 64, offset: 1280)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !417, line: 34, size: 64, elements: !2441)
!2441 = !{!2442}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2440, file: !417, line: 35, baseType: !420, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !622, file: !31, line: 1450, baseType: !362, size: 128, offset: 1344)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !622, file: !31, line: 1451, baseType: !2445, size: 64, offset: 1472)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !622, file: !31, line: 1452, baseType: !1831, size: 64, offset: 1536)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !622, file: !31, line: 1453, baseType: !2449, size: 64, offset: 1600)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !622, file: !31, line: 1454, baseType: !664, size: 128, offset: 1664)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !622, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !622, file: !31, line: 1456, baseType: !2454, size: 2432, offset: 1856)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 518, size: 2432, elements: !2455)
!2455 = !{!2456, !2457, !2458, !2460, !2492}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2454, file: !25, line: 519, baseType: !7, size: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2454, file: !25, line: 520, baseType: !794, size: 256, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2454, file: !25, line: 521, baseType: !2459, size: 192, offset: 320)
!2459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 192, elements: !676)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2454, file: !25, line: 522, baseType: !2461, size: 1728, offset: 512)
!2461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2462, size: 1728, elements: !676)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !2463)
!2463 = !{!2464, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2462, file: !25, line: 223, baseType: !2465, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 443, size: 256, elements: !2467)
!2467 = !{!2468, !2469, !2482, !2483}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2466, file: !25, line: 444, baseType: !165, size: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2466, file: !25, line: 445, baseType: !2470, size: 64, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2472)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 310, size: 512, elements: !2473)
!2473 = !{!2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2472, file: !25, line: 311, baseType: !712, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2472, file: !25, line: 312, baseType: !712, size: 64, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2472, file: !25, line: 313, baseType: !712, size: 64, offset: 128)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2472, file: !25, line: 314, baseType: !712, size: 64, offset: 192)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2472, file: !25, line: 315, baseType: !2264, size: 64, offset: 256)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2472, file: !25, line: 316, baseType: !2264, size: 64, offset: 320)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2472, file: !25, line: 317, baseType: !2264, size: 64, offset: 384)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2472, file: !25, line: 318, baseType: !2336, size: 64, offset: 448)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2466, file: !25, line: 446, baseType: !655, size: 64, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2466, file: !25, line: 447, baseType: !2465, size: 64, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2462, file: !25, line: 224, baseType: !165, size: 32, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2462, file: !25, line: 226, baseType: !362, size: 128, offset: 128)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2462, file: !25, line: 227, baseType: !191, size: 64, offset: 256)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2462, file: !25, line: 228, baseType: !7, size: 32, offset: 320)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2462, file: !25, line: 229, baseType: !7, size: 32, offset: 352)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2462, file: !25, line: 230, baseType: !2300, size: 64, offset: 384)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2462, file: !25, line: 231, baseType: !2300, size: 64, offset: 448)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2462, file: !25, line: 232, baseType: !144, size: 64, offset: 512)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2454, file: !25, line: 523, baseType: !2493, size: 192, offset: 2240)
!2493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2470, size: 192, elements: !676)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !622, file: !31, line: 1458, baseType: !2495, size: 2112, offset: 4288)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !2496)
!2496 = !{!2497, !2498, !2499}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2495, file: !31, line: 1411, baseType: !165, size: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2495, file: !31, line: 1412, baseType: !1388, size: 128, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2495, file: !31, line: 1413, baseType: !2500, size: 1920, offset: 192)
!2500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2501, size: 1920, elements: !676)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2502, line: 12, size: 640, elements: !2503)
!2502 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2503 = !{!2504, !2512, !2513, !2518, !2519}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2501, file: !2502, line: 13, baseType: !2505, size: 320)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2506, line: 17, size: 320, elements: !2507)
!2506 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2507 = !{!2508, !2509, !2510, !2511}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2505, file: !2506, line: 18, baseType: !165, size: 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2505, file: !2506, line: 19, baseType: !165, size: 32, offset: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2505, file: !2506, line: 20, baseType: !1388, size: 128, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2505, file: !2506, line: 22, baseType: !384, size: 128, align: 64, offset: 192)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2501, file: !2502, line: 14, baseType: !231, size: 64, offset: 320)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2501, file: !2502, line: 15, baseType: !2514, size: 64, offset: 384)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2515, line: 16, size: 64, elements: !2516)
!2515 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2516 = !{!2517}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2514, file: !2515, line: 17, baseType: !1128, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2501, file: !2502, line: 16, baseType: !1388, size: 128, offset: 448)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2501, file: !2502, line: 17, baseType: !774, size: 32, offset: 576)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !622, file: !31, line: 1465, baseType: !144, size: 64, offset: 6400)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !622, file: !31, line: 1468, baseType: !434, size: 32, offset: 6464)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !622, file: !31, line: 1470, baseType: !556, size: 64, offset: 6528)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !622, file: !31, line: 1471, baseType: !556, size: 64, offset: 6592)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !622, file: !31, line: 1473, baseType: !226, size: 32, offset: 6656)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !622, file: !31, line: 1474, baseType: !2526, size: 64, offset: 6720)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !622, file: !31, line: 1477, baseType: !2529, size: 256, offset: 6784)
!2529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 256, elements: !229)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !622, file: !31, line: 1478, baseType: !2531, size: 128, offset: 7040)
!2531 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2532, line: 18, baseType: !2533)
!2532 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2532, line: 16, size: 128, elements: !2534)
!2534 = !{!2535}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2533, file: !2532, line: 17, baseType: !2536, size: 128)
!2536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 128, elements: !1640)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !622, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !622, file: !31, line: 1481, baseType: !2539, size: 32, offset: 7200)
!2539 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !143, line: 150, baseType: !7)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !622, file: !31, line: 1487, baseType: !332, size: 192, offset: 7232)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !622, file: !31, line: 1493, baseType: !153, size: 64, offset: 7424)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !622, file: !31, line: 1495, baseType: !2543, size: 64, offset: 7488)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2545)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !399, line: 135, size: 1024, align: 512, elements: !2546)
!2546 = !{!2547, !2551, !2552, !2559, !2565, !2569, !2573, !2577, !2578, !2582, !2586, !2591, !2595}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2545, file: !399, line: 136, baseType: !2548, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!165, !401, !7}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2545, file: !399, line: 137, baseType: !2548, size: 64, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2545, file: !399, line: 138, baseType: !2553, size: 64, offset: 128)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!165, !2556, !2558}
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2545, file: !399, line: 139, baseType: !2560, size: 64, offset: 192)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!165, !2556, !7, !153, !2563}
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2545, file: !399, line: 141, baseType: !2566, size: 64, offset: 256)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!165, !2556}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2545, file: !399, line: 142, baseType: !2570, size: 64, offset: 320)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!165, !401}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2545, file: !399, line: 143, baseType: !2574, size: 64, offset: 384)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{null, !401}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2545, file: !399, line: 144, baseType: !2574, size: 64, offset: 448)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2545, file: !399, line: 145, baseType: !2579, size: 64, offset: 512)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{null, !401, !444}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2545, file: !399, line: 146, baseType: !2583, size: 64, offset: 576)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!503, !401, !503, !165}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2545, file: !399, line: 147, baseType: !2587, size: 64, offset: 640)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!397, !2590}
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2545, file: !399, line: 148, baseType: !2592, size: 64, offset: 704)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!165, !565, !508}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2545, file: !399, line: 149, baseType: !2596, size: 64, offset: 768)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!401, !401, !2599}
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !622, file: !31, line: 1500, baseType: !165, size: 32, offset: 7552)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !622, file: !31, line: 1502, baseType: !2603, size: 448, offset: 7616)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2248, line: 60, size: 448, elements: !2604)
!2604 = !{!2605, !2610, !2611, !2612, !2613, !2614, !2615}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2603, file: !2248, line: 61, baseType: !2606, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!191, !2609, !2246}
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2603, file: !2248, line: 63, baseType: !2606, size: 64, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2603, file: !2248, line: 66, baseType: !148, size: 64, offset: 128)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2603, file: !2248, line: 67, baseType: !165, size: 32, offset: 192)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2603, file: !2248, line: 68, baseType: !7, size: 32, offset: 224)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2603, file: !2248, line: 71, baseType: !362, size: 128, offset: 256)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2603, file: !2248, line: 77, baseType: !2616, size: 64, offset: 384)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !622, file: !31, line: 1505, baseType: !336, size: 64, offset: 8064)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !622, file: !31, line: 1508, baseType: !336, size: 64, offset: 8128)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !622, file: !31, line: 1511, baseType: !165, size: 32, offset: 8192)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !622, file: !31, line: 1514, baseType: !927, size: 32, offset: 8224)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !622, file: !31, line: 1517, baseType: !2622, size: 64, offset: 8256)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1866, line: 18, flags: DIFlagFwdDecl)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !622, file: !31, line: 1518, baseType: !660, size: 64, offset: 8320)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !622, file: !31, line: 1525, baseType: !1618, size: 64, offset: 8384)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !622, file: !31, line: 1532, baseType: !2627, size: 64, offset: 8448)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2628, line: 52, size: 64, elements: !2629)
!2628 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2629 = !{!2630}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2627, file: !2628, line: 53, baseType: !2631, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2628, line: 40, size: 256, elements: !2633)
!2633 = !{!2634, !2635, !2640}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2632, file: !2628, line: 42, baseType: !346)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2632, file: !2628, line: 44, baseType: !2636, size: 192)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2628, line: 28, size: 192, elements: !2637)
!2637 = !{!2638, !2639}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2636, file: !2628, line: 29, baseType: !362, size: 128)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2636, file: !2628, line: 31, baseType: !148, size: 64, offset: 128)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2632, file: !2628, line: 49, baseType: !148, size: 64, offset: 192)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !622, file: !31, line: 1533, baseType: !2627, size: 64, offset: 8512)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !622, file: !31, line: 1534, baseType: !384, size: 128, align: 64, offset: 8576)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !622, file: !31, line: 1535, baseType: !1865, size: 256, offset: 8704)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !622, file: !31, line: 1537, baseType: !332, size: 192, offset: 8960)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !622, file: !31, line: 1542, baseType: !165, size: 32, offset: 9152)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !622, file: !31, line: 1545, baseType: !346, offset: 9184)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !622, file: !31, line: 1546, baseType: !362, size: 128, offset: 9216)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !622, file: !31, line: 1548, baseType: !346, offset: 9344)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !622, file: !31, line: 1549, baseType: !362, size: 128, offset: 9344)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !445, file: !31, line: 624, baseType: !761, size: 64, offset: 256)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !445, file: !31, line: 631, baseType: !191, size: 64, offset: 320)
!2652 = !DIDerivedType(tag: DW_TAG_member, scope: !445, file: !31, line: 639, baseType: !2653, size: 32, offset: 384)
!2653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !445, file: !31, line: 639, size: 32, elements: !2654)
!2654 = !{!2655, !2657}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2653, file: !31, line: 640, baseType: !2656, size: 32)
!2656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2653, file: !31, line: 641, baseType: !7, size: 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !445, file: !31, line: 643, baseType: !531, size: 32, offset: 416)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !445, file: !31, line: 644, baseType: !549, size: 64, offset: 448)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !445, file: !31, line: 645, baseType: !552, size: 128, offset: 512)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !445, file: !31, line: 646, baseType: !552, size: 128, offset: 640)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !445, file: !31, line: 647, baseType: !552, size: 128, offset: 768)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !445, file: !31, line: 648, baseType: !346, offset: 896)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !445, file: !31, line: 649, baseType: !185, size: 16, offset: 896)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !445, file: !31, line: 650, baseType: !1263, size: 8, offset: 912)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !445, file: !31, line: 651, baseType: !1263, size: 8, offset: 920)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !445, file: !31, line: 652, baseType: !2420, size: 64, offset: 960)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !445, file: !31, line: 659, baseType: !191, size: 64, offset: 1024)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !445, file: !31, line: 660, baseType: !794, size: 256, offset: 1088)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !445, file: !31, line: 662, baseType: !191, size: 64, offset: 1344)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !445, file: !31, line: 663, baseType: !191, size: 64, offset: 1408)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !445, file: !31, line: 665, baseType: !664, size: 128, offset: 1472)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !445, file: !31, line: 666, baseType: !362, size: 128, offset: 1600)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !445, file: !31, line: 675, baseType: !362, size: 128, offset: 1728)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !445, file: !31, line: 676, baseType: !362, size: 128, offset: 1856)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !445, file: !31, line: 677, baseType: !362, size: 128, offset: 1984)
!2677 = !DIDerivedType(tag: DW_TAG_member, scope: !445, file: !31, line: 678, baseType: !2678, size: 128, offset: 2112)
!2678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !445, file: !31, line: 678, size: 128, elements: !2679)
!2679 = !{!2680, !2681}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2678, file: !31, line: 679, baseType: !660, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2678, file: !31, line: 680, baseType: !384, size: 128, align: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !445, file: !31, line: 682, baseType: !338, size: 64, offset: 2240)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !445, file: !31, line: 683, baseType: !338, size: 64, offset: 2304)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !445, file: !31, line: 684, baseType: !774, size: 32, offset: 2368)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !445, file: !31, line: 685, baseType: !774, size: 32, offset: 2400)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !445, file: !31, line: 686, baseType: !774, size: 32, offset: 2432)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !445, file: !31, line: 688, baseType: !774, size: 32, offset: 2464)
!2688 = !DIDerivedType(tag: DW_TAG_member, scope: !445, file: !31, line: 690, baseType: !2689, size: 64, offset: 2496)
!2689 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !445, file: !31, line: 690, size: 64, elements: !2690)
!2690 = !{!2691, !2914}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2689, file: !31, line: 691, baseType: !2692, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2694)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !2695)
!2695 = !{!2696, !2697, !2701, !2706, !2710, !2711, !2712, !2716, !2729, !2730, !2738, !2742, !2743, !2747, !2748, !2752, !2757, !2758, !2762, !2766, !2874, !2878, !2879, !2883, !2884, !2888, !2892, !2897, !2901, !2905, !2909, !2913}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2694, file: !31, line: 1823, baseType: !655, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2694, file: !31, line: 1824, baseType: !2698, size: 64, offset: 64)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!549, !371, !549, !165}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2694, file: !31, line: 1825, baseType: !2702, size: 64, offset: 128)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!594, !371, !503, !597, !2705}
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2694, file: !31, line: 1826, baseType: !2707, size: 64, offset: 192)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!594, !371, !153, !597, !2705}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2694, file: !31, line: 1827, baseType: !864, size: 64, offset: 256)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2694, file: !31, line: 1828, baseType: !864, size: 64, offset: 320)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2694, file: !31, line: 1829, baseType: !2713, size: 64, offset: 384)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!165, !867, !508}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2694, file: !31, line: 1830, baseType: !2717, size: 64, offset: 448)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!165, !371, !2720}
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !2722)
!2722 = !{!2723, !2728}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2721, file: !31, line: 1777, baseType: !2724, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !2725)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!165, !2720, !153, !165, !549, !437, !7}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2721, file: !31, line: 1778, baseType: !549, size: 64, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2694, file: !31, line: 1831, baseType: !2717, size: 64, offset: 512)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2694, file: !31, line: 1832, baseType: !2731, size: 64, offset: 576)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!2734, !371, !2736}
!2734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2735, line: 52, baseType: !7)
!2735 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !641, line: 27, flags: DIFlagFwdDecl)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2694, file: !31, line: 1833, baseType: !2739, size: 64, offset: 640)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!148, !371, !7, !191}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2694, file: !31, line: 1834, baseType: !2739, size: 64, offset: 704)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2694, file: !31, line: 1835, baseType: !2744, size: 64, offset: 768)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!165, !371, !999}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2694, file: !31, line: 1836, baseType: !191, size: 64, offset: 832)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2694, file: !31, line: 1837, baseType: !2749, size: 64, offset: 896)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!165, !444, !371}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2694, file: !31, line: 1838, baseType: !2753, size: 64, offset: 960)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!165, !371, !2756}
!2756 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !144)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2694, file: !31, line: 1839, baseType: !2749, size: 64, offset: 1024)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2694, file: !31, line: 1840, baseType: !2759, size: 64, offset: 1088)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!165, !371, !549, !549, !165}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2694, file: !31, line: 1841, baseType: !2763, size: 64, offset: 1152)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!165, !165, !371, !165}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2694, file: !31, line: 1842, baseType: !2767, size: 64, offset: 1216)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!165, !371, !165, !2770}
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !2772)
!2772 = !{!2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2804, !2805, !2806, !2819, !2850}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2771, file: !31, line: 1063, baseType: !2770, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2771, file: !31, line: 1064, baseType: !362, size: 128, offset: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2771, file: !31, line: 1065, baseType: !664, size: 128, offset: 192)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2771, file: !31, line: 1066, baseType: !362, size: 128, offset: 320)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2771, file: !31, line: 1069, baseType: !362, size: 128, offset: 448)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2771, file: !31, line: 1072, baseType: !2756, size: 64, offset: 576)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2771, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2771, file: !31, line: 1074, baseType: !145, size: 8, offset: 672)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2771, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2771, file: !31, line: 1076, baseType: !165, size: 32, offset: 736)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2771, file: !31, line: 1077, baseType: !1388, size: 128, offset: 768)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2771, file: !31, line: 1078, baseType: !371, size: 64, offset: 896)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2771, file: !31, line: 1079, baseType: !549, size: 64, offset: 960)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2771, file: !31, line: 1080, baseType: !549, size: 64, offset: 1024)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2771, file: !31, line: 1082, baseType: !2788, size: 64, offset: 1088)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !2790)
!2790 = !{!2791, !2799, !2800, !2801, !2802, !2803}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2789, file: !31, line: 1315, baseType: !2792)
!2792 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2793, line: 20, baseType: !2794)
!2793 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2793, line: 11, elements: !2795)
!2795 = !{!2796}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2794, file: !2793, line: 12, baseType: !2797)
!2797 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !358, line: 33, baseType: !2798)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !358, line: 31, elements: !360)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2789, file: !31, line: 1316, baseType: !165, size: 32)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2789, file: !31, line: 1317, baseType: !165, size: 32, offset: 32)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2789, file: !31, line: 1318, baseType: !2788, size: 64, offset: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2789, file: !31, line: 1319, baseType: !371, size: 64, offset: 128)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2789, file: !31, line: 1320, baseType: !384, size: 128, align: 64, offset: 192)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2771, file: !31, line: 1084, baseType: !191, size: 64, offset: 1152)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2771, file: !31, line: 1085, baseType: !191, size: 64, offset: 1216)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2771, file: !31, line: 1087, baseType: !2807, size: 64, offset: 1280)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2809)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !2810)
!2810 = !{!2811, !2815}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2809, file: !31, line: 1012, baseType: !2812, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{null, !2770, !2770}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2809, file: !31, line: 1013, baseType: !2816, size: 64, offset: 64)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{null, !2770}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2771, file: !31, line: 1088, baseType: !2820, size: 64, offset: 1344)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2822)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !2823)
!2823 = !{!2824, !2828, !2832, !2833, !2837, !2841, !2845, !2849}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2822, file: !31, line: 1017, baseType: !2825, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!2756, !2756}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2822, file: !31, line: 1018, baseType: !2829, size: 64, offset: 64)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{null, !2756}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2822, file: !31, line: 1019, baseType: !2816, size: 64, offset: 128)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2822, file: !31, line: 1020, baseType: !2834, size: 64, offset: 192)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!165, !2770, !165}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2822, file: !31, line: 1021, baseType: !2838, size: 64, offset: 256)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!508, !2770}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2822, file: !31, line: 1022, baseType: !2842, size: 64, offset: 320)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!165, !2770, !165, !365}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2822, file: !31, line: 1023, baseType: !2846, size: 64, offset: 384)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{null, !2770, !841}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2822, file: !31, line: 1024, baseType: !2838, size: 64, offset: 448)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2771, file: !31, line: 1097, baseType: !2851, size: 256, offset: 1408)
!2851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2771, file: !31, line: 1089, size: 256, elements: !2852)
!2852 = !{!2853, !2862, !2868}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2851, file: !31, line: 1090, baseType: !2854, size: 256)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2855, line: 10, size: 256, elements: !2856)
!2855 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2856 = !{!2857, !2858, !2861}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2854, file: !2855, line: 11, baseType: !434, size: 32)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2854, file: !2855, line: 12, baseType: !2859, size: 64, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2855, line: 5, flags: DIFlagFwdDecl)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2854, file: !2855, line: 13, baseType: !362, size: 128, offset: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2851, file: !31, line: 1091, baseType: !2863, size: 64)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2855, line: 17, size: 64, elements: !2864)
!2864 = !{!2865}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2863, file: !2855, line: 18, baseType: !2866, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2855, line: 16, flags: DIFlagFwdDecl)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2851, file: !31, line: 1096, baseType: !2869, size: 192)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2851, file: !31, line: 1092, size: 192, elements: !2870)
!2870 = !{!2871, !2872, !2873}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2869, file: !31, line: 1093, baseType: !362, size: 128)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2869, file: !31, line: 1094, baseType: !165, size: 32, offset: 128)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2869, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2694, file: !31, line: 1843, baseType: !2875, size: 64, offset: 1280)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!594, !371, !748, !165, !597, !2705, !165}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2694, file: !31, line: 1844, baseType: !1039, size: 64, offset: 1344)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2694, file: !31, line: 1845, baseType: !2880, size: 64, offset: 1408)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!165, !165}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2694, file: !31, line: 1846, baseType: !2767, size: 64, offset: 1472)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2694, file: !31, line: 1847, baseType: !2885, size: 64, offset: 1536)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!594, !2006, !371, !2705, !597, !7}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2694, file: !31, line: 1848, baseType: !2889, size: 64, offset: 1600)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!594, !371, !2705, !2006, !597, !7}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2694, file: !31, line: 1849, baseType: !2893, size: 64, offset: 1664)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!165, !371, !148, !2896, !841}
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2694, file: !31, line: 1850, baseType: !2898, size: 64, offset: 1728)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!148, !371, !165, !549, !549}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2694, file: !31, line: 1852, baseType: !2902, size: 64, offset: 1792)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{null, !738, !371}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2694, file: !31, line: 1856, baseType: !2906, size: 64, offset: 1856)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!594, !371, !549, !371, !549, !597, !7}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2694, file: !31, line: 1858, baseType: !2910, size: 64, offset: 1920)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!549, !371, !549, !371, !549, !549, !7}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2694, file: !31, line: 1861, baseType: !2759, size: 64, offset: 1984)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2689, file: !31, line: 692, baseType: !691, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !445, file: !31, line: 694, baseType: !2916, size: 64, offset: 2560)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !2918)
!2918 = !{!2919, !2920, !2921, !2922}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2917, file: !31, line: 1101, baseType: !346)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2917, file: !31, line: 1102, baseType: !362, size: 128)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2917, file: !31, line: 1103, baseType: !362, size: 128, offset: 128)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2917, file: !31, line: 1104, baseType: !362, size: 128, offset: 256)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !445, file: !31, line: 695, baseType: !762, size: 1216, align: 64, offset: 2624)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !445, file: !31, line: 696, baseType: !362, size: 128, offset: 3840)
!2925 = !DIDerivedType(tag: DW_TAG_member, scope: !445, file: !31, line: 697, baseType: !2926, size: 64, offset: 3968)
!2926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !445, file: !31, line: 697, size: 64, elements: !2927)
!2927 = !{!2928, !2929, !2930, !2933, !2934}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2926, file: !31, line: 698, baseType: !2006, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2926, file: !31, line: 699, baseType: !2445, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2926, file: !31, line: 700, baseType: !2931, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !31, line: 700, flags: DIFlagFwdDecl)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2926, file: !31, line: 701, baseType: !503, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2926, file: !31, line: 702, baseType: !7, size: 32)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !445, file: !31, line: 705, baseType: !226, size: 32, offset: 4032)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !445, file: !31, line: 708, baseType: !226, size: 32, offset: 4064)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !445, file: !31, line: 709, baseType: !2526, size: 64, offset: 4096)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !445, file: !31, line: 720, baseType: !144, size: 64, offset: 4160)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !402, file: !399, line: 98, baseType: !2940, size: 256, offset: 448)
!2940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 256, elements: !229)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !402, file: !399, line: 101, baseType: !2942, size: 32, offset: 704)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2943, line: 25, size: 32, elements: !2944)
!2943 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2944 = !{!2945}
!2945 = !DIDerivedType(tag: DW_TAG_member, scope: !2942, file: !2943, line: 26, baseType: !2946, size: 32)
!2946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2942, file: !2943, line: 26, size: 32, elements: !2947)
!2947 = !{!2948}
!2948 = !DIDerivedType(tag: DW_TAG_member, scope: !2946, file: !2943, line: 30, baseType: !2949, size: 32)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2946, file: !2943, line: 30, size: 32, elements: !2950)
!2950 = !{!2951, !2952}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2949, file: !2943, line: 31, baseType: !346)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2949, file: !2943, line: 32, baseType: !165, size: 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !402, file: !399, line: 102, baseType: !2543, size: 64, offset: 768)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !402, file: !399, line: 103, baseType: !621, size: 64, offset: 832)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !402, file: !399, line: 104, baseType: !191, size: 64, offset: 896)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !402, file: !399, line: 105, baseType: !144, size: 64, offset: 960)
!2957 = !DIDerivedType(tag: DW_TAG_member, scope: !402, file: !399, line: 107, baseType: !2958, size: 128, offset: 1024)
!2958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !402, file: !399, line: 107, size: 128, elements: !2959)
!2959 = !{!2960, !2961}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2958, file: !399, line: 108, baseType: !362, size: 128)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2958, file: !399, line: 109, baseType: !2962, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !402, file: !399, line: 111, baseType: !362, size: 128, offset: 1152)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !402, file: !399, line: 112, baseType: !362, size: 128, offset: 1280)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !402, file: !399, line: 120, baseType: !2966, size: 128, offset: 1408)
!2966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !402, file: !399, line: 116, size: 128, elements: !2967)
!2967 = !{!2968, !2969, !2970}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2966, file: !399, line: 117, baseType: !664, size: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2966, file: !399, line: 118, baseType: !416, size: 128)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2966, file: !399, line: 119, baseType: !384, size: 128, align: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !372, file: !31, line: 922, baseType: !444, size: 64, offset: 256)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !372, file: !31, line: 923, baseType: !2692, size: 64, offset: 320)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !372, file: !31, line: 929, baseType: !346, offset: 384)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !372, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !372, file: !31, line: 931, baseType: !336, size: 64, offset: 448)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !372, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !372, file: !31, line: 933, baseType: !2539, size: 32, offset: 544)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !372, file: !31, line: 934, baseType: !332, size: 192, offset: 576)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !372, file: !31, line: 935, baseType: !549, size: 64, offset: 768)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !372, file: !31, line: 936, baseType: !2981, size: 192, offset: 832)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !2982)
!2982 = !{!2983, !2984, !2985, !2986, !2987, !2988}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2981, file: !31, line: 886, baseType: !2792)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2981, file: !31, line: 887, baseType: !1378, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2981, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2981, file: !31, line: 889, baseType: !451, size: 32, offset: 96)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2981, file: !31, line: 889, baseType: !451, size: 32, offset: 128)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2981, file: !31, line: 890, baseType: !165, size: 32, offset: 160)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !372, file: !31, line: 937, baseType: !1454, size: 64, offset: 1024)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !372, file: !31, line: 938, baseType: !2991, size: 256, offset: 1088)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !2992)
!2992 = !{!2993, !2994, !2995, !2996, !2997, !2998}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2991, file: !31, line: 897, baseType: !191, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2991, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2991, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2991, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2991, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2991, file: !31, line: 904, baseType: !549, size: 64, offset: 192)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !372, file: !31, line: 940, baseType: !437, size: 64, offset: 1344)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !372, file: !31, line: 945, baseType: !144, size: 64, offset: 1408)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !372, file: !31, line: 949, baseType: !362, size: 128, offset: 1472)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !372, file: !31, line: 950, baseType: !362, size: 128, offset: 1600)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !372, file: !31, line: 952, baseType: !761, size: 64, offset: 1728)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !372, file: !31, line: 953, baseType: !927, size: 32, offset: 1792)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !372, file: !31, line: 954, baseType: !927, size: 32, offset: 1824)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !172, file: !173, line: 163, baseType: !3007, size: 64, offset: 2048)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !173, line: 24, flags: DIFlagFwdDecl)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !172, file: !173, line: 165, baseType: !7, size: 32, offset: 2112)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !172, file: !173, line: 166, baseType: !3011, size: 320, offset: 2176)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3012, line: 11, size: 320, elements: !3013)
!3012 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3013 = !{!3014, !3015, !3016, !3021}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3011, file: !3012, line: 16, baseType: !664, size: 128)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3011, file: !3012, line: 17, baseType: !191, size: 64, offset: 128)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3011, file: !3012, line: 18, baseType: !3017, size: 64, offset: 192)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{null, !3020}
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3011, file: !3012, line: 19, baseType: !434, size: 32, offset: 256)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !172, file: !173, line: 168, baseType: !3023, size: 64, offset: 2496)
!3023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 64, elements: !206)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !172, file: !173, line: 170, baseType: !3025, size: 64, offset: 2560)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !3027, line: 43, size: 256, elements: !3028)
!3027 = !DIFile(filename: "./include/linux/input/mt.h", directory: "/home/lizy2001/genbc/linux")
!3028 = !{!3029, !3030, !3031, !3032, !3033, !3034, !3035}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "trkid", scope: !3026, file: !3027, line: 44, baseType: !165, size: 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "num_slots", scope: !3026, file: !3027, line: 45, baseType: !165, size: 32, offset: 32)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !3026, file: !3027, line: 46, baseType: !165, size: 32, offset: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3026, file: !3027, line: 47, baseType: !7, size: 32, offset: 96)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !3026, file: !3027, line: 48, baseType: !7, size: 32, offset: 128)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !3026, file: !3027, line: 49, baseType: !732, size: 64, offset: 192)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !3026, file: !3027, line: 50, baseType: !3036, offset: 256)
!3036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3037, elements: !2222)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt_slot", file: !3027, line: 27, size: 512, elements: !3038)
!3038 = !{!3039, !3043, !3044}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "abs", scope: !3037, file: !3027, line: 28, baseType: !3040, size: 448)
!3040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 448, elements: !3041)
!3041 = !{!3042}
!3042 = !DISubrange(count: 14)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !3037, file: !3027, line: 29, baseType: !7, size: 32, offset: 448)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3037, file: !3027, line: 30, baseType: !7, size: 32, offset: 480)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !172, file: !173, line: 172, baseType: !3046, size: 64, offset: 2624)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !180, line: 90, size: 192, elements: !3048)
!3048 = !{!3049, !3050, !3051, !3052, !3053, !3054}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3047, file: !180, line: 91, baseType: !1352, size: 32)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !3047, file: !180, line: 92, baseType: !1352, size: 32, offset: 32)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !3047, file: !180, line: 93, baseType: !1352, size: 32, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !3047, file: !180, line: 94, baseType: !1352, size: 32, offset: 96)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !3047, file: !180, line: 95, baseType: !1352, size: 32, offset: 128)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !3047, file: !180, line: 96, baseType: !1352, size: 32, offset: 160)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !172, file: !173, line: 174, baseType: !196, size: 768, offset: 2688)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !172, file: !173, line: 175, baseType: !190, size: 64, offset: 3456)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !172, file: !173, line: 176, baseType: !190, size: 64, offset: 3520)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !172, file: !173, line: 177, baseType: !190, size: 64, offset: 3584)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !172, file: !173, line: 179, baseType: !3060, size: 64, offset: 3648)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!165, !171}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !172, file: !173, line: 180, baseType: !3064, size: 64, offset: 3712)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{null, !171}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !172, file: !173, line: 181, baseType: !3068, size: 64, offset: 3776)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!165, !171, !371}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !172, file: !173, line: 182, baseType: !3072, size: 64, offset: 3840)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!165, !171, !7, !7, !165}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !172, file: !173, line: 184, baseType: !3076, size: 64, offset: 3904)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !173, line: 337, size: 576, elements: !3078)
!3078 = !{!3079, !3080, !3081, !3082, !3083, !3151, !3152}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3077, file: !173, line: 339, baseType: !144, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3077, file: !173, line: 341, baseType: !165, size: 32, offset: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3077, file: !173, line: 342, baseType: !153, size: 64, offset: 128)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3077, file: !173, line: 344, baseType: !171, size: 64, offset: 192)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3077, file: !173, line: 345, baseType: !3084, size: 64, offset: 256)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !173, line: 302, size: 960, elements: !3086)
!3086 = !{!3087, !3088, !3092, !3103, !3107, !3111, !3140, !3144, !3145, !3146, !3147, !3148, !3149, !3150}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3085, file: !173, line: 304, baseType: !144, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3085, file: !173, line: 306, baseType: !3089, size: 64, offset: 64)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{null, !3076, !7, !7, !165}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3085, file: !173, line: 307, baseType: !3093, size: 64, offset: 128)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{null, !3076, !3096, !7}
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3098)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !173, line: 32, size: 64, elements: !3099)
!3099 = !{!3100, !3101, !3102}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3098, file: !173, line: 33, baseType: !183, size: 16)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3098, file: !173, line: 34, baseType: !183, size: 16, offset: 16)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3098, file: !173, line: 35, baseType: !1352, size: 32, offset: 32)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3085, file: !173, line: 309, baseType: !3104, size: 64, offset: 192)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!508, !3076, !7, !7, !165}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3085, file: !173, line: 310, baseType: !3108, size: 64, offset: 256)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!508, !3084, !171}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !3085, file: !173, line: 311, baseType: !3112, size: 64, offset: 320)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!165, !3084, !171, !3115}
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3117)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3118, line: 342, size: 1600, elements: !3119)
!3118 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3119 = !{!3120, !3122, !3123, !3124, !3125, !3126, !3128, !3130, !3131, !3132, !3133, !3134, !3135, !3137, !3138, !3139}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3117, file: !3118, line: 344, baseType: !3121, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3118, line: 14, baseType: !191)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !3117, file: !3118, line: 346, baseType: !183, size: 16, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3117, file: !3118, line: 347, baseType: !183, size: 16, offset: 80)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3117, file: !3118, line: 348, baseType: !183, size: 16, offset: 96)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3117, file: !3118, line: 349, baseType: !183, size: 16, offset: 112)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !3117, file: !3118, line: 351, baseType: !3127, size: 64, offset: 128)
!3127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3121, size: 64, elements: !192)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !3117, file: !3118, line: 352, baseType: !3129, size: 768, offset: 192)
!3129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3121, size: 768, elements: !197)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !3117, file: !3118, line: 353, baseType: !3127, size: 64, offset: 960)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !3117, file: !3118, line: 354, baseType: !3127, size: 64, offset: 1024)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !3117, file: !3118, line: 355, baseType: !3127, size: 64, offset: 1088)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !3117, file: !3118, line: 356, baseType: !3127, size: 64, offset: 1152)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !3117, file: !3118, line: 357, baseType: !3127, size: 64, offset: 1216)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3117, file: !3118, line: 358, baseType: !3136, size: 128, offset: 1280)
!3136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3121, size: 128, elements: !206)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !3117, file: !3118, line: 359, baseType: !3127, size: 64, offset: 1408)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !3117, file: !3118, line: 360, baseType: !3127, size: 64, offset: 1472)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3117, file: !3118, line: 362, baseType: !3121, size: 64, offset: 1536)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3085, file: !173, line: 312, baseType: !3141, size: 64, offset: 384)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{null, !3076}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3085, file: !173, line: 313, baseType: !3141, size: 64, offset: 448)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !3085, file: !173, line: 315, baseType: !508, size: 8, offset: 512)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3085, file: !173, line: 316, baseType: !165, size: 32, offset: 544)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3085, file: !173, line: 317, baseType: !153, size: 64, offset: 576)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3085, file: !173, line: 319, baseType: !3115, size: 64, offset: 640)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !3085, file: !173, line: 321, baseType: !362, size: 128, offset: 704)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3085, file: !173, line: 322, baseType: !362, size: 128, offset: 832)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !3077, file: !173, line: 347, baseType: !362, size: 128, offset: 320)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !3077, file: !173, line: 348, baseType: !362, size: 128, offset: 448)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !172, file: !173, line: 186, baseType: !346, offset: 3968)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !172, file: !173, line: 187, baseType: !332, size: 192, offset: 3968)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !172, file: !173, line: 189, baseType: !7, size: 32, offset: 4160)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !172, file: !173, line: 190, baseType: !508, size: 8, offset: 4192)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !172, file: !173, line: 192, baseType: !3158, size: 5568, offset: 4224)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !3159)
!3159 = !{!3160, !3459, !3461, !3464, !3465, !3516, !3605, !3606, !3607, !3608, !3609, !3618, !3712, !3725, !3728, !3729, !3733, !3735, !3736, !3737, !3741, !3747, !3748, !3751, !3755, !3758, !3759, !3760, !3761, !3762, !3794, !3795, !3796, !3799, !3802, !3803, !3804, !3805}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3158, file: !60, line: 462, baseType: !3161, size: 512)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !3162, line: 64, size: 512, elements: !3163)
!3162 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!3163 = !{!3164, !3165, !3166, !3168, !3208, !3310, !3449, !3454, !3455, !3456, !3457, !3458}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3161, file: !3162, line: 65, baseType: !153, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3161, file: !3162, line: 66, baseType: !362, size: 128, offset: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3161, file: !3162, line: 67, baseType: !3167, size: 64, offset: 192)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !3161, file: !3162, line: 68, baseType: !3169, size: 64, offset: 256)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !3162, line: 192, size: 704, elements: !3171)
!3171 = !{!3172, !3173, !3174, !3175}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3170, file: !3162, line: 193, baseType: !362, size: 128)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3170, file: !3162, line: 194, baseType: !346, offset: 128)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3170, file: !3162, line: 195, baseType: !3161, size: 512, offset: 128)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !3170, file: !3162, line: 196, baseType: !3176, size: 64, offset: 640)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3178)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !3162, line: 156, size: 192, elements: !3179)
!3179 = !{!3180, !3185, !3190}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3178, file: !3162, line: 157, baseType: !3181, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3182)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!165, !3169, !3167}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3178, file: !3162, line: 158, baseType: !3186, size: 64, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3187)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!153, !3169, !3167}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3178, file: !3162, line: 159, baseType: !3191, size: 64, offset: 128)
!3191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3192)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!165, !3169, !3167, !3195}
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !3162, line: 148, size: 20736, elements: !3197)
!3197 = !{!3198, !3200, !3202, !3203, !3207}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !3196, file: !3162, line: 149, baseType: !3199, size: 192)
!3199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 192, elements: !676)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !3196, file: !3162, line: 150, baseType: !3201, size: 4096, offset: 192)
!3201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 4096, elements: !1787)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !3196, file: !3162, line: 151, baseType: !165, size: 32, offset: 4288)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3196, file: !3162, line: 152, baseType: !3204, size: 16384, offset: 4320)
!3204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 16384, elements: !3205)
!3205 = !{!3206}
!3206 = !DISubrange(count: 2048)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !3196, file: !3162, line: 153, baseType: !165, size: 32, offset: 20704)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !3161, file: !3162, line: 69, baseType: !3209, size: 64, offset: 320)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !3162, line: 138, size: 448, elements: !3211)
!3211 = !{!3212, !3216, !3235, !3237, !3270, !3300, !3304}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3210, file: !3162, line: 139, baseType: !3213, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{null, !3167}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !3210, file: !3162, line: 140, baseType: !3217, size: 64, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3219)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !3220, line: 230, size: 128, elements: !3221)
!3220 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!3221 = !{!3222, !3231}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3219, file: !3220, line: 231, baseType: !3223, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!594, !3167, !3226, !503}
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !3220, line: 30, size: 128, elements: !3228)
!3228 = !{!3229, !3230}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3227, file: !3220, line: 31, baseType: !153, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3227, file: !3220, line: 32, baseType: !448, size: 16, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3219, file: !3220, line: 232, baseType: !3232, size: 64, offset: 64)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!594, !3167, !3226, !153, !597}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !3210, file: !3162, line: 141, baseType: !3236, size: 64, offset: 128)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !3210, file: !3162, line: 142, baseType: !3238, size: 64, offset: 192)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3241)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !3220, line: 84, size: 320, elements: !3242)
!3242 = !{!3243, !3244, !3248, !3267, !3268}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3241, file: !3220, line: 85, baseType: !153, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !3241, file: !3220, line: 86, baseType: !3245, size: 64, offset: 64)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!448, !3167, !3226, !165}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !3241, file: !3220, line: 88, baseType: !3249, size: 64, offset: 128)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!448, !3167, !3252, !165}
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !3220, line: 168, size: 448, elements: !3254)
!3254 = !{!3255, !3256, !3257, !3258, !3262, !3263}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3253, file: !3220, line: 169, baseType: !3227, size: 128)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3253, file: !3220, line: 170, baseType: !597, size: 64, offset: 128)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3253, file: !3220, line: 171, baseType: !144, size: 64, offset: 192)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3253, file: !3220, line: 172, baseType: !3259, size: 64, offset: 256)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!594, !371, !3167, !3252, !503, !549, !597}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3253, file: !3220, line: 174, baseType: !3259, size: 64, offset: 320)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3253, file: !3220, line: 176, baseType: !3264, size: 64, offset: 384)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!165, !371, !3167, !3252, !999}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3241, file: !3220, line: 90, baseType: !3236, size: 64, offset: 192)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !3241, file: !3220, line: 91, baseType: !3269, size: 64, offset: 256)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !3210, file: !3162, line: 143, baseType: !3271, size: 64, offset: 256)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!3274, !3167}
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3276)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !48, line: 39, size: 384, elements: !3277)
!3277 = !{!3278, !3279, !3283, !3287, !3295, !3299}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3276, file: !48, line: 40, baseType: !47, size: 32)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3276, file: !48, line: 41, baseType: !3280, size: 64, offset: 64)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!508}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3276, file: !48, line: 42, baseType: !3284, size: 64, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!144}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3276, file: !48, line: 43, baseType: !3288, size: 64, offset: 192)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!3291, !3293}
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !48, line: 19, flags: DIFlagFwdDecl)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3276, file: !48, line: 44, baseType: !3296, size: 64, offset: 256)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!3291}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3276, file: !48, line: 45, baseType: !485, size: 64, offset: 320)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3210, file: !3162, line: 144, baseType: !3301, size: 64, offset: 320)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!3291, !3167}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3210, file: !3162, line: 145, baseType: !3305, size: 64, offset: 384)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{null, !3167, !3308, !3309}
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !3161, file: !3162, line: 70, baseType: !3311, size: 64, offset: 384)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !641, line: 123, size: 1024, elements: !3313)
!3313 = !{!3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3442, !3443, !3444, !3445, !3446}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3312, file: !641, line: 124, baseType: !774, size: 32)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3312, file: !641, line: 125, baseType: !774, size: 32, offset: 32)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3312, file: !641, line: 135, baseType: !3311, size: 64, offset: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3312, file: !641, line: 136, baseType: !153, size: 64, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3312, file: !641, line: 138, baseType: !787, size: 192, align: 64, offset: 192)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3312, file: !641, line: 140, baseType: !3291, size: 64, offset: 384)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3312, file: !641, line: 141, baseType: !7, size: 32, offset: 448)
!3321 = !DIDerivedType(tag: DW_TAG_member, scope: !3312, file: !641, line: 142, baseType: !3322, size: 256, offset: 512)
!3322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3312, file: !641, line: 142, size: 256, elements: !3323)
!3323 = !{!3324, !3370, !3374}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3322, file: !641, line: 143, baseType: !3325, size: 192)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !641, line: 91, size: 192, elements: !3326)
!3326 = !{!3327, !3328, !3329}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3325, file: !641, line: 92, baseType: !191, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3325, file: !641, line: 94, baseType: !783, size: 64, offset: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3325, file: !641, line: 100, baseType: !3330, size: 64, offset: 128)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !641, line: 180, size: 704, elements: !3332)
!3332 = !{!3333, !3334, !3335, !3342, !3343, !3344, !3368, !3369}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3331, file: !641, line: 182, baseType: !3311, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3331, file: !641, line: 183, baseType: !7, size: 32, offset: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3331, file: !641, line: 186, baseType: !3336, size: 192, offset: 128)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3337, line: 19, size: 192, elements: !3338)
!3337 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3338 = !{!3339, !3340, !3341}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3336, file: !3337, line: 20, baseType: !766, size: 128)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3336, file: !3337, line: 21, baseType: !7, size: 32, offset: 128)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3336, file: !3337, line: 22, baseType: !7, size: 32, offset: 160)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3331, file: !641, line: 187, baseType: !434, size: 32, offset: 320)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3331, file: !641, line: 188, baseType: !434, size: 32, offset: 352)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3331, file: !641, line: 189, baseType: !3345, size: 64, offset: 384)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !641, line: 168, size: 320, elements: !3347)
!3347 = !{!3348, !3352, !3356, !3360, !3364}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3346, file: !641, line: 169, baseType: !3349, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!165, !738, !3330}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3346, file: !641, line: 171, baseType: !3353, size: 64, offset: 64)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!165, !3311, !153, !448}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3346, file: !641, line: 173, baseType: !3357, size: 64, offset: 128)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!165, !3311}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3346, file: !641, line: 174, baseType: !3361, size: 64, offset: 192)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!165, !3311, !3311, !153}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3346, file: !641, line: 176, baseType: !3365, size: 64, offset: 256)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!165, !738, !3311, !3330}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3331, file: !641, line: 192, baseType: !362, size: 128, offset: 448)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3331, file: !641, line: 194, baseType: !1388, size: 128, offset: 576)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3322, file: !641, line: 144, baseType: !3371, size: 64)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !641, line: 103, size: 64, elements: !3372)
!3372 = !{!3373}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3371, file: !641, line: 104, baseType: !3311, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3322, file: !641, line: 145, baseType: !3375, size: 256)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !641, line: 107, size: 256, elements: !3376)
!3376 = !{!3377, !3437, !3440, !3441}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3375, file: !641, line: 108, baseType: !3378, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3380)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !641, line: 217, size: 768, elements: !3381)
!3381 = !{!3382, !3402, !3406, !3410, !3414, !3418, !3422, !3426, !3427, !3428, !3429, !3433}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3380, file: !641, line: 222, baseType: !3383, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!165, !3386}
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !641, line: 197, size: 1088, elements: !3388)
!3388 = !{!3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3387, file: !641, line: 199, baseType: !3311, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3387, file: !641, line: 200, baseType: !371, size: 64, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3387, file: !641, line: 201, baseType: !738, size: 64, offset: 128)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3387, file: !641, line: 202, baseType: !144, size: 64, offset: 192)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3387, file: !641, line: 205, baseType: !332, size: 192, offset: 256)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3387, file: !641, line: 206, baseType: !332, size: 192, offset: 448)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3387, file: !641, line: 207, baseType: !165, size: 32, offset: 640)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3387, file: !641, line: 208, baseType: !362, size: 128, offset: 704)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3387, file: !641, line: 209, baseType: !503, size: 64, offset: 832)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3387, file: !641, line: 211, baseType: !597, size: 64, offset: 896)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3387, file: !641, line: 212, baseType: !508, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3387, file: !641, line: 213, baseType: !508, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3387, file: !641, line: 214, baseType: !1027, size: 64, offset: 1024)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3380, file: !641, line: 223, baseType: !3403, size: 64, offset: 64)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{null, !3386}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3380, file: !641, line: 236, baseType: !3407, size: 64, offset: 128)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!165, !738, !144}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3380, file: !641, line: 238, baseType: !3411, size: 64, offset: 192)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!144, !738, !2705}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3380, file: !641, line: 239, baseType: !3415, size: 64, offset: 256)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!144, !738, !144, !2705}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3380, file: !641, line: 240, baseType: !3419, size: 64, offset: 320)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{null, !738, !144}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3380, file: !641, line: 242, baseType: !3423, size: 64, offset: 384)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!594, !3386, !503, !597, !549}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3380, file: !641, line: 252, baseType: !597, size: 64, offset: 448)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3380, file: !641, line: 259, baseType: !508, size: 8, offset: 512)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3380, file: !641, line: 260, baseType: !3423, size: 64, offset: 576)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3380, file: !641, line: 263, baseType: !3430, size: 64, offset: 640)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!2734, !3386, !2736}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3380, file: !641, line: 266, baseType: !3434, size: 64, offset: 704)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!165, !3386, !999}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3375, file: !641, line: 109, baseType: !3438, size: 64, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !641, line: 31, flags: DIFlagFwdDecl)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3375, file: !641, line: 110, baseType: !549, size: 64, offset: 128)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3375, file: !641, line: 111, baseType: !3311, size: 64, offset: 192)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3312, file: !641, line: 148, baseType: !144, size: 64, offset: 768)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3312, file: !641, line: 154, baseType: !437, size: 64, offset: 832)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3312, file: !641, line: 156, baseType: !185, size: 16, offset: 896)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3312, file: !641, line: 157, baseType: !448, size: 16, offset: 912)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3312, file: !641, line: 158, baseType: !3447, size: 64, offset: 960)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !641, line: 32, flags: DIFlagFwdDecl)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3161, file: !3162, line: 71, baseType: !3450, size: 32, offset: 448)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3451, line: 19, size: 32, elements: !3452)
!3451 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3452 = !{!3453}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3450, file: !3451, line: 20, baseType: !1141, size: 32)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !3161, file: !3162, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !3161, file: !3162, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !3161, file: !3162, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !3161, file: !3162, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !3161, file: !3162, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3158, file: !60, line: 463, baseType: !3460, size: 64, offset: 512)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3158, file: !60, line: 465, baseType: !3462, size: 64, offset: 576)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3158, file: !60, line: 467, baseType: !153, size: 64, offset: 640)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3158, file: !60, line: 468, baseType: !3466, size: 64, offset: 704)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3468)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3469)
!3469 = !{!3470, !3471, !3472, !3476, !3481, !3485}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3468, file: !60, line: 88, baseType: !153, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3468, file: !60, line: 89, baseType: !3238, size: 64, offset: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3468, file: !60, line: 90, baseType: !3473, size: 64, offset: 128)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!165, !3460, !3195}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3468, file: !60, line: 91, baseType: !3477, size: 64, offset: 192)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!503, !3460, !3480, !3308, !3309}
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3468, file: !60, line: 93, baseType: !3482, size: 64, offset: 256)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{null, !3460}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3468, file: !60, line: 95, baseType: !3486, size: 64, offset: 320)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3488)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3489)
!3489 = !{!3490, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3488, file: !67, line: 279, baseType: !3491, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!165, !3460}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3488, file: !67, line: 280, baseType: !3482, size: 64, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3488, file: !67, line: 281, baseType: !3491, size: 64, offset: 128)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3488, file: !67, line: 282, baseType: !3491, size: 64, offset: 192)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3488, file: !67, line: 283, baseType: !3491, size: 64, offset: 256)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3488, file: !67, line: 284, baseType: !3491, size: 64, offset: 320)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3488, file: !67, line: 285, baseType: !3491, size: 64, offset: 384)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3488, file: !67, line: 286, baseType: !3491, size: 64, offset: 448)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3488, file: !67, line: 287, baseType: !3491, size: 64, offset: 512)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3488, file: !67, line: 288, baseType: !3491, size: 64, offset: 576)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3488, file: !67, line: 289, baseType: !3491, size: 64, offset: 640)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3488, file: !67, line: 290, baseType: !3491, size: 64, offset: 704)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3488, file: !67, line: 291, baseType: !3491, size: 64, offset: 768)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3488, file: !67, line: 292, baseType: !3491, size: 64, offset: 832)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3488, file: !67, line: 293, baseType: !3491, size: 64, offset: 896)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3488, file: !67, line: 294, baseType: !3491, size: 64, offset: 960)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3488, file: !67, line: 295, baseType: !3491, size: 64, offset: 1024)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3488, file: !67, line: 296, baseType: !3491, size: 64, offset: 1088)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3488, file: !67, line: 297, baseType: !3491, size: 64, offset: 1152)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3488, file: !67, line: 298, baseType: !3491, size: 64, offset: 1216)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3488, file: !67, line: 299, baseType: !3491, size: 64, offset: 1280)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3488, file: !67, line: 300, baseType: !3491, size: 64, offset: 1344)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3488, file: !67, line: 301, baseType: !3491, size: 64, offset: 1408)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3158, file: !60, line: 470, baseType: !3517, size: 64, offset: 768)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3519, line: 82, size: 1408, elements: !3520)
!3519 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3520 = !{!3521, !3522, !3523, !3524, !3525, !3526, !3527, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3600, !3603, !3604}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3518, file: !3519, line: 83, baseType: !153, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3518, file: !3519, line: 84, baseType: !153, size: 64, offset: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3518, file: !3519, line: 85, baseType: !3460, size: 64, offset: 128)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3518, file: !3519, line: 86, baseType: !3238, size: 64, offset: 192)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3518, file: !3519, line: 87, baseType: !3238, size: 64, offset: 256)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3518, file: !3519, line: 88, baseType: !3238, size: 64, offset: 320)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3518, file: !3519, line: 90, baseType: !3528, size: 64, offset: 384)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!165, !3460, !3531}
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3533)
!3533 = !{!3534, !3535, !3536, !3537, !3538, !3539, !3540, !3552, !3564, !3565, !3566, !3567, !3568, !3576, !3577, !3578, !3579, !3580, !3581}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3532, file: !54, line: 96, baseType: !153, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3532, file: !54, line: 97, baseType: !3517, size: 64, offset: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3532, file: !54, line: 99, baseType: !655, size: 64, offset: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3532, file: !54, line: 100, baseType: !153, size: 64, offset: 192)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3532, file: !54, line: 102, baseType: !508, size: 8, offset: 256)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3532, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3532, file: !54, line: 105, baseType: !3541, size: 64, offset: 320)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3543)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3118, line: 262, size: 1600, elements: !3544)
!3544 = !{!3545, !3546, !3547, !3551}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3543, file: !3118, line: 263, baseType: !2529, size: 256)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3543, file: !3118, line: 264, baseType: !2529, size: 256, offset: 256)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3543, file: !3118, line: 265, baseType: !3548, size: 1024, offset: 512)
!3548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 1024, elements: !3549)
!3549 = !{!3550}
!3550 = !DISubrange(count: 128)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3543, file: !3118, line: 266, baseType: !3291, size: 64, offset: 1536)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3532, file: !54, line: 106, baseType: !3553, size: 64, offset: 384)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3555)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3118, line: 210, size: 256, elements: !3556)
!3556 = !{!3557, !3561, !3562, !3563}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3555, file: !3118, line: 211, baseType: !3558, size: 72)
!3558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 72, elements: !3559)
!3559 = !{!3560}
!3560 = !DISubrange(count: 9)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3555, file: !3118, line: 212, baseType: !3121, size: 64, offset: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3555, file: !3118, line: 213, baseType: !226, size: 32, offset: 192)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3555, file: !3118, line: 214, baseType: !226, size: 32, offset: 224)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3532, file: !54, line: 108, baseType: !3491, size: 64, offset: 448)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3532, file: !54, line: 109, baseType: !3482, size: 64, offset: 512)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3532, file: !54, line: 110, baseType: !3491, size: 64, offset: 576)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3532, file: !54, line: 111, baseType: !3482, size: 64, offset: 640)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3532, file: !54, line: 112, baseType: !3569, size: 64, offset: 704)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!165, !3460, !3572}
!3572 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3573)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3574)
!3574 = !{!3575}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3573, file: !67, line: 51, baseType: !165, size: 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3532, file: !54, line: 113, baseType: !3491, size: 64, offset: 768)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3532, file: !54, line: 114, baseType: !3238, size: 64, offset: 832)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3532, file: !54, line: 115, baseType: !3238, size: 64, offset: 896)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3532, file: !54, line: 117, baseType: !3486, size: 64, offset: 960)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3532, file: !54, line: 118, baseType: !3482, size: 64, offset: 1024)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3532, file: !54, line: 120, baseType: !3582, size: 64, offset: 1088)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3518, file: !3519, line: 91, baseType: !3473, size: 64, offset: 448)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3518, file: !3519, line: 92, baseType: !3491, size: 64, offset: 512)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3518, file: !3519, line: 93, baseType: !3482, size: 64, offset: 576)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3518, file: !3519, line: 94, baseType: !3491, size: 64, offset: 640)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3518, file: !3519, line: 95, baseType: !3482, size: 64, offset: 704)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3518, file: !3519, line: 97, baseType: !3491, size: 64, offset: 768)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3518, file: !3519, line: 98, baseType: !3491, size: 64, offset: 832)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3518, file: !3519, line: 100, baseType: !3569, size: 64, offset: 896)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3518, file: !3519, line: 101, baseType: !3491, size: 64, offset: 960)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3518, file: !3519, line: 103, baseType: !3491, size: 64, offset: 1024)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3518, file: !3519, line: 105, baseType: !3491, size: 64, offset: 1088)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3518, file: !3519, line: 107, baseType: !3486, size: 64, offset: 1152)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3518, file: !3519, line: 109, baseType: !3597, size: 64, offset: 1216)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3599)
!3599 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3519, line: 109, flags: DIFlagFwdDecl)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3518, file: !3519, line: 111, baseType: !3601, size: 64, offset: 1280)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3519, line: 111, flags: DIFlagFwdDecl)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3518, file: !3519, line: 112, baseType: !670, offset: 1344)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3518, file: !3519, line: 114, baseType: !508, size: 8, offset: 1344)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3158, file: !60, line: 471, baseType: !3531, size: 64, offset: 832)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3158, file: !60, line: 473, baseType: !144, size: 64, offset: 896)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3158, file: !60, line: 475, baseType: !144, size: 64, offset: 960)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3158, file: !60, line: 480, baseType: !332, size: 192, offset: 1024)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3158, file: !60, line: 484, baseType: !3610, size: 576, offset: 1216)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3611)
!3611 = !{!3612, !3613, !3614, !3615, !3616, !3617}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3610, file: !60, line: 362, baseType: !362, size: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3610, file: !60, line: 363, baseType: !362, size: 128, offset: 128)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3610, file: !60, line: 364, baseType: !362, size: 128, offset: 256)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3610, file: !60, line: 365, baseType: !362, size: 128, offset: 384)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3610, file: !60, line: 366, baseType: !508, size: 8, offset: 512)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3610, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3158, file: !60, line: 485, baseType: !3619, size: 2304, offset: 1792)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3620)
!3620 = !{!3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3705, !3709}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3619, file: !67, line: 566, baseType: !3572, size: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3619, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3619, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3619, file: !67, line: 569, baseType: !508, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3619, file: !67, line: 570, baseType: !508, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3619, file: !67, line: 571, baseType: !508, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3619, file: !67, line: 572, baseType: !508, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3619, file: !67, line: 573, baseType: !508, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3619, file: !67, line: 574, baseType: !508, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3619, file: !67, line: 575, baseType: !508, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3619, file: !67, line: 576, baseType: !508, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3619, file: !67, line: 577, baseType: !434, size: 32, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3619, file: !67, line: 578, baseType: !346, offset: 96)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3619, file: !67, line: 580, baseType: !362, size: 128, offset: 128)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3619, file: !67, line: 581, baseType: !1409, size: 192, offset: 256)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3619, file: !67, line: 582, baseType: !3637, size: 64, offset: 448)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3639, line: 43, size: 1472, elements: !3640)
!3639 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3640 = !{!3641, !3642, !3643, !3644, !3645, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3638, file: !3639, line: 44, baseType: !153, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3638, file: !3639, line: 45, baseType: !165, size: 32, offset: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3638, file: !3639, line: 46, baseType: !362, size: 128, offset: 128)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3638, file: !3639, line: 47, baseType: !346, offset: 256)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3638, file: !3639, line: 48, baseType: !3646, size: 64, offset: 256)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3638, file: !3639, line: 49, baseType: !3011, size: 320, offset: 320)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3638, file: !3639, line: 50, baseType: !191, size: 64, offset: 640)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3638, file: !3639, line: 51, baseType: !1211, size: 64, offset: 704)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3638, file: !3639, line: 52, baseType: !1211, size: 64, offset: 768)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3638, file: !3639, line: 53, baseType: !1211, size: 64, offset: 832)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3638, file: !3639, line: 54, baseType: !1211, size: 64, offset: 896)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3638, file: !3639, line: 55, baseType: !1211, size: 64, offset: 960)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3638, file: !3639, line: 56, baseType: !191, size: 64, offset: 1024)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3638, file: !3639, line: 57, baseType: !191, size: 64, offset: 1088)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3638, file: !3639, line: 58, baseType: !191, size: 64, offset: 1152)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3638, file: !3639, line: 59, baseType: !191, size: 64, offset: 1216)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3638, file: !3639, line: 60, baseType: !191, size: 64, offset: 1280)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3638, file: !3639, line: 61, baseType: !3460, size: 64, offset: 1344)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3638, file: !3639, line: 62, baseType: !508, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3638, file: !3639, line: 63, baseType: !508, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3619, file: !67, line: 583, baseType: !508, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3619, file: !67, line: 584, baseType: !508, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3619, file: !67, line: 585, baseType: !508, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3619, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3619, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3619, file: !67, line: 592, baseType: !1203, size: 512, offset: 576)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3619, file: !67, line: 593, baseType: !437, size: 64, offset: 1088)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3619, file: !67, line: 594, baseType: !1865, size: 256, offset: 1152)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3619, file: !67, line: 595, baseType: !1388, size: 128, offset: 1408)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3619, file: !67, line: 596, baseType: !3646, size: 64, offset: 1536)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3619, file: !67, line: 597, baseType: !774, size: 32, offset: 1600)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3619, file: !67, line: 598, baseType: !774, size: 32, offset: 1632)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3619, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3619, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3619, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3619, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3619, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3619, file: !67, line: 604, baseType: !508, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3619, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3619, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3619, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3619, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3619, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3619, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3619, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3619, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3619, file: !67, line: 613, baseType: !165, size: 32, offset: 1792)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3619, file: !67, line: 614, baseType: !165, size: 32, offset: 1824)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3619, file: !67, line: 615, baseType: !437, size: 64, offset: 1856)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3619, file: !67, line: 616, baseType: !437, size: 64, offset: 1920)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3619, file: !67, line: 617, baseType: !437, size: 64, offset: 1984)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3619, file: !67, line: 618, baseType: !437, size: 64, offset: 2048)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3619, file: !67, line: 620, baseType: !3696, size: 64, offset: 2112)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3698)
!3698 = !{!3699, !3700, !3701, !3702}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3697, file: !67, line: 537, baseType: !346)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3697, file: !67, line: 538, baseType: !7, size: 32)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3697, file: !67, line: 540, baseType: !362, size: 128, offset: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3697, file: !67, line: 543, baseType: !3703, size: 64, offset: 192)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3619, file: !67, line: 621, baseType: !3706, size: 64, offset: 2176)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{null, !3460, !1351}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3619, file: !67, line: 622, baseType: !3710, size: 64, offset: 2240)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3158, file: !60, line: 486, baseType: !3713, size: 64, offset: 4096)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3715)
!3715 = !{!3716, !3717, !3718, !3722, !3723, !3724}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3714, file: !67, line: 643, baseType: !3488, size: 1472)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3714, file: !67, line: 644, baseType: !3491, size: 64, offset: 1472)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3714, file: !67, line: 645, baseType: !3719, size: 64, offset: 1536)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{null, !3460, !508}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3714, file: !67, line: 646, baseType: !3491, size: 64, offset: 1600)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3714, file: !67, line: 647, baseType: !3482, size: 64, offset: 1664)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3714, file: !67, line: 648, baseType: !3482, size: 64, offset: 1728)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3158, file: !60, line: 493, baseType: !3726, size: 64, offset: 4160)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !60, line: 493, flags: DIFlagFwdDecl)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3158, file: !60, line: 499, baseType: !362, size: 128, offset: 4224)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3158, file: !60, line: 502, baseType: !3730, size: 64, offset: 4352)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3732)
!3732 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3158, file: !60, line: 504, baseType: !3734, size: 64, offset: 4416)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3158, file: !60, line: 505, baseType: !437, size: 64, offset: 4480)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3158, file: !60, line: 510, baseType: !437, size: 64, offset: 4544)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3158, file: !60, line: 511, baseType: !3738, size: 64, offset: 4608)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3740)
!3740 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3158, file: !60, line: 513, baseType: !3742, size: 64, offset: 4672)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !3744)
!3744 = !{!3745, !3746}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3743, file: !60, line: 293, baseType: !7, size: 32)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3743, file: !60, line: 294, baseType: !191, size: 64, offset: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3158, file: !60, line: 515, baseType: !362, size: 128, offset: 4736)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3158, file: !60, line: 526, baseType: !3749, offset: 4864)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3750, line: 5, elements: !360)
!3750 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3158, file: !60, line: 528, baseType: !3752, size: 64, offset: 4864)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3754, line: 14, flags: DIFlagFwdDecl)
!3754 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3158, file: !60, line: 529, baseType: !3756, size: 64, offset: 4928)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3519, line: 22, flags: DIFlagFwdDecl)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3158, file: !60, line: 534, baseType: !531, size: 32, offset: 4992)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3158, file: !60, line: 535, baseType: !434, size: 32, offset: 5024)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3158, file: !60, line: 537, baseType: !346, offset: 5056)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3158, file: !60, line: 538, baseType: !362, size: 128, offset: 5056)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3158, file: !60, line: 540, baseType: !3763, size: 64, offset: 5184)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3765, line: 54, size: 960, elements: !3766)
!3765 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3766 = !{!3767, !3768, !3769, !3770, !3771, !3772, !3773, !3777, !3781, !3782, !3783, !3784, !3788, !3792, !3793}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3764, file: !3765, line: 55, baseType: !153, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3764, file: !3765, line: 56, baseType: !655, size: 64, offset: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3764, file: !3765, line: 58, baseType: !3238, size: 64, offset: 128)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3764, file: !3765, line: 59, baseType: !3238, size: 64, offset: 192)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3764, file: !3765, line: 60, baseType: !3167, size: 64, offset: 256)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3764, file: !3765, line: 62, baseType: !3473, size: 64, offset: 320)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3764, file: !3765, line: 63, baseType: !3774, size: 64, offset: 384)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!503, !3460, !3480}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3764, file: !3765, line: 65, baseType: !3778, size: 64, offset: 448)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{null, !3763}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3764, file: !3765, line: 66, baseType: !3482, size: 64, offset: 512)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3764, file: !3765, line: 68, baseType: !3491, size: 64, offset: 576)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3764, file: !3765, line: 70, baseType: !3274, size: 64, offset: 640)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3764, file: !3765, line: 71, baseType: !3785, size: 64, offset: 704)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!3291, !3460}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3764, file: !3765, line: 73, baseType: !3789, size: 64, offset: 768)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{null, !3460, !3308, !3309}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3764, file: !3765, line: 75, baseType: !3486, size: 64, offset: 832)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3764, file: !3765, line: 77, baseType: !3601, size: 64, offset: 896)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3158, file: !60, line: 541, baseType: !3238, size: 64, offset: 5248)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3158, file: !60, line: 543, baseType: !3482, size: 64, offset: 5312)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3158, file: !60, line: 544, baseType: !3797, size: 64, offset: 5376)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3158, file: !60, line: 545, baseType: !3800, size: 64, offset: 5440)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3158, file: !60, line: 547, baseType: !508, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3158, file: !60, line: 548, baseType: !508, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3158, file: !60, line: 549, baseType: !508, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3158, file: !60, line: 550, baseType: !508, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !172, file: !173, line: 194, baseType: !362, size: 128, offset: 9792)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !172, file: !173, line: 195, baseType: !362, size: 128, offset: 9920)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !172, file: !173, line: 197, baseType: !7, size: 32, offset: 10048)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !172, file: !173, line: 198, baseType: !7, size: 32, offset: 10080)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !172, file: !173, line: 199, baseType: !3811, size: 64, offset: 10112)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !172, file: !173, line: 201, baseType: !508, size: 8, offset: 10176)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !172, file: !173, line: 203, baseType: !3814, size: 192, offset: 10240)
!3814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1211, size: 192, elements: !676)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "ps2dev", scope: !167, file: !87, line: 92, baseType: !3816, size: 576, offset: 128)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ps2dev", file: !3817, line: 33, size: 576, elements: !3818)
!3817 = !DIFile(filename: "./include/linux/libps2.h", directory: "/home/lizy2001/genbc/linux")
!3818 = !{!3819, !3884, !3885, !3886, !3887, !3889, !3890}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "serio", scope: !3816, file: !3817, line: 34, baseType: !3820, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio", file: !3822, line: 20, size: 8384, elements: !3823)
!3822 = !DIFile(filename: "./include/linux/serio.h", directory: "/home/lizy2001/genbc/linux")
!3823 = !{!3824, !3825, !3826, !3827, !3828, !3829, !3836, !3837, !3841, !3845, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3879, !3880, !3881, !3882}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "port_data", scope: !3821, file: !3822, line: 21, baseType: !144, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3821, file: !3822, line: 23, baseType: !2529, size: 256, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !3821, file: !3822, line: 24, baseType: !2529, size: 256, offset: 320)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_id", scope: !3821, file: !3822, line: 25, baseType: !3548, size: 1024, offset: 576)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !3821, file: !3822, line: 27, baseType: !508, size: 8, offset: 1600)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3821, file: !3822, line: 29, baseType: !3830, size: 32, offset: 1608)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_device_id", file: !3118, line: 236, size: 32, elements: !3831)
!3831 = !{!3832, !3833, !3834, !3835}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3830, file: !3118, line: 237, baseType: !222, size: 8)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3830, file: !3118, line: 238, baseType: !222, size: 8, offset: 8)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3830, file: !3118, line: 239, baseType: !222, size: 8, offset: 16)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !3830, file: !3118, line: 240, baseType: !222, size: 8, offset: 24)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3821, file: !3822, line: 32, baseType: !346, offset: 1640)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3821, file: !3822, line: 34, baseType: !3838, size: 64, offset: 1664)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!165, !3820, !145}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3821, file: !3822, line: 35, baseType: !3842, size: 64, offset: 1728)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!165, !3820}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3821, file: !3822, line: 36, baseType: !3846, size: 64, offset: 1792)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{null, !3820}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3821, file: !3822, line: 37, baseType: !3842, size: 64, offset: 1856)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3821, file: !3822, line: 38, baseType: !3846, size: 64, offset: 1920)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3821, file: !3822, line: 40, baseType: !3820, size: 64, offset: 1984)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "child_node", scope: !3821, file: !3822, line: 42, baseType: !362, size: 128, offset: 2048)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3821, file: !3822, line: 43, baseType: !362, size: 128, offset: 2176)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3821, file: !3822, line: 45, baseType: !7, size: 32, offset: 2304)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !3821, file: !3822, line: 51, baseType: !3856, size: 64, offset: 2368)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_driver", file: !3822, line: 67, size: 1792, elements: !3858)
!3858 = !{!3859, !3860, !3863, !3864, !3865, !3870, !3874, !3875, !3876, !3877, !3878}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !3857, file: !3822, line: 68, baseType: !153, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3857, file: !3822, line: 70, baseType: !3861, size: 64, offset: 64)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3830)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !3857, file: !3822, line: 71, baseType: !508, size: 8, offset: 128)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !3857, file: !3822, line: 73, baseType: !3846, size: 64, offset: 192)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !3857, file: !3822, line: 74, baseType: !3866, size: 64, offset: 256)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!3869, !3820, !145, !7}
!3869 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !81, line: 17, baseType: !80)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !3857, file: !3822, line: 75, baseType: !3871, size: 64, offset: 320)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!165, !3820, !3856}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !3857, file: !3822, line: 76, baseType: !3842, size: 64, offset: 384)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !3857, file: !3822, line: 77, baseType: !3842, size: 64, offset: 448)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3857, file: !3822, line: 78, baseType: !3846, size: 64, offset: 512)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3857, file: !3822, line: 79, baseType: !3846, size: 64, offset: 576)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3857, file: !3822, line: 81, baseType: !3532, size: 1152, offset: 640)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "drv_mutex", scope: !3821, file: !3822, line: 53, baseType: !332, size: 192, offset: 2432)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3821, file: !3822, line: 55, baseType: !3158, size: 5568, offset: 2624)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3821, file: !3822, line: 57, baseType: !362, size: 128, offset: 8192)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "ps2_cmd_mutex", scope: !3821, file: !3822, line: 63, baseType: !3883, size: 64, offset: 8320)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_mutex", scope: !3816, file: !3817, line: 37, baseType: !332, size: 192, offset: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3816, file: !3817, line: 40, baseType: !1388, size: 128, offset: 256)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3816, file: !3817, line: 42, baseType: !191, size: 64, offset: 384)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "cmdbuf", scope: !3816, file: !3817, line: 43, baseType: !3888, size: 64, offset: 448)
!3888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1263, size: 64, elements: !1241)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcnt", scope: !3816, file: !3817, line: 44, baseType: !1263, size: 8, offset: 512)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "nak", scope: !3816, file: !3817, line: 45, baseType: !1263, size: 8, offset: 520)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "resync_work", scope: !167, file: !87, line: 93, baseType: !3892, size: 704, offset: 704)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1866, line: 115, size: 704, elements: !3893)
!3893 = !{!3894, !3895, !3896, !3897}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3892, file: !1866, line: 116, baseType: !1865, size: 256)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3892, file: !1866, line: 117, baseType: !3011, size: 320, offset: 256)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3892, file: !1866, line: 120, baseType: !2622, size: 64, offset: 576)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3892, file: !1866, line: 121, baseType: !165, size: 32, offset: 640)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !167, file: !87, line: 94, baseType: !153, size: 64, offset: 1408)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !167, file: !87, line: 95, baseType: !153, size: 64, offset: 1472)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !167, file: !87, line: 96, baseType: !3901, size: 64, offset: 1536)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3903)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse_protocol", file: !87, line: 77, size: 320, elements: !3904)
!3904 = !{!3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3914}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3903, file: !87, line: 78, baseType: !86, size: 32)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "maxproto", scope: !3903, file: !87, line: 79, baseType: !508, size: 8, offset: 32)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parity", scope: !3903, file: !87, line: 80, baseType: !508, size: 8, offset: 40)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "try_passthru", scope: !3903, file: !87, line: 81, baseType: !508, size: 8, offset: 48)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_companion", scope: !3903, file: !87, line: 82, baseType: !508, size: 8, offset: 56)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3903, file: !87, line: 83, baseType: !153, size: 64, offset: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !3903, file: !87, line: 84, baseType: !153, size: 64, offset: 128)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !3903, file: !87, line: 85, baseType: !3913, size: 64, offset: 192)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !3903, file: !87, line: 86, baseType: !3915, size: 64, offset: 256)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!165, !166}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !167, file: !87, line: 97, baseType: !3919, size: 64, offset: 1600)
!3919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 64, elements: !1241)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "badbyte", scope: !167, file: !87, line: 98, baseType: !145, size: 8, offset: 1664)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "pktcnt", scope: !167, file: !87, line: 99, baseType: !145, size: 8, offset: 1672)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "pktsize", scope: !167, file: !87, line: 100, baseType: !145, size: 8, offset: 1680)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "oob_data_type", scope: !167, file: !87, line: 101, baseType: !145, size: 8, offset: 1688)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "extra_buttons", scope: !167, file: !87, line: 102, baseType: !145, size: 8, offset: 1696)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "acks_disable_command", scope: !167, file: !87, line: 103, baseType: !508, size: 8, offset: 1704)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !167, file: !87, line: 104, baseType: !7, size: 32, offset: 1728)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !167, file: !87, line: 105, baseType: !191, size: 64, offset: 1792)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "out_of_sync_cnt", scope: !167, file: !87, line: 106, baseType: !191, size: 64, offset: 1856)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "num_resyncs", scope: !167, file: !87, line: 107, baseType: !191, size: 64, offset: 1920)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !167, file: !87, line: 108, baseType: !113, size: 32, offset: 1984)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "devname", scope: !167, file: !87, line: 109, baseType: !3932, size: 512, offset: 2016)
!3932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 512, elements: !1787)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !167, file: !87, line: 110, baseType: !2529, size: 256, offset: 2528)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !167, file: !87, line: 112, baseType: !7, size: 32, offset: 2784)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !167, file: !87, line: 113, baseType: !7, size: 32, offset: 2816)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "resetafter", scope: !167, file: !87, line: 114, baseType: !7, size: 32, offset: 2848)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "resync_time", scope: !167, file: !87, line: 115, baseType: !7, size: 32, offset: 2880)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "smartscroll", scope: !167, file: !87, line: 116, baseType: !508, size: 8, offset: 2912)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_handler", scope: !167, file: !87, line: 118, baseType: !3940, size: 64, offset: 2944)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!3943, !166}
!3943 = !DIDerivedType(tag: DW_TAG_typedef, name: "psmouse_ret_t", file: !87, line: 41, baseType: !120)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !167, file: !87, line: 119, baseType: !3945, size: 64, offset: 3008)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{null, !166, !7}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "set_resolution", scope: !167, file: !87, line: 120, baseType: !3945, size: 64, offset: 3072)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "set_scale", scope: !167, file: !87, line: 121, baseType: !3950, size: 64, offset: 3136)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{null, !166, !125}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !167, file: !87, line: 123, baseType: !3915, size: 64, offset: 3200)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !167, file: !87, line: 124, baseType: !3915, size: 64, offset: 3264)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !167, file: !87, line: 125, baseType: !3956, size: 64, offset: 3328)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{null, !166}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !167, file: !87, line: 126, baseType: !3956, size: 64, offset: 3392)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !167, file: !87, line: 127, baseType: !3915, size: 64, offset: 3456)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "pt_activate", scope: !167, file: !87, line: 129, baseType: !3956, size: 64, offset: 3520)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "pt_deactivate", scope: !167, file: !87, line: 130, baseType: !3956, size: 64, offset: 3584)
!3963 = !DILocalVariable(name: "psmouse", arg: 1, scope: !162, file: !3, line: 35, type: !166)
!3964 = !DILocation(line: 35, column: 38, scope: !162)
!3965 = !DILocalVariable(name: "set_properties", arg: 2, scope: !162, file: !3, line: 35, type: !508)
!3966 = !DILocation(line: 35, column: 52, scope: !162)
!3967 = !DILocation(line: 37, column: 30, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !162, file: !3, line: 37, column: 6)
!3969 = !DILocation(line: 37, column: 7, scope: !3968)
!3970 = !DILocation(line: 37, column: 6, scope: !162)
!3971 = !DILocation(line: 38, column: 3, scope: !3968)
!3972 = !DILocation(line: 40, column: 6, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !162, file: !3, line: 40, column: 6)
!3974 = !DILocation(line: 40, column: 6, scope: !162)
!3975 = !DILocation(line: 41, column: 3, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3973, file: !3, line: 40, column: 22)
!3977 = !DILocation(line: 41, column: 12, scope: !3976)
!3978 = !DILocation(line: 41, column: 19, scope: !3976)
!3979 = !DILocation(line: 42, column: 3, scope: !3976)
!3980 = !DILocation(line: 42, column: 12, scope: !3976)
!3981 = !DILocation(line: 42, column: 17, scope: !3976)
!3982 = !DILocation(line: 43, column: 2, scope: !3976)
!3983 = !DILocation(line: 45, column: 2, scope: !162)
!3984 = !DILocation(line: 46, column: 1, scope: !162)
!3985 = distinct !DISubprogram(name: "focaltech_init", scope: !3, file: !3, line: 406, type: !3916, scopeLine: 407, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !360)
!3986 = !DILocalVariable(name: "psmouse", arg: 1, scope: !3985, file: !3, line: 406, type: !166)
!3987 = !DILocation(line: 406, column: 36, scope: !3985)
!3988 = !DILocalVariable(name: "priv", scope: !3985, file: !3, line: 408, type: !3989)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "focaltech_data", file: !3, line: 110, size: 608, elements: !3991)
!3991 = !{!3992, !3993, !3994}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "x_max", scope: !3990, file: !3, line: 111, baseType: !7, size: 32)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "y_max", scope: !3990, file: !3, line: 111, baseType: !7, size: 32, offset: 32)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3990, file: !3, line: 112, baseType: !3995, size: 544, offset: 64)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "focaltech_hw_state", file: !3, line: 88, size: 544, elements: !3996)
!3996 = !{!3997, !4007, !4008}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "fingers", scope: !3995, file: !3, line: 94, baseType: !3998, size: 480)
!3998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3999, size: 480, elements: !4005)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "focaltech_finger_state", file: !3, line: 63, size: 96, elements: !4000)
!4000 = !{!4001, !4002, !4003, !4004}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3999, file: !3, line: 65, baseType: !508, size: 8)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !3999, file: !3, line: 75, baseType: !508, size: 8, offset: 8)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !3999, file: !3, line: 81, baseType: !7, size: 32, offset: 32)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !3999, file: !3, line: 82, baseType: !7, size: 32, offset: 64)
!4005 = !{!4006}
!4006 = !DISubrange(count: 5)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !3995, file: !3, line: 104, baseType: !7, size: 32, offset: 480)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "pressed", scope: !3995, file: !3, line: 107, baseType: !508, size: 8, offset: 512)
!4009 = !DILocation(line: 408, column: 25, scope: !3985)
!4010 = !DILocalVariable(name: "error", scope: !3985, file: !3, line: 409, type: !165)
!4011 = !DILocation(line: 409, column: 6, scope: !3985)
!4012 = !DILocation(line: 411, column: 28, scope: !3985)
!4013 = !DILocation(line: 411, column: 26, scope: !3985)
!4014 = !DILocation(line: 411, column: 21, scope: !3985)
!4015 = !DILocation(line: 411, column: 2, scope: !3985)
!4016 = !DILocation(line: 411, column: 11, scope: !3985)
!4017 = !DILocation(line: 411, column: 19, scope: !3985)
!4018 = !DILocation(line: 413, column: 7, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 413, column: 6)
!4020 = !DILocation(line: 413, column: 6, scope: !3985)
!4021 = !DILocation(line: 414, column: 3, scope: !4019)
!4022 = !DILocation(line: 416, column: 18, scope: !3985)
!4023 = !DILocation(line: 416, column: 2, scope: !3985)
!4024 = !DILocation(line: 418, column: 30, scope: !3985)
!4025 = !DILocation(line: 418, column: 10, scope: !3985)
!4026 = !DILocation(line: 418, column: 8, scope: !3985)
!4027 = !DILocation(line: 419, column: 6, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 419, column: 6)
!4029 = !DILocation(line: 419, column: 6, scope: !3985)
!4030 = !DILocation(line: 420, column: 3, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 419, column: 13)
!4032 = !DILocation(line: 422, column: 3, scope: !4031)
!4033 = !DILocation(line: 425, column: 36, scope: !3985)
!4034 = !DILocation(line: 425, column: 10, scope: !3985)
!4035 = !DILocation(line: 425, column: 8, scope: !3985)
!4036 = !DILocation(line: 426, column: 6, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 426, column: 6)
!4038 = !DILocation(line: 426, column: 6, scope: !3985)
!4039 = !DILocation(line: 427, column: 3, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4037, file: !3, line: 426, column: 13)
!4041 = !DILocation(line: 428, column: 3, scope: !4040)
!4042 = !DILocation(line: 431, column: 29, scope: !3985)
!4043 = !DILocation(line: 431, column: 2, scope: !3985)
!4044 = !DILocation(line: 433, column: 2, scope: !3985)
!4045 = !DILocation(line: 433, column: 11, scope: !3985)
!4046 = !DILocation(line: 433, column: 28, scope: !3985)
!4047 = !DILocation(line: 434, column: 2, scope: !3985)
!4048 = !DILocation(line: 434, column: 11, scope: !3985)
!4049 = !DILocation(line: 434, column: 19, scope: !3985)
!4050 = !DILocation(line: 435, column: 2, scope: !3985)
!4051 = !DILocation(line: 435, column: 11, scope: !3985)
!4052 = !DILocation(line: 435, column: 22, scope: !3985)
!4053 = !DILocation(line: 436, column: 2, scope: !3985)
!4054 = !DILocation(line: 436, column: 11, scope: !3985)
!4055 = !DILocation(line: 436, column: 21, scope: !3985)
!4056 = !DILocation(line: 437, column: 2, scope: !3985)
!4057 = !DILocation(line: 437, column: 11, scope: !3985)
!4058 = !DILocation(line: 437, column: 19, scope: !3985)
!4059 = !DILocation(line: 439, column: 2, scope: !3985)
!4060 = !DILocation(line: 439, column: 11, scope: !3985)
!4061 = !DILocation(line: 439, column: 23, scope: !3985)
!4062 = !DILocation(line: 445, column: 2, scope: !3985)
!4063 = !DILocation(line: 445, column: 11, scope: !3985)
!4064 = !DILocation(line: 445, column: 26, scope: !3985)
!4065 = !DILocation(line: 446, column: 2, scope: !3985)
!4066 = !DILocation(line: 446, column: 11, scope: !3985)
!4067 = !DILocation(line: 446, column: 20, scope: !3985)
!4068 = !DILocation(line: 447, column: 2, scope: !3985)
!4069 = !DILocation(line: 447, column: 11, scope: !3985)
!4070 = !DILocation(line: 447, column: 21, scope: !3985)
!4071 = !DILocation(line: 449, column: 2, scope: !3985)
!4072 = !DILabel(scope: !3985, name: "fail", file: !3, line: 451)
!4073 = !DILocation(line: 451, column: 1, scope: !3985)
!4074 = !DILocation(line: 452, column: 18, scope: !3985)
!4075 = !DILocation(line: 452, column: 2, scope: !3985)
!4076 = !DILocation(line: 453, column: 8, scope: !3985)
!4077 = !DILocation(line: 453, column: 2, scope: !3985)
!4078 = !DILocation(line: 454, column: 9, scope: !3985)
!4079 = !DILocation(line: 454, column: 2, scope: !3985)
!4080 = !DILocation(line: 455, column: 1, scope: !3985)
!4081 = distinct !DISubprogram(name: "kzalloc", scope: !130, file: !130, line: 662, type: !4082, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!144, !597, !142}
!4084 = !DILocalVariable(name: "s", arg: 1, scope: !4085, file: !130, line: 445, type: !953)
!4085 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !130, file: !130, line: 445, type: !4086, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!144, !953, !142, !597}
!4088 = !DILocation(line: 445, column: 72, scope: !4085, inlinedAt: !4089)
!4089 = distinct !DILocation(line: 552, column: 10, scope: !4090, inlinedAt: !4093)
!4090 = distinct !DILexicalBlock(scope: !4091, file: !130, line: 540, column: 34)
!4091 = distinct !DILexicalBlock(scope: !4092, file: !130, line: 540, column: 6)
!4092 = distinct !DISubprogram(name: "kmalloc", scope: !130, file: !130, line: 538, type: !4082, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4093 = distinct !DILocation(line: 664, column: 9, scope: !4081)
!4094 = !DILocalVariable(name: "flags", arg: 2, scope: !4085, file: !130, line: 446, type: !142)
!4095 = !DILocation(line: 446, column: 9, scope: !4085, inlinedAt: !4089)
!4096 = !DILocalVariable(name: "size", arg: 3, scope: !4085, file: !130, line: 446, type: !597)
!4097 = !DILocation(line: 446, column: 23, scope: !4085, inlinedAt: !4089)
!4098 = !DILocalVariable(name: "ret", scope: !4085, file: !130, line: 448, type: !144)
!4099 = !DILocation(line: 448, column: 8, scope: !4085, inlinedAt: !4089)
!4100 = !DILocalVariable(name: "flags", arg: 1, scope: !4101, file: !130, line: 318, type: !142)
!4101 = distinct !DISubprogram(name: "kmalloc_type", scope: !130, file: !130, line: 318, type: !4102, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!129, !142}
!4104 = !DILocation(line: 318, column: 67, scope: !4101, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 553, column: 20, scope: !4090, inlinedAt: !4093)
!4106 = !DILocalVariable(name: "size", arg: 1, scope: !4107, file: !130, line: 346, type: !597)
!4107 = distinct !DISubprogram(name: "kmalloc_index", scope: !130, file: !130, line: 346, type: !4108, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!7, !597}
!4110 = !DILocation(line: 346, column: 58, scope: !4107, inlinedAt: !4111)
!4111 = distinct !DILocation(line: 547, column: 11, scope: !4090, inlinedAt: !4093)
!4112 = !DILocalVariable(name: "size", arg: 1, scope: !4113, file: !130, line: 472, type: !597)
!4113 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !130, file: !130, line: 472, type: !4114, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!144, !597, !142, !7}
!4116 = !DILocation(line: 472, column: 28, scope: !4113, inlinedAt: !4117)
!4117 = distinct !DILocation(line: 481, column: 9, scope: !4118, inlinedAt: !4119)
!4118 = distinct !DISubprogram(name: "kmalloc_large", scope: !130, file: !130, line: 478, type: !4082, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4119 = distinct !DILocation(line: 545, column: 11, scope: !4120, inlinedAt: !4093)
!4120 = distinct !DILexicalBlock(scope: !4090, file: !130, line: 544, column: 7)
!4121 = !DILocalVariable(name: "flags", arg: 2, scope: !4113, file: !130, line: 472, type: !142)
!4122 = !DILocation(line: 472, column: 40, scope: !4113, inlinedAt: !4117)
!4123 = !DILocalVariable(name: "order", arg: 3, scope: !4113, file: !130, line: 472, type: !7)
!4124 = !DILocation(line: 472, column: 60, scope: !4113, inlinedAt: !4117)
!4125 = !DILocalVariable(name: "size", arg: 1, scope: !4118, file: !130, line: 478, type: !597)
!4126 = !DILocation(line: 478, column: 51, scope: !4118, inlinedAt: !4119)
!4127 = !DILocalVariable(name: "flags", arg: 2, scope: !4118, file: !130, line: 478, type: !142)
!4128 = !DILocation(line: 478, column: 63, scope: !4118, inlinedAt: !4119)
!4129 = !DILocalVariable(name: "order", scope: !4118, file: !130, line: 480, type: !7)
!4130 = !DILocation(line: 480, column: 15, scope: !4118, inlinedAt: !4119)
!4131 = !DILocalVariable(name: "size", arg: 1, scope: !4092, file: !130, line: 538, type: !597)
!4132 = !DILocation(line: 538, column: 45, scope: !4092, inlinedAt: !4093)
!4133 = !DILocalVariable(name: "flags", arg: 2, scope: !4092, file: !130, line: 538, type: !142)
!4134 = !DILocation(line: 538, column: 57, scope: !4092, inlinedAt: !4093)
!4135 = !DILocalVariable(name: "index", scope: !4090, file: !130, line: 542, type: !7)
!4136 = !DILocation(line: 542, column: 16, scope: !4090, inlinedAt: !4093)
!4137 = !DILocalVariable(name: "size", arg: 1, scope: !4081, file: !130, line: 662, type: !597)
!4138 = !DILocation(line: 662, column: 36, scope: !4081)
!4139 = !DILocalVariable(name: "flags", arg: 2, scope: !4081, file: !130, line: 662, type: !142)
!4140 = !DILocation(line: 662, column: 48, scope: !4081)
!4141 = !DILocation(line: 664, column: 17, scope: !4081)
!4142 = !DILocation(line: 664, column: 23, scope: !4081)
!4143 = !DILocation(line: 664, column: 29, scope: !4081)
!4144 = !DILocation(line: 540, column: 27, scope: !4091, inlinedAt: !4093)
!4145 = !DILocation(line: 540, column: 6, scope: !4091, inlinedAt: !4093)
!4146 = !DILocation(line: 540, column: 6, scope: !4092, inlinedAt: !4093)
!4147 = !DILocation(line: 544, column: 7, scope: !4120, inlinedAt: !4093)
!4148 = !DILocation(line: 544, column: 12, scope: !4120, inlinedAt: !4093)
!4149 = !DILocation(line: 544, column: 7, scope: !4090, inlinedAt: !4093)
!4150 = !DILocation(line: 545, column: 25, scope: !4120, inlinedAt: !4093)
!4151 = !DILocation(line: 545, column: 31, scope: !4120, inlinedAt: !4093)
!4152 = !DILocation(line: 480, column: 33, scope: !4118, inlinedAt: !4119)
!4153 = !DILocation(line: 480, column: 23, scope: !4118, inlinedAt: !4119)
!4154 = !DILocation(line: 481, column: 29, scope: !4118, inlinedAt: !4119)
!4155 = !DILocation(line: 481, column: 35, scope: !4118, inlinedAt: !4119)
!4156 = !DILocation(line: 481, column: 42, scope: !4118, inlinedAt: !4119)
!4157 = !DILocation(line: 474, column: 23, scope: !4113, inlinedAt: !4117)
!4158 = !DILocation(line: 474, column: 29, scope: !4113, inlinedAt: !4117)
!4159 = !DILocation(line: 474, column: 36, scope: !4113, inlinedAt: !4117)
!4160 = !DILocation(line: 474, column: 9, scope: !4113, inlinedAt: !4117)
!4161 = !DILocation(line: 545, column: 4, scope: !4120, inlinedAt: !4093)
!4162 = !DILocation(line: 547, column: 25, scope: !4090, inlinedAt: !4093)
!4163 = !DILocation(line: 348, column: 7, scope: !4164, inlinedAt: !4111)
!4164 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 348, column: 6)
!4165 = !DILocation(line: 348, column: 6, scope: !4107, inlinedAt: !4111)
!4166 = !DILocation(line: 349, column: 3, scope: !4164, inlinedAt: !4111)
!4167 = !DILocation(line: 351, column: 6, scope: !4168, inlinedAt: !4111)
!4168 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 351, column: 6)
!4169 = !DILocation(line: 351, column: 11, scope: !4168, inlinedAt: !4111)
!4170 = !DILocation(line: 351, column: 6, scope: !4107, inlinedAt: !4111)
!4171 = !DILocation(line: 352, column: 3, scope: !4168, inlinedAt: !4111)
!4172 = !DILocation(line: 354, column: 32, scope: !4173, inlinedAt: !4111)
!4173 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 354, column: 6)
!4174 = !DILocation(line: 354, column: 37, scope: !4173, inlinedAt: !4111)
!4175 = !DILocation(line: 354, column: 42, scope: !4173, inlinedAt: !4111)
!4176 = !DILocation(line: 354, column: 45, scope: !4173, inlinedAt: !4111)
!4177 = !DILocation(line: 354, column: 50, scope: !4173, inlinedAt: !4111)
!4178 = !DILocation(line: 354, column: 6, scope: !4107, inlinedAt: !4111)
!4179 = !DILocation(line: 355, column: 3, scope: !4173, inlinedAt: !4111)
!4180 = !DILocation(line: 356, column: 32, scope: !4181, inlinedAt: !4111)
!4181 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 356, column: 6)
!4182 = !DILocation(line: 356, column: 37, scope: !4181, inlinedAt: !4111)
!4183 = !DILocation(line: 356, column: 43, scope: !4181, inlinedAt: !4111)
!4184 = !DILocation(line: 356, column: 46, scope: !4181, inlinedAt: !4111)
!4185 = !DILocation(line: 356, column: 51, scope: !4181, inlinedAt: !4111)
!4186 = !DILocation(line: 356, column: 6, scope: !4107, inlinedAt: !4111)
!4187 = !DILocation(line: 357, column: 3, scope: !4181, inlinedAt: !4111)
!4188 = !DILocation(line: 358, column: 6, scope: !4189, inlinedAt: !4111)
!4189 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 358, column: 6)
!4190 = !DILocation(line: 358, column: 11, scope: !4189, inlinedAt: !4111)
!4191 = !DILocation(line: 358, column: 6, scope: !4107, inlinedAt: !4111)
!4192 = !DILocation(line: 358, column: 26, scope: !4189, inlinedAt: !4111)
!4193 = !DILocation(line: 359, column: 6, scope: !4194, inlinedAt: !4111)
!4194 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 359, column: 6)
!4195 = !DILocation(line: 359, column: 11, scope: !4194, inlinedAt: !4111)
!4196 = !DILocation(line: 359, column: 6, scope: !4107, inlinedAt: !4111)
!4197 = !DILocation(line: 359, column: 26, scope: !4194, inlinedAt: !4111)
!4198 = !DILocation(line: 360, column: 6, scope: !4199, inlinedAt: !4111)
!4199 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 360, column: 6)
!4200 = !DILocation(line: 360, column: 11, scope: !4199, inlinedAt: !4111)
!4201 = !DILocation(line: 360, column: 6, scope: !4107, inlinedAt: !4111)
!4202 = !DILocation(line: 360, column: 26, scope: !4199, inlinedAt: !4111)
!4203 = !DILocation(line: 361, column: 6, scope: !4204, inlinedAt: !4111)
!4204 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 361, column: 6)
!4205 = !DILocation(line: 361, column: 11, scope: !4204, inlinedAt: !4111)
!4206 = !DILocation(line: 361, column: 6, scope: !4107, inlinedAt: !4111)
!4207 = !DILocation(line: 361, column: 26, scope: !4204, inlinedAt: !4111)
!4208 = !DILocation(line: 362, column: 6, scope: !4209, inlinedAt: !4111)
!4209 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 362, column: 6)
!4210 = !DILocation(line: 362, column: 11, scope: !4209, inlinedAt: !4111)
!4211 = !DILocation(line: 362, column: 6, scope: !4107, inlinedAt: !4111)
!4212 = !DILocation(line: 362, column: 26, scope: !4209, inlinedAt: !4111)
!4213 = !DILocation(line: 363, column: 6, scope: !4214, inlinedAt: !4111)
!4214 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 363, column: 6)
!4215 = !DILocation(line: 363, column: 11, scope: !4214, inlinedAt: !4111)
!4216 = !DILocation(line: 363, column: 6, scope: !4107, inlinedAt: !4111)
!4217 = !DILocation(line: 363, column: 26, scope: !4214, inlinedAt: !4111)
!4218 = !DILocation(line: 364, column: 6, scope: !4219, inlinedAt: !4111)
!4219 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 364, column: 6)
!4220 = !DILocation(line: 364, column: 11, scope: !4219, inlinedAt: !4111)
!4221 = !DILocation(line: 364, column: 6, scope: !4107, inlinedAt: !4111)
!4222 = !DILocation(line: 364, column: 26, scope: !4219, inlinedAt: !4111)
!4223 = !DILocation(line: 365, column: 6, scope: !4224, inlinedAt: !4111)
!4224 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 365, column: 6)
!4225 = !DILocation(line: 365, column: 11, scope: !4224, inlinedAt: !4111)
!4226 = !DILocation(line: 365, column: 6, scope: !4107, inlinedAt: !4111)
!4227 = !DILocation(line: 365, column: 26, scope: !4224, inlinedAt: !4111)
!4228 = !DILocation(line: 366, column: 6, scope: !4229, inlinedAt: !4111)
!4229 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 366, column: 6)
!4230 = !DILocation(line: 366, column: 11, scope: !4229, inlinedAt: !4111)
!4231 = !DILocation(line: 366, column: 6, scope: !4107, inlinedAt: !4111)
!4232 = !DILocation(line: 366, column: 26, scope: !4229, inlinedAt: !4111)
!4233 = !DILocation(line: 367, column: 6, scope: !4234, inlinedAt: !4111)
!4234 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 367, column: 6)
!4235 = !DILocation(line: 367, column: 11, scope: !4234, inlinedAt: !4111)
!4236 = !DILocation(line: 367, column: 6, scope: !4107, inlinedAt: !4111)
!4237 = !DILocation(line: 367, column: 26, scope: !4234, inlinedAt: !4111)
!4238 = !DILocation(line: 368, column: 6, scope: !4239, inlinedAt: !4111)
!4239 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 368, column: 6)
!4240 = !DILocation(line: 368, column: 11, scope: !4239, inlinedAt: !4111)
!4241 = !DILocation(line: 368, column: 6, scope: !4107, inlinedAt: !4111)
!4242 = !DILocation(line: 368, column: 26, scope: !4239, inlinedAt: !4111)
!4243 = !DILocation(line: 369, column: 6, scope: !4244, inlinedAt: !4111)
!4244 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 369, column: 6)
!4245 = !DILocation(line: 369, column: 11, scope: !4244, inlinedAt: !4111)
!4246 = !DILocation(line: 369, column: 6, scope: !4107, inlinedAt: !4111)
!4247 = !DILocation(line: 369, column: 26, scope: !4244, inlinedAt: !4111)
!4248 = !DILocation(line: 370, column: 6, scope: !4249, inlinedAt: !4111)
!4249 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 370, column: 6)
!4250 = !DILocation(line: 370, column: 11, scope: !4249, inlinedAt: !4111)
!4251 = !DILocation(line: 370, column: 6, scope: !4107, inlinedAt: !4111)
!4252 = !DILocation(line: 370, column: 26, scope: !4249, inlinedAt: !4111)
!4253 = !DILocation(line: 371, column: 6, scope: !4254, inlinedAt: !4111)
!4254 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 371, column: 6)
!4255 = !DILocation(line: 371, column: 11, scope: !4254, inlinedAt: !4111)
!4256 = !DILocation(line: 371, column: 6, scope: !4107, inlinedAt: !4111)
!4257 = !DILocation(line: 371, column: 26, scope: !4254, inlinedAt: !4111)
!4258 = !DILocation(line: 372, column: 6, scope: !4259, inlinedAt: !4111)
!4259 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 372, column: 6)
!4260 = !DILocation(line: 372, column: 11, scope: !4259, inlinedAt: !4111)
!4261 = !DILocation(line: 372, column: 6, scope: !4107, inlinedAt: !4111)
!4262 = !DILocation(line: 372, column: 26, scope: !4259, inlinedAt: !4111)
!4263 = !DILocation(line: 373, column: 6, scope: !4264, inlinedAt: !4111)
!4264 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 373, column: 6)
!4265 = !DILocation(line: 373, column: 11, scope: !4264, inlinedAt: !4111)
!4266 = !DILocation(line: 373, column: 6, scope: !4107, inlinedAt: !4111)
!4267 = !DILocation(line: 373, column: 26, scope: !4264, inlinedAt: !4111)
!4268 = !DILocation(line: 374, column: 6, scope: !4269, inlinedAt: !4111)
!4269 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 374, column: 6)
!4270 = !DILocation(line: 374, column: 11, scope: !4269, inlinedAt: !4111)
!4271 = !DILocation(line: 374, column: 6, scope: !4107, inlinedAt: !4111)
!4272 = !DILocation(line: 374, column: 26, scope: !4269, inlinedAt: !4111)
!4273 = !DILocation(line: 375, column: 6, scope: !4274, inlinedAt: !4111)
!4274 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 375, column: 6)
!4275 = !DILocation(line: 375, column: 11, scope: !4274, inlinedAt: !4111)
!4276 = !DILocation(line: 375, column: 6, scope: !4107, inlinedAt: !4111)
!4277 = !DILocation(line: 375, column: 27, scope: !4274, inlinedAt: !4111)
!4278 = !DILocation(line: 376, column: 6, scope: !4279, inlinedAt: !4111)
!4279 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 376, column: 6)
!4280 = !DILocation(line: 376, column: 11, scope: !4279, inlinedAt: !4111)
!4281 = !DILocation(line: 376, column: 6, scope: !4107, inlinedAt: !4111)
!4282 = !DILocation(line: 376, column: 32, scope: !4279, inlinedAt: !4111)
!4283 = !DILocation(line: 377, column: 6, scope: !4284, inlinedAt: !4111)
!4284 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 377, column: 6)
!4285 = !DILocation(line: 377, column: 11, scope: !4284, inlinedAt: !4111)
!4286 = !DILocation(line: 377, column: 6, scope: !4107, inlinedAt: !4111)
!4287 = !DILocation(line: 377, column: 32, scope: !4284, inlinedAt: !4111)
!4288 = !DILocation(line: 378, column: 6, scope: !4289, inlinedAt: !4111)
!4289 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 378, column: 6)
!4290 = !DILocation(line: 378, column: 11, scope: !4289, inlinedAt: !4111)
!4291 = !DILocation(line: 378, column: 6, scope: !4107, inlinedAt: !4111)
!4292 = !DILocation(line: 378, column: 32, scope: !4289, inlinedAt: !4111)
!4293 = !DILocation(line: 379, column: 6, scope: !4294, inlinedAt: !4111)
!4294 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 379, column: 6)
!4295 = !DILocation(line: 379, column: 11, scope: !4294, inlinedAt: !4111)
!4296 = !DILocation(line: 379, column: 6, scope: !4107, inlinedAt: !4111)
!4297 = !DILocation(line: 379, column: 33, scope: !4294, inlinedAt: !4111)
!4298 = !DILocation(line: 380, column: 6, scope: !4299, inlinedAt: !4111)
!4299 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 380, column: 6)
!4300 = !DILocation(line: 380, column: 11, scope: !4299, inlinedAt: !4111)
!4301 = !DILocation(line: 380, column: 6, scope: !4107, inlinedAt: !4111)
!4302 = !DILocation(line: 380, column: 33, scope: !4299, inlinedAt: !4111)
!4303 = !DILocation(line: 381, column: 6, scope: !4304, inlinedAt: !4111)
!4304 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 381, column: 6)
!4305 = !DILocation(line: 381, column: 11, scope: !4304, inlinedAt: !4111)
!4306 = !DILocation(line: 381, column: 6, scope: !4107, inlinedAt: !4111)
!4307 = !DILocation(line: 381, column: 33, scope: !4304, inlinedAt: !4111)
!4308 = !DILocation(line: 382, column: 2, scope: !4309, inlinedAt: !4111)
!4309 = distinct !DILexicalBlock(scope: !4310, file: !130, line: 382, column: 2)
!4310 = distinct !DILexicalBlock(scope: !4107, file: !130, line: 382, column: 2)
!4311 = !{i32 -2142850971, i32 -2142850942, i32 -2142850896, i32 -2142850838, i32 -2142850784, i32 -2142850730, i32 -2142850675, i32 -2142850644}
!4312 = !DILocation(line: 382, column: 2, scope: !4313, inlinedAt: !4111)
!4313 = distinct !DILexicalBlock(scope: !4314, file: !130, line: 382, column: 2)
!4314 = distinct !DILexicalBlock(scope: !4310, file: !130, line: 382, column: 2)
!4315 = !{i32 -2142850201, i32 -2142850194, i32 -2142850140, i32 -2142850109, i32 -2142850079}
!4316 = !DILocation(line: 382, column: 2, scope: !4314, inlinedAt: !4111)
!4317 = !DILocation(line: 386, column: 1, scope: !4107, inlinedAt: !4111)
!4318 = !DILocation(line: 547, column: 9, scope: !4090, inlinedAt: !4093)
!4319 = !DILocation(line: 549, column: 8, scope: !4320, inlinedAt: !4093)
!4320 = distinct !DILexicalBlock(scope: !4090, file: !130, line: 549, column: 7)
!4321 = !DILocation(line: 549, column: 7, scope: !4090, inlinedAt: !4093)
!4322 = !DILocation(line: 550, column: 4, scope: !4320, inlinedAt: !4093)
!4323 = !DILocation(line: 553, column: 33, scope: !4090, inlinedAt: !4093)
!4324 = !DILocation(line: 325, column: 6, scope: !4325, inlinedAt: !4105)
!4325 = distinct !DILexicalBlock(scope: !4101, file: !130, line: 325, column: 6)
!4326 = !DILocation(line: 325, column: 6, scope: !4101, inlinedAt: !4105)
!4327 = !DILocation(line: 326, column: 3, scope: !4325, inlinedAt: !4105)
!4328 = !DILocation(line: 332, column: 9, scope: !4101, inlinedAt: !4105)
!4329 = !DILocation(line: 332, column: 15, scope: !4101, inlinedAt: !4105)
!4330 = !DILocation(line: 332, column: 2, scope: !4101, inlinedAt: !4105)
!4331 = !DILocation(line: 336, column: 1, scope: !4101, inlinedAt: !4105)
!4332 = !DILocation(line: 553, column: 5, scope: !4090, inlinedAt: !4093)
!4333 = !DILocation(line: 553, column: 41, scope: !4090, inlinedAt: !4093)
!4334 = !DILocation(line: 554, column: 5, scope: !4090, inlinedAt: !4093)
!4335 = !DILocation(line: 554, column: 12, scope: !4090, inlinedAt: !4093)
!4336 = !DILocation(line: 448, column: 31, scope: !4085, inlinedAt: !4089)
!4337 = !DILocation(line: 448, column: 34, scope: !4085, inlinedAt: !4089)
!4338 = !DILocation(line: 448, column: 14, scope: !4085, inlinedAt: !4089)
!4339 = !DILocation(line: 450, column: 22, scope: !4085, inlinedAt: !4089)
!4340 = !DILocation(line: 450, column: 25, scope: !4085, inlinedAt: !4089)
!4341 = !DILocation(line: 450, column: 30, scope: !4085, inlinedAt: !4089)
!4342 = !DILocation(line: 450, column: 36, scope: !4085, inlinedAt: !4089)
!4343 = !DILocation(line: 450, column: 8, scope: !4085, inlinedAt: !4089)
!4344 = !DILocation(line: 450, column: 6, scope: !4085, inlinedAt: !4089)
!4345 = !DILocation(line: 451, column: 9, scope: !4085, inlinedAt: !4089)
!4346 = !DILocation(line: 552, column: 3, scope: !4090, inlinedAt: !4093)
!4347 = !DILocation(line: 557, column: 19, scope: !4092, inlinedAt: !4093)
!4348 = !DILocation(line: 557, column: 25, scope: !4092, inlinedAt: !4093)
!4349 = !DILocation(line: 557, column: 9, scope: !4092, inlinedAt: !4093)
!4350 = !DILocation(line: 557, column: 2, scope: !4092, inlinedAt: !4093)
!4351 = !DILocation(line: 558, column: 1, scope: !4092, inlinedAt: !4093)
!4352 = !DILocation(line: 664, column: 2, scope: !4081)
!4353 = distinct !DISubprogram(name: "focaltech_reset", scope: !3, file: !3, line: 293, type: !3957, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4354 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4353, file: !3, line: 293, type: !166)
!4355 = !DILocation(line: 293, column: 45, scope: !4353)
!4356 = !DILocation(line: 295, column: 15, scope: !4353)
!4357 = !DILocation(line: 295, column: 24, scope: !4353)
!4358 = !DILocation(line: 295, column: 2, scope: !4353)
!4359 = !DILocation(line: 296, column: 16, scope: !4353)
!4360 = !DILocation(line: 296, column: 2, scope: !4353)
!4361 = !DILocation(line: 297, column: 1, scope: !4353)
!4362 = distinct !DISubprogram(name: "focaltech_read_size", scope: !3, file: !3, line: 373, type: !3916, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4363 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4362, file: !3, line: 373, type: !166)
!4364 = !DILocation(line: 373, column: 48, scope: !4362)
!4365 = !DILocalVariable(name: "ps2dev", scope: !4362, file: !3, line: 375, type: !4366)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!4367 = !DILocation(line: 375, column: 17, scope: !4362)
!4368 = !DILocation(line: 375, column: 27, scope: !4362)
!4369 = !DILocation(line: 375, column: 36, scope: !4362)
!4370 = !DILocalVariable(name: "priv", scope: !4362, file: !3, line: 376, type: !3989)
!4371 = !DILocation(line: 376, column: 25, scope: !4362)
!4372 = !DILocation(line: 376, column: 32, scope: !4362)
!4373 = !DILocation(line: 376, column: 41, scope: !4362)
!4374 = !DILocalVariable(name: "param", scope: !4362, file: !3, line: 377, type: !4375)
!4375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 24, elements: !676)
!4376 = !DILocation(line: 377, column: 7, scope: !4362)
!4377 = !DILocation(line: 379, column: 30, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4362, file: !3, line: 379, column: 6)
!4379 = !DILocation(line: 379, column: 41, scope: !4378)
!4380 = !DILocation(line: 379, column: 6, scope: !4378)
!4381 = !DILocation(line: 379, column: 6, scope: !4362)
!4382 = !DILocation(line: 380, column: 3, scope: !4378)
!4383 = !DILocation(line: 383, column: 31, scope: !4362)
!4384 = !DILocation(line: 383, column: 16, scope: !4362)
!4385 = !DILocation(line: 383, column: 40, scope: !4362)
!4386 = !DILocation(line: 383, column: 2, scope: !4362)
!4387 = !DILocation(line: 383, column: 8, scope: !4362)
!4388 = !DILocation(line: 383, column: 14, scope: !4362)
!4389 = !DILocation(line: 384, column: 31, scope: !4362)
!4390 = !DILocation(line: 384, column: 16, scope: !4362)
!4391 = !DILocation(line: 384, column: 40, scope: !4362)
!4392 = !DILocation(line: 384, column: 2, scope: !4362)
!4393 = !DILocation(line: 384, column: 8, scope: !4362)
!4394 = !DILocation(line: 384, column: 14, scope: !4362)
!4395 = !DILocation(line: 386, column: 2, scope: !4362)
!4396 = !DILocation(line: 387, column: 1, scope: !4362)
!4397 = distinct !DISubprogram(name: "focaltech_switch_protocol", scope: !3, file: !3, line: 265, type: !3916, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4398 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4397, file: !3, line: 265, type: !166)
!4399 = !DILocation(line: 265, column: 54, scope: !4397)
!4400 = !DILocalVariable(name: "ps2dev", scope: !4397, file: !3, line: 267, type: !4366)
!4401 = !DILocation(line: 267, column: 17, scope: !4397)
!4402 = !DILocation(line: 267, column: 27, scope: !4397)
!4403 = !DILocation(line: 267, column: 36, scope: !4397)
!4404 = !DILocalVariable(name: "param", scope: !4397, file: !3, line: 268, type: !4405)
!4405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 24, elements: !676)
!4406 = !DILocation(line: 268, column: 16, scope: !4397)
!4407 = !DILocation(line: 270, column: 2, scope: !4397)
!4408 = !DILocation(line: 270, column: 11, scope: !4397)
!4409 = !DILocation(line: 271, column: 18, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4397, file: !3, line: 271, column: 6)
!4411 = !DILocation(line: 271, column: 26, scope: !4410)
!4412 = !DILocation(line: 271, column: 6, scope: !4410)
!4413 = !DILocation(line: 271, column: 6, scope: !4397)
!4414 = !DILocation(line: 272, column: 3, scope: !4410)
!4415 = !DILocation(line: 274, column: 18, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4397, file: !3, line: 274, column: 6)
!4417 = !DILocation(line: 274, column: 26, scope: !4416)
!4418 = !DILocation(line: 274, column: 6, scope: !4416)
!4419 = !DILocation(line: 274, column: 6, scope: !4397)
!4420 = !DILocation(line: 275, column: 3, scope: !4416)
!4421 = !DILocation(line: 277, column: 18, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4397, file: !3, line: 277, column: 6)
!4423 = !DILocation(line: 277, column: 26, scope: !4422)
!4424 = !DILocation(line: 277, column: 6, scope: !4422)
!4425 = !DILocation(line: 277, column: 6, scope: !4397)
!4426 = !DILocation(line: 278, column: 3, scope: !4422)
!4427 = !DILocation(line: 280, column: 2, scope: !4397)
!4428 = !DILocation(line: 280, column: 11, scope: !4397)
!4429 = !DILocation(line: 281, column: 18, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4397, file: !3, line: 281, column: 6)
!4431 = !DILocation(line: 281, column: 26, scope: !4430)
!4432 = !DILocation(line: 281, column: 6, scope: !4430)
!4433 = !DILocation(line: 281, column: 6, scope: !4397)
!4434 = !DILocation(line: 282, column: 3, scope: !4430)
!4435 = !DILocation(line: 284, column: 18, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4397, file: !3, line: 284, column: 6)
!4437 = !DILocation(line: 284, column: 26, scope: !4436)
!4438 = !DILocation(line: 284, column: 6, scope: !4436)
!4439 = !DILocation(line: 284, column: 6, scope: !4397)
!4440 = !DILocation(line: 285, column: 3, scope: !4436)
!4441 = !DILocation(line: 287, column: 18, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4397, file: !3, line: 287, column: 6)
!4443 = !DILocation(line: 287, column: 26, scope: !4442)
!4444 = !DILocation(line: 287, column: 6, scope: !4442)
!4445 = !DILocation(line: 287, column: 6, scope: !4397)
!4446 = !DILocation(line: 288, column: 3, scope: !4442)
!4447 = !DILocation(line: 290, column: 2, scope: !4397)
!4448 = !DILocation(line: 291, column: 1, scope: !4397)
!4449 = distinct !DISubprogram(name: "focaltech_set_input_params", scope: !3, file: !3, line: 321, type: !3957, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4450 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4449, file: !3, line: 321, type: !166)
!4451 = !DILocation(line: 321, column: 56, scope: !4449)
!4452 = !DILocalVariable(name: "dev", scope: !4449, file: !3, line: 323, type: !171)
!4453 = !DILocation(line: 323, column: 20, scope: !4449)
!4454 = !DILocation(line: 323, column: 26, scope: !4449)
!4455 = !DILocation(line: 323, column: 35, scope: !4449)
!4456 = !DILocalVariable(name: "priv", scope: !4449, file: !3, line: 324, type: !3989)
!4457 = !DILocation(line: 324, column: 25, scope: !4449)
!4458 = !DILocation(line: 324, column: 32, scope: !4449)
!4459 = !DILocation(line: 324, column: 41, scope: !4449)
!4460 = !DILocation(line: 330, column: 22, scope: !4449)
!4461 = !DILocation(line: 330, column: 27, scope: !4449)
!4462 = !DILocation(line: 330, column: 2, scope: !4449)
!4463 = !DILocation(line: 331, column: 21, scope: !4449)
!4464 = !DILocation(line: 331, column: 26, scope: !4449)
!4465 = !DILocation(line: 331, column: 2, scope: !4449)
!4466 = !DILocation(line: 332, column: 21, scope: !4449)
!4467 = !DILocation(line: 332, column: 26, scope: !4449)
!4468 = !DILocation(line: 332, column: 2, scope: !4449)
!4469 = !DILocation(line: 333, column: 25, scope: !4449)
!4470 = !DILocation(line: 333, column: 30, scope: !4449)
!4471 = !DILocation(line: 333, column: 2, scope: !4449)
!4472 = !DILocation(line: 334, column: 26, scope: !4449)
!4473 = !DILocation(line: 334, column: 31, scope: !4449)
!4474 = !DILocation(line: 334, column: 2, scope: !4449)
!4475 = !DILocation(line: 339, column: 20, scope: !4449)
!4476 = !DILocation(line: 339, column: 25, scope: !4449)
!4477 = !DILocation(line: 339, column: 2, scope: !4449)
!4478 = !DILocation(line: 340, column: 23, scope: !4449)
!4479 = !DILocation(line: 340, column: 50, scope: !4449)
!4480 = !DILocation(line: 340, column: 56, scope: !4449)
!4481 = !DILocation(line: 340, column: 2, scope: !4449)
!4482 = !DILocation(line: 341, column: 23, scope: !4449)
!4483 = !DILocation(line: 341, column: 50, scope: !4449)
!4484 = !DILocation(line: 341, column: 56, scope: !4449)
!4485 = !DILocation(line: 341, column: 2, scope: !4449)
!4486 = !DILocation(line: 342, column: 23, scope: !4449)
!4487 = !DILocation(line: 342, column: 2, scope: !4449)
!4488 = !DILocation(line: 343, column: 22, scope: !4449)
!4489 = !DILocation(line: 343, column: 2, scope: !4449)
!4490 = !DILocation(line: 344, column: 34, scope: !4449)
!4491 = !DILocation(line: 344, column: 39, scope: !4449)
!4492 = !DILocation(line: 344, column: 2, scope: !4449)
!4493 = !DILocation(line: 345, column: 1, scope: !4449)
!4494 = distinct !DISubprogram(name: "focaltech_process_byte", scope: !3, file: !3, line: 251, type: !3941, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4495 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4494, file: !3, line: 251, type: !166)
!4496 = !DILocation(line: 251, column: 61, scope: !4494)
!4497 = !DILocation(line: 253, column: 6, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 253, column: 6)
!4499 = !DILocation(line: 253, column: 15, scope: !4498)
!4500 = !DILocation(line: 253, column: 22, scope: !4498)
!4501 = !DILocation(line: 253, column: 6, scope: !4494)
!4502 = !DILocation(line: 254, column: 28, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4498, file: !3, line: 253, column: 28)
!4504 = !DILocation(line: 254, column: 3, scope: !4503)
!4505 = !DILocation(line: 255, column: 3, scope: !4503)
!4506 = !DILocation(line: 262, column: 2, scope: !4494)
!4507 = !DILocation(line: 263, column: 1, scope: !4494)
!4508 = distinct !DISubprogram(name: "focaltech_disconnect", scope: !3, file: !3, line: 299, type: !3957, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4509 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4508, file: !3, line: 299, type: !166)
!4510 = !DILocation(line: 299, column: 50, scope: !4508)
!4511 = !DILocation(line: 301, column: 18, scope: !4508)
!4512 = !DILocation(line: 301, column: 2, scope: !4508)
!4513 = !DILocation(line: 302, column: 8, scope: !4508)
!4514 = !DILocation(line: 302, column: 17, scope: !4508)
!4515 = !DILocation(line: 302, column: 2, scope: !4508)
!4516 = !DILocation(line: 303, column: 2, scope: !4508)
!4517 = !DILocation(line: 303, column: 11, scope: !4508)
!4518 = !DILocation(line: 303, column: 19, scope: !4508)
!4519 = !DILocation(line: 304, column: 1, scope: !4508)
!4520 = distinct !DISubprogram(name: "focaltech_reconnect", scope: !3, file: !3, line: 306, type: !3916, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4521 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4520, file: !3, line: 306, type: !166)
!4522 = !DILocation(line: 306, column: 48, scope: !4520)
!4523 = !DILocalVariable(name: "error", scope: !4520, file: !3, line: 308, type: !165)
!4524 = !DILocation(line: 308, column: 6, scope: !4520)
!4525 = !DILocation(line: 310, column: 18, scope: !4520)
!4526 = !DILocation(line: 310, column: 2, scope: !4520)
!4527 = !DILocation(line: 312, column: 36, scope: !4520)
!4528 = !DILocation(line: 312, column: 10, scope: !4520)
!4529 = !DILocation(line: 312, column: 8, scope: !4520)
!4530 = !DILocation(line: 313, column: 6, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 313, column: 6)
!4532 = !DILocation(line: 313, column: 6, scope: !4520)
!4533 = !DILocation(line: 314, column: 3, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 313, column: 13)
!4535 = !DILocation(line: 315, column: 10, scope: !4534)
!4536 = !DILocation(line: 315, column: 3, scope: !4534)
!4537 = !DILocation(line: 318, column: 2, scope: !4520)
!4538 = !DILocation(line: 319, column: 1, scope: !4520)
!4539 = distinct !DISubprogram(name: "focaltech_set_resolution", scope: !3, file: !3, line: 389, type: !3946, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4540 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4539, file: !3, line: 389, type: !166)
!4541 = !DILocation(line: 389, column: 54, scope: !4539)
!4542 = !DILocalVariable(name: "resolution", arg: 2, scope: !4539, file: !3, line: 390, type: !7)
!4543 = !DILocation(line: 390, column: 23, scope: !4539)
!4544 = !DILocation(line: 393, column: 1, scope: !4539)
!4545 = distinct !DISubprogram(name: "focaltech_set_rate", scope: !3, file: !3, line: 395, type: !3946, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4546 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4545, file: !3, line: 395, type: !166)
!4547 = !DILocation(line: 395, column: 48, scope: !4545)
!4548 = !DILocalVariable(name: "rate", arg: 2, scope: !4545, file: !3, line: 395, type: !7)
!4549 = !DILocation(line: 395, column: 70, scope: !4545)
!4550 = !DILocation(line: 398, column: 1, scope: !4545)
!4551 = distinct !DISubprogram(name: "focaltech_set_scale", scope: !3, file: !3, line: 400, type: !3951, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4552 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4551, file: !3, line: 400, type: !166)
!4553 = !DILocation(line: 400, column: 49, scope: !4551)
!4554 = !DILocalVariable(name: "scale", arg: 2, scope: !4551, file: !3, line: 401, type: !125)
!4555 = !DILocation(line: 401, column: 24, scope: !4551)
!4556 = !DILocation(line: 404, column: 1, scope: !4551)
!4557 = distinct !DISubprogram(name: "get_order", scope: !4558, file: !4558, line: 29, type: !4559, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4558 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!165, !191}
!4561 = !DILocalVariable(name: "x", arg: 1, scope: !4562, file: !4563, line: 366, type: !438)
!4562 = distinct !DISubprogram(name: "fls64", scope: !4563, file: !4563, line: 366, type: !4564, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4563 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!165, !438}
!4566 = !DILocation(line: 366, column: 40, scope: !4562, inlinedAt: !4567)
!4567 = distinct !DILocation(line: 46, column: 9, scope: !4557)
!4568 = !DILocalVariable(name: "bitpos", scope: !4562, file: !4563, line: 368, type: !165)
!4569 = !DILocation(line: 368, column: 6, scope: !4562, inlinedAt: !4567)
!4570 = !DILocalVariable(name: "size", arg: 1, scope: !4557, file: !4558, line: 29, type: !191)
!4571 = !DILocation(line: 29, column: 63, scope: !4557)
!4572 = !DILocation(line: 31, column: 27, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4557, file: !4558, line: 31, column: 6)
!4574 = !DILocation(line: 31, column: 6, scope: !4573)
!4575 = !DILocation(line: 31, column: 6, scope: !4557)
!4576 = !DILocation(line: 32, column: 8, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4578, file: !4558, line: 32, column: 7)
!4578 = distinct !DILexicalBlock(scope: !4573, file: !4558, line: 31, column: 34)
!4579 = !DILocation(line: 32, column: 7, scope: !4578)
!4580 = !DILocation(line: 33, column: 4, scope: !4577)
!4581 = !DILocation(line: 35, column: 7, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4578, file: !4558, line: 35, column: 7)
!4583 = !DILocation(line: 35, column: 12, scope: !4582)
!4584 = !DILocation(line: 35, column: 7, scope: !4578)
!4585 = !DILocation(line: 36, column: 4, scope: !4582)
!4586 = !DILocation(line: 38, column: 10, scope: !4578)
!4587 = !DILocation(line: 38, column: 28, scope: !4578)
!4588 = !DILocation(line: 38, column: 41, scope: !4578)
!4589 = !DILocation(line: 38, column: 3, scope: !4578)
!4590 = !DILocation(line: 41, column: 6, scope: !4557)
!4591 = !DILocation(line: 42, column: 7, scope: !4557)
!4592 = !DILocation(line: 46, column: 15, scope: !4557)
!4593 = !DILocation(line: 374, column: 2, scope: !4562, inlinedAt: !4567)
!4594 = !DILocation(line: 376, column: 14, scope: !4562, inlinedAt: !4567)
!4595 = !{i32 386727}
!4596 = !DILocation(line: 377, column: 9, scope: !4562, inlinedAt: !4567)
!4597 = !DILocation(line: 377, column: 16, scope: !4562, inlinedAt: !4567)
!4598 = !DILocation(line: 46, column: 2, scope: !4557)
!4599 = !DILocation(line: 48, column: 1, scope: !4557)
!4600 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4601, file: !4601, line: 30, type: !4602, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4601 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!165, !437}
!4604 = !DILocation(line: 366, column: 40, scope: !4562, inlinedAt: !4605)
!4605 = distinct !DILocation(line: 32, column: 9, scope: !4600)
!4606 = !DILocation(line: 368, column: 6, scope: !4562, inlinedAt: !4605)
!4607 = !DILocalVariable(name: "n", arg: 1, scope: !4600, file: !4601, line: 30, type: !437)
!4608 = !DILocation(line: 30, column: 21, scope: !4600)
!4609 = !DILocation(line: 32, column: 15, scope: !4600)
!4610 = !DILocation(line: 374, column: 2, scope: !4562, inlinedAt: !4605)
!4611 = !DILocation(line: 376, column: 14, scope: !4562, inlinedAt: !4605)
!4612 = !DILocation(line: 377, column: 9, scope: !4562, inlinedAt: !4605)
!4613 = !DILocation(line: 377, column: 16, scope: !4562, inlinedAt: !4605)
!4614 = !DILocation(line: 32, column: 18, scope: !4600)
!4615 = !DILocation(line: 32, column: 2, scope: !4600)
!4616 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4617, file: !4617, line: 137, type: !4618, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4617 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4618 = !DISubroutineType(types: !4619)
!4619 = !{!144, !953, !3291, !597, !142}
!4620 = !DILocalVariable(name: "s", arg: 1, scope: !4616, file: !4617, line: 137, type: !953)
!4621 = !DILocation(line: 137, column: 54, scope: !4616)
!4622 = !DILocalVariable(name: "object", arg: 2, scope: !4616, file: !4617, line: 137, type: !3291)
!4623 = !DILocation(line: 137, column: 69, scope: !4616)
!4624 = !DILocalVariable(name: "size", arg: 3, scope: !4616, file: !4617, line: 138, type: !597)
!4625 = !DILocation(line: 138, column: 12, scope: !4616)
!4626 = !DILocalVariable(name: "flags", arg: 4, scope: !4616, file: !4617, line: 138, type: !142)
!4627 = !DILocation(line: 138, column: 24, scope: !4616)
!4628 = !DILocation(line: 140, column: 17, scope: !4616)
!4629 = !DILocation(line: 140, column: 2, scope: !4616)
!4630 = distinct !DISubprogram(name: "focaltech_read_register", scope: !3, file: !3, line: 347, type: !4631, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!165, !4366, !165, !4633}
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!4634 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !4630, file: !3, line: 347, type: !4366)
!4635 = !DILocation(line: 347, column: 51, scope: !4630)
!4636 = !DILocalVariable(name: "reg", arg: 2, scope: !4630, file: !3, line: 347, type: !165)
!4637 = !DILocation(line: 347, column: 63, scope: !4630)
!4638 = !DILocalVariable(name: "param", arg: 3, scope: !4630, file: !3, line: 348, type: !4633)
!4639 = !DILocation(line: 348, column: 23, scope: !4630)
!4640 = !DILocation(line: 350, column: 18, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4630, file: !3, line: 350, column: 6)
!4642 = !DILocation(line: 350, column: 26, scope: !4641)
!4643 = !DILocation(line: 350, column: 6, scope: !4641)
!4644 = !DILocation(line: 350, column: 6, scope: !4630)
!4645 = !DILocation(line: 351, column: 3, scope: !4641)
!4646 = !DILocation(line: 353, column: 2, scope: !4630)
!4647 = !DILocation(line: 353, column: 11, scope: !4630)
!4648 = !DILocation(line: 354, column: 18, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4630, file: !3, line: 354, column: 6)
!4650 = !DILocation(line: 354, column: 26, scope: !4649)
!4651 = !DILocation(line: 354, column: 6, scope: !4649)
!4652 = !DILocation(line: 354, column: 6, scope: !4630)
!4653 = !DILocation(line: 355, column: 3, scope: !4649)
!4654 = !DILocation(line: 357, column: 18, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4630, file: !3, line: 357, column: 6)
!4656 = !DILocation(line: 357, column: 26, scope: !4655)
!4657 = !DILocation(line: 357, column: 6, scope: !4655)
!4658 = !DILocation(line: 357, column: 6, scope: !4630)
!4659 = !DILocation(line: 358, column: 3, scope: !4655)
!4660 = !DILocation(line: 360, column: 18, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4630, file: !3, line: 360, column: 6)
!4662 = !DILocation(line: 360, column: 26, scope: !4661)
!4663 = !DILocation(line: 360, column: 6, scope: !4661)
!4664 = !DILocation(line: 360, column: 6, scope: !4630)
!4665 = !DILocation(line: 361, column: 3, scope: !4661)
!4666 = !DILocation(line: 363, column: 13, scope: !4630)
!4667 = !DILocation(line: 363, column: 2, scope: !4630)
!4668 = !DILocation(line: 363, column: 11, scope: !4630)
!4669 = !DILocation(line: 364, column: 18, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4630, file: !3, line: 364, column: 6)
!4671 = !DILocation(line: 364, column: 26, scope: !4670)
!4672 = !DILocation(line: 364, column: 6, scope: !4670)
!4673 = !DILocation(line: 364, column: 6, scope: !4630)
!4674 = !DILocation(line: 365, column: 3, scope: !4670)
!4675 = !DILocation(line: 367, column: 18, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4630, file: !3, line: 367, column: 6)
!4677 = !DILocation(line: 367, column: 26, scope: !4676)
!4678 = !DILocation(line: 367, column: 6, scope: !4676)
!4679 = !DILocation(line: 367, column: 6, scope: !4630)
!4680 = !DILocation(line: 368, column: 3, scope: !4676)
!4681 = !DILocation(line: 370, column: 2, scope: !4630)
!4682 = !DILocation(line: 371, column: 1, scope: !4630)
!4683 = distinct !DISubprogram(name: "__clear_bit", scope: !4684, file: !4684, line: 40, type: !4685, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4684 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4685 = !DISubroutineType(types: !4686)
!4686 = !{null, !148, !4687}
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !191)
!4689 = !DILocalVariable(name: "nr", arg: 1, scope: !4690, file: !4563, line: 92, type: !148)
!4690 = distinct !DISubprogram(name: "arch___clear_bit", scope: !4563, file: !4563, line: 92, type: !4685, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4691 = !DILocation(line: 92, column: 23, scope: !4690, inlinedAt: !4692)
!4692 = distinct !DILocation(line: 43, column: 2, scope: !4683)
!4693 = !DILocalVariable(name: "addr", arg: 2, scope: !4690, file: !4563, line: 92, type: !4687)
!4694 = !DILocation(line: 92, column: 51, scope: !4690, inlinedAt: !4692)
!4695 = !DILocalVariable(name: "v", arg: 1, scope: !4696, file: !4697, line: 39, type: !4700)
!4696 = distinct !DISubprogram(name: "instrument_write", scope: !4697, file: !4697, line: 39, type: !4698, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4697 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4698 = !DISubroutineType(types: !4699)
!4699 = !{null, !4700, !597}
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4702)
!4702 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4703 = !DILocation(line: 39, column: 67, scope: !4696, inlinedAt: !4704)
!4704 = distinct !DILocation(line: 42, column: 2, scope: !4683)
!4705 = !DILocalVariable(name: "size", arg: 2, scope: !4696, file: !4697, line: 39, type: !597)
!4706 = !DILocation(line: 39, column: 77, scope: !4696, inlinedAt: !4704)
!4707 = !DILocalVariable(name: "nr", arg: 1, scope: !4683, file: !4684, line: 40, type: !148)
!4708 = !DILocation(line: 40, column: 37, scope: !4683)
!4709 = !DILocalVariable(name: "addr", arg: 2, scope: !4683, file: !4684, line: 40, type: !4687)
!4710 = !DILocation(line: 40, column: 65, scope: !4683)
!4711 = !DILocation(line: 42, column: 19, scope: !4683)
!4712 = !DILocation(line: 42, column: 26, scope: !4683)
!4713 = !DILocation(line: 42, column: 24, scope: !4683)
!4714 = !DILocation(line: 41, column: 20, scope: !4696, inlinedAt: !4704)
!4715 = !DILocation(line: 41, column: 23, scope: !4696, inlinedAt: !4704)
!4716 = !DILocation(line: 41, column: 2, scope: !4696, inlinedAt: !4704)
!4717 = !DILocation(line: 42, column: 2, scope: !4696, inlinedAt: !4704)
!4718 = !DILocation(line: 43, column: 19, scope: !4683)
!4719 = !DILocation(line: 43, column: 23, scope: !4683)
!4720 = !DILocation(line: 94, column: 44, scope: !4690, inlinedAt: !4692)
!4721 = !DILocation(line: 94, column: 56, scope: !4690, inlinedAt: !4692)
!4722 = !DILocation(line: 94, column: 2, scope: !4690, inlinedAt: !4692)
!4723 = !{i32 -2147063659}
!4724 = !DILocation(line: 44, column: 1, scope: !4683)
!4725 = distinct !DISubprogram(name: "__set_bit", scope: !4684, file: !4684, line: 25, type: !4685, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4726 = !DILocalVariable(name: "nr", arg: 1, scope: !4727, file: !4563, line: 66, type: !148)
!4727 = distinct !DISubprogram(name: "arch___set_bit", scope: !4563, file: !4563, line: 66, type: !4685, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4728 = !DILocation(line: 66, column: 21, scope: !4727, inlinedAt: !4729)
!4729 = distinct !DILocation(line: 28, column: 2, scope: !4725)
!4730 = !DILocalVariable(name: "addr", arg: 2, scope: !4727, file: !4563, line: 66, type: !4687)
!4731 = !DILocation(line: 66, column: 49, scope: !4727, inlinedAt: !4729)
!4732 = !DILocation(line: 39, column: 67, scope: !4696, inlinedAt: !4733)
!4733 = distinct !DILocation(line: 27, column: 2, scope: !4725)
!4734 = !DILocation(line: 39, column: 77, scope: !4696, inlinedAt: !4733)
!4735 = !DILocalVariable(name: "nr", arg: 1, scope: !4725, file: !4684, line: 25, type: !148)
!4736 = !DILocation(line: 25, column: 35, scope: !4725)
!4737 = !DILocalVariable(name: "addr", arg: 2, scope: !4725, file: !4684, line: 25, type: !4687)
!4738 = !DILocation(line: 25, column: 63, scope: !4725)
!4739 = !DILocation(line: 27, column: 19, scope: !4725)
!4740 = !DILocation(line: 27, column: 26, scope: !4725)
!4741 = !DILocation(line: 27, column: 24, scope: !4725)
!4742 = !DILocation(line: 41, column: 20, scope: !4696, inlinedAt: !4733)
!4743 = !DILocation(line: 41, column: 23, scope: !4696, inlinedAt: !4733)
!4744 = !DILocation(line: 41, column: 2, scope: !4696, inlinedAt: !4733)
!4745 = !DILocation(line: 42, column: 2, scope: !4696, inlinedAt: !4733)
!4746 = !DILocation(line: 28, column: 17, scope: !4725)
!4747 = !DILocation(line: 28, column: 21, scope: !4725)
!4748 = !DILocation(line: 68, column: 44, scope: !4727, inlinedAt: !4729)
!4749 = !DILocation(line: 68, column: 56, scope: !4727, inlinedAt: !4729)
!4750 = !DILocation(line: 68, column: 2, scope: !4727, inlinedAt: !4729)
!4751 = !{i32 -2147064858}
!4752 = !DILocation(line: 29, column: 1, scope: !4725)
!4753 = distinct !DISubprogram(name: "kasan_check_write", scope: !4754, file: !4754, line: 38, type: !4755, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4754 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4755 = !DISubroutineType(types: !4756)
!4756 = !{!508, !4700, !7}
!4757 = !DILocalVariable(name: "p", arg: 1, scope: !4753, file: !4754, line: 38, type: !4700)
!4758 = !DILocation(line: 38, column: 59, scope: !4753)
!4759 = !DILocalVariable(name: "size", arg: 2, scope: !4753, file: !4754, line: 38, type: !7)
!4760 = !DILocation(line: 38, column: 75, scope: !4753)
!4761 = !DILocation(line: 40, column: 2, scope: !4753)
!4762 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4763, file: !4763, line: 178, type: !4764, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4763 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4764 = !DISubroutineType(types: !4765)
!4765 = !{null, !4700, !597, !165}
!4766 = !DILocalVariable(name: "ptr", arg: 1, scope: !4762, file: !4763, line: 178, type: !4700)
!4767 = !DILocation(line: 178, column: 60, scope: !4762)
!4768 = !DILocalVariable(name: "size", arg: 2, scope: !4762, file: !4763, line: 178, type: !597)
!4769 = !DILocation(line: 178, column: 72, scope: !4762)
!4770 = !DILocalVariable(name: "type", arg: 3, scope: !4762, file: !4763, line: 179, type: !165)
!4771 = !DILocation(line: 179, column: 15, scope: !4762)
!4772 = !DILocation(line: 179, column: 23, scope: !4762)
!4773 = distinct !DISubprogram(name: "focaltech_process_packet", scope: !3, file: !3, line: 226, type: !3957, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4774 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4773, file: !3, line: 226, type: !166)
!4775 = !DILocation(line: 226, column: 54, scope: !4773)
!4776 = !DILocalVariable(name: "packet", scope: !4773, file: !3, line: 228, type: !4633)
!4777 = !DILocation(line: 228, column: 17, scope: !4773)
!4778 = !DILocation(line: 228, column: 26, scope: !4773)
!4779 = !DILocation(line: 228, column: 35, scope: !4773)
!4780 = !DILocation(line: 230, column: 10, scope: !4773)
!4781 = !DILocation(line: 230, column: 20, scope: !4773)
!4782 = !DILocation(line: 230, column: 2, scope: !4773)
!4783 = !DILocation(line: 232, column: 34, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 230, column: 27)
!4785 = !DILocation(line: 232, column: 43, scope: !4784)
!4786 = !DILocation(line: 232, column: 3, scope: !4784)
!4787 = !DILocation(line: 233, column: 3, scope: !4784)
!4788 = !DILocation(line: 236, column: 32, scope: !4784)
!4789 = !DILocation(line: 236, column: 41, scope: !4784)
!4790 = !DILocation(line: 236, column: 3, scope: !4784)
!4791 = !DILocation(line: 237, column: 3, scope: !4784)
!4792 = !DILocation(line: 240, column: 32, scope: !4784)
!4793 = !DILocation(line: 240, column: 41, scope: !4784)
!4794 = !DILocation(line: 240, column: 3, scope: !4784)
!4795 = !DILocation(line: 241, column: 3, scope: !4784)
!4796 = !DILocation(line: 244, column: 3, scope: !4784)
!4797 = !DILocation(line: 245, column: 3, scope: !4784)
!4798 = !DILocation(line: 248, column: 25, scope: !4773)
!4799 = !DILocation(line: 248, column: 2, scope: !4773)
!4800 = !DILocation(line: 249, column: 1, scope: !4773)
!4801 = distinct !DISubprogram(name: "focaltech_process_touch_packet", scope: !3, file: !3, line: 149, type: !4802, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{null, !166, !4633}
!4804 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4801, file: !3, line: 149, type: !166)
!4805 = !DILocation(line: 149, column: 60, scope: !4801)
!4806 = !DILocalVariable(name: "packet", arg: 2, scope: !4801, file: !3, line: 150, type: !4633)
!4807 = !DILocation(line: 150, column: 24, scope: !4801)
!4808 = !DILocalVariable(name: "priv", scope: !4801, file: !3, line: 152, type: !3989)
!4809 = !DILocation(line: 152, column: 25, scope: !4801)
!4810 = !DILocation(line: 152, column: 32, scope: !4801)
!4811 = !DILocation(line: 152, column: 41, scope: !4801)
!4812 = !DILocalVariable(name: "state", scope: !4801, file: !3, line: 153, type: !4813)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!4814 = !DILocation(line: 153, column: 29, scope: !4801)
!4815 = !DILocation(line: 153, column: 38, scope: !4801)
!4816 = !DILocation(line: 153, column: 44, scope: !4801)
!4817 = !DILocalVariable(name: "fingers", scope: !4801, file: !3, line: 154, type: !145)
!4818 = !DILocation(line: 154, column: 16, scope: !4801)
!4819 = !DILocation(line: 154, column: 26, scope: !4801)
!4820 = !DILocalVariable(name: "i", scope: !4801, file: !3, line: 155, type: !165)
!4821 = !DILocation(line: 155, column: 6, scope: !4801)
!4822 = !DILocation(line: 157, column: 20, scope: !4801)
!4823 = !DILocation(line: 157, column: 30, scope: !4801)
!4824 = !DILocation(line: 157, column: 36, scope: !4801)
!4825 = !DILocation(line: 157, column: 19, scope: !4801)
!4826 = !DILocation(line: 157, column: 2, scope: !4801)
!4827 = !DILocation(line: 157, column: 9, scope: !4801)
!4828 = !DILocation(line: 157, column: 17, scope: !4801)
!4829 = !DILocation(line: 160, column: 9, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4801, file: !3, line: 160, column: 2)
!4831 = !DILocation(line: 160, column: 7, scope: !4830)
!4832 = !DILocation(line: 160, column: 14, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4830, file: !3, line: 160, column: 2)
!4834 = !DILocation(line: 160, column: 16, scope: !4833)
!4835 = !DILocation(line: 160, column: 2, scope: !4830)
!4836 = !DILocation(line: 161, column: 30, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4833, file: !3, line: 160, column: 40)
!4838 = !DILocation(line: 161, column: 38, scope: !4837)
!4839 = !DILocation(line: 161, column: 3, scope: !4837)
!4840 = !DILocation(line: 161, column: 10, scope: !4837)
!4841 = !DILocation(line: 161, column: 18, scope: !4837)
!4842 = !DILocation(line: 161, column: 21, scope: !4837)
!4843 = !DILocation(line: 161, column: 28, scope: !4837)
!4844 = !DILocation(line: 162, column: 8, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 162, column: 7)
!4846 = !DILocation(line: 162, column: 15, scope: !4845)
!4847 = !DILocation(line: 162, column: 23, scope: !4845)
!4848 = !DILocation(line: 162, column: 26, scope: !4845)
!4849 = !DILocation(line: 162, column: 7, scope: !4837)
!4850 = !DILocation(line: 167, column: 4, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4845, file: !3, line: 162, column: 34)
!4852 = !DILocation(line: 167, column: 11, scope: !4851)
!4853 = !DILocation(line: 167, column: 19, scope: !4851)
!4854 = !DILocation(line: 167, column: 22, scope: !4851)
!4855 = !DILocation(line: 167, column: 28, scope: !4851)
!4856 = !DILocation(line: 168, column: 3, scope: !4851)
!4857 = !DILocation(line: 169, column: 11, scope: !4837)
!4858 = !DILocation(line: 170, column: 2, scope: !4837)
!4859 = !DILocation(line: 160, column: 36, scope: !4833)
!4860 = !DILocation(line: 160, column: 2, scope: !4833)
!4861 = distinct !{!4861, !4835, !4862}
!4862 = !DILocation(line: 170, column: 2, scope: !4830)
!4863 = !DILocation(line: 171, column: 1, scope: !4801)
!4864 = distinct !DISubprogram(name: "focaltech_process_abs_packet", scope: !3, file: !3, line: 173, type: !4802, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4865 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4864, file: !3, line: 173, type: !166)
!4866 = !DILocation(line: 173, column: 58, scope: !4864)
!4867 = !DILocalVariable(name: "packet", arg: 2, scope: !4864, file: !3, line: 174, type: !4633)
!4868 = !DILocation(line: 174, column: 22, scope: !4864)
!4869 = !DILocalVariable(name: "priv", scope: !4864, file: !3, line: 176, type: !3989)
!4870 = !DILocation(line: 176, column: 25, scope: !4864)
!4871 = !DILocation(line: 176, column: 32, scope: !4864)
!4872 = !DILocation(line: 176, column: 41, scope: !4864)
!4873 = !DILocalVariable(name: "state", scope: !4864, file: !3, line: 177, type: !4813)
!4874 = !DILocation(line: 177, column: 29, scope: !4864)
!4875 = !DILocation(line: 177, column: 38, scope: !4864)
!4876 = !DILocation(line: 177, column: 44, scope: !4864)
!4877 = !DILocalVariable(name: "finger", scope: !4864, file: !3, line: 178, type: !7)
!4878 = !DILocation(line: 178, column: 15, scope: !4864)
!4879 = !DILocation(line: 180, column: 12, scope: !4864)
!4880 = !DILocation(line: 180, column: 22, scope: !4864)
!4881 = !DILocation(line: 180, column: 28, scope: !4864)
!4882 = !DILocation(line: 180, column: 9, scope: !4864)
!4883 = !DILocation(line: 181, column: 6, scope: !4884)
!4884 = distinct !DILexicalBlock(scope: !4864, file: !3, line: 181, column: 6)
!4885 = !DILocation(line: 181, column: 13, scope: !4884)
!4886 = !DILocation(line: 181, column: 6, scope: !4864)
!4887 = !DILocation(line: 182, column: 3, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 181, column: 33)
!4889 = !DILocation(line: 184, column: 3, scope: !4888)
!4890 = !DILocation(line: 187, column: 20, scope: !4864)
!4891 = !DILocation(line: 187, column: 30, scope: !4864)
!4892 = !DILocation(line: 187, column: 36, scope: !4864)
!4893 = !DILocation(line: 187, column: 19, scope: !4864)
!4894 = !DILocation(line: 187, column: 2, scope: !4864)
!4895 = !DILocation(line: 187, column: 9, scope: !4864)
!4896 = !DILocation(line: 187, column: 17, scope: !4864)
!4897 = !DILocation(line: 189, column: 31, scope: !4864)
!4898 = !DILocation(line: 189, column: 41, scope: !4864)
!4899 = !DILocation(line: 189, column: 48, scope: !4864)
!4900 = !DILocation(line: 189, column: 56, scope: !4864)
!4901 = !DILocation(line: 189, column: 54, scope: !4864)
!4902 = !DILocation(line: 189, column: 2, scope: !4864)
!4903 = !DILocation(line: 189, column: 9, scope: !4864)
!4904 = !DILocation(line: 189, column: 17, scope: !4864)
!4905 = !DILocation(line: 189, column: 25, scope: !4864)
!4906 = !DILocation(line: 189, column: 27, scope: !4864)
!4907 = !DILocation(line: 190, column: 30, scope: !4864)
!4908 = !DILocation(line: 190, column: 40, scope: !4864)
!4909 = !DILocation(line: 190, column: 48, scope: !4864)
!4910 = !DILocation(line: 190, column: 46, scope: !4864)
!4911 = !DILocation(line: 190, column: 2, scope: !4864)
!4912 = !DILocation(line: 190, column: 9, scope: !4864)
!4913 = !DILocation(line: 190, column: 17, scope: !4864)
!4914 = !DILocation(line: 190, column: 25, scope: !4864)
!4915 = !DILocation(line: 190, column: 27, scope: !4864)
!4916 = !DILocation(line: 191, column: 17, scope: !4864)
!4917 = !DILocation(line: 191, column: 27, scope: !4864)
!4918 = !DILocation(line: 191, column: 2, scope: !4864)
!4919 = !DILocation(line: 191, column: 9, scope: !4864)
!4920 = !DILocation(line: 191, column: 15, scope: !4864)
!4921 = !DILocation(line: 192, column: 2, scope: !4864)
!4922 = !DILocation(line: 192, column: 9, scope: !4864)
!4923 = !DILocation(line: 192, column: 17, scope: !4864)
!4924 = !DILocation(line: 192, column: 25, scope: !4864)
!4925 = !DILocation(line: 192, column: 31, scope: !4864)
!4926 = !DILocation(line: 193, column: 1, scope: !4864)
!4927 = distinct !DISubprogram(name: "focaltech_process_rel_packet", scope: !3, file: !3, line: 195, type: !4802, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!4928 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4927, file: !3, line: 195, type: !166)
!4929 = !DILocation(line: 195, column: 58, scope: !4927)
!4930 = !DILocalVariable(name: "packet", arg: 2, scope: !4927, file: !3, line: 196, type: !4633)
!4931 = !DILocation(line: 196, column: 22, scope: !4927)
!4932 = !DILocalVariable(name: "priv", scope: !4927, file: !3, line: 198, type: !3989)
!4933 = !DILocation(line: 198, column: 25, scope: !4927)
!4934 = !DILocation(line: 198, column: 32, scope: !4927)
!4935 = !DILocation(line: 198, column: 41, scope: !4927)
!4936 = !DILocalVariable(name: "state", scope: !4927, file: !3, line: 199, type: !4813)
!4937 = !DILocation(line: 199, column: 29, scope: !4927)
!4938 = !DILocation(line: 199, column: 38, scope: !4927)
!4939 = !DILocation(line: 199, column: 44, scope: !4927)
!4940 = !DILocalVariable(name: "finger1", scope: !4927, file: !3, line: 200, type: !165)
!4941 = !DILocation(line: 200, column: 6, scope: !4927)
!4942 = !DILocalVariable(name: "finger2", scope: !4927, file: !3, line: 200, type: !165)
!4943 = !DILocation(line: 200, column: 15, scope: !4927)
!4944 = !DILocation(line: 202, column: 19, scope: !4927)
!4945 = !DILocation(line: 202, column: 29, scope: !4927)
!4946 = !DILocation(line: 202, column: 2, scope: !4927)
!4947 = !DILocation(line: 202, column: 9, scope: !4927)
!4948 = !DILocation(line: 202, column: 17, scope: !4927)
!4949 = !DILocation(line: 203, column: 14, scope: !4927)
!4950 = !DILocation(line: 203, column: 24, scope: !4927)
!4951 = !DILocation(line: 203, column: 30, scope: !4927)
!4952 = !DILocation(line: 203, column: 37, scope: !4927)
!4953 = !DILocation(line: 203, column: 10, scope: !4927)
!4954 = !DILocation(line: 204, column: 6, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4927, file: !3, line: 204, column: 6)
!4956 = !DILocation(line: 204, column: 14, scope: !4955)
!4957 = !DILocation(line: 204, column: 6, scope: !4927)
!4958 = !DILocation(line: 205, column: 38, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4955, file: !3, line: 204, column: 33)
!4960 = !DILocation(line: 205, column: 32, scope: !4959)
!4961 = !DILocation(line: 205, column: 3, scope: !4959)
!4962 = !DILocation(line: 205, column: 10, scope: !4959)
!4963 = !DILocation(line: 205, column: 18, scope: !4959)
!4964 = !DILocation(line: 205, column: 27, scope: !4959)
!4965 = !DILocation(line: 205, column: 29, scope: !4959)
!4966 = !DILocation(line: 206, column: 38, scope: !4959)
!4967 = !DILocation(line: 206, column: 32, scope: !4959)
!4968 = !DILocation(line: 206, column: 3, scope: !4959)
!4969 = !DILocation(line: 206, column: 10, scope: !4959)
!4970 = !DILocation(line: 206, column: 18, scope: !4959)
!4971 = !DILocation(line: 206, column: 27, scope: !4959)
!4972 = !DILocation(line: 206, column: 29, scope: !4959)
!4973 = !DILocation(line: 207, column: 2, scope: !4959)
!4974 = !DILocation(line: 208, column: 3, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4955, file: !3, line: 207, column: 9)
!4976 = !DILocation(line: 219, column: 14, scope: !4927)
!4977 = !DILocation(line: 219, column: 24, scope: !4927)
!4978 = !DILocation(line: 219, column: 30, scope: !4927)
!4979 = !DILocation(line: 219, column: 37, scope: !4927)
!4980 = !DILocation(line: 219, column: 10, scope: !4927)
!4981 = !DILocation(line: 220, column: 6, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4927, file: !3, line: 220, column: 6)
!4983 = !DILocation(line: 220, column: 14, scope: !4982)
!4984 = !DILocation(line: 220, column: 6, scope: !4927)
!4985 = !DILocation(line: 221, column: 38, scope: !4986)
!4986 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 220, column: 33)
!4987 = !DILocation(line: 221, column: 32, scope: !4986)
!4988 = !DILocation(line: 221, column: 3, scope: !4986)
!4989 = !DILocation(line: 221, column: 10, scope: !4986)
!4990 = !DILocation(line: 221, column: 18, scope: !4986)
!4991 = !DILocation(line: 221, column: 27, scope: !4986)
!4992 = !DILocation(line: 221, column: 29, scope: !4986)
!4993 = !DILocation(line: 222, column: 38, scope: !4986)
!4994 = !DILocation(line: 222, column: 32, scope: !4986)
!4995 = !DILocation(line: 222, column: 3, scope: !4986)
!4996 = !DILocation(line: 222, column: 10, scope: !4986)
!4997 = !DILocation(line: 222, column: 18, scope: !4986)
!4998 = !DILocation(line: 222, column: 27, scope: !4986)
!4999 = !DILocation(line: 222, column: 29, scope: !4986)
!5000 = !DILocation(line: 223, column: 2, scope: !4986)
!5001 = !DILocation(line: 224, column: 1, scope: !4927)
!5002 = distinct !DISubprogram(name: "focaltech_report_state", scope: !3, file: !3, line: 115, type: !3957, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!5003 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5002, file: !3, line: 115, type: !166)
!5004 = !DILocation(line: 115, column: 52, scope: !5002)
!5005 = !DILocalVariable(name: "priv", scope: !5002, file: !3, line: 117, type: !3989)
!5006 = !DILocation(line: 117, column: 25, scope: !5002)
!5007 = !DILocation(line: 117, column: 32, scope: !5002)
!5008 = !DILocation(line: 117, column: 41, scope: !5002)
!5009 = !DILocalVariable(name: "state", scope: !5002, file: !3, line: 118, type: !4813)
!5010 = !DILocation(line: 118, column: 29, scope: !5002)
!5011 = !DILocation(line: 118, column: 38, scope: !5002)
!5012 = !DILocation(line: 118, column: 44, scope: !5002)
!5013 = !DILocalVariable(name: "dev", scope: !5002, file: !3, line: 119, type: !171)
!5014 = !DILocation(line: 119, column: 20, scope: !5002)
!5015 = !DILocation(line: 119, column: 26, scope: !5002)
!5016 = !DILocation(line: 119, column: 35, scope: !5002)
!5017 = !DILocalVariable(name: "i", scope: !5002, file: !3, line: 120, type: !165)
!5018 = !DILocation(line: 120, column: 6, scope: !5002)
!5019 = !DILocation(line: 122, column: 9, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 122, column: 2)
!5021 = !DILocation(line: 122, column: 7, scope: !5020)
!5022 = !DILocation(line: 122, column: 14, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5020, file: !3, line: 122, column: 2)
!5024 = !DILocation(line: 122, column: 16, scope: !5023)
!5025 = !DILocation(line: 122, column: 2, scope: !5020)
!5026 = !DILocalVariable(name: "finger", scope: !5027, file: !3, line: 123, type: !5028)
!5027 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 122, column: 40)
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!5029 = !DILocation(line: 123, column: 34, scope: !5027)
!5030 = !DILocation(line: 123, column: 44, scope: !5027)
!5031 = !DILocation(line: 123, column: 51, scope: !5027)
!5032 = !DILocation(line: 123, column: 59, scope: !5027)
!5033 = !DILocalVariable(name: "active", scope: !5027, file: !3, line: 124, type: !508)
!5034 = !DILocation(line: 124, column: 8, scope: !5027)
!5035 = !DILocation(line: 124, column: 17, scope: !5027)
!5036 = !DILocation(line: 124, column: 25, scope: !5027)
!5037 = !DILocation(line: 124, column: 32, scope: !5027)
!5038 = !DILocation(line: 124, column: 35, scope: !5027)
!5039 = !DILocation(line: 124, column: 43, scope: !5027)
!5040 = !DILocation(line: 0, scope: !5027)
!5041 = !DILocation(line: 126, column: 17, scope: !5027)
!5042 = !DILocation(line: 126, column: 22, scope: !5027)
!5043 = !DILocation(line: 126, column: 3, scope: !5027)
!5044 = !DILocation(line: 127, column: 30, scope: !5027)
!5045 = !DILocation(line: 127, column: 51, scope: !5027)
!5046 = !DILocation(line: 127, column: 3, scope: !5027)
!5047 = !DILocation(line: 128, column: 7, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !5027, file: !3, line: 128, column: 7)
!5049 = !DILocation(line: 128, column: 7, scope: !5027)
!5050 = !DILocalVariable(name: "clamped_x", scope: !5051, file: !3, line: 129, type: !7)
!5051 = distinct !DILexicalBlock(scope: !5048, file: !3, line: 128, column: 15)
!5052 = !DILocation(line: 129, column: 17, scope: !5051)
!5053 = !DILocalVariable(name: "clamped_y", scope: !5051, file: !3, line: 129, type: !7)
!5054 = !DILocation(line: 129, column: 28, scope: !5051)
!5055 = !DILocalVariable(name: "__UNIQUE_ID___x202", scope: !5056, file: !3, line: 135, type: !7)
!5056 = distinct !DILexicalBlock(scope: !5051, file: !3, line: 135, column: 16)
!5057 = !DILocation(line: 135, column: 16, scope: !5056)
!5058 = !DILocalVariable(name: "__UNIQUE_ID___x200", scope: !5059, file: !3, line: 135, type: !7)
!5059 = distinct !DILexicalBlock(scope: !5056, file: !3, line: 135, column: 16)
!5060 = !DILocation(line: 135, column: 16, scope: !5059)
!5061 = !DILocalVariable(name: "__UNIQUE_ID___y201", scope: !5059, file: !3, line: 135, type: !7)
!5062 = !DILocalVariable(name: "__UNIQUE_ID___y203", scope: !5056, file: !3, line: 135, type: !7)
!5063 = !DILocation(line: 135, column: 14, scope: !5051)
!5064 = !DILocalVariable(name: "__UNIQUE_ID___x206", scope: !5065, file: !3, line: 136, type: !7)
!5065 = distinct !DILexicalBlock(scope: !5051, file: !3, line: 136, column: 16)
!5066 = !DILocation(line: 136, column: 16, scope: !5065)
!5067 = !DILocalVariable(name: "__UNIQUE_ID___x204", scope: !5068, file: !3, line: 136, type: !7)
!5068 = distinct !DILexicalBlock(scope: !5065, file: !3, line: 136, column: 16)
!5069 = !DILocation(line: 136, column: 16, scope: !5068)
!5070 = !DILocalVariable(name: "__UNIQUE_ID___y205", scope: !5068, file: !3, line: 136, type: !7)
!5071 = !DILocalVariable(name: "__UNIQUE_ID___y207", scope: !5065, file: !3, line: 136, type: !7)
!5072 = !DILocation(line: 136, column: 14, scope: !5051)
!5073 = !DILocation(line: 137, column: 21, scope: !5051)
!5074 = !DILocation(line: 137, column: 45, scope: !5051)
!5075 = !DILocation(line: 137, column: 4, scope: !5051)
!5076 = !DILocation(line: 138, column: 21, scope: !5051)
!5077 = !DILocation(line: 139, column: 7, scope: !5051)
!5078 = !DILocation(line: 139, column: 13, scope: !5051)
!5079 = !DILocation(line: 139, column: 21, scope: !5051)
!5080 = !DILocation(line: 139, column: 19, scope: !5051)
!5081 = !DILocation(line: 138, column: 4, scope: !5051)
!5082 = !DILocation(line: 140, column: 21, scope: !5051)
!5083 = !DILocation(line: 140, column: 42, scope: !5051)
!5084 = !DILocation(line: 140, column: 49, scope: !5051)
!5085 = !DILocation(line: 140, column: 4, scope: !5051)
!5086 = !DILocation(line: 141, column: 3, scope: !5051)
!5087 = !DILocation(line: 142, column: 2, scope: !5027)
!5088 = !DILocation(line: 122, column: 36, scope: !5023)
!5089 = !DILocation(line: 122, column: 2, scope: !5023)
!5090 = distinct !{!5090, !5025, !5091}
!5091 = !DILocation(line: 142, column: 2, scope: !5020)
!5092 = !DILocation(line: 143, column: 36, scope: !5002)
!5093 = !DILocation(line: 143, column: 2, scope: !5002)
!5094 = !DILocation(line: 145, column: 19, scope: !5002)
!5095 = !DILocation(line: 145, column: 34, scope: !5002)
!5096 = !DILocation(line: 145, column: 41, scope: !5002)
!5097 = !DILocation(line: 145, column: 2, scope: !5002)
!5098 = !DILocation(line: 146, column: 13, scope: !5002)
!5099 = !DILocation(line: 146, column: 2, scope: !5002)
!5100 = !DILocation(line: 147, column: 1, scope: !5002)
!5101 = distinct !DISubprogram(name: "input_mt_slot", scope: !3027, file: !3027, line: 85, type: !5102, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!5102 = !DISubroutineType(types: !5103)
!5103 = !{null, !171, !165}
!5104 = !DILocalVariable(name: "dev", arg: 1, scope: !5101, file: !3027, line: 85, type: !171)
!5105 = !DILocation(line: 85, column: 52, scope: !5101)
!5106 = !DILocalVariable(name: "slot", arg: 2, scope: !5101, file: !3027, line: 85, type: !165)
!5107 = !DILocation(line: 85, column: 61, scope: !5101)
!5108 = !DILocation(line: 87, column: 14, scope: !5101)
!5109 = !DILocation(line: 87, column: 40, scope: !5101)
!5110 = !DILocation(line: 87, column: 2, scope: !5101)
!5111 = !DILocation(line: 88, column: 1, scope: !5101)
!5112 = distinct !DISubprogram(name: "input_report_abs", scope: !173, file: !173, line: 425, type: !5113, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!5113 = !DISubroutineType(types: !5114)
!5114 = !{null, !171, !7, !165}
!5115 = !DILocalVariable(name: "dev", arg: 1, scope: !5112, file: !173, line: 425, type: !171)
!5116 = !DILocation(line: 425, column: 55, scope: !5112)
!5117 = !DILocalVariable(name: "code", arg: 2, scope: !5112, file: !173, line: 425, type: !7)
!5118 = !DILocation(line: 425, column: 73, scope: !5112)
!5119 = !DILocalVariable(name: "value", arg: 3, scope: !5112, file: !173, line: 425, type: !165)
!5120 = !DILocation(line: 425, column: 83, scope: !5112)
!5121 = !DILocation(line: 427, column: 14, scope: !5112)
!5122 = !DILocation(line: 427, column: 27, scope: !5112)
!5123 = !DILocation(line: 427, column: 33, scope: !5112)
!5124 = !DILocation(line: 427, column: 2, scope: !5112)
!5125 = !DILocation(line: 428, column: 1, scope: !5112)
!5126 = distinct !DISubprogram(name: "input_report_key", scope: !173, file: !173, line: 415, type: !5113, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!5127 = !DILocalVariable(name: "dev", arg: 1, scope: !5126, file: !173, line: 415, type: !171)
!5128 = !DILocation(line: 415, column: 55, scope: !5126)
!5129 = !DILocalVariable(name: "code", arg: 2, scope: !5126, file: !173, line: 415, type: !7)
!5130 = !DILocation(line: 415, column: 73, scope: !5126)
!5131 = !DILocalVariable(name: "value", arg: 3, scope: !5126, file: !173, line: 415, type: !165)
!5132 = !DILocation(line: 415, column: 83, scope: !5126)
!5133 = !DILocation(line: 417, column: 14, scope: !5126)
!5134 = !DILocation(line: 417, column: 27, scope: !5126)
!5135 = !DILocation(line: 417, column: 35, scope: !5126)
!5136 = !DILocation(line: 417, column: 34, scope: !5126)
!5137 = !DILocation(line: 417, column: 33, scope: !5126)
!5138 = !DILocation(line: 417, column: 2, scope: !5126)
!5139 = !DILocation(line: 418, column: 1, scope: !5126)
!5140 = distinct !DISubprogram(name: "input_sync", scope: !173, file: !173, line: 440, type: !3065, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !360)
!5141 = !DILocalVariable(name: "dev", arg: 1, scope: !5140, file: !173, line: 440, type: !171)
!5142 = !DILocation(line: 440, column: 49, scope: !5140)
!5143 = !DILocation(line: 442, column: 14, scope: !5140)
!5144 = !DILocation(line: 442, column: 2, scope: !5140)
!5145 = !DILocation(line: 443, column: 1, scope: !5140)
